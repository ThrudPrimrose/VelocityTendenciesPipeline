"""Replace ``dace.libraries.standard.Reduce`` nodes with Tasklets that
call velocity's own reduction/scan helpers.

Rationale: the velocity pipeline carries a small, stable set of
reductions (max over vcflmax, max over maxvcfl, any-positive scan over
levmask). The helpers in ``include/reductions_*.{h,cuh}`` (CPU via
OpenMP; GPU via CUB/thrust; device-inline for use inside kernels)
cover them directly. Expanding DaCe's pure ``Reduce`` on this codebase
triggers its own CUB-based expansion that doesn't always compile
cleanly under our ``__DACE_NO_SYNC=1`` + single-stream contract, and
introduces extra state-level helpers we don't control. Swapping the
LibNode for a small Tasklet keeps the C++ glue here, makes the
implementation schedule-aware (device-inline inside a GPU kernel vs.
GPU-launch from the host vs. CPU), and matches the contract from the
historical artifacts repo (``icon-artifacts/velocity/utils/reductions.py``).

Backend picking rules (as requested):
    LibNode schedule | inside a GPU kernel scope | backend
    -----------------+---------------------------+---------
    Sequential       | yes                       | _device (__device__ inline)
    Sequential       | no                        | _cpu
    GPU_Device       | (top level)               | _gpu (host-launched CUB)

Reduction family picking (from ``wcr``):
    ``max(a, b)``     → ``maxZ``
    ``a | b``          → ``scan``
    ``a + b`` on int   → ``sum``

Output shape picking (from the out-memlet):
    volume == 1 AND target is a shape-[1] scalar/array → ``_to_scalar``
    else (single slot in a larger array)                → ``_to_address``

Add global includes so the helpers resolve at compile time. No DaCe-
core changes. Run this pass at the end of ``OffloadVelocityToGPU``
(after schedules, mirrors, storage promotion) so we see the final
storage / schedule classification.
"""
import re
from typing import Tuple

import dace
from dace import SDFG, dtypes, memlet as mm
from dace.sdfg import nodes
from dace.libraries.standard import Reduce


_MAX_WCR_PAT = re.compile(r"max\s*\(\s*a\s*,\s*b\s*\)|max\s*\(\s*b\s*,\s*a\s*\)")
_OR_WCR_PAT = re.compile(r"a\s*\|\s*b|b\s*\|\s*a")
_SUM_WCR_PAT = re.compile(r"a\s*\+\s*b|b\s*\+\s*a")


def replace_reductions_with_tasklets(sdfg: SDFG) -> int:
    """Walk the SDFG tree and rewrite every ``Reduce`` into a Tasklet.
    Returns the number of reductions rewritten. Also appends the
    necessary ``#include`` directives to the root SDFG's global code
    so the helpers resolve at compile time."""
    count = 0
    for g in _all_sdfgs(sdfg):
        for state in list(g.all_states()):
            for node in list(state.nodes()):
                if isinstance(node, Reduce):
                    _rewrite_one(state, node)
                    count += 1
    if count > 0:
        # Host-visible symbol surface. ``reductions_cpu.h`` / ``_kernel.cuh``
        # for both host and kernel TUs (nvcc ``-x cu`` compiles both);
        # ``reductions_device.cuh`` for CUDA-only.
        #
        # ``sdfg.append_global_code`` does ``self.global_code[loc].code
        # += cpp_code``, but the stock SDFG ships with an empty
        # ``global_code['frame']`` whose ``code`` field is a *list*
        # (Python-language default). ``list += str`` iterates the
        # string into chars, and then ``save`` trips trying to unparse
        # a list-of-chars AST. Write the CodeBlocks directly instead
        # so the entries are unambiguously CPP.
        from dace.properties import CodeBlock
        _inject_global_cpp(
            sdfg, 'frame',
            '#include "reductions_cpu.h"\n'
            '#include "reductions_kernel.cuh"\n')
        _inject_global_cpp(
            sdfg, 'cuda',
            '#include "reductions_device.cuh"\n')
    return count


def _inject_global_cpp(sdfg: SDFG, location: str, cpp_code: str) -> None:
    """Set (or append to) ``sdfg.global_code[location]`` with a
    CPP-language CodeBlock, robust to the preexisting Python-default
    empty block that lives in ``global_code['frame']`` after load."""
    from dace.properties import CodeBlock
    existing = sdfg.global_code.get(location)
    prior = ""
    if existing is not None and isinstance(existing.code, str):
        prior = existing.code
    sdfg.global_code[location] = CodeBlock(prior + cpp_code, dtypes.Language.CPP)


def _rewrite_one(state, red: Reduce) -> None:
    g: SDFG = state.sdfg if hasattr(state, 'sdfg') else state.parent

    in_edges = list(state.in_edges(red))
    out_edges = list(state.out_edges(red))
    assert len(in_edges) == 1, (
        f"Reduce with != 1 input edge: {red.label!r} in {g.name}")
    assert len(out_edges) == 1, (
        f"Reduce with != 1 output edge: {red.label!r} in {g.name}")
    in_e, out_e = in_edges[0], out_edges[0]

    in_desc = g.arrays[in_e.data.data]
    out_desc = g.arrays[out_e.data.data]

    family = _family_from_wcr(red.wcr)
    shape_kind = _out_shape_kind(out_e.data, out_desc)
    backend = _pick_backend(state, red)

    size_expr = _size_expression(in_e.data)
    # ``scan`` only has a ``to_scalar`` flavour (any-positive check
    # returns a single int), so the helper API drops the shape suffix.
    # ``maxZ`` and ``sum`` have both shape variants.
    if family == "scan":
        fn_name = f"reduce_scan_{backend}"
    else:
        fn_name = f"reduce_{family}_{shape_kind}_{backend}"

    # Build the tasklet source. For ``_to_scalar`` the helper returns
    # the result by value -> assign to the output connector. For
    # ``_to_address`` the helper writes into ``&out``. The GPU variants
    # take an extra stream arg; we pin everything to stream 0 because
    # ``OffloadVelocityToGPU`` sets ``max_concurrent_streams = 1``.
    stream_arg = ""
    if backend == "gpu":
        stream_arg = ", __state->gpu_context->streams[0]"

    if shape_kind == "to_scalar":
        code = f"out = {fn_name}(&in_arr[0], {size_expr}{stream_arg});"
    else:
        # to_address: ``out`` is declared as a pointer connector
        # below, so DaCe emits ``type * out = <base> + offset``; pass
        # ``out`` directly -- not ``&out``.
        code = (f"{fn_name}(&in_arr[0], out, {size_expr}{stream_arg});")

    tasklet = state.add_tasklet(
        name=f"{family}_{shape_kind}_{backend}",
        inputs={"in_arr": dtypes.pointer(in_desc.dtype)},
        outputs={"out": dtypes.pointer(out_desc.dtype)
                 if shape_kind == "to_address"
                 else out_desc.dtype},
        code=code,
        language=dtypes.Language.CPP,
    )

    # Reroute the edges through the tasklet with the same memlets.
    state.add_edge(in_e.src, in_e.src_conn, tasklet, "in_arr", in_e.data)
    state.add_edge(tasklet, "out", out_e.dst, out_e.dst_conn, out_e.data)

    # Remove the old Reduce and its orphaned edges (the two we replaced
    # + any code-generation-internal edges that DaCe doesn't carry
    # here).
    state.remove_edge(in_e)
    state.remove_edge(out_e)
    state.remove_node(red)


def _family_from_wcr(wcr: str) -> str:
    """Look for ``max(a, b)`` / ``a | b`` / ``a + b`` in the WCR
    body. Accepts both argument orderings."""
    if wcr is None:
        raise ValueError("Reduce node has no wcr")
    if _MAX_WCR_PAT.search(wcr):
        return "maxZ"
    if _OR_WCR_PAT.search(wcr):
        return "scan"
    if _SUM_WCR_PAT.search(wcr):
        return "sum"
    raise NotImplementedError(
        f"Unsupported reduction wcr: {wcr!r}. "
        f"Supported: max / bitwise-or (scan) / sum.")


def _out_shape_kind(out_memlet: mm.Memlet, out_desc) -> str:
    """``to_scalar`` iff the target is a 1-element Scalar or a
    shape-[1] Array; ``to_address`` if writing a single element into a
    larger array. Anything else is out of scope."""
    # Scalar data descriptor -> always to_scalar.
    if isinstance(out_desc, dace.data.Scalar):
        return "to_scalar"
    # Shape-[1] Array with a full-write memlet -> to_scalar.
    if (hasattr(out_desc, "shape")
            and tuple(out_desc.shape) == (1,)):
        return "to_scalar"
    # Memlet volume == 1 into a larger array -> to_address.
    try:
        vol = int(out_memlet.volume)
        if vol == 1:
            return "to_address"
    except Exception:
        pass
    raise NotImplementedError(
        f"Cannot classify reduction output shape. memlet={out_memlet}, "
        f"descriptor shape={getattr(out_desc, 'shape', '?')}")


def _pick_backend(state, red: Reduce) -> str:
    """Backend selection, schedule-aware AND
    SDFG-hierarchy-aware. A Reduce that sits at the top of its own
    NSDFG but where the NSDFG is itself wrapped in a GPU-scheduled
    MapEntry in an outer SDFG is emitted *inside* a kernel by DaCe's
    codegen -- its own ``schedule == GPU_Device`` is ignored at that
    point, and calling the host-side launch API (``*_gpu`` with
    ``__state->gpu_context``) is illegal from device code.

    Rule:
      * if any ancestor MapEntry in the full SDFG hierarchy is
        GPU-scheduled → emit the ``__device__`` inline call,
      * else if the Reduce's own schedule is GPU_Device → emit the
        host-side CUB/thrust launch,
      * else → CPU.
    """
    if _is_inside_gpu_kernel(state, red):
        return "device"
    if red.schedule == dtypes.ScheduleType.GPU_Device:
        return "gpu"
    return "cpu"


def _is_inside_gpu_kernel(state, node) -> bool:
    """Walk up the scope tree within ``state``'s SDFG; if no GPU
    MapEntry found, ascend into the parent NSDFG's enclosing SDFG
    and keep walking. Returns True as soon as we find a MapEntry
    whose schedule is any GPU-device-ish schedule."""
    gpu_schedules = (
        dtypes.ScheduleType.GPU_Device,
        dtypes.ScheduleType.GPU_ThreadBlock,
        dtypes.ScheduleType.GPU_ThreadBlock_Dynamic,
    )
    current_sdfg = state.sdfg if hasattr(state, 'sdfg') else state.parent
    current_state = state
    current_node = node
    while current_sdfg is not None:
        sdict = current_state.scope_dict()
        anc = sdict.get(current_node)
        while anc is not None:
            if isinstance(anc, nodes.MapEntry) and anc.map.schedule in gpu_schedules:
                return True
            anc = sdict.get(anc)
        # Step out one level: the enclosing SDFG.
        parent_nsdfg = getattr(current_sdfg, 'parent_nsdfg_node', None)
        parent_state = getattr(current_sdfg, 'parent', None)
        if parent_nsdfg is None or parent_state is None:
            return False
        current_node = parent_nsdfg
        current_state = parent_state
        current_sdfg = parent_state.sdfg if hasattr(parent_state, 'sdfg') \
            else getattr(parent_state, 'parent', None)
    return False


def _size_expression(in_memlet: mm.Memlet) -> str:
    """Render the total element count of the input subset as a C
    expression. Uses DaCe's sympy-backed volume and renders via
    ``cppunparse`` so symbol names survive as plain identifiers."""
    from dace.codegen import cppunparse

    vol = in_memlet.volume
    try:
        return f"(int)({cppunparse.pyexpr2cpp(str(vol))})"
    except Exception:
        return f"(int)({vol})"


def _all_sdfgs(root: SDFG):
    yield root
    for n, _ in root.all_nodes_recursive():
        if isinstance(n, nodes.NestedSDFG):
            yield n.sdfg

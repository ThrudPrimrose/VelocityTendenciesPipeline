"""Stage 4: GPU offload.

Applies ``OffloadVelocityToGPU`` to each stage-3 SDFG:
- mirrors every non-transient CPU-storage Array to a ``gpu_<name>``
  sibling (transient) with copy-in/copy-out states -- the transformation
  does NOT assume the caller has anything GPU-resident, everything comes
  in as CPU and gets copied in at the head and back at the tail,
- promotes every transient Array to ``GPU_Global`` and every Scalar to
  ``Register``,
- assigns ``GPU_Device`` to top-level maps/libnodes, ``GPU_Default`` to
  top-level nested SDFGs, ``Sequential`` to everything below,
- propagates GPU storage into NSDFG connector bindings.

**Signature freeze.** The outer (non-transient) argument list of the
SDFG is snapshotted before ``OffloadVelocityToGPU`` runs and asserted
unchanged after. Any pass step that would flip an arg's type/shape
(e.g. a length-1 Array → Scalar rewrite) is rejected here -- stage 4
must leave the ABI that stage 3 produced intact so existing callers
link without a rebuild.

No ``offload_cpu``, no ``pre_gpu_fix``, no ``move_lib_schedules`` -- the
reassessment at
``/home/primrose/.claude/plans/work-icon-artifacts-velocity-we-have-a-happy-prism.md``
explains why each of those was redundant given stages 1-3's output.

Run:
    python -m utils.stages.stage4              # optimise + compile (GPU)
    python -m utils.stages.stage4 --optimize   # codegen stage4 .sdfgz only
    python -m utils.stages.stage4 --compile    # compile existing stage4 sdfgz
"""

import argparse
import os
from pathlib import Path

# DaCe's CUDA codegen emits ``cudaDeviceSynchronize`` /
# ``cudaStreamSynchronize`` / ``cudaEventSynchronize`` calls whose
# placement is currently unreliable for velocity (the new GPU codegen
# rewrite addresses this; until then we run without emission). The
# ``__DACE_NO_SYNC`` env var in ``dace.codegen.common.no_sync_emission``
# gates every sync emission site. Default to enabled for this stage;
# callers can set ``__DACE_NO_SYNC=0`` explicitly to re-enable sync
# emission if needed.
os.environ.setdefault("__DACE_NO_SYNC", "1")

import dace

from utils.passes.offload_velocity_to_gpu import OffloadVelocityToGPU
from utils.stages import common


STAGE_ID = 4


# Arrays the caller insists on keeping CPU-side. Host-only already
# skips offloading by structure, but list them explicitly -- the
# Fortran caller reads these from the host after the SDFG returns, so
# a stray copy-in/copy-out would sever the round-trip.
_KEEP_CPU = (
    # max_vcfl_dyn: scalar-shaped output Fortran reads on the host
    # after the SDFG returns.
    "__CG_p_diag__m_max_vcfl_dyn",
    # ICON patch index/block descriptor arrays. These are read
    # exclusively by host-side interstate edges (to compute
    # ``i_startidx`` / ``i_endidx`` / ``i_startblk`` / ``i_endblk``
    # scalars). They are constants from the kernel's point of view;
    # the host-side interstate assignment requires them on CPU_Heap.
    # Adding gpu_ mirrors here would cause DaCe's validator to reject
    # the interstate edge as "inaccessible data container ... in host
    # code interstate edge".
    "__CG_p_patch__CG_cells__m_start_index",
    "__CG_p_patch__CG_cells__m_end_index",
    "__CG_p_patch__CG_cells__m_start_block",
    "__CG_p_patch__CG_cells__m_end_block",
    "__CG_p_patch__CG_edges__m_start_index",
    "__CG_p_patch__CG_edges__m_end_index",
    "__CG_p_patch__CG_edges__m_start_block",
    "__CG_p_patch__CG_edges__m_end_block",
    "__CG_p_patch__CG_verts__m_start_index",
    "__CG_p_patch__CG_verts__m_end_index",
    "__CG_p_patch__CG_verts__m_start_block",
    "__CG_p_patch__CG_verts__m_end_block",
)


def _signature_fingerprint(sdfg: dace.SDFG):
    """A hashable summary of the outer SDFG's argument list -- every
    non-transient entry in ``sdfg.arrays`` plus each free symbol.
    Compared across the pass to detect ABI drift."""
    args = []
    for name, desc in sdfg.arrays.items():
        if desc.transient:
            continue
        args.append((name,
                     type(desc).__name__,
                     str(desc.dtype),
                     tuple(str(d) for d in desc.shape)))
    symbols = [(s, str(t)) for s, t in sdfg.symbols.items()]
    args.sort()
    symbols.sort()
    return tuple(args), tuple(symbols)


def optimization_action(sdfg: dace.SDFG) -> dace.SDFG:
    # Snapshot the outer (caller-visible) signature before any pass
    # step runs; we assert it unchanged after OffloadVelocityToGPU so
    # downstream callers (e.g. main.cpp) keep linking without a
    # rebuild. Any type/shape drift surfaces here loudly.
    before = _signature_fingerprint(sdfg)

    OffloadVelocityToGPU(sdfg, exclude_from_offload=_KEEP_CPU)

    after = _signature_fingerprint(sdfg)
    if before != after:
        diff = _describe_signature_diff(before, after)
        raise RuntimeError(
            f"Stage #{STAGE_ID}: OffloadVelocityToGPU changed the outer "
            f"SDFG signature (ABI break). Diff:\n{diff}")

    # Watchtower: if the segmented-reduction workaround was ever
    # secretly needed, an ``out_val_0`` reference would leak into the
    # post-GPU SDFG. Stage 1's ``remove_clip_count`` + no `reduce_scan`
    # libnode means this should always be empty. Loud if not.
    leaks = _find_out_val_0(sdfg)
    if leaks:
        raise RuntimeError(
            f"Stage #{STAGE_ID}: {len(leaks)} unexpected 'out_val_0' "
            f"reference(s) survived OffloadVelocityToGPU: "
            f"{sorted(leaks)[:5]} ... -- revisit the dropped "
            f"pre_gpu_fixes.step_1 (segmented reduction pipelining).")
    return sdfg


def _describe_signature_diff(before, after):
    before_args, before_syms = before
    after_args, after_syms = after
    removed = set(before_args) - set(after_args)
    added = set(after_args) - set(before_args)
    lines = []
    for r in sorted(removed):
        lines.append(f"  - REMOVED: {r}")
    for a in sorted(added):
        lines.append(f"  + ADDED:   {a}")
    if before_syms != after_syms:
        lines.append(f"  ! symbols: before={before_syms} after={after_syms}")
    return "\n".join(lines) or "  (no diff -- tuples unequal but elements match?)"


def _find_out_val_0(sdfg: dace.SDFG):
    hits = set()
    for name in sdfg.arrays:
        if 'out_val_0' in name:
            hits.add(('array', name))
    for n, _ in sdfg.all_nodes_recursive():
        for attr in ('data', 'label'):
            v = getattr(n, attr, None)
            if isinstance(v, str) and 'out_val_0' in v:
                hits.add(('node', v))
    for e, _ in sdfg.all_edges_recursive():
        if e.data is not None and getattr(e.data, 'data', None):
            if 'out_val_0' in e.data.data:
                hits.add(('memlet', e.data.data))
    return hits


def main():
    argp = argparse.ArgumentParser()
    argp.add_argument("--optimize", action=argparse.BooleanOptionalAction, default=False)
    argp.add_argument("--compile", action=argparse.BooleanOptionalAction, default=False)
    argp.add_argument("--debug", dest="release", action="store_false", default=True,
                      help="build with -O0 + DACE_VELOCITY_DEBUG (default: release)")
    args = argp.parse_args()
    if not args.optimize and not args.compile:
        args.optimize, args.compile = True, True

    names = common.sdfg_names()

    if args.optimize:
        for name in names:
            infile = common.stage_input(name, STAGE_ID)
            outfile = common.stage_output(name, STAGE_ID)
            print(f"Stage #{STAGE_ID}: Optimising {name} from {infile}")

            sdfg = dace.SDFG.from_file(infile)
            sdfg.name = name
            sdfg.validate()

            sdfg = optimization_action(sdfg)

            Path(outfile).parent.mkdir(parents=True, exist_ok=True)
            sdfg.save(outfile, compress=True)
            print(f"Stage #{STAGE_ID}: Saved as {outfile}")

    if args.compile:
        sdfgs = {
            name: dace.SDFG.from_file(common.stage_output(name, STAGE_ID))
            for name in names
        }
        common.compile_action(STAGE_ID, sdfgs, gpu=True, release=args.release)


if __name__ == "__main__":
    main()

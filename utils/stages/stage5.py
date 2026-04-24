"""Stage 5: post-offload neighborhood-list / block-array compression.

Reads ``codegen/stage4/<name>.sdfgz`` (GPU-offloaded), applies up to
three compression call sites backed by two passes, saves to
``codegen/stage5/<name>.sdfgz``, and compiles with the GPU toolchain.

Call sites (all share one precondition insertion):

1. :func:`fold_array_access_to_expression` on the ``*_blk`` arrays
   known to be single-valued (``arr[..., jb, ...] == jb`` on
   single-block patches). Every subscript access is rewritten to the
   middle index, arrays are dropped.
2. :func:`generate_compressed_variant` on the ``*_idx`` arrays with
   ``uint16`` under the bound
   ``nproma * nblks_* < 65536``. *(scaffolded; Pass 2 pending)*
3. :func:`generate_compressed_variant` on the multi-valued ``*_blk``
   arrays with ``uint8`` under the bound ``nblks_* < 256``.
   *(scaffolded; Pass 2 pending)*

Run:
    python -m utils.stages.stage5              # optimise + compile
    python -m utils.stages.stage5 --optimize   # codegen stage5 .sdfgz
    python -m utils.stages.stage5 --compile    # compile existing stage5
"""

import argparse
import os
from pathlib import Path

os.environ.setdefault("__DACE_NO_SYNC", "1")

import dace

from dace.transformation.passes.simplify_expressions import simplify_expressions
from utils.passes.compress_indices import (
    SymbolicConstraint,
    fold_array_access_to_expression,
    generate_compressed_variant,
)
from utils.stages import common


STAGE_ID = 5


# Neighborhood-list indices demoted to ``uint16`` under the bound
# ``nproma * nblks_* < 65536`` at runtime.
_IDX_ARRAYS_GPU = (
    "gpu___CG_p_patch__CG_cells__m_edge_idx",
    "gpu___CG_p_patch__CG_cells__m_neighbor_idx",
    "gpu___CG_p_patch__CG_edges__m_cell_idx",
    "gpu___CG_p_patch__CG_edges__m_quad_idx",
    "gpu___CG_p_patch__CG_edges__m_vertex_idx",
    "gpu___CG_p_patch__CG_verts__m_cell_idx",
    "gpu___CG_p_patch__CG_verts__m_edge_idx",
)

# Block-index arrays whose every value equals the enclosing block-loop
# iterator ``jb`` (structural on single-block grids). Folded to the
# subscript expression -- arrays dropped entirely post-rewrite.
_BLK_ARRAYS_SINGLE_VAL_GPU = (
    "gpu___CG_p_patch__CG_cells__m_neighbor_blk",
    "gpu___CG_p_patch__CG_edges__m_cell_blk",
    "gpu___CG_p_patch__CG_edges__m_vertex_blk",
    "gpu___CG_p_patch__CG_verts__m_cell_blk",
)

# Block-index arrays that do carry distinct block numbers. Demoted to
# ``uint8`` under ``nblks_* < 256``.
_BLK_ARRAYS_MULTI_VAL_GPU = (
    "gpu___CG_p_patch__CG_cells__m_edge_blk",
    "gpu___CG_p_patch__CG_edges__m_quad_blk",
    "gpu___CG_p_patch__CG_verts__m_edge_blk",
)

# Runtime precondition: single-block patch. Every stage-5 compression
# uses this via a ``SymbolicConstraint`` wrapper so non-velocity
# callers can swap to ``ArrayMaxBelow`` / ``ArrayAllEqual`` etc.
_SINGLE_BLOCK = SymbolicConstraint(
    "__CG_p_patch__m_nblks_c == 1 && "
    "__CG_p_patch__m_nblks_v == 1")

# Independent runtime bounds for the dtype-compression dispatch.
_IDX_FITS_UINT16 = SymbolicConstraint(
    "__CG_global_data__m_nproma * __CG_p_patch__m_nblks_c < 65536 && "
    "__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e < 65536 && "
    "__CG_global_data__m_nproma * __CG_p_patch__m_nblks_v < 65536")

_BLK_FITS_UINT8 = SymbolicConstraint(
    "__CG_p_patch__m_nblks_c < 256 && "
    "__CG_p_patch__m_nblks_e < 256 && "
    "__CG_p_patch__m_nblks_v < 256")

def optimization_action(sdfg: dace.SDFG) -> dace.SDFG:
    # Call 1: single-val blk elimination via fold.
    #
    # Under the ``_SINGLE_BLOCK`` precondition every listed ``*_blk``
    # array stores the constant 1 (Fortran 1-indexed block ID of the
    # sole block). Consumers subtract the matching ``SOA_d_2`` offset
    # to convert to 0-indexed, so folding the array read to the
    # literal 1 produces the same arithmetic result the consumer
    # would compute from an actual memory load.
    eliminated = fold_array_access_to_expression(
        sdfg,
        array_names=_BLK_ARRAYS_SINGLE_VAL_GPU,
        rewrite_rule=lambda _name, _idxs: 1,
        constraints=[_SINGLE_BLOCK],
    )
    if eliminated:
        print(f"Stage #{STAGE_ID}: fold_array_access_to_expression "
              f"eliminated {eliminated} blk array(s)")
    sdfg.validate()

    # The fold leaves interstate-edge assignments with fresh symbolic
    # expressions (``-SA + jb + ...``) that stage 2's simplify_expressions
    # would fold further. Re-run sympy-simplify so the stage-5 output
    # is in the same canonical form as every earlier stage -- but save
    # every interstate-edge value first and restore any that got
    # corrupted to ``oo`` / ``-oo`` (sympy overflows ``-1e309`` etc.
    # to infinity, which isn't a valid symbol downstream).
    snapshot = _snapshot_interstate_assignments(sdfg)
    rewritten = simplify_expressions(sdfg)
    repaired = _repair_infinity_assignments(sdfg, snapshot)
    if rewritten:
        print(f"Stage #{STAGE_ID}: simplify_expressions rewrote "
              f"{rewritten} expression(s)"
              + (f" ({repaired} ∞-corrupted reverted)" if repaired else ""))
    sdfg.validate()

    # Call 2: neighbor-index uint16 demotion.
    generate_compressed_variant(
        sdfg, array_names=_IDX_ARRAYS_GPU,
        target_dtype=dace.uint16,
        constraints=[_SINGLE_BLOCK, _IDX_FITS_UINT16],
        name_suffix='uint16')
    sdfg.validate()

    # Call 3: multi-val blk uint8 demotion.
    generate_compressed_variant(
        sdfg, array_names=_BLK_ARRAYS_MULTI_VAL_GPU,
        target_dtype=dace.uint8,
        constraints=[_SINGLE_BLOCK, _BLK_FITS_UINT8],
        name_suffix='uint8')
    sdfg.validate()

    # Host-side timer around the body. Start immediately after the
    # copy-in sync (the first point where every pre-body copy has
    # completed), stop immediately before the copy-out (the last
    # point before result streaming begins). Timing is accurate
    # without a dedicated pre-stop sync because stage 5's body
    # always contains a scalar-return reduction tasklet
    # (``reduce_max_gpu`` for ``max_vcfl_dyn``) which itself
    # synchronises stream 0; every earlier kernel on stream 0 is
    # therefore complete before the reduction returns, and no
    # further kernel can slip past the host-side stop.
    _insert_body_timer(sdfg)
    sdfg.validate()

    return sdfg


def _insert_body_timer(sdfg: dace.SDFG) -> None:
    """Wrap the stage-5 body with two host-side timer tasklets.

    Start state is inserted as a successor of ``_sync_after_copy_in``;
    stop state as a predecessor of ``_gpu_to_cpu_copy_out``. Both
    tasklets are side-effects-only, no inputs/outputs. The measured
    interval is printed per invocation via ``printf`` -- downstream
    callers can switch to an accumulator by subclassing or editing
    the printf line.
    """
    from dace import dtypes as _dtypes
    from dace.properties import CodeBlock as _CodeBlock

    # One-shot global state kept in a file-scope static. Using C++
    # ``<chrono>`` so the timer is portable across host toolchains.
    existing = sdfg.global_code.get('frame')
    prior = existing.code if existing is not None \
        and isinstance(existing.code, str) else ''
    sdfg.global_code['frame'] = _CodeBlock(
        prior
        + '#include <chrono>\n'
          '#include <cstdio>\n'
          'static std::chrono::steady_clock::time_point _stage5_t0;\n',
        _dtypes.Language.CPP)

    # Find anchor states. Use labels the OffloadVelocityToGPU pass
    # writes; fall back to the first / last state if the labels are
    # missing (e.g. when stage 5 is applied to a non-velocity SDFG).
    sync_in = _find_state_by_label(sdfg, '_sync_after_copy_in') \
        or sdfg.start_state
    copy_out = _find_state_by_label(sdfg, '_gpu_to_cpu_copy_out')
    if copy_out is None:
        ends = [s for s in sdfg.nodes() if sdfg.out_degree(s) == 0]
        copy_out = ends[-1] if ends else None

    # Start: new state immediately after the post-copy-in sync.
    start_state = sdfg.add_state_after(
        sync_in, label='_stage5_timer_start')
    start_state.add_tasklet(
        name='_stage5_timer_start',
        inputs={}, outputs={},
        code='_stage5_t0 = std::chrono::steady_clock::now();',
        language=_dtypes.Language.CPP,
        side_effects=True,
    )

    # Stop: new state immediately before copy-out.
    if copy_out is not None:
        stop_state = sdfg.add_state_before(
            copy_out, label='_stage5_timer_stop')
        stop_state.add_tasklet(
            name='_stage5_timer_stop',
            inputs={}, outputs={},
            code=(
                'auto _stage5_t1 = std::chrono::steady_clock::now();\n'
                'std::chrono::duration<double, std::milli> _stage5_dt = '
                '_stage5_t1 - _stage5_t0;\n'
                'std::printf("stage5 body: %.6f ms\\n", _stage5_dt.count());'
            ),
            language=_dtypes.Language.CPP,
            side_effects=True,
        )


def _find_state_by_label(sdfg: dace.SDFG, label: str):
    for block in sdfg.nodes():
        if isinstance(block, dace.SDFGState) and block.label == label:
            return block
    return None


def _snapshot_interstate_assignments(sdfg: dace.SDFG):
    """Save every interstate-edge assignment / condition value as a
    ``(edge_id, key, value_str)`` tuple. Used to roll back
    sympy-induced ``oo`` corruption after simplify_expressions."""
    from dace.properties import CodeBlock
    snap = {}
    for e in sdfg.all_interstate_edges():
        eid = id(e)
        snap[eid] = {
            'assignments': {
                k: (v.as_string if isinstance(v, CodeBlock) else str(v))
                for k, v in e.data.assignments.items()
            },
            'condition': (e.data.condition.as_string
                          if e.data.condition is not None else None),
            'edge': e,
        }
    return snap


def _repair_infinity_assignments(sdfg: dace.SDFG, snapshot) -> int:
    """Walk interstate edges; for any assignment / condition whose
    string contains ``oo`` as a standalone token (sympy's infinity),
    restore the pre-simplify string from ``snapshot``. Returns the
    number of repairs."""
    import re as _re
    from dace.properties import CodeBlock
    inf_re = _re.compile(r'(?<![A-Za-z_])[+-]?oo(?![A-Za-z_])')
    repaired = 0
    for e in sdfg.all_interstate_edges():
        prior = snapshot.get(id(e))
        if prior is None:
            continue
        for k, v in list(e.data.assignments.items()):
            v_str = v.as_string if isinstance(v, CodeBlock) else str(v)
            if inf_re.search(v_str):
                orig = prior['assignments'].get(k)
                if orig is None:
                    continue
                e.data.assignments[k] = (
                    CodeBlock(orig) if isinstance(v, CodeBlock) else orig)
                repaired += 1
        if e.data.condition is not None:
            cs = e.data.condition.as_string
            if inf_re.search(cs) and prior['condition'] is not None:
                e.data.condition = CodeBlock(prior['condition'],
                                             e.data.condition.language)
                repaired += 1
    return repaired


def main():
    argp = argparse.ArgumentParser()
    argp.add_argument("--optimize", action=argparse.BooleanOptionalAction, default=False)
    argp.add_argument("--compile", action=argparse.BooleanOptionalAction, default=False)
    argp.add_argument("--debug", dest="release", action="store_false", default=True,
                      help="build with -O0 + IEEE fp (default: release + fast math)")
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
        extra_sources = ["src/reductions.cpp", "src/reductions_kernel.cu"]
        extra_include_dirs = ["include"]
        common.compile_action(STAGE_ID, sdfgs, gpu=True, release=args.release,
                              extra_sources=extra_sources,
                              extra_include_dirs=extra_include_dirs)


if __name__ == "__main__":
    main()

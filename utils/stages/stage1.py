"""Stage 1: lift scalar-accumulator loops to ``dace.libraries.standard.Reduce``.

Uses ``dace.transformation.passes.loop_to_reduce.LoopToReduce`` (available on
``yakup/dev``). The pass detects three shapes:

- Tasklet body ``acc = acc <op> arr[f(i)]``       -> add/mul/bitwise/max/min
- Interstate edge ``{sym: sym <op> arr[f(i)]}``    -> add/mul
- ``ConditionalBlock`` guarded by ``sym <cmp> arr[f(i)]`` + empty states +
  ``{sym: arr[f(i)]}``                             -> max/min

For now we let DaCe emit its default ``Reduce`` codegen (stock tree / warp
reductions depending on storage). A later stage will swap the emitted
``Reduce`` for a custom library node that dispatches to our ``reduce_<op>_{cpu,
gpu,device}`` implementations and requires ``init_reduce_*()`` /
``cleanup_reduce_*()`` bookends -- that change needs paired init/exit-state
passes not yet written.

Run:
    python -m utils.stages.stage1              # optimise + compile
    python -m utils.stages.stage1 --optimize   # codegen stage1 .sdfgz only
    python -m utils.stages.stage1 --compile    # compile stage1 .sdfgz only
"""

import argparse
from pathlib import Path

import dace
from dace.sdfg.propagation import propagate_memlets_sdfg
from dace.transformation.dataflow import MapCollapse
from dace.transformation.interstate import LoopToMap
from dace.transformation.interstate.sdfg_nesting import InlineSDFG
from dace.transformation.passes.loop_to_reduce import LoopToReduce
from dace.transformation.passes.simplification.continue_to_condition import ContinueToCondition

from utils.passes.baseline_fix import fix_baseline
from utils.passes.promote_maxvcfl import promote_maxvcfl
from utils.passes.remove_clip_count import remove_clip_count
from utils.passes.uniquify_difcoef import uniquify_difcoef
from utils.stages import common


STAGE_ID = 1


def optimization_action(sdfg: dace.SDFG) -> dace.SDFG:
    # 0. Strip the ``istep`` / ``lvn_only`` Scalar duplicates f2dace left in
    #    ``sdfg.arrays`` -- yakup/dev's validator rejects them; FaCe
    #    tolerated them.
    fixed = fix_baseline(sdfg)
    if fixed:
        print(f"Stage #{STAGE_ID}: baseline-fix removed {fixed} stale scalar(s)")



    # 0b. Specialise away the ``clip_count`` accumulator. The full pipeline
    #     assumes the clipping check always fires, so the counter, its
    #     ``if clip_count == 0: continue`` guard, and the predicate scalar
    #     feeding it are all dead. Run before LoopToReduce so the lifted
    #     reductions don't have to thread ``clip_count`` through their
    #     symbol maps.
    dropped = remove_clip_count(sdfg)
    assert dropped
    if dropped:
        print(f"Stage #{STAGE_ID}: remove_clip_count dropped {dropped} assignment(s)")
    sdfg.validate()

    # 1. Lift scalar-accumulator loops to Reduce before anything else touches
    #    them -- LoopToMap would parallelise them and make the pattern-match
    #    impossible afterwards.
    lifted = LoopToReduce(permissive=True).apply_pass(sdfg, {})
    print(f"Stage #{STAGE_ID}: lifted {lifted or 0} loop(s) to Reduce in {sdfg.name}")
    sdfg.validate()
    # 1b. Promote the ``maxvcfl`` scalar accumulator into a per-nproma array
    #     and install a final ``Reduce(max)`` into ``vcflmax``. Both are
    #     transients, so the SDFG signature is unchanged. Done before
    #     ``ContinueToCondition`` so the newly-inserted reduction is visible
    #     to the downstream simplify / LoopToMap passes.
    promote_maxvcfl(sdfg)
    sdfg.validate()
    # 1c. Fold ``continue`` blocks into guard conditions so LoopToMap sees
    #     plain if/else instead of a control-flow exit.
    ContinueToCondition().apply_pass(sdfg, {})
    sdfg.validate()

    # 1d. Uniquify every ``difcoef`` occurrence into its own thread-local
    #     transient (``difcoef0``, ``difcoef1``, ...). Removes the false
    #     sharing that would otherwise block ``LoopToMap`` with read-write
    #     conflict errors on the shared scratch scalar.
    renamed = uniquify_difcoef(sdfg)
    assert renamed
    print(f"Stage #{STAGE_ID}: uniquify_difcoef split into {renamed} thread-local copies")
    sdfg.validate()

    # 2. Simplify: after AoS->SoA + reductions there's a lot of foldable
    #    structure -- dead states, unused assignments, collapsible control
    #    flow. ``ArrayElimination`` is the standing f2dace-workaround skip.
    sdfg.simplify(skip=["ArrayElimination"])
    sdfg.validate()

    # 2b. Propagate memlets so every edge carries its tightest possible
    #     subset. LoopToMap's read-write conflict checks rely on precise
    #     memlets -- without propagation, aggregate map-exit memlets
    #     default to the full array range and block parallelisation.
    propagate_memlets_sdfg(sdfg)
    sdfg.validate()

    # 3. Max parallelism: turn as many loops as possible into maps.
    #    ``permissive=True`` matches icon-artifacts stage 2 behaviour.
    sdfg.apply_transformations_repeated(LoopToMap, permissive=True)
    sdfg.simplify(skip=["ArrayElimination"])

    # 3e. Inline as much as possible before collapse so neighbouring maps end
    #     up in the same state and are visible to MapCollapse.
    inlined = sdfg.apply_transformations_repeated(InlineSDFG)
    if inlined:
        print(f"Stage #{STAGE_ID}: InlineSDFG inlined {inlined} nested SDFG(s)")
    sdfg.simplify(skip=["ArrayElimination"])
    sdfg.validate()

    # 4. Collapse nested maps, then one more simplify to tidy up.
    sdfg.apply_transformations_repeated(MapCollapse)
    sdfg.simplify(skip=["ArrayElimination"])
    sdfg.validate()
    return sdfg


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
        common.compile_action(STAGE_ID, sdfgs, release=args.release)


if __name__ == "__main__":
    main()

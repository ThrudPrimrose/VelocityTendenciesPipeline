"""Compile a set of propagated SDFGs (4 specialised variants) into an
executable / shared library.

Ported from ``icon-artifacts/velocity/utils/compile_if_propagated_sdfgs.py``
with the per-stage sed/regex source patches and OpenACC-stream rewrites
removed. Those patches fixed up DaCe-generated output for stages 2-9 of the
old pipeline; the baseline ("stage 0") SDFGs produced by
``generate_baselines.py`` come out of DaCe in a shape that ``main_per.cu``
already calls directly, so no post-generation text munging is needed.

What stayed: backend detection, flag / compiler selection, concurrent
compile-and-link, and the codegen-then-link structure.
"""

import dace
import os
import sys
import typing
from dace.sdfg import infer_types


AMD = (
    os.getenv("__HIP_PLATFORM_AMD__", "0") == "1"
    or os.getenv("HIP_PLATFORM_AMD", "0") == "1"
)

USE_NVHPC = os.getenv("_USE_NVHPC", "0").lower() in ("1", "true", "yes")


# ─── File path helpers ────────────────────────────────────────────────
# DaCe emits .cpp by default for both host and device translation units;
# nvcc is told to treat them as CUDA with ``-x cu`` at compile time.
def _cpu_src(build_loc: str, name: str) -> str:
    return f"{build_loc}/src/cpu/{name}.cpp"


def _gpu_src(build_loc: str, name: str) -> str:
    if AMD:
        return f"{build_loc}/src/cuda/hip/{name}_cuda.cpp"
    return f"{build_loc}/src/cuda/{name}_cuda.cpp"


def _header(build_loc: str, name: str) -> str:
    return f"{build_loc}/include/{name}.h"


# ─── Build helpers ────────────────────────────────────────────────────
# nvcc handles .cu (CUDA kernel code); CXX (g++ / hipcc on AMD) handles .cpp.
# ``CXX`` env var wins so callers can swap the host compiler without
# touching the code.
def _cxx() -> str:
    return os.getenv("CXX") or ("hipcc" if AMD else "g++")


def _nvcc() -> str:
    return "hipcc" if AMD else "nvcc"


def _pick_compiler(src: str) -> str:
    return _nvcc() if src.endswith(".cu") else _cxx()


def _get_link_compiler(sources: typing.List[str], gpu: bool) -> str:
    """Link with nvcc/hipcc when any .cu objects need the CUDA/HIP runtime."""
    if AMD and gpu:
        return "hipcc"
    if gpu and any(s.endswith(".cu") for s in sources):
        return "nvcc"
    return _cxx()


def _get_flags(gpu: bool, release: bool, lib: bool, debuginfo: bool) -> str:
    if gpu and AMD:
        omp_flag = "-fopenmp"
    elif gpu:
        omp_flag = "-Xcompiler=-fopenmp"
    else:
        omp_flag = "-fopenmp"

    if gpu and AMD:
        arch = "gfx942"
        common = f"--offload-arch={arch} -std=c++20 -DNDEBUG"
        if release:
            flags = (
                f"{common} -Wall -Wextra {omp_flag} "
                f"--offload-arch={arch} "
                "-mllvm -amdgpu-early-inline-all=true "
                "-munsafe-fp-atomics "
                "-ffp-contract=fast "
                "-fPIC -O3 -ffast-math "
                "-Wno-unused-parameter -Wno-ignored-attributes -Wno-unused-result"
            )
        else:
            flags = (
                f"{common} -O0 -g -ggdb -fPIC -Wall -Wextra {omp_flag} "
                "-Wno-unused-parameter -Wno-ignored-attributes -Wno-unused-result "
                "-DDACE_VELOCITY_DEBUG"
            )
        if debuginfo:
            flags += " -g"
        if lib:
            flags += " -DNO_SERDE -fPIC -shared"
    elif gpu:
        gencode_num = os.getenv("GENCODE_NUMBER", "90a")
        if gencode_num == "0":
            raise ValueError("Set GENCODE_NUMBER (e.g. 90)")
        nvhpc = "-ccbin=nvc++ " if USE_NVHPC else ""
        suppress = (
            "--diag-suppress 68 --diag-suppress 550 --diag-suppress 20208 "
            "--diag-suppress 1835 --diag-suppress 177 --diag-suppress 20012 "
            "--diag-suppress 1098"
        )
        xcompiler_warns = (
            "-Xcompiler=-Wconversion -Xcompiler=-Wsign-conversion "
            "-Xcompiler=-Wfloat-conversion -Xcompiler=-Wno-unknown-pragmas "
            "-Xcompiler=-faligned-new"
        ) if not USE_NVHPC else ""
        debugflag = "-lineinfo" if debuginfo else ""
        arch_flag = f"-arch=sm_{gencode_num}"

        if release:
            flags = (
                f"{nvhpc}{suppress} {xcompiler_warns} -DNDEBUG -Xcompiler=-DNDEBUG "
                f"-Xcompiler=-Wall -Xcompiler=-Wextra -Xcompiler=-O3 {omp_flag} "
                f"--expt-relaxed-constexpr {arch_flag} "
                f"--use_fast_math -O3 {debugflag} --ftz=true "
                f"--prec-div=false --prec-sqrt=false --fmad=true "
                f"-Xptxas=-O3 -Xptxas=-v -Xcompiler=-march=native "
                f"-Xcompiler=-mtune=native --restrict"
            )
        else:
            flags = (
                f"{suppress} {xcompiler_warns} -DNDEBUG "
                f"-Xcompiler=-Wall -Xcompiler=-Wextra {omp_flag} "
                f"--expt-relaxed-constexpr {arch_flag} "
                f"-O0 -Xcompiler=-g -g -Xcompiler=-O0 -G {debugflag} "
                f"--fmad=false --prec-div=true --prec-sqrt=true --ftz=false "
                f"-DDACE_VELOCITY_DEBUG -Xcompiler=-DDACE_VELOCITY_DEBUG"
            )
        if lib:
            flags += " -DNO_SERDE -std=c++17 -Xcompiler=-fPIC --compiler-options '-fPIC' --shared"
        else:
            flags += " -std=c++20"
    else:
        warns = (
            "-Wconversion -Wno-sign-conversion -Wfloat-conversion "
            "-Wno-unknown-pragmas -faligned-new"
        ) if not USE_NVHPC else ""
        debugflag = "-g" if debuginfo else ""
        if release:
            flags = (
                f"{warns} {debugflag} -std=c++20 -Wall -Wextra "
                f"-Wno-unused-parameter -Wno-unused-variable -O3 -DNDEBUG "
                f"{omp_flag}"
            )
        else:
            flags = (
                f"{warns} -DDACE_VELOCITY_DEBUG -std=c++20 -Wall -Wextra "
                f"-Wno-unused-parameter -Wno-unused-variable "
                f"-Wno-unknown-pragmas -O0 -g -ggdb {debugflag} "
                f"{omp_flag}"
            )

    if AMD:
        flags += " -D__HIP_PLATFORM_AMD__=1"
        flags += " -DHIP_PLATFORM_AMD=1"

    return flags


import subprocess
from concurrent.futures import ThreadPoolExecutor, as_completed


def _compile_and_link(
    sources: typing.List[str],
    includes: str,
    flags: str,
    output: str,
    gpu: bool,
    lib: bool,
    jobs: int = os.cpu_count(),
):
    compile_flags = flags.replace("--shared", "").replace("-shared", "")
    objects = []

    def compile_one(src):
        obj = os.path.splitext(src)[0] + ".o"
        cc = _pick_compiler(src)
        cmd = f"{cc} -c {src} {includes} {compile_flags} -o {obj}"
        ret = subprocess.run(cmd, shell=True, capture_output=True, text=True)
        return src, obj, cc, ret

    with ThreadPoolExecutor(max_workers=jobs) as pool:
        futures = {pool.submit(compile_one, src): src for src in sources}
        for fut in as_completed(futures):
            src, obj, cc, ret = fut.result()
            print(f"  [CC {cc}] {src}")
            if ret.stdout:
                print(ret.stdout, end="")
            if ret.stderr:
                print(ret.stderr, end="", file=sys.stderr)
            if ret.returncode != 0:
                raise RuntimeError(f"FAILED: {src}")
            objects.append(obj)

    link_cc = _get_link_compiler(sources, gpu)

    import re as _re
    arch_match = _re.search(r"-arch=sm_\w+", compile_flags)
    arch_flag = arch_match.group(0) if arch_match else ""

    link_flags = ""
    if lib:
        link_flags = "-shared" if (AMD or link_cc == _cxx()) else "--shared -Xcompiler=-fPIC"

    if "nvcc" in link_cc:
        link_flags += " -Xcompiler=-fopenmp "
    else:
        link_flags += " -fopenmp "

    link_cmd = f"{link_cc} {' '.join(objects)} {arch_flag} {link_flags} -o {output}"
    print(f"  [LD {link_cc}] {output}")
    ret = subprocess.run(link_cmd, shell=True)
    if ret.returncode != 0:
        raise RuntimeError(f"FAILED: {link_cmd}")


# ─── Main entry point ────────────────────────────────────────────────
def compile_if_propagated_sdfgs(
    sdfgs: typing.List[dace.SDFG],
    gpu: bool,
    release: bool,
    generate_code: bool,
    lib: bool,
    main_name: typing.Optional[str],
    stage: int,
    debuginfo: bool,
    extra_sources: typing.Optional[typing.Iterable[str]] = None,
    extra_include_dirs: typing.Optional[typing.Iterable[str]] = None,
    output: typing.Optional[str] = None,
    post_codegen_hook: typing.Optional[
        typing.Callable[[typing.List[dace.SDFG]], None]
    ] = None,
):
    """Codegen each SDFG and compile + link with ``main_name``.

    ``stage`` is kept in the signature for parity with the icon-artifacts
    pipeline; baseline SDFGs are treated as ``stage == 0`` and do not trigger
    any of the source-patch fix-ups that later stages required.

    ``post_codegen_hook`` runs after all SDFG codegen and before the
    compile step. Use it to regenerate driver-dependent artifacts that
    depend on the freshly-emitted variant headers -- e.g. the call-site
    macro in ``include/call_velocity.h`` (the signature can drift between
    branches, so regenerating here keeps ``main.cpp`` in sync).
    """
    dace.Config.set("compiler", "cuda", "max_concurrent_streams", value="1")

    if AMD:
        dace.config.Config.set("compiler", "cuda", "backend", value="hip")
        dace.config.Config.set("compiler", "cuda", "path", value="/opt/rocm")
        dace.config.Config.set("compiler", "cuda", "hip_arch", value="gfx942")
        dace.config.Config.set("compiler", "cuda", "default_block_size", value="32,16,1")
        dace.config.Config.set(
            "compiler", "cuda", "hip_args",
            value=(
                "--offload-arch=gfx942 "
                "-mllvm -amdgpu-early-inline-all=true "
                "-munsafe-fp-atomics "
                "-ffp-contract=fast "
                "-fPIC -O3 -ffast-math "
                "-Wno-unused-parameter -Wno-ignored-attributes -Wno-unused-result"
            ),
        )
    else:
        dace.config.Config.set("compiler", "cuda", "default_block_size", value="32,16,1")

    sources: typing.List[str] = list(extra_sources) if extra_sources is not None else []
    headers = [f"-I{d}" for d in (extra_include_dirs or ["include"])]

    from dace.codegen import codegen, compiler

    for sdfg in sdfgs:
        name = sdfg.name
        build_loc = sdfg.build_folder

        if generate_code:
            try:
                sdfg.fill_scope_connectors()
                infer_types.infer_connector_types(sdfg)
                infer_types.set_default_schedule_and_storage_types(sdfg, None)
                sdfg.expand_library_nodes()
                infer_types.infer_connector_types(sdfg)
                infer_types.set_default_schedule_and_storage_types(sdfg, None)
                program_objects = codegen.generate_code(sdfg, validate=False)
            except Exception:
                fpath = os.path.join("_dacegraphs", "failing.sdfgz")
                os.makedirs("_dacegraphs", exist_ok=True)
                sdfg.save(fpath, compress=True)
                print(f"Failing SDFG saved: {os.path.abspath(fpath)}")
                raise

            compiler.generate_program_folder(sdfg, program_objects, build_loc)

        cpu_file = _cpu_src(build_loc, name)
        gpu_file = _gpu_src(build_loc, name)

        sources.append(cpu_file)
        if gpu and stage >= 5:
            sources.append(gpu_file)

    if post_codegen_hook is not None:
        post_codegen_hook(sdfgs)

    if main_name is not None:
        sources.append(main_name)
    elif not lib:
        sources.append("main_gpu.cpp" if gpu else "main.cpp")

    flags = _get_flags(gpu, release, lib, debuginfo)
    dace_include = os.path.dirname(dace.__file__) + "/runtime/include/"
    includes = " ".join(
        [f"-I{sdfg.build_folder}/include" for sdfg in sdfgs]
        + [f"-I{dace_include}"]
        + headers
    )

    if output is None:
        if lib:
            output = "libvelocity_gpu.so" if gpu else "libvelocity_cpu.so"
        else:
            output = "velocity_gpu" if gpu else "velocity_cpu"

    print(f"\nBackend: {'HIP (AMD)' if AMD else 'CUDA (NVIDIA)' if gpu else 'CPU'}")
    print(f"CXX: {_cxx()}  nvcc: {_nvcc() if gpu else '(unused)'}")
    print(f"Output: {output}")
    print(f"Sources: {len(sources)} files\n")

    _compile_and_link(sources, includes, flags, output, gpu, lib)

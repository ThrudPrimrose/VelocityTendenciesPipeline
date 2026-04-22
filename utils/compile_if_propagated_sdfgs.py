"""Compile one or more DaCe SDFGs into a binary linked with a main driver.

Supports CPU (g++) and GPU (nvcc) backends. Early stages are CPU-only;
``gpu=True`` is the eventual path once later passes retarget the SDFG.
"""

import os
import re
import subprocess
import sys
import typing
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path

import dace
from dace.codegen import codegen, compiler as _dace_compiler
from dace.sdfg import infer_types


def _rename_cpp_to_cu(directory: str):
    """Rename every ``.cpp`` / ``.cc`` under ``directory`` to ``.cu`` so nvcc
    treats them as CUDA sources."""
    for ext in ("*.cpp", "*.cc"):
        for f in Path(directory).rglob(ext):
            f.rename(f.with_suffix(".cu"))


def _flags_gpu(release: bool, debuginfo: bool) -> str:
    arch = f"-arch=sm_{os.getenv('GENCODE_NUMBER', '90')}"
    suppress = (
        "--diag-suppress 68 --diag-suppress 550 --diag-suppress 20208 "
        "--diag-suppress 1835 --diag-suppress 177 --diag-suppress 20012 "
        "--diag-suppress 1098"
    )
    xwarn = (
        "-Xcompiler=-Wno-unknown-pragmas "
        "-Xcompiler=-Wno-unused-parameter "
        "-Xcompiler=-faligned-new"
    )
    debug = "-lineinfo" if debuginfo else ""
    common = f"{suppress} {xwarn} {arch} --expt-relaxed-constexpr -std=c++20 -Xcompiler=-fopenmp"
    if release:
        return (
            f"{common} -DNDEBUG -Xcompiler=-DNDEBUG -Xcompiler=-O3 "
            f"--use_fast_math -O3 {debug} --ftz=true --prec-div=false "
            f"--prec-sqrt=false --fmad=true -Xptxas=-O3 --restrict"
        )
    return (
        f"{common} -O0 -Xcompiler=-g -g -Xcompiler=-O0 -G {debug} "
        f"--fmad=false --prec-div=true --prec-sqrt=true --ftz=false "
        f"-DDACE_VELOCITY_DEBUG -Xcompiler=-DDACE_VELOCITY_DEBUG"
    )


def _flags_cpu(release: bool, debuginfo: bool) -> str:
    warns = "-Wall -Wextra -Wno-unused-parameter -Wno-unknown-pragmas"
    debug = "-g" if debuginfo else ""
    if release:
        return f"{warns} -std=c++20 -O3 -DNDEBUG -fopenmp {debug}"
    return f"{warns} -std=c++20 -O0 -g -fopenmp -DDACE_VELOCITY_DEBUG {debug}"


def _compile_and_link(sources, include_flags, flags, output, cc, gpu: bool):
    objects = []

    def compile_one(src):
        obj = os.path.splitext(src)[0] + ".o"
        # CPU g++ won't recognise .cu; force C++ language explicitly.
        lang = "" if gpu or not src.endswith(".cu") else "-x c++"
        cmd = f"{cc} {lang} -c {src} {include_flags} {flags} -o {obj}"
        r = subprocess.run(cmd, shell=True, capture_output=True, text=True)
        return src, obj, r

    with ThreadPoolExecutor(max_workers=os.cpu_count()) as pool:
        futures = {pool.submit(compile_one, s): s for s in sources}
        for fut in as_completed(futures):
            src, obj, r = fut.result()
            print(f"  [CC] {src}")
            if r.stdout:
                print(r.stdout, end="")
            if r.stderr:
                print(r.stderr, end="", file=sys.stderr)
            if r.returncode != 0:
                raise RuntimeError(f"compile failed: {src}")
            objects.append(obj)

    if gpu:
        arch_match = re.search(r"-arch=sm_\w+", flags)
        arch_flag = arch_match.group(0) if arch_match else ""
        link_cmd = (
            f"{cc} {' '.join(objects)} {arch_flag} -Xcompiler=-fopenmp -o {output}"
        )
    else:
        link_cmd = f"{cc} {' '.join(objects)} -fopenmp -o {output}"
    print(f"  [LD] {output}")
    r = subprocess.run(link_cmd, shell=True)
    if r.returncode != 0:
        raise RuntimeError("link failed")


def compile_if_propagated_sdfgs(
    sdfgs: typing.List[dace.SDFG],
    main_name: str,
    gpu: bool = False,
    release: bool = False,
    debuginfo: bool = True,
    output: typing.Optional[str] = None,
    extra_sources: typing.Optional[typing.Iterable[str]] = None,
    extra_include_dirs: typing.Optional[typing.Iterable[str]] = None,
):
    """Generate code for each SDFG and compile + link with ``main_name``.

    Parameters
    ----------
    sdfgs : list of dace.SDFG
    main_name : str
        The driver source (``main_per.cu``). Compiled as C++ in CPU mode.
    gpu : bool
        ``True`` -> nvcc. ``False`` (default) -> g++, cpu src only.
    """
    if output is None:
        output = "velocity_gpu" if gpu else "velocity_cpu"
    if gpu:
        dace.Config.set("compiler", "cuda", "max_concurrent_streams", value="1")
        dace.Config.set("compiler", "cuda", "default_block_size", value="32,16,1")

    sources = list(extra_sources) if extra_sources is not None else []
    include_dirs = (
        list(extra_include_dirs) if extra_include_dirs is not None else ["include"]
    )

    for sdfg in sdfgs:
        build_loc = sdfg.build_folder
        sdfg.fill_scope_connectors()
        infer_types.infer_connector_types(sdfg)
        infer_types.set_default_schedule_and_storage_types(sdfg, None)
        sdfg.expand_library_nodes()
        infer_types.infer_connector_types(sdfg)
        infer_types.set_default_schedule_and_storage_types(sdfg, None)

        program_objects = codegen.generate_code(sdfg, validate=False)
        _dace_compiler.generate_program_folder(sdfg, program_objects, build_loc)

        if gpu:
            _rename_cpp_to_cu(build_loc)
            cpu_file = f"{build_loc}/src/cpu/{sdfg.name}.cu"
            gpu_file = f"{build_loc}/src/cuda/{sdfg.name}_cuda.cu"
            sources.append(cpu_file)
            if Path(gpu_file).exists():
                sources.append(gpu_file)
        else:
            sources.append(f"{build_loc}/src/cpu/{sdfg.name}.cpp")

    sources.append(main_name)

    cc = "nvcc" if gpu else "g++"
    flags = _flags_gpu(release, debuginfo) if gpu else _flags_cpu(release, debuginfo)
    dace_include = f"-I{os.path.dirname(dace.__file__)}/runtime/include/"
    include_flags = " ".join(
        [f"-I{sdfg.build_folder}/include" for sdfg in sdfgs]
        + [dace_include]
        + [f"-I{d}" for d in include_dirs]
    )

    print(f"Backend: {'CUDA (nvcc)' if gpu else 'CPU (g++)'}")
    print(f"Output:  {output}")
    print(f"Sources: {len(sources)} files")

    _compile_and_link(sources, include_flags, flags, output, cc, gpu)

import os
import subprocess
import argparse
from pathlib import Path
from collect_metrics import collect_metrics
import sys
from compile_clang import compile_programs_clang
from compile_pluto import compile_programs_pluto
from compile_mlir import compile_programs_mlir

from tools import get_default_tools

SAMPLE_SIZE = int(os.getenv("SAMPLE_SIZE", "1"))

def clean_generated_files(dir_name: Path, base_name: str):
    """
    Removes all generated files.

    Args:
        dir_name: Directory where the generated files are located.
        base_name: Base name of the program (without extension).
    """
    mlir_dir = dir_name / "MLIR"
    c_dir = dir_name / "C"
    keep_mlir = [f"{base_name}_kernel.mlir", f"{base_name}_prep_mlir.c"]
    keep_c = [f"{base_name}_kernel.c", f"{base_name}_prep_c.c"]
    
    for file in mlir_dir.iterdir():
        if file.name not in keep_mlir:
            file.unlink()
    for file in c_dir.iterdir():
        if file.name not in keep_c:
            file.unlink()

def run_benchmarks(programs):
    """
    Runs the benchmark for a given program and version.

    Args:
        programs (list): List of program directories to compile.
        version (str): Version of the compiler used (e.g., "mlir", "pluto", "polly").
    """
    versions = ["O0", "O1", "O2", "O3", "mlir", "pluto", "O3_mllvm_polly"]
    for version in versions:
        os.makedirs(f'../Results/{version}', exist_ok=True)
    for i in range(SAMPLE_SIZE):
        for program_path in programs:
            for version in versions:
                program_name = Path(program_path).name+ f'_main_{version}'
                bin_dir = Path(f"{program_path}/MLIR") if version == "mlir" else Path(f"{program_path}/C")
                prog_bin = bin_dir /  program_name
                if not prog_bin.exists():
                    print(f"Error: Output file {prog_bin} does not exist.")
                    return
                collect_metrics(prog_bin, f"../Results/{version}/results_{version}_{i}.csv")


def main(clean_mode=False):
    # Get the directory where the script is located
    script_dir = os.path.dirname(os.path.abspath(__file__))
    os.chdir(script_dir)

    # List of programs to compile
    programs = [
        "../polybench-c-mlir-3.2/datamining/correlation/",
        "../polybench-c-mlir-3.2/datamining/covariance/",
        "../polybench-c-mlir-3.2/linear-algebra/kernels/2mm/",
        "../polybench-c-mlir-3.2/linear-algebra/kernels/3mm/",
        "../polybench-c-mlir-3.2/linear-algebra/kernels/atax/",
        "../polybench-c-mlir-3.2/linear-algebra/kernels/bicg/",
        "../polybench-c-mlir-3.2/linear-algebra/kernels/cholesky/",
        "../polybench-c-mlir-3.2/linear-algebra/kernels/doitgen/",
        "../polybench-c-mlir-3.2/linear-algebra/kernels/gemm/",
        "../polybench-c-mlir-3.2/linear-algebra/kernels/gemver/",
        "../polybench-c-mlir-3.2/linear-algebra/kernels/gesummv/",
        "../polybench-c-mlir-3.2/linear-algebra/kernels/mvt/",
        "../polybench-c-mlir-3.2/linear-algebra/kernels/symm/",
        "../polybench-c-mlir-3.2/linear-algebra/kernels/syr2k/",
        "../polybench-c-mlir-3.2/linear-algebra/kernels/syrk/",
        "../polybench-c-mlir-3.2/linear-algebra/kernels/trisolv/",
        "../polybench-c-mlir-3.2/linear-algebra/kernels/trmm/",
        "../polybench-c-mlir-3.2/linear-algebra/solvers/durbin/",
        "../polybench-c-mlir-3.2/linear-algebra/solvers/dynprog/",
        "../polybench-c-mlir-3.2/linear-algebra/solvers/gramschmidt/",
        "../polybench-c-mlir-3.2/linear-algebra/solvers/lu/",
        "../polybench-c-mlir-3.2/linear-algebra/solvers/ludcmp/",
        "../polybench-c-mlir-3.2/medley/floyd-warshall/",
        "../polybench-c-mlir-3.2/medley/reg_detect/",
        "../polybench-c-mlir-3.2/stencils/adi/",
        "../polybench-c-mlir-3.2/stencils/fdtd-2d/",
        "../polybench-c-mlir-3.2/stencils/fdtd-apml/",
        "../polybench-c-mlir-3.2/stencils/jacobi-1d-imper/",
        "../polybench-c-mlir-3.2/stencils/jacobi-2d-imper/",
        "../polybench-c-mlir-3.2/stencils/seidel-2d/",
    ]

    if clean_mode:
        print("Cleaning up generated files...")
        for program_path_str in programs:
            program_path = Path(program_path_str)
            base_name = program_path.stem
            clean_generated_files(program_path, base_name)
        print("Cleanup completed.")
        return


    compile_programs_clang(programs, ["-O0"])
    compile_programs_clang(programs, ["-O1"])
    compile_programs_clang(programs, ["-O2"])
    compile_programs_clang(programs, ["-O3"])
    compile_programs_clang(programs, ["-O3", "-mllvm", "-polly"])
    compile_programs_pluto(programs)
    compile_programs_mlir(programs)
    
    run_benchmarks(programs)
    
if __name__ == "__main__":
    # Set up argument parsing
    parser = argparse.ArgumentParser(
        description="Compile and run the benchmarks.",
        formatter_class=argparse.RawTextHelpFormatter
    )
    
    parser.add_argument(
        "--clean",
        action="store_true",
        help="Clean generated files (.ll, .o, _mlir.mlir)."
    )

    args = parser.parse_args()
    main(args.clean)
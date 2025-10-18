import subprocess
from pathlib import Path
import sys
from tools import get_mlir_tools, get_clang_tool, get_llc_tool

MLIR_TOOLS = get_mlir_tools()
MLIR_OPT_PATH = MLIR_TOOLS["mlir_opt"]
MLIR_TRANSLATE_PATH = MLIR_TOOLS["mlir_translate"]
LLC_PATH = get_llc_tool()
CLANG_PATH = get_clang_tool()

opt_pipeline = [
    "-canonicalize",
    "-cse",
    "-mem2reg",
    "-affine-loop-tile=tile-size=32",
    "-affine-loop-fusion",
    "-affine-loop-unroll=unroll-factor=4",
    "-affine-loop-coalescing",
    "-affine-loop-invariant-code-motion",
    "-affine-scalrep",
    "-affine-super-vectorize"
]
lowering_pipeline = [
    "--lower-affine",
    "--convert-scf-to-cf",
    "--convert-cf-to-llvm",
    "--convert-math-to-funcs",
    "--convert-math-to-llvm",
    "--convert-arith-to-llvm",
    "--convert-func-to-llvm",
    "--finalize-memref-to-llvm",
    "-reconcile-unrealized-casts"
]

def run_command(command):
    """
    Executes a shell command.

    Args:
        command: A list of strings representing the command and its arguments.
    """
    try:
        subprocess.run(command, check=True)
    except subprocess.CalledProcessError as e:
        print(f"Error executing command: {e}", file=sys.stderr)


def compile_mlir_to_llvm_mlir(input_mlir: Path, output_mlir: Path):
    """
    Compiles an input MLIR file to an MLIR file with LLVM dialect, applying the optimization pipeline.

    Args:
        input_mlir: Path to the input MLIR file.
        output_mlir: Path to the output MLIR file (with LLVM dialect).
    """
    opt_file_path = input_mlir.parent / f"opt_affine_{input_mlir.name}"
    
    if input_mlir.name == "reg_detect_kernel.mlir":
        reg_pipeline = opt_pipeline.copy()
        reg_pipeline.remove("-affine-loop-fusion")
        mlir_opt_command = [MLIR_OPT_PATH, str(input_mlir)] + reg_pipeline + ["-o", str(opt_file_path)]
    else:
        mlir_opt_command = [MLIR_OPT_PATH, str(input_mlir)] + opt_pipeline + ["-o", str(opt_file_path)]
    mlir_low_command = [MLIR_OPT_PATH, str(opt_file_path)] + lowering_pipeline + ["-o", str(output_mlir)]
    run_command(mlir_opt_command)
    run_command(mlir_low_command)
    
def translate_mlir_to_llvmir(input_mlir: Path, output_ll: Path):
    """
    Translates an MLIR file (with LLVM dialect) to LLVM IR (.ll).

    Args:
        input_mlir: Path to the input MLIR file (with LLVM dialect).
        output_ll: Path to the output LLVM IR file (.ll).
    """
    mlir_translate_command = [
        MLIR_TRANSLATE_PATH,
        "--mlir-to-llvmir",
        str(input_mlir),
        "-o", str(output_ll)
    ]
    run_command(mlir_translate_command)

def compile_llvmir_to_object(input_ll: Path, output_obj: Path):
    """
    Compiles an LLVM IR file (.ll) to an object file (.o).

    Args:
        input_ll: Path to the input LLVM IR file (.ll).
        output_obj: Path to the output object file (.o).
    """
    llc_command = [LLC_PATH, "-O3", "-filetype=obj", "-relocation-model=pic", str(input_ll), "-o", str(output_obj)]
    run_command(llc_command)
    
def compile_program_mlir(program_path: Path, base_name: str):
    kernel_mlir_file = program_path / f"{base_name}_kernel.mlir"
    kernel_main_file = program_path / f"{base_name}_prep_mlir.c"
    if not kernel_mlir_file.exists():
        print(f"Error: Kernel MLIR file {kernel_mlir_file} does not exist.", file=sys.stderr)
        return
    if not kernel_main_file.exists():
        print(f"Error: Preprocessed main mlir file {kernel_main_file} does not exist.", file=sys.stderr)
        return

    output_optimized_mlir = program_path / f"{base_name}_llvm_optimized.mlir"
    llvm_file = program_path / f"{base_name}_mlir.ll"
    obj_file = program_path / f"{base_name}_mlir.o"
    
    compile_mlir_to_llvm_mlir(kernel_mlir_file, output_optimized_mlir)
    if not output_optimized_mlir.exists():
        print(f"Error: Output MLIR file {output_optimized_mlir} was not created.")
        return
    translate_mlir_to_llvmir(output_optimized_mlir, llvm_file)
    if not llvm_file.exists():
        print(f"Error: LLVM IR file {llvm_file} was not created.")
        return
    compile_llvmir_to_object(llvm_file, obj_file)
    if not obj_file.exists():
        print(f"Error: Object file {obj_file} was not created.")
        return
    
    output = program_path / (base_name + f'_main_mlir')
    flags = ["-DPOLYBENCH_TIME", "-O0", "-lm", "../polybench-c-mlir-3.2/utilities/polybench.c"]
    compile_command = [CLANG_PATH] + flags + [str(kernel_main_file), str(obj_file), "-o", str(output)]
    try:
        subprocess.run(compile_command, check=True)
    except subprocess.CalledProcessError as e:
        print(f"Error executing command: {e}", file=sys.stderr)
        return
    if not Path(output).exists():
        print(f"Error: Failed to generate {output}.")
    return

def compile_programs_mlir(programs):
    """
    Compiles multiple programs using MLIR.

    Args:
        programs (list[str]): List of program directories to compile.
    """
    for program_path_str in programs:
        program_path = Path(f"{program_path_str}/MLIR")
        base_name = program_path.parent.stem
        print(f"Compiling {base_name} with MLIR...")
        compile_program_mlir(program_path, base_name)
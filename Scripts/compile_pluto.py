import subprocess
from pathlib import Path
import sys
from tools import get_clang_tool, get_polycc_tool

PLUTO_PATH = get_polycc_tool()
CLANG_PATH = get_clang_tool()

def compile_program_pluto(program_path: Path, base_name: str):
    kernel_c_file = program_path / f"{base_name}_kernel.c"
    kernel_main_file = program_path / f"{base_name}_prep_c.c"
    if not kernel_c_file.exists():
        print(f"Error: Kernel C file {kernel_c_file} does not exist.", file=sys.stderr)
        return
    if not kernel_main_file.exists():
        print(f"Error: Preprocessed main C file {kernel_main_file} does not exist.", file=sys.stderr)
        return

    pluto_program = program_path / f"{base_name}_kernel_pluto.c"
    pluto_output = program_path / f"{base_name}_kernel_pluto.o"
    gen_pluto = [PLUTO_PATH, str(kernel_c_file), "--silent", "-o", str(pluto_program)]
    move_cloog = ["mv", f"{base_name}_kernel_pluto.pluto.cloog", str(program_path)]
    compile_command = [CLANG_PATH, "-O0", "-c", str(pluto_program), "-o", str(pluto_output)]
    try:
        subprocess.run(gen_pluto, check=True)
        subprocess.run(move_cloog, check=True)
        subprocess.run(compile_command, check=True)
    except subprocess.CalledProcessError as e:
        print(f"Error executing command: {e}", file=sys.stderr)
        return
    
    output = program_path / (base_name + f'_main_pluto')
    flags = ["-DPOLYBENCH_TIME", "-O0", "-lm", "../polybench-c-mlir-3.2/utilities/polybench.c"]
    compile_command = [CLANG_PATH] + flags + [str(kernel_main_file), str(pluto_output), "-o", str(output)]
    try:
        subprocess.run(compile_command, check=True)
    except subprocess.CalledProcessError as e:
        print(f"Error executing command: {e}", file=sys.stderr)
        return
    if not Path(output).exists():
        print(f"Error: Failed to generate {output}.")
    return

def compile_programs_pluto(programs):
    """
    Compiles multiple programs using Pluto polycc.

    Args:
        programs (list[str]): List of program directories to compile.
    """
    for program_path_str in programs:
        program_path = Path(f"{program_path_str}/C")
        base_name = program_path.parent.stem
        print(f"Compiling {base_name} with Pluto polycc...")
        compile_program_pluto(program_path, base_name)
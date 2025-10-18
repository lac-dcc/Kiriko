import subprocess
from pathlib import Path
import sys
from tools import get_clang_tool

CLANG_PATH = get_clang_tool()

def compile_program_clang(program_path: Path, base_name: str, flags: list[str]):
    kernel_c_file = program_path / f"{base_name}_kernel.c"
    kernel_main_file = program_path / f"{base_name}_prep_c.c"
    if not kernel_c_file.exists():
        print(f"Error: Kernel C file {kernel_c_file} does not exist.", file=sys.stderr)
        return
    if not kernel_main_file.exists():
        print(f"Error: Preprocessed main C file {kernel_main_file} does not exist.", file=sys.stderr)
        return

    flags_str = "_".join(flag.replace("-", "") for flag in flags)
    object_output = program_path / f"{base_name}_kernel_{flags_str}.o"
    compile_object_command = [CLANG_PATH] + flags + ["-c", str(kernel_c_file), "-o", str(object_output)]
    
    try:
        subprocess.run(compile_object_command, check=True)
    except subprocess.CalledProcessError as e:
        print(f"Error executing command: {e}", file=sys.stderr)
    
    output = program_path / (base_name + f'_main_{flags_str}')
    flags = ["-DPOLYBENCH_TIME", "-O0", "-lm", "../polybench-c-mlir-3.2/utilities/polybench.c"]
    compile_command = [CLANG_PATH] + flags + [str(kernel_main_file), str(object_output), "-o", str(output)]
   
    try:
        subprocess.run(compile_command, check=True)
    except subprocess.CalledProcessError as e:
        print(f"Error executing command: {e}", file=sys.stderr)
        
    if not Path(output).exists():
        print(f"Error: Failed to generate {output}.")
    return
        
def compile_programs_clang(programs, flags):
    """
    Compiles multiple programs using clang.

    Args:
        programs (list[str]): List of program directories to compile.
    """
    for program_path_str in programs:
        program_path = Path(f"{program_path_str}/C")
        base_name = program_path.parent.stem
        print(f"Compiling {base_name} with Clang with flags: {flags}...")
        compile_program_clang(program_path, base_name, flags)
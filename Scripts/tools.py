import os
import shutil
from pathlib import Path


class ToolNotFoundError(Exception):
    """Custom error for missing tools."""
    pass


def find_tool(name: str, env_var: str) -> Path:
    """
    Tries to locate a tool executable.

    Search order:
      1. Environment variable (e.g., MLIR_OPT_PATH)
      2. System PATH

    Returns:
        Path: absolute path to the tool executable.

    Raises:
        ToolNotFoundError: if the tool cannot be found.
    """
    # 1. Check environment variable
    env_value = os.getenv(env_var)
    if env_value:
        path = Path(env_value).expanduser().resolve()
        if path.exists():
            return path
        raise ToolNotFoundError(f"{env_var} points to an invalid path: {path}")

    # 2. Check system PATH
    path_str = shutil.which(name)
    if path_str:
        return Path(path_str).resolve()

    # 3. Raise descriptive error
    raise ToolNotFoundError(
        f"Tool '{name}' not found. "
        f"Set the environment variable {env_var} or add '{name}' to your PATH."
    )


def get_default_tools():
    """Return a dictionary with default tool paths (clang, mlir-opt, mlir-translate)."""
    
    return {
        "clang": find_tool("clang", "CLANG_PATH"),
        "polycc": find_tool("polycc", "POLYCC_PATH"),
        "llc": find_tool("llc", "LLC_PATH"),
        "mlir_opt": find_tool("mlir-opt", "MLIR_OPT_PATH"),
        "mlir_translate": find_tool("mlir-translate", "MLIR_TRANSLATE_PATH"),
    }

def get_mlir_tools():
    """Return a dictionary with MLIR tool paths (mlir-opt, mlir-translate)."""
    
    return {
        "mlir_opt": find_tool("mlir-opt", "MLIR_OPT_PATH"),
        "mlir_translate": find_tool("mlir-translate", "MLIR_TRANSLATE_PATH"),
    }

def get_clang_tool():
    """Return the path to the clang tool."""
    return find_tool("clang", "CLANG_PATH")

def get_polycc_tool():
    """Return the path to the polycc tool."""
    return find_tool("polycc", "POLYCC_PATH")

def get_llc_tool():
    """Return the path to the llc tool."""
    return find_tool("llc", "LLC_PATH")
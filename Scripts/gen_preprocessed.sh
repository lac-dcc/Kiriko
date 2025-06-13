SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Define common flags and paths
INCLUDE_FLAGS="-I utilities -I linear-algebra/kernels/atax"
COMPILE_FLAGS="-DPOLYBENCH_TIME -DPOLYBENCH_DUMP_ARRAYS"

PROGRAMS=(
    "../polybench-c-3.2/datamining/correlation/correlation.c"
    "../polybench-c-3.2/datamining/covariance/covariance.c"
    "../polybench-c-3.2/linear-algebra/kernels/2mm/2mm.c"
    "../polybench-c-3.2/linear-algebra/kernels/3mm/3mm.c"
    "../polybench-c-3.2/linear-algebra/kernels/atax/atax.c"
    "../polybench-c-3.2/linear-algebra/kernels/bicg/bicg.c"
    "../polybench-c-3.2/linear-algebra/kernels/cholesky/cholesky.c"
    "../polybench-c-3.2/linear-algebra/kernels/doitgen/doitgen.c"
    "../polybench-c-3.2/linear-algebra/kernels/gemm/gemm.c"
    "../polybench-c-3.2/linear-algebra/kernels/gemver/gemver.c"
    "../polybench-c-3.2/linear-algebra/kernels/gesummv/gesummv.c"
    "../polybench-c-3.2/linear-algebra/kernels/mvt/mvt.c"
    "../polybench-c-3.2/linear-algebra/kernels/symm/symm.c"
    "../polybench-c-3.2/linear-algebra/kernels/syr2k/syr2k.c"
    "../polybench-c-3.2/linear-algebra/kernels/syrk/syrk.c"
    "../polybench-c-3.2/linear-algebra/kernels/trisolv/trisolv.c"
    "../polybench-c-3.2/linear-algebra/kernels/trmm/trmm.c"
    "../polybench-c-3.2/linear-algebra/solvers/durbin/durbin.c"
    "../polybench-c-3.2/linear-algebra/solvers/dynprog/dynprog.c"
    "../polybench-c-3.2/linear-algebra/solvers/gramschmidt/gramschmidt.c"
    "../polybench-c-3.2/linear-algebra/solvers/lu/lu.c"
    "../polybench-c-3.2/linear-algebra/solvers/ludcmp/ludcmp.c"
    "../polybench-c-3.2/medley/floyd-warshall/floyd-warshall.c"
    "../polybench-c-3.2/medley/reg_detect/reg_detect.c"
    "../polybench-c-3.2/stencils/adi/adi.c"
    "../polybench-c-3.2/stencils/fdtd-2d/fdtd-2d.c"
    "../polybench-c-3.2/stencils/fdtd-apml/fdtd-apml.c"
    "../polybench-c-3.2/stencils/jacobi-1d-imper/jacobi-1d-imper.c"
    "../polybench-c-3.2/stencils/jacobi-2d-imper/jacobi-2d-imper.c"
    "../polybench-c-3.2/stencils/seidel-2d/seidel-2d.c"
)

# Compile each program
for program in "${PROGRAMS[@]}"; do
    # Get directory and base name
    dir_name=$(dirname "$program")
    base_name=$(basename "$program" .c)
    output_name0="${dir_name}/${base_name}_prep_mlir.c"
    output_name1="${dir_name}/${base_name}_prep_c.c"
    
    echo "Compiling $program..."
    clang -lm $INCLUDE_FLAGS $UTILITIES "$program" $COMPILE_FLAGS -E -lm -o "$output_name0"
    clang -lm $INCLUDE_FLAGS $UTILITIES "$program" $COMPILE_FLAGS -E -lm -o "$output_name1"
done
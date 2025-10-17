SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

INCLUDE_FLAGS="-I utilities -I linear-algebra/kernels/atax"
COMPILE_FLAGS="-DPOLYBENCH_TIME -DPOLYBENCH_DUMP_ARRAYS"


PROGRAMS=(
    "../polybench-c-mlir-3.2/datamining/correlation/correlation_kernel.c"
    "../polybench-c-mlir-3.2/datamining/covariance/covariance_kernel.c"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/2mm/2mm_kernel.c"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/3mm/3mm_kernel.c"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/atax/atax_kernel.c"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/bicg/bicg_kernel.c"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/cholesky/cholesky_kernel.c"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/doitgen/doitgen_kernel.c"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/gemm/gemm_kernel.c"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/gemver/gemver_kernel.c"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/gesummv/gesummv_kernel.c"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/mvt/mvt_kernel.c"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/symm/symm_kernel.c"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/syr2k/syr2k_kernel.c"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/syrk/syrk_kernel.c"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/trisolv/trisolv_kernel.c"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/trmm/trmm_kernel.c"
    "../polybench-c-mlir-3.2/linear-algebra/solvers/durbin/durbin_kernel.c"
    "../polybench-c-mlir-3.2/linear-algebra/solvers/dynprog/dynprog_kernel.c"
    "../polybench-c-mlir-3.2/linear-algebra/solvers/gramschmidt/gramschmidt_kernel.c"
    "../polybench-c-mlir-3.2/linear-algebra/solvers/lu/lu_kernel.c"
    "../polybench-c-mlir-3.2/linear-algebra/solvers/ludcmp/ludcmp_kernel.c"
    "../polybench-c-mlir-3.2/medley/floyd-warshall/floyd-warshall_kernel.c"
    "../polybench-c-mlir-3.2/medley/reg_detect/reg_detect_kernel.c"
    "../polybench-c-mlir-3.2/stencils/adi/adi_kernel.c"
    "../polybench-c-mlir-3.2/stencils/fdtd-2d/fdtd-2d_kernel.c"
    "../polybench-c-mlir-3.2/stencils/fdtd-apml/fdtd-apml_kernel.c"
    "../polybench-c-mlir-3.2/stencils/jacobi-1d-imper/jacobi-1d-imper_kernel.c"
    "../polybench-c-mlir-3.2/stencils/jacobi-2d-imper/jacobi-2d-imper_kernel.c"
    "../polybench-c-mlir-3.2/stencils/seidel-2d/seidel-2d_kernel.c"
)

for program in "${PROGRAMS[@]}"; do
    dir_name=$(dirname "$program")
    base_name=$(basename "$program" .c)
    output_name="${dir_name}/${base_name}.mlir"
    
    echo "Compiling $program..."
    cgeist -S  "$program" --raise-scf-to-affine -o "$output_name"
done
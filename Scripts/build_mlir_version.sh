SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Define common flags and paths
INCLUDE_FLAGS="-I utilities -I linear-algebra/kernels/atax"
COMPILE_FLAGS="-DPOLYBENCH_TIME -DPOLYBENCH_DUMP_ARRAYS"

# List of programs to compile
PROGRAMS=(
    "../polybench-c-mlir-3.2/datamining/correlation/correlation_kernel.mlir"
    "../polybench-c-mlir-3.2/datamining/covariance/covariance_kernel.mlir"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/2mm/2mm_kernel.mlir"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/3mm/3mm_kernel.mlir"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/atax/atax_kernel.mlir"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/bicg/bicg_kernel.mlir"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/cholesky/cholesky_kernel.mlir"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/doitgen/doitgen_kernel.mlir"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/gemm/gemm_kernel.mlir"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/gemver/gemver_kernel.mlir"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/gesummv/gesummv_kernel.mlir"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/mvt/mvt_kernel.mlir"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/symm/symm_kernel.mlir"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/syr2k/syr2k_kernel.mlir"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/syrk/syrk_kernel.mlir"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/trisolv/trisolv_kernel.mlir"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/trmm/trmm_kernel.mlir"
    "../polybench-c-mlir-3.2/linear-algebra/solvers/durbin/durbin_kernel.mlir"
    "../polybench-c-mlir-3.2/linear-algebra/solvers/dynprog/dynprog_kernel.mlir"
    "../polybench-c-mlir-3.2/linear-algebra/solvers/gramschmidt/gramschmidt_kernel.mlir"
    "../polybench-c-mlir-3.2/linear-algebra/solvers/lu/lu_kernel.mlir"
    "../polybench-c-mlir-3.2/linear-algebra/solvers/ludcmp/ludcmp_kernel.mlir"
    "../polybench-c-mlir-3.2/medley/floyd-warshall/floyd-warshall_kernel.mlir"
    "../polybench-c-mlir-3.2/medley/reg_detect/reg_detect_kernel.mlir"
    "../polybench-c-mlir-3.2/stencils/adi/adi_kernel.mlir"
    "../polybench-c-mlir-3.2/stencils/fdtd-2d/fdtd-2d_kernel.mlir"
    "../polybench-c-mlir-3.2/stencils/fdtd-apml/fdtd-apml_kernel.mlir"
    "../polybench-c-mlir-3.2/stencils/jacobi-1d-imper/jacobi-1d-imper_kernel.mlir"
    "../polybench-c-mlir-3.2/stencils/jacobi-2d-imper/jacobi-2d-imper_kernel.mlir"
    "../polybench-c-mlir-3.2/stencils/seidel-2d/seidel-2d_kernel.mlir"
)



opt_pipeline="--lower-affine \
--convert-scf-to-cf \
--convert-cf-to-llvm \
--convert-math-to-funcs  \
--convert-math-to-llvm \
--convert-arith-to-llvm \
--convert-func-to-llvm  \
--finalize-memref-to-llvm \
-reconcile-unrealized-casts"

if [[ "$1" == "clean" ]]; then
    echo "Cleaning up generated files..."
fi

for program in "${PROGRAMS[@]}"; do
    dir_name=$(dirname "$program")
    base_name=$(basename "$program" .mlir)
    output_name="${dir_name}/${base_name}_llvm.mlir"
    
    if [[ "$1" == "clean" ]]; then
        rm "${dir_name}/${base_name}.ll"
        rm "${dir_name}/${base_name}.o"
    else
        echo "Compiling $program..."
        mlir-opt "$program" $opt_pipeline -o "$output_name"
        mlir-translate --mlir-to-llvmir "$output_name" -o "${dir_name}/${base_name}.ll"
        llc -filetype=obj "${dir_name}/${base_name}.ll" -o "${dir_name}/${base_name}.o"
    fi
done
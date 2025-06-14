SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

PROGRAMS=(
    "../polybench-c-mlir-3.2/datamining/correlation/"
    "../polybench-c-mlir-3.2/datamining/covariance/"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/2mm/"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/3mm/"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/atax/"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/bicg/"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/cholesky/"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/doitgen/"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/gemm/"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/gemver/"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/gesummv/"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/mvt/"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/symm/"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/syr2k/"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/syrk/"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/trisolv/"
    "../polybench-c-mlir-3.2/linear-algebra/kernels/trmm/"
    "../polybench-c-mlir-3.2/linear-algebra/solvers/durbin/"
    "../polybench-c-mlir-3.2/linear-algebra/solvers/dynprog/"
    "../polybench-c-mlir-3.2/linear-algebra/solvers/gramschmidt/"
    "../polybench-c-mlir-3.2/linear-algebra/solvers/lu/"
    "../polybench-c-mlir-3.2/linear-algebra/solvers/ludcmp/"
    "../polybench-c-mlir-3.2/medley/floyd-warshall/"
    "../polybench-c-mlir-3.2/medley/reg_detect/"
    "../polybench-c-mlir-3.2/stencils/adi/"
    "../polybench-c-mlir-3.2/stencils/fdtd-2d/"
    "../polybench-c-mlir-3.2/stencils/fdtd-apml/"
    "../polybench-c-mlir-3.2/stencils/jacobi-1d-imper/"
    "../polybench-c-mlir-3.2/stencils/jacobi-2d-imper/"
    "../polybench-c-mlir-3.2/stencils/seidel-2d/"
)

# Flags
CFLAGS="-DPOLYBENCH_TIME -I ../polybench-c-mlir-3.2/utilities"
DUMP_FLAGS="-DPOLYBENCH_TIME -I ../polybench-c-mlir-3.2/utilities"
LIBS="-lm"

compile_success=0
compile_fail=0
compare_success=0
compare_fail=0

TMPDIR=$(mktemp -d)

for prog in "${PROGRAMS[@]}"; do
    name=$(basename "$prog") # Ex: correlation
    dir=$(dirname "$prog")   # Ex: datamining

    # Paths
    PREP_MLIR="${prog}${name}_prep_mlir.c"
    PREP_C="${prog}${name}_prep_c.c"
    KERNEL_C="${prog}${name}_kernel.c"
    KERNEL_O="${prog}${name}_kernel.o"

    # Output executables
    OUT1="$TMPDIR/program_${name}_mlir"
    OUT2="$TMPDIR/program_${name}_c"

    echo "== Compiling ${prog} =="

    # Compile MLIR-based version
    clang $CFLAGS ../polybench-c-mlir-3.2/utilities/polybench.c "$PREP_MLIR" "$KERNEL_O" -o "$OUT1" &> /dev/null
    if [ $? -ne 0 ]; then
        echo "[FAIL] ${name}: Compilation failed for MLIR version!"
        compile_fail=$((compile_fail + 1))
        continue
    fi
    # Compile C version
    clang $DUMP_FLAGS $LIBS ../polybench-c-mlir-3.2/utilities/polybench.c "$PREP_C" "$KERNEL_C" -o "$OUT2" &> /dev/null
    if [ $? -ne 0 ]; then
        echo "[FAIL] ${name}: Compilation failed for C version!"
        compile_fail=$((compile_fail + 1))
        continue
    fi
    echo "[ OK ]  ${name}: Compilation successful."
    compile_success=$((compile_success + 1))
    
    echo "== Running ${prog} =="

    # Run and capture stderr
    echo "Running MLIR version..."
    "$OUT1" > /dev/null 2> >(sed 's/-nan/nan/g' > "$TMPDIR/p.out.txt")
    echo "Running C version..."
    "$OUT2" > /dev/null 2> >(sed 's/-nan/nan/g' > "$TMPDIR/p1.out.txt")

    # Compare outputs
    if diff -q "$TMPDIR/p.out.txt" "$TMPDIR/p1.out.txt" > /dev/null; then
        compare_success=$((compare_success + 1))
        echo "[ OK ] ${name}: Outputs are identical."
    else
        echo "[FAIL] ${name}: Outputs are different!"
        compare_fail=$((compare_fail + 1))
    fi

    # Cleanup
    rm "$OUT1" "$OUT2"
    rm "$TMPDIR/p.out.txt" "$TMPDIR/p1.out.txt"
    echo
done

# Cleanup temporary directory
rm -rf "$TMPDIR"

echo "== SUMMARY =="
echo "[ OK ] Compilation succeeded: $compile_success"
echo "[FAIL] Compilation failed:   $compile_fail"
echo "[ OK ] Outputs identical:    $compare_success"
echo "[FAIL] Outputs different:    $compare_fail"
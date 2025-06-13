module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x1024xf64>, %arg6: memref<?x1024xf64>, %arg7: memref<?x1024xf64>) {
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg2 : i32 to index
    %2 = arith.index_cast %arg0 : i32 to index
    affine.for %arg8 = 0 to %2 {
      affine.for %arg9 = 0 to %0 {
        %3 = affine.load %arg5[%arg8, %arg9] : memref<?x1024xf64>
        %4 = arith.mulf %3, %arg4 : f64
        affine.store %4, %arg5[%arg8, %arg9] : memref<?x1024xf64>
        affine.for %arg10 = 0 to %1 {
          %5 = affine.load %arg6[%arg8, %arg10] : memref<?x1024xf64>
          %6 = arith.mulf %arg3, %5 : f64
          %7 = affine.load %arg7[%arg10, %arg9] : memref<?x1024xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = affine.load %arg5[%arg8, %arg9] : memref<?x1024xf64>
          %10 = arith.addf %9, %8 : f64
          affine.store %10, %arg5[%arg8, %arg9] : memref<?x1024xf64>
        }
      }
    }
    return
  }
}

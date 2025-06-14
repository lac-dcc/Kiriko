module {
  func.func @kernel_syr2k(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x1024xf64>, %arg5: memref<?x1024xf64>, %arg6: memref<?x1024xf64>) {
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg0 : i32 to index
    affine.for %arg7 = 0 to %1 {
      affine.for %arg8 = 0 to %1 {
        %2 = affine.load %arg4[%arg7, %arg8] : memref<?x1024xf64>
        %3 = arith.mulf %2, %arg3 : f64
        affine.store %3, %arg4[%arg7, %arg8] : memref<?x1024xf64>
      }
    }
    affine.for %arg7 = 0 to %1 {
      affine.for %arg8 = 0 to %1 {
        affine.for %arg9 = 0 to %0 {
          %2 = affine.load %arg5[%arg7, %arg9] : memref<?x1024xf64>
          %3 = arith.mulf %arg2, %2 : f64
          %4 = affine.load %arg6[%arg8, %arg9] : memref<?x1024xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = affine.load %arg4[%arg7, %arg8] : memref<?x1024xf64>
          %7 = arith.addf %6, %5 : f64
          affine.store %7, %arg4[%arg7, %arg8] : memref<?x1024xf64>
          %8 = affine.load %arg6[%arg7, %arg9] : memref<?x1024xf64>
          %9 = arith.mulf %arg2, %8 : f64
          %10 = affine.load %arg5[%arg8, %arg9] : memref<?x1024xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = arith.addf %7, %11 : f64
          affine.store %12, %arg4[%arg7, %arg8] : memref<?x1024xf64>
        }
      }
    }
    return
  }
}

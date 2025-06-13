module  {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x1024xf64>, %arg7: memref<?x1024xf64>, %arg8: memref<?x1024xf64>, %arg9: memref<?x1024xf64>, %arg10: memref<?x1024xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg2 : i32 to index
    %1 = arith.index_cast %arg3 : i32 to index
    %2 = arith.index_cast %arg1 : i32 to index
    %3 = arith.index_cast %arg0 : i32 to index
    affine.for %arg11 = 0 to %3 {
      affine.for %arg12 = 0 to %2 {
        affine.store %cst, %arg6[%arg11, %arg12] : memref<?x1024xf64>
        affine.for %arg13 = 0 to %0 {
          %4 = affine.load %arg7[%arg11, %arg13] : memref<?x1024xf64>
          %5 = arith.mulf %arg4, %4 : f64
          %6 = affine.load %arg8[%arg13, %arg12] : memref<?x1024xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = affine.load %arg6[%arg11, %arg12] : memref<?x1024xf64>
          %9 = arith.addf %8, %7 : f64
          affine.store %9, %arg6[%arg11, %arg12] : memref<?x1024xf64>
        }
      }
    }
    affine.for %arg11 = 0 to %3 {
      affine.for %arg12 = 0 to %1 {
        %4 = affine.load %arg10[%arg11, %arg12] : memref<?x1024xf64>
        %5 = arith.mulf %4, %arg5 : f64
        affine.store %5, %arg10[%arg11, %arg12] : memref<?x1024xf64>
        affine.for %arg13 = 0 to %2 {
          %6 = affine.load %arg6[%arg11, %arg13] : memref<?x1024xf64>
          %7 = affine.load %arg9[%arg13, %arg12] : memref<?x1024xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = affine.load %arg10[%arg11, %arg12] : memref<?x1024xf64>
          %10 = arith.addf %9, %8 : f64
          affine.store %10, %arg10[%arg11, %arg12] : memref<?x1024xf64>
        }
      }
    }
    return
  }
}

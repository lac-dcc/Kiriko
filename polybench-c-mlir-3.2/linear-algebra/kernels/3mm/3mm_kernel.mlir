module  {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x1024xf64>, %arg6: memref<?x1024xf64>, %arg7: memref<?x1024xf64>, %arg8: memref<?x1024xf64>, %arg9: memref<?x1024xf64>, %arg10: memref<?x1024xf64>, %arg11: memref<?x1024xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg2 : i32 to index
    %2 = arith.index_cast %arg4 : i32 to index
    %3 = arith.index_cast %arg3 : i32 to index
    %4 = arith.index_cast %arg0 : i32 to index
    affine.for %arg12 = 0 to %4 {
      affine.for %arg13 = 0 to %0 {
        affine.store %cst, %arg5[%arg12, %arg13] : memref<?x1024xf64>
        affine.for %arg14 = 0 to %1 {
          %5 = affine.load %arg6[%arg12, %arg14] : memref<?x1024xf64>
          %6 = affine.load %arg7[%arg14, %arg13] : memref<?x1024xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = affine.load %arg5[%arg12, %arg13] : memref<?x1024xf64>
          %9 = arith.addf %8, %7 : f64
          affine.store %9, %arg5[%arg12, %arg13] : memref<?x1024xf64>
        }
      }
    }
    affine.for %arg12 = 0 to %0 {
      affine.for %arg13 = 0 to %3 {
        affine.store %cst, %arg8[%arg12, %arg13] : memref<?x1024xf64>
        affine.for %arg14 = 0 to %2 {
          %5 = affine.load %arg9[%arg12, %arg14] : memref<?x1024xf64>
          %6 = affine.load %arg10[%arg14, %arg13] : memref<?x1024xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = affine.load %arg8[%arg12, %arg13] : memref<?x1024xf64>
          %9 = arith.addf %8, %7 : f64
          affine.store %9, %arg8[%arg12, %arg13] : memref<?x1024xf64>
        }
      }
    }
    affine.for %arg12 = 0 to %4 {
      affine.for %arg13 = 0 to %3 {
        affine.store %cst, %arg11[%arg12, %arg13] : memref<?x1024xf64>
        affine.for %arg14 = 0 to %0 {
          %5 = affine.load %arg5[%arg12, %arg14] : memref<?x1024xf64>
          %6 = affine.load %arg8[%arg14, %arg13] : memref<?x1024xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = affine.load %arg11[%arg12, %arg13] : memref<?x1024xf64>
          %9 = arith.addf %8, %7 : f64
          affine.store %9, %arg11[%arg12, %arg13] : memref<?x1024xf64>
        }
      }
    }
    return
  }
}

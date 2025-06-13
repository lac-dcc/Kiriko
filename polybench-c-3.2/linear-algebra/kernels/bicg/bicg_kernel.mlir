module {
  func.func @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?x4000xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    affine.for %arg7 = 0 to %0 {
      affine.store %cst, %arg3[%arg7] : memref<?xf64>
    }
    %1 = arith.index_cast %arg0 : i32 to index
    affine.for %arg7 = 0 to %1 {
      affine.store %cst, %arg4[%arg7] : memref<?xf64>
      affine.for %arg8 = 0 to %0 {
        %2 = affine.load %arg3[%arg8] : memref<?xf64>
        %3 = affine.load %arg6[%arg7] : memref<?xf64>
        %4 = affine.load %arg2[%arg7, %arg8] : memref<?x4000xf64>
        %5 = arith.mulf %3, %4 : f64
        %6 = arith.addf %2, %5 : f64
        affine.store %6, %arg3[%arg8] : memref<?xf64>
        %7 = affine.load %arg4[%arg7] : memref<?xf64>
        %8 = affine.load %arg2[%arg7, %arg8] : memref<?x4000xf64>
        %9 = affine.load %arg5[%arg8] : memref<?xf64>
        %10 = arith.mulf %8, %9 : f64
        %11 = arith.addf %7, %10 : f64
        affine.store %11, %arg4[%arg7] : memref<?xf64>
      }
    }
    return
  }
}

module {
  func.func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x4000xf64>, %arg4: memref<?x4000xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg0 : i32 to index
    affine.for %arg8 = 0 to %0 {
      affine.store %cst, %arg5[%arg8] : memref<?xf64>
      affine.store %cst, %arg7[%arg8] : memref<?xf64>
      affine.for %arg9 = 0 to %0 {
        %6 = affine.load %arg3[%arg8, %arg9] : memref<?x4000xf64>
        %7 = affine.load %arg6[%arg9] : memref<?xf64>
        %8 = arith.mulf %6, %7 : f64
        %9 = affine.load %arg5[%arg8] : memref<?xf64>
        %10 = arith.addf %8, %9 : f64
        affine.store %10, %arg5[%arg8] : memref<?xf64>
        %11 = affine.load %arg4[%arg8, %arg9] : memref<?x4000xf64>
        %12 = affine.load %arg6[%arg9] : memref<?xf64>
        %13 = arith.mulf %11, %12 : f64
        %14 = affine.load %arg7[%arg8] : memref<?xf64>
        %15 = arith.addf %13, %14 : f64
        affine.store %15, %arg7[%arg8] : memref<?xf64>
      }
      %1 = affine.load %arg5[%arg8] : memref<?xf64>
      %2 = arith.mulf %arg1, %1 : f64
      %3 = affine.load %arg7[%arg8] : memref<?xf64>
      %4 = arith.mulf %arg2, %3 : f64
      %5 = arith.addf %2, %4 : f64
      affine.store %5, %arg7[%arg8] : memref<?xf64>
    }
    return
  }
}

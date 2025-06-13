#map = affine_map<(d0) -> (d0)>
module  {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?x4000xf64>, %arg2: memref<?x4000xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %0 = arith.index_cast %arg0 : i32 to index
    %1 = affine.load %arg5[0] : memref<?xf64>
    affine.store %1, %arg1[0, 0] : memref<?x4000xf64>
    affine.store %cst, %arg4[0] : memref<?xf64>
    %2 = affine.load %arg5[0] : memref<?xf64>
    affine.store %2, %arg3[0] : memref<?xf64>
    affine.for %arg7 = 1 to %0 {
      %3 = affine.load %arg4[%arg7 - 1] : memref<?xf64>
      %4 = affine.load %arg3[%arg7 - 1] : memref<?xf64>
      %5 = arith.mulf %4, %4 : f64
      %6 = arith.mulf %5, %3 : f64
      %7 = arith.subf %3, %6 : f64
      affine.store %7, %arg4[%arg7] : memref<?xf64>
      %8 = affine.load %arg5[%arg7] : memref<?xf64>
      affine.store %8, %arg2[0, %arg7] : memref<?x4000xf64>
      affine.for %arg8 = 0 to #map(%arg7) {
        %14 = affine.load %arg2[%arg8, %arg7] : memref<?x4000xf64>
        %15 = affine.load %arg5[%arg7 - %arg8 - 1] : memref<?xf64>
        %16 = affine.load %arg1[%arg8, %arg7 - 1] : memref<?x4000xf64>
        %17 = arith.mulf %15, %16 : f64
        %18 = arith.addf %14, %17 : f64
        affine.store %18, %arg2[%arg8 + 1, %arg7] : memref<?x4000xf64>
      }
      %9 = affine.load %arg2[%arg7, %arg7] : memref<?x4000xf64>
      %10 = arith.negf %9 : f64
      %11 = affine.load %arg4[%arg7] : memref<?xf64>
      %12 = arith.mulf %10, %11 : f64
      affine.store %12, %arg3[%arg7] : memref<?xf64>
      affine.for %arg8 = 0 to #map(%arg7) {
        %14 = affine.load %arg1[%arg8, %arg7 - 1] : memref<?x4000xf64>
        %15 = affine.load %arg3[%arg7] : memref<?xf64>
        %16 = affine.load %arg1[%arg7 - %arg8 - 1, %arg7 - 1] : memref<?x4000xf64>
        %17 = arith.mulf %15, %16 : f64
        %18 = arith.addf %14, %17 : f64
        affine.store %18, %arg1[%arg8, %arg7] : memref<?x4000xf64>
      }
      %13 = affine.load %arg3[%arg7] : memref<?xf64>
      affine.store %13, %arg1[%arg7, %arg7] : memref<?x4000xf64>
    }
    affine.for %arg7 = 0 to %0 {
      %3 = affine.load %arg1[%arg7, symbol(%0) - 1] : memref<?x4000xf64>
      affine.store %3, %arg6[%arg7] : memref<?xf64>
    }
    return
  }
}

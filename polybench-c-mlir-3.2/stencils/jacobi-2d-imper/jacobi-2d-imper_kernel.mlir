#map = affine_map<()[s0] -> (s0 - 1)>
module {
  func.func @kernel_jacobi_2d_imper(%arg0: i32, %arg1: i32, %arg2: memref<?x1000xf64>, %arg3: memref<?x1000xf64>) {
    %cst = arith.constant 2.000000e-01 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg0 : i32 to index
    affine.for %arg4 = 0 to %1 {
      affine.for %arg5 = 1 to #map()[%0] {
        affine.for %arg6 = 1 to #map()[%0] {
          %2 = affine.load %arg2[%arg5, %arg6] : memref<?x1000xf64>
          %3 = affine.load %arg2[%arg5, %arg6 - 1] : memref<?x1000xf64>
          %4 = arith.addf %2, %3 : f64
          %5 = affine.load %arg2[%arg5, %arg6 + 1] : memref<?x1000xf64>
          %6 = arith.addf %4, %5 : f64
          %7 = affine.load %arg2[%arg5 + 1, %arg6] : memref<?x1000xf64>
          %8 = arith.addf %6, %7 : f64
          %9 = affine.load %arg2[%arg5 - 1, %arg6] : memref<?x1000xf64>
          %10 = arith.addf %8, %9 : f64
          %11 = arith.mulf %10, %cst : f64
          affine.store %11, %arg3[%arg5, %arg6] : memref<?x1000xf64>
        }
      }
      affine.for %arg5 = 1 to #map()[%0] {
        affine.for %arg6 = 1 to #map()[%0] {
          %2 = affine.load %arg3[%arg5, %arg6] : memref<?x1000xf64>
          affine.store %2, %arg2[%arg5, %arg6] : memref<?x1000xf64>
        }
      }
    }
    return
  }
}

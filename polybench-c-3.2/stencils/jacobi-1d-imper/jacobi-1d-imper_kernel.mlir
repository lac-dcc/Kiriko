#map = affine_map<()[s0] -> (s0 - 1)>
module {
  func.func @kernel_jacobi_1d_imper(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %cst = arith.constant 3.333300e-01 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg0 : i32 to index
    affine.for %arg4 = 0 to %1 {
      affine.for %arg5 = 1 to #map()[%0] {
        %2 = affine.load %arg2[%arg5 - 1] : memref<?xf64>
        %3 = affine.load %arg2[%arg5] : memref<?xf64>
        %4 = arith.addf %2, %3 : f64
        %5 = affine.load %arg2[%arg5 + 1] : memref<?xf64>
        %6 = arith.addf %4, %5 : f64
        %7 = arith.mulf %6, %cst : f64
        affine.store %7, %arg3[%arg5] : memref<?xf64>
      }
      affine.for %arg5 = 1 to #map()[%0] {
        %2 = affine.load %arg3[%arg5] : memref<?xf64>
        affine.store %2, %arg2[%arg5] : memref<?xf64>
      }
    }
    return
  }
}

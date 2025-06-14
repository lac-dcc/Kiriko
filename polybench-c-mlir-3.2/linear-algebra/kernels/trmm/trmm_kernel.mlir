#map = affine_map<(d0) -> (d0)>
module {
  func.func @kernel_trmm(%arg0: i32, %arg1: f64, %arg2: memref<?x1024xf64>, %arg3: memref<?x1024xf64>) {
    %0 = arith.index_cast %arg0 : i32 to index
    affine.for %arg4 = 1 to %0 {
      affine.for %arg5 = 0 to %0 {
        affine.for %arg6 = 0 to #map(%arg4) {
          %1 = affine.load %arg2[%arg4, %arg6] : memref<?x1024xf64>
          %2 = arith.mulf %arg1, %1 : f64
          %3 = affine.load %arg3[%arg5, %arg6] : memref<?x1024xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = affine.load %arg3[%arg4, %arg5] : memref<?x1024xf64>
          %6 = arith.addf %5, %4 : f64
          affine.store %6, %arg3[%arg4, %arg5] : memref<?x1024xf64>
        }
      }
    }
    return
  }
}

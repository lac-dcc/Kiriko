#map = affine_map<(d0) -> (d0 + 1)>
module {
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x1024xf64>) {
    %0 = arith.index_cast %arg0 : i32 to index
    affine.for %arg2 = 0 to %0 {
      affine.for %arg3 = #map(%arg2) to %0 {
        %1 = affine.load %arg1[%arg2, %arg3] : memref<?x1024xf64>
        %2 = affine.load %arg1[%arg2, %arg2] : memref<?x1024xf64>
        %3 = arith.divf %1, %2 : f64
        affine.store %3, %arg1[%arg2, %arg3] : memref<?x1024xf64>
      }
      affine.for %arg3 = #map(%arg2) to %0 {
        affine.for %arg4 = #map(%arg2) to %0 {
          %1 = affine.load %arg1[%arg3, %arg4] : memref<?x1024xf64>
          %2 = affine.load %arg1[%arg3, %arg2] : memref<?x1024xf64>
          %3 = affine.load %arg1[%arg2, %arg4] : memref<?x1024xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = arith.subf %1, %4 : f64
          affine.store %5, %arg1[%arg3, %arg4] : memref<?x1024xf64>
        }
      }
    }
    return
  }
}

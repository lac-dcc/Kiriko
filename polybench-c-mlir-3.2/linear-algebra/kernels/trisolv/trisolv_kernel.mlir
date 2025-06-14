#map = affine_map<(d0) -> (d0)>
module {
  func.func @kernel_trisolv(%arg0: i32, %arg1: memref<?x4000xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %0 = arith.index_cast %arg0 : i32 to index
    affine.for %arg4 = 0 to %0 {
      %1 = affine.load %arg3[%arg4] : memref<?xf64>
      affine.store %1, %arg2[%arg4] : memref<?xf64>
      affine.for %arg5 = 0 to #map(%arg4) {
        %5 = affine.load %arg2[%arg4] : memref<?xf64>
        %6 = affine.load %arg1[%arg4, %arg5] : memref<?x4000xf64>
        %7 = affine.load %arg2[%arg5] : memref<?xf64>
        %8 = arith.mulf %6, %7 : f64
        %9 = arith.subf %5, %8 : f64
        affine.store %9, %arg2[%arg4] : memref<?xf64>
      }
      %2 = affine.load %arg2[%arg4] : memref<?xf64>
      %3 = affine.load %arg1[%arg4, %arg4] : memref<?x4000xf64>
      %4 = arith.divf %2, %3 : f64
      affine.store %4, %arg2[%arg4] : memref<?xf64>
    }
    return
  }
}

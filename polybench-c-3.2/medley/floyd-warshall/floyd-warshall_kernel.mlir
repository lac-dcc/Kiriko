module  {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x1024xf64>) {
    %0 = arith.index_cast %arg0 : i32 to index
    affine.for %arg2 = 0 to %0 {
      affine.for %arg3 = 0 to %0 {
        affine.for %arg4 = 0 to %0 {
          %1 = affine.load %arg1[%arg3, %arg4] : memref<?x1024xf64>
          %2 = affine.load %arg1[%arg3, %arg2] : memref<?x1024xf64>
          %3 = affine.load %arg1[%arg2, %arg4] : memref<?x1024xf64>
          %4 = arith.addf %2, %3 : f64
          %5 = arith.cmpf olt, %1, %4 : f64
          %6 = arith.select %5, %1, %4 : f64
          affine.store %6, %arg1[%arg3, %arg4] : memref<?x1024xf64>
        }
      }
    }
    return
  }
}

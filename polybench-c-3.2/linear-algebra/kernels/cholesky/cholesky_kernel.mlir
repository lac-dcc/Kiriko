#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 1)>
module  {
  func.func @kernel_cholesky(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?x1024xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    affine.store %0, %alloca[] : memref<f64>
    %1 = arith.index_cast %arg0 : i32 to index
    affine.for %arg3 = 0 to %1 {
      %2 = affine.load %arg2[%arg3, %arg3] : memref<?x1024xf64>
      affine.store %2, %alloca[] : memref<f64>
      affine.for %arg4 = 0 to #map(%arg3) {
        %6 = affine.load %alloca[] : memref<f64>
        %7 = affine.load %arg2[%arg3, %arg4] : memref<?x1024xf64>
        %8 = arith.mulf %7, %7 : f64
        %9 = arith.subf %6, %8 : f64
        affine.store %9, %alloca[] : memref<f64>
      }
      %3 = affine.load %alloca[] : memref<f64>
      %4 = math.sqrt %3 : f64
      %5 = arith.divf %cst, %4 : f64
      affine.store %5, %arg1[%arg3] : memref<?xf64>
      affine.for %arg4 = #map1(%arg3) to %1 {
        %6 = affine.load %arg2[%arg3, %arg4] : memref<?x1024xf64>
        affine.store %6, %alloca[] : memref<f64>
        affine.for %arg5 = 0 to #map(%arg3) {
          %10 = affine.load %alloca[] : memref<f64>
          %11 = affine.load %arg2[%arg4, %arg5] : memref<?x1024xf64>
          %12 = affine.load %arg2[%arg3, %arg5] : memref<?x1024xf64>
          %13 = arith.mulf %11, %12 : f64
          %14 = arith.subf %10, %13 : f64
          affine.store %14, %alloca[] : memref<f64>
        }
        %7 = affine.load %alloca[] : memref<f64>
        %8 = affine.load %arg1[%arg3] : memref<?xf64>
        %9 = arith.mulf %7, %8 : f64
        affine.store %9, %arg2[%arg4, %arg3] : memref<?x1024xf64>
      }
    }
    return
  }
}

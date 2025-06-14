#map = affine_map<()[s0] -> (s0 - 1)>
module {
  func.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x1000xf64>) {
    %cst = arith.constant 9.000000e+00 : f64
    %0 = arith.index_cast %arg0 : i32 to index
    %1 = arith.index_cast %arg1 : i32 to index
    affine.for %arg3 = 0 to %0 {
      affine.for %arg4 = 1 to #map()[%1] {
        affine.for %arg5 = 1 to #map()[%1] {
          %2 = affine.load %arg2[%arg4 - 1, %arg5 - 1] : memref<?x1000xf64>
          %3 = affine.load %arg2[%arg4 - 1, %arg5] : memref<?x1000xf64>
          %4 = arith.addf %2, %3 : f64
          %5 = affine.load %arg2[%arg4 - 1, %arg5 + 1] : memref<?x1000xf64>
          %6 = arith.addf %4, %5 : f64
          %7 = affine.load %arg2[%arg4, %arg5 - 1] : memref<?x1000xf64>
          %8 = arith.addf %6, %7 : f64
          %9 = affine.load %arg2[%arg4, %arg5] : memref<?x1000xf64>
          %10 = arith.addf %8, %9 : f64
          %11 = affine.load %arg2[%arg4, %arg5 + 1] : memref<?x1000xf64>
          %12 = arith.addf %10, %11 : f64
          %13 = affine.load %arg2[%arg4 + 1, %arg5 - 1] : memref<?x1000xf64>
          %14 = arith.addf %12, %13 : f64
          %15 = affine.load %arg2[%arg4 + 1, %arg5] : memref<?x1000xf64>
          %16 = arith.addf %14, %15 : f64
          %17 = affine.load %arg2[%arg4 + 1, %arg5 + 1] : memref<?x1000xf64>
          %18 = arith.addf %16, %17 : f64
          %19 = arith.divf %18, %cst : f64
          affine.store %19, %arg2[%arg4, %arg5] : memref<?x1000xf64>
        }
      }
    }
    return
  }
}

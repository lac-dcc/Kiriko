#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<()[s0] -> (s0 + 1)>
#map2 = affine_map<(d0) -> (d0)>
#map3 = affine_map<(d0)[s0] -> (-d0 + s0)>
module {
  func.func @kernel_ludcmp(%arg0: i32, %arg1: memref<?x1025xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %0 = arith.index_cast %arg0 : i32 to index
    %alloca = memref.alloca() : memref<f64>
    %1 = llvm.mlir.undef : f64
    affine.store %1, %alloca[] : memref<f64>
    affine.store %cst, %arg2[0] : memref<?xf64>
    affine.for %arg5 = 0 to %0 {
      affine.for %arg6 = #map(%arg5) to #map1()[%0] {
        %6 = affine.load %arg1[%arg6, %arg5] : memref<?x1025xf64>
        affine.store %6, %alloca[] : memref<f64>
        affine.for %arg7 = 0 to #map2(%arg5) {
          %10 = affine.load %alloca[] : memref<f64>
          %11 = affine.load %arg1[%arg6, %arg7] : memref<?x1025xf64>
          %12 = affine.load %arg1[%arg7, %arg5] : memref<?x1025xf64>
          %13 = arith.mulf %11, %12 : f64
          %14 = arith.subf %10, %13 : f64
          affine.store %14, %alloca[] : memref<f64>
        }
        %7 = affine.load %alloca[] : memref<f64>
        %8 = affine.load %arg1[%arg5, %arg5] : memref<?x1025xf64>
        %9 = arith.divf %7, %8 : f64
        affine.store %9, %arg1[%arg6, %arg5] : memref<?x1025xf64>
      }
      affine.for %arg6 = #map(%arg5) to #map1()[%0] {
        %6 = affine.load %arg1[%arg5 + 1, %arg6] : memref<?x1025xf64>
        affine.store %6, %alloca[] : memref<f64>
        affine.for %arg7 = 0 to #map(%arg5) {
          %8 = affine.load %alloca[] : memref<f64>
          %9 = affine.load %arg1[%arg5 + 1, %arg7] : memref<?x1025xf64>
          %10 = affine.load %arg1[%arg7, %arg6] : memref<?x1025xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = arith.subf %8, %11 : f64
          affine.store %12, %alloca[] : memref<f64>
        }
        %7 = affine.load %alloca[] : memref<f64>
        affine.store %7, %arg1[%arg5 + 1, %arg6] : memref<?x1025xf64>
      }
    }
    %2 = affine.load %arg2[0] : memref<?xf64>
    affine.store %2, %arg4[0] : memref<?xf64>
    affine.for %arg5 = 1 to #map1()[%0] {
      %6 = affine.load %arg2[%arg5] : memref<?xf64>
      affine.store %6, %alloca[] : memref<f64>
      affine.for %arg6 = 0 to #map2(%arg5) {
        %8 = affine.load %alloca[] : memref<f64>
        %9 = affine.load %arg1[%arg5, %arg6] : memref<?x1025xf64>
        %10 = affine.load %arg4[%arg6] : memref<?xf64>
        %11 = arith.mulf %9, %10 : f64
        %12 = arith.subf %8, %11 : f64
        affine.store %12, %alloca[] : memref<f64>
      }
      %7 = affine.load %alloca[] : memref<f64>
      affine.store %7, %arg4[%arg5] : memref<?xf64>
    }
    %3 = affine.load %arg4[symbol(%0)] : memref<?xf64>
    %4 = affine.load %arg1[symbol(%0), symbol(%0)] : memref<?x1025xf64>
    %5 = arith.divf %3, %4 : f64
    affine.store %5, %arg3[symbol(%0)] : memref<?xf64>
    affine.for %arg5 = 0 to %0 {
      %6 = affine.load %arg4[-%arg5 + symbol(%0) - 1] : memref<?xf64>
      affine.store %6, %alloca[] : memref<f64>
      affine.for %arg6 = #map3(%arg5)[%0] to #map1()[%0] {
        %10 = affine.load %alloca[] : memref<f64>
        %11 = affine.load %arg1[-%arg5 + symbol(%0) - 1, %arg6] : memref<?x1025xf64>
        %12 = affine.load %arg3[%arg6] : memref<?xf64>
        %13 = arith.mulf %11, %12 : f64
        %14 = arith.subf %10, %13 : f64
        affine.store %14, %alloca[] : memref<f64>
      }
      %7 = affine.load %alloca[] : memref<f64>
      %8 = affine.load %arg1[-%arg5 + symbol(%0) - 1, -%arg5 + symbol(%0) - 1] : memref<?x1025xf64>
      %9 = arith.divf %7, %8 : f64
      affine.store %9, %arg3[-%arg5 + symbol(%0) - 1] : memref<?xf64>
    }
    return
  }
}

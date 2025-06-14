#map = affine_map<()[s0] -> (s0 - 2)>
module {
  func.func @kernel_adi(%arg0: i32, %arg1: i32, %arg2: memref<?x1024xf64>, %arg3: memref<?x1024xf64>, %arg4: memref<?x1024xf64>) {
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg0 : i32 to index
    affine.for %arg5 = 0 to %1 {
      affine.for %arg6 = 0 to %0 {
        affine.for %arg7 = 1 to %0 {
          %2 = affine.load %arg2[%arg6, %arg7] : memref<?x1024xf64>
          %3 = affine.load %arg2[%arg6, %arg7 - 1] : memref<?x1024xf64>
          %4 = affine.load %arg3[%arg6, %arg7] : memref<?x1024xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = affine.load %arg4[%arg6, %arg7 - 1] : memref<?x1024xf64>
          %7 = arith.divf %5, %6 : f64
          %8 = arith.subf %2, %7 : f64
          affine.store %8, %arg2[%arg6, %arg7] : memref<?x1024xf64>
          %9 = affine.load %arg4[%arg6, %arg7] : memref<?x1024xf64>
          %10 = affine.load %arg3[%arg6, %arg7] : memref<?x1024xf64>
          %11 = arith.mulf %10, %10 : f64
          %12 = affine.load %arg4[%arg6, %arg7 - 1] : memref<?x1024xf64>
          %13 = arith.divf %11, %12 : f64
          %14 = arith.subf %9, %13 : f64
          affine.store %14, %arg4[%arg6, %arg7] : memref<?x1024xf64>
        }
      }
      affine.for %arg6 = 0 to %0 {
        %2 = affine.load %arg2[%arg6, symbol(%0) - 1] : memref<?x1024xf64>
        %3 = affine.load %arg4[%arg6, symbol(%0) - 1] : memref<?x1024xf64>
        %4 = arith.divf %2, %3 : f64
        affine.store %4, %arg2[%arg6, symbol(%0) - 1] : memref<?x1024xf64>
      }
      affine.for %arg6 = 0 to %0 {
        affine.for %arg7 = 0 to #map()[%0] {
          %2 = affine.load %arg2[%arg6, -%arg7 + symbol(%0) - 2] : memref<?x1024xf64>
          %3 = affine.load %arg2[%arg6, -%arg7 + symbol(%0) - 3] : memref<?x1024xf64>
          %4 = affine.load %arg3[%arg6, -%arg7 + symbol(%0) - 3] : memref<?x1024xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = arith.subf %2, %5 : f64
          %7 = affine.load %arg4[%arg6, -%arg7 + symbol(%0) - 3] : memref<?x1024xf64>
          %8 = arith.divf %6, %7 : f64
          affine.store %8, %arg2[%arg6, -%arg7 + symbol(%0) - 2] : memref<?x1024xf64>
        }
      }
      affine.for %arg6 = 1 to %0 {
        affine.for %arg7 = 0 to %0 {
          %2 = affine.load %arg2[%arg6, %arg7] : memref<?x1024xf64>
          %3 = affine.load %arg2[%arg6 - 1, %arg7] : memref<?x1024xf64>
          %4 = affine.load %arg3[%arg6, %arg7] : memref<?x1024xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = affine.load %arg4[%arg6 - 1, %arg7] : memref<?x1024xf64>
          %7 = arith.divf %5, %6 : f64
          %8 = arith.subf %2, %7 : f64
          affine.store %8, %arg2[%arg6, %arg7] : memref<?x1024xf64>
          %9 = affine.load %arg4[%arg6, %arg7] : memref<?x1024xf64>
          %10 = affine.load %arg3[%arg6, %arg7] : memref<?x1024xf64>
          %11 = arith.mulf %10, %10 : f64
          %12 = affine.load %arg4[%arg6 - 1, %arg7] : memref<?x1024xf64>
          %13 = arith.divf %11, %12 : f64
          %14 = arith.subf %9, %13 : f64
          affine.store %14, %arg4[%arg6, %arg7] : memref<?x1024xf64>
        }
      }
      affine.for %arg6 = 0 to %0 {
        %2 = affine.load %arg2[symbol(%0) - 1, %arg6] : memref<?x1024xf64>
        %3 = affine.load %arg4[symbol(%0) - 1, %arg6] : memref<?x1024xf64>
        %4 = arith.divf %2, %3 : f64
        affine.store %4, %arg2[symbol(%0) - 1, %arg6] : memref<?x1024xf64>
      }
      affine.for %arg6 = 0 to #map()[%0] {
        affine.for %arg7 = 0 to %0 {
          %2 = affine.load %arg2[-%arg6 + symbol(%0) - 2, %arg7] : memref<?x1024xf64>
          %3 = affine.load %arg2[-%arg6 + symbol(%0) - 3, %arg7] : memref<?x1024xf64>
          %4 = affine.load %arg3[-%arg6 + symbol(%0) - 3, %arg7] : memref<?x1024xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = arith.subf %2, %5 : f64
          %7 = affine.load %arg4[-%arg6 + symbol(%0) - 2, %arg7] : memref<?x1024xf64>
          %8 = arith.divf %6, %7 : f64
          affine.store %8, %arg2[-%arg6 + symbol(%0) - 2, %arg7] : memref<?x1024xf64>
        }
      }
    }
    return
  }
}

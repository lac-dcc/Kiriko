#map = affine_map<(d0) -> (d0 + 1)>
module  {
  func.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x512xf64>, %arg3: memref<?x512xf64>, %arg4: memref<?x512xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg0 : i32 to index
    %alloca = memref.alloca() : memref<f64>
    %1 = llvm.mlir.undef : f64
    affine.store %1, %alloca[] : memref<f64>
    %2 = arith.index_cast %arg1 : i32 to index
    affine.for %arg5 = 0 to %2 {
      affine.store %cst, %alloca[] : memref<f64>
      affine.for %arg6 = 0 to %0 {
        %5 = affine.load %arg2[%arg6, %arg5] : memref<?x512xf64>
        %6 = arith.mulf %5, %5 : f64
        %7 = affine.load %alloca[] : memref<f64>
        %8 = arith.addf %7, %6 : f64
        affine.store %8, %alloca[] : memref<f64>
      }
      %3 = affine.load %alloca[] : memref<f64>
      %4 = math.sqrt %3 : f64
      affine.store %4, %arg3[%arg5, %arg5] : memref<?x512xf64>
      affine.for %arg6 = 0 to %0 {
        %5 = affine.load %arg2[%arg6, %arg5] : memref<?x512xf64>
        %6 = affine.load %arg3[%arg5, %arg5] : memref<?x512xf64>
        %7 = arith.divf %5, %6 : f64
        affine.store %7, %arg4[%arg6, %arg5] : memref<?x512xf64>
      }
      affine.for %arg6 = #map(%arg5) to %2 {
        affine.store %cst, %arg3[%arg5, %arg6] : memref<?x512xf64>
        affine.for %arg7 = 0 to %0 {
          %5 = affine.load %arg4[%arg7, %arg5] : memref<?x512xf64>
          %6 = affine.load %arg2[%arg7, %arg6] : memref<?x512xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = affine.load %arg3[%arg5, %arg6] : memref<?x512xf64>
          %9 = arith.addf %8, %7 : f64
          affine.store %9, %arg3[%arg5, %arg6] : memref<?x512xf64>
        }
        affine.for %arg7 = 0 to %0 {
          %5 = affine.load %arg2[%arg7, %arg6] : memref<?x512xf64>
          %6 = affine.load %arg4[%arg7, %arg5] : memref<?x512xf64>
          %7 = affine.load %arg3[%arg5, %arg6] : memref<?x512xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = arith.subf %5, %8 : f64
          affine.store %9, %arg2[%arg7, %arg6] : memref<?x512xf64>
        }
      }
    }
    return
  }
}

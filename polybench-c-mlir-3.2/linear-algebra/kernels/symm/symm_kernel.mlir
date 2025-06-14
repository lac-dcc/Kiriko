#map = affine_map<(d0) -> (d0 - 1)>
module {
  func.func @kernel_symm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x1024xf64>, %arg5: memref<?x1024xf64>, %arg6: memref<?x1024xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %alloca = memref.alloca() : memref<f64>
    %1 = llvm.mlir.undef : f64
    affine.store %1, %alloca[] : memref<f64>
    %2 = arith.index_cast %arg0 : i32 to index
    affine.for %arg7 = 0 to %2 {
      affine.for %arg8 = 0 to %0 {
        affine.store %cst, %alloca[] : memref<f64>
        affine.for %arg9 = 0 to #map(%arg8) {
          %13 = affine.load %arg5[%arg9, %arg7] : memref<?x1024xf64>
          %14 = arith.mulf %arg2, %13 : f64
          %15 = affine.load %arg6[%arg7, %arg8] : memref<?x1024xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = affine.load %arg4[%arg9, %arg8] : memref<?x1024xf64>
          %18 = arith.addf %17, %16 : f64
          affine.store %18, %arg4[%arg9, %arg8] : memref<?x1024xf64>
          %19 = affine.load %arg6[%arg9, %arg8] : memref<?x1024xf64>
          %20 = affine.load %arg5[%arg9, %arg7] : memref<?x1024xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = affine.load %alloca[] : memref<f64>
          %23 = arith.addf %22, %21 : f64
          affine.store %23, %alloca[] : memref<f64>
        }
        %3 = affine.load %arg4[%arg7, %arg8] : memref<?x1024xf64>
        %4 = arith.mulf %arg3, %3 : f64
        %5 = affine.load %arg5[%arg7, %arg7] : memref<?x1024xf64>
        %6 = arith.mulf %arg2, %5 : f64
        %7 = affine.load %arg6[%arg7, %arg8] : memref<?x1024xf64>
        %8 = arith.mulf %6, %7 : f64
        %9 = arith.addf %4, %8 : f64
        %10 = affine.load %alloca[] : memref<f64>
        %11 = arith.mulf %arg2, %10 : f64
        %12 = arith.addf %9, %11 : f64
        affine.store %12, %arg4[%arg7, %arg8] : memref<?x1024xf64>
      }
    }
    return
  }
}

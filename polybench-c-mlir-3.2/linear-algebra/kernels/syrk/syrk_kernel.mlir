module  {
  func.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<1024x1024xf64>, %arg5: memref<1024x1024xf64>) {
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg0 : i32 to index
    affine.for %arg6 = 0 to %1 {
      affine.for %arg7 = 0 to %1 {
        %2 = affine.load %arg4[%arg6, %arg7] : memref<1024x1024xf64>
        %3 = arith.mulf %2, %arg3 : f64
        affine.store %3, %arg4[%arg6, %arg7] : memref<1024x1024xf64>
      }
    }
    affine.for %arg6 = 0 to %1 {
      affine.for %arg7 = 0 to %1 {
        affine.for %arg8 = 0 to %0 {
          %2 = affine.load %arg5[%arg6, %arg8] : memref<1024x1024xf64>
          %3 = arith.mulf %arg2, %2 : f64
          %4 = affine.load %arg5[%arg7, %arg8] : memref<1024x1024xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = affine.load %arg4[%arg6, %arg7] : memref<1024x1024xf64>
          %7 = arith.addf %6, %5 : f64
          affine.store %7, %arg4[%arg6, %arg7] : memref<1024x1024xf64>
        }
      }
    }
    return
  }
}

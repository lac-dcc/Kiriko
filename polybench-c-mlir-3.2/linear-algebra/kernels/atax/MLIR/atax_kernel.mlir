module  {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<4000x4000xf64>, %arg3: memref<4000xf64>, %arg4: memref<4000xf64>, %arg5: memref<4000xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    affine.for %arg6 = 0 to %0 {
      affine.store %cst, %arg4[%arg6] : memref<4000xf64>
    }
    %1 = arith.index_cast %arg0 : i32 to index
    affine.for %arg6 = 0 to %1 {
      affine.store %cst, %arg5[%arg6] : memref<4000xf64>
      affine.for %arg7 = 0 to %0 {
        %2 = affine.load %arg5[%arg6] : memref<4000xf64>
        %3 = affine.load %arg2[%arg6, %arg7] : memref<4000x4000xf64>
        %4 = affine.load %arg3[%arg7] : memref<4000xf64>
        %5 = arith.mulf %3, %4 : f64
        %6 = arith.addf %2, %5 : f64
        affine.store %6, %arg5[%arg6] : memref<4000xf64>
      }
      affine.for %arg7 = 0 to %0 {
        %2 = affine.load %arg4[%arg7] : memref<4000xf64>
        %3 = affine.load %arg2[%arg6, %arg7] : memref<4000x4000xf64>
        %4 = affine.load %arg5[%arg6] : memref<4000xf64>
        %5 = arith.mulf %3, %4 : f64
        %6 = arith.addf %2, %5 : f64
        affine.store %6, %arg4[%arg7] : memref<4000xf64>
      }
    }
    return
  }
}
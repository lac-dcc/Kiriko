module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<4000xf64>, %arg2: memref<4000xf64>, %arg3: memref<4000xf64>, %arg4: memref<4000xf64>, %arg5: memref<4000x4000xf64>) {
    %0 = arith.index_cast %arg0 : i32 to index
    affine.for %arg6 = 0 to %0 {
      affine.for %arg7 = 0 to %0 {
        %1 = affine.load %arg1[%arg6] : memref<4000xf64>
        %2 = affine.load %arg5[%arg6, %arg7] : memref<4000x4000xf64>
        %3 = affine.load %arg3[%arg7] : memref<4000xf64>
        %4 = arith.mulf %2, %3 : f64
        %5 = arith.addf %1, %4 : f64
        affine.store %5, %arg1[%arg6] : memref<4000xf64>
      }
    }
    affine.for %arg6 = 0 to %0 {
      affine.for %arg7 = 0 to %0 {
        %1 = affine.load %arg2[%arg6] : memref<4000xf64>
        %2 = affine.load %arg5[%arg7, %arg6] : memref<4000x4000xf64>
        %3 = affine.load %arg4[%arg7] : memref<4000xf64>
        %4 = arith.mulf %2, %3 : f64
        %5 = arith.addf %1, %4 : f64
        affine.store %5, %arg2[%arg6] : memref<4000xf64>
      }
    }
    return
  }
}

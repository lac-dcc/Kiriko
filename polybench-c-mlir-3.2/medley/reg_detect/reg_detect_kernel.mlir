#map = affine_map<(d0) -> (d0)>
module {
  func.func @kernel_reg_detect(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x6xi32>, %arg4: memref<?x6xi32>, %arg5: memref<?x6xi32>, %arg6: memref<?x6x64xi32>, %arg7: memref<?x6x64xi32>) {
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg2 : i32 to index
    %2 = arith.index_cast %arg0 : i32 to index
    affine.for %arg8 = 0 to %2 {
      affine.for %arg9 = 0 to %0 {
        affine.for %arg10 = #map(%arg9) to %0 {
          affine.for %arg11 = 0 to %1 {
            %3 = affine.load %arg3[%arg9, %arg10] : memref<?x6xi32>
            affine.store %3, %arg6[%arg9, %arg10, %arg11] : memref<?x6x64xi32>
          }
        }
      }
      affine.for %arg9 = 0 to %0 {
        affine.for %arg10 = #map(%arg9) to %0 {
          %3 = affine.load %arg6[%arg9, %arg10, 0] : memref<?x6x64xi32>
          affine.store %3, %arg7[%arg9, %arg10, 0] : memref<?x6x64xi32>
          affine.for %arg11 = 1 to %1 {
            %5 = affine.load %arg7[%arg9, %arg10, %arg11 - 1] : memref<?x6x64xi32>
            %6 = affine.load %arg6[%arg9, %arg10, %arg11] : memref<?x6x64xi32>
            %7 = arith.addi %5, %6 : i32
            affine.store %7, %arg7[%arg9, %arg10, %arg11] : memref<?x6x64xi32>
          }
          %4 = affine.load %arg7[%arg9, %arg10, symbol(%1) - 1] : memref<?x6x64xi32>
          affine.store %4, %arg4[%arg9, %arg10] : memref<?x6xi32>
        }
      }
      affine.for %arg9 = 0 to %0 {
        %3 = affine.load %arg4[0, %arg9] : memref<?x6xi32>
        affine.store %3, %arg5[0, %arg9] : memref<?x6xi32>
      }
      affine.for %arg9 = 1 to %0 {
        affine.for %arg10 = #map(%arg9) to %0 {
          %3 = affine.load %arg5[%arg9 - 1, %arg10 - 1] : memref<?x6xi32>
          %4 = affine.load %arg4[%arg9, %arg10] : memref<?x6xi32>
          %5 = arith.addi %3, %4 : i32
          affine.store %5, %arg5[%arg9, %arg10] : memref<?x6xi32>
        }
      }
    }
    return
  }
}

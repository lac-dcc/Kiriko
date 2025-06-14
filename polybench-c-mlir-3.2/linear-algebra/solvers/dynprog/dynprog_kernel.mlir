#map = affine_map<()[s0] -> (s0 - 1)>
#map1 = affine_map<(d0) -> (d0 + 1)>
#map2 = affine_map<(d0) -> (d0)>
module {
  func.func @kernel_dynprog(%arg0: i32, %arg1: i32, %arg2: memref<?x50xi32>, %arg3: memref<?x50xi32>, %arg4: memref<?x50x50xi32>, %arg5: memref<?xi32>) {
    %c0_i32 = arith.constant 0 : i32
    %0 = arith.index_cast %arg1 : i32 to index
    %alloca = memref.alloca() : memref<i32>
    affine.store %c0_i32, %alloca[] : memref<i32>
    %1 = arith.index_cast %arg0 : i32 to index
    affine.for %arg6 = 0 to %1 {
      affine.for %arg7 = 0 to %0 {
        affine.for %arg8 = 0 to %0 {
          affine.store %c0_i32, %arg2[%arg7, %arg8] : memref<?x50xi32>
        }
      }
      affine.for %arg7 = 0 to #map()[%0] {
        affine.for %arg8 = #map1(%arg7) to %0 {
          affine.store %c0_i32, %arg4[%arg7, %arg8, %arg7] : memref<?x50x50xi32>
          affine.for %arg9 = #map1(%arg7) to #map2(%arg8) {
            %9 = affine.load %arg4[%arg7, %arg8, %arg9 - 1] : memref<?x50x50xi32>
            %10 = affine.load %arg2[%arg7, %arg9] : memref<?x50xi32>
            %11 = arith.addi %9, %10 : i32
            %12 = affine.load %arg2[%arg9, %arg8] : memref<?x50xi32>
            %13 = arith.addi %11, %12 : i32
            affine.store %13, %arg4[%arg7, %arg8, %arg9] : memref<?x50x50xi32>
          }
          %6 = affine.load %arg4[%arg7, %arg8, %arg8 - 1] : memref<?x50x50xi32>
          %7 = affine.load %arg3[%arg7, %arg8] : memref<?x50xi32>
          %8 = arith.addi %6, %7 : i32
          affine.store %8, %arg2[%arg7, %arg8] : memref<?x50xi32>
        }
      }
      %3 = affine.load %arg2[0, symbol(%0) - 1] : memref<?x50xi32>
      %4 = affine.load %alloca[] : memref<i32>
      %5 = arith.addi %4, %3 : i32
      affine.store %5, %alloca[] : memref<i32>
    }
    %2 = affine.load %alloca[] : memref<i32>
    affine.store %2, %arg5[0] : memref<?xi32>
    return
  }
}

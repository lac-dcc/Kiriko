#map = affine_map<()[s0] -> (s0 - 1)>
#map1 = affine_map<(d0) -> (d0 + 1)>
module  {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x1000xf64>, %arg4: memref<?x1000xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 0.10000000149011612 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg0 : i32 to index
    affine.for %arg7 = 0 to %1 {
      affine.store %cst_0, %arg5[%arg7] : memref<?xf64>
      affine.for %arg8 = 0 to %0 {
        %5 = affine.load %arg3[%arg8, %arg7] : memref<?x1000xf64>
        %6 = affine.load %arg5[%arg7] : memref<?xf64>
        %7 = arith.addf %6, %5 : f64
        affine.store %7, %arg5[%arg7] : memref<?xf64>
      }
      %3 = affine.load %arg5[%arg7] : memref<?xf64>
      %4 = arith.divf %3, %arg2 : f64
      affine.store %4, %arg5[%arg7] : memref<?xf64>
    }
    affine.for %arg7 = 0 to %1 {
      affine.store %cst_0, %arg6[%arg7] : memref<?xf64>
      affine.for %arg8 = 0 to %0 {
        %8 = affine.load %arg3[%arg8, %arg7] : memref<?x1000xf64>
        %9 = affine.load %arg5[%arg7] : memref<?xf64>
        %10 = arith.subf %8, %9 : f64
        %11 = arith.mulf %10, %10 : f64
        %12 = affine.load %arg6[%arg7] : memref<?xf64>
        %13 = arith.addf %12, %11 : f64
        affine.store %13, %arg6[%arg7] : memref<?xf64>
      }
      %3 = affine.load %arg6[%arg7] : memref<?xf64>
      %4 = arith.divf %3, %arg2 : f64
      %5 = math.sqrt %4 : f64
      %6 = arith.cmpf ole, %5, %cst : f64
      %7 = arith.select %6, %cst_1, %5 : f64
      affine.store %7, %arg6[%arg7] : memref<?xf64>
    }
    %2 = math.sqrt %arg2 : f64
    affine.for %arg7 = 0 to %0 {
      affine.for %arg8 = 0 to %1 {
        %3 = affine.load %arg5[%arg8] : memref<?xf64>
        %4 = affine.load %arg3[%arg7, %arg8] : memref<?x1000xf64>
        %5 = arith.subf %4, %3 : f64
        affine.store %5, %arg3[%arg7, %arg8] : memref<?x1000xf64>
        %6 = affine.load %arg6[%arg8] : memref<?xf64>
        %7 = arith.mulf %2, %6 : f64
        %8 = arith.divf %5, %7 : f64
        affine.store %8, %arg3[%arg7, %arg8] : memref<?x1000xf64>
      }
    }
    affine.for %arg7 = 0 to #map()[%1] {
      affine.store %cst_1, %arg4[%arg7, %arg7] : memref<?x1000xf64>
      affine.for %arg8 = #map1(%arg7) to %1 {
        affine.store %cst_0, %arg4[%arg7, %arg8] : memref<?x1000xf64>
        affine.for %arg9 = 0 to %0 {
          %4 = affine.load %arg3[%arg9, %arg7] : memref<?x1000xf64>
          %5 = affine.load %arg3[%arg9, %arg8] : memref<?x1000xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = affine.load %arg4[%arg7, %arg8] : memref<?x1000xf64>
          %8 = arith.addf %7, %6 : f64
          affine.store %8, %arg4[%arg7, %arg8] : memref<?x1000xf64>
        }
        %3 = affine.load %arg4[%arg7, %arg8] : memref<?x1000xf64>
        affine.store %3, %arg4[%arg8, %arg7] : memref<?x1000xf64>
      }
    }
    affine.store %cst_1, %arg4[symbol(%1) - 1, symbol(%1) - 1] : memref<?x1000xf64>
    return
  }
}

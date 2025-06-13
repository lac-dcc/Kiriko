#map = affine_map<(d0) -> (d0)>
module  {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x1000xf64>, %arg4: memref<?x1000xf64>, %arg5: memref<?xf64>)  {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg0 : i32 to index
    affine.for %arg6 = 0 to %1 {
      affine.store %cst, %arg5[%arg6] : memref<?xf64>
      affine.for %arg7 = 0 to %0 {
        %4 = affine.load %arg3[%arg7, %arg6] : memref<?x1000xf64>
        %5 = affine.load %arg5[%arg6] : memref<?xf64>
        %6 = arith.addf %5, %4 : f64
        affine.store %6, %arg5[%arg6] : memref<?xf64>
      }
      %2 = affine.load %arg5[%arg6] : memref<?xf64>
      %3 = arith.divf %2, %arg2 : f64
      affine.store %3, %arg5[%arg6] : memref<?xf64>
    }
    affine.for %arg6 = 0 to %0 {
      affine.for %arg7 = 0 to %1 {
        %2 = affine.load %arg5[%arg7] : memref<?xf64>
        %3 = affine.load %arg3[%arg6, %arg7] : memref<?x1000xf64>
        %4 = arith.subf %3, %2 : f64
        affine.store %4, %arg3[%arg6, %arg7] : memref<?x1000xf64>
      }
    }
    affine.for %arg6 = 0 to %1 {
      affine.for %arg7 = #map(%arg6) to %1 {
        affine.store %cst, %arg4[%arg6, %arg7] : memref<?x1000xf64>
        affine.for %arg8 = 0 to %0 {
          %3 = affine.load %arg3[%arg8, %arg6] : memref<?x1000xf64>
          %4 = affine.load %arg3[%arg8, %arg7] : memref<?x1000xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = affine.load %arg4[%arg6, %arg7] : memref<?x1000xf64>
          %7 = arith.addf %6, %5 : f64
          affine.store %7, %arg4[%arg6, %arg7] : memref<?x1000xf64>
        }
        %2 = affine.load %arg4[%arg6, %arg7] : memref<?x1000xf64>
        affine.store %2, %arg4[%arg7, %arg6] : memref<?x1000xf64>
      }
    }
    return
  }
}

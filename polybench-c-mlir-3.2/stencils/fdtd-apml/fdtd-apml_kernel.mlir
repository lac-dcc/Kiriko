module {
  func.func @kernel_fdtd_apml(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x257xf64>, %arg6: memref<?x257xf64>, %arg7: memref<?x257xf64>, %arg8: memref<?x257xf64>, %arg9: memref<?x257x257xf64>, %arg10: memref<?x257x257xf64>, %arg11: memref<?x257x257xf64>, %arg12: memref<?x257x257xf64>, %arg13: memref<?xf64>, %arg14: memref<?xf64>, %arg15: memref<?xf64>, %arg16: memref<?xf64>, %arg17: memref<?xf64>, %arg18: memref<?xf64>) {
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg2 : i32 to index
    %2 = arith.index_cast %arg0 : i32 to index
    affine.for %arg19 = 0 to %2 {
      affine.for %arg20 = 0 to %1 {
        affine.for %arg21 = 0 to %0 {
          %67 = affine.load %arg10[%arg19, %arg20, %arg21] : memref<?x257x257xf64>
          %68 = affine.load %arg10[%arg19, %arg20 + 1, %arg21] : memref<?x257x257xf64>
          %69 = arith.subf %67, %68 : f64
          %70 = affine.load %arg11[%arg19, %arg20, %arg21 + 1] : memref<?x257x257xf64>
          %71 = arith.addf %69, %70 : f64
          %72 = affine.load %arg11[%arg19, %arg20, %arg21] : memref<?x257x257xf64>
          %73 = arith.subf %71, %72 : f64
          affine.store %73, %arg7[%arg19, %arg20] : memref<?x257xf64>
          %74 = affine.load %arg17[%arg20] : memref<?xf64>
          %75 = affine.load %arg18[%arg20] : memref<?xf64>
          %76 = arith.divf %74, %75 : f64
          %77 = affine.load %arg9[%arg19, %arg20, %arg21] : memref<?x257x257xf64>
          %78 = arith.mulf %76, %77 : f64
          %79 = arith.divf %arg4, %75 : f64
          %80 = arith.mulf %79, %73 : f64
          %81 = arith.subf %78, %80 : f64
          affine.store %81, %arg8[%arg19, %arg20] : memref<?x257xf64>
          %82 = affine.load %arg15[%arg21] : memref<?xf64>
          %83 = affine.load %arg16[%arg21] : memref<?xf64>
          %84 = arith.divf %82, %83 : f64
          %85 = affine.load %arg12[%arg19, %arg20, %arg21] : memref<?x257x257xf64>
          %86 = arith.mulf %84, %85 : f64
          %87 = affine.load %arg14[%arg19] : memref<?xf64>
          %88 = arith.mulf %arg3, %87 : f64
          %89 = arith.divf %88, %83 : f64
          %90 = arith.mulf %89, %81 : f64
          %91 = arith.addf %86, %90 : f64
          %92 = affine.load %arg13[%arg19] : memref<?xf64>
          %93 = arith.mulf %arg3, %92 : f64
          %94 = arith.divf %93, %83 : f64
          %95 = affine.load %arg9[%arg19, %arg20, %arg21] : memref<?x257x257xf64>
          %96 = arith.mulf %94, %95 : f64
          %97 = arith.subf %91, %96 : f64
          affine.store %97, %arg12[%arg19, %arg20, %arg21] : memref<?x257x257xf64>
          %98 = affine.load %arg8[%arg19, %arg20] : memref<?x257xf64>
          affine.store %98, %arg9[%arg19, %arg20, %arg21] : memref<?x257x257xf64>
        }
        %3 = affine.load %arg10[%arg19, %arg20, symbol(%0)] : memref<?x257x257xf64>
        %4 = affine.load %arg10[%arg19, %arg20 + 1, symbol(%0)] : memref<?x257x257xf64>
        %5 = arith.subf %3, %4 : f64
        %6 = affine.load %arg6[%arg19, %arg20] : memref<?x257xf64>
        %7 = arith.addf %5, %6 : f64
        %8 = affine.load %arg11[%arg19, %arg20, symbol(%0)] : memref<?x257x257xf64>
        %9 = arith.subf %7, %8 : f64
        affine.store %9, %arg7[%arg19, %arg20] : memref<?x257xf64>
        %10 = affine.load %arg17[%arg20] : memref<?xf64>
        %11 = affine.load %arg18[%arg20] : memref<?xf64>
        %12 = arith.divf %10, %11 : f64
        %13 = affine.load %arg9[%arg19, %arg20, symbol(%0)] : memref<?x257x257xf64>
        %14 = arith.mulf %12, %13 : f64
        %15 = arith.divf %arg4, %11 : f64
        %16 = arith.mulf %15, %9 : f64
        %17 = arith.subf %14, %16 : f64
        affine.store %17, %arg8[%arg19, %arg20] : memref<?x257xf64>
        %18 = affine.load %arg15[symbol(%0)] : memref<?xf64>
        %19 = affine.load %arg16[symbol(%0)] : memref<?xf64>
        %20 = arith.divf %18, %19 : f64
        %21 = affine.load %arg12[%arg19, %arg20, symbol(%0)] : memref<?x257x257xf64>
        %22 = arith.mulf %20, %21 : f64
        %23 = affine.load %arg14[%arg19] : memref<?xf64>
        %24 = arith.mulf %arg3, %23 : f64
        %25 = arith.divf %24, %19 : f64
        %26 = arith.mulf %25, %17 : f64
        %27 = arith.addf %22, %26 : f64
        %28 = affine.load %arg13[%arg19] : memref<?xf64>
        %29 = arith.mulf %arg3, %28 : f64
        %30 = arith.divf %29, %19 : f64
        %31 = affine.load %arg9[%arg19, %arg20, symbol(%0)] : memref<?x257x257xf64>
        %32 = arith.mulf %30, %31 : f64
        %33 = arith.subf %27, %32 : f64
        affine.store %33, %arg12[%arg19, %arg20, symbol(%0)] : memref<?x257x257xf64>
        %34 = affine.load %arg8[%arg19, %arg20] : memref<?x257xf64>
        affine.store %34, %arg9[%arg19, %arg20, symbol(%0)] : memref<?x257x257xf64>
        affine.for %arg21 = 0 to %0 {
          %67 = affine.load %arg10[%arg19, symbol(%1), %arg21] : memref<?x257x257xf64>
          %68 = affine.load %arg5[%arg19, %arg21] : memref<?x257xf64>
          %69 = arith.subf %67, %68 : f64
          %70 = affine.load %arg11[%arg19, symbol(%1), %arg21 + 1] : memref<?x257x257xf64>
          %71 = arith.addf %69, %70 : f64
          %72 = affine.load %arg11[%arg19, symbol(%1), %arg21] : memref<?x257x257xf64>
          %73 = arith.subf %71, %72 : f64
          affine.store %73, %arg7[%arg19, %arg20] : memref<?x257xf64>
          %74 = affine.load %arg17[symbol(%1)] : memref<?xf64>
          %75 = affine.load %arg18[%arg20] : memref<?xf64>
          %76 = arith.divf %74, %75 : f64
          %77 = affine.load %arg9[%arg19, %arg20, %arg21] : memref<?x257x257xf64>
          %78 = arith.mulf %76, %77 : f64
          %79 = arith.divf %arg4, %75 : f64
          %80 = arith.mulf %79, %73 : f64
          %81 = arith.subf %78, %80 : f64
          affine.store %81, %arg8[%arg19, %arg20] : memref<?x257xf64>
          %82 = affine.load %arg15[%arg21] : memref<?xf64>
          %83 = affine.load %arg16[%arg21] : memref<?xf64>
          %84 = arith.divf %82, %83 : f64
          %85 = affine.load %arg12[%arg19, symbol(%1), %arg21] : memref<?x257x257xf64>
          %86 = arith.mulf %84, %85 : f64
          %87 = affine.load %arg14[%arg19] : memref<?xf64>
          %88 = arith.mulf %arg3, %87 : f64
          %89 = arith.divf %88, %83 : f64
          %90 = arith.mulf %89, %81 : f64
          %91 = arith.addf %86, %90 : f64
          %92 = affine.load %arg13[%arg19] : memref<?xf64>
          %93 = arith.mulf %arg3, %92 : f64
          %94 = arith.divf %93, %83 : f64
          %95 = affine.load %arg9[%arg19, symbol(%1), %arg21] : memref<?x257x257xf64>
          %96 = arith.mulf %94, %95 : f64
          %97 = arith.subf %91, %96 : f64
          affine.store %97, %arg12[%arg19, symbol(%1), %arg21] : memref<?x257x257xf64>
          %98 = affine.load %arg8[%arg19, %arg20] : memref<?x257xf64>
          affine.store %98, %arg9[%arg19, symbol(%1), %arg21] : memref<?x257x257xf64>
        }
        %35 = affine.load %arg10[%arg19, symbol(%1), symbol(%0)] : memref<?x257x257xf64>
        %36 = affine.load %arg5[%arg19, symbol(%0)] : memref<?x257xf64>
        %37 = arith.subf %35, %36 : f64
        %38 = affine.load %arg6[%arg19, symbol(%1)] : memref<?x257xf64>
        %39 = arith.addf %37, %38 : f64
        %40 = affine.load %arg11[%arg19, symbol(%1), symbol(%0)] : memref<?x257x257xf64>
        %41 = arith.subf %39, %40 : f64
        affine.store %41, %arg7[%arg19, %arg20] : memref<?x257xf64>
        %42 = affine.load %arg17[symbol(%1)] : memref<?xf64>
        %43 = affine.load %arg18[symbol(%1)] : memref<?xf64>
        %44 = arith.divf %42, %43 : f64
        %45 = affine.load %arg9[%arg19, symbol(%1), symbol(%0)] : memref<?x257x257xf64>
        %46 = arith.mulf %44, %45 : f64
        %47 = arith.divf %arg4, %43 : f64
        %48 = arith.mulf %47, %41 : f64
        %49 = arith.subf %46, %48 : f64
        affine.store %49, %arg8[%arg19, %arg20] : memref<?x257xf64>
        %50 = affine.load %arg15[symbol(%0)] : memref<?xf64>
        %51 = affine.load %arg16[symbol(%0)] : memref<?xf64>
        %52 = arith.divf %50, %51 : f64
        %53 = affine.load %arg12[%arg19, symbol(%1), symbol(%0)] : memref<?x257x257xf64>
        %54 = arith.mulf %52, %53 : f64
        %55 = affine.load %arg14[%arg19] : memref<?xf64>
        %56 = arith.mulf %arg3, %55 : f64
        %57 = arith.divf %56, %51 : f64
        %58 = arith.mulf %57, %49 : f64
        %59 = arith.addf %54, %58 : f64
        %60 = affine.load %arg13[%arg19] : memref<?xf64>
        %61 = arith.mulf %arg3, %60 : f64
        %62 = arith.divf %61, %51 : f64
        %63 = affine.load %arg9[%arg19, symbol(%1), symbol(%0)] : memref<?x257x257xf64>
        %64 = arith.mulf %62, %63 : f64
        %65 = arith.subf %59, %64 : f64
        affine.store %65, %arg12[%arg19, symbol(%1), symbol(%0)] : memref<?x257x257xf64>
        %66 = affine.load %arg8[%arg19, %arg20] : memref<?x257xf64>
        affine.store %66, %arg9[%arg19, symbol(%1), symbol(%0)] : memref<?x257x257xf64>
      }
    }
    return
  }
}

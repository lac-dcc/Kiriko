module {
  llvm.func @kernel_symm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: !llvm.ptr, %arg5: !llvm.ptr, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr, %arg12: !llvm.ptr, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: !llvm.ptr, %arg19: !llvm.ptr, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg18, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg19, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg20, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg21, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg23, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg22, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg24, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg11, %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg12, %9[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg13, %10[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg14, %11[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg16, %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg15, %13[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg17, %14[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.insertvalue %arg4, %16[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg5, %17[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg6, %18[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg7, %19[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg9, %20[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg8, %21[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg10, %22[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %25 = llvm.sext %arg1 : i32 to i64
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.alloca %26 x f64 : (i64) -> !llvm.ptr
    %28 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %29 = llvm.insertvalue %27, %28[0] : !llvm.struct<(ptr, ptr, i64)> 
    %30 = llvm.insertvalue %27, %29[1] : !llvm.struct<(ptr, ptr, i64)> 
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.insertvalue %31, %30[2] : !llvm.struct<(ptr, ptr, i64)> 
    %33 = llvm.mlir.undef : f64
    %34 = llvm.extractvalue %32[1] : !llvm.struct<(ptr, ptr, i64)> 
    llvm.store %33, %34 : f64, !llvm.ptr
    %35 = llvm.sext %arg0 : i32 to i64
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%36 : i64)
  ^bb1(%38: i64):  // 2 preds: ^bb0, ^bb8
    %39 = llvm.icmp "slt" %38, %35 : i64
    llvm.cond_br %39, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%40 : i64)
  ^bb3(%42: i64):  // 2 preds: ^bb2, ^bb7
    %43 = llvm.icmp "slt" %42, %25 : i64
    llvm.cond_br %43, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %44 = llvm.extractvalue %32[1] : !llvm.struct<(ptr, ptr, i64)> 
    llvm.store %24, %44 : f64, !llvm.ptr
    %45 = llvm.mlir.constant(0 : index) : i64
    %46 = llvm.mlir.constant(-1 : index) : i64
    %47 = llvm.add %42, %46 : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%45 : i64)
  ^bb5(%49: i64):  // 2 preds: ^bb4, ^bb6
    %50 = llvm.icmp "slt" %49, %47 : i64
    llvm.cond_br %50, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %51 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.mlir.constant(1024 : index) : i64
    %53 = llvm.mul %49, %52 : i64
    %54 = llvm.add %53, %38 : i64
    %55 = llvm.getelementptr %51[%54] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %56 = llvm.load %55 : !llvm.ptr -> f64
    %57 = llvm.fmul %arg2, %56 : f64
    %58 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %59 = llvm.mlir.constant(1024 : index) : i64
    %60 = llvm.mul %38, %59 : i64
    %61 = llvm.add %60, %42 : i64
    %62 = llvm.getelementptr %58[%61] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %63 = llvm.load %62 : !llvm.ptr -> f64
    %64 = llvm.fmul %57, %63 : f64
    %65 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.mlir.constant(1024 : index) : i64
    %67 = llvm.mul %49, %66 : i64
    %68 = llvm.add %67, %42 : i64
    %69 = llvm.getelementptr %65[%68] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %70 = llvm.load %69 : !llvm.ptr -> f64
    %71 = llvm.fadd %70, %64 : f64
    %72 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %73 = llvm.mlir.constant(1024 : index) : i64
    %74 = llvm.mul %49, %73 : i64
    %75 = llvm.add %74, %42 : i64
    %76 = llvm.getelementptr %72[%75] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %71, %76 : f64, !llvm.ptr
    %77 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %78 = llvm.mlir.constant(1024 : index) : i64
    %79 = llvm.mul %49, %78 : i64
    %80 = llvm.add %79, %42 : i64
    %81 = llvm.getelementptr %77[%80] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %82 = llvm.load %81 : !llvm.ptr -> f64
    %83 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %84 = llvm.mlir.constant(1024 : index) : i64
    %85 = llvm.mul %49, %84 : i64
    %86 = llvm.add %85, %38 : i64
    %87 = llvm.getelementptr %83[%86] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %88 = llvm.load %87 : !llvm.ptr -> f64
    %89 = llvm.fmul %82, %88 : f64
    %90 = llvm.extractvalue %32[1] : !llvm.struct<(ptr, ptr, i64)> 
    %91 = llvm.load %90 : !llvm.ptr -> f64
    %92 = llvm.fadd %91, %89 : f64
    %93 = llvm.extractvalue %32[1] : !llvm.struct<(ptr, ptr, i64)> 
    llvm.store %92, %93 : f64, !llvm.ptr
    %94 = llvm.add %49, %48 : i64
    llvm.br ^bb5(%94 : i64)
  ^bb7:  // pred: ^bb5
    %95 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %96 = llvm.mlir.constant(1024 : index) : i64
    %97 = llvm.mul %38, %96 : i64
    %98 = llvm.add %97, %42 : i64
    %99 = llvm.getelementptr %95[%98] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %100 = llvm.load %99 : !llvm.ptr -> f64
    %101 = llvm.fmul %arg3, %100 : f64
    %102 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.mlir.constant(1024 : index) : i64
    %104 = llvm.mul %38, %103 : i64
    %105 = llvm.add %104, %38 : i64
    %106 = llvm.getelementptr %102[%105] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %107 = llvm.load %106 : !llvm.ptr -> f64
    %108 = llvm.fmul %arg2, %107 : f64
    %109 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %110 = llvm.mlir.constant(1024 : index) : i64
    %111 = llvm.mul %38, %110 : i64
    %112 = llvm.add %111, %42 : i64
    %113 = llvm.getelementptr %109[%112] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %114 = llvm.load %113 : !llvm.ptr -> f64
    %115 = llvm.fmul %108, %114 : f64
    %116 = llvm.fadd %101, %115 : f64
    %117 = llvm.extractvalue %32[1] : !llvm.struct<(ptr, ptr, i64)> 
    %118 = llvm.load %117 : !llvm.ptr -> f64
    %119 = llvm.fmul %arg2, %118 : f64
    %120 = llvm.fadd %116, %119 : f64
    %121 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %122 = llvm.mlir.constant(1024 : index) : i64
    %123 = llvm.mul %38, %122 : i64
    %124 = llvm.add %123, %42 : i64
    %125 = llvm.getelementptr %121[%124] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %120, %125 : f64, !llvm.ptr
    %126 = llvm.add %42, %41 : i64
    llvm.br ^bb3(%126 : i64)
  ^bb8:  // pred: ^bb3
    %127 = llvm.add %38, %37 : i64
    llvm.br ^bb1(%127 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
}


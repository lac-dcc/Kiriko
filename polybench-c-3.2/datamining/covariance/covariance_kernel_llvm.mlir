module {
  llvm.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: !llvm.ptr, %arg4: !llvm.ptr, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: !llvm.ptr, %arg11: !llvm.ptr, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: !llvm.ptr, %arg18: !llvm.ptr, %arg19: i64, %arg20: i64, %arg21: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg17, %0[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg18, %1[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg19, %2[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg20, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg21, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %7 = llvm.insertvalue %arg10, %6[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.insertvalue %arg11, %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %9 = llvm.insertvalue %arg12, %8[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg13, %9[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg15, %10[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg14, %11[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg16, %12[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %15 = llvm.insertvalue %arg3, %14[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %arg4, %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %arg5, %16[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg6, %17[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg8, %18[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg7, %19[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg9, %20[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %23 = llvm.sext %arg1 : i32 to i64
    %24 = llvm.sext %arg0 : i32 to i64
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%25 : i64)
  ^bb1(%27: i64):  // 2 preds: ^bb0, ^bb5
    %28 = llvm.icmp "slt" %27, %24 : i64
    llvm.cond_br %28, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %29 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.getelementptr %29[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %22, %30 : f64, !llvm.ptr
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%31 : i64)
  ^bb3(%33: i64):  // 2 preds: ^bb2, ^bb4
    %34 = llvm.icmp "slt" %33, %23 : i64
    llvm.cond_br %34, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %35 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.mlir.constant(1000 : index) : i64
    %37 = llvm.mul %33, %36 : i64
    %38 = llvm.add %37, %27 : i64
    %39 = llvm.getelementptr %35[%38] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %40 = llvm.load %39 : !llvm.ptr -> f64
    %41 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.getelementptr %41[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %43 = llvm.load %42 : !llvm.ptr -> f64
    %44 = llvm.fadd %43, %40 : f64
    %45 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.getelementptr %45[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %44, %46 : f64, !llvm.ptr
    %47 = llvm.add %33, %32 : i64
    llvm.br ^bb3(%47 : i64)
  ^bb5:  // pred: ^bb3
    %48 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.getelementptr %48[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %50 = llvm.load %49 : !llvm.ptr -> f64
    %51 = llvm.fdiv %50, %arg2 : f64
    %52 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.getelementptr %52[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %51, %53 : f64, !llvm.ptr
    %54 = llvm.add %27, %26 : i64
    llvm.br ^bb1(%54 : i64)
  ^bb6:  // pred: ^bb1
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%55 : i64)
  ^bb7(%57: i64):  // 2 preds: ^bb6, ^bb11
    %58 = llvm.icmp "slt" %57, %23 : i64
    llvm.cond_br %58, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%59 : i64)
  ^bb9(%61: i64):  // 2 preds: ^bb8, ^bb10
    %62 = llvm.icmp "slt" %61, %24 : i64
    llvm.cond_br %62, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %63 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.getelementptr %63[%61] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %65 = llvm.load %64 : !llvm.ptr -> f64
    %66 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.mlir.constant(1000 : index) : i64
    %68 = llvm.mul %57, %67 : i64
    %69 = llvm.add %68, %61 : i64
    %70 = llvm.getelementptr %66[%69] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %71 = llvm.load %70 : !llvm.ptr -> f64
    %72 = llvm.fsub %71, %65 : f64
    %73 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %74 = llvm.mlir.constant(1000 : index) : i64
    %75 = llvm.mul %57, %74 : i64
    %76 = llvm.add %75, %61 : i64
    %77 = llvm.getelementptr %73[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %72, %77 : f64, !llvm.ptr
    %78 = llvm.add %61, %60 : i64
    llvm.br ^bb9(%78 : i64)
  ^bb11:  // pred: ^bb9
    %79 = llvm.add %57, %56 : i64
    llvm.br ^bb7(%79 : i64)
  ^bb12:  // pred: ^bb7
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%80 : i64)
  ^bb13(%82: i64):  // 2 preds: ^bb12, ^bb20
    %83 = llvm.icmp "slt" %82, %24 : i64
    llvm.cond_br %83, ^bb14, ^bb21
  ^bb14:  // pred: ^bb13
    %84 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%82 : i64)
  ^bb15(%85: i64):  // 2 preds: ^bb14, ^bb19
    %86 = llvm.icmp "slt" %85, %24 : i64
    llvm.cond_br %86, ^bb16, ^bb20
  ^bb16:  // pred: ^bb15
    %87 = llvm.extractvalue %13[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %88 = llvm.mlir.constant(1000 : index) : i64
    %89 = llvm.mul %82, %88 : i64
    %90 = llvm.add %89, %85 : i64
    %91 = llvm.getelementptr %87[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %22, %91 : f64, !llvm.ptr
    %92 = llvm.mlir.constant(0 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%92 : i64)
  ^bb17(%94: i64):  // 2 preds: ^bb16, ^bb18
    %95 = llvm.icmp "slt" %94, %23 : i64
    llvm.cond_br %95, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %96 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %97 = llvm.mlir.constant(1000 : index) : i64
    %98 = llvm.mul %94, %97 : i64
    %99 = llvm.add %98, %82 : i64
    %100 = llvm.getelementptr %96[%99] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %101 = llvm.load %100 : !llvm.ptr -> f64
    %102 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.mlir.constant(1000 : index) : i64
    %104 = llvm.mul %94, %103 : i64
    %105 = llvm.add %104, %85 : i64
    %106 = llvm.getelementptr %102[%105] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %107 = llvm.load %106 : !llvm.ptr -> f64
    %108 = llvm.fmul %101, %107 : f64
    %109 = llvm.extractvalue %13[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %110 = llvm.mlir.constant(1000 : index) : i64
    %111 = llvm.mul %82, %110 : i64
    %112 = llvm.add %111, %85 : i64
    %113 = llvm.getelementptr %109[%112] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %114 = llvm.load %113 : !llvm.ptr -> f64
    %115 = llvm.fadd %114, %108 : f64
    %116 = llvm.extractvalue %13[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %117 = llvm.mlir.constant(1000 : index) : i64
    %118 = llvm.mul %82, %117 : i64
    %119 = llvm.add %118, %85 : i64
    %120 = llvm.getelementptr %116[%119] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %115, %120 : f64, !llvm.ptr
    %121 = llvm.add %94, %93 : i64
    llvm.br ^bb17(%121 : i64)
  ^bb19:  // pred: ^bb17
    %122 = llvm.extractvalue %13[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %123 = llvm.mlir.constant(1000 : index) : i64
    %124 = llvm.mul %82, %123 : i64
    %125 = llvm.add %124, %85 : i64
    %126 = llvm.getelementptr %122[%125] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %127 = llvm.load %126 : !llvm.ptr -> f64
    %128 = llvm.extractvalue %13[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %129 = llvm.mlir.constant(1000 : index) : i64
    %130 = llvm.mul %85, %129 : i64
    %131 = llvm.add %130, %82 : i64
    %132 = llvm.getelementptr %128[%131] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %127, %132 : f64, !llvm.ptr
    %133 = llvm.add %85, %84 : i64
    llvm.br ^bb15(%133 : i64)
  ^bb20:  // pred: ^bb15
    %134 = llvm.add %82, %81 : i64
    llvm.br ^bb13(%134 : i64)
  ^bb21:  // pred: ^bb13
    llvm.return
  }
}


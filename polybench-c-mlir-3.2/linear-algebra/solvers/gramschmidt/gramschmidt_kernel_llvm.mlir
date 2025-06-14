module {
  llvm.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: !llvm.ptr, %arg3: !llvm.ptr, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: !llvm.ptr, %arg10: !llvm.ptr, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: !llvm.ptr, %arg17: !llvm.ptr, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg16, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg17, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg18, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg19, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg21, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg20, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg22, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg9, %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg10, %9[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg12, %11[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg14, %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg13, %13[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg15, %14[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.insertvalue %arg2, %16[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg3, %17[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg4, %18[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg5, %19[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg7, %20[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg6, %21[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg8, %22[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %25 = llvm.sext %arg0 : i32 to i64
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
    %35 = llvm.sext %arg1 : i32 to i64
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%36 : i64)
  ^bb1(%38: i64):  // 2 preds: ^bb0, ^bb17
    %39 = llvm.icmp "slt" %38, %35 : i64
    llvm.cond_br %39, ^bb2, ^bb18
  ^bb2:  // pred: ^bb1
    %40 = llvm.extractvalue %32[1] : !llvm.struct<(ptr, ptr, i64)> 
    llvm.store %24, %40 : f64, !llvm.ptr
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%41 : i64)
  ^bb3(%43: i64):  // 2 preds: ^bb2, ^bb4
    %44 = llvm.icmp "slt" %43, %25 : i64
    llvm.cond_br %44, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %45 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %46 = llvm.mlir.constant(512 : index) : i64
    %47 = llvm.mul %43, %46 : i64
    %48 = llvm.add %47, %38 : i64
    %49 = llvm.getelementptr %45[%48] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %50 = llvm.load %49 : !llvm.ptr -> f64
    %51 = llvm.fmul %50, %50 : f64
    %52 = llvm.extractvalue %32[1] : !llvm.struct<(ptr, ptr, i64)> 
    %53 = llvm.load %52 : !llvm.ptr -> f64
    %54 = llvm.fadd %53, %51 : f64
    %55 = llvm.extractvalue %32[1] : !llvm.struct<(ptr, ptr, i64)> 
    llvm.store %54, %55 : f64, !llvm.ptr
    %56 = llvm.add %43, %42 : i64
    llvm.br ^bb3(%56 : i64)
  ^bb5:  // pred: ^bb3
    %57 = llvm.extractvalue %32[1] : !llvm.struct<(ptr, ptr, i64)> 
    %58 = llvm.load %57 : !llvm.ptr -> f64
    %59 = llvm.intr.sqrt(%58) : (f64) -> f64
    %60 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %61 = llvm.mlir.constant(512 : index) : i64
    %62 = llvm.mul %38, %61 : i64
    %63 = llvm.add %62, %38 : i64
    %64 = llvm.getelementptr %60[%63] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %59, %64 : f64, !llvm.ptr
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb6(%65 : i64)
  ^bb6(%67: i64):  // 2 preds: ^bb5, ^bb7
    %68 = llvm.icmp "slt" %67, %25 : i64
    llvm.cond_br %68, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %69 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.mlir.constant(512 : index) : i64
    %71 = llvm.mul %67, %70 : i64
    %72 = llvm.add %71, %38 : i64
    %73 = llvm.getelementptr %69[%72] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %74 = llvm.load %73 : !llvm.ptr -> f64
    %75 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %76 = llvm.mlir.constant(512 : index) : i64
    %77 = llvm.mul %38, %76 : i64
    %78 = llvm.add %77, %38 : i64
    %79 = llvm.getelementptr %75[%78] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %80 = llvm.load %79 : !llvm.ptr -> f64
    %81 = llvm.fdiv %74, %80 : f64
    %82 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %83 = llvm.mlir.constant(512 : index) : i64
    %84 = llvm.mul %67, %83 : i64
    %85 = llvm.add %84, %38 : i64
    %86 = llvm.getelementptr %82[%85] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %81, %86 : f64, !llvm.ptr
    %87 = llvm.add %67, %66 : i64
    llvm.br ^bb6(%87 : i64)
  ^bb8:  // pred: ^bb6
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.add %38, %88 : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%89 : i64)
  ^bb9(%91: i64):  // 2 preds: ^bb8, ^bb16
    %92 = llvm.icmp "slt" %91, %35 : i64
    llvm.cond_br %92, ^bb10, ^bb17
  ^bb10:  // pred: ^bb9
    %93 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %94 = llvm.mlir.constant(512 : index) : i64
    %95 = llvm.mul %38, %94 : i64
    %96 = llvm.add %95, %91 : i64
    %97 = llvm.getelementptr %93[%96] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %24, %97 : f64, !llvm.ptr
    %98 = llvm.mlir.constant(0 : index) : i64
    %99 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb11(%98 : i64)
  ^bb11(%100: i64):  // 2 preds: ^bb10, ^bb12
    %101 = llvm.icmp "slt" %100, %25 : i64
    llvm.cond_br %101, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %102 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.mlir.constant(512 : index) : i64
    %104 = llvm.mul %100, %103 : i64
    %105 = llvm.add %104, %38 : i64
    %106 = llvm.getelementptr %102[%105] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %107 = llvm.load %106 : !llvm.ptr -> f64
    %108 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %109 = llvm.mlir.constant(512 : index) : i64
    %110 = llvm.mul %100, %109 : i64
    %111 = llvm.add %110, %91 : i64
    %112 = llvm.getelementptr %108[%111] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %113 = llvm.load %112 : !llvm.ptr -> f64
    %114 = llvm.fmul %107, %113 : f64
    %115 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %116 = llvm.mlir.constant(512 : index) : i64
    %117 = llvm.mul %38, %116 : i64
    %118 = llvm.add %117, %91 : i64
    %119 = llvm.getelementptr %115[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %120 = llvm.load %119 : !llvm.ptr -> f64
    %121 = llvm.fadd %120, %114 : f64
    %122 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %123 = llvm.mlir.constant(512 : index) : i64
    %124 = llvm.mul %38, %123 : i64
    %125 = llvm.add %124, %91 : i64
    %126 = llvm.getelementptr %122[%125] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %121, %126 : f64, !llvm.ptr
    %127 = llvm.add %100, %99 : i64
    llvm.br ^bb11(%127 : i64)
  ^bb13:  // pred: ^bb11
    %128 = llvm.mlir.constant(0 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%128 : i64)
  ^bb14(%130: i64):  // 2 preds: ^bb13, ^bb15
    %131 = llvm.icmp "slt" %130, %25 : i64
    llvm.cond_br %131, ^bb15, ^bb16
  ^bb15:  // pred: ^bb14
    %132 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %133 = llvm.mlir.constant(512 : index) : i64
    %134 = llvm.mul %130, %133 : i64
    %135 = llvm.add %134, %91 : i64
    %136 = llvm.getelementptr %132[%135] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %137 = llvm.load %136 : !llvm.ptr -> f64
    %138 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %139 = llvm.mlir.constant(512 : index) : i64
    %140 = llvm.mul %130, %139 : i64
    %141 = llvm.add %140, %38 : i64
    %142 = llvm.getelementptr %138[%141] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %143 = llvm.load %142 : !llvm.ptr -> f64
    %144 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %145 = llvm.mlir.constant(512 : index) : i64
    %146 = llvm.mul %38, %145 : i64
    %147 = llvm.add %146, %91 : i64
    %148 = llvm.getelementptr %144[%147] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %149 = llvm.load %148 : !llvm.ptr -> f64
    %150 = llvm.fmul %143, %149 : f64
    %151 = llvm.fsub %137, %150 : f64
    %152 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %153 = llvm.mlir.constant(512 : index) : i64
    %154 = llvm.mul %130, %153 : i64
    %155 = llvm.add %154, %91 : i64
    %156 = llvm.getelementptr %152[%155] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %151, %156 : f64, !llvm.ptr
    %157 = llvm.add %130, %129 : i64
    llvm.br ^bb14(%157 : i64)
  ^bb16:  // pred: ^bb14
    %158 = llvm.add %91, %90 : i64
    llvm.br ^bb9(%158 : i64)
  ^bb17:  // pred: ^bb9
    %159 = llvm.add %38, %37 : i64
    llvm.br ^bb1(%159 : i64)
  ^bb18:  // pred: ^bb1
    llvm.return
  }
}


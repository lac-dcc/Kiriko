module {
  llvm.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: !llvm.ptr, %arg14: !llvm.ptr, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: !llvm.ptr, %arg21: !llvm.ptr, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: !llvm.ptr, %arg28: !llvm.ptr, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: i64, %arg34: !llvm.ptr, %arg35: !llvm.ptr, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg34, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg35, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg36, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg37, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg39, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg38, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg40, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg27, %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg28, %9[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg29, %10[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg30, %11[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg32, %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg31, %13[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg33, %14[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.insertvalue %arg20, %16[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg21, %17[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg22, %18[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg23, %19[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg25, %20[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg24, %21[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg26, %22[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %25 = llvm.insertvalue %arg13, %24[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %arg14, %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.insertvalue %arg15, %26[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.insertvalue %arg16, %27[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.insertvalue %arg18, %28[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.insertvalue %arg17, %29[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.insertvalue %arg19, %30[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %33 = llvm.insertvalue %arg6, %32[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.insertvalue %arg7, %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.insertvalue %arg8, %34[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.insertvalue %arg9, %35[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %37 = llvm.insertvalue %arg11, %36[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.insertvalue %arg10, %37[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.insertvalue %arg12, %38[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %40 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %41 = llvm.sext %arg2 : i32 to i64
    %42 = llvm.sext %arg3 : i32 to i64
    %43 = llvm.sext %arg1 : i32 to i64
    %44 = llvm.sext %arg0 : i32 to i64
    %45 = llvm.mlir.constant(0 : index) : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%45 : i64)
  ^bb1(%47: i64):  // 2 preds: ^bb0, ^bb8
    %48 = llvm.icmp "slt" %47, %44 : i64
    llvm.cond_br %48, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%49 : i64)
  ^bb3(%51: i64):  // 2 preds: ^bb2, ^bb7
    %52 = llvm.icmp "slt" %51, %43 : i64
    llvm.cond_br %52, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %53 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.mlir.constant(1024 : index) : i64
    %55 = llvm.mul %47, %54 : i64
    %56 = llvm.add %55, %51 : i64
    %57 = llvm.getelementptr %53[%56] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %40, %57 : f64, !llvm.ptr
    %58 = llvm.mlir.constant(0 : index) : i64
    %59 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%58 : i64)
  ^bb5(%60: i64):  // 2 preds: ^bb4, ^bb6
    %61 = llvm.icmp "slt" %60, %41 : i64
    llvm.cond_br %61, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %62 = llvm.extractvalue %31[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.mlir.constant(1024 : index) : i64
    %64 = llvm.mul %47, %63 : i64
    %65 = llvm.add %64, %60 : i64
    %66 = llvm.getelementptr %62[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %67 = llvm.load %66 : !llvm.ptr -> f64
    %68 = llvm.fmul %arg4, %67 : f64
    %69 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.mlir.constant(1024 : index) : i64
    %71 = llvm.mul %60, %70 : i64
    %72 = llvm.add %71, %51 : i64
    %73 = llvm.getelementptr %69[%72] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %74 = llvm.load %73 : !llvm.ptr -> f64
    %75 = llvm.fmul %68, %74 : f64
    %76 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %77 = llvm.mlir.constant(1024 : index) : i64
    %78 = llvm.mul %47, %77 : i64
    %79 = llvm.add %78, %51 : i64
    %80 = llvm.getelementptr %76[%79] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %81 = llvm.load %80 : !llvm.ptr -> f64
    %82 = llvm.fadd %81, %75 : f64
    %83 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %84 = llvm.mlir.constant(1024 : index) : i64
    %85 = llvm.mul %47, %84 : i64
    %86 = llvm.add %85, %51 : i64
    %87 = llvm.getelementptr %83[%86] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %82, %87 : f64, !llvm.ptr
    %88 = llvm.add %60, %59 : i64
    llvm.br ^bb5(%88 : i64)
  ^bb7:  // pred: ^bb5
    %89 = llvm.add %51, %50 : i64
    llvm.br ^bb3(%89 : i64)
  ^bb8:  // pred: ^bb3
    %90 = llvm.add %47, %46 : i64
    llvm.br ^bb1(%90 : i64)
  ^bb9:  // pred: ^bb1
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%91 : i64)
  ^bb10(%93: i64):  // 2 preds: ^bb9, ^bb17
    %94 = llvm.icmp "slt" %93, %44 : i64
    llvm.cond_br %94, ^bb11, ^bb18
  ^bb11:  // pred: ^bb10
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%95 : i64)
  ^bb12(%97: i64):  // 2 preds: ^bb11, ^bb16
    %98 = llvm.icmp "slt" %97, %42 : i64
    llvm.cond_br %98, ^bb13, ^bb17
  ^bb13:  // pred: ^bb12
    %99 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %100 = llvm.mlir.constant(1024 : index) : i64
    %101 = llvm.mul %93, %100 : i64
    %102 = llvm.add %101, %97 : i64
    %103 = llvm.getelementptr %99[%102] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %104 = llvm.load %103 : !llvm.ptr -> f64
    %105 = llvm.fmul %104, %arg5 : f64
    %106 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.mlir.constant(1024 : index) : i64
    %108 = llvm.mul %93, %107 : i64
    %109 = llvm.add %108, %97 : i64
    %110 = llvm.getelementptr %106[%109] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %105, %110 : f64, !llvm.ptr
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%111 : i64)
  ^bb14(%113: i64):  // 2 preds: ^bb13, ^bb15
    %114 = llvm.icmp "slt" %113, %43 : i64
    llvm.cond_br %114, ^bb15, ^bb16
  ^bb15:  // pred: ^bb14
    %115 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %116 = llvm.mlir.constant(1024 : index) : i64
    %117 = llvm.mul %93, %116 : i64
    %118 = llvm.add %117, %113 : i64
    %119 = llvm.getelementptr %115[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %120 = llvm.load %119 : !llvm.ptr -> f64
    %121 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %122 = llvm.mlir.constant(1024 : index) : i64
    %123 = llvm.mul %113, %122 : i64
    %124 = llvm.add %123, %97 : i64
    %125 = llvm.getelementptr %121[%124] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %126 = llvm.load %125 : !llvm.ptr -> f64
    %127 = llvm.fmul %120, %126 : f64
    %128 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %129 = llvm.mlir.constant(1024 : index) : i64
    %130 = llvm.mul %93, %129 : i64
    %131 = llvm.add %130, %97 : i64
    %132 = llvm.getelementptr %128[%131] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %133 = llvm.load %132 : !llvm.ptr -> f64
    %134 = llvm.fadd %133, %127 : f64
    %135 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %136 = llvm.mlir.constant(1024 : index) : i64
    %137 = llvm.mul %93, %136 : i64
    %138 = llvm.add %137, %97 : i64
    %139 = llvm.getelementptr %135[%138] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %134, %139 : f64, !llvm.ptr
    %140 = llvm.add %113, %112 : i64
    llvm.br ^bb14(%140 : i64)
  ^bb16:  // pred: ^bb14
    %141 = llvm.add %97, %96 : i64
    llvm.br ^bb12(%141 : i64)
  ^bb17:  // pred: ^bb12
    %142 = llvm.add %93, %92 : i64
    llvm.br ^bb10(%142 : i64)
  ^bb18:  // pred: ^bb10
    llvm.return
  }
}


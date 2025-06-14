module {
  llvm.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: !llvm.ptr, %arg4: !llvm.ptr, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: !llvm.ptr, %arg11: !llvm.ptr, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: !llvm.ptr, %arg16: !llvm.ptr, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: !llvm.ptr, %arg21: !llvm.ptr, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: !llvm.ptr, %arg26: !llvm.ptr, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: !llvm.ptr, %arg31: !llvm.ptr, %arg32: i64, %arg33: i64, %arg34: i64, %arg35: !llvm.ptr, %arg36: !llvm.ptr, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: !llvm.ptr, %arg41: !llvm.ptr, %arg42: i64, %arg43: i64, %arg44: i64, %arg45: !llvm.ptr, %arg46: !llvm.ptr, %arg47: i64, %arg48: i64, %arg49: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg45, %0[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg46, %1[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg47, %2[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg48, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg49, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %7 = llvm.insertvalue %arg40, %6[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %8 = llvm.insertvalue %arg41, %7[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.insertvalue %arg42, %8[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg43, %9[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %arg44, %10[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %13 = llvm.insertvalue %arg35, %12[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.insertvalue %arg36, %13[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.insertvalue %arg37, %14[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %arg38, %15[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %arg39, %16[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.insertvalue %arg30, %18[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %arg31, %19[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.insertvalue %arg32, %20[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.insertvalue %arg33, %21[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.insertvalue %arg34, %22[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %25 = llvm.insertvalue %arg25, %24[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.insertvalue %arg26, %25[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.insertvalue %arg27, %26[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.insertvalue %arg28, %27[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.insertvalue %arg29, %28[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %31 = llvm.insertvalue %arg20, %30[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.insertvalue %arg21, %31[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.insertvalue %arg22, %32[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.insertvalue %arg23, %33[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.insertvalue %arg24, %34[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %37 = llvm.insertvalue %arg15, %36[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %arg16, %37[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.insertvalue %arg17, %38[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.insertvalue %arg18, %39[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.insertvalue %arg19, %40[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %43 = llvm.insertvalue %arg10, %42[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.insertvalue %arg11, %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.insertvalue %arg12, %44[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.insertvalue %arg13, %45[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.insertvalue %arg14, %46[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %49 = llvm.insertvalue %arg3, %48[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.insertvalue %arg4, %49[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %51 = llvm.insertvalue %arg5, %50[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.insertvalue %arg6, %51[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.insertvalue %arg8, %52[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.insertvalue %arg7, %53[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.insertvalue %arg9, %54[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.sext %arg0 : i32 to i64
    %57 = llvm.mlir.constant(0 : index) : i64
    %58 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%57 : i64)
  ^bb1(%59: i64):  // 2 preds: ^bb0, ^bb5
    %60 = llvm.icmp "slt" %59, %56 : i64
    llvm.cond_br %60, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %61 = llvm.mlir.constant(0 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%61 : i64)
  ^bb3(%63: i64):  // 2 preds: ^bb2, ^bb4
    %64 = llvm.icmp "slt" %63, %56 : i64
    llvm.cond_br %64, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %65 = llvm.extractvalue %55[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.mlir.constant(4000 : index) : i64
    %67 = llvm.mul %59, %66 : i64
    %68 = llvm.add %67, %63 : i64
    %69 = llvm.getelementptr %65[%68] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %70 = llvm.load %69 : !llvm.ptr -> f64
    %71 = llvm.extractvalue %47[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.getelementptr %71[%59] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %73 = llvm.load %72 : !llvm.ptr -> f64
    %74 = llvm.extractvalue %41[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.getelementptr %74[%63] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %76 = llvm.load %75 : !llvm.ptr -> f64
    %77 = llvm.fmul %73, %76 : f64
    %78 = llvm.fadd %70, %77 : f64
    %79 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.getelementptr %79[%59] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %81 = llvm.load %80 : !llvm.ptr -> f64
    %82 = llvm.extractvalue %29[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.getelementptr %82[%63] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %84 = llvm.load %83 : !llvm.ptr -> f64
    %85 = llvm.fmul %81, %84 : f64
    %86 = llvm.fadd %78, %85 : f64
    %87 = llvm.extractvalue %55[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %88 = llvm.mlir.constant(4000 : index) : i64
    %89 = llvm.mul %59, %88 : i64
    %90 = llvm.add %89, %63 : i64
    %91 = llvm.getelementptr %87[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %86, %91 : f64, !llvm.ptr
    %92 = llvm.add %63, %62 : i64
    llvm.br ^bb3(%92 : i64)
  ^bb5:  // pred: ^bb3
    %93 = llvm.add %59, %58 : i64
    llvm.br ^bb1(%93 : i64)
  ^bb6:  // pred: ^bb1
    %94 = llvm.mlir.constant(0 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%94 : i64)
  ^bb7(%96: i64):  // 2 preds: ^bb6, ^bb11
    %97 = llvm.icmp "slt" %96, %56 : i64
    llvm.cond_br %97, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %98 = llvm.mlir.constant(0 : index) : i64
    %99 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%98 : i64)
  ^bb9(%100: i64):  // 2 preds: ^bb8, ^bb10
    %101 = llvm.icmp "slt" %100, %56 : i64
    llvm.cond_br %101, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %102 = llvm.extractvalue %17[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %103 = llvm.getelementptr %102[%96] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %104 = llvm.load %103 : !llvm.ptr -> f64
    %105 = llvm.extractvalue %55[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %106 = llvm.mlir.constant(4000 : index) : i64
    %107 = llvm.mul %100, %106 : i64
    %108 = llvm.add %107, %96 : i64
    %109 = llvm.getelementptr %105[%108] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %110 = llvm.load %109 : !llvm.ptr -> f64
    %111 = llvm.fmul %arg2, %110 : f64
    %112 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %113 = llvm.getelementptr %112[%100] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %114 = llvm.load %113 : !llvm.ptr -> f64
    %115 = llvm.fmul %111, %114 : f64
    %116 = llvm.fadd %104, %115 : f64
    %117 = llvm.extractvalue %17[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %118 = llvm.getelementptr %117[%96] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %116, %118 : f64, !llvm.ptr
    %119 = llvm.add %100, %99 : i64
    llvm.br ^bb9(%119 : i64)
  ^bb11:  // pred: ^bb9
    %120 = llvm.add %96, %95 : i64
    llvm.br ^bb7(%120 : i64)
  ^bb12:  // pred: ^bb7
    %121 = llvm.mlir.constant(0 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%121 : i64)
  ^bb13(%123: i64):  // 2 preds: ^bb12, ^bb14
    %124 = llvm.icmp "slt" %123, %56 : i64
    llvm.cond_br %124, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %125 = llvm.extractvalue %17[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %126 = llvm.getelementptr %125[%123] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %127 = llvm.load %126 : !llvm.ptr -> f64
    %128 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.getelementptr %128[%123] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %130 = llvm.load %129 : !llvm.ptr -> f64
    %131 = llvm.fadd %127, %130 : f64
    %132 = llvm.extractvalue %17[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.getelementptr %132[%123] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %131, %133 : f64, !llvm.ptr
    %134 = llvm.add %123, %122 : i64
    llvm.br ^bb13(%134 : i64)
  ^bb15:  // pred: ^bb13
    %135 = llvm.mlir.constant(0 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%135 : i64)
  ^bb16(%137: i64):  // 2 preds: ^bb15, ^bb20
    %138 = llvm.icmp "slt" %137, %56 : i64
    llvm.cond_br %138, ^bb17, ^bb21
  ^bb17:  // pred: ^bb16
    %139 = llvm.mlir.constant(0 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%139 : i64)
  ^bb18(%141: i64):  // 2 preds: ^bb17, ^bb19
    %142 = llvm.icmp "slt" %141, %56 : i64
    llvm.cond_br %142, ^bb19, ^bb20
  ^bb19:  // pred: ^bb18
    %143 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %144 = llvm.getelementptr %143[%137] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %145 = llvm.load %144 : !llvm.ptr -> f64
    %146 = llvm.extractvalue %55[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.mlir.constant(4000 : index) : i64
    %148 = llvm.mul %137, %147 : i64
    %149 = llvm.add %148, %141 : i64
    %150 = llvm.getelementptr %146[%149] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %151 = llvm.load %150 : !llvm.ptr -> f64
    %152 = llvm.fmul %arg1, %151 : f64
    %153 = llvm.extractvalue %17[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.getelementptr %153[%141] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %155 = llvm.load %154 : !llvm.ptr -> f64
    %156 = llvm.fmul %152, %155 : f64
    %157 = llvm.fadd %145, %156 : f64
    %158 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %159 = llvm.getelementptr %158[%137] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %157, %159 : f64, !llvm.ptr
    %160 = llvm.add %141, %140 : i64
    llvm.br ^bb18(%160 : i64)
  ^bb20:  // pred: ^bb18
    %161 = llvm.add %137, %136 : i64
    llvm.br ^bb16(%161 : i64)
  ^bb21:  // pred: ^bb16
    llvm.return
  }
}


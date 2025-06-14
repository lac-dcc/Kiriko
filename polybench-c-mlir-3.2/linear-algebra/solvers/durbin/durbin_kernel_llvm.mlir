module {
  llvm.func @kernel_durbin(%arg0: i32, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: !llvm.ptr, %arg9: !llvm.ptr, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: !llvm.ptr, %arg16: !llvm.ptr, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: !llvm.ptr, %arg21: !llvm.ptr, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: !llvm.ptr, %arg26: !llvm.ptr, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: !llvm.ptr, %arg31: !llvm.ptr, %arg32: i64, %arg33: i64, %arg34: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg30, %0[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg31, %1[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg32, %2[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg33, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg34, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %7 = llvm.insertvalue %arg25, %6[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %8 = llvm.insertvalue %arg26, %7[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.insertvalue %arg27, %8[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg28, %9[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %arg29, %10[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %13 = llvm.insertvalue %arg20, %12[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.insertvalue %arg21, %13[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.insertvalue %arg22, %14[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %arg23, %15[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %arg24, %16[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.insertvalue %arg15, %18[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %arg16, %19[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.insertvalue %arg17, %20[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.insertvalue %arg18, %21[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.insertvalue %arg19, %22[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %25 = llvm.insertvalue %arg8, %24[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %arg9, %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.insertvalue %arg10, %26[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.insertvalue %arg11, %27[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.insertvalue %arg13, %28[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.insertvalue %arg12, %29[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.insertvalue %arg14, %30[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %33 = llvm.insertvalue %arg1, %32[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.insertvalue %arg2, %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.insertvalue %arg3, %34[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.insertvalue %arg4, %35[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %37 = llvm.insertvalue %arg6, %36[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.insertvalue %arg5, %37[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.insertvalue %arg7, %38[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %40 = llvm.mlir.constant(1.000000e+00 : f64) : f64
    %41 = llvm.sext %arg0 : i32 to i64
    %42 = llvm.mlir.constant(0 : index) : i64
    %43 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.getelementptr %43[%42] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %45 = llvm.load %44 : !llvm.ptr -> f64
    %46 = llvm.mlir.constant(0 : index) : i64
    %47 = llvm.mlir.constant(0 : index) : i64
    %48 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.mlir.constant(4000 : index) : i64
    %50 = llvm.mul %46, %49 : i64
    %51 = llvm.add %50, %47 : i64
    %52 = llvm.getelementptr %48[%51] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %45, %52 : f64, !llvm.ptr
    %53 = llvm.mlir.constant(0 : index) : i64
    %54 = llvm.extractvalue %17[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.getelementptr %54[%53] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %40, %55 : f64, !llvm.ptr
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.getelementptr %57[%56] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %59 = llvm.load %58 : !llvm.ptr -> f64
    %60 = llvm.mlir.constant(0 : index) : i64
    %61 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.getelementptr %61[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %59, %62 : f64, !llvm.ptr
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%63 : i64)
  ^bb1(%65: i64):  // 2 preds: ^bb0, ^bb8
    %66 = llvm.icmp "slt" %65, %41 : i64
    llvm.cond_br %66, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %67 = llvm.mlir.constant(-1 : index) : i64
    %68 = llvm.add %65, %67 : i64
    %69 = llvm.extractvalue %17[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.getelementptr %69[%68] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %71 = llvm.load %70 : !llvm.ptr -> f64
    %72 = llvm.mlir.constant(-1 : index) : i64
    %73 = llvm.add %65, %72 : i64
    %74 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.getelementptr %74[%73] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %76 = llvm.load %75 : !llvm.ptr -> f64
    %77 = llvm.fmul %76, %76 : f64
    %78 = llvm.fmul %77, %71 : f64
    %79 = llvm.fsub %71, %78 : f64
    %80 = llvm.extractvalue %17[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.getelementptr %80[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %79, %81 : f64, !llvm.ptr
    %82 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.getelementptr %82[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %84 = llvm.load %83 : !llvm.ptr -> f64
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.extractvalue %31[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %87 = llvm.mlir.constant(4000 : index) : i64
    %88 = llvm.mul %85, %87 : i64
    %89 = llvm.add %88, %65 : i64
    %90 = llvm.getelementptr %86[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %84, %90 : f64, !llvm.ptr
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%91 : i64)
  ^bb3(%93: i64):  // 2 preds: ^bb2, ^bb4
    %94 = llvm.icmp "slt" %93, %65 : i64
    llvm.cond_br %94, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %95 = llvm.extractvalue %31[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %96 = llvm.mlir.constant(4000 : index) : i64
    %97 = llvm.mul %93, %96 : i64
    %98 = llvm.add %97, %65 : i64
    %99 = llvm.getelementptr %95[%98] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %100 = llvm.load %99 : !llvm.ptr -> f64
    %101 = llvm.mlir.constant(-1 : index) : i64
    %102 = llvm.mul %93, %101 overflow<nsw> : i64
    %103 = llvm.add %65, %102 : i64
    %104 = llvm.mlir.constant(-1 : index) : i64
    %105 = llvm.add %103, %104 : i64
    %106 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %107 = llvm.getelementptr %106[%105] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %108 = llvm.load %107 : !llvm.ptr -> f64
    %109 = llvm.mlir.constant(-1 : index) : i64
    %110 = llvm.add %65, %109 : i64
    %111 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %112 = llvm.mlir.constant(4000 : index) : i64
    %113 = llvm.mul %93, %112 : i64
    %114 = llvm.add %113, %110 : i64
    %115 = llvm.getelementptr %111[%114] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %116 = llvm.load %115 : !llvm.ptr -> f64
    %117 = llvm.fmul %108, %116 : f64
    %118 = llvm.fadd %100, %117 : f64
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.add %93, %119 : i64
    %121 = llvm.extractvalue %31[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %122 = llvm.mlir.constant(4000 : index) : i64
    %123 = llvm.mul %120, %122 : i64
    %124 = llvm.add %123, %65 : i64
    %125 = llvm.getelementptr %121[%124] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %118, %125 : f64, !llvm.ptr
    %126 = llvm.add %93, %92 : i64
    llvm.br ^bb3(%126 : i64)
  ^bb5:  // pred: ^bb3
    %127 = llvm.extractvalue %31[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %128 = llvm.mlir.constant(4000 : index) : i64
    %129 = llvm.mul %65, %128 : i64
    %130 = llvm.add %129, %65 : i64
    %131 = llvm.getelementptr %127[%130] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %132 = llvm.load %131 : !llvm.ptr -> f64
    %133 = llvm.fneg %132 : f64
    %134 = llvm.extractvalue %17[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.getelementptr %134[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %136 = llvm.load %135 : !llvm.ptr -> f64
    %137 = llvm.fmul %133, %136 : f64
    %138 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %139 = llvm.getelementptr %138[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %137, %139 : f64, !llvm.ptr
    %140 = llvm.mlir.constant(0 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb6(%140 : i64)
  ^bb6(%142: i64):  // 2 preds: ^bb5, ^bb7
    %143 = llvm.icmp "slt" %142, %65 : i64
    llvm.cond_br %143, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %144 = llvm.mlir.constant(-1 : index) : i64
    %145 = llvm.add %65, %144 : i64
    %146 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.mlir.constant(4000 : index) : i64
    %148 = llvm.mul %142, %147 : i64
    %149 = llvm.add %148, %145 : i64
    %150 = llvm.getelementptr %146[%149] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %151 = llvm.load %150 : !llvm.ptr -> f64
    %152 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %153 = llvm.getelementptr %152[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %154 = llvm.load %153 : !llvm.ptr -> f64
    %155 = llvm.mlir.constant(-1 : index) : i64
    %156 = llvm.mul %142, %155 overflow<nsw> : i64
    %157 = llvm.add %65, %156 : i64
    %158 = llvm.mlir.constant(-1 : index) : i64
    %159 = llvm.add %157, %158 : i64
    %160 = llvm.mlir.constant(-1 : index) : i64
    %161 = llvm.add %65, %160 : i64
    %162 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %163 = llvm.mlir.constant(4000 : index) : i64
    %164 = llvm.mul %159, %163 : i64
    %165 = llvm.add %164, %161 : i64
    %166 = llvm.getelementptr %162[%165] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %167 = llvm.load %166 : !llvm.ptr -> f64
    %168 = llvm.fmul %154, %167 : f64
    %169 = llvm.fadd %151, %168 : f64
    %170 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %171 = llvm.mlir.constant(4000 : index) : i64
    %172 = llvm.mul %142, %171 : i64
    %173 = llvm.add %172, %65 : i64
    %174 = llvm.getelementptr %170[%173] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %169, %174 : f64, !llvm.ptr
    %175 = llvm.add %142, %141 : i64
    llvm.br ^bb6(%175 : i64)
  ^bb8:  // pred: ^bb6
    %176 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %177 = llvm.getelementptr %176[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %178 = llvm.load %177 : !llvm.ptr -> f64
    %179 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %180 = llvm.mlir.constant(4000 : index) : i64
    %181 = llvm.mul %65, %180 : i64
    %182 = llvm.add %181, %65 : i64
    %183 = llvm.getelementptr %179[%182] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %178, %183 : f64, !llvm.ptr
    %184 = llvm.add %65, %64 : i64
    llvm.br ^bb1(%184 : i64)
  ^bb9:  // pred: ^bb1
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%185 : i64)
  ^bb10(%187: i64):  // 2 preds: ^bb9, ^bb11
    %188 = llvm.icmp "slt" %187, %41 : i64
    llvm.cond_br %188, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %189 = llvm.mlir.constant(-1 : index) : i64
    %190 = llvm.add %41, %189 : i64
    %191 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %192 = llvm.mlir.constant(4000 : index) : i64
    %193 = llvm.mul %187, %192 : i64
    %194 = llvm.add %193, %190 : i64
    %195 = llvm.getelementptr %191[%194] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %196 = llvm.load %195 : !llvm.ptr -> f64
    %197 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %198 = llvm.getelementptr %197[%187] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %196, %198 : f64, !llvm.ptr
    %199 = llvm.add %187, %186 : i64
    llvm.br ^bb10(%199 : i64)
  ^bb12:  // pred: ^bb10
    llvm.return
  }
}


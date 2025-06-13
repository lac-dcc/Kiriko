module {
  llvm.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: !llvm.ptr, %arg6: !llvm.ptr, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: !llvm.ptr, %arg13: !llvm.ptr, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: !llvm.ptr, %arg20: !llvm.ptr, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: !llvm.ptr, %arg27: !llvm.ptr, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: !llvm.ptr, %arg34: !llvm.ptr, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: !llvm.ptr, %arg41: !llvm.ptr, %arg42: i64, %arg43: i64, %arg44: i64, %arg45: i64, %arg46: i64, %arg47: !llvm.ptr, %arg48: !llvm.ptr, %arg49: i64, %arg50: i64, %arg51: i64, %arg52: i64, %arg53: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg47, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg48, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg49, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg50, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg52, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg51, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg53, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg40, %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg41, %9[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg42, %10[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg43, %11[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg45, %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg44, %13[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg46, %14[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.insertvalue %arg33, %16[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg34, %17[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg35, %18[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg36, %19[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg38, %20[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg37, %21[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg39, %22[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %25 = llvm.insertvalue %arg26, %24[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %arg27, %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.insertvalue %arg28, %26[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.insertvalue %arg29, %27[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.insertvalue %arg31, %28[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.insertvalue %arg30, %29[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.insertvalue %arg32, %30[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %33 = llvm.insertvalue %arg19, %32[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.insertvalue %arg20, %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.insertvalue %arg21, %34[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.insertvalue %arg22, %35[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %37 = llvm.insertvalue %arg24, %36[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.insertvalue %arg23, %37[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.insertvalue %arg25, %38[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %40 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %41 = llvm.insertvalue %arg12, %40[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %42 = llvm.insertvalue %arg13, %41[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %43 = llvm.insertvalue %arg14, %42[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %44 = llvm.insertvalue %arg15, %43[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %45 = llvm.insertvalue %arg17, %44[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %46 = llvm.insertvalue %arg16, %45[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %47 = llvm.insertvalue %arg18, %46[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %48 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %49 = llvm.insertvalue %arg5, %48[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.insertvalue %arg6, %49[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %51 = llvm.insertvalue %arg7, %50[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.insertvalue %arg8, %51[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.insertvalue %arg10, %52[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.insertvalue %arg9, %53[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.insertvalue %arg11, %54[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %57 = llvm.sext %arg1 : i32 to i64
    %58 = llvm.sext %arg2 : i32 to i64
    %59 = llvm.sext %arg4 : i32 to i64
    %60 = llvm.sext %arg3 : i32 to i64
    %61 = llvm.sext %arg0 : i32 to i64
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%62 : i64)
  ^bb1(%64: i64):  // 2 preds: ^bb0, ^bb8
    %65 = llvm.icmp "slt" %64, %61 : i64
    llvm.cond_br %65, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%66 : i64)
  ^bb3(%68: i64):  // 2 preds: ^bb2, ^bb7
    %69 = llvm.icmp "slt" %68, %57 : i64
    llvm.cond_br %69, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %70 = llvm.extractvalue %55[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.mlir.constant(1024 : index) : i64
    %72 = llvm.mul %64, %71 : i64
    %73 = llvm.add %72, %68 : i64
    %74 = llvm.getelementptr %70[%73] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %56, %74 : f64, !llvm.ptr
    %75 = llvm.mlir.constant(0 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%75 : i64)
  ^bb5(%77: i64):  // 2 preds: ^bb4, ^bb6
    %78 = llvm.icmp "slt" %77, %58 : i64
    llvm.cond_br %78, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %79 = llvm.extractvalue %47[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %80 = llvm.mlir.constant(1024 : index) : i64
    %81 = llvm.mul %64, %80 : i64
    %82 = llvm.add %81, %77 : i64
    %83 = llvm.getelementptr %79[%82] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %84 = llvm.load %83 : !llvm.ptr -> f64
    %85 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %86 = llvm.mlir.constant(1024 : index) : i64
    %87 = llvm.mul %77, %86 : i64
    %88 = llvm.add %87, %68 : i64
    %89 = llvm.getelementptr %85[%88] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %90 = llvm.load %89 : !llvm.ptr -> f64
    %91 = llvm.fmul %84, %90 : f64
    %92 = llvm.extractvalue %55[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %93 = llvm.mlir.constant(1024 : index) : i64
    %94 = llvm.mul %64, %93 : i64
    %95 = llvm.add %94, %68 : i64
    %96 = llvm.getelementptr %92[%95] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %97 = llvm.load %96 : !llvm.ptr -> f64
    %98 = llvm.fadd %97, %91 : f64
    %99 = llvm.extractvalue %55[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %100 = llvm.mlir.constant(1024 : index) : i64
    %101 = llvm.mul %64, %100 : i64
    %102 = llvm.add %101, %68 : i64
    %103 = llvm.getelementptr %99[%102] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %98, %103 : f64, !llvm.ptr
    %104 = llvm.add %77, %76 : i64
    llvm.br ^bb5(%104 : i64)
  ^bb7:  // pred: ^bb5
    %105 = llvm.add %68, %67 : i64
    llvm.br ^bb3(%105 : i64)
  ^bb8:  // pred: ^bb3
    %106 = llvm.add %64, %63 : i64
    llvm.br ^bb1(%106 : i64)
  ^bb9:  // pred: ^bb1
    %107 = llvm.mlir.constant(0 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%107 : i64)
  ^bb10(%109: i64):  // 2 preds: ^bb9, ^bb17
    %110 = llvm.icmp "slt" %109, %57 : i64
    llvm.cond_br %110, ^bb11, ^bb18
  ^bb11:  // pred: ^bb10
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%111 : i64)
  ^bb12(%113: i64):  // 2 preds: ^bb11, ^bb16
    %114 = llvm.icmp "slt" %113, %60 : i64
    llvm.cond_br %114, ^bb13, ^bb17
  ^bb13:  // pred: ^bb12
    %115 = llvm.extractvalue %31[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %116 = llvm.mlir.constant(1024 : index) : i64
    %117 = llvm.mul %109, %116 : i64
    %118 = llvm.add %117, %113 : i64
    %119 = llvm.getelementptr %115[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %56, %119 : f64, !llvm.ptr
    %120 = llvm.mlir.constant(0 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%120 : i64)
  ^bb14(%122: i64):  // 2 preds: ^bb13, ^bb15
    %123 = llvm.icmp "slt" %122, %59 : i64
    llvm.cond_br %123, ^bb15, ^bb16
  ^bb15:  // pred: ^bb14
    %124 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %125 = llvm.mlir.constant(1024 : index) : i64
    %126 = llvm.mul %109, %125 : i64
    %127 = llvm.add %126, %122 : i64
    %128 = llvm.getelementptr %124[%127] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %129 = llvm.load %128 : !llvm.ptr -> f64
    %130 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %131 = llvm.mlir.constant(1024 : index) : i64
    %132 = llvm.mul %122, %131 : i64
    %133 = llvm.add %132, %113 : i64
    %134 = llvm.getelementptr %130[%133] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %135 = llvm.load %134 : !llvm.ptr -> f64
    %136 = llvm.fmul %129, %135 : f64
    %137 = llvm.extractvalue %31[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %138 = llvm.mlir.constant(1024 : index) : i64
    %139 = llvm.mul %109, %138 : i64
    %140 = llvm.add %139, %113 : i64
    %141 = llvm.getelementptr %137[%140] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %142 = llvm.load %141 : !llvm.ptr -> f64
    %143 = llvm.fadd %142, %136 : f64
    %144 = llvm.extractvalue %31[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %145 = llvm.mlir.constant(1024 : index) : i64
    %146 = llvm.mul %109, %145 : i64
    %147 = llvm.add %146, %113 : i64
    %148 = llvm.getelementptr %144[%147] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %143, %148 : f64, !llvm.ptr
    %149 = llvm.add %122, %121 : i64
    llvm.br ^bb14(%149 : i64)
  ^bb16:  // pred: ^bb14
    %150 = llvm.add %113, %112 : i64
    llvm.br ^bb12(%150 : i64)
  ^bb17:  // pred: ^bb12
    %151 = llvm.add %109, %108 : i64
    llvm.br ^bb10(%151 : i64)
  ^bb18:  // pred: ^bb10
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%152 : i64)
  ^bb19(%154: i64):  // 2 preds: ^bb18, ^bb26
    %155 = llvm.icmp "slt" %154, %61 : i64
    llvm.cond_br %155, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%156 : i64)
  ^bb21(%158: i64):  // 2 preds: ^bb20, ^bb25
    %159 = llvm.icmp "slt" %158, %60 : i64
    llvm.cond_br %159, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    %160 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %161 = llvm.mlir.constant(1024 : index) : i64
    %162 = llvm.mul %154, %161 : i64
    %163 = llvm.add %162, %158 : i64
    %164 = llvm.getelementptr %160[%163] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %56, %164 : f64, !llvm.ptr
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb23(%165 : i64)
  ^bb23(%167: i64):  // 2 preds: ^bb22, ^bb24
    %168 = llvm.icmp "slt" %167, %57 : i64
    llvm.cond_br %168, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %169 = llvm.extractvalue %55[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %170 = llvm.mlir.constant(1024 : index) : i64
    %171 = llvm.mul %154, %170 : i64
    %172 = llvm.add %171, %167 : i64
    %173 = llvm.getelementptr %169[%172] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %174 = llvm.load %173 : !llvm.ptr -> f64
    %175 = llvm.extractvalue %31[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %176 = llvm.mlir.constant(1024 : index) : i64
    %177 = llvm.mul %167, %176 : i64
    %178 = llvm.add %177, %158 : i64
    %179 = llvm.getelementptr %175[%178] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %180 = llvm.load %179 : !llvm.ptr -> f64
    %181 = llvm.fmul %174, %180 : f64
    %182 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %183 = llvm.mlir.constant(1024 : index) : i64
    %184 = llvm.mul %154, %183 : i64
    %185 = llvm.add %184, %158 : i64
    %186 = llvm.getelementptr %182[%185] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %187 = llvm.load %186 : !llvm.ptr -> f64
    %188 = llvm.fadd %187, %181 : f64
    %189 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %190 = llvm.mlir.constant(1024 : index) : i64
    %191 = llvm.mul %154, %190 : i64
    %192 = llvm.add %191, %158 : i64
    %193 = llvm.getelementptr %189[%192] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %188, %193 : f64, !llvm.ptr
    %194 = llvm.add %167, %166 : i64
    llvm.br ^bb23(%194 : i64)
  ^bb25:  // pred: ^bb23
    %195 = llvm.add %158, %157 : i64
    llvm.br ^bb21(%195 : i64)
  ^bb26:  // pred: ^bb21
    %196 = llvm.add %154, %153 : i64
    llvm.br ^bb19(%196 : i64)
  ^bb27:  // pred: ^bb19
    llvm.return
  }
}


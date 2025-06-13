module {
  llvm.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: !llvm.ptr, %arg4: !llvm.ptr, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: !llvm.ptr, %arg11: !llvm.ptr, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: !llvm.ptr, %arg18: !llvm.ptr, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr, %arg23: !llvm.ptr, %arg24: i64, %arg25: i64, %arg26: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg22, %0[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg23, %1[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg24, %2[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg25, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg26, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %7 = llvm.insertvalue %arg17, %6[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %8 = llvm.insertvalue %arg18, %7[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.insertvalue %arg19, %8[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg20, %9[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %arg21, %10[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %13 = llvm.insertvalue %arg10, %12[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg12, %14[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %arg13, %15[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg14, %17[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg16, %18[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %21 = llvm.insertvalue %arg3, %20[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg4, %21[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg5, %22[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.insertvalue %arg6, %23[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.insertvalue %arg8, %24[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %arg7, %25[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.insertvalue %arg9, %26[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.mlir.constant(0.10000000149011612 : f64) : f64
    %29 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %30 = llvm.mlir.constant(1.000000e+00 : f64) : f64
    %31 = llvm.sext %arg1 : i32 to i64
    %32 = llvm.sext %arg0 : i32 to i64
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%33 : i64)
  ^bb1(%35: i64):  // 2 preds: ^bb0, ^bb5
    %36 = llvm.icmp "slt" %35, %32 : i64
    llvm.cond_br %36, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %37 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.getelementptr %37[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %29, %38 : f64, !llvm.ptr
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%39 : i64)
  ^bb3(%41: i64):  // 2 preds: ^bb2, ^bb4
    %42 = llvm.icmp "slt" %41, %31 : i64
    llvm.cond_br %42, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %43 = llvm.extractvalue %27[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %44 = llvm.mlir.constant(1000 : index) : i64
    %45 = llvm.mul %41, %44 : i64
    %46 = llvm.add %45, %35 : i64
    %47 = llvm.getelementptr %43[%46] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %48 = llvm.load %47 : !llvm.ptr -> f64
    %49 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.getelementptr %49[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %51 = llvm.load %50 : !llvm.ptr -> f64
    %52 = llvm.fadd %51, %48 : f64
    %53 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.getelementptr %53[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %52, %54 : f64, !llvm.ptr
    %55 = llvm.add %41, %40 : i64
    llvm.br ^bb3(%55 : i64)
  ^bb5:  // pred: ^bb3
    %56 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.getelementptr %56[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %58 = llvm.load %57 : !llvm.ptr -> f64
    %59 = llvm.fdiv %58, %arg2 : f64
    %60 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.getelementptr %60[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %59, %61 : f64, !llvm.ptr
    %62 = llvm.add %35, %34 : i64
    llvm.br ^bb1(%62 : i64)
  ^bb6:  // pred: ^bb1
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%63 : i64)
  ^bb7(%65: i64):  // 2 preds: ^bb6, ^bb11
    %66 = llvm.icmp "slt" %65, %32 : i64
    llvm.cond_br %66, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %67 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.getelementptr %67[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %29, %68 : f64, !llvm.ptr
    %69 = llvm.mlir.constant(0 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%69 : i64)
  ^bb9(%71: i64):  // 2 preds: ^bb8, ^bb10
    %72 = llvm.icmp "slt" %71, %31 : i64
    llvm.cond_br %72, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %73 = llvm.extractvalue %27[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %74 = llvm.mlir.constant(1000 : index) : i64
    %75 = llvm.mul %71, %74 : i64
    %76 = llvm.add %75, %65 : i64
    %77 = llvm.getelementptr %73[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %78 = llvm.load %77 : !llvm.ptr -> f64
    %79 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.getelementptr %79[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %81 = llvm.load %80 : !llvm.ptr -> f64
    %82 = llvm.fsub %78, %81 : f64
    %83 = llvm.fmul %82, %82 : f64
    %84 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %85 = llvm.getelementptr %84[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %86 = llvm.load %85 : !llvm.ptr -> f64
    %87 = llvm.fadd %86, %83 : f64
    %88 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.getelementptr %88[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %87, %89 : f64, !llvm.ptr
    %90 = llvm.add %71, %70 : i64
    llvm.br ^bb9(%90 : i64)
  ^bb11:  // pred: ^bb9
    %91 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %92 = llvm.getelementptr %91[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %93 = llvm.load %92 : !llvm.ptr -> f64
    %94 = llvm.fdiv %93, %arg2 : f64
    %95 = llvm.intr.sqrt(%94) : (f64) -> f64
    %96 = llvm.fcmp "ole" %95, %28 : f64
    %97 = llvm.select %96, %30, %95 : i1, f64
    %98 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = llvm.getelementptr %98[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %97, %99 : f64, !llvm.ptr
    %100 = llvm.add %65, %64 : i64
    llvm.br ^bb7(%100 : i64)
  ^bb12:  // pred: ^bb7
    %101 = llvm.intr.sqrt(%arg2) : (f64) -> f64
    %102 = llvm.mlir.constant(0 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%102 : i64)
  ^bb13(%104: i64):  // 2 preds: ^bb12, ^bb17
    %105 = llvm.icmp "slt" %104, %31 : i64
    llvm.cond_br %105, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%106 : i64)
  ^bb15(%108: i64):  // 2 preds: ^bb14, ^bb16
    %109 = llvm.icmp "slt" %108, %32 : i64
    llvm.cond_br %109, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %110 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.getelementptr %110[%108] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %112 = llvm.load %111 : !llvm.ptr -> f64
    %113 = llvm.extractvalue %27[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %114 = llvm.mlir.constant(1000 : index) : i64
    %115 = llvm.mul %104, %114 : i64
    %116 = llvm.add %115, %108 : i64
    %117 = llvm.getelementptr %113[%116] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %118 = llvm.load %117 : !llvm.ptr -> f64
    %119 = llvm.fsub %118, %112 : f64
    %120 = llvm.extractvalue %27[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %121 = llvm.mlir.constant(1000 : index) : i64
    %122 = llvm.mul %104, %121 : i64
    %123 = llvm.add %122, %108 : i64
    %124 = llvm.getelementptr %120[%123] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %119, %124 : f64, !llvm.ptr
    %125 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %126 = llvm.getelementptr %125[%108] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %127 = llvm.load %126 : !llvm.ptr -> f64
    %128 = llvm.fmul %101, %127 : f64
    %129 = llvm.fdiv %119, %128 : f64
    %130 = llvm.extractvalue %27[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %131 = llvm.mlir.constant(1000 : index) : i64
    %132 = llvm.mul %104, %131 : i64
    %133 = llvm.add %132, %108 : i64
    %134 = llvm.getelementptr %130[%133] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %129, %134 : f64, !llvm.ptr
    %135 = llvm.add %108, %107 : i64
    llvm.br ^bb15(%135 : i64)
  ^bb17:  // pred: ^bb15
    %136 = llvm.add %104, %103 : i64
    llvm.br ^bb13(%136 : i64)
  ^bb18:  // pred: ^bb13
    %137 = llvm.mlir.constant(0 : index) : i64
    %138 = llvm.mlir.constant(-1 : index) : i64
    %139 = llvm.add %32, %138 : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%137 : i64)
  ^bb19(%141: i64):  // 2 preds: ^bb18, ^bb26
    %142 = llvm.icmp "slt" %141, %139 : i64
    llvm.cond_br %142, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    %143 = llvm.extractvalue %19[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %144 = llvm.mlir.constant(1000 : index) : i64
    %145 = llvm.mul %141, %144 : i64
    %146 = llvm.add %145, %141 : i64
    %147 = llvm.getelementptr %143[%146] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %30, %147 : f64, !llvm.ptr
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.add %141, %148 : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%149 : i64)
  ^bb21(%151: i64):  // 2 preds: ^bb20, ^bb25
    %152 = llvm.icmp "slt" %151, %32 : i64
    llvm.cond_br %152, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    %153 = llvm.extractvalue %19[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %154 = llvm.mlir.constant(1000 : index) : i64
    %155 = llvm.mul %141, %154 : i64
    %156 = llvm.add %155, %151 : i64
    %157 = llvm.getelementptr %153[%156] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %29, %157 : f64, !llvm.ptr
    %158 = llvm.mlir.constant(0 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb23(%158 : i64)
  ^bb23(%160: i64):  // 2 preds: ^bb22, ^bb24
    %161 = llvm.icmp "slt" %160, %31 : i64
    llvm.cond_br %161, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %162 = llvm.extractvalue %27[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %163 = llvm.mlir.constant(1000 : index) : i64
    %164 = llvm.mul %160, %163 : i64
    %165 = llvm.add %164, %141 : i64
    %166 = llvm.getelementptr %162[%165] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %167 = llvm.load %166 : !llvm.ptr -> f64
    %168 = llvm.extractvalue %27[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %169 = llvm.mlir.constant(1000 : index) : i64
    %170 = llvm.mul %160, %169 : i64
    %171 = llvm.add %170, %151 : i64
    %172 = llvm.getelementptr %168[%171] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %173 = llvm.load %172 : !llvm.ptr -> f64
    %174 = llvm.fmul %167, %173 : f64
    %175 = llvm.extractvalue %19[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %176 = llvm.mlir.constant(1000 : index) : i64
    %177 = llvm.mul %141, %176 : i64
    %178 = llvm.add %177, %151 : i64
    %179 = llvm.getelementptr %175[%178] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %180 = llvm.load %179 : !llvm.ptr -> f64
    %181 = llvm.fadd %180, %174 : f64
    %182 = llvm.extractvalue %19[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %183 = llvm.mlir.constant(1000 : index) : i64
    %184 = llvm.mul %141, %183 : i64
    %185 = llvm.add %184, %151 : i64
    %186 = llvm.getelementptr %182[%185] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %181, %186 : f64, !llvm.ptr
    %187 = llvm.add %160, %159 : i64
    llvm.br ^bb23(%187 : i64)
  ^bb25:  // pred: ^bb23
    %188 = llvm.extractvalue %19[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %189 = llvm.mlir.constant(1000 : index) : i64
    %190 = llvm.mul %141, %189 : i64
    %191 = llvm.add %190, %151 : i64
    %192 = llvm.getelementptr %188[%191] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %193 = llvm.load %192 : !llvm.ptr -> f64
    %194 = llvm.extractvalue %19[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %195 = llvm.mlir.constant(1000 : index) : i64
    %196 = llvm.mul %151, %195 : i64
    %197 = llvm.add %196, %141 : i64
    %198 = llvm.getelementptr %194[%197] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %193, %198 : f64, !llvm.ptr
    %199 = llvm.add %151, %150 : i64
    llvm.br ^bb21(%199 : i64)
  ^bb26:  // pred: ^bb21
    %200 = llvm.add %141, %140 : i64
    llvm.br ^bb19(%200 : i64)
  ^bb27:  // pred: ^bb19
    %201 = llvm.mlir.constant(-1 : index) : i64
    %202 = llvm.add %32, %201 : i64
    %203 = llvm.mlir.constant(-1 : index) : i64
    %204 = llvm.add %32, %203 : i64
    %205 = llvm.extractvalue %19[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %206 = llvm.mlir.constant(1000 : index) : i64
    %207 = llvm.mul %202, %206 : i64
    %208 = llvm.add %207, %204 : i64
    %209 = llvm.getelementptr %205[%208] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %30, %209 : f64, !llvm.ptr
    llvm.return
  }
}


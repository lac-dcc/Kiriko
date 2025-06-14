module {
  llvm.func @kernel_ludcmp(%arg0: i32, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: !llvm.ptr, %arg9: !llvm.ptr, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: !llvm.ptr, %arg14: !llvm.ptr, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: !llvm.ptr, %arg19: !llvm.ptr, %arg20: i64, %arg21: i64, %arg22: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg18, %0[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg19, %1[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg20, %2[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg21, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg22, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %7 = llvm.insertvalue %arg13, %6[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %8 = llvm.insertvalue %arg14, %7[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.insertvalue %arg15, %8[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg16, %9[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %arg17, %10[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %13 = llvm.insertvalue %arg8, %12[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.insertvalue %arg9, %13[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.insertvalue %arg10, %14[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %arg11, %15[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %arg12, %16[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %19 = llvm.insertvalue %arg1, %18[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg2, %19[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg3, %20[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg4, %21[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg6, %22[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.insertvalue %arg5, %23[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.insertvalue %arg7, %24[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.mlir.constant(1.000000e+00 : f64) : f64
    %27 = llvm.sext %arg0 : i32 to i64
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.alloca %28 x f64 : (i64) -> !llvm.ptr
    %30 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr, ptr, i64)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr, ptr, i64)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr, ptr, i64)> 
    %35 = llvm.mlir.undef : f64
    %36 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64)> 
    llvm.store %35, %36 : f64, !llvm.ptr
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.extractvalue %17[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.getelementptr %38[%37] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %26, %39 : f64, !llvm.ptr
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%40 : i64)
  ^bb1(%42: i64):  // 2 preds: ^bb0, ^bb14
    %43 = llvm.icmp "slt" %42, %27 : i64
    llvm.cond_br %43, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.add %42, %44 : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.add %27, %46 : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%45 : i64)
  ^bb3(%49: i64):  // 2 preds: ^bb2, ^bb7
    %50 = llvm.icmp "slt" %49, %47 : i64
    llvm.cond_br %50, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %51 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.mlir.constant(1025 : index) : i64
    %53 = llvm.mul %49, %52 : i64
    %54 = llvm.add %53, %42 : i64
    %55 = llvm.getelementptr %51[%54] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %56 = llvm.load %55 : !llvm.ptr -> f64
    %57 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64)> 
    llvm.store %56, %57 : f64, !llvm.ptr
    %58 = llvm.mlir.constant(0 : index) : i64
    %59 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%58 : i64)
  ^bb5(%60: i64):  // 2 preds: ^bb4, ^bb6
    %61 = llvm.icmp "slt" %60, %42 : i64
    llvm.cond_br %61, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %62 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64)> 
    %63 = llvm.load %62 : !llvm.ptr -> f64
    %64 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %65 = llvm.mlir.constant(1025 : index) : i64
    %66 = llvm.mul %49, %65 : i64
    %67 = llvm.add %66, %60 : i64
    %68 = llvm.getelementptr %64[%67] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %69 = llvm.load %68 : !llvm.ptr -> f64
    %70 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.mlir.constant(1025 : index) : i64
    %72 = llvm.mul %60, %71 : i64
    %73 = llvm.add %72, %42 : i64
    %74 = llvm.getelementptr %70[%73] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %75 = llvm.load %74 : !llvm.ptr -> f64
    %76 = llvm.fmul %69, %75 : f64
    %77 = llvm.fsub %63, %76 : f64
    %78 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64)> 
    llvm.store %77, %78 : f64, !llvm.ptr
    %79 = llvm.add %60, %59 : i64
    llvm.br ^bb5(%79 : i64)
  ^bb7:  // pred: ^bb5
    %80 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64)> 
    %81 = llvm.load %80 : !llvm.ptr -> f64
    %82 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %83 = llvm.mlir.constant(1025 : index) : i64
    %84 = llvm.mul %42, %83 : i64
    %85 = llvm.add %84, %42 : i64
    %86 = llvm.getelementptr %82[%85] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %87 = llvm.load %86 : !llvm.ptr -> f64
    %88 = llvm.fdiv %81, %87 : f64
    %89 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %90 = llvm.mlir.constant(1025 : index) : i64
    %91 = llvm.mul %49, %90 : i64
    %92 = llvm.add %91, %42 : i64
    %93 = llvm.getelementptr %89[%92] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %88, %93 : f64, !llvm.ptr
    %94 = llvm.add %49, %48 : i64
    llvm.br ^bb3(%94 : i64)
  ^bb8:  // pred: ^bb3
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.add %42, %95 : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.add %27, %97 : i64
    %99 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%96 : i64)
  ^bb9(%100: i64):  // 2 preds: ^bb8, ^bb13
    %101 = llvm.icmp "slt" %100, %98 : i64
    llvm.cond_br %101, ^bb10, ^bb14
  ^bb10:  // pred: ^bb9
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.add %42, %102 : i64
    %104 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %105 = llvm.mlir.constant(1025 : index) : i64
    %106 = llvm.mul %103, %105 : i64
    %107 = llvm.add %106, %100 : i64
    %108 = llvm.getelementptr %104[%107] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %109 = llvm.load %108 : !llvm.ptr -> f64
    %110 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64)> 
    llvm.store %109, %110 : f64, !llvm.ptr
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.add %42, %112 : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb11(%111 : i64)
  ^bb11(%115: i64):  // 2 preds: ^bb10, ^bb12
    %116 = llvm.icmp "slt" %115, %113 : i64
    llvm.cond_br %116, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %117 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64)> 
    %118 = llvm.load %117 : !llvm.ptr -> f64
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.add %42, %119 : i64
    %121 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %122 = llvm.mlir.constant(1025 : index) : i64
    %123 = llvm.mul %120, %122 : i64
    %124 = llvm.add %123, %115 : i64
    %125 = llvm.getelementptr %121[%124] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %126 = llvm.load %125 : !llvm.ptr -> f64
    %127 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %128 = llvm.mlir.constant(1025 : index) : i64
    %129 = llvm.mul %115, %128 : i64
    %130 = llvm.add %129, %100 : i64
    %131 = llvm.getelementptr %127[%130] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %132 = llvm.load %131 : !llvm.ptr -> f64
    %133 = llvm.fmul %126, %132 : f64
    %134 = llvm.fsub %118, %133 : f64
    %135 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64)> 
    llvm.store %134, %135 : f64, !llvm.ptr
    %136 = llvm.add %115, %114 : i64
    llvm.br ^bb11(%136 : i64)
  ^bb13:  // pred: ^bb11
    %137 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64)> 
    %138 = llvm.load %137 : !llvm.ptr -> f64
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.add %42, %139 : i64
    %141 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %142 = llvm.mlir.constant(1025 : index) : i64
    %143 = llvm.mul %140, %142 : i64
    %144 = llvm.add %143, %100 : i64
    %145 = llvm.getelementptr %141[%144] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %138, %145 : f64, !llvm.ptr
    %146 = llvm.add %100, %99 : i64
    llvm.br ^bb9(%146 : i64)
  ^bb14:  // pred: ^bb9
    %147 = llvm.add %42, %41 : i64
    llvm.br ^bb1(%147 : i64)
  ^bb15:  // pred: ^bb1
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.extractvalue %17[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %150 = llvm.getelementptr %149[%148] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %151 = llvm.load %150 : !llvm.ptr -> f64
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.getelementptr %153[%152] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %151, %154 : f64, !llvm.ptr
    %155 = llvm.mlir.constant(1 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.add %27, %156 : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%155 : i64)
  ^bb16(%159: i64):  // 2 preds: ^bb15, ^bb20
    %160 = llvm.icmp "slt" %159, %157 : i64
    llvm.cond_br %160, ^bb17, ^bb21
  ^bb17:  // pred: ^bb16
    %161 = llvm.extractvalue %17[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %162 = llvm.getelementptr %161[%159] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %163 = llvm.load %162 : !llvm.ptr -> f64
    %164 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64)> 
    llvm.store %163, %164 : f64, !llvm.ptr
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%165 : i64)
  ^bb18(%167: i64):  // 2 preds: ^bb17, ^bb19
    %168 = llvm.icmp "slt" %167, %159 : i64
    llvm.cond_br %168, ^bb19, ^bb20
  ^bb19:  // pred: ^bb18
    %169 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64)> 
    %170 = llvm.load %169 : !llvm.ptr -> f64
    %171 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %172 = llvm.mlir.constant(1025 : index) : i64
    %173 = llvm.mul %159, %172 : i64
    %174 = llvm.add %173, %167 : i64
    %175 = llvm.getelementptr %171[%174] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %176 = llvm.load %175 : !llvm.ptr -> f64
    %177 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %178 = llvm.getelementptr %177[%167] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %179 = llvm.load %178 : !llvm.ptr -> f64
    %180 = llvm.fmul %176, %179 : f64
    %181 = llvm.fsub %170, %180 : f64
    %182 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64)> 
    llvm.store %181, %182 : f64, !llvm.ptr
    %183 = llvm.add %167, %166 : i64
    llvm.br ^bb18(%183 : i64)
  ^bb20:  // pred: ^bb18
    %184 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64)> 
    %185 = llvm.load %184 : !llvm.ptr -> f64
    %186 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %187 = llvm.getelementptr %186[%159] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %185, %187 : f64, !llvm.ptr
    %188 = llvm.add %159, %158 : i64
    llvm.br ^bb16(%188 : i64)
  ^bb21:  // pred: ^bb16
    %189 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %190 = llvm.getelementptr %189[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %191 = llvm.load %190 : !llvm.ptr -> f64
    %192 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %193 = llvm.mlir.constant(1025 : index) : i64
    %194 = llvm.mul %27, %193 : i64
    %195 = llvm.add %194, %27 : i64
    %196 = llvm.getelementptr %192[%195] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %197 = llvm.load %196 : !llvm.ptr -> f64
    %198 = llvm.fdiv %191, %197 : f64
    %199 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.getelementptr %199[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %198, %200 : f64, !llvm.ptr
    %201 = llvm.mlir.constant(0 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%201 : i64)
  ^bb22(%203: i64):  // 2 preds: ^bb21, ^bb26
    %204 = llvm.icmp "slt" %203, %27 : i64
    llvm.cond_br %204, ^bb23, ^bb27
  ^bb23:  // pred: ^bb22
    %205 = llvm.mlir.constant(-1 : index) : i64
    %206 = llvm.mul %203, %205 overflow<nsw> : i64
    %207 = llvm.add %206, %27 : i64
    %208 = llvm.mlir.constant(-1 : index) : i64
    %209 = llvm.add %207, %208 : i64
    %210 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %211 = llvm.getelementptr %210[%209] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %212 = llvm.load %211 : !llvm.ptr -> f64
    %213 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64)> 
    llvm.store %212, %213 : f64, !llvm.ptr
    %214 = llvm.mlir.constant(-1 : index) : i64
    %215 = llvm.mul %203, %214 overflow<nsw> : i64
    %216 = llvm.add %215, %27 : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.add %27, %217 : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%216 : i64)
  ^bb24(%220: i64):  // 2 preds: ^bb23, ^bb25
    %221 = llvm.icmp "slt" %220, %218 : i64
    llvm.cond_br %221, ^bb25, ^bb26
  ^bb25:  // pred: ^bb24
    %222 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64)> 
    %223 = llvm.load %222 : !llvm.ptr -> f64
    %224 = llvm.mlir.constant(-1 : index) : i64
    %225 = llvm.mul %203, %224 overflow<nsw> : i64
    %226 = llvm.add %225, %27 : i64
    %227 = llvm.mlir.constant(-1 : index) : i64
    %228 = llvm.add %226, %227 : i64
    %229 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %230 = llvm.mlir.constant(1025 : index) : i64
    %231 = llvm.mul %228, %230 : i64
    %232 = llvm.add %231, %220 : i64
    %233 = llvm.getelementptr %229[%232] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %234 = llvm.load %233 : !llvm.ptr -> f64
    %235 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %236 = llvm.getelementptr %235[%220] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %237 = llvm.load %236 : !llvm.ptr -> f64
    %238 = llvm.fmul %234, %237 : f64
    %239 = llvm.fsub %223, %238 : f64
    %240 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64)> 
    llvm.store %239, %240 : f64, !llvm.ptr
    %241 = llvm.add %220, %219 : i64
    llvm.br ^bb24(%241 : i64)
  ^bb26:  // pred: ^bb24
    %242 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64)> 
    %243 = llvm.load %242 : !llvm.ptr -> f64
    %244 = llvm.mlir.constant(-1 : index) : i64
    %245 = llvm.mul %203, %244 overflow<nsw> : i64
    %246 = llvm.add %245, %27 : i64
    %247 = llvm.mlir.constant(-1 : index) : i64
    %248 = llvm.add %246, %247 : i64
    %249 = llvm.mlir.constant(-1 : index) : i64
    %250 = llvm.mul %203, %249 overflow<nsw> : i64
    %251 = llvm.add %250, %27 : i64
    %252 = llvm.mlir.constant(-1 : index) : i64
    %253 = llvm.add %251, %252 : i64
    %254 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %255 = llvm.mlir.constant(1025 : index) : i64
    %256 = llvm.mul %248, %255 : i64
    %257 = llvm.add %256, %253 : i64
    %258 = llvm.getelementptr %254[%257] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %259 = llvm.load %258 : !llvm.ptr -> f64
    %260 = llvm.fdiv %243, %259 : f64
    %261 = llvm.mlir.constant(-1 : index) : i64
    %262 = llvm.mul %203, %261 overflow<nsw> : i64
    %263 = llvm.add %262, %27 : i64
    %264 = llvm.mlir.constant(-1 : index) : i64
    %265 = llvm.add %263, %264 : i64
    %266 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.getelementptr %266[%265] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %260, %267 : f64, !llvm.ptr
    %268 = llvm.add %203, %202 : i64
    llvm.br ^bb22(%268 : i64)
  ^bb27:  // pred: ^bb22
    llvm.return
  }
}


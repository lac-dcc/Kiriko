module {
  llvm.func @kernel_adi(%arg0: i32, %arg1: i32, %arg2: !llvm.ptr, %arg3: !llvm.ptr, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: !llvm.ptr, %arg10: !llvm.ptr, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: !llvm.ptr, %arg17: !llvm.ptr, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64) {
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
    %24 = llvm.sext %arg1 : i32 to i64
    %25 = llvm.sext %arg0 : i32 to i64
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%26 : i64)
  ^bb1(%28: i64):  // 2 preds: ^bb0, ^bb32
    %29 = llvm.icmp "slt" %28, %25 : i64
    llvm.cond_br %29, ^bb2, ^bb33
  ^bb2:  // pred: ^bb1
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%30 : i64)
  ^bb3(%32: i64):  // 2 preds: ^bb2, ^bb7
    %33 = llvm.icmp "slt" %32, %24 : i64
    llvm.cond_br %33, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%34 : i64)
  ^bb5(%36: i64):  // 2 preds: ^bb4, ^bb6
    %37 = llvm.icmp "slt" %36, %24 : i64
    llvm.cond_br %37, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %38 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.mlir.constant(1024 : index) : i64
    %40 = llvm.mul %32, %39 : i64
    %41 = llvm.add %40, %36 : i64
    %42 = llvm.getelementptr %38[%41] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %43 = llvm.load %42 : !llvm.ptr -> f64
    %44 = llvm.mlir.constant(-1 : index) : i64
    %45 = llvm.add %36, %44 : i64
    %46 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %47 = llvm.mlir.constant(1024 : index) : i64
    %48 = llvm.mul %32, %47 : i64
    %49 = llvm.add %48, %45 : i64
    %50 = llvm.getelementptr %46[%49] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %51 = llvm.load %50 : !llvm.ptr -> f64
    %52 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.mlir.constant(1024 : index) : i64
    %54 = llvm.mul %32, %53 : i64
    %55 = llvm.add %54, %36 : i64
    %56 = llvm.getelementptr %52[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %57 = llvm.load %56 : !llvm.ptr -> f64
    %58 = llvm.fmul %51, %57 : f64
    %59 = llvm.mlir.constant(-1 : index) : i64
    %60 = llvm.add %36, %59 : i64
    %61 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.mlir.constant(1024 : index) : i64
    %63 = llvm.mul %32, %62 : i64
    %64 = llvm.add %63, %60 : i64
    %65 = llvm.getelementptr %61[%64] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %66 = llvm.load %65 : !llvm.ptr -> f64
    %67 = llvm.fdiv %58, %66 : f64
    %68 = llvm.fsub %43, %67 : f64
    %69 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.mlir.constant(1024 : index) : i64
    %71 = llvm.mul %32, %70 : i64
    %72 = llvm.add %71, %36 : i64
    %73 = llvm.getelementptr %69[%72] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %68, %73 : f64, !llvm.ptr
    %74 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.mlir.constant(1024 : index) : i64
    %76 = llvm.mul %32, %75 : i64
    %77 = llvm.add %76, %36 : i64
    %78 = llvm.getelementptr %74[%77] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %79 = llvm.load %78 : !llvm.ptr -> f64
    %80 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %81 = llvm.mlir.constant(1024 : index) : i64
    %82 = llvm.mul %32, %81 : i64
    %83 = llvm.add %82, %36 : i64
    %84 = llvm.getelementptr %80[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %85 = llvm.load %84 : !llvm.ptr -> f64
    %86 = llvm.fmul %85, %85 : f64
    %87 = llvm.mlir.constant(-1 : index) : i64
    %88 = llvm.add %36, %87 : i64
    %89 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %90 = llvm.mlir.constant(1024 : index) : i64
    %91 = llvm.mul %32, %90 : i64
    %92 = llvm.add %91, %88 : i64
    %93 = llvm.getelementptr %89[%92] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %94 = llvm.load %93 : !llvm.ptr -> f64
    %95 = llvm.fdiv %86, %94 : f64
    %96 = llvm.fsub %79, %95 : f64
    %97 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %98 = llvm.mlir.constant(1024 : index) : i64
    %99 = llvm.mul %32, %98 : i64
    %100 = llvm.add %99, %36 : i64
    %101 = llvm.getelementptr %97[%100] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %96, %101 : f64, !llvm.ptr
    %102 = llvm.add %36, %35 : i64
    llvm.br ^bb5(%102 : i64)
  ^bb7:  // pred: ^bb5
    %103 = llvm.add %32, %31 : i64
    llvm.br ^bb3(%103 : i64)
  ^bb8:  // pred: ^bb3
    %104 = llvm.mlir.constant(0 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%104 : i64)
  ^bb9(%106: i64):  // 2 preds: ^bb8, ^bb10
    %107 = llvm.icmp "slt" %106, %24 : i64
    llvm.cond_br %107, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %108 = llvm.mlir.constant(-1 : index) : i64
    %109 = llvm.add %24, %108 : i64
    %110 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %111 = llvm.mlir.constant(1024 : index) : i64
    %112 = llvm.mul %106, %111 : i64
    %113 = llvm.add %112, %109 : i64
    %114 = llvm.getelementptr %110[%113] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %115 = llvm.load %114 : !llvm.ptr -> f64
    %116 = llvm.mlir.constant(-1 : index) : i64
    %117 = llvm.add %24, %116 : i64
    %118 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %119 = llvm.mlir.constant(1024 : index) : i64
    %120 = llvm.mul %106, %119 : i64
    %121 = llvm.add %120, %117 : i64
    %122 = llvm.getelementptr %118[%121] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %123 = llvm.load %122 : !llvm.ptr -> f64
    %124 = llvm.fdiv %115, %123 : f64
    %125 = llvm.mlir.constant(-1 : index) : i64
    %126 = llvm.add %24, %125 : i64
    %127 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %128 = llvm.mlir.constant(1024 : index) : i64
    %129 = llvm.mul %106, %128 : i64
    %130 = llvm.add %129, %126 : i64
    %131 = llvm.getelementptr %127[%130] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %124, %131 : f64, !llvm.ptr
    %132 = llvm.add %106, %105 : i64
    llvm.br ^bb9(%132 : i64)
  ^bb11:  // pred: ^bb9
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%133 : i64)
  ^bb12(%135: i64):  // 2 preds: ^bb11, ^bb16
    %136 = llvm.icmp "slt" %135, %24 : i64
    llvm.cond_br %136, ^bb13, ^bb17
  ^bb13:  // pred: ^bb12
    %137 = llvm.mlir.constant(0 : index) : i64
    %138 = llvm.mlir.constant(-2 : index) : i64
    %139 = llvm.add %24, %138 : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%137 : i64)
  ^bb14(%141: i64):  // 2 preds: ^bb13, ^bb15
    %142 = llvm.icmp "slt" %141, %139 : i64
    llvm.cond_br %142, ^bb15, ^bb16
  ^bb15:  // pred: ^bb14
    %143 = llvm.mlir.constant(-1 : index) : i64
    %144 = llvm.mul %141, %143 overflow<nsw> : i64
    %145 = llvm.add %144, %24 : i64
    %146 = llvm.mlir.constant(-2 : index) : i64
    %147 = llvm.add %145, %146 : i64
    %148 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %149 = llvm.mlir.constant(1024 : index) : i64
    %150 = llvm.mul %135, %149 : i64
    %151 = llvm.add %150, %147 : i64
    %152 = llvm.getelementptr %148[%151] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %153 = llvm.load %152 : !llvm.ptr -> f64
    %154 = llvm.mlir.constant(-1 : index) : i64
    %155 = llvm.mul %141, %154 overflow<nsw> : i64
    %156 = llvm.add %155, %24 : i64
    %157 = llvm.mlir.constant(-3 : index) : i64
    %158 = llvm.add %156, %157 : i64
    %159 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %160 = llvm.mlir.constant(1024 : index) : i64
    %161 = llvm.mul %135, %160 : i64
    %162 = llvm.add %161, %158 : i64
    %163 = llvm.getelementptr %159[%162] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %164 = llvm.load %163 : !llvm.ptr -> f64
    %165 = llvm.mlir.constant(-1 : index) : i64
    %166 = llvm.mul %141, %165 overflow<nsw> : i64
    %167 = llvm.add %166, %24 : i64
    %168 = llvm.mlir.constant(-3 : index) : i64
    %169 = llvm.add %167, %168 : i64
    %170 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %171 = llvm.mlir.constant(1024 : index) : i64
    %172 = llvm.mul %135, %171 : i64
    %173 = llvm.add %172, %169 : i64
    %174 = llvm.getelementptr %170[%173] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %175 = llvm.load %174 : !llvm.ptr -> f64
    %176 = llvm.fmul %164, %175 : f64
    %177 = llvm.fsub %153, %176 : f64
    %178 = llvm.mlir.constant(-1 : index) : i64
    %179 = llvm.mul %141, %178 overflow<nsw> : i64
    %180 = llvm.add %179, %24 : i64
    %181 = llvm.mlir.constant(-3 : index) : i64
    %182 = llvm.add %180, %181 : i64
    %183 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %184 = llvm.mlir.constant(1024 : index) : i64
    %185 = llvm.mul %135, %184 : i64
    %186 = llvm.add %185, %182 : i64
    %187 = llvm.getelementptr %183[%186] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %188 = llvm.load %187 : !llvm.ptr -> f64
    %189 = llvm.fdiv %177, %188 : f64
    %190 = llvm.mlir.constant(-1 : index) : i64
    %191 = llvm.mul %141, %190 overflow<nsw> : i64
    %192 = llvm.add %191, %24 : i64
    %193 = llvm.mlir.constant(-2 : index) : i64
    %194 = llvm.add %192, %193 : i64
    %195 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %196 = llvm.mlir.constant(1024 : index) : i64
    %197 = llvm.mul %135, %196 : i64
    %198 = llvm.add %197, %194 : i64
    %199 = llvm.getelementptr %195[%198] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %189, %199 : f64, !llvm.ptr
    %200 = llvm.add %141, %140 : i64
    llvm.br ^bb14(%200 : i64)
  ^bb16:  // pred: ^bb14
    %201 = llvm.add %135, %134 : i64
    llvm.br ^bb12(%201 : i64)
  ^bb17:  // pred: ^bb12
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%202 : i64)
  ^bb18(%204: i64):  // 2 preds: ^bb17, ^bb22
    %205 = llvm.icmp "slt" %204, %24 : i64
    llvm.cond_br %205, ^bb19, ^bb23
  ^bb19:  // pred: ^bb18
    %206 = llvm.mlir.constant(0 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%206 : i64)
  ^bb20(%208: i64):  // 2 preds: ^bb19, ^bb21
    %209 = llvm.icmp "slt" %208, %24 : i64
    llvm.cond_br %209, ^bb21, ^bb22
  ^bb21:  // pred: ^bb20
    %210 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %211 = llvm.mlir.constant(1024 : index) : i64
    %212 = llvm.mul %204, %211 : i64
    %213 = llvm.add %212, %208 : i64
    %214 = llvm.getelementptr %210[%213] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %215 = llvm.load %214 : !llvm.ptr -> f64
    %216 = llvm.mlir.constant(-1 : index) : i64
    %217 = llvm.add %204, %216 : i64
    %218 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %219 = llvm.mlir.constant(1024 : index) : i64
    %220 = llvm.mul %217, %219 : i64
    %221 = llvm.add %220, %208 : i64
    %222 = llvm.getelementptr %218[%221] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %223 = llvm.load %222 : !llvm.ptr -> f64
    %224 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %225 = llvm.mlir.constant(1024 : index) : i64
    %226 = llvm.mul %204, %225 : i64
    %227 = llvm.add %226, %208 : i64
    %228 = llvm.getelementptr %224[%227] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %229 = llvm.load %228 : !llvm.ptr -> f64
    %230 = llvm.fmul %223, %229 : f64
    %231 = llvm.mlir.constant(-1 : index) : i64
    %232 = llvm.add %204, %231 : i64
    %233 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %234 = llvm.mlir.constant(1024 : index) : i64
    %235 = llvm.mul %232, %234 : i64
    %236 = llvm.add %235, %208 : i64
    %237 = llvm.getelementptr %233[%236] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %238 = llvm.load %237 : !llvm.ptr -> f64
    %239 = llvm.fdiv %230, %238 : f64
    %240 = llvm.fsub %215, %239 : f64
    %241 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %242 = llvm.mlir.constant(1024 : index) : i64
    %243 = llvm.mul %204, %242 : i64
    %244 = llvm.add %243, %208 : i64
    %245 = llvm.getelementptr %241[%244] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %240, %245 : f64, !llvm.ptr
    %246 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %247 = llvm.mlir.constant(1024 : index) : i64
    %248 = llvm.mul %204, %247 : i64
    %249 = llvm.add %248, %208 : i64
    %250 = llvm.getelementptr %246[%249] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %251 = llvm.load %250 : !llvm.ptr -> f64
    %252 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %253 = llvm.mlir.constant(1024 : index) : i64
    %254 = llvm.mul %204, %253 : i64
    %255 = llvm.add %254, %208 : i64
    %256 = llvm.getelementptr %252[%255] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %257 = llvm.load %256 : !llvm.ptr -> f64
    %258 = llvm.fmul %257, %257 : f64
    %259 = llvm.mlir.constant(-1 : index) : i64
    %260 = llvm.add %204, %259 : i64
    %261 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %262 = llvm.mlir.constant(1024 : index) : i64
    %263 = llvm.mul %260, %262 : i64
    %264 = llvm.add %263, %208 : i64
    %265 = llvm.getelementptr %261[%264] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %266 = llvm.load %265 : !llvm.ptr -> f64
    %267 = llvm.fdiv %258, %266 : f64
    %268 = llvm.fsub %251, %267 : f64
    %269 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %270 = llvm.mlir.constant(1024 : index) : i64
    %271 = llvm.mul %204, %270 : i64
    %272 = llvm.add %271, %208 : i64
    %273 = llvm.getelementptr %269[%272] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %268, %273 : f64, !llvm.ptr
    %274 = llvm.add %208, %207 : i64
    llvm.br ^bb20(%274 : i64)
  ^bb22:  // pred: ^bb20
    %275 = llvm.add %204, %203 : i64
    llvm.br ^bb18(%275 : i64)
  ^bb23:  // pred: ^bb18
    %276 = llvm.mlir.constant(0 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%276 : i64)
  ^bb24(%278: i64):  // 2 preds: ^bb23, ^bb25
    %279 = llvm.icmp "slt" %278, %24 : i64
    llvm.cond_br %279, ^bb25, ^bb26
  ^bb25:  // pred: ^bb24
    %280 = llvm.mlir.constant(-1 : index) : i64
    %281 = llvm.add %24, %280 : i64
    %282 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %283 = llvm.mlir.constant(1024 : index) : i64
    %284 = llvm.mul %281, %283 : i64
    %285 = llvm.add %284, %278 : i64
    %286 = llvm.getelementptr %282[%285] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %287 = llvm.load %286 : !llvm.ptr -> f64
    %288 = llvm.mlir.constant(-1 : index) : i64
    %289 = llvm.add %24, %288 : i64
    %290 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %291 = llvm.mlir.constant(1024 : index) : i64
    %292 = llvm.mul %289, %291 : i64
    %293 = llvm.add %292, %278 : i64
    %294 = llvm.getelementptr %290[%293] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %295 = llvm.load %294 : !llvm.ptr -> f64
    %296 = llvm.fdiv %287, %295 : f64
    %297 = llvm.mlir.constant(-1 : index) : i64
    %298 = llvm.add %24, %297 : i64
    %299 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %300 = llvm.mlir.constant(1024 : index) : i64
    %301 = llvm.mul %298, %300 : i64
    %302 = llvm.add %301, %278 : i64
    %303 = llvm.getelementptr %299[%302] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %296, %303 : f64, !llvm.ptr
    %304 = llvm.add %278, %277 : i64
    llvm.br ^bb24(%304 : i64)
  ^bb26:  // pred: ^bb24
    %305 = llvm.mlir.constant(0 : index) : i64
    %306 = llvm.mlir.constant(-2 : index) : i64
    %307 = llvm.add %24, %306 : i64
    %308 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%305 : i64)
  ^bb27(%309: i64):  // 2 preds: ^bb26, ^bb31
    %310 = llvm.icmp "slt" %309, %307 : i64
    llvm.cond_br %310, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    %311 = llvm.mlir.constant(0 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%311 : i64)
  ^bb29(%313: i64):  // 2 preds: ^bb28, ^bb30
    %314 = llvm.icmp "slt" %313, %24 : i64
    llvm.cond_br %314, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %315 = llvm.mlir.constant(-1 : index) : i64
    %316 = llvm.mul %309, %315 overflow<nsw> : i64
    %317 = llvm.add %316, %24 : i64
    %318 = llvm.mlir.constant(-2 : index) : i64
    %319 = llvm.add %317, %318 : i64
    %320 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %321 = llvm.mlir.constant(1024 : index) : i64
    %322 = llvm.mul %319, %321 : i64
    %323 = llvm.add %322, %313 : i64
    %324 = llvm.getelementptr %320[%323] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %325 = llvm.load %324 : !llvm.ptr -> f64
    %326 = llvm.mlir.constant(-1 : index) : i64
    %327 = llvm.mul %309, %326 overflow<nsw> : i64
    %328 = llvm.add %327, %24 : i64
    %329 = llvm.mlir.constant(-3 : index) : i64
    %330 = llvm.add %328, %329 : i64
    %331 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %332 = llvm.mlir.constant(1024 : index) : i64
    %333 = llvm.mul %330, %332 : i64
    %334 = llvm.add %333, %313 : i64
    %335 = llvm.getelementptr %331[%334] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %336 = llvm.load %335 : !llvm.ptr -> f64
    %337 = llvm.mlir.constant(-1 : index) : i64
    %338 = llvm.mul %309, %337 overflow<nsw> : i64
    %339 = llvm.add %338, %24 : i64
    %340 = llvm.mlir.constant(-3 : index) : i64
    %341 = llvm.add %339, %340 : i64
    %342 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %343 = llvm.mlir.constant(1024 : index) : i64
    %344 = llvm.mul %341, %343 : i64
    %345 = llvm.add %344, %313 : i64
    %346 = llvm.getelementptr %342[%345] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %347 = llvm.load %346 : !llvm.ptr -> f64
    %348 = llvm.fmul %336, %347 : f64
    %349 = llvm.fsub %325, %348 : f64
    %350 = llvm.mlir.constant(-1 : index) : i64
    %351 = llvm.mul %309, %350 overflow<nsw> : i64
    %352 = llvm.add %351, %24 : i64
    %353 = llvm.mlir.constant(-2 : index) : i64
    %354 = llvm.add %352, %353 : i64
    %355 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %356 = llvm.mlir.constant(1024 : index) : i64
    %357 = llvm.mul %354, %356 : i64
    %358 = llvm.add %357, %313 : i64
    %359 = llvm.getelementptr %355[%358] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %360 = llvm.load %359 : !llvm.ptr -> f64
    %361 = llvm.fdiv %349, %360 : f64
    %362 = llvm.mlir.constant(-1 : index) : i64
    %363 = llvm.mul %309, %362 overflow<nsw> : i64
    %364 = llvm.add %363, %24 : i64
    %365 = llvm.mlir.constant(-2 : index) : i64
    %366 = llvm.add %364, %365 : i64
    %367 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %368 = llvm.mlir.constant(1024 : index) : i64
    %369 = llvm.mul %366, %368 : i64
    %370 = llvm.add %369, %313 : i64
    %371 = llvm.getelementptr %367[%370] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %361, %371 : f64, !llvm.ptr
    %372 = llvm.add %313, %312 : i64
    llvm.br ^bb29(%372 : i64)
  ^bb31:  // pred: ^bb29
    %373 = llvm.add %309, %308 : i64
    llvm.br ^bb27(%373 : i64)
  ^bb32:  // pred: ^bb27
    %374 = llvm.add %28, %27 : i64
    llvm.br ^bb1(%374 : i64)
  ^bb33:  // pred: ^bb1
    llvm.return
  }
}


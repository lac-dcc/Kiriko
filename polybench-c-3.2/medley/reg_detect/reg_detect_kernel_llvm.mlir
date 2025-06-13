module {
  llvm.func @kernel_reg_detect(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: !llvm.ptr, %arg4: !llvm.ptr, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: !llvm.ptr, %arg11: !llvm.ptr, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: !llvm.ptr, %arg18: !llvm.ptr, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: !llvm.ptr, %arg25: !llvm.ptr, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: !llvm.ptr, %arg34: !llvm.ptr, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64, %arg41: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %1 = llvm.insertvalue %arg33, %0[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.insertvalue %arg34, %1[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.insertvalue %arg35, %2[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.insertvalue %arg36, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.insertvalue %arg39, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.insertvalue %arg37, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.insertvalue %arg40, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.insertvalue %arg38, %7[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.insertvalue %arg41, %8[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %11 = llvm.insertvalue %arg24, %10[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.insertvalue %arg25, %11[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %13 = llvm.insertvalue %arg26, %12[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.insertvalue %arg27, %13[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %15 = llvm.insertvalue %arg30, %14[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %16 = llvm.insertvalue %arg28, %15[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %17 = llvm.insertvalue %arg31, %16[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %18 = llvm.insertvalue %arg29, %17[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %19 = llvm.insertvalue %arg32, %18[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %21 = llvm.insertvalue %arg17, %20[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg18, %21[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg19, %22[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.insertvalue %arg20, %23[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.insertvalue %arg22, %24[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %arg21, %25[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.insertvalue %arg23, %26[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %29 = llvm.insertvalue %arg10, %28[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.insertvalue %arg11, %29[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.insertvalue %arg12, %30[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.insertvalue %arg13, %31[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.insertvalue %arg15, %32[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.insertvalue %arg14, %33[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.insertvalue %arg16, %34[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %37 = llvm.insertvalue %arg3, %36[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.insertvalue %arg4, %37[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.insertvalue %arg5, %38[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %40 = llvm.insertvalue %arg6, %39[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.insertvalue %arg8, %40[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %42 = llvm.insertvalue %arg7, %41[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %43 = llvm.insertvalue %arg9, %42[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %44 = llvm.sext %arg1 : i32 to i64
    %45 = llvm.sext %arg2 : i32 to i64
    %46 = llvm.sext %arg0 : i32 to i64
    %47 = llvm.mlir.constant(0 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%47 : i64)
  ^bb1(%49: i64):  // 2 preds: ^bb0, ^bb29
    %50 = llvm.icmp "slt" %49, %46 : i64
    llvm.cond_br %50, ^bb2, ^bb30
  ^bb2:  // pred: ^bb1
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%51 : i64)
  ^bb3(%53: i64):  // 2 preds: ^bb2, ^bb10
    %54 = llvm.icmp "slt" %53, %44 : i64
    llvm.cond_br %54, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %55 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%53 : i64)
  ^bb5(%56: i64):  // 2 preds: ^bb4, ^bb9
    %57 = llvm.icmp "slt" %56, %44 : i64
    llvm.cond_br %57, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %58 = llvm.mlir.constant(0 : index) : i64
    %59 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%58 : i64)
  ^bb7(%60: i64):  // 2 preds: ^bb6, ^bb8
    %61 = llvm.icmp "slt" %60, %45 : i64
    llvm.cond_br %61, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %62 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.mlir.constant(6 : index) : i64
    %64 = llvm.mul %53, %63 : i64
    %65 = llvm.add %64, %56 : i64
    %66 = llvm.getelementptr %62[%65] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %67 = llvm.load %66 : !llvm.ptr -> i32
    %68 = llvm.extractvalue %19[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %69 = llvm.mlir.constant(384 : index) : i64
    %70 = llvm.mul %53, %69 : i64
    %71 = llvm.mlir.constant(64 : index) : i64
    %72 = llvm.mul %56, %71 : i64
    %73 = llvm.add %70, %72 : i64
    %74 = llvm.add %73, %60 : i64
    %75 = llvm.getelementptr %68[%74] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %67, %75 : i32, !llvm.ptr
    %76 = llvm.add %60, %59 : i64
    llvm.br ^bb7(%76 : i64)
  ^bb9:  // pred: ^bb7
    %77 = llvm.add %56, %55 : i64
    llvm.br ^bb5(%77 : i64)
  ^bb10:  // pred: ^bb5
    %78 = llvm.add %53, %52 : i64
    llvm.br ^bb3(%78 : i64)
  ^bb11:  // pred: ^bb3
    %79 = llvm.mlir.constant(0 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%79 : i64)
  ^bb12(%81: i64):  // 2 preds: ^bb11, ^bb19
    %82 = llvm.icmp "slt" %81, %44 : i64
    llvm.cond_br %82, ^bb13, ^bb20
  ^bb13:  // pred: ^bb12
    %83 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%81 : i64)
  ^bb14(%84: i64):  // 2 preds: ^bb13, ^bb18
    %85 = llvm.icmp "slt" %84, %44 : i64
    llvm.cond_br %85, ^bb15, ^bb19
  ^bb15:  // pred: ^bb14
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.extractvalue %19[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %88 = llvm.mlir.constant(384 : index) : i64
    %89 = llvm.mul %81, %88 : i64
    %90 = llvm.mlir.constant(64 : index) : i64
    %91 = llvm.mul %84, %90 : i64
    %92 = llvm.add %89, %91 : i64
    %93 = llvm.add %92, %86 : i64
    %94 = llvm.getelementptr %87[%93] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %95 = llvm.load %94 : !llvm.ptr -> i32
    %96 = llvm.mlir.constant(0 : index) : i64
    %97 = llvm.extractvalue %9[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %98 = llvm.mlir.constant(384 : index) : i64
    %99 = llvm.mul %81, %98 : i64
    %100 = llvm.mlir.constant(64 : index) : i64
    %101 = llvm.mul %84, %100 : i64
    %102 = llvm.add %99, %101 : i64
    %103 = llvm.add %102, %96 : i64
    %104 = llvm.getelementptr %97[%103] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %95, %104 : i32, !llvm.ptr
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%105 : i64)
  ^bb16(%107: i64):  // 2 preds: ^bb15, ^bb17
    %108 = llvm.icmp "slt" %107, %45 : i64
    llvm.cond_br %108, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %109 = llvm.mlir.constant(-1 : index) : i64
    %110 = llvm.add %107, %109 : i64
    %111 = llvm.extractvalue %9[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %112 = llvm.mlir.constant(384 : index) : i64
    %113 = llvm.mul %81, %112 : i64
    %114 = llvm.mlir.constant(64 : index) : i64
    %115 = llvm.mul %84, %114 : i64
    %116 = llvm.add %113, %115 : i64
    %117 = llvm.add %116, %110 : i64
    %118 = llvm.getelementptr %111[%117] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %119 = llvm.load %118 : !llvm.ptr -> i32
    %120 = llvm.extractvalue %19[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %121 = llvm.mlir.constant(384 : index) : i64
    %122 = llvm.mul %81, %121 : i64
    %123 = llvm.mlir.constant(64 : index) : i64
    %124 = llvm.mul %84, %123 : i64
    %125 = llvm.add %122, %124 : i64
    %126 = llvm.add %125, %107 : i64
    %127 = llvm.getelementptr %120[%126] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %128 = llvm.load %127 : !llvm.ptr -> i32
    %129 = llvm.add %119, %128 : i32
    %130 = llvm.extractvalue %9[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %131 = llvm.mlir.constant(384 : index) : i64
    %132 = llvm.mul %81, %131 : i64
    %133 = llvm.mlir.constant(64 : index) : i64
    %134 = llvm.mul %84, %133 : i64
    %135 = llvm.add %132, %134 : i64
    %136 = llvm.add %135, %107 : i64
    %137 = llvm.getelementptr %130[%136] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %129, %137 : i32, !llvm.ptr
    %138 = llvm.add %107, %106 : i64
    llvm.br ^bb16(%138 : i64)
  ^bb18:  // pred: ^bb16
    %139 = llvm.mlir.constant(-1 : index) : i64
    %140 = llvm.add %45, %139 : i64
    %141 = llvm.extractvalue %9[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %142 = llvm.mlir.constant(384 : index) : i64
    %143 = llvm.mul %81, %142 : i64
    %144 = llvm.mlir.constant(64 : index) : i64
    %145 = llvm.mul %84, %144 : i64
    %146 = llvm.add %143, %145 : i64
    %147 = llvm.add %146, %140 : i64
    %148 = llvm.getelementptr %141[%147] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %149 = llvm.load %148 : !llvm.ptr -> i32
    %150 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %151 = llvm.mlir.constant(6 : index) : i64
    %152 = llvm.mul %81, %151 : i64
    %153 = llvm.add %152, %84 : i64
    %154 = llvm.getelementptr %150[%153] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %149, %154 : i32, !llvm.ptr
    %155 = llvm.add %84, %83 : i64
    llvm.br ^bb14(%155 : i64)
  ^bb19:  // pred: ^bb14
    %156 = llvm.add %81, %80 : i64
    llvm.br ^bb12(%156 : i64)
  ^bb20:  // pred: ^bb12
    %157 = llvm.mlir.constant(0 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%157 : i64)
  ^bb21(%159: i64):  // 2 preds: ^bb20, ^bb22
    %160 = llvm.icmp "slt" %159, %44 : i64
    llvm.cond_br %160, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %163 = llvm.mlir.constant(6 : index) : i64
    %164 = llvm.mul %161, %163 : i64
    %165 = llvm.add %164, %159 : i64
    %166 = llvm.getelementptr %162[%165] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %167 = llvm.load %166 : !llvm.ptr -> i32
    %168 = llvm.mlir.constant(0 : index) : i64
    %169 = llvm.extractvalue %27[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %170 = llvm.mlir.constant(6 : index) : i64
    %171 = llvm.mul %168, %170 : i64
    %172 = llvm.add %171, %159 : i64
    %173 = llvm.getelementptr %169[%172] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %167, %173 : i32, !llvm.ptr
    %174 = llvm.add %159, %158 : i64
    llvm.br ^bb21(%174 : i64)
  ^bb23:  // pred: ^bb21
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%175 : i64)
  ^bb24(%177: i64):  // 2 preds: ^bb23, ^bb28
    %178 = llvm.icmp "slt" %177, %44 : i64
    llvm.cond_br %178, ^bb25, ^bb29
  ^bb25:  // pred: ^bb24
    %179 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%177 : i64)
  ^bb26(%180: i64):  // 2 preds: ^bb25, ^bb27
    %181 = llvm.icmp "slt" %180, %44 : i64
    llvm.cond_br %181, ^bb27, ^bb28
  ^bb27:  // pred: ^bb26
    %182 = llvm.mlir.constant(-1 : index) : i64
    %183 = llvm.add %177, %182 : i64
    %184 = llvm.mlir.constant(-1 : index) : i64
    %185 = llvm.add %180, %184 : i64
    %186 = llvm.extractvalue %27[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %187 = llvm.mlir.constant(6 : index) : i64
    %188 = llvm.mul %183, %187 : i64
    %189 = llvm.add %188, %185 : i64
    %190 = llvm.getelementptr %186[%189] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %191 = llvm.load %190 : !llvm.ptr -> i32
    %192 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %193 = llvm.mlir.constant(6 : index) : i64
    %194 = llvm.mul %177, %193 : i64
    %195 = llvm.add %194, %180 : i64
    %196 = llvm.getelementptr %192[%195] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %197 = llvm.load %196 : !llvm.ptr -> i32
    %198 = llvm.add %191, %197 : i32
    %199 = llvm.extractvalue %27[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %200 = llvm.mlir.constant(6 : index) : i64
    %201 = llvm.mul %177, %200 : i64
    %202 = llvm.add %201, %180 : i64
    %203 = llvm.getelementptr %199[%202] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %198, %203 : i32, !llvm.ptr
    %204 = llvm.add %180, %179 : i64
    llvm.br ^bb26(%204 : i64)
  ^bb28:  // pred: ^bb26
    %205 = llvm.add %177, %176 : i64
    llvm.br ^bb24(%205 : i64)
  ^bb29:  // pred: ^bb24
    %206 = llvm.add %49, %48 : i64
    llvm.br ^bb1(%206 : i64)
  ^bb30:  // pred: ^bb1
    llvm.return
  }
}


module {
  llvm.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: !llvm.ptr, %arg4: !llvm.ptr, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: !llvm.ptr, %arg11: !llvm.ptr, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: !llvm.ptr, %arg18: !llvm.ptr, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: !llvm.ptr, %arg25: !llvm.ptr, %arg26: i64, %arg27: i64, %arg28: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg24, %0[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg25, %1[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg26, %2[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg27, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg28, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %7 = llvm.insertvalue %arg17, %6[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.insertvalue %arg18, %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %9 = llvm.insertvalue %arg19, %8[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg20, %9[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg22, %10[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg21, %11[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg23, %12[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %15 = llvm.insertvalue %arg10, %14[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %arg11, %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %arg12, %16[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg13, %17[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg15, %18[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg14, %19[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg16, %20[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %23 = llvm.insertvalue %arg3, %22[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.insertvalue %arg4, %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.insertvalue %arg5, %24[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %arg6, %25[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.insertvalue %arg8, %26[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.insertvalue %arg7, %27[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.insertvalue %arg9, %28[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.mlir.constant(5.000000e-01 : f64) : f64
    %31 = llvm.mlir.constant(0.69999999999999996 : f64) : f64
    %32 = llvm.sext %arg1 : i32 to i64
    %33 = llvm.sext %arg2 : i32 to i64
    %34 = llvm.sext %arg0 : i32 to i64
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%35 : i64)
  ^bb1(%37: i64):  // 2 preds: ^bb0, ^bb23
    %38 = llvm.icmp "slt" %37, %34 : i64
    llvm.cond_br %38, ^bb2, ^bb24
  ^bb2:  // pred: ^bb1
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%39 : i64)
  ^bb3(%41: i64):  // 2 preds: ^bb2, ^bb4
    %42 = llvm.icmp "slt" %41, %33 : i64
    llvm.cond_br %42, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %43 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.getelementptr %43[%37] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %45 = llvm.load %44 : !llvm.ptr -> f64
    %46 = llvm.mlir.constant(0 : index) : i64
    %47 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %48 = llvm.mlir.constant(1000 : index) : i64
    %49 = llvm.mul %46, %48 : i64
    %50 = llvm.add %49, %41 : i64
    %51 = llvm.getelementptr %47[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %45, %51 : f64, !llvm.ptr
    %52 = llvm.add %41, %40 : i64
    llvm.br ^bb3(%52 : i64)
  ^bb5:  // pred: ^bb3
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb6(%53 : i64)
  ^bb6(%55: i64):  // 2 preds: ^bb5, ^bb10
    %56 = llvm.icmp "slt" %55, %32 : i64
    llvm.cond_br %56, ^bb7, ^bb11
  ^bb7:  // pred: ^bb6
    %57 = llvm.mlir.constant(0 : index) : i64
    %58 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb8(%57 : i64)
  ^bb8(%59: i64):  // 2 preds: ^bb7, ^bb9
    %60 = llvm.icmp "slt" %59, %33 : i64
    llvm.cond_br %60, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    %61 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.mlir.constant(1000 : index) : i64
    %63 = llvm.mul %55, %62 : i64
    %64 = llvm.add %63, %59 : i64
    %65 = llvm.getelementptr %61[%64] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %66 = llvm.load %65 : !llvm.ptr -> f64
    %67 = llvm.extractvalue %13[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.mlir.constant(1000 : index) : i64
    %69 = llvm.mul %55, %68 : i64
    %70 = llvm.add %69, %59 : i64
    %71 = llvm.getelementptr %67[%70] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %72 = llvm.load %71 : !llvm.ptr -> f64
    %73 = llvm.mlir.constant(-1 : index) : i64
    %74 = llvm.add %55, %73 : i64
    %75 = llvm.extractvalue %13[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %76 = llvm.mlir.constant(1000 : index) : i64
    %77 = llvm.mul %74, %76 : i64
    %78 = llvm.add %77, %59 : i64
    %79 = llvm.getelementptr %75[%78] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %80 = llvm.load %79 : !llvm.ptr -> f64
    %81 = llvm.fsub %72, %80 : f64
    %82 = llvm.fmul %81, %30 : f64
    %83 = llvm.fsub %66, %82 : f64
    %84 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %85 = llvm.mlir.constant(1000 : index) : i64
    %86 = llvm.mul %55, %85 : i64
    %87 = llvm.add %86, %59 : i64
    %88 = llvm.getelementptr %84[%87] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %83, %88 : f64, !llvm.ptr
    %89 = llvm.add %59, %58 : i64
    llvm.br ^bb8(%89 : i64)
  ^bb10:  // pred: ^bb8
    %90 = llvm.add %55, %54 : i64
    llvm.br ^bb6(%90 : i64)
  ^bb11:  // pred: ^bb6
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%91 : i64)
  ^bb12(%93: i64):  // 2 preds: ^bb11, ^bb16
    %94 = llvm.icmp "slt" %93, %32 : i64
    llvm.cond_br %94, ^bb13, ^bb17
  ^bb13:  // pred: ^bb12
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%95 : i64)
  ^bb14(%97: i64):  // 2 preds: ^bb13, ^bb15
    %98 = llvm.icmp "slt" %97, %33 : i64
    llvm.cond_br %98, ^bb15, ^bb16
  ^bb15:  // pred: ^bb14
    %99 = llvm.extractvalue %29[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %100 = llvm.mlir.constant(1000 : index) : i64
    %101 = llvm.mul %93, %100 : i64
    %102 = llvm.add %101, %97 : i64
    %103 = llvm.getelementptr %99[%102] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %104 = llvm.load %103 : !llvm.ptr -> f64
    %105 = llvm.extractvalue %13[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %106 = llvm.mlir.constant(1000 : index) : i64
    %107 = llvm.mul %93, %106 : i64
    %108 = llvm.add %107, %97 : i64
    %109 = llvm.getelementptr %105[%108] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %110 = llvm.load %109 : !llvm.ptr -> f64
    %111 = llvm.mlir.constant(-1 : index) : i64
    %112 = llvm.add %97, %111 : i64
    %113 = llvm.extractvalue %13[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %114 = llvm.mlir.constant(1000 : index) : i64
    %115 = llvm.mul %93, %114 : i64
    %116 = llvm.add %115, %112 : i64
    %117 = llvm.getelementptr %113[%116] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %118 = llvm.load %117 : !llvm.ptr -> f64
    %119 = llvm.fsub %110, %118 : f64
    %120 = llvm.fmul %119, %30 : f64
    %121 = llvm.fsub %104, %120 : f64
    %122 = llvm.extractvalue %29[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %123 = llvm.mlir.constant(1000 : index) : i64
    %124 = llvm.mul %93, %123 : i64
    %125 = llvm.add %124, %97 : i64
    %126 = llvm.getelementptr %122[%125] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %121, %126 : f64, !llvm.ptr
    %127 = llvm.add %97, %96 : i64
    llvm.br ^bb14(%127 : i64)
  ^bb16:  // pred: ^bb14
    %128 = llvm.add %93, %92 : i64
    llvm.br ^bb12(%128 : i64)
  ^bb17:  // pred: ^bb12
    %129 = llvm.mlir.constant(0 : index) : i64
    %130 = llvm.mlir.constant(-1 : index) : i64
    %131 = llvm.add %32, %130 : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%129 : i64)
  ^bb18(%133: i64):  // 2 preds: ^bb17, ^bb22
    %134 = llvm.icmp "slt" %133, %131 : i64
    llvm.cond_br %134, ^bb19, ^bb23
  ^bb19:  // pred: ^bb18
    %135 = llvm.mlir.constant(0 : index) : i64
    %136 = llvm.mlir.constant(-1 : index) : i64
    %137 = llvm.add %33, %136 : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%135 : i64)
  ^bb20(%139: i64):  // 2 preds: ^bb19, ^bb21
    %140 = llvm.icmp "slt" %139, %137 : i64
    llvm.cond_br %140, ^bb21, ^bb22
  ^bb21:  // pred: ^bb20
    %141 = llvm.extractvalue %13[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %142 = llvm.mlir.constant(1000 : index) : i64
    %143 = llvm.mul %133, %142 : i64
    %144 = llvm.add %143, %139 : i64
    %145 = llvm.getelementptr %141[%144] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %146 = llvm.load %145 : !llvm.ptr -> f64
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.add %139, %147 : i64
    %149 = llvm.extractvalue %29[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %150 = llvm.mlir.constant(1000 : index) : i64
    %151 = llvm.mul %133, %150 : i64
    %152 = llvm.add %151, %148 : i64
    %153 = llvm.getelementptr %149[%152] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %154 = llvm.load %153 : !llvm.ptr -> f64
    %155 = llvm.extractvalue %29[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %156 = llvm.mlir.constant(1000 : index) : i64
    %157 = llvm.mul %133, %156 : i64
    %158 = llvm.add %157, %139 : i64
    %159 = llvm.getelementptr %155[%158] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %160 = llvm.load %159 : !llvm.ptr -> f64
    %161 = llvm.fsub %154, %160 : f64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.add %133, %162 : i64
    %164 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %165 = llvm.mlir.constant(1000 : index) : i64
    %166 = llvm.mul %163, %165 : i64
    %167 = llvm.add %166, %139 : i64
    %168 = llvm.getelementptr %164[%167] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %169 = llvm.load %168 : !llvm.ptr -> f64
    %170 = llvm.fadd %161, %169 : f64
    %171 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %172 = llvm.mlir.constant(1000 : index) : i64
    %173 = llvm.mul %133, %172 : i64
    %174 = llvm.add %173, %139 : i64
    %175 = llvm.getelementptr %171[%174] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %176 = llvm.load %175 : !llvm.ptr -> f64
    %177 = llvm.fsub %170, %176 : f64
    %178 = llvm.fmul %177, %31 : f64
    %179 = llvm.fsub %146, %178 : f64
    %180 = llvm.extractvalue %13[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %181 = llvm.mlir.constant(1000 : index) : i64
    %182 = llvm.mul %133, %181 : i64
    %183 = llvm.add %182, %139 : i64
    %184 = llvm.getelementptr %180[%183] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %179, %184 : f64, !llvm.ptr
    %185 = llvm.add %139, %138 : i64
    llvm.br ^bb20(%185 : i64)
  ^bb22:  // pred: ^bb20
    %186 = llvm.add %133, %132 : i64
    llvm.br ^bb18(%186 : i64)
  ^bb23:  // pred: ^bb18
    %187 = llvm.add %37, %36 : i64
    llvm.br ^bb1(%187 : i64)
  ^bb24:  // pred: ^bb1
    llvm.return
  }
}


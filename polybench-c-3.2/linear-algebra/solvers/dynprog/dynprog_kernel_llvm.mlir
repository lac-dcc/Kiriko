module {
  llvm.func @kernel_dynprog(%arg0: i32, %arg1: i32, %arg2: !llvm.ptr, %arg3: !llvm.ptr, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: !llvm.ptr, %arg10: !llvm.ptr, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: !llvm.ptr, %arg17: !llvm.ptr, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: !llvm.ptr, %arg26: !llvm.ptr, %arg27: i64, %arg28: i64, %arg29: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg25, %0[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg26, %1[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg27, %2[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg28, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg29, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %7 = llvm.insertvalue %arg16, %6[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.insertvalue %arg17, %7[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.insertvalue %arg18, %8[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.insertvalue %arg19, %9[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %11 = llvm.insertvalue %arg22, %10[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.insertvalue %arg20, %11[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %13 = llvm.insertvalue %arg23, %12[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.insertvalue %arg21, %13[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %15 = llvm.insertvalue %arg24, %14[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %16 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.insertvalue %arg9, %16[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg10, %17[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg11, %18[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg12, %19[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg14, %20[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg13, %21[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg15, %22[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %25 = llvm.insertvalue %arg2, %24[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %arg3, %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.insertvalue %arg4, %26[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.insertvalue %arg5, %27[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.insertvalue %arg7, %28[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.insertvalue %arg6, %29[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.insertvalue %arg8, %30[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.mlir.constant(0 : i32) : i32
    %33 = llvm.sext %arg1 : i32 to i64
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.alloca %34 x i32 : (i64) -> !llvm.ptr
    %36 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %37 = llvm.insertvalue %35, %36[0] : !llvm.struct<(ptr, ptr, i64)> 
    %38 = llvm.insertvalue %35, %37[1] : !llvm.struct<(ptr, ptr, i64)> 
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr, ptr, i64)> 
    %41 = llvm.extractvalue %40[1] : !llvm.struct<(ptr, ptr, i64)> 
    llvm.store %32, %41 : i32, !llvm.ptr
    %42 = llvm.sext %arg0 : i32 to i64
    %43 = llvm.mlir.constant(0 : index) : i64
    %44 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%43 : i64)
  ^bb1(%45: i64):  // 2 preds: ^bb0, ^bb17
    %46 = llvm.icmp "slt" %45, %42 : i64
    llvm.cond_br %46, ^bb2, ^bb18
  ^bb2:  // pred: ^bb1
    %47 = llvm.mlir.constant(0 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%47 : i64)
  ^bb3(%49: i64):  // 2 preds: ^bb2, ^bb7
    %50 = llvm.icmp "slt" %49, %33 : i64
    llvm.cond_br %50, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%51 : i64)
  ^bb5(%53: i64):  // 2 preds: ^bb4, ^bb6
    %54 = llvm.icmp "slt" %53, %33 : i64
    llvm.cond_br %54, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %55 = llvm.extractvalue %31[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.mlir.constant(50 : index) : i64
    %57 = llvm.mul %49, %56 : i64
    %58 = llvm.add %57, %53 : i64
    %59 = llvm.getelementptr %55[%58] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %32, %59 : i32, !llvm.ptr
    %60 = llvm.add %53, %52 : i64
    llvm.br ^bb5(%60 : i64)
  ^bb7:  // pred: ^bb5
    %61 = llvm.add %49, %48 : i64
    llvm.br ^bb3(%61 : i64)
  ^bb8:  // pred: ^bb3
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.mlir.constant(-1 : index) : i64
    %64 = llvm.add %33, %63 : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%62 : i64)
  ^bb9(%66: i64):  // 2 preds: ^bb8, ^bb16
    %67 = llvm.icmp "slt" %66, %64 : i64
    llvm.cond_br %67, ^bb10, ^bb17
  ^bb10:  // pred: ^bb9
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.add %66, %68 : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb11(%69 : i64)
  ^bb11(%71: i64):  // 2 preds: ^bb10, ^bb15
    %72 = llvm.icmp "slt" %71, %33 : i64
    llvm.cond_br %72, ^bb12, ^bb16
  ^bb12:  // pred: ^bb11
    %73 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %74 = llvm.mlir.constant(2500 : index) : i64
    %75 = llvm.mul %66, %74 : i64
    %76 = llvm.mlir.constant(50 : index) : i64
    %77 = llvm.mul %71, %76 : i64
    %78 = llvm.add %75, %77 : i64
    %79 = llvm.add %78, %66 : i64
    %80 = llvm.getelementptr %73[%79] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %32, %80 : i32, !llvm.ptr
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.add %66, %81 : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%82 : i64)
  ^bb13(%84: i64):  // 2 preds: ^bb12, ^bb14
    %85 = llvm.icmp "slt" %84, %71 : i64
    llvm.cond_br %85, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %86 = llvm.mlir.constant(-1 : index) : i64
    %87 = llvm.add %84, %86 : i64
    %88 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %89 = llvm.mlir.constant(2500 : index) : i64
    %90 = llvm.mul %66, %89 : i64
    %91 = llvm.mlir.constant(50 : index) : i64
    %92 = llvm.mul %71, %91 : i64
    %93 = llvm.add %90, %92 : i64
    %94 = llvm.add %93, %87 : i64
    %95 = llvm.getelementptr %88[%94] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %96 = llvm.load %95 : !llvm.ptr -> i32
    %97 = llvm.extractvalue %31[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %98 = llvm.mlir.constant(50 : index) : i64
    %99 = llvm.mul %66, %98 : i64
    %100 = llvm.add %99, %84 : i64
    %101 = llvm.getelementptr %97[%100] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %102 = llvm.load %101 : !llvm.ptr -> i32
    %103 = llvm.add %96, %102 : i32
    %104 = llvm.extractvalue %31[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %105 = llvm.mlir.constant(50 : index) : i64
    %106 = llvm.mul %84, %105 : i64
    %107 = llvm.add %106, %71 : i64
    %108 = llvm.getelementptr %104[%107] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %109 = llvm.load %108 : !llvm.ptr -> i32
    %110 = llvm.add %103, %109 : i32
    %111 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %112 = llvm.mlir.constant(2500 : index) : i64
    %113 = llvm.mul %66, %112 : i64
    %114 = llvm.mlir.constant(50 : index) : i64
    %115 = llvm.mul %71, %114 : i64
    %116 = llvm.add %113, %115 : i64
    %117 = llvm.add %116, %84 : i64
    %118 = llvm.getelementptr %111[%117] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %110, %118 : i32, !llvm.ptr
    %119 = llvm.add %84, %83 : i64
    llvm.br ^bb13(%119 : i64)
  ^bb15:  // pred: ^bb13
    %120 = llvm.mlir.constant(-1 : index) : i64
    %121 = llvm.add %71, %120 : i64
    %122 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %123 = llvm.mlir.constant(2500 : index) : i64
    %124 = llvm.mul %66, %123 : i64
    %125 = llvm.mlir.constant(50 : index) : i64
    %126 = llvm.mul %71, %125 : i64
    %127 = llvm.add %124, %126 : i64
    %128 = llvm.add %127, %121 : i64
    %129 = llvm.getelementptr %122[%128] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %130 = llvm.load %129 : !llvm.ptr -> i32
    %131 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %132 = llvm.mlir.constant(50 : index) : i64
    %133 = llvm.mul %66, %132 : i64
    %134 = llvm.add %133, %71 : i64
    %135 = llvm.getelementptr %131[%134] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %136 = llvm.load %135 : !llvm.ptr -> i32
    %137 = llvm.add %130, %136 : i32
    %138 = llvm.extractvalue %31[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %139 = llvm.mlir.constant(50 : index) : i64
    %140 = llvm.mul %66, %139 : i64
    %141 = llvm.add %140, %71 : i64
    %142 = llvm.getelementptr %138[%141] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %137, %142 : i32, !llvm.ptr
    %143 = llvm.add %71, %70 : i64
    llvm.br ^bb11(%143 : i64)
  ^bb16:  // pred: ^bb11
    %144 = llvm.add %66, %65 : i64
    llvm.br ^bb9(%144 : i64)
  ^bb17:  // pred: ^bb9
    %145 = llvm.mlir.constant(0 : index) : i64
    %146 = llvm.mlir.constant(-1 : index) : i64
    %147 = llvm.add %33, %146 : i64
    %148 = llvm.extractvalue %31[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %149 = llvm.mlir.constant(50 : index) : i64
    %150 = llvm.mul %145, %149 : i64
    %151 = llvm.add %150, %147 : i64
    %152 = llvm.getelementptr %148[%151] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %153 = llvm.load %152 : !llvm.ptr -> i32
    %154 = llvm.extractvalue %40[1] : !llvm.struct<(ptr, ptr, i64)> 
    %155 = llvm.load %154 : !llvm.ptr -> i32
    %156 = llvm.add %155, %153 : i32
    %157 = llvm.extractvalue %40[1] : !llvm.struct<(ptr, ptr, i64)> 
    llvm.store %156, %157 : i32, !llvm.ptr
    %158 = llvm.add %45, %44 : i64
    llvm.br ^bb1(%158 : i64)
  ^bb18:  // pred: ^bb1
    %159 = llvm.extractvalue %40[1] : !llvm.struct<(ptr, ptr, i64)> 
    %160 = llvm.load %159 : !llvm.ptr -> i32
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %163 = llvm.getelementptr %162[%161] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %160, %163 : i32, !llvm.ptr
    llvm.return
  }
}


module {
  llvm.func @kernel_jacobi_2d_imper(%arg0: i32, %arg1: i32, %arg2: !llvm.ptr, %arg3: !llvm.ptr, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: !llvm.ptr, %arg10: !llvm.ptr, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg9, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg10, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg11, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg12, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg14, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg13, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg15, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg2, %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg3, %9[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg4, %10[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg5, %11[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg7, %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg6, %13[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg8, %14[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.mlir.constant(2.000000e-01 : f64) : f64
    %17 = llvm.sext %arg1 : i32 to i64
    %18 = llvm.sext %arg0 : i32 to i64
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%19 : i64)
  ^bb1(%21: i64):  // 2 preds: ^bb0, ^bb14
    %22 = llvm.icmp "slt" %21, %18 : i64
    llvm.cond_br %22, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.mlir.constant(-1 : index) : i64
    %25 = llvm.add %17, %24 : i64
    %26 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%23 : i64)
  ^bb3(%27: i64):  // 2 preds: ^bb2, ^bb7
    %28 = llvm.icmp "slt" %27, %25 : i64
    llvm.cond_br %28, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.mlir.constant(-1 : index) : i64
    %31 = llvm.add %17, %30 : i64
    %32 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%29 : i64)
  ^bb5(%33: i64):  // 2 preds: ^bb4, ^bb6
    %34 = llvm.icmp "slt" %33, %31 : i64
    llvm.cond_br %34, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %35 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.mlir.constant(1000 : index) : i64
    %37 = llvm.mul %27, %36 : i64
    %38 = llvm.add %37, %33 : i64
    %39 = llvm.getelementptr %35[%38] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %40 = llvm.load %39 : !llvm.ptr -> f64
    %41 = llvm.mlir.constant(-1 : index) : i64
    %42 = llvm.add %33, %41 : i64
    %43 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %44 = llvm.mlir.constant(1000 : index) : i64
    %45 = llvm.mul %27, %44 : i64
    %46 = llvm.add %45, %42 : i64
    %47 = llvm.getelementptr %43[%46] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %48 = llvm.load %47 : !llvm.ptr -> f64
    %49 = llvm.fadd %40, %48 : f64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.add %33, %50 : i64
    %52 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.mlir.constant(1000 : index) : i64
    %54 = llvm.mul %27, %53 : i64
    %55 = llvm.add %54, %51 : i64
    %56 = llvm.getelementptr %52[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %57 = llvm.load %56 : !llvm.ptr -> f64
    %58 = llvm.fadd %49, %57 : f64
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.add %27, %59 : i64
    %61 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.mlir.constant(1000 : index) : i64
    %63 = llvm.mul %60, %62 : i64
    %64 = llvm.add %63, %33 : i64
    %65 = llvm.getelementptr %61[%64] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %66 = llvm.load %65 : !llvm.ptr -> f64
    %67 = llvm.fadd %58, %66 : f64
    %68 = llvm.mlir.constant(-1 : index) : i64
    %69 = llvm.add %27, %68 : i64
    %70 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.mlir.constant(1000 : index) : i64
    %72 = llvm.mul %69, %71 : i64
    %73 = llvm.add %72, %33 : i64
    %74 = llvm.getelementptr %70[%73] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %75 = llvm.load %74 : !llvm.ptr -> f64
    %76 = llvm.fadd %67, %75 : f64
    %77 = llvm.fmul %76, %16 : f64
    %78 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.mlir.constant(1000 : index) : i64
    %80 = llvm.mul %27, %79 : i64
    %81 = llvm.add %80, %33 : i64
    %82 = llvm.getelementptr %78[%81] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %77, %82 : f64, !llvm.ptr
    %83 = llvm.add %33, %32 : i64
    llvm.br ^bb5(%83 : i64)
  ^bb7:  // pred: ^bb5
    %84 = llvm.add %27, %26 : i64
    llvm.br ^bb3(%84 : i64)
  ^bb8:  // pred: ^bb3
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(-1 : index) : i64
    %87 = llvm.add %17, %86 : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%85 : i64)
  ^bb9(%89: i64):  // 2 preds: ^bb8, ^bb13
    %90 = llvm.icmp "slt" %89, %87 : i64
    llvm.cond_br %90, ^bb10, ^bb14
  ^bb10:  // pred: ^bb9
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.mlir.constant(-1 : index) : i64
    %93 = llvm.add %17, %92 : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb11(%91 : i64)
  ^bb11(%95: i64):  // 2 preds: ^bb10, ^bb12
    %96 = llvm.icmp "slt" %95, %93 : i64
    llvm.cond_br %96, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %97 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %98 = llvm.mlir.constant(1000 : index) : i64
    %99 = llvm.mul %89, %98 : i64
    %100 = llvm.add %99, %95 : i64
    %101 = llvm.getelementptr %97[%100] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %102 = llvm.load %101 : !llvm.ptr -> f64
    %103 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.mlir.constant(1000 : index) : i64
    %105 = llvm.mul %89, %104 : i64
    %106 = llvm.add %105, %95 : i64
    %107 = llvm.getelementptr %103[%106] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %102, %107 : f64, !llvm.ptr
    %108 = llvm.add %95, %94 : i64
    llvm.br ^bb11(%108 : i64)
  ^bb13:  // pred: ^bb11
    %109 = llvm.add %89, %88 : i64
    llvm.br ^bb9(%109 : i64)
  ^bb14:  // pred: ^bb9
    %110 = llvm.add %21, %20 : i64
    llvm.br ^bb1(%110 : i64)
  ^bb15:  // pred: ^bb1
    llvm.return
  }
}


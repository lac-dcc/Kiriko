module {
  llvm.func @kernel_syr2k(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: !llvm.ptr, %arg5: !llvm.ptr, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr, %arg12: !llvm.ptr, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: !llvm.ptr, %arg19: !llvm.ptr, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg18, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg19, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg20, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg21, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg23, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg22, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg24, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg11, %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg12, %9[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg13, %10[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg14, %11[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg16, %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg15, %13[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg17, %14[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.insertvalue %arg4, %16[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg5, %17[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg6, %18[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg7, %19[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg9, %20[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg8, %21[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg10, %22[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.sext %arg1 : i32 to i64
    %25 = llvm.sext %arg0 : i32 to i64
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%26 : i64)
  ^bb1(%28: i64):  // 2 preds: ^bb0, ^bb5
    %29 = llvm.icmp "slt" %28, %25 : i64
    llvm.cond_br %29, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%30 : i64)
  ^bb3(%32: i64):  // 2 preds: ^bb2, ^bb4
    %33 = llvm.icmp "slt" %32, %25 : i64
    llvm.cond_br %33, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %34 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.mlir.constant(1024 : index) : i64
    %36 = llvm.mul %28, %35 : i64
    %37 = llvm.add %36, %32 : i64
    %38 = llvm.getelementptr %34[%37] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %39 = llvm.load %38 : !llvm.ptr -> f64
    %40 = llvm.fmul %39, %arg3 : f64
    %41 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %42 = llvm.mlir.constant(1024 : index) : i64
    %43 = llvm.mul %28, %42 : i64
    %44 = llvm.add %43, %32 : i64
    %45 = llvm.getelementptr %41[%44] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %40, %45 : f64, !llvm.ptr
    %46 = llvm.add %32, %31 : i64
    llvm.br ^bb3(%46 : i64)
  ^bb5:  // pred: ^bb3
    %47 = llvm.add %28, %27 : i64
    llvm.br ^bb1(%47 : i64)
  ^bb6:  // pred: ^bb1
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%48 : i64)
  ^bb7(%50: i64):  // 2 preds: ^bb6, ^bb14
    %51 = llvm.icmp "slt" %50, %25 : i64
    llvm.cond_br %51, ^bb8, ^bb15
  ^bb8:  // pred: ^bb7
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%52 : i64)
  ^bb9(%54: i64):  // 2 preds: ^bb8, ^bb13
    %55 = llvm.icmp "slt" %54, %25 : i64
    llvm.cond_br %55, ^bb10, ^bb14
  ^bb10:  // pred: ^bb9
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb11(%56 : i64)
  ^bb11(%58: i64):  // 2 preds: ^bb10, ^bb12
    %59 = llvm.icmp "slt" %58, %24 : i64
    llvm.cond_br %59, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %60 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %61 = llvm.mlir.constant(1024 : index) : i64
    %62 = llvm.mul %50, %61 : i64
    %63 = llvm.add %62, %58 : i64
    %64 = llvm.getelementptr %60[%63] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %65 = llvm.load %64 : !llvm.ptr -> f64
    %66 = llvm.fmul %arg2, %65 : f64
    %67 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.mlir.constant(1024 : index) : i64
    %69 = llvm.mul %54, %68 : i64
    %70 = llvm.add %69, %58 : i64
    %71 = llvm.getelementptr %67[%70] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %72 = llvm.load %71 : !llvm.ptr -> f64
    %73 = llvm.fmul %66, %72 : f64
    %74 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.mlir.constant(1024 : index) : i64
    %76 = llvm.mul %50, %75 : i64
    %77 = llvm.add %76, %54 : i64
    %78 = llvm.getelementptr %74[%77] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %79 = llvm.load %78 : !llvm.ptr -> f64
    %80 = llvm.fadd %79, %73 : f64
    %81 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %82 = llvm.mlir.constant(1024 : index) : i64
    %83 = llvm.mul %50, %82 : i64
    %84 = llvm.add %83, %54 : i64
    %85 = llvm.getelementptr %81[%84] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %80, %85 : f64, !llvm.ptr
    %86 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %87 = llvm.mlir.constant(1024 : index) : i64
    %88 = llvm.mul %50, %87 : i64
    %89 = llvm.add %88, %58 : i64
    %90 = llvm.getelementptr %86[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %91 = llvm.load %90 : !llvm.ptr -> f64
    %92 = llvm.fmul %arg2, %91 : f64
    %93 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %94 = llvm.mlir.constant(1024 : index) : i64
    %95 = llvm.mul %54, %94 : i64
    %96 = llvm.add %95, %58 : i64
    %97 = llvm.getelementptr %93[%96] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %98 = llvm.load %97 : !llvm.ptr -> f64
    %99 = llvm.fmul %92, %98 : f64
    %100 = llvm.fadd %80, %99 : f64
    %101 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %102 = llvm.mlir.constant(1024 : index) : i64
    %103 = llvm.mul %50, %102 : i64
    %104 = llvm.add %103, %54 : i64
    %105 = llvm.getelementptr %101[%104] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %100, %105 : f64, !llvm.ptr
    %106 = llvm.add %58, %57 : i64
    llvm.br ^bb11(%106 : i64)
  ^bb13:  // pred: ^bb11
    %107 = llvm.add %54, %53 : i64
    llvm.br ^bb9(%107 : i64)
  ^bb14:  // pred: ^bb9
    %108 = llvm.add %50, %49 : i64
    llvm.br ^bb7(%108 : i64)
  ^bb15:  // pred: ^bb7
    llvm.return
  }
}


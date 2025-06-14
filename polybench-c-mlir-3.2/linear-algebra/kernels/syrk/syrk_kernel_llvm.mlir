module {
  llvm.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: !llvm.ptr, %arg5: !llvm.ptr, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr, %arg12: !llvm.ptr, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg11, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg12, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg13, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg14, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg16, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg15, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg17, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg4, %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg5, %9[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg6, %10[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg9, %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg8, %13[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg10, %14[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.sext %arg1 : i32 to i64
    %17 = llvm.sext %arg0 : i32 to i64
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%18 : i64)
  ^bb1(%20: i64):  // 2 preds: ^bb0, ^bb5
    %21 = llvm.icmp "slt" %20, %17 : i64
    llvm.cond_br %21, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%22 : i64)
  ^bb3(%24: i64):  // 2 preds: ^bb2, ^bb4
    %25 = llvm.icmp "slt" %24, %17 : i64
    llvm.cond_br %25, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %26 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.mlir.constant(1024 : index) : i64
    %28 = llvm.mul %20, %27 : i64
    %29 = llvm.add %28, %24 : i64
    %30 = llvm.getelementptr %26[%29] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %31 = llvm.load %30 : !llvm.ptr -> f64
    %32 = llvm.fmul %31, %arg3 : f64
    %33 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.mlir.constant(1024 : index) : i64
    %35 = llvm.mul %20, %34 : i64
    %36 = llvm.add %35, %24 : i64
    %37 = llvm.getelementptr %33[%36] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %32, %37 : f64, !llvm.ptr
    %38 = llvm.add %24, %23 : i64
    llvm.br ^bb3(%38 : i64)
  ^bb5:  // pred: ^bb3
    %39 = llvm.add %20, %19 : i64
    llvm.br ^bb1(%39 : i64)
  ^bb6:  // pred: ^bb1
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%40 : i64)
  ^bb7(%42: i64):  // 2 preds: ^bb6, ^bb14
    %43 = llvm.icmp "slt" %42, %17 : i64
    llvm.cond_br %43, ^bb8, ^bb15
  ^bb8:  // pred: ^bb7
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%44 : i64)
  ^bb9(%46: i64):  // 2 preds: ^bb8, ^bb13
    %47 = llvm.icmp "slt" %46, %17 : i64
    llvm.cond_br %47, ^bb10, ^bb14
  ^bb10:  // pred: ^bb9
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb11(%48 : i64)
  ^bb11(%50: i64):  // 2 preds: ^bb10, ^bb12
    %51 = llvm.icmp "slt" %50, %16 : i64
    llvm.cond_br %51, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %52 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.mlir.constant(1024 : index) : i64
    %54 = llvm.mul %42, %53 : i64
    %55 = llvm.add %54, %50 : i64
    %56 = llvm.getelementptr %52[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %57 = llvm.load %56 : !llvm.ptr -> f64
    %58 = llvm.fmul %arg2, %57 : f64
    %59 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.mlir.constant(1024 : index) : i64
    %61 = llvm.mul %46, %60 : i64
    %62 = llvm.add %61, %50 : i64
    %63 = llvm.getelementptr %59[%62] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %64 = llvm.load %63 : !llvm.ptr -> f64
    %65 = llvm.fmul %58, %64 : f64
    %66 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.mlir.constant(1024 : index) : i64
    %68 = llvm.mul %42, %67 : i64
    %69 = llvm.add %68, %46 : i64
    %70 = llvm.getelementptr %66[%69] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %71 = llvm.load %70 : !llvm.ptr -> f64
    %72 = llvm.fadd %71, %65 : f64
    %73 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %74 = llvm.mlir.constant(1024 : index) : i64
    %75 = llvm.mul %42, %74 : i64
    %76 = llvm.add %75, %46 : i64
    %77 = llvm.getelementptr %73[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %72, %77 : f64, !llvm.ptr
    %78 = llvm.add %50, %49 : i64
    llvm.br ^bb11(%78 : i64)
  ^bb13:  // pred: ^bb11
    %79 = llvm.add %46, %45 : i64
    llvm.br ^bb9(%79 : i64)
  ^bb14:  // pred: ^bb9
    %80 = llvm.add %42, %41 : i64
    llvm.br ^bb7(%80 : i64)
  ^bb15:  // pred: ^bb7
    llvm.return
  }
}


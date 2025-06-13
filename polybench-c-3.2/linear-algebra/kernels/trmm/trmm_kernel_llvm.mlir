module {
  llvm.func @kernel_trmm(%arg0: i32, %arg1: f64, %arg2: !llvm.ptr, %arg3: !llvm.ptr, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: !llvm.ptr, %arg10: !llvm.ptr, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64) {
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
    %16 = llvm.sext %arg0 : i32 to i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%17 : i64)
  ^bb1(%19: i64):  // 2 preds: ^bb0, ^bb8
    %20 = llvm.icmp "slt" %19, %16 : i64
    llvm.cond_br %20, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%21 : i64)
  ^bb3(%23: i64):  // 2 preds: ^bb2, ^bb7
    %24 = llvm.icmp "slt" %23, %16 : i64
    llvm.cond_br %24, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%25 : i64)
  ^bb5(%27: i64):  // 2 preds: ^bb4, ^bb6
    %28 = llvm.icmp "slt" %27, %19 : i64
    llvm.cond_br %28, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %29 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.mlir.constant(1024 : index) : i64
    %31 = llvm.mul %19, %30 : i64
    %32 = llvm.add %31, %27 : i64
    %33 = llvm.getelementptr %29[%32] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %34 = llvm.load %33 : !llvm.ptr -> f64
    %35 = llvm.fmul %arg1, %34 : f64
    %36 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %37 = llvm.mlir.constant(1024 : index) : i64
    %38 = llvm.mul %23, %37 : i64
    %39 = llvm.add %38, %27 : i64
    %40 = llvm.getelementptr %36[%39] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %41 = llvm.load %40 : !llvm.ptr -> f64
    %42 = llvm.fmul %35, %41 : f64
    %43 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %44 = llvm.mlir.constant(1024 : index) : i64
    %45 = llvm.mul %19, %44 : i64
    %46 = llvm.add %45, %23 : i64
    %47 = llvm.getelementptr %43[%46] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %48 = llvm.load %47 : !llvm.ptr -> f64
    %49 = llvm.fadd %48, %42 : f64
    %50 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %51 = llvm.mlir.constant(1024 : index) : i64
    %52 = llvm.mul %19, %51 : i64
    %53 = llvm.add %52, %23 : i64
    %54 = llvm.getelementptr %50[%53] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %49, %54 : f64, !llvm.ptr
    %55 = llvm.add %27, %26 : i64
    llvm.br ^bb5(%55 : i64)
  ^bb7:  // pred: ^bb5
    %56 = llvm.add %23, %22 : i64
    llvm.br ^bb3(%56 : i64)
  ^bb8:  // pred: ^bb3
    %57 = llvm.add %19, %18 : i64
    llvm.br ^bb1(%57 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
}


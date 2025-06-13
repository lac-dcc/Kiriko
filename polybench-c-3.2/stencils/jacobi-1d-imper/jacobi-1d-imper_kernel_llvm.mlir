module {
  llvm.func @kernel_jacobi_1d_imper(%arg0: i32, %arg1: i32, %arg2: !llvm.ptr, %arg3: !llvm.ptr, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr, %arg8: !llvm.ptr, %arg9: i64, %arg10: i64, %arg11: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg7, %0[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg8, %1[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg9, %2[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg10, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg11, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %7 = llvm.insertvalue %arg2, %6[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %8 = llvm.insertvalue %arg3, %7[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.insertvalue %arg4, %8[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg5, %9[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %arg6, %10[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.mlir.constant(3.333300e-01 : f64) : f64
    %13 = llvm.sext %arg1 : i32 to i64
    %14 = llvm.sext %arg0 : i32 to i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%15 : i64)
  ^bb1(%17: i64):  // 2 preds: ^bb0, ^bb8
    %18 = llvm.icmp "slt" %17, %14 : i64
    llvm.cond_br %18, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.constant(-1 : index) : i64
    %21 = llvm.add %13, %20 : i64
    %22 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%19 : i64)
  ^bb3(%23: i64):  // 2 preds: ^bb2, ^bb4
    %24 = llvm.icmp "slt" %23, %21 : i64
    llvm.cond_br %24, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %25 = llvm.mlir.constant(-1 : index) : i64
    %26 = llvm.add %23, %25 : i64
    %27 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.getelementptr %27[%26] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %29 = llvm.load %28 : !llvm.ptr -> f64
    %30 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.getelementptr %30[%23] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %32 = llvm.load %31 : !llvm.ptr -> f64
    %33 = llvm.fadd %29, %32 : f64
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.add %23, %34 : i64
    %36 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.getelementptr %36[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %38 = llvm.load %37 : !llvm.ptr -> f64
    %39 = llvm.fadd %33, %38 : f64
    %40 = llvm.fmul %39, %12 : f64
    %41 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.getelementptr %41[%23] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %40, %42 : f64, !llvm.ptr
    %43 = llvm.add %23, %22 : i64
    llvm.br ^bb3(%43 : i64)
  ^bb5:  // pred: ^bb3
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.mlir.constant(-1 : index) : i64
    %46 = llvm.add %13, %45 : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb6(%44 : i64)
  ^bb6(%48: i64):  // 2 preds: ^bb5, ^bb7
    %49 = llvm.icmp "slt" %48, %46 : i64
    llvm.cond_br %49, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %50 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.getelementptr %50[%48] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %52 = llvm.load %51 : !llvm.ptr -> f64
    %53 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.getelementptr %53[%48] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %52, %54 : f64, !llvm.ptr
    %55 = llvm.add %48, %47 : i64
    llvm.br ^bb6(%55 : i64)
  ^bb8:  // pred: ^bb6
    %56 = llvm.add %17, %16 : i64
    llvm.br ^bb1(%56 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
}


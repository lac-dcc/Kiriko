module {
  llvm.func @kernel_floyd_warshall(%arg0: i32, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg1, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg2, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg3, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg4, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg6, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg5, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg7, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.sext %arg0 : i32 to i64
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%9 : i64)
  ^bb1(%11: i64):  // 2 preds: ^bb0, ^bb8
    %12 = llvm.icmp "slt" %11, %8 : i64
    llvm.cond_br %12, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%13 : i64)
  ^bb3(%15: i64):  // 2 preds: ^bb2, ^bb7
    %16 = llvm.icmp "slt" %15, %8 : i64
    llvm.cond_br %16, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%17 : i64)
  ^bb5(%19: i64):  // 2 preds: ^bb4, ^bb6
    %20 = llvm.icmp "slt" %19, %8 : i64
    llvm.cond_br %20, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %21 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.mlir.constant(1024 : index) : i64
    %23 = llvm.mul %15, %22 : i64
    %24 = llvm.add %23, %19 : i64
    %25 = llvm.getelementptr %21[%24] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %26 = llvm.load %25 : !llvm.ptr -> f64
    %27 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.mlir.constant(1024 : index) : i64
    %29 = llvm.mul %15, %28 : i64
    %30 = llvm.add %29, %11 : i64
    %31 = llvm.getelementptr %27[%30] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %32 = llvm.load %31 : !llvm.ptr -> f64
    %33 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.mlir.constant(1024 : index) : i64
    %35 = llvm.mul %11, %34 : i64
    %36 = llvm.add %35, %19 : i64
    %37 = llvm.getelementptr %33[%36] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %38 = llvm.load %37 : !llvm.ptr -> f64
    %39 = llvm.fadd %32, %38 : f64
    %40 = llvm.fcmp "olt" %26, %39 : f64
    %41 = llvm.select %40, %26, %39 : i1, f64
    %42 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %43 = llvm.mlir.constant(1024 : index) : i64
    %44 = llvm.mul %15, %43 : i64
    %45 = llvm.add %44, %19 : i64
    %46 = llvm.getelementptr %42[%45] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %41, %46 : f64, !llvm.ptr
    %47 = llvm.add %19, %18 : i64
    llvm.br ^bb5(%47 : i64)
  ^bb7:  // pred: ^bb5
    %48 = llvm.add %15, %14 : i64
    llvm.br ^bb3(%48 : i64)
  ^bb8:  // pred: ^bb3
    %49 = llvm.add %11, %10 : i64
    llvm.br ^bb1(%49 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
}


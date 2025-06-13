module {
  llvm.func @kernel_lu(%arg0: i32, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64) {
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
  ^bb1(%11: i64):  // 2 preds: ^bb0, ^bb11
    %12 = llvm.icmp "slt" %11, %8 : i64
    llvm.cond_br %12, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.add %11, %13 : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%14 : i64)
  ^bb3(%16: i64):  // 2 preds: ^bb2, ^bb4
    %17 = llvm.icmp "slt" %16, %8 : i64
    llvm.cond_br %17, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %18 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.mlir.constant(1024 : index) : i64
    %20 = llvm.mul %11, %19 : i64
    %21 = llvm.add %20, %16 : i64
    %22 = llvm.getelementptr %18[%21] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %23 = llvm.load %22 : !llvm.ptr -> f64
    %24 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.mlir.constant(1024 : index) : i64
    %26 = llvm.mul %11, %25 : i64
    %27 = llvm.add %26, %11 : i64
    %28 = llvm.getelementptr %24[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %29 = llvm.load %28 : !llvm.ptr -> f64
    %30 = llvm.fdiv %23, %29 : f64
    %31 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.mlir.constant(1024 : index) : i64
    %33 = llvm.mul %11, %32 : i64
    %34 = llvm.add %33, %16 : i64
    %35 = llvm.getelementptr %31[%34] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %30, %35 : f64, !llvm.ptr
    %36 = llvm.add %16, %15 : i64
    llvm.br ^bb3(%36 : i64)
  ^bb5:  // pred: ^bb3
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.add %11, %37 : i64
    %39 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb6(%38 : i64)
  ^bb6(%40: i64):  // 2 preds: ^bb5, ^bb10
    %41 = llvm.icmp "slt" %40, %8 : i64
    llvm.cond_br %41, ^bb7, ^bb11
  ^bb7:  // pred: ^bb6
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.add %11, %42 : i64
    %44 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb8(%43 : i64)
  ^bb8(%45: i64):  // 2 preds: ^bb7, ^bb9
    %46 = llvm.icmp "slt" %45, %8 : i64
    llvm.cond_br %46, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    %47 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %48 = llvm.mlir.constant(1024 : index) : i64
    %49 = llvm.mul %40, %48 : i64
    %50 = llvm.add %49, %45 : i64
    %51 = llvm.getelementptr %47[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %52 = llvm.load %51 : !llvm.ptr -> f64
    %53 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.mlir.constant(1024 : index) : i64
    %55 = llvm.mul %40, %54 : i64
    %56 = llvm.add %55, %11 : i64
    %57 = llvm.getelementptr %53[%56] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %58 = llvm.load %57 : !llvm.ptr -> f64
    %59 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.mlir.constant(1024 : index) : i64
    %61 = llvm.mul %11, %60 : i64
    %62 = llvm.add %61, %45 : i64
    %63 = llvm.getelementptr %59[%62] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %64 = llvm.load %63 : !llvm.ptr -> f64
    %65 = llvm.fmul %58, %64 : f64
    %66 = llvm.fsub %52, %65 : f64
    %67 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.mlir.constant(1024 : index) : i64
    %69 = llvm.mul %40, %68 : i64
    %70 = llvm.add %69, %45 : i64
    %71 = llvm.getelementptr %67[%70] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %66, %71 : f64, !llvm.ptr
    %72 = llvm.add %45, %44 : i64
    llvm.br ^bb8(%72 : i64)
  ^bb10:  // pred: ^bb8
    %73 = llvm.add %40, %39 : i64
    llvm.br ^bb6(%73 : i64)
  ^bb11:  // pred: ^bb6
    %74 = llvm.add %11, %10 : i64
    llvm.br ^bb1(%74 : i64)
  ^bb12:  // pred: ^bb1
    llvm.return
  }
}


module {
  llvm.func @kernel_cholesky(%arg0: i32, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg6, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg7, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg8, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg9, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg11, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg10, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg12, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %9 = llvm.insertvalue %arg1, %8[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg2, %9[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %arg3, %10[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.insertvalue %arg4, %11[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %13 = llvm.insertvalue %arg5, %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.mlir.constant(1.000000e+00 : f64) : f64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.alloca %15 x f64 : (i64) -> !llvm.ptr
    %17 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %18 = llvm.insertvalue %16, %17[0] : !llvm.struct<(ptr, ptr, i64)> 
    %19 = llvm.insertvalue %16, %18[1] : !llvm.struct<(ptr, ptr, i64)> 
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.insertvalue %20, %19[2] : !llvm.struct<(ptr, ptr, i64)> 
    %22 = llvm.mlir.undef : f64
    %23 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64)> 
    llvm.store %22, %23 : f64, !llvm.ptr
    %24 = llvm.sext %arg0 : i32 to i64
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%25 : i64)
  ^bb1(%27: i64):  // 2 preds: ^bb0, ^bb11
    %28 = llvm.icmp "slt" %27, %24 : i64
    llvm.cond_br %28, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %29 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.mlir.constant(1024 : index) : i64
    %31 = llvm.mul %27, %30 : i64
    %32 = llvm.add %31, %27 : i64
    %33 = llvm.getelementptr %29[%32] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %34 = llvm.load %33 : !llvm.ptr -> f64
    %35 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64)> 
    llvm.store %34, %35 : f64, !llvm.ptr
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%36 : i64)
  ^bb3(%38: i64):  // 2 preds: ^bb2, ^bb4
    %39 = llvm.icmp "slt" %38, %27 : i64
    llvm.cond_br %39, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %40 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64)> 
    %41 = llvm.load %40 : !llvm.ptr -> f64
    %42 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %43 = llvm.mlir.constant(1024 : index) : i64
    %44 = llvm.mul %27, %43 : i64
    %45 = llvm.add %44, %38 : i64
    %46 = llvm.getelementptr %42[%45] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %47 = llvm.load %46 : !llvm.ptr -> f64
    %48 = llvm.fmul %47, %47 : f64
    %49 = llvm.fsub %41, %48 : f64
    %50 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64)> 
    llvm.store %49, %50 : f64, !llvm.ptr
    %51 = llvm.add %38, %37 : i64
    llvm.br ^bb3(%51 : i64)
  ^bb5:  // pred: ^bb3
    %52 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64)> 
    %53 = llvm.load %52 : !llvm.ptr -> f64
    %54 = llvm.intr.sqrt(%53) : (f64) -> f64
    %55 = llvm.fdiv %14, %54 : f64
    %56 = llvm.extractvalue %13[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.getelementptr %56[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %55, %57 : f64, !llvm.ptr
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.add %27, %58 : i64
    %60 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb6(%59 : i64)
  ^bb6(%61: i64):  // 2 preds: ^bb5, ^bb10
    %62 = llvm.icmp "slt" %61, %24 : i64
    llvm.cond_br %62, ^bb7, ^bb11
  ^bb7:  // pred: ^bb6
    %63 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.mlir.constant(1024 : index) : i64
    %65 = llvm.mul %27, %64 : i64
    %66 = llvm.add %65, %61 : i64
    %67 = llvm.getelementptr %63[%66] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %68 = llvm.load %67 : !llvm.ptr -> f64
    %69 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64)> 
    llvm.store %68, %69 : f64, !llvm.ptr
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb8(%70 : i64)
  ^bb8(%72: i64):  // 2 preds: ^bb7, ^bb9
    %73 = llvm.icmp "slt" %72, %27 : i64
    llvm.cond_br %73, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    %74 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64)> 
    %75 = llvm.load %74 : !llvm.ptr -> f64
    %76 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %77 = llvm.mlir.constant(1024 : index) : i64
    %78 = llvm.mul %61, %77 : i64
    %79 = llvm.add %78, %72 : i64
    %80 = llvm.getelementptr %76[%79] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %81 = llvm.load %80 : !llvm.ptr -> f64
    %82 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %83 = llvm.mlir.constant(1024 : index) : i64
    %84 = llvm.mul %27, %83 : i64
    %85 = llvm.add %84, %72 : i64
    %86 = llvm.getelementptr %82[%85] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %87 = llvm.load %86 : !llvm.ptr -> f64
    %88 = llvm.fmul %81, %87 : f64
    %89 = llvm.fsub %75, %88 : f64
    %90 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64)> 
    llvm.store %89, %90 : f64, !llvm.ptr
    %91 = llvm.add %72, %71 : i64
    llvm.br ^bb8(%91 : i64)
  ^bb10:  // pred: ^bb8
    %92 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64)> 
    %93 = llvm.load %92 : !llvm.ptr -> f64
    %94 = llvm.extractvalue %13[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %95 = llvm.getelementptr %94[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %96 = llvm.load %95 : !llvm.ptr -> f64
    %97 = llvm.fmul %93, %96 : f64
    %98 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %99 = llvm.mlir.constant(1024 : index) : i64
    %100 = llvm.mul %61, %99 : i64
    %101 = llvm.add %100, %27 : i64
    %102 = llvm.getelementptr %98[%101] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %97, %102 : f64, !llvm.ptr
    %103 = llvm.add %61, %60 : i64
    llvm.br ^bb6(%103 : i64)
  ^bb11:  // pred: ^bb6
    %104 = llvm.add %27, %26 : i64
    llvm.br ^bb1(%104 : i64)
  ^bb12:  // pred: ^bb1
    llvm.return
  }
}


module {
  llvm.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: !llvm.ptr, %arg4: !llvm.ptr, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: !llvm.ptr, %arg13: !llvm.ptr, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: !llvm.ptr, %arg20: !llvm.ptr, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %1 = llvm.insertvalue %arg19, %0[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.insertvalue %arg20, %1[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.insertvalue %arg21, %2[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.insertvalue %arg22, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.insertvalue %arg25, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.insertvalue %arg23, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.insertvalue %arg26, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.insertvalue %arg24, %7[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.insertvalue %arg27, %8[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %11 = llvm.insertvalue %arg12, %10[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg13, %11[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg14, %12[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg15, %13[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg17, %14[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %arg16, %15[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %arg18, %16[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %19 = llvm.insertvalue %arg3, %18[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.insertvalue %arg4, %19[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %21 = llvm.insertvalue %arg5, %20[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.insertvalue %arg6, %21[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.insertvalue %arg9, %22[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %24 = llvm.insertvalue %arg7, %23[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %25 = llvm.insertvalue %arg10, %24[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %26 = llvm.insertvalue %arg8, %25[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.insertvalue %arg11, %26[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %28 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %29 = llvm.sext %arg1 : i32 to i64
    %30 = llvm.sext %arg2 : i32 to i64
    %31 = llvm.sext %arg0 : i32 to i64
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%32 : i64)
  ^bb1(%34: i64):  // 2 preds: ^bb0, ^bb14
    %35 = llvm.icmp "slt" %34, %31 : i64
    llvm.cond_br %35, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%36 : i64)
  ^bb3(%38: i64):  // 2 preds: ^bb2, ^bb13
    %39 = llvm.icmp "slt" %38, %29 : i64
    llvm.cond_br %39, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%40 : i64)
  ^bb5(%42: i64):  // 2 preds: ^bb4, ^bb9
    %43 = llvm.icmp "slt" %42, %30 : i64
    llvm.cond_br %43, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %44 = llvm.extractvalue %9[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %45 = llvm.mlir.constant(16384 : index) : i64
    %46 = llvm.mul %34, %45 : i64
    %47 = llvm.mlir.constant(128 : index) : i64
    %48 = llvm.mul %38, %47 : i64
    %49 = llvm.add %46, %48 : i64
    %50 = llvm.add %49, %42 : i64
    %51 = llvm.getelementptr %44[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %28, %51 : f64, !llvm.ptr
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%52 : i64)
  ^bb7(%54: i64):  // 2 preds: ^bb6, ^bb8
    %55 = llvm.icmp "slt" %54, %30 : i64
    llvm.cond_br %55, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %56 = llvm.extractvalue %9[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %57 = llvm.mlir.constant(16384 : index) : i64
    %58 = llvm.mul %34, %57 : i64
    %59 = llvm.mlir.constant(128 : index) : i64
    %60 = llvm.mul %38, %59 : i64
    %61 = llvm.add %58, %60 : i64
    %62 = llvm.add %61, %42 : i64
    %63 = llvm.getelementptr %56[%62] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %64 = llvm.load %63 : !llvm.ptr -> f64
    %65 = llvm.extractvalue %27[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %66 = llvm.mlir.constant(16384 : index) : i64
    %67 = llvm.mul %34, %66 : i64
    %68 = llvm.mlir.constant(128 : index) : i64
    %69 = llvm.mul %38, %68 : i64
    %70 = llvm.add %67, %69 : i64
    %71 = llvm.add %70, %54 : i64
    %72 = llvm.getelementptr %65[%71] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %73 = llvm.load %72 : !llvm.ptr -> f64
    %74 = llvm.extractvalue %17[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.mlir.constant(128 : index) : i64
    %76 = llvm.mul %54, %75 : i64
    %77 = llvm.add %76, %42 : i64
    %78 = llvm.getelementptr %74[%77] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %79 = llvm.load %78 : !llvm.ptr -> f64
    %80 = llvm.fmul %73, %79 : f64
    %81 = llvm.fadd %64, %80 : f64
    %82 = llvm.extractvalue %9[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %83 = llvm.mlir.constant(16384 : index) : i64
    %84 = llvm.mul %34, %83 : i64
    %85 = llvm.mlir.constant(128 : index) : i64
    %86 = llvm.mul %38, %85 : i64
    %87 = llvm.add %84, %86 : i64
    %88 = llvm.add %87, %42 : i64
    %89 = llvm.getelementptr %82[%88] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %81, %89 : f64, !llvm.ptr
    %90 = llvm.add %54, %53 : i64
    llvm.br ^bb7(%90 : i64)
  ^bb9:  // pred: ^bb7
    %91 = llvm.add %42, %41 : i64
    llvm.br ^bb5(%91 : i64)
  ^bb10:  // pred: ^bb5
    %92 = llvm.mlir.constant(0 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb11(%92 : i64)
  ^bb11(%94: i64):  // 2 preds: ^bb10, ^bb12
    %95 = llvm.icmp "slt" %94, %31 : i64
    llvm.cond_br %95, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %96 = llvm.extractvalue %9[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.mlir.constant(16384 : index) : i64
    %98 = llvm.mul %34, %97 : i64
    %99 = llvm.mlir.constant(128 : index) : i64
    %100 = llvm.mul %38, %99 : i64
    %101 = llvm.add %98, %100 : i64
    %102 = llvm.add %101, %94 : i64
    %103 = llvm.getelementptr %96[%102] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %104 = llvm.load %103 : !llvm.ptr -> f64
    %105 = llvm.extractvalue %27[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %106 = llvm.mlir.constant(16384 : index) : i64
    %107 = llvm.mul %34, %106 : i64
    %108 = llvm.mlir.constant(128 : index) : i64
    %109 = llvm.mul %38, %108 : i64
    %110 = llvm.add %107, %109 : i64
    %111 = llvm.add %110, %94 : i64
    %112 = llvm.getelementptr %105[%111] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %104, %112 : f64, !llvm.ptr
    %113 = llvm.add %94, %93 : i64
    llvm.br ^bb11(%113 : i64)
  ^bb13:  // pred: ^bb11
    %114 = llvm.add %38, %37 : i64
    llvm.br ^bb3(%114 : i64)
  ^bb14:  // pred: ^bb3
    %115 = llvm.add %34, %33 : i64
    llvm.br ^bb1(%115 : i64)
  ^bb15:  // pred: ^bb1
    llvm.return
  }
}


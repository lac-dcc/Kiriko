module {
  llvm.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: !llvm.ptr, %arg3: !llvm.ptr, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg2, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg3, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg4, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg5, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg6, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.constant(9.000000e+00 : f64) : f64
    %9 = llvm.sext %arg0 : i32 to i64
    %10 = llvm.sext %arg1 : i32 to i64
    %11 = llvm.mlir.constant(0 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%11 : i64)
  ^bb1(%13: i64):  // 2 preds: ^bb0, ^bb8
    %14 = llvm.icmp "slt" %13, %9 : i64
    llvm.cond_br %14, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(-1 : index) : i64
    %17 = llvm.add %10, %16 : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%15 : i64)
  ^bb3(%19: i64):  // 2 preds: ^bb2, ^bb7
    %20 = llvm.icmp "slt" %19, %17 : i64
    llvm.cond_br %20, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.mlir.constant(-1 : index) : i64
    %23 = llvm.add %10, %22 : i64
    %24 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%21 : i64)
  ^bb5(%25: i64):  // 2 preds: ^bb4, ^bb6
    %26 = llvm.icmp "slt" %25, %23 : i64
    llvm.cond_br %26, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %27 = llvm.mlir.constant(-1 : index) : i64
    %28 = llvm.add %19, %27 : i64
    %29 = llvm.mlir.constant(-1 : index) : i64
    %30 = llvm.add %25, %29 : i64
    %31 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.mlir.constant(1000 : index) : i64
    %33 = llvm.mul %28, %32 : i64
    %34 = llvm.add %33, %30 : i64
    %35 = llvm.getelementptr %31[%34] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %36 = llvm.load %35 : !llvm.ptr -> f64
    %37 = llvm.mlir.constant(-1 : index) : i64
    %38 = llvm.add %19, %37 : i64
    %39 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %40 = llvm.mlir.constant(1000 : index) : i64
    %41 = llvm.mul %38, %40 : i64
    %42 = llvm.add %41, %25 : i64
    %43 = llvm.getelementptr %39[%42] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %44 = llvm.load %43 : !llvm.ptr -> f64
    %45 = llvm.fadd %36, %44 : f64
    %46 = llvm.mlir.constant(-1 : index) : i64
    %47 = llvm.add %19, %46 : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.add %25, %48 : i64
    %50 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %51 = llvm.mlir.constant(1000 : index) : i64
    %52 = llvm.mul %47, %51 : i64
    %53 = llvm.add %52, %49 : i64
    %54 = llvm.getelementptr %50[%53] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %55 = llvm.load %54 : !llvm.ptr -> f64
    %56 = llvm.fadd %45, %55 : f64
    %57 = llvm.mlir.constant(-1 : index) : i64
    %58 = llvm.add %25, %57 : i64
    %59 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.mlir.constant(1000 : index) : i64
    %61 = llvm.mul %19, %60 : i64
    %62 = llvm.add %61, %58 : i64
    %63 = llvm.getelementptr %59[%62] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %64 = llvm.load %63 : !llvm.ptr -> f64
    %65 = llvm.fadd %56, %64 : f64
    %66 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.mlir.constant(1000 : index) : i64
    %68 = llvm.mul %19, %67 : i64
    %69 = llvm.add %68, %25 : i64
    %70 = llvm.getelementptr %66[%69] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %71 = llvm.load %70 : !llvm.ptr -> f64
    %72 = llvm.fadd %65, %71 : f64
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.add %25, %73 : i64
    %75 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %76 = llvm.mlir.constant(1000 : index) : i64
    %77 = llvm.mul %19, %76 : i64
    %78 = llvm.add %77, %74 : i64
    %79 = llvm.getelementptr %75[%78] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %80 = llvm.load %79 : !llvm.ptr -> f64
    %81 = llvm.fadd %72, %80 : f64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.add %19, %82 : i64
    %84 = llvm.mlir.constant(-1 : index) : i64
    %85 = llvm.add %25, %84 : i64
    %86 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %87 = llvm.mlir.constant(1000 : index) : i64
    %88 = llvm.mul %83, %87 : i64
    %89 = llvm.add %88, %85 : i64
    %90 = llvm.getelementptr %86[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %91 = llvm.load %90 : !llvm.ptr -> f64
    %92 = llvm.fadd %81, %91 : f64
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.add %19, %93 : i64
    %95 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %96 = llvm.mlir.constant(1000 : index) : i64
    %97 = llvm.mul %94, %96 : i64
    %98 = llvm.add %97, %25 : i64
    %99 = llvm.getelementptr %95[%98] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %100 = llvm.load %99 : !llvm.ptr -> f64
    %101 = llvm.fadd %92, %100 : f64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.add %19, %102 : i64
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.add %25, %104 : i64
    %106 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.mlir.constant(1000 : index) : i64
    %108 = llvm.mul %103, %107 : i64
    %109 = llvm.add %108, %105 : i64
    %110 = llvm.getelementptr %106[%109] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %111 = llvm.load %110 : !llvm.ptr -> f64
    %112 = llvm.fadd %101, %111 : f64
    %113 = llvm.fdiv %112, %8 : f64
    %114 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %115 = llvm.mlir.constant(1000 : index) : i64
    %116 = llvm.mul %19, %115 : i64
    %117 = llvm.add %116, %25 : i64
    %118 = llvm.getelementptr %114[%117] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %113, %118 : f64, !llvm.ptr
    %119 = llvm.add %25, %24 : i64
    llvm.br ^bb5(%119 : i64)
  ^bb7:  // pred: ^bb5
    %120 = llvm.add %19, %18 : i64
    llvm.br ^bb3(%120 : i64)
  ^bb8:  // pred: ^bb3
    %121 = llvm.add %13, %12 : i64
    llvm.br ^bb1(%121 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
}


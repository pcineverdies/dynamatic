module {
  func.func @sobel(%arg0: memref<256xi32> {handshake.arg_name = "in"}, %arg1: memref<9xi32> {handshake.arg_name = "gX"}, %arg2: memref<9xi32> {handshake.arg_name = "gY"}, %arg3: memref<256xi32> {handshake.arg_name = "out"}) -> i32 {
    %c4 = arith.constant {handshake.name = "constant18"} 4 : index
    %c3 = arith.constant {handshake.name = "constant17"} 3 : index
    %c2 = arith.constant {handshake.name = "constant12"} 2 : index
    %c-1 = arith.constant {handshake.name = "constant11"} -1 : index
    %c1 = arith.constant {handshake.name = "constant7"} 1 : index
    %c15 = arith.constant {handshake.name = "constant6"} 15 : index
    %c0 = arith.constant {handshake.name = "constant5"} 0 : index
    %c2_i32 = arith.constant {handshake.name = "constant0"} 2 : i32
    %false = arith.constant {handshake.name = "constant1"} false
    %c255_i32 = arith.constant {handshake.name = "constant2"} 255 : i32
    %c5_i32 = arith.constant {handshake.name = "constant3"} 5 : i32
    %c0_i32 = arith.constant {handshake.name = "constant4"} 0 : i32
    %0 = llvm.mlir.undef {handshake.name = "mlir.undef0"} : i32
    cf.br ^bb1(%c0, %0, %0, %c0_i32 : index, i32, i32, i32) {handshake.name = "br0"}
  ^bb1(%1: index, %2: i32, %3: i32, %4: i32):  // 2 preds: ^bb0, ^bb19
    cf.br ^bb2(%c0, %2, %3, %4 : index, i32, i32, i32) {handshake.name = "br1"}
  ^bb2(%5: index, %6: i32, %7: i32, %8: i32):  // 2 preds: ^bb1, ^bb18
    %9 = arith.index_cast %5 {handshake.name = "index_cast0"} : index to i32
    %10 = arith.cmpi eq, %9, %c0_i32 {handshake.name = "cmpi0"} : i32
    %11 = arith.extui %10 {handshake.name = "extui0"} : i1 to i32
    %12 = arith.cmpi eq, %9, %c5_i32 {handshake.name = "cmpi1"} : i32
    %13 = arith.cmpi eq, %11, %c0_i32 {handshake.name = "cmpi2"} : i32
    %14 = arith.andi %13, %12 {handshake.name = "andi0"} : i1
    %15 = arith.ori %10, %14 {handshake.name = "ori0"} : i1
    %16 = arith.extsi %15 {handshake.name = "extsi0"} : i1 to i32
    %17 = arith.cmpi eq, %16, %c0_i32 {handshake.name = "cmpi3"} : i32
    %18 = arith.select %17, %c2_i32, %7 {handshake.name = "select0"} : i32
    cf.cond_br %17, ^bb3, ^bb16 {handshake.name = "cond_br0"}
  ^bb3:  // pred: ^bb2
    %19 = memref.load %arg0[%5] {handshake.name = "load3"} : memref<256xi32>
    cf.br ^bb4(%c-1, %c0_i32, %c0_i32, %6 : index, i32, i32, i32) {handshake.name = "br2"}
  ^bb4(%20: index, %21: i32, %22: i32, %23: i32):  // 2 preds: ^bb3, ^bb6
    cf.br ^bb5(%c-1, %21, %22 : index, i32, i32) {handshake.name = "br3"}
  ^bb5(%24: index, %25: i32, %26: i32):  // 2 preds: ^bb4, ^bb5
    %27 = arith.muli %20, %c3 {handshake.name = "muli2"} : index
    %28 = arith.addi %24, %27 {handshake.name = "addi4"} : index
    %29 = arith.addi %28, %c4 {handshake.name = "addi5"} : index
    %30 = memref.load %arg1[%29] {handshake.name = "load4"} : memref<9xi32>
    %31 = arith.muli %19, %30 {handshake.name = "muli0"} : i32
    %32 = arith.addi %26, %31 {handshake.name = "addi0"} : i32
    %33 = arith.muli %20, %c3 {handshake.name = "muli3"} : index
    %34 = arith.addi %24, %33 {handshake.name = "addi6"} : index
    %35 = arith.addi %34, %c4 {handshake.name = "addi7"} : index
    %36 = memref.load %arg2[%35] {handshake.name = "load5"} : memref<9xi32>
    %37 = arith.muli %19, %36 {handshake.name = "muli1"} : i32
    %38 = arith.addi %25, %37 {handshake.name = "addi1"} : i32
    %39 = arith.addi %24, %c1 {handshake.name = "addi9"} : index
    %40 = arith.cmpi ult, %39, %c2 {handshake.name = "cmpi8"} : index
    cf.cond_br %40, ^bb5(%39, %38, %32 : index, i32, i32), ^bb6 {handshake.name = "cond_br1"}
  ^bb6:  // pred: ^bb5
    %41 = arith.addi %20, %c1 {handshake.name = "addi10"} : index
    %42 = arith.cmpi ult, %41, %c2 {handshake.name = "cmpi9"} : index
    cf.cond_br %42, ^bb4(%41, %38, %32, %c2_i32 : index, i32, i32, i32), ^bb7 {handshake.name = "cond_br2"}
  ^bb7:  // pred: ^bb6
    %43 = arith.cmpi sgt, %32, %c255_i32 {handshake.name = "cmpi4"} : i32
    %44 = arith.select %43, %c255_i32, %32 {handshake.name = "select1"} : i32
    cf.cond_br %43, ^bb8, ^bb9 {handshake.name = "cond_br3"}
  ^bb8:  // pred: ^bb7
    cf.br ^bb10(%false : i1) {handshake.name = "br4"}
  ^bb9:  // pred: ^bb7
    %45 = arith.cmpi slt, %32, %c0_i32 {handshake.name = "cmpi5"} : i32
    cf.br ^bb10(%45 : i1) {handshake.name = "br5"}
  ^bb10(%46: i1):  // 2 preds: ^bb8, ^bb9
    cf.br ^bb11 {handshake.name = "br6"}
  ^bb11:  // pred: ^bb10
    %47 = arith.select %46, %c0_i32, %44 {handshake.name = "select2"} : i32
    %48 = arith.cmpi sgt, %38, %c255_i32 {handshake.name = "cmpi6"} : i32
    %49 = arith.select %48, %c255_i32, %38 {handshake.name = "select3"} : i32
    cf.cond_br %48, ^bb12, ^bb13 {handshake.name = "cond_br4"}
  ^bb12:  // pred: ^bb11
    cf.br ^bb14(%false : i1) {handshake.name = "br7"}
  ^bb13:  // pred: ^bb11
    %50 = arith.cmpi slt, %38, %c0_i32 {handshake.name = "cmpi7"} : i32
    cf.br ^bb14(%50 : i1) {handshake.name = "br8"}
  ^bb14(%51: i1):  // 2 preds: ^bb12, ^bb13
    cf.br ^bb15 {handshake.name = "br9"}
  ^bb15:  // pred: ^bb14
    %52 = arith.select %51, %c0_i32, %49 {handshake.name = "select4"} : i32
    %53 = arith.addi %47, %52 {handshake.name = "addi2"} : i32
    %54 = arith.addi %8, %53 {handshake.name = "addi3"} : i32
    cf.br ^bb17(%c2_i32, %54 : i32, i32) {handshake.name = "br10"}
  ^bb16:  // pred: ^bb2
    cf.br ^bb17(%6, %8 : i32, i32) {handshake.name = "br11"}
  ^bb17(%55: i32, %56: i32):  // 2 preds: ^bb15, ^bb16
    cf.br ^bb18 {handshake.name = "br12"}
  ^bb18:  // pred: ^bb17
    %57 = arith.trunci %56 {handshake.name = "trunci0"} : i32 to i8
    %58 = arith.extui %57 {handshake.name = "extui1"} : i8 to i32
    %59 = arith.subi %c255_i32, %58 {handshake.name = "subi0"} : i32
    %60 = arith.addi %5, %1 {handshake.name = "addi8"} : index
    memref.store %59, %arg3[%60] {handshake.deps = #handshake<deps[<"store1" (1) [[1, 14], [-14, -1]]>]>, handshake.name = "store1"} : memref<256xi32>
    %61 = arith.addi %5, %c1 {handshake.name = "addi11"} : index
    %62 = arith.cmpi ult, %61, %c15 {handshake.name = "cmpi10"} : index
    cf.cond_br %62, ^bb2(%61, %55, %18, %56 : index, i32, i32, i32), ^bb19 {handshake.name = "cond_br5"}
  ^bb19:  // pred: ^bb18
    %63 = arith.addi %1, %c1 {handshake.name = "addi12"} : index
    %64 = arith.cmpi ult, %63, %c15 {handshake.name = "cmpi11"} : index
    cf.cond_br %64, ^bb1(%63, %55, %18, %56 : index, i32, i32, i32), ^bb20 {handshake.name = "cond_br6"}
  ^bb20:  // pred: ^bb19
    return {handshake.name = "return0"} %56 : i32
  }
}


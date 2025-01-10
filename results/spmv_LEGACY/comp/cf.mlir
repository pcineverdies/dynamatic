module {
  func.func @spmv(%arg0: i32 {handshake.arg_name = "n"}, %arg1: memref<10xi32> {handshake.arg_name = "row"}, %arg2: memref<10xi32> {handshake.arg_name = "col"}, %arg3: memref<10xi32> {handshake.arg_name = "val"}, %arg4: memref<10xi32> {handshake.arg_name = "vec"}, %arg5: memref<10xi32> {handshake.arg_name = "out"}) -> i32 {
    %c0 = arith.constant {handshake.name = "constant2"} 0 : index
    %c1 = arith.constant {handshake.name = "constant0"} 1 : index
    %c0_i32 = arith.constant {handshake.name = "constant1"} 0 : i32
    %0 = arith.index_cast %arg0 {handshake.name = "index_cast0"} : i32 to index
    cf.br ^bb1(%c0, %c0_i32 : index, i32) {handshake.name = "br0"}
  ^bb1(%1: index, %2: i32):  // 2 preds: ^bb0, ^bb5
    %3 = arith.cmpi ult, %1, %0 {handshake.name = "cmpi0"} : index
    cf.cond_br %3, ^bb2, ^bb6 {handshake.name = "cond_br0"}
  ^bb2:  // pred: ^bb1
    %4 = memref.load %arg1[%1] {handshake.name = "load5"} : memref<10xi32>
    %5 = arith.addi %1, %c1 {handshake.name = "addi1"} : index
    %6 = memref.load %arg1[%5] {handshake.name = "load6"} : memref<10xi32>
    %7 = arith.index_cast %6 {handshake.name = "index_cast1"} : i32 to index
    %8 = arith.index_cast %4 {handshake.name = "index_cast2"} : i32 to index
    cf.br ^bb3(%8, %c0_i32 : index, i32) {handshake.name = "br1"}
  ^bb3(%9: index, %10: i32):  // 2 preds: ^bb2, ^bb4
    %11 = arith.cmpi slt, %9, %7 {handshake.name = "cmpi1"} : index
    cf.cond_br %11, ^bb4, ^bb5 {handshake.name = "cond_br1"}
  ^bb4:  // pred: ^bb3
    %12 = memref.load %arg2[%9] {handshake.name = "load2"} : memref<10xi32>
    %13 = memref.load %arg3[%9] {handshake.name = "load3"} : memref<10xi32>
    %14 = arith.index_cast %12 {handshake.name = "index_cast3"} : i32 to index
    %15 = memref.load %arg4[%14] {handshake.name = "load4"} : memref<10xi32>
    %16 = arith.muli %13, %15 {handshake.name = "muli0"} : i32
    %17 = arith.addi %10, %16 {handshake.name = "addi0"} : i32
    %18 = arith.addi %9, %c1 {handshake.name = "addi2"} : index
    cf.br ^bb3(%18, %17 : index, i32) {handshake.name = "br2"}
  ^bb5:  // pred: ^bb3
    memref.store %10, %arg5[%1] {handshake.name = "store1"} : memref<10xi32>
    %19 = arith.addi %1, %c1 {handshake.name = "addi3"} : index
    cf.br ^bb1(%19, %4 : index, i32) {handshake.name = "br3"}
  ^bb6:  // pred: ^bb1
    return {handshake.name = "return0"} %2 : i32
  }
}


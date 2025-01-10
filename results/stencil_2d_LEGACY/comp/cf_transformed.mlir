module {
  func.func @stencil_2d(%arg0: memref<900xi32> {handshake.arg_name = "orig"}, %arg1: memref<10xi32> {handshake.arg_name = "filter"}, %arg2: memref<900xi32> {handshake.arg_name = "sol"}) -> i32 {
    %c1 = arith.constant 1 : index
    %c28 = arith.constant 28 : index
    %c0 = arith.constant 0 : index
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c30 = arith.constant 30 : index
    cf.br ^bb1(%c0 : index) {handshake.name = "br0"}
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    cf.br ^bb2(%c0, %c0_i32 : index, i32) {handshake.name = "br1"}
  ^bb2(%1: index, %2: i32):  // 2 preds: ^bb1, ^bb4
    cf.br ^bb3(%c0, %2 : index, i32) {handshake.name = "br2"}
  ^bb3(%3: index, %4: i32):  // 2 preds: ^bb2, ^bb3
    %5 = arith.muli %1, %c3 {handshake.name = "muli1"} : index
    %6 = arith.addi %3, %5 {handshake.name = "addi1"} : index
    %7 = memref.load %arg1[%6] {handshake.name = "load2"} : memref<10xi32>
    %8 = arith.addi %3, %0 {handshake.name = "addi2"} : index
    %9 = arith.muli %1, %c30 {handshake.name = "muli2"} : index
    %10 = arith.addi %8, %9 {handshake.name = "addi3"} : index
    %11 = memref.load %arg0[%10] {handshake.name = "load3"} : memref<900xi32>
    %12 = arith.muli %7, %11 {handshake.name = "muli0"} : i32
    %13 = arith.addi %4, %12 {handshake.name = "addi0"} : i32
    %14 = arith.addi %3, %c1 {handshake.name = "addi4"} : index
    %15 = arith.cmpi ult, %14, %c3 {handshake.name = "cmpi0"} : index
    cf.cond_br %15, ^bb3(%14, %13 : index, i32), ^bb4 {handshake.name = "cond_br0"}
  ^bb4:  // pred: ^bb3
    %16 = arith.addi %1, %c1 {handshake.name = "addi5"} : index
    %17 = arith.cmpi ult, %16, %c3 {handshake.name = "cmpi1"} : index
    cf.cond_br %17, ^bb2(%16, %13 : index, i32), ^bb5 {handshake.name = "cond_br1"}
  ^bb5:  // pred: ^bb4
    memref.store %13, %arg2[%0] {handshake.name = "store1"} : memref<900xi32>
    %18 = arith.addi %0, %c1 {handshake.name = "addi6"} : index
    %19 = arith.cmpi ult, %18, %c28 {handshake.name = "cmpi2"} : index
    cf.cond_br %19, ^bb1(%18 : index), ^bb6 {handshake.name = "cond_br2"}
  ^bb6:  // pred: ^bb5
    return {handshake.name = "return0"} %13 : i32
  }
}


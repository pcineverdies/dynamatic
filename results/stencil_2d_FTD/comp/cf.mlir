module {
  func.func @stencil_2d(%arg0: memref<900xi32> {handshake.arg_name = "orig"}, %arg1: memref<10xi32> {handshake.arg_name = "filter"}, %arg2: memref<900xi32> {handshake.arg_name = "sol"}) -> i32 {
    %c30 = arith.constant {handshake.name = "constant11"} 30 : index
    %c3 = arith.constant {handshake.name = "constant5"} 3 : index
    %c0_i32 = arith.constant {handshake.name = "constant0"} 0 : i32
    %c0 = arith.constant {handshake.name = "constant1"} 0 : index
    %c28 = arith.constant {handshake.name = "constant2"} 28 : index
    %c1 = arith.constant {handshake.name = "constant3"} 1 : index
    cf.br ^bb1(%c0, %c0_i32 : index, i32) {handshake.name = "br0"}
  ^bb1(%0: index, %1: i32):  // 2 preds: ^bb0, ^bb5
    cf.br ^bb2(%c0, %c0_i32 : index, i32) {handshake.name = "br1"}
  ^bb2(%2: index, %3: i32):  // 2 preds: ^bb1, ^bb4
    cf.br ^bb3(%c0, %3 : index, i32) {handshake.name = "br2"}
  ^bb3(%4: index, %5: i32):  // 2 preds: ^bb2, ^bb3
    %6 = arith.muli %2, %c3 {handshake.name = "muli1"} : index
    %7 = arith.addi %4, %6 {handshake.name = "addi1"} : index
    %8 = memref.load %arg1[%7] {handshake.name = "load2"} : memref<10xi32>
    %9 = arith.addi %4, %0 {handshake.name = "addi2"} : index
    %10 = arith.muli %2, %c30 {handshake.name = "muli2"} : index
    %11 = arith.addi %9, %10 {handshake.name = "addi3"} : index
    %12 = memref.load %arg0[%11] {handshake.name = "load3"} : memref<900xi32>
    %13 = arith.muli %8, %12 {handshake.name = "muli0"} : i32
    %14 = arith.addi %5, %13 {handshake.name = "addi0"} : i32
    %15 = arith.addi %4, %c1 {handshake.name = "addi4"} : index
    %16 = arith.cmpi ult, %15, %c3 {handshake.name = "cmpi0"} : index
    cf.cond_br %16, ^bb3(%15, %14 : index, i32), ^bb4 {handshake.name = "cond_br0"}
  ^bb4:  // pred: ^bb3
    %17 = arith.addi %2, %c1 {handshake.name = "addi5"} : index
    %18 = arith.cmpi ult, %17, %c3 {handshake.name = "cmpi1"} : index
    cf.cond_br %18, ^bb2(%17, %14 : index, i32), ^bb5 {handshake.name = "cond_br1"}
  ^bb5:  // pred: ^bb4
    memref.store %14, %arg2[%0] {handshake.name = "store1"} : memref<900xi32>
    %19 = arith.addi %0, %c1 {handshake.name = "addi6"} : index
    %20 = arith.cmpi ult, %19, %c28 {handshake.name = "cmpi2"} : index
    cf.cond_br %20, ^bb1(%19, %14 : index, i32), ^bb6 {handshake.name = "cond_br2"}
  ^bb6:  // pred: ^bb5
    return {handshake.name = "return0"} %14 : i32
  }
}


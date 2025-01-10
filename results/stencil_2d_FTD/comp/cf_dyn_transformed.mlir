module {
  func.func @stencil_2d(%arg0: memref<900xi32> {handshake.arg_name = "orig"}, %arg1: memref<10xi32> {handshake.arg_name = "filter"}, %arg2: memref<900xi32> {handshake.arg_name = "sol"}) -> i32 {
    %c0 = arith.constant {handshake.name = "constant2"} 0 : index
    cf.br ^bb1(%c0 : index) {handshake.name = "br0"}
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %c0_i32 = arith.constant {handshake.name = "constant6"} 0 : i32
    %c0_0 = arith.constant {handshake.name = "constant7"} 0 : index
    cf.br ^bb2(%c0_0, %c0_i32 : index, i32) {handshake.name = "br1"}
  ^bb2(%1: index, %2: i32):  // 2 preds: ^bb1, ^bb4
    %c0_1 = arith.constant {handshake.name = "constant8"} 0 : index
    cf.br ^bb3(%c0_1, %2 : index, i32) {handshake.name = "br2"}
  ^bb3(%3: index, %4: i32):  // 2 preds: ^bb2, ^bb3
    %c30 = arith.constant {handshake.name = "constant9"} 30 : index
    %c3 = arith.constant {handshake.name = "constant10"} 3 : index
    %c1 = arith.constant {handshake.name = "constant11"} 1 : index
    %5 = arith.shli %1, %c1 {handshake.name = "shli0"} : index
    %6 = arith.addi %1, %5 {handshake.name = "addi7"} : index
    %7 = arith.addi %3, %6 {handshake.name = "addi1"} : index
    %8 = memref.load %arg1[%7] {handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load2"} : memref<10xi32>
    %9 = arith.addi %3, %0 {handshake.name = "addi2"} : index
    %10 = arith.muli %1, %c30 {handshake.name = "muli2"} : index
    %11 = arith.addi %9, %10 {handshake.name = "addi3"} : index
    %12 = memref.load %arg0[%11] {handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load3"} : memref<900xi32>
    %13 = arith.muli %8, %12 {handshake.name = "muli0"} : i32
    %14 = arith.addi %4, %13 {handshake.name = "addi0"} : i32
    %15 = arith.addi %3, %c1 {handshake.name = "addi4"} : index
    %16 = arith.cmpi ult, %15, %c3 {handshake.name = "cmpi0"} : index
    cf.cond_br %16, ^bb3(%15, %14 : index, i32), ^bb4 {handshake.name = "cond_br0"}
  ^bb4:  // pred: ^bb3
    %c3_2 = arith.constant {handshake.name = "constant12"} 3 : index
    %c1_3 = arith.constant {handshake.name = "constant13"} 1 : index
    %17 = arith.addi %1, %c1_3 {handshake.name = "addi5"} : index
    %18 = arith.cmpi ult, %17, %c3_2 {handshake.name = "cmpi1"} : index
    cf.cond_br %18, ^bb2(%17, %14 : index, i32), ^bb5 {handshake.name = "cond_br1"}
  ^bb5:  // pred: ^bb4
    %c28 = arith.constant {handshake.name = "constant14"} 28 : index
    %c1_4 = arith.constant {handshake.name = "constant15"} 1 : index
    memref.store %14, %arg2[%0] {handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store1"} : memref<900xi32>
    %19 = arith.addi %0, %c1_4 {handshake.name = "addi6"} : index
    %20 = arith.cmpi ult, %19, %c28 {handshake.name = "cmpi2"} : index
    cf.cond_br %20, ^bb1(%19 : index), ^bb6 {handshake.name = "cond_br2"}
  ^bb6:  // pred: ^bb5
    return {handshake.name = "return0"} %14 : i32
  }
}


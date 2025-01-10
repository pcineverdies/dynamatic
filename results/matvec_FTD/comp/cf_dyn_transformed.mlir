module {
  func.func @matvec(%arg0: memref<400xi32> {handshake.arg_name = "m"}, %arg1: memref<20xi32> {handshake.arg_name = "v"}, %arg2: memref<20xi32> {handshake.arg_name = "out"}) -> i32 {
    %c0 = arith.constant {handshake.name = "constant4"} 0 : index
    cf.br ^bb1(%c0 : index) {handshake.name = "br0"}
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb3
    %c0_i32 = arith.constant {handshake.name = "constant6"} 0 : i32
    %c0_0 = arith.constant {handshake.name = "constant7"} 0 : index
    cf.br ^bb2(%c0_0, %c0_i32 : index, i32) {handshake.name = "br1"}
  ^bb2(%1: index, %2: i32):  // 2 preds: ^bb1, ^bb2
    %c20 = arith.constant {handshake.name = "constant8"} 20 : index
    %c1 = arith.constant {handshake.name = "constant9"} 1 : index
    %c4 = arith.constant {handshake.name = "constant10"} 4 : index
    %c2 = arith.constant {handshake.name = "constant11"} 2 : index
    %3 = memref.load %arg1[%1] {handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load2"} : memref<20xi32>
    %4 = arith.shli %0, %c2 {handshake.name = "shli0"} : index
    %5 = arith.shli %0, %c4 {handshake.name = "shli1"} : index
    %6 = arith.addi %4, %5 {handshake.name = "addi4"} : index
    %7 = arith.addi %1, %6 {handshake.name = "addi1"} : index
    %8 = memref.load %arg0[%7] {handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : memref<400xi32>
    %9 = arith.muli %3, %8 {handshake.name = "muli0"} : i32
    %10 = arith.addi %2, %9 {handshake.name = "addi0"} : i32
    %11 = arith.addi %1, %c1 {handshake.name = "addi2"} : index
    %12 = arith.cmpi ult, %11, %c20 {handshake.name = "cmpi0"} : index
    cf.cond_br %12, ^bb2(%11, %10 : index, i32), ^bb3 {handshake.name = "cond_br0"}
  ^bb3:  // pred: ^bb2
    %c20_1 = arith.constant {handshake.name = "constant12"} 20 : index
    %c1_2 = arith.constant {handshake.name = "constant13"} 1 : index
    memref.store %10, %arg2[%0] {handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store1"} : memref<20xi32>
    %13 = arith.addi %0, %c1_2 {handshake.name = "addi3"} : index
    %14 = arith.cmpi ult, %13, %c20_1 {handshake.name = "cmpi1"} : index
    cf.cond_br %14, ^bb1(%13 : index), ^bb4 {handshake.name = "cond_br1"}
  ^bb4:  // pred: ^bb3
    return {handshake.name = "return0"} %10 : i32
  }
}


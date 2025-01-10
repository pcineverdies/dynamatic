module {
  func.func @matvec(%arg0: memref<400xi32> {handshake.arg_name = "m"}, %arg1: memref<20xi32> {handshake.arg_name = "v"}, %arg2: memref<20xi32> {handshake.arg_name = "out"}) -> i32 {
    %c1 = arith.constant 1 : index
    %c20 = arith.constant 20 : index
    %c0 = arith.constant 0 : index
    %c0_i32 = arith.constant 0 : i32
    cf.br ^bb1(%c0 : index) {handshake.name = "br0"}
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb3
    cf.br ^bb2(%c0, %c0_i32 : index, i32) {handshake.name = "br1"}
  ^bb2(%1: index, %2: i32):  // 2 preds: ^bb1, ^bb2
    %3 = memref.load %arg1[%1] {handshake.name = "load2"} : memref<20xi32>
    %4 = arith.muli %0, %c20 {handshake.name = "muli1"} : index
    %5 = arith.addi %1, %4 {handshake.name = "addi1"} : index
    %6 = memref.load %arg0[%5] {handshake.name = "load4"} : memref<400xi32>
    %7 = arith.muli %3, %6 {handshake.name = "muli0"} : i32
    %8 = arith.addi %2, %7 {handshake.name = "addi0"} : i32
    %9 = arith.addi %1, %c1 {handshake.name = "addi2"} : index
    %10 = arith.cmpi ult, %9, %c20 {handshake.name = "cmpi0"} : index
    cf.cond_br %10, ^bb2(%9, %8 : index, i32), ^bb3 {handshake.name = "cond_br0"}
  ^bb3:  // pred: ^bb2
    memref.store %8, %arg2[%0] {handshake.name = "store1"} : memref<20xi32>
    %11 = arith.addi %0, %c1 {handshake.name = "addi3"} : index
    %12 = arith.cmpi ult, %11, %c20 {handshake.name = "cmpi1"} : index
    cf.cond_br %12, ^bb1(%11 : index), ^bb4 {handshake.name = "cond_br1"}
  ^bb4:  // pred: ^bb3
    return {handshake.name = "return0"} %8 : i32
  }
}


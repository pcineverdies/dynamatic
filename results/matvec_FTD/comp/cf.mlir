module {
  func.func @matvec(%arg0: memref<400xi32> {handshake.arg_name = "m"}, %arg1: memref<20xi32> {handshake.arg_name = "v"}, %arg2: memref<20xi32> {handshake.arg_name = "out"}) -> i32 {
    %c0_i32 = arith.constant {handshake.name = "constant0"} 0 : i32
    %c0 = arith.constant {handshake.name = "constant1"} 0 : index
    %c20 = arith.constant {handshake.name = "constant2"} 20 : index
    %c1 = arith.constant {handshake.name = "constant3"} 1 : index
    cf.br ^bb1(%c0, %c0_i32 : index, i32) {handshake.name = "br0"}
  ^bb1(%0: index, %1: i32):  // 2 preds: ^bb0, ^bb3
    cf.br ^bb2(%c0, %c0_i32 : index, i32) {handshake.name = "br1"}
  ^bb2(%2: index, %3: i32):  // 2 preds: ^bb1, ^bb2
    %4 = memref.load %arg1[%2] {handshake.name = "load2"} : memref<20xi32>
    %5 = arith.muli %0, %c20 {handshake.name = "muli1"} : index
    %6 = arith.addi %2, %5 {handshake.name = "addi1"} : index
    %7 = memref.load %arg0[%6] {handshake.name = "load4"} : memref<400xi32>
    %8 = arith.muli %4, %7 {handshake.name = "muli0"} : i32
    %9 = arith.addi %3, %8 {handshake.name = "addi0"} : i32
    %10 = arith.addi %2, %c1 {handshake.name = "addi2"} : index
    %11 = arith.cmpi ult, %10, %c20 {handshake.name = "cmpi0"} : index
    cf.cond_br %11, ^bb2(%10, %9 : index, i32), ^bb3 {handshake.name = "cond_br0"}
  ^bb3:  // pred: ^bb2
    memref.store %9, %arg2[%0] {handshake.name = "store1"} : memref<20xi32>
    %12 = arith.addi %0, %c1 {handshake.name = "addi3"} : index
    %13 = arith.cmpi ult, %12, %c20 {handshake.name = "cmpi1"} : index
    cf.cond_br %13, ^bb1(%12, %9 : index, i32), ^bb4 {handshake.name = "cond_br1"}
  ^bb4:  // pred: ^bb3
    return {handshake.name = "return0"} %9 : i32
  }
}


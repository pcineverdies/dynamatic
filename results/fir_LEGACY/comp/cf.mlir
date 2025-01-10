module {
  func.func @fir(%arg0: memref<1000xi32> {handshake.arg_name = "di"}, %arg1: memref<1000xi32> {handshake.arg_name = "idx"}) -> i32 {
    %c999 = arith.constant {handshake.name = "constant5"} 999 : index
    %c-1 = arith.constant {handshake.name = "constant4"} -1 : index
    %c0_i32 = arith.constant {handshake.name = "constant0"} 0 : i32
    %c0 = arith.constant {handshake.name = "constant1"} 0 : index
    %c1000 = arith.constant {handshake.name = "constant2"} 1000 : index
    %c1 = arith.constant {handshake.name = "constant3"} 1 : index
    cf.br ^bb1(%c0, %c0_i32 : index, i32) {handshake.name = "br0"}
  ^bb1(%0: index, %1: i32):  // 2 preds: ^bb0, ^bb1
    %2 = memref.load %arg1[%0] {handshake.name = "load2"} : memref<1000xi32>
    %3 = arith.muli %0, %c-1 {handshake.name = "muli1"} : index
    %4 = arith.addi %3, %c999 {handshake.name = "addi1"} : index
    %5 = memref.load %arg0[%4] {handshake.name = "load3"} : memref<1000xi32>
    %6 = arith.muli %2, %5 {handshake.name = "muli0"} : i32
    %7 = arith.addi %1, %6 {handshake.name = "addi0"} : i32
    %8 = arith.addi %0, %c1 {handshake.name = "addi2"} : index
    %9 = arith.cmpi ult, %8, %c1000 {handshake.name = "cmpi0"} : index
    cf.cond_br %9, ^bb1(%8, %7 : index, i32), ^bb2 {handshake.name = "cond_br0"}
  ^bb2:  // pred: ^bb1
    return {handshake.name = "return0"} %7 : i32
  }
}


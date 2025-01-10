module {
  func.func @fir(%arg0: memref<1000xi32> {handshake.arg_name = "di"}, %arg1: memref<1000xi32> {handshake.arg_name = "idx"}) -> i32 {
    %c999 = arith.constant {handshake.name = "constant5"} 999 : index
    %c-1 = arith.constant {handshake.name = "constant4"} -1 : index
    %c0_i32 = arith.constant {handshake.name = "constant0"} 0 : i32
    %c0 = arith.constant {handshake.name = "constant1"} 0 : index
    %c1000 = arith.constant {handshake.name = "constant2"} 1000 : index
    %c1 = arith.constant {handshake.name = "constant3"} 1 : index
    %0:2 = scf.while (%arg2 = %c0, %arg3 = %c0_i32) : (index, i32) -> (index, i32) {
      %1 = memref.load %arg1[%arg2] {handshake.name = "load2"} : memref<1000xi32>
      %2 = arith.muli %arg2, %c-1 {handshake.name = "muli1"} : index
      %3 = arith.addi %2, %c999 {handshake.name = "addi1"} : index
      %4 = memref.load %arg0[%3] {handshake.name = "load3"} : memref<1000xi32>
      %5 = arith.muli %1, %4 {handshake.name = "muli0"} : i32
      %6 = arith.addi %arg3, %5 {handshake.name = "addi0"} : i32
      %7 = arith.addi %arg2, %c1 {handshake.name = "addi2"} : index
      %8 = arith.cmpi ult, %7, %c1000 {handshake.name = "cmpi0"} : index
      scf.condition(%8) {handshake.name = "condition0"} %7, %6 : index, i32
    } do {
    ^bb0(%arg2: index, %arg3: i32):
      scf.yield {handshake.name = "yield2"} %arg2, %arg3 : index, i32
    } attributes {handshake.name = "while0"}
    return {handshake.name = "return0"} %0#1 : i32
  }
}


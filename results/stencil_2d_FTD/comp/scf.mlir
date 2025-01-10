module {
  func.func @stencil_2d(%arg0: memref<900xi32> {handshake.arg_name = "orig"}, %arg1: memref<10xi32> {handshake.arg_name = "filter"}, %arg2: memref<900xi32> {handshake.arg_name = "sol"}) -> i32 {
    %c30 = arith.constant {handshake.name = "constant11"} 30 : index
    %c3 = arith.constant {handshake.name = "constant5"} 3 : index
    %c0_i32 = arith.constant {handshake.name = "constant0"} 0 : i32
    %c0 = arith.constant {handshake.name = "constant1"} 0 : index
    %c28 = arith.constant {handshake.name = "constant2"} 28 : index
    %c1 = arith.constant {handshake.name = "constant3"} 1 : index
    %0:2 = scf.while (%arg3 = %c0, %arg4 = %c0_i32) : (index, i32) -> (index, i32) {
      %1:2 = scf.while (%arg5 = %c0, %arg6 = %c0_i32) : (index, i32) -> (index, i32) {
        %4:2 = scf.while (%arg7 = %c0, %arg8 = %arg6) : (index, i32) -> (index, i32) {
          %7 = arith.muli %arg5, %c3 {handshake.name = "muli1"} : index
          %8 = arith.addi %arg7, %7 {handshake.name = "addi1"} : index
          %9 = memref.load %arg1[%8] {handshake.name = "load2"} : memref<10xi32>
          %10 = arith.addi %arg7, %arg3 {handshake.name = "addi2"} : index
          %11 = arith.muli %arg5, %c30 {handshake.name = "muli2"} : index
          %12 = arith.addi %10, %11 {handshake.name = "addi3"} : index
          %13 = memref.load %arg0[%12] {handshake.name = "load3"} : memref<900xi32>
          %14 = arith.muli %9, %13 {handshake.name = "muli0"} : i32
          %15 = arith.addi %arg8, %14 {handshake.name = "addi0"} : i32
          %16 = arith.addi %arg7, %c1 {handshake.name = "addi4"} : index
          %17 = arith.cmpi ult, %16, %c3 {handshake.name = "cmpi0"} : index
          scf.condition(%17) {handshake.name = "condition0"} %16, %15 : index, i32
        } do {
        ^bb0(%arg7: index, %arg8: i32):
          scf.yield {handshake.name = "yield6"} %arg7, %arg8 : index, i32
        } attributes {handshake.name = "while0"}
        %5 = arith.addi %arg5, %c1 {handshake.name = "addi5"} : index
        %6 = arith.cmpi ult, %5, %c3 {handshake.name = "cmpi1"} : index
        scf.condition(%6) {handshake.name = "condition1"} %5, %4#1 : index, i32
      } do {
      ^bb0(%arg5: index, %arg6: i32):
        scf.yield {handshake.name = "yield7"} %arg5, %arg6 : index, i32
      } attributes {handshake.name = "while1"}
      memref.store %1#1, %arg2[%arg3] {handshake.name = "store1"} : memref<900xi32>
      %2 = arith.addi %arg3, %c1 {handshake.name = "addi6"} : index
      %3 = arith.cmpi ult, %2, %c28 {handshake.name = "cmpi2"} : index
      scf.condition(%3) {handshake.name = "condition2"} %2, %1#1 : index, i32
    } do {
    ^bb0(%arg3: index, %arg4: i32):
      scf.yield {handshake.name = "yield8"} %arg3, %arg4 : index, i32
    } attributes {handshake.name = "while2"}
    return {handshake.name = "return0"} %0#1 : i32
  }
}


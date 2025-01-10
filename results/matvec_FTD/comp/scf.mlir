module {
  func.func @matvec(%arg0: memref<400xi32> {handshake.arg_name = "m"}, %arg1: memref<20xi32> {handshake.arg_name = "v"}, %arg2: memref<20xi32> {handshake.arg_name = "out"}) -> i32 {
    %c0_i32 = arith.constant {handshake.name = "constant0"} 0 : i32
    %c0 = arith.constant {handshake.name = "constant1"} 0 : index
    %c20 = arith.constant {handshake.name = "constant2"} 20 : index
    %c1 = arith.constant {handshake.name = "constant3"} 1 : index
    %0:2 = scf.while (%arg3 = %c0, %arg4 = %c0_i32) : (index, i32) -> (index, i32) {
      %1:2 = scf.while (%arg5 = %c0, %arg6 = %c0_i32) : (index, i32) -> (index, i32) {
        %4 = memref.load %arg1[%arg5] {handshake.name = "load2"} : memref<20xi32>
        %5 = arith.muli %arg3, %c20 {handshake.name = "muli1"} : index
        %6 = arith.addi %arg5, %5 {handshake.name = "addi1"} : index
        %7 = memref.load %arg0[%6] {handshake.name = "load4"} : memref<400xi32>
        %8 = arith.muli %4, %7 {handshake.name = "muli0"} : i32
        %9 = arith.addi %arg6, %8 {handshake.name = "addi0"} : i32
        %10 = arith.addi %arg5, %c1 {handshake.name = "addi2"} : index
        %11 = arith.cmpi ult, %10, %c20 {handshake.name = "cmpi0"} : index
        scf.condition(%11) {handshake.name = "condition0"} %10, %9 : index, i32
      } do {
      ^bb0(%arg5: index, %arg6: i32):
        scf.yield {handshake.name = "yield4"} %arg5, %arg6 : index, i32
      } attributes {handshake.name = "while0"}
      memref.store %1#1, %arg2[%arg3] {handshake.name = "store1"} : memref<20xi32>
      %2 = arith.addi %arg3, %c1 {handshake.name = "addi3"} : index
      %3 = arith.cmpi ult, %2, %c20 {handshake.name = "cmpi1"} : index
      scf.condition(%3) {handshake.name = "condition1"} %2, %1#1 : index, i32
    } do {
    ^bb0(%arg3: index, %arg4: i32):
      scf.yield {handshake.name = "yield5"} %arg3, %arg4 : index, i32
    } attributes {handshake.name = "while1"}
    return {handshake.name = "return0"} %0#1 : i32
  }
}


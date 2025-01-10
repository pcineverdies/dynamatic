module {
  func.func @stencil_2d(%arg0: memref<900xi32> {handshake.arg_name = "orig"}, %arg1: memref<10xi32> {handshake.arg_name = "filter"}, %arg2: memref<900xi32> {handshake.arg_name = "sol"}) -> i32 {
    %c0_i32 = arith.constant {handshake.name = "constant0"} 0 : i32
    %0 = affine.for %arg3 = 0 to 28 iter_args(%arg4 = %c0_i32) -> (i32) {
      %1 = affine.for %arg5 = 0 to 3 iter_args(%arg6 = %c0_i32) -> (i32) {
        %2 = affine.for %arg7 = 0 to 3 iter_args(%arg8 = %arg6) -> (i32) {
          %3 = affine.load %arg1[%arg7 + %arg5 * 3] {handshake.name = "load0"} : memref<10xi32>
          %4 = affine.load %arg0[%arg7 + %arg3 + %arg5 * 30] {handshake.name = "load1"} : memref<900xi32>
          %5 = arith.muli %3, %4 {handshake.name = "muli0"} : i32
          %6 = arith.addi %arg8, %5 {handshake.name = "addi0"} : i32
          affine.yield {handshake.name = "yield0"} %6 : i32
        } {handshake.name = "for0"}
        affine.yield {handshake.name = "yield1"} %2 : i32
      } {handshake.name = "for1"}
      affine.store %1, %arg2[%arg3] {handshake.name = "store0"} : memref<900xi32>
      affine.yield {handshake.name = "yield2"} %1 : i32
    } {handshake.name = "for2"}
    return {handshake.name = "return0"} %0 : i32
  }
}


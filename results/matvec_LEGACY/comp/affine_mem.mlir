module {
  func.func @matvec(%arg0: memref<20x20xi32> {handshake.arg_name = "m"}, %arg1: memref<20xi32> {handshake.arg_name = "v"}, %arg2: memref<20xi32> {handshake.arg_name = "out"}) -> i32 {
    %c0_i32 = arith.constant {handshake.name = "constant0"} 0 : i32
    %0 = affine.for %arg3 = 0 to 20 iter_args(%arg4 = %c0_i32) -> (i32) {
      %1 = affine.for %arg5 = 0 to 20 iter_args(%arg6 = %c0_i32) -> (i32) {
        %2 = affine.load %arg1[%arg5] {handshake.name = "load0"} : memref<20xi32>
        %3 = affine.load %arg0[%arg3, %arg5] {handshake.name = "load1"} : memref<20x20xi32>
        %4 = arith.muli %2, %3 {handshake.name = "muli0"} : i32
        %5 = arith.addi %arg6, %4 {handshake.name = "addi0"} : i32
        affine.yield {handshake.name = "yield0"} %5 : i32
      } {handshake.name = "for0"}
      affine.store %1, %arg2[%arg3] {handshake.name = "store0"} : memref<20xi32>
      affine.yield {handshake.name = "yield1"} %1 : i32
    } {handshake.name = "for1"}
    return {handshake.name = "return0"} %0 : i32
  }
}


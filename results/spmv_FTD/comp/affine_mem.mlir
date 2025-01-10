module {
  func.func @spmv(%arg0: i32 {handshake.arg_name = "n"}, %arg1: memref<10xi32> {handshake.arg_name = "row"}, %arg2: memref<10xi32> {handshake.arg_name = "col"}, %arg3: memref<10xi32> {handshake.arg_name = "val"}, %arg4: memref<10xi32> {handshake.arg_name = "vec"}, %arg5: memref<10xi32> {handshake.arg_name = "out"}) -> i32 {
    %c1 = arith.constant {handshake.name = "constant0"} 1 : index
    %c0_i32 = arith.constant {handshake.name = "constant1"} 0 : i32
    %0 = arith.index_cast %arg0 {handshake.name = "index_cast0"} : i32 to index
    %1 = affine.for %arg6 = 0 to %0 iter_args(%arg7 = %c0_i32) -> (i32) {
      %2 = affine.load %arg1[%arg6] {handshake.name = "load0"} : memref<10xi32>
      %3 = affine.load %arg1[%arg6 + 1] {handshake.name = "load1"} : memref<10xi32>
      %4 = arith.index_cast %3 {handshake.name = "index_cast1"} : i32 to index
      %5 = arith.index_cast %2 {handshake.name = "index_cast2"} : i32 to index
      %6 = scf.for %arg8 = %5 to %4 step %c1 iter_args(%arg9 = %c0_i32) -> (i32) {
        %7 = memref.load %arg2[%arg8] {handshake.name = "load2"} : memref<10xi32>
        %8 = memref.load %arg3[%arg8] {handshake.name = "load3"} : memref<10xi32>
        %9 = arith.index_cast %7 {handshake.name = "index_cast3"} : i32 to index
        %10 = memref.load %arg4[%9] {handshake.name = "load4"} : memref<10xi32>
        %11 = arith.muli %8, %10 {handshake.name = "muli0"} : i32
        %12 = arith.addi %arg9, %11 {handshake.name = "addi0"} : i32
        scf.yield {handshake.name = "yield0"} %12 : i32
      } {handshake.name = "for0"}
      affine.store %6, %arg5[%arg6] {handshake.name = "store0"} : memref<10xi32>
      affine.yield {handshake.name = "yield1"} %2 : i32
    } {handshake.name = "for1"}
    return {handshake.name = "return0"} %1 : i32
  }
}


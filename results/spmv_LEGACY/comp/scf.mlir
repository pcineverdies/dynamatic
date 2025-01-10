module {
  func.func @spmv(%arg0: i32 {handshake.arg_name = "n"}, %arg1: memref<10xi32> {handshake.arg_name = "row"}, %arg2: memref<10xi32> {handshake.arg_name = "col"}, %arg3: memref<10xi32> {handshake.arg_name = "val"}, %arg4: memref<10xi32> {handshake.arg_name = "vec"}, %arg5: memref<10xi32> {handshake.arg_name = "out"}) -> i32 {
    %c0 = arith.constant {handshake.name = "constant2"} 0 : index
    %c1 = arith.constant {handshake.name = "constant0"} 1 : index
    %c0_i32 = arith.constant {handshake.name = "constant1"} 0 : i32
    %0 = arith.index_cast %arg0 {handshake.name = "index_cast0"} : i32 to index
    %1 = scf.for %arg6 = %c0 to %0 step %c1 iter_args(%arg7 = %c0_i32) -> (i32) {
      %2 = memref.load %arg1[%arg6] {handshake.name = "load5"} : memref<10xi32>
      %3 = arith.addi %arg6, %c1 {handshake.name = "addi1"} : index
      %4 = memref.load %arg1[%3] {handshake.name = "load6"} : memref<10xi32>
      %5 = arith.index_cast %4 {handshake.name = "index_cast1"} : i32 to index
      %6 = arith.index_cast %2 {handshake.name = "index_cast2"} : i32 to index
      %7 = scf.for %arg8 = %6 to %5 step %c1 iter_args(%arg9 = %c0_i32) -> (i32) {
        %8 = memref.load %arg2[%arg8] {handshake.name = "load2"} : memref<10xi32>
        %9 = memref.load %arg3[%arg8] {handshake.name = "load3"} : memref<10xi32>
        %10 = arith.index_cast %8 {handshake.name = "index_cast3"} : i32 to index
        %11 = memref.load %arg4[%10] {handshake.name = "load4"} : memref<10xi32>
        %12 = arith.muli %9, %11 {handshake.name = "muli0"} : i32
        %13 = arith.addi %arg9, %12 {handshake.name = "addi0"} : i32
        scf.yield {handshake.name = "yield0"} %13 : i32
      } {handshake.name = "for0"}
      memref.store %7, %arg5[%arg6] {handshake.name = "store1"} : memref<10xi32>
      scf.yield {handshake.name = "yield2"} %2 : i32
    } {handshake.name = "for2"}
    return {handshake.name = "return0"} %1 : i32
  }
}


module {
  func.func @binary_search(%arg0: i32 {handshake.arg_name = "search"}, %arg1: memref<101xi32> {handshake.arg_name = "a"}) -> i32 {
    %c-1_i32 = arith.constant {handshake.name = "constant0"} -1 : i32
    %true = arith.constant {handshake.name = "constant1"} true
    %false = arith.constant {handshake.name = "constant2"} false
    %0:2 = affine.for %arg2 = 0 to 101 step 2 iter_args(%arg3 = %c-1_i32, %arg4 = %true) -> (i32, i1) {
      %4:2 = scf.if %arg4 -> (i32, i1) {
        %5 = arith.index_cast %arg2 {handshake.name = "index_cast0"} : index to i32
        %6 = affine.load %arg1[%arg2] {handshake.name = "load0"} : memref<101xi32>
        %7 = arith.cmpi eq, %6, %arg0 {handshake.name = "cmpi0"} : i32
        %8 = arith.select %7, %5, %arg3 {handshake.name = "select0"} : i32
        %9 = arith.cmpi ne, %6, %arg0 {handshake.name = "cmpi1"} : i32
        scf.yield {handshake.name = "yield0"} %8, %9 : i32, i1
      } else {
        scf.yield {handshake.name = "yield1"} %arg3, %false : i32, i1
      } {handshake.name = "if0"}
      affine.yield {handshake.name = "yield2"} %4#0, %4#1 : i32, i1
    } {handshake.name = "for0"}
    %1 = arith.cmpi ne, %0#0, %c-1_i32 {handshake.name = "cmpi2"} : i32
    %2:2 = affine.for %arg2 = 1 to 101 step 2 iter_args(%arg3 = %c-1_i32, %arg4 = %true) -> (i32, i1) {
      %4:2 = scf.if %arg4 -> (i32, i1) {
        %5 = arith.index_cast %arg2 {handshake.name = "index_cast1"} : index to i32
        %6 = affine.load %arg1[%arg2] {handshake.name = "load1"} : memref<101xi32>
        %7 = arith.cmpi eq, %6, %arg0 {handshake.name = "cmpi3"} : i32
        %8 = arith.select %7, %5, %arg3 {handshake.name = "select1"} : i32
        %9 = arith.cmpi ne, %6, %arg0 {handshake.name = "cmpi4"} : i32
        scf.yield {handshake.name = "yield3"} %8, %9 : i32, i1
      } else {
        scf.yield {handshake.name = "yield4"} %arg3, %false : i32, i1
      } {handshake.name = "if1"}
      affine.yield {handshake.name = "yield5"} %4#0, %4#1 : i32, i1
    } {handshake.name = "for1"}
    %3 = arith.select %1, %0#0, %2#0 {handshake.name = "select2"} : i32
    return {handshake.name = "return0"} %3 : i32
  }
}


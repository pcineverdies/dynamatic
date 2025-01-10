module {
  func.func @binary_search(%arg0: i32 {handshake.arg_name = "search"}, %arg1: memref<101xi32> {handshake.arg_name = "a"}) -> i32 {
    %c1 = arith.constant {handshake.name = "constant6"} 1 : index
    %c-1_i32 = arith.constant {handshake.name = "constant0"} -1 : i32
    %true = arith.constant {handshake.name = "constant1"} true
    %false = arith.constant {handshake.name = "constant2"} false
    %c0 = arith.constant {handshake.name = "constant3"} 0 : index
    %c101 = arith.constant {handshake.name = "constant4"} 101 : index
    %c2 = arith.constant {handshake.name = "constant5"} 2 : index
    %0:3 = scf.while (%arg2 = %c0, %arg3 = %c-1_i32, %arg4 = %true) : (index, i32, i1) -> (index, i32, i1) {
      %4:2 = scf.if %arg4 -> (i32, i1) {
        %7 = arith.index_cast %arg2 {handshake.name = "index_cast0"} : index to i32
        %8 = memref.load %arg1[%arg2] {handshake.name = "load2"} : memref<101xi32>
        %9 = arith.cmpi eq, %8, %arg0 {handshake.name = "cmpi0"} : i32
        %10 = arith.select %9, %7, %arg3 {handshake.name = "select0"} : i32
        %11 = arith.cmpi ne, %8, %arg0 {handshake.name = "cmpi1"} : i32
        scf.yield {handshake.name = "yield0"} %10, %11 : i32, i1
      } else {
        scf.yield {handshake.name = "yield1"} %arg3, %false : i32, i1
      } {handshake.name = "if0"}
      %5 = arith.addi %arg2, %c2 {handshake.name = "addi0"} : index
      %6 = arith.cmpi ult, %5, %c101 {handshake.name = "cmpi5"} : index
      scf.condition(%6) {handshake.name = "condition0"} %5, %4#0, %4#1 : index, i32, i1
    } do {
    ^bb0(%arg2: index, %arg3: i32, %arg4: i1):
      scf.yield {handshake.name = "yield8"} %arg2, %arg3, %arg4 : index, i32, i1
    } attributes {handshake.name = "while0"}
    %1 = arith.cmpi ne, %0#1, %c-1_i32 {handshake.name = "cmpi2"} : i32
    %2:3 = scf.while (%arg2 = %c1, %arg3 = %c-1_i32, %arg4 = %true) : (index, i32, i1) -> (index, i32, i1) {
      %4:2 = scf.if %arg4 -> (i32, i1) {
        %7 = arith.index_cast %arg2 {handshake.name = "index_cast1"} : index to i32
        %8 = memref.load %arg1[%arg2] {handshake.name = "load3"} : memref<101xi32>
        %9 = arith.cmpi eq, %8, %arg0 {handshake.name = "cmpi3"} : i32
        %10 = arith.select %9, %7, %arg3 {handshake.name = "select1"} : i32
        %11 = arith.cmpi ne, %8, %arg0 {handshake.name = "cmpi4"} : i32
        scf.yield {handshake.name = "yield3"} %10, %11 : i32, i1
      } else {
        scf.yield {handshake.name = "yield4"} %arg3, %false : i32, i1
      } {handshake.name = "if1"}
      %5 = arith.addi %arg2, %c2 {handshake.name = "addi1"} : index
      %6 = arith.cmpi ult, %5, %c101 {handshake.name = "cmpi6"} : index
      scf.condition(%6) {handshake.name = "condition1"} %5, %4#0, %4#1 : index, i32, i1
    } do {
    ^bb0(%arg2: index, %arg3: i32, %arg4: i1):
      scf.yield {handshake.name = "yield9"} %arg2, %arg3, %arg4 : index, i32, i1
    } attributes {handshake.name = "while1"}
    %3 = arith.select %1, %0#1, %2#1 {handshake.name = "select2"} : i32
    return {handshake.name = "return0"} %3 : i32
  }
}


module {
  func.func @binary_search(%arg0: i32 {handshake.arg_name = "search"}, %arg1: memref<101xi32> {handshake.arg_name = "a"}) -> i32 {
    %c0 = arith.constant {handshake.name = "constant2"} 0 : index
    %true = arith.constant {handshake.name = "constant4"} true
    %c-1_i32 = arith.constant {handshake.name = "constant5"} -1 : i32
    cf.br ^bb1(%c0, %c-1_i32, %true : index, i32, i1) {handshake.name = "br0"}
  ^bb1(%0: index, %1: i32, %2: i1):  // 2 preds: ^bb0, ^bb3
    %false = arith.constant {handshake.name = "constant7"} false
    cf.cond_br %2, ^bb2, ^bb3(%1, %false : i32, i1) {handshake.name = "cond_br0"}
  ^bb2:  // pred: ^bb1
    %3 = arith.index_cast %0 {handshake.name = "index_cast0"} : index to i32
    %4 = memref.load %arg1[%0] {handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load2"} : memref<101xi32>
    %5 = arith.cmpi eq, %4, %arg0 {handshake.name = "cmpi0"} : i32
    %6 = arith.select %5, %3, %1 {handshake.name = "select0"} : i32
    %7 = arith.cmpi ne, %4, %arg0 {handshake.name = "cmpi1"} : i32
    cf.br ^bb3(%6, %7 : i32, i1) {handshake.name = "br1"}
  ^bb3(%8: i32, %9: i1):  // 2 preds: ^bb1, ^bb2
    %c101 = arith.constant {handshake.name = "constant8"} 101 : index
    %c2 = arith.constant {handshake.name = "constant9"} 2 : index
    %10 = arith.addi %0, %c2 {handshake.name = "addi0"} : index
    %11 = arith.cmpi ult, %10, %c101 {handshake.name = "cmpi5"} : index
    cf.cond_br %11, ^bb1(%10, %8, %9 : index, i32, i1), ^bb4 {handshake.name = "cond_br1"}
  ^bb4:  // pred: ^bb3
    %c1 = arith.constant {handshake.name = "constant10"} 1 : index
    %c-1_i32_0 = arith.constant {handshake.name = "constant11"} -1 : i32
    %true_1 = arith.constant {handshake.name = "constant12"} true
    %12 = arith.cmpi ne, %8, %c-1_i32_0 {handshake.name = "cmpi2"} : i32
    cf.br ^bb5(%c1, %c-1_i32_0, %true_1 : index, i32, i1) {handshake.name = "br4"}
  ^bb5(%13: index, %14: i32, %15: i1):  // 2 preds: ^bb4, ^bb7
    %false_2 = arith.constant {handshake.name = "constant13"} false
    cf.cond_br %15, ^bb6, ^bb7(%14, %false_2 : i32, i1) {handshake.name = "cond_br2"}
  ^bb6:  // pred: ^bb5
    %16 = arith.index_cast %13 {handshake.name = "index_cast1"} : index to i32
    %17 = memref.load %arg1[%13] {handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load3"} : memref<101xi32>
    %18 = arith.cmpi eq, %17, %arg0 {handshake.name = "cmpi3"} : i32
    %19 = arith.select %18, %16, %14 {handshake.name = "select1"} : i32
    %20 = arith.cmpi ne, %17, %arg0 {handshake.name = "cmpi4"} : i32
    cf.br ^bb7(%19, %20 : i32, i1) {handshake.name = "br5"}
  ^bb7(%21: i32, %22: i1):  // 2 preds: ^bb5, ^bb6
    %c101_3 = arith.constant {handshake.name = "constant14"} 101 : index
    %c2_4 = arith.constant {handshake.name = "constant15"} 2 : index
    %23 = arith.addi %13, %c2_4 {handshake.name = "addi1"} : index
    %24 = arith.cmpi ult, %23, %c101_3 {handshake.name = "cmpi6"} : index
    cf.cond_br %24, ^bb5(%23, %21, %22 : index, i32, i1), ^bb8 {handshake.name = "cond_br3"}
  ^bb8:  // pred: ^bb7
    %25 = arith.select %12, %8, %21 {handshake.name = "select2"} : i32
    return {handshake.name = "return0"} %25 : i32
  }
}


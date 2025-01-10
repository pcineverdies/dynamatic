module {
  func.func @jacobi_1d_imper(%arg0: memref<50xi32> {handshake.arg_name = "A"}, %arg1: memref<50xi32> {handshake.arg_name = "B"}) -> i32 {
    %c0 = arith.constant {handshake.name = "constant3"} 0 : index
    cf.br ^bb1(%c0 : index) {handshake.name = "br0"}
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb4
    %c1 = arith.constant {handshake.name = "constant6"} 1 : index
    cf.br ^bb2(%c1 : index) {handshake.name = "br1"}
  ^bb2(%1: index):  // 2 preds: ^bb1, ^bb2
    %c-1 = arith.constant {handshake.name = "constant7"} -1 : index
    %c49 = arith.constant {handshake.name = "constant8"} 49 : index
    %c1_0 = arith.constant {handshake.name = "constant9"} 1 : index
    %c1_i32 = arith.constant {handshake.name = "constant10"} 1 : i32
    %2 = arith.addi %1, %c-1 {handshake.name = "addi2"} : index
    %3 = memref.load %arg0[%2] {handshake.deps = #handshake<deps[<"store3" (1) [[1, 1]]>, <"store3" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load5"} : memref<50xi32>
    %4 = memref.load %arg0[%1] {handshake.deps = #handshake<deps[<"store3" (1) [[1, 1]]>, <"store3" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load6"} : memref<50xi32>
    %5 = arith.addi %3, %4 {handshake.name = "addi0"} : i32
    %6 = arith.addi %1, %c1_0 {handshake.name = "addi3"} : index
    %7 = memref.load %arg0[%6] {handshake.deps = #handshake<deps[<"store3" (1) [[1, 1]]>, <"store3" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load7"} : memref<50xi32>
    %8 = arith.addi %5, %7 {handshake.name = "addi1"} : i32
    %9 = arith.shli %8, %c1_i32 {handshake.name = "shli0"} : i32
    %10 = arith.addi %8, %9 {handshake.name = "addi7"} : i32
    memref.store %10, %arg1[%1] {handshake.deps = #handshake<deps[<"store2" (1) [[1, 1], [0, 0]]>, <"load8" (1) [[1, 1]]>, <"load8" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store2"} : memref<50xi32>
    %11 = arith.addi %1, %c1_0 {handshake.name = "addi4"} : index
    %12 = arith.cmpi ult, %11, %c49 {handshake.name = "cmpi0"} : index
    cf.cond_br %12, ^bb2(%11 : index), ^bb3(%c1_0 : index) {handshake.name = "cond_br0"}
  ^bb3(%13: index):  // 2 preds: ^bb2, ^bb3
    %c49_1 = arith.constant {handshake.name = "constant11"} 49 : index
    %c1_2 = arith.constant {handshake.name = "constant12"} 1 : index
    %14 = memref.load %arg1[%13] {handshake.deps = #handshake<deps[<"store2" (1) [[1, 1]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load8"} : memref<50xi32>
    memref.store %14, %arg0[%13] {handshake.deps = #handshake<deps[<"load5" (1) [[1, 1]]>, <"load6" (1) [[1, 1]]>, <"load7" (1) [[1, 1]]>, <"store3" (1) [[1, 1], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store3"} : memref<50xi32>
    %15 = arith.addi %13, %c1_2 {handshake.name = "addi5"} : index
    %16 = arith.cmpi ult, %15, %c49_1 {handshake.name = "cmpi1"} : index
    cf.cond_br %16, ^bb3(%15 : index), ^bb4 {handshake.name = "cond_br1"}
  ^bb4:  // pred: ^bb3
    %c2 = arith.constant {handshake.name = "constant13"} 2 : index
    %c1_3 = arith.constant {handshake.name = "constant14"} 1 : index
    %17 = arith.addi %0, %c1_3 {handshake.name = "addi6"} : index
    %18 = arith.cmpi ult, %17, %c2 {handshake.name = "cmpi2"} : index
    cf.cond_br %18, ^bb1(%17 : index), ^bb5 {handshake.name = "cond_br2"}
  ^bb5:  // pred: ^bb4
    %c49_4 = arith.constant {handshake.name = "constant15"} 49 : index
    %19 = memref.load %arg0[%c49_4] {handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load9"} : memref<50xi32>
    return {handshake.name = "return0"} %19 : i32
  }
}


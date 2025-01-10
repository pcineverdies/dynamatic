module {
  func.func @bicg(%arg0: memref<100xi32> {handshake.arg_name = "a"}, %arg1: memref<10xi32> {handshake.arg_name = "s"}, %arg2: memref<10xi32> {handshake.arg_name = "q"}, %arg3: memref<10xi32> {handshake.arg_name = "p"}, %arg4: memref<10xi32> {handshake.arg_name = "r"}) -> i32 {
    %c0 = arith.constant {handshake.name = "constant3"} 0 : index
    cf.br ^bb1(%c0 : index) {handshake.name = "br0"}
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb3
    %c0_0 = arith.constant {handshake.name = "constant4"} 0 : index
    %1 = memref.load %arg2[%0] {handshake.deps = #handshake<deps[<"store3" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load5"} : memref<10xi32>
    cf.br ^bb2(%c0_0, %1 : index, i32) {handshake.name = "br1"}
  ^bb2(%2: index, %3: i32):  // 2 preds: ^bb1, ^bb2
    %c10 = arith.constant {handshake.name = "constant5"} 10 : index
    %c1 = arith.constant {handshake.name = "constant6"} 1 : index
    %c3 = arith.constant {handshake.name = "constant7"} 3 : index
    %4 = arith.shli %0, %c1 {handshake.name = "shli0"} : index
    %5 = arith.shli %0, %c3 {handshake.name = "shli1"} : index
    %6 = arith.addi %4, %5 {handshake.name = "addi5"} : index
    %7 = arith.addi %2, %6 {handshake.name = "addi2"} : index
    %8 = memref.load %arg0[%7] {handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load10"} : memref<100xi32>
    %9 = memref.load %arg1[%2] {handshake.deps = #handshake<deps[<"store2" (1) [[1, 9], [0, 0]]>, <"store2" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load7"} : memref<10xi32>
    %10 = memref.load %arg4[%0] {handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load8"} : memref<10xi32>
    %11 = arith.muli %10, %8 {handshake.name = "muli0"} : i32
    %12 = arith.addi %9, %11 {handshake.name = "addi0"} : i32
    memref.store %12, %arg1[%2] {handshake.deps = #handshake<deps[<"load7" (1) [[1, 9], [0, 0]]>, <"store2" (1) [[1, 9], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store2"} : memref<10xi32>
    %13 = memref.load %arg3[%2] {handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load9"} : memref<10xi32>
    %14 = arith.muli %8, %13 {handshake.name = "muli1"} : i32
    %15 = arith.addi %3, %14 {handshake.name = "addi1"} : i32
    %16 = arith.addi %2, %c1 {handshake.name = "addi3"} : index
    %17 = arith.cmpi ult, %16, %c10 {handshake.name = "cmpi0"} : index
    cf.cond_br %17, ^bb2(%16, %15 : index, i32), ^bb3 {handshake.name = "cond_br0"}
  ^bb3:  // pred: ^bb2
    %c10_1 = arith.constant {handshake.name = "constant8"} 10 : index
    %c1_2 = arith.constant {handshake.name = "constant9"} 1 : index
    memref.store %15, %arg2[%0] {handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store3"} : memref<10xi32>
    %18 = arith.addi %0, %c1_2 {handshake.name = "addi4"} : index
    %19 = arith.cmpi ult, %18, %c10_1 {handshake.name = "cmpi1"} : index
    cf.cond_br %19, ^bb1(%18 : index), ^bb4 {handshake.name = "cond_br1"}
  ^bb4:  // pred: ^bb3
    return {handshake.name = "return0"} %15 : i32
  }
}


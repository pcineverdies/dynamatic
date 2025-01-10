module {
  func.func @atax(%arg0: memref<100xf32> {handshake.arg_name = "A"}, %arg1: memref<10xf32> {handshake.arg_name = "x"}, %arg2: memref<10xf32> {handshake.arg_name = "y"}, %arg3: memref<10xf32> {handshake.arg_name = "tmp"}) -> i32 {
    %c0 = arith.constant {handshake.name = "constant3"} 0 : index
    cf.br ^bb1(%c0 : index) {handshake.name = "br0"}
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb4
    %c0_0 = arith.constant {handshake.name = "constant5"} 0 : index
    %1 = memref.load %arg3[%0] {handshake.deps = #handshake<deps[<"store3" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load6"} : memref<10xf32>
    cf.br ^bb2(%c0_0, %1 : index, f32) {handshake.name = "br1"}
  ^bb2(%2: index, %3: f32):  // 2 preds: ^bb1, ^bb2
    %c0_1 = arith.constant {handshake.name = "constant6"} 0 : index
    %c10 = arith.constant {handshake.name = "constant7"} 10 : index
    %c1 = arith.constant {handshake.name = "constant8"} 1 : index
    %c3 = arith.constant {handshake.name = "constant9"} 3 : index
    %4 = arith.shli %0, %c1 {handshake.name = "shli0"} : index
    %5 = arith.shli %0, %c3 {handshake.name = "shli1"} : index
    %6 = arith.addi %4, %5 {handshake.name = "addi5"} : index
    %7 = arith.addi %2, %6 {handshake.name = "addi0"} : index
    %8 = memref.load %arg0[%7] {handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load12"} : memref<100xf32>
    %9 = memref.load %arg1[%2] {handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load8"} : memref<10xf32>
    %10 = arith.mulf %8, %9 {handshake.name = "mulf0"} : f32
    %11 = arith.addf %3, %10 {handshake.name = "addf0"} : f32
    %12 = arith.addi %2, %c1 {handshake.name = "addi2"} : index
    %13 = arith.cmpi ult, %12, %c10 {handshake.name = "cmpi0"} : index
    cf.cond_br %13, ^bb2(%12, %11 : index, f32), ^bb3(%c0_1 : index) {handshake.name = "cond_br0"}
  ^bb3(%14: index):  // 2 preds: ^bb2, ^bb3
    %c10_2 = arith.constant {handshake.name = "constant10"} 10 : index
    %c1_3 = arith.constant {handshake.name = "constant11"} 1 : index
    %c3_4 = arith.constant {handshake.name = "constant12"} 3 : index
    %15 = memref.load %arg2[%14] {handshake.deps = #handshake<deps[<"store2" (1) [[1, 9], [0, 0]]>, <"store2" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load9"} : memref<10xf32>
    %16 = arith.shli %0, %c1_3 {handshake.name = "shli2"} : index
    %17 = arith.shli %0, %c3_4 {handshake.name = "shli3"} : index
    %18 = arith.addi %16, %17 {handshake.name = "addi6"} : index
    %19 = arith.addi %14, %18 {handshake.name = "addi1"} : index
    %20 = memref.load %arg0[%19] {handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load13"} : memref<100xf32>
    %21 = arith.mulf %20, %11 {handshake.name = "mulf1"} : f32
    %22 = arith.addf %15, %21 {handshake.name = "addf1"} : f32
    memref.store %22, %arg2[%14] {handshake.deps = #handshake<deps[<"load9" (1) [[1, 9], [0, 0]]>, <"store2" (1) [[1, 9], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store2"} : memref<10xf32>
    %23 = arith.addi %14, %c1_3 {handshake.name = "addi3"} : index
    %24 = arith.cmpi ult, %23, %c10_2 {handshake.name = "cmpi1"} : index
    cf.cond_br %24, ^bb3(%23 : index), ^bb4 {handshake.name = "cond_br1"}
  ^bb4:  // pred: ^bb3
    %c10_5 = arith.constant {handshake.name = "constant13"} 10 : index
    %c1_6 = arith.constant {handshake.name = "constant14"} 1 : index
    memref.store %11, %arg3[%0] {handshake.deps = #handshake<deps[<"load11" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store3"} : memref<10xf32>
    %25 = arith.addi %0, %c1_6 {handshake.name = "addi4"} : index
    %26 = arith.cmpi ult, %25, %c10_5 {handshake.name = "cmpi2"} : index
    cf.cond_br %26, ^bb1(%25 : index), ^bb5 {handshake.name = "cond_br2"}
  ^bb5:  // pred: ^bb4
    %c9 = arith.constant {handshake.name = "constant15"} 9 : index
    %27 = memref.load %arg3[%c9] {handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load11"} : memref<10xf32>
    %28 = arith.fptosi %27 {handshake.name = "fptosi0"} : f32 to i32
    return {handshake.name = "return0"} %28 : i32
  }
}


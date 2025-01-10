module {
  func.func @atax(%arg0: memref<100xf32> {handshake.arg_name = "A"}, %arg1: memref<10xf32> {handshake.arg_name = "x"}, %arg2: memref<10xf32> {handshake.arg_name = "y"}, %arg3: memref<10xf32> {handshake.arg_name = "tmp"}) -> i32 {
    %c1 = arith.constant 1 : index
    %c10 = arith.constant 10 : index
    %c0 = arith.constant 0 : index
    %c9 = arith.constant 9 : index
    cf.br ^bb1(%c0 : index) {handshake.name = "br0"}
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb4
    %1 = memref.load %arg3[%0] {handshake.deps = #handshake<deps[<"store3" (2) [[0, 0]]>]>, handshake.name = "load6"} : memref<10xf32>
    cf.br ^bb2(%c0, %1 : index, f32) {handshake.name = "br1"}
  ^bb2(%2: index, %3: f32):  // 2 preds: ^bb1, ^bb2
    %4 = arith.muli %0, %c10 {handshake.name = "muli0"} : index
    %5 = arith.addi %2, %4 {handshake.name = "addi0"} : index
    %6 = memref.load %arg0[%5] {handshake.name = "load12"} : memref<100xf32>
    %7 = memref.load %arg1[%2] {handshake.name = "load8"} : memref<10xf32>
    %8 = arith.mulf %6, %7 {handshake.name = "mulf0"} : f32
    %9 = arith.addf %3, %8 {handshake.name = "addf0"} : f32
    %10 = arith.addi %2, %c1 {handshake.name = "addi2"} : index
    %11 = arith.cmpi ult, %10, %c10 {handshake.name = "cmpi0"} : index
    cf.cond_br %11, ^bb2(%10, %9 : index, f32), ^bb3(%c0 : index)
  ^bb3(%12: index):  // 2 preds: ^bb2, ^bb3
    %13 = memref.load %arg2[%12] {handshake.deps = #handshake<deps[<"store2" (1) [[1, 9], [0, 0]]>, <"store2" (3) [[0, 0], [0, 0]]>]>, handshake.name = "load9"} : memref<10xf32>
    %14 = arith.muli %0, %c10 {handshake.name = "muli1"} : index
    %15 = arith.addi %12, %14 {handshake.name = "addi1"} : index
    %16 = memref.load %arg0[%15] {handshake.name = "load13"} : memref<100xf32>
    %17 = arith.mulf %16, %9 {handshake.name = "mulf1"} : f32
    %18 = arith.addf %13, %17 {handshake.name = "addf1"} : f32
    memref.store %18, %arg2[%12] {handshake.deps = #handshake<deps[<"load9" (1) [[1, 9], [0, 0]]>, <"store2" (1) [[1, 9], [0, 0]]>]>, handshake.name = "store2"} : memref<10xf32>
    %19 = arith.addi %12, %c1 {handshake.name = "addi3"} : index
    %20 = arith.cmpi ult, %19, %c10 {handshake.name = "cmpi1"} : index
    cf.cond_br %20, ^bb3(%19 : index), ^bb4 {handshake.name = "cond_br1"}
  ^bb4:  // pred: ^bb3
    memref.store %9, %arg3[%0] {handshake.deps = #handshake<deps[<"load11" (1)>]>, handshake.name = "store3"} : memref<10xf32>
    %21 = arith.addi %0, %c1 {handshake.name = "addi4"} : index
    %22 = arith.cmpi ult, %21, %c10 {handshake.name = "cmpi2"} : index
    cf.cond_br %22, ^bb1(%21 : index), ^bb5 {handshake.name = "cond_br2"}
  ^bb5:  // pred: ^bb4
    %23 = memref.load %arg3[%c9] {handshake.name = "load11"} : memref<10xf32>
    %24 = arith.fptosi %23 {handshake.name = "fptosi0"} : f32 to i32
    return {handshake.name = "return0"} %24 : i32
  }
}


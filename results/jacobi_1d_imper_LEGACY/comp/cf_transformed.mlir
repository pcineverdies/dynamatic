module {
  func.func @jacobi_1d_imper(%arg0: memref<50xi32> {handshake.arg_name = "A"}, %arg1: memref<50xi32> {handshake.arg_name = "B"}) -> i32 {
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %c3_i32 = arith.constant 3 : i32
    %c49 = arith.constant 49 : index
    %c-1 = arith.constant -1 : index
    cf.br ^bb1(%c0 : index) {handshake.name = "br0"}
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb4
    cf.br ^bb2(%c1 : index) {handshake.name = "br1"}
  ^bb2(%1: index):  // 2 preds: ^bb1, ^bb2
    %2 = arith.addi %1, %c-1 {handshake.name = "addi2"} : index
    %3 = memref.load %arg0[%2] {handshake.deps = #handshake<deps[<"store3" (1) [[1, 1]]>, <"store3" (2) [[0, 0]]>]>, handshake.name = "load5"} : memref<50xi32>
    %4 = memref.load %arg0[%1] {handshake.deps = #handshake<deps[<"store3" (1) [[1, 1]]>, <"store3" (2) [[0, 0]]>]>, handshake.name = "load6"} : memref<50xi32>
    %5 = arith.addi %3, %4 {handshake.name = "addi0"} : i32
    %6 = arith.addi %1, %c1 {handshake.name = "addi3"} : index
    %7 = memref.load %arg0[%6] {handshake.deps = #handshake<deps[<"store3" (1) [[1, 1]]>, <"store3" (2) [[0, 0]]>]>, handshake.name = "load7"} : memref<50xi32>
    %8 = arith.addi %5, %7 {handshake.name = "addi1"} : i32
    %9 = arith.muli %8, %c3_i32 {handshake.name = "muli0"} : i32
    memref.store %9, %arg1[%1] {handshake.deps = #handshake<deps[<"store2" (1) [[1, 1], [0, 0]]>, <"load8" (1) [[1, 1]]>, <"load8" (2) [[0, 0]]>]>, handshake.name = "store2"} : memref<50xi32>
    %10 = arith.addi %1, %c1 {handshake.name = "addi4"} : index
    %11 = arith.cmpi ult, %10, %c49 {handshake.name = "cmpi0"} : index
    cf.cond_br %11, ^bb2(%10 : index), ^bb3(%c1 : index)
  ^bb3(%12: index):  // 2 preds: ^bb2, ^bb3
    %13 = memref.load %arg1[%12] {handshake.deps = #handshake<deps[<"store2" (1) [[1, 1]]>]>, handshake.name = "load8"} : memref<50xi32>
    memref.store %13, %arg0[%12] {handshake.deps = #handshake<deps[<"load5" (1) [[1, 1]]>, <"load6" (1) [[1, 1]]>, <"load7" (1) [[1, 1]]>, <"store3" (1) [[1, 1], [0, 0]]>]>, handshake.name = "store3"} : memref<50xi32>
    %14 = arith.addi %12, %c1 {handshake.name = "addi5"} : index
    %15 = arith.cmpi ult, %14, %c49 {handshake.name = "cmpi1"} : index
    cf.cond_br %15, ^bb3(%14 : index), ^bb4 {handshake.name = "cond_br1"}
  ^bb4:  // pred: ^bb3
    %16 = arith.addi %0, %c1 {handshake.name = "addi6"} : index
    %17 = arith.cmpi ult, %16, %c2 {handshake.name = "cmpi2"} : index
    cf.cond_br %17, ^bb1(%16 : index), ^bb5 {handshake.name = "cond_br2"}
  ^bb5:  // pred: ^bb4
    %18 = memref.load %arg0[%c49] {handshake.name = "load9"} : memref<50xi32>
    return {handshake.name = "return0"} %18 : i32
  }
}


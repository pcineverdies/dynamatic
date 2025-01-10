module {
  func.func @jacobi_1d_imper(%arg0: memref<50xi32> {handshake.arg_name = "A"}, %arg1: memref<50xi32> {handshake.arg_name = "B"}) -> i32 {
    %c-1 = arith.constant {handshake.name = "constant7"} -1 : index
    %c49 = arith.constant {handshake.name = "constant5"} 49 : index
    %c3_i32 = arith.constant {handshake.name = "constant0"} 3 : i32
    %c0 = arith.constant {handshake.name = "constant1"} 0 : index
    %c2 = arith.constant {handshake.name = "constant2"} 2 : index
    %c1 = arith.constant {handshake.name = "constant3"} 1 : index
    %0 = scf.while (%arg2 = %c0) : (index) -> index {
      %2 = scf.while (%arg3 = %c1) : (index) -> index {
        %6 = arith.addi %arg3, %c-1 {handshake.name = "addi2"} : index
        %7 = memref.load %arg0[%6] {handshake.deps = #handshake<deps[<"store3" (1) [[1, 1]]>, <"store3" (2) [[0, 0]]>]>, handshake.name = "load5"} : memref<50xi32>
        %8 = memref.load %arg0[%arg3] {handshake.deps = #handshake<deps[<"store3" (1) [[1, 1]]>, <"store3" (2) [[0, 0]]>]>, handshake.name = "load6"} : memref<50xi32>
        %9 = arith.addi %7, %8 {handshake.name = "addi0"} : i32
        %10 = arith.addi %arg3, %c1 {handshake.name = "addi3"} : index
        %11 = memref.load %arg0[%10] {handshake.deps = #handshake<deps[<"store3" (1) [[1, 1]]>, <"store3" (2) [[0, 0]]>]>, handshake.name = "load7"} : memref<50xi32>
        %12 = arith.addi %9, %11 {handshake.name = "addi1"} : i32
        %13 = arith.muli %12, %c3_i32 {handshake.name = "muli0"} : i32
        memref.store %13, %arg1[%arg3] {handshake.deps = #handshake<deps[<"store2" (1) [[1, 1], [0, 0]]>, <"load8" (1) [[1, 1]]>, <"load8" (2) [[0, 0]]>]>, handshake.name = "store2"} : memref<50xi32>
        %14 = arith.addi %arg3, %c1 {handshake.name = "addi4"} : index
        %15 = arith.cmpi ult, %14, %c49 {handshake.name = "cmpi0"} : index
        scf.condition(%15) {handshake.name = "condition0"} %14 : index
      } do {
      ^bb0(%arg3: index):
        scf.yield {handshake.name = "yield3"} %arg3 : index
      } attributes {handshake.name = "while0"}
      %3 = scf.while (%arg3 = %c1) : (index) -> index {
        %6 = memref.load %arg1[%arg3] {handshake.deps = #handshake<deps[<"store2" (1) [[1, 1]]>]>, handshake.name = "load8"} : memref<50xi32>
        memref.store %6, %arg0[%arg3] {handshake.deps = #handshake<deps[<"load5" (1) [[1, 1]]>, <"load6" (1) [[1, 1]]>, <"load7" (1) [[1, 1]]>, <"store3" (1) [[1, 1], [0, 0]]>]>, handshake.name = "store3"} : memref<50xi32>
        %7 = arith.addi %arg3, %c1 {handshake.name = "addi5"} : index
        %8 = arith.cmpi ult, %7, %c49 {handshake.name = "cmpi1"} : index
        scf.condition(%8) {handshake.name = "condition1"} %7 : index
      } do {
      ^bb0(%arg3: index):
        scf.yield {handshake.name = "yield4"} %arg3 : index
      } attributes {handshake.name = "while1"}
      %4 = arith.addi %arg2, %c1 {handshake.name = "addi6"} : index
      %5 = arith.cmpi ult, %4, %c2 {handshake.name = "cmpi2"} : index
      scf.condition(%5) {handshake.name = "condition2"} %4 : index
    } do {
    ^bb0(%arg2: index):
      scf.yield {handshake.name = "yield5"} %arg2 : index
    } attributes {handshake.name = "while2"}
    %1 = memref.load %arg0[%c49] {handshake.name = "load9"} : memref<50xi32>
    return {handshake.name = "return0"} %1 : i32
  }
}


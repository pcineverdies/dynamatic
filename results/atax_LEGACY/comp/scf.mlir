module {
  func.func @atax(%arg0: memref<100xf32> {handshake.arg_name = "A"}, %arg1: memref<10xf32> {handshake.arg_name = "x"}, %arg2: memref<10xf32> {handshake.arg_name = "y"}, %arg3: memref<10xf32> {handshake.arg_name = "tmp"}) -> i32 {
    %c9 = arith.constant {handshake.name = "constant9"} 9 : index
    %c0 = arith.constant {handshake.name = "constant0"} 0 : index
    %c10 = arith.constant {handshake.name = "constant1"} 10 : index
    %c1 = arith.constant {handshake.name = "constant2"} 1 : index
    %0 = scf.while (%arg4 = %c0) : (index) -> index {
      %3 = memref.load %arg3[%arg4] {handshake.deps = #handshake<deps[<"store3" (2) [[0, 0]]>]>, handshake.name = "load6"} : memref<10xf32>
      %4:2 = scf.while (%arg5 = %c0, %arg6 = %3) : (index, f32) -> (index, f32) {
        %8 = arith.muli %arg4, %c10 {handshake.name = "muli0"} : index
        %9 = arith.addi %arg5, %8 {handshake.name = "addi0"} : index
        %10 = memref.load %arg0[%9] {handshake.name = "load12"} : memref<100xf32>
        %11 = memref.load %arg1[%arg5] {handshake.name = "load8"} : memref<10xf32>
        %12 = arith.mulf %10, %11 {handshake.name = "mulf0"} : f32
        %13 = arith.addf %arg6, %12 {handshake.name = "addf0"} : f32
        %14 = arith.addi %arg5, %c1 {handshake.name = "addi2"} : index
        %15 = arith.cmpi ult, %14, %c10 {handshake.name = "cmpi0"} : index
        scf.condition(%15) {handshake.name = "condition0"} %14, %13 : index, f32
      } do {
      ^bb0(%arg5: index, %arg6: f32):
        scf.yield {handshake.name = "yield4"} %arg5, %arg6 : index, f32
      } attributes {handshake.name = "while0"}
      %5 = scf.while (%arg5 = %c0) : (index) -> index {
        %8 = memref.load %arg2[%arg5] {handshake.deps = #handshake<deps[<"store2" (1) [[1, 9], [0, 0]]>, <"store2" (3) [[0, 0], [0, 0]]>]>, handshake.name = "load9"} : memref<10xf32>
        %9 = arith.muli %arg4, %c10 {handshake.name = "muli1"} : index
        %10 = arith.addi %arg5, %9 {handshake.name = "addi1"} : index
        %11 = memref.load %arg0[%10] {handshake.name = "load13"} : memref<100xf32>
        %12 = arith.mulf %11, %4#1 {handshake.name = "mulf1"} : f32
        %13 = arith.addf %8, %12 {handshake.name = "addf1"} : f32
        memref.store %13, %arg2[%arg5] {handshake.deps = #handshake<deps[<"load9" (1) [[1, 9], [0, 0]]>, <"store2" (1) [[1, 9], [0, 0]]>]>, handshake.name = "store2"} : memref<10xf32>
        %14 = arith.addi %arg5, %c1 {handshake.name = "addi3"} : index
        %15 = arith.cmpi ult, %14, %c10 {handshake.name = "cmpi1"} : index
        scf.condition(%15) {handshake.name = "condition1"} %14 : index
      } do {
      ^bb0(%arg5: index):
        scf.yield {handshake.name = "yield5"} %arg5 : index
      } attributes {handshake.name = "while1"}
      memref.store %4#1, %arg3[%arg4] {handshake.deps = #handshake<deps[<"load11" (1)>]>, handshake.name = "store3"} : memref<10xf32>
      %6 = arith.addi %arg4, %c1 {handshake.name = "addi4"} : index
      %7 = arith.cmpi ult, %6, %c10 {handshake.name = "cmpi2"} : index
      scf.condition(%7) {handshake.name = "condition2"} %6 : index
    } do {
    ^bb0(%arg4: index):
      scf.yield {handshake.name = "yield6"} %arg4 : index
    } attributes {handshake.name = "while2"}
    %1 = memref.load %arg3[%c9] {handshake.name = "load11"} : memref<10xf32>
    %2 = arith.fptosi %1 {handshake.name = "fptosi0"} : f32 to i32
    return {handshake.name = "return0"} %2 : i32
  }
}


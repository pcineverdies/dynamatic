module {
  func.func @kernel_2mm(%arg0: i32 {handshake.arg_name = "alpha"}, %arg1: i32 {handshake.arg_name = "beta"}, %arg2: memref<49xi32> {handshake.arg_name = "tmp"}, %arg3: memref<49xi32> {handshake.arg_name = "A"}, %arg4: memref<49xi32> {handshake.arg_name = "B"}, %arg5: memref<49xi32> {handshake.arg_name = "C"}, %arg6: memref<49xi32> {handshake.arg_name = "D"}) -> i32 {
    %c48 = arith.constant {handshake.name = "constant33"} 48 : index
    %c0_i32 = arith.constant {handshake.name = "constant0"} 0 : i32
    %c0 = arith.constant {handshake.name = "constant1"} 0 : index
    %c7 = arith.constant {handshake.name = "constant2"} 7 : index
    %c1 = arith.constant {handshake.name = "constant3"} 1 : index
    %0 = scf.while (%arg7 = %c0) : (index) -> index {
      %3 = scf.while (%arg8 = %c0) : (index) -> index {
        %6 = arith.muli %arg7, %c7 {handshake.name = "muli4"} : index
        %7 = arith.addi %arg8, %6 {handshake.name = "addi2"} : index
        memref.store %c0_i32, %arg2[%7] {handshake.deps = #handshake<deps[<"load18" (3) [[0, 0], [0, 0]]>, <"store9" (3) [[0, 0], [0, 0]]>, <"load20" (1)>]>, handshake.name = "store8"} : memref<49xi32>
        %8 = scf.while (%arg9 = %c0) : (index) -> index {
          %11 = arith.muli %arg7, %c7 {handshake.name = "muli5"} : index
          %12 = arith.addi %arg9, %11 {handshake.name = "addi3"} : index
          %13 = memref.load %arg3[%12] {handshake.name = "load16"} : memref<49xi32>
          %14 = arith.muli %arg0, %13 {handshake.name = "muli0"} : i32
          %15 = arith.muli %arg9, %c7 {handshake.name = "muli6"} : index
          %16 = arith.addi %arg8, %15 {handshake.name = "addi4"} : index
          %17 = memref.load %arg4[%16] {handshake.name = "load17"} : memref<49xi32>
          %18 = arith.muli %14, %17 {handshake.name = "muli1"} : i32
          %19 = arith.muli %arg7, %c7 {handshake.name = "muli7"} : index
          %20 = arith.addi %arg8, %19 {handshake.name = "addi5"} : index
          %21 = memref.load %arg2[%20] {handshake.deps = #handshake<deps[<"store9" (3) [[0, 0], [0, 0], [1, 6]]>, <"store9" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.name = "load18"} : memref<49xi32>
          %22 = arith.addi %21, %18 {handshake.name = "addi0"} : i32
          %23 = arith.muli %arg7, %c7 {handshake.name = "muli8"} : index
          %24 = arith.addi %arg8, %23 {handshake.name = "addi6"} : index
          memref.store %22, %arg2[%24] {handshake.deps = #handshake<deps[<"load18" (3) [[0, 0], [0, 0], [1, 6]]>, <"store9" (3) [[0, 0], [0, 0], [1, 6]]>, <"load20" (1)>]>, handshake.name = "store9"} : memref<49xi32>
          %25 = arith.addi %arg9, %c1 {handshake.name = "addi14"} : index
          %26 = arith.cmpi ult, %25, %c7 {handshake.name = "cmpi0"} : index
          scf.condition(%26) {handshake.name = "condition0"} %25 : index
        } do {
        ^bb0(%arg9: index):
          scf.yield {handshake.name = "yield6"} %arg9 : index
        } attributes {handshake.name = "while0"}
        %9 = arith.addi %arg8, %c1 {handshake.name = "addi15"} : index
        %10 = arith.cmpi ult, %9, %c7 {handshake.name = "cmpi1"} : index
        scf.condition(%10) {handshake.name = "condition1"} %9 : index
      } do {
      ^bb0(%arg8: index):
        scf.yield {handshake.name = "yield7"} %arg8 : index
      } attributes {handshake.name = "while1"}
      %4 = arith.addi %arg7, %c1 {handshake.name = "addi16"} : index
      %5 = arith.cmpi ult, %4, %c7 {handshake.name = "cmpi2"} : index
      scf.condition(%5) {handshake.name = "condition2"} %4 : index
    } do {
    ^bb0(%arg7: index):
      scf.yield {handshake.name = "yield8"} %arg7 : index
    } attributes {handshake.name = "while2"}
    %1 = scf.while (%arg7 = %c0) : (index) -> index {
      %3 = scf.while (%arg8 = %c0) : (index) -> index {
        %6 = arith.muli %arg7, %c7 {handshake.name = "muli9"} : index
        %7 = arith.addi %arg8, %6 {handshake.name = "addi7"} : index
        %8 = memref.load %arg6[%7] {handshake.deps = #handshake<deps[<"store10" (3) [[0, 0], [0, 0]]>, <"store11" (3) [[0, 0], [0, 0]]>]>, handshake.name = "load19"} : memref<49xi32>
        %9 = arith.muli %8, %arg1 {handshake.name = "muli2"} : i32
        %10 = arith.muli %arg7, %c7 {handshake.name = "muli10"} : index
        %11 = arith.addi %arg8, %10 {handshake.name = "addi8"} : index
        memref.store %9, %arg6[%11] {handshake.deps = #handshake<deps[<"load22" (3) [[0, 0], [0, 0]]>, <"store11" (3) [[0, 0], [0, 0]]>, <"load23" (1)>]>, handshake.name = "store10"} : memref<49xi32>
        %12 = scf.while (%arg9 = %c0) : (index) -> index {
          %15 = arith.muli %arg7, %c7 {handshake.name = "muli11"} : index
          %16 = arith.addi %arg9, %15 {handshake.name = "addi9"} : index
          %17 = memref.load %arg2[%16] {handshake.name = "load20"} : memref<49xi32>
          %18 = arith.muli %arg9, %c7 {handshake.name = "muli12"} : index
          %19 = arith.addi %arg8, %18 {handshake.name = "addi10"} : index
          %20 = memref.load %arg5[%19] {handshake.name = "load21"} : memref<49xi32>
          %21 = arith.muli %17, %20 {handshake.name = "muli3"} : i32
          %22 = arith.muli %arg7, %c7 {handshake.name = "muli13"} : index
          %23 = arith.addi %arg8, %22 {handshake.name = "addi11"} : index
          %24 = memref.load %arg6[%23] {handshake.deps = #handshake<deps[<"store11" (3) [[0, 0], [0, 0], [1, 6]]>, <"store11" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.name = "load22"} : memref<49xi32>
          %25 = arith.addi %24, %21 {handshake.name = "addi1"} : i32
          %26 = arith.muli %arg7, %c7 {handshake.name = "muli14"} : index
          %27 = arith.addi %arg8, %26 {handshake.name = "addi12"} : index
          memref.store %25, %arg6[%27] {handshake.deps = #handshake<deps[<"load22" (3) [[0, 0], [0, 0], [1, 6]]>, <"store11" (3) [[0, 0], [0, 0], [1, 6]]>, <"load23" (1)>]>, handshake.name = "store11"} : memref<49xi32>
          %28 = arith.addi %arg9, %c1 {handshake.name = "addi17"} : index
          %29 = arith.cmpi ult, %28, %c7 {handshake.name = "cmpi3"} : index
          scf.condition(%29) {handshake.name = "condition3"} %28 : index
        } do {
        ^bb0(%arg9: index):
          scf.yield {handshake.name = "yield9"} %arg9 : index
        } attributes {handshake.name = "while3"}
        %13 = arith.addi %arg8, %c1 {handshake.name = "addi18"} : index
        %14 = arith.cmpi ult, %13, %c7 {handshake.name = "cmpi4"} : index
        scf.condition(%14) {handshake.name = "condition4"} %13 : index
      } do {
      ^bb0(%arg8: index):
        scf.yield {handshake.name = "yield10"} %arg8 : index
      } attributes {handshake.name = "while4"}
      %4 = arith.addi %arg7, %c1 {handshake.name = "addi19"} : index
      %5 = arith.cmpi ult, %4, %c7 {handshake.name = "cmpi5"} : index
      scf.condition(%5) {handshake.name = "condition5"} %4 : index
    } do {
    ^bb0(%arg7: index):
      scf.yield {handshake.name = "yield11"} %arg7 : index
    } attributes {handshake.name = "while5"}
    %2 = memref.load %arg6[%c48] {handshake.name = "load23"} : memref<49xi32>
    return {handshake.name = "return0"} %2 : i32
  }
}


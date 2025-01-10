module {
  func.func @kernel_2mm(%arg0: i32 {handshake.arg_name = "alpha"}, %arg1: i32 {handshake.arg_name = "beta"}, %arg2: memref<49xi32> {handshake.arg_name = "tmp"}, %arg3: memref<49xi32> {handshake.arg_name = "A"}, %arg4: memref<49xi32> {handshake.arg_name = "B"}, %arg5: memref<49xi32> {handshake.arg_name = "C"}, %arg6: memref<49xi32> {handshake.arg_name = "D"}) -> i32 {
    %c1 = arith.constant 1 : index
    %c7 = arith.constant 7 : index
    %c0 = arith.constant 0 : index
    %c0_i32 = arith.constant 0 : i32
    %c48 = arith.constant 48 : index
    cf.br ^bb1(%c0 : index) {handshake.name = "br0"}
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    cf.br ^bb2(%c0 : index) {handshake.name = "br1"}
  ^bb2(%1: index):  // 2 preds: ^bb1, ^bb4
    %2 = arith.muli %0, %c7 {handshake.name = "muli4"} : index
    %3 = arith.addi %1, %2 {handshake.name = "addi2"} : index
    memref.store %c0_i32, %arg2[%3] {handshake.deps = #handshake<deps[<"load18" (3) [[0, 0], [0, 0]]>, <"store9" (3) [[0, 0], [0, 0]]>, <"load20" (1)>]>, handshake.name = "store8"} : memref<49xi32>
    cf.br ^bb3(%c0 : index) {handshake.name = "br2"}
  ^bb3(%4: index):  // 2 preds: ^bb2, ^bb3
    %5 = arith.muli %0, %c7 {handshake.name = "muli5"} : index
    %6 = arith.addi %4, %5 {handshake.name = "addi3"} : index
    %7 = memref.load %arg3[%6] {handshake.name = "load16"} : memref<49xi32>
    %8 = arith.muli %arg0, %7 {handshake.name = "muli0"} : i32
    %9 = arith.muli %4, %c7 {handshake.name = "muli6"} : index
    %10 = arith.addi %1, %9 {handshake.name = "addi4"} : index
    %11 = memref.load %arg4[%10] {handshake.name = "load17"} : memref<49xi32>
    %12 = arith.muli %8, %11 {handshake.name = "muli1"} : i32
    %13 = arith.muli %0, %c7 {handshake.name = "muli7"} : index
    %14 = arith.addi %1, %13 {handshake.name = "addi5"} : index
    %15 = memref.load %arg2[%14] {handshake.deps = #handshake<deps[<"store9" (3) [[0, 0], [0, 0], [1, 6]]>, <"store9" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.name = "load18"} : memref<49xi32>
    %16 = arith.addi %15, %12 {handshake.name = "addi0"} : i32
    %17 = arith.muli %0, %c7 {handshake.name = "muli8"} : index
    %18 = arith.addi %1, %17 {handshake.name = "addi6"} : index
    memref.store %16, %arg2[%18] {handshake.deps = #handshake<deps[<"load18" (3) [[0, 0], [0, 0], [1, 6]]>, <"store9" (3) [[0, 0], [0, 0], [1, 6]]>, <"load20" (1)>]>, handshake.name = "store9"} : memref<49xi32>
    %19 = arith.addi %4, %c1 {handshake.name = "addi14"} : index
    %20 = arith.cmpi ult, %19, %c7 {handshake.name = "cmpi0"} : index
    cf.cond_br %20, ^bb3(%19 : index), ^bb4 {handshake.name = "cond_br0"}
  ^bb4:  // pred: ^bb3
    %21 = arith.addi %1, %c1 {handshake.name = "addi15"} : index
    %22 = arith.cmpi ult, %21, %c7 {handshake.name = "cmpi1"} : index
    cf.cond_br %22, ^bb2(%21 : index), ^bb5 {handshake.name = "cond_br1"}
  ^bb5:  // pred: ^bb4
    %23 = arith.addi %0, %c1 {handshake.name = "addi16"} : index
    %24 = arith.cmpi ult, %23, %c7 {handshake.name = "cmpi2"} : index
    cf.cond_br %24, ^bb1(%23 : index), ^bb6(%c0 : index)
  ^bb6(%25: index):  // 2 preds: ^bb5, ^bb10
    cf.br ^bb7(%c0 : index) {handshake.name = "br4"}
  ^bb7(%26: index):  // 2 preds: ^bb6, ^bb9
    %27 = arith.muli %25, %c7 {handshake.name = "muli9"} : index
    %28 = arith.addi %26, %27 {handshake.name = "addi7"} : index
    %29 = memref.load %arg6[%28] {handshake.deps = #handshake<deps[<"store10" (3) [[0, 0], [0, 0]]>, <"store11" (3) [[0, 0], [0, 0]]>]>, handshake.name = "load19"} : memref<49xi32>
    %30 = arith.muli %29, %arg1 {handshake.name = "muli2"} : i32
    %31 = arith.muli %25, %c7 {handshake.name = "muli10"} : index
    %32 = arith.addi %26, %31 {handshake.name = "addi8"} : index
    memref.store %30, %arg6[%32] {handshake.deps = #handshake<deps[<"load22" (3) [[0, 0], [0, 0]]>, <"store11" (3) [[0, 0], [0, 0]]>, <"load23" (1)>]>, handshake.name = "store10"} : memref<49xi32>
    cf.br ^bb8(%c0 : index) {handshake.name = "br5"}
  ^bb8(%33: index):  // 2 preds: ^bb7, ^bb8
    %34 = arith.muli %25, %c7 {handshake.name = "muli11"} : index
    %35 = arith.addi %33, %34 {handshake.name = "addi9"} : index
    %36 = memref.load %arg2[%35] {handshake.name = "load20"} : memref<49xi32>
    %37 = arith.muli %33, %c7 {handshake.name = "muli12"} : index
    %38 = arith.addi %26, %37 {handshake.name = "addi10"} : index
    %39 = memref.load %arg5[%38] {handshake.name = "load21"} : memref<49xi32>
    %40 = arith.muli %36, %39 {handshake.name = "muli3"} : i32
    %41 = arith.muli %25, %c7 {handshake.name = "muli13"} : index
    %42 = arith.addi %26, %41 {handshake.name = "addi11"} : index
    %43 = memref.load %arg6[%42] {handshake.deps = #handshake<deps[<"store11" (3) [[0, 0], [0, 0], [1, 6]]>, <"store11" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.name = "load22"} : memref<49xi32>
    %44 = arith.addi %43, %40 {handshake.name = "addi1"} : i32
    %45 = arith.muli %25, %c7 {handshake.name = "muli14"} : index
    %46 = arith.addi %26, %45 {handshake.name = "addi12"} : index
    memref.store %44, %arg6[%46] {handshake.deps = #handshake<deps[<"load22" (3) [[0, 0], [0, 0], [1, 6]]>, <"store11" (3) [[0, 0], [0, 0], [1, 6]]>, <"load23" (1)>]>, handshake.name = "store11"} : memref<49xi32>
    %47 = arith.addi %33, %c1 {handshake.name = "addi17"} : index
    %48 = arith.cmpi ult, %47, %c7 {handshake.name = "cmpi3"} : index
    cf.cond_br %48, ^bb8(%47 : index), ^bb9 {handshake.name = "cond_br3"}
  ^bb9:  // pred: ^bb8
    %49 = arith.addi %26, %c1 {handshake.name = "addi18"} : index
    %50 = arith.cmpi ult, %49, %c7 {handshake.name = "cmpi4"} : index
    cf.cond_br %50, ^bb7(%49 : index), ^bb10 {handshake.name = "cond_br4"}
  ^bb10:  // pred: ^bb9
    %51 = arith.addi %25, %c1 {handshake.name = "addi19"} : index
    %52 = arith.cmpi ult, %51, %c7 {handshake.name = "cmpi5"} : index
    cf.cond_br %52, ^bb6(%51 : index), ^bb11 {handshake.name = "cond_br5"}
  ^bb11:  // pred: ^bb10
    %53 = memref.load %arg6[%c48] {handshake.name = "load23"} : memref<49xi32>
    return {handshake.name = "return0"} %53 : i32
  }
}


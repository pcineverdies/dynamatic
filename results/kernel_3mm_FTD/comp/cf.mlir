module {
  func.func @kernel_3mm(%arg0: memref<49xi32> {handshake.arg_name = "A"}, %arg1: memref<49xi32> {handshake.arg_name = "B"}, %arg2: memref<49xi32> {handshake.arg_name = "C"}, %arg3: memref<49xi32> {handshake.arg_name = "D"}, %arg4: memref<49xi32> {handshake.arg_name = "E"}, %arg5: memref<49xi32> {handshake.arg_name = "F"}, %arg6: memref<49xi32> {handshake.arg_name = "G"}) {
    %c0_i32 = arith.constant {handshake.name = "constant0"} 0 : i32
    %c0 = arith.constant {handshake.name = "constant1"} 0 : index
    %c7 = arith.constant {handshake.name = "constant2"} 7 : index
    %c1 = arith.constant {handshake.name = "constant3"} 1 : index
    cf.br ^bb1(%c0 : index) {handshake.name = "br0"}
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    cf.br ^bb2(%c0 : index) {handshake.name = "br1"}
  ^bb2(%1: index):  // 2 preds: ^bb1, ^bb4
    %2 = arith.muli %0, %c7 {handshake.name = "muli3"} : index
    %3 = arith.addi %1, %2 {handshake.name = "addi3"} : index
    memref.store %c0_i32, %arg4[%3] {handshake.deps = #handshake<deps[<"load20" (3) [[0, 0], [0, 0]]>, <"store13" (3) [[0, 0], [0, 0]]>, <"load24" (1)>]>, handshake.name = "store12"} : memref<49xi32>
    cf.br ^bb3(%c0 : index) {handshake.name = "br2"}
  ^bb3(%4: index):  // 2 preds: ^bb2, ^bb3
    %5 = arith.muli %0, %c7 {handshake.name = "muli4"} : index
    %6 = arith.addi %4, %5 {handshake.name = "addi4"} : index
    %7 = memref.load %arg0[%6] {handshake.name = "load18"} : memref<49xi32>
    %8 = arith.muli %4, %c7 {handshake.name = "muli5"} : index
    %9 = arith.addi %1, %8 {handshake.name = "addi5"} : index
    %10 = memref.load %arg1[%9] {handshake.name = "load19"} : memref<49xi32>
    %11 = arith.muli %7, %10 {handshake.name = "muli0"} : i32
    %12 = arith.muli %0, %c7 {handshake.name = "muli6"} : index
    %13 = arith.addi %1, %12 {handshake.name = "addi6"} : index
    %14 = memref.load %arg4[%13] {handshake.deps = #handshake<deps[<"store13" (3) [[0, 0], [0, 0], [1, 6]]>, <"store13" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.name = "load20"} : memref<49xi32>
    %15 = arith.addi %14, %11 {handshake.name = "addi0"} : i32
    %16 = arith.muli %0, %c7 {handshake.name = "muli7"} : index
    %17 = arith.addi %1, %16 {handshake.name = "addi7"} : index
    memref.store %15, %arg4[%17] {handshake.deps = #handshake<deps[<"load20" (3) [[0, 0], [0, 0], [1, 6]]>, <"store13" (3) [[0, 0], [0, 0], [1, 6]]>, <"load24" (1)>]>, handshake.name = "store13"} : memref<49xi32>
    %18 = arith.addi %4, %c1 {handshake.name = "addi18"} : index
    %19 = arith.cmpi ult, %18, %c7 {handshake.name = "cmpi0"} : index
    cf.cond_br %19, ^bb3(%18 : index), ^bb4 {handshake.name = "cond_br0"}
  ^bb4:  // pred: ^bb3
    %20 = arith.addi %1, %c1 {handshake.name = "addi19"} : index
    %21 = arith.cmpi ult, %20, %c7 {handshake.name = "cmpi1"} : index
    cf.cond_br %21, ^bb2(%20 : index), ^bb5 {handshake.name = "cond_br1"}
  ^bb5:  // pred: ^bb4
    %22 = arith.addi %0, %c1 {handshake.name = "addi20"} : index
    %23 = arith.cmpi ult, %22, %c7 {handshake.name = "cmpi2"} : index
    cf.cond_br %23, ^bb1(%22 : index), ^bb6 {handshake.name = "cond_br2"}
  ^bb6:  // pred: ^bb5
    cf.br ^bb7(%c0 : index) {handshake.name = "br3"}
  ^bb7(%24: index):  // 2 preds: ^bb6, ^bb11
    cf.br ^bb8(%c0 : index) {handshake.name = "br4"}
  ^bb8(%25: index):  // 2 preds: ^bb7, ^bb10
    %26 = arith.muli %24, %c7 {handshake.name = "muli8"} : index
    %27 = arith.addi %25, %26 {handshake.name = "addi8"} : index
    memref.store %c0_i32, %arg5[%27] {handshake.deps = #handshake<deps[<"load23" (3) [[0, 0], [0, 0]]>, <"store15" (3) [[0, 0], [0, 0]]>, <"load25" (1)>]>, handshake.name = "store14"} : memref<49xi32>
    cf.br ^bb9(%c0 : index) {handshake.name = "br5"}
  ^bb9(%28: index):  // 2 preds: ^bb8, ^bb9
    %29 = arith.muli %24, %c7 {handshake.name = "muli9"} : index
    %30 = arith.addi %28, %29 {handshake.name = "addi9"} : index
    %31 = memref.load %arg2[%30] {handshake.name = "load21"} : memref<49xi32>
    %32 = arith.muli %28, %c7 {handshake.name = "muli10"} : index
    %33 = arith.addi %25, %32 {handshake.name = "addi10"} : index
    %34 = memref.load %arg3[%33] {handshake.name = "load22"} : memref<49xi32>
    %35 = arith.muli %31, %34 {handshake.name = "muli1"} : i32
    %36 = arith.muli %24, %c7 {handshake.name = "muli11"} : index
    %37 = arith.addi %25, %36 {handshake.name = "addi11"} : index
    %38 = memref.load %arg5[%37] {handshake.deps = #handshake<deps[<"store15" (3) [[0, 0], [0, 0], [1, 6]]>, <"store15" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.name = "load23"} : memref<49xi32>
    %39 = arith.addi %38, %35 {handshake.name = "addi1"} : i32
    %40 = arith.muli %24, %c7 {handshake.name = "muli12"} : index
    %41 = arith.addi %25, %40 {handshake.name = "addi12"} : index
    memref.store %39, %arg5[%41] {handshake.deps = #handshake<deps[<"load23" (3) [[0, 0], [0, 0], [1, 6]]>, <"store15" (3) [[0, 0], [0, 0], [1, 6]]>, <"load25" (1)>]>, handshake.name = "store15"} : memref<49xi32>
    %42 = arith.addi %28, %c1 {handshake.name = "addi21"} : index
    %43 = arith.cmpi ult, %42, %c7 {handshake.name = "cmpi3"} : index
    cf.cond_br %43, ^bb9(%42 : index), ^bb10 {handshake.name = "cond_br3"}
  ^bb10:  // pred: ^bb9
    %44 = arith.addi %25, %c1 {handshake.name = "addi22"} : index
    %45 = arith.cmpi ult, %44, %c7 {handshake.name = "cmpi4"} : index
    cf.cond_br %45, ^bb8(%44 : index), ^bb11 {handshake.name = "cond_br4"}
  ^bb11:  // pred: ^bb10
    %46 = arith.addi %24, %c1 {handshake.name = "addi23"} : index
    %47 = arith.cmpi ult, %46, %c7 {handshake.name = "cmpi5"} : index
    cf.cond_br %47, ^bb7(%46 : index), ^bb12 {handshake.name = "cond_br5"}
  ^bb12:  // pred: ^bb11
    cf.br ^bb13(%c0 : index) {handshake.name = "br6"}
  ^bb13(%48: index):  // 2 preds: ^bb12, ^bb17
    cf.br ^bb14(%c0 : index) {handshake.name = "br7"}
  ^bb14(%49: index):  // 2 preds: ^bb13, ^bb16
    %50 = arith.muli %48, %c7 {handshake.name = "muli13"} : index
    %51 = arith.addi %49, %50 {handshake.name = "addi13"} : index
    memref.store %c0_i32, %arg6[%51] {handshake.deps = #handshake<deps[<"load26" (3) [[0, 0], [0, 0]]>, <"store17" (3) [[0, 0], [0, 0]]>]>, handshake.name = "store16"} : memref<49xi32>
    cf.br ^bb15(%c0 : index) {handshake.name = "br8"}
  ^bb15(%52: index):  // 2 preds: ^bb14, ^bb15
    %53 = arith.muli %48, %c7 {handshake.name = "muli14"} : index
    %54 = arith.addi %52, %53 {handshake.name = "addi14"} : index
    %55 = memref.load %arg4[%54] {handshake.name = "load24"} : memref<49xi32>
    %56 = arith.muli %52, %c7 {handshake.name = "muli15"} : index
    %57 = arith.addi %49, %56 {handshake.name = "addi15"} : index
    %58 = memref.load %arg5[%57] {handshake.name = "load25"} : memref<49xi32>
    %59 = arith.muli %55, %58 {handshake.name = "muli2"} : i32
    %60 = arith.muli %48, %c7 {handshake.name = "muli16"} : index
    %61 = arith.addi %49, %60 {handshake.name = "addi16"} : index
    %62 = memref.load %arg6[%61] {handshake.deps = #handshake<deps[<"store17" (3) [[0, 0], [0, 0], [1, 6]]>, <"store17" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.name = "load26"} : memref<49xi32>
    %63 = arith.addi %62, %59 {handshake.name = "addi2"} : i32
    %64 = arith.muli %48, %c7 {handshake.name = "muli17"} : index
    %65 = arith.addi %49, %64 {handshake.name = "addi17"} : index
    memref.store %63, %arg6[%65] {handshake.deps = #handshake<deps[<"load26" (3) [[0, 0], [0, 0], [1, 6]]>, <"store17" (3) [[0, 0], [0, 0], [1, 6]]>]>, handshake.name = "store17"} : memref<49xi32>
    %66 = arith.addi %52, %c1 {handshake.name = "addi24"} : index
    %67 = arith.cmpi ult, %66, %c7 {handshake.name = "cmpi6"} : index
    cf.cond_br %67, ^bb15(%66 : index), ^bb16 {handshake.name = "cond_br6"}
  ^bb16:  // pred: ^bb15
    %68 = arith.addi %49, %c1 {handshake.name = "addi25"} : index
    %69 = arith.cmpi ult, %68, %c7 {handshake.name = "cmpi7"} : index
    cf.cond_br %69, ^bb14(%68 : index), ^bb17 {handshake.name = "cond_br7"}
  ^bb17:  // pred: ^bb16
    %70 = arith.addi %48, %c1 {handshake.name = "addi26"} : index
    %71 = arith.cmpi ult, %70, %c7 {handshake.name = "cmpi8"} : index
    cf.cond_br %71, ^bb13(%70 : index), ^bb18 {handshake.name = "cond_br8"}
  ^bb18:  // pred: ^bb17
    return {handshake.name = "return0"}
  }
}


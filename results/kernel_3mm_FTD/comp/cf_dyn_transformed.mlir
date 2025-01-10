module {
  func.func @kernel_3mm(%arg0: memref<49xi32> {handshake.arg_name = "A"}, %arg1: memref<49xi32> {handshake.arg_name = "B"}, %arg2: memref<49xi32> {handshake.arg_name = "C"}, %arg3: memref<49xi32> {handshake.arg_name = "D"}, %arg4: memref<49xi32> {handshake.arg_name = "E"}, %arg5: memref<49xi32> {handshake.arg_name = "F"}, %arg6: memref<49xi32> {handshake.arg_name = "G"}) {
    %c0 = arith.constant {handshake.name = "constant2"} 0 : index
    cf.br ^bb1(%c0 : index) {handshake.name = "br0"}
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %c0_0 = arith.constant {handshake.name = "constant4"} 0 : index
    cf.br ^bb2(%c0_0 : index) {handshake.name = "br1"}
  ^bb2(%1: index):  // 2 preds: ^bb1, ^bb4
    %c0_i32 = arith.constant {handshake.name = "constant5"} 0 : i32
    %c0_1 = arith.constant {handshake.name = "constant6"} 0 : index
    %c7 = arith.constant {handshake.name = "constant7"} 7 : index
    %2 = arith.muli %0, %c7 {handshake.name = "muli3"} : index
    %3 = arith.addi %1, %2 {handshake.name = "addi3"} : index
    memref.store %c0_i32, %arg4[%3] {handshake.deps = #handshake<deps[<"load20" (3) [[0, 0], [0, 0]]>, <"store13" (3) [[0, 0], [0, 0]]>, <"load24" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store12"} : memref<49xi32>
    cf.br ^bb3(%c0_1 : index) {handshake.name = "br2"}
  ^bb3(%4: index):  // 2 preds: ^bb2, ^bb3
    %c7_2 = arith.constant {handshake.name = "constant8"} 7 : index
    %c1 = arith.constant {handshake.name = "constant9"} 1 : index
    %5 = arith.muli %0, %c7_2 {handshake.name = "muli4"} : index
    %6 = arith.addi %4, %5 {handshake.name = "addi4"} : index
    %7 = memref.load %arg0[%6] {handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load18"} : memref<49xi32>
    %8 = arith.muli %4, %c7_2 {handshake.name = "muli5"} : index
    %9 = arith.addi %1, %8 {handshake.name = "addi5"} : index
    %10 = memref.load %arg1[%9] {handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load19"} : memref<49xi32>
    %11 = arith.muli %7, %10 {handshake.name = "muli0"} : i32
    %12 = arith.muli %0, %c7_2 {handshake.name = "muli6"} : index
    %13 = arith.addi %1, %12 {handshake.name = "addi6"} : index
    %14 = memref.load %arg4[%13] {handshake.deps = #handshake<deps[<"store13" (3) [[0, 0], [0, 0], [1, 6]]>, <"store13" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load20"} : memref<49xi32>
    %15 = arith.addi %14, %11 {handshake.name = "addi0"} : i32
    %16 = arith.muli %0, %c7_2 {handshake.name = "muli7"} : index
    %17 = arith.addi %1, %16 {handshake.name = "addi7"} : index
    memref.store %15, %arg4[%17] {handshake.deps = #handshake<deps[<"load20" (3) [[0, 0], [0, 0], [1, 6]]>, <"store13" (3) [[0, 0], [0, 0], [1, 6]]>, <"load24" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store13"} : memref<49xi32>
    %18 = arith.addi %4, %c1 {handshake.name = "addi18"} : index
    %19 = arith.cmpi ult, %18, %c7_2 {handshake.name = "cmpi0"} : index
    cf.cond_br %19, ^bb3(%18 : index), ^bb4 {handshake.name = "cond_br0"}
  ^bb4:  // pred: ^bb3
    %c7_3 = arith.constant {handshake.name = "constant10"} 7 : index
    %c1_4 = arith.constant {handshake.name = "constant11"} 1 : index
    %20 = arith.addi %1, %c1_4 {handshake.name = "addi19"} : index
    %21 = arith.cmpi ult, %20, %c7_3 {handshake.name = "cmpi1"} : index
    cf.cond_br %21, ^bb2(%20 : index), ^bb5 {handshake.name = "cond_br1"}
  ^bb5:  // pred: ^bb4
    %c0_5 = arith.constant {handshake.name = "constant12"} 0 : index
    %c7_6 = arith.constant {handshake.name = "constant13"} 7 : index
    %c1_7 = arith.constant {handshake.name = "constant14"} 1 : index
    %22 = arith.addi %0, %c1_7 {handshake.name = "addi20"} : index
    %23 = arith.cmpi ult, %22, %c7_6 {handshake.name = "cmpi2"} : index
    cf.cond_br %23, ^bb1(%22 : index), ^bb6(%c0_5 : index) {handshake.name = "cond_br2"}
  ^bb6(%24: index):  // 2 preds: ^bb5, ^bb10
    %c0_8 = arith.constant {handshake.name = "constant15"} 0 : index
    cf.br ^bb7(%c0_8 : index) {handshake.name = "br4"}
  ^bb7(%25: index):  // 2 preds: ^bb6, ^bb9
    %c0_i32_9 = arith.constant {handshake.name = "constant16"} 0 : i32
    %c0_10 = arith.constant {handshake.name = "constant17"} 0 : index
    %c7_11 = arith.constant {handshake.name = "constant18"} 7 : index
    %26 = arith.muli %24, %c7_11 {handshake.name = "muli8"} : index
    %27 = arith.addi %25, %26 {handshake.name = "addi8"} : index
    memref.store %c0_i32_9, %arg5[%27] {handshake.deps = #handshake<deps[<"load23" (3) [[0, 0], [0, 0]]>, <"store15" (3) [[0, 0], [0, 0]]>, <"load25" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store14"} : memref<49xi32>
    cf.br ^bb8(%c0_10 : index) {handshake.name = "br5"}
  ^bb8(%28: index):  // 2 preds: ^bb7, ^bb8
    %c7_12 = arith.constant {handshake.name = "constant19"} 7 : index
    %c1_13 = arith.constant {handshake.name = "constant20"} 1 : index
    %29 = arith.muli %24, %c7_12 {handshake.name = "muli9"} : index
    %30 = arith.addi %28, %29 {handshake.name = "addi9"} : index
    %31 = memref.load %arg2[%30] {handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load21"} : memref<49xi32>
    %32 = arith.muli %28, %c7_12 {handshake.name = "muli10"} : index
    %33 = arith.addi %25, %32 {handshake.name = "addi10"} : index
    %34 = memref.load %arg3[%33] {handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load22"} : memref<49xi32>
    %35 = arith.muli %31, %34 {handshake.name = "muli1"} : i32
    %36 = arith.muli %24, %c7_12 {handshake.name = "muli11"} : index
    %37 = arith.addi %25, %36 {handshake.name = "addi11"} : index
    %38 = memref.load %arg5[%37] {handshake.deps = #handshake<deps[<"store15" (3) [[0, 0], [0, 0], [1, 6]]>, <"store15" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load23"} : memref<49xi32>
    %39 = arith.addi %38, %35 {handshake.name = "addi1"} : i32
    %40 = arith.muli %24, %c7_12 {handshake.name = "muli12"} : index
    %41 = arith.addi %25, %40 {handshake.name = "addi12"} : index
    memref.store %39, %arg5[%41] {handshake.deps = #handshake<deps[<"load23" (3) [[0, 0], [0, 0], [1, 6]]>, <"store15" (3) [[0, 0], [0, 0], [1, 6]]>, <"load25" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store15"} : memref<49xi32>
    %42 = arith.addi %28, %c1_13 {handshake.name = "addi21"} : index
    %43 = arith.cmpi ult, %42, %c7_12 {handshake.name = "cmpi3"} : index
    cf.cond_br %43, ^bb8(%42 : index), ^bb9 {handshake.name = "cond_br3"}
  ^bb9:  // pred: ^bb8
    %c7_14 = arith.constant {handshake.name = "constant21"} 7 : index
    %c1_15 = arith.constant {handshake.name = "constant22"} 1 : index
    %44 = arith.addi %25, %c1_15 {handshake.name = "addi22"} : index
    %45 = arith.cmpi ult, %44, %c7_14 {handshake.name = "cmpi4"} : index
    cf.cond_br %45, ^bb7(%44 : index), ^bb10 {handshake.name = "cond_br4"}
  ^bb10:  // pred: ^bb9
    %c0_16 = arith.constant {handshake.name = "constant23"} 0 : index
    %c7_17 = arith.constant {handshake.name = "constant24"} 7 : index
    %c1_18 = arith.constant {handshake.name = "constant25"} 1 : index
    %46 = arith.addi %24, %c1_18 {handshake.name = "addi23"} : index
    %47 = arith.cmpi ult, %46, %c7_17 {handshake.name = "cmpi5"} : index
    cf.cond_br %47, ^bb6(%46 : index), ^bb11(%c0_16 : index) {handshake.name = "cond_br5"}
  ^bb11(%48: index):  // 2 preds: ^bb10, ^bb15
    %c0_19 = arith.constant {handshake.name = "constant26"} 0 : index
    cf.br ^bb12(%c0_19 : index) {handshake.name = "br7"}
  ^bb12(%49: index):  // 2 preds: ^bb11, ^bb14
    %c0_i32_20 = arith.constant {handshake.name = "constant27"} 0 : i32
    %c0_21 = arith.constant {handshake.name = "constant28"} 0 : index
    %c7_22 = arith.constant {handshake.name = "constant29"} 7 : index
    %50 = arith.muli %48, %c7_22 {handshake.name = "muli13"} : index
    %51 = arith.addi %49, %50 {handshake.name = "addi13"} : index
    memref.store %c0_i32_20, %arg6[%51] {handshake.deps = #handshake<deps[<"load26" (3) [[0, 0], [0, 0]]>, <"store17" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store16"} : memref<49xi32>
    cf.br ^bb13(%c0_21 : index) {handshake.name = "br8"}
  ^bb13(%52: index):  // 2 preds: ^bb12, ^bb13
    %c7_23 = arith.constant {handshake.name = "constant30"} 7 : index
    %c1_24 = arith.constant {handshake.name = "constant31"} 1 : index
    %53 = arith.muli %48, %c7_23 {handshake.name = "muli14"} : index
    %54 = arith.addi %52, %53 {handshake.name = "addi14"} : index
    %55 = memref.load %arg4[%54] {handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load24"} : memref<49xi32>
    %56 = arith.muli %52, %c7_23 {handshake.name = "muli15"} : index
    %57 = arith.addi %49, %56 {handshake.name = "addi15"} : index
    %58 = memref.load %arg5[%57] {handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load25"} : memref<49xi32>
    %59 = arith.muli %55, %58 {handshake.name = "muli2"} : i32
    %60 = arith.muli %48, %c7_23 {handshake.name = "muli16"} : index
    %61 = arith.addi %49, %60 {handshake.name = "addi16"} : index
    %62 = memref.load %arg6[%61] {handshake.deps = #handshake<deps[<"store17" (3) [[0, 0], [0, 0], [1, 6]]>, <"store17" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load26"} : memref<49xi32>
    %63 = arith.addi %62, %59 {handshake.name = "addi2"} : i32
    %64 = arith.muli %48, %c7_23 {handshake.name = "muli17"} : index
    %65 = arith.addi %49, %64 {handshake.name = "addi17"} : index
    memref.store %63, %arg6[%65] {handshake.deps = #handshake<deps[<"load26" (3) [[0, 0], [0, 0], [1, 6]]>, <"store17" (3) [[0, 0], [0, 0], [1, 6]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store17"} : memref<49xi32>
    %66 = arith.addi %52, %c1_24 {handshake.name = "addi24"} : index
    %67 = arith.cmpi ult, %66, %c7_23 {handshake.name = "cmpi6"} : index
    cf.cond_br %67, ^bb13(%66 : index), ^bb14 {handshake.name = "cond_br6"}
  ^bb14:  // pred: ^bb13
    %c7_25 = arith.constant {handshake.name = "constant32"} 7 : index
    %c1_26 = arith.constant {handshake.name = "constant33"} 1 : index
    %68 = arith.addi %49, %c1_26 {handshake.name = "addi25"} : index
    %69 = arith.cmpi ult, %68, %c7_25 {handshake.name = "cmpi7"} : index
    cf.cond_br %69, ^bb12(%68 : index), ^bb15 {handshake.name = "cond_br7"}
  ^bb15:  // pred: ^bb14
    %c7_27 = arith.constant {handshake.name = "constant34"} 7 : index
    %c1_28 = arith.constant {handshake.name = "constant35"} 1 : index
    %70 = arith.addi %48, %c1_28 {handshake.name = "addi26"} : index
    %71 = arith.cmpi ult, %70, %c7_27 {handshake.name = "cmpi8"} : index
    cf.cond_br %71, ^bb11(%70 : index), ^bb16 {handshake.name = "cond_br8"}
  ^bb16:  // pred: ^bb15
    return {handshake.name = "return0"}
  }
}


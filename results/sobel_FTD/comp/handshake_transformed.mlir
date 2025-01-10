module {
  handshake.func @sobel(%arg0: memref<256xi32>, %arg1: memref<9xi32>, %arg2: memref<9xi32>, %arg3: memref<256xi32>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["in", "gX", "gY", "out", "in_start", "gX_start", "gY_start", "out_start", "start"], cfg.edges = "[0,1][7,9,8,cmpi4][2,3,12,cmpi3][9,11,10,cmpi6][4,5][11,12][6,4,7,cmpi9][13,1,14,cmpi11][1,2][8,9][3,4][10,11][5,5,6,cmpi8][12,2,13,cmpi10]", resNames = ["out0", "in_end", "gX_end", "gY_end", "out_end", "end"]} {
    %0:11 = fork [11] %arg8 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %memEnd = mem_controller[%arg3 : memref<256xi32>] %arg7 (%154, %addressResult_55, %dataResult_56) %0#3 {connectedBlocks = [12 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i32>, !handshake.channel<i8>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg2 : memref<9xi32>] %arg6 (%addressResult_19) %0#2 {connectedBlocks = [5 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg1 : memref<9xi32>] %arg5 (%addressResult_17) %0#1 {connectedBlocks = [5 : i32], handshake.name = "mem_controller6"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_3, %memEnd_4 = mem_controller[%arg0 : memref<256xi32>] %arg4 (%addressResult) %0#0 {connectedBlocks = [3 : i32], handshake.name = "mem_controller7"} :    (!handshake.channel<i8>) -> !handshake.channel<i32>
    %1 = constant %0#10 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %2:3 = fork [3] %1 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %3 = extsi %2#0 {handshake.bb = 1 : ui32, handshake.name = "extsi26"} : <i1> to <i5>
    %4 = extsi %2#1 {handshake.bb = 1 : ui32, handshake.name = "extsi2"} : <i1> to <i32>
    %5 = merge %2#2, %182#3 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %6:3 = fork [3] %5 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %7 = mux %6#2 [%0#9, %trueResult_61] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %8:5 = fork [5] %7 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %9 = mux %6#1 [%4, %trueResult_57] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux24"} : <i1>, <i32>
    %10 = mux %6#0 [%3, %trueResult_59] {handshake.bb = 1 : ui32, handshake.name = "mux25"} : <i1>, <i5>
    %11:2 = fork [2] %10 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i5>
    %12 = extsi %11#0 {handshake.bb = 1 : ui32, handshake.name = "extsi27"} : <i5> to <i6>
    %13 = constant %8#2 {handshake.bb = 1 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %14 = extsi %13 {handshake.bb = 1 : ui32, handshake.name = "extsi28"} : <i1> to <i5>
    %15 = constant %0#8 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant52", value = false} : <>, <i1>
    %16 = merge %15, %173#4 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge26"} : <i1>
    %17:4 = fork [4] %16 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i1>
    %18 = mux %17#0 [%11#1, %trueResult_53] {handshake.bb = 2 : ui32, handshake.name = "mux26"} : <i1>, <i5>
    %19:2 = fork [2] %18 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i5>
    %20 = extsi %19#0 {handshake.bb = 2 : ui32, handshake.name = "extsi29"} : <i5> to <i6>
    %21 = mux %17#3 [%8#4, %trueResult_51] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux43"} : <i1>, <>
    %22:9 = fork [9] %21 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <>
    %23 = mux %17#2 [%9, %trueResult_49] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux48"} : <i1>, <i32>
    %24 = mux %17#1 [%14, %trueResult_47] {handshake.bb = 2 : ui32, handshake.name = "mux49"} : <i1>, <i5>
    %25:5 = fork [5] %24 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i5>
    %26 = extsi %25#0 {handshake.bb = 2 : ui32, handshake.name = "extsi30"} : <i5> to <i6>
    %27 = extsi %25#1 {handshake.bb = 2 : ui32, handshake.name = "extsi31"} : <i5> to <i6>
    %28 = constant %22#4 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = 5 : i4} : <>, <i4>
    %29 = extsi %28 {handshake.bb = 2 : ui32, handshake.name = "extsi32"} : <i4> to <i5>
    %30 = constant %22#3 {handshake.bb = 2 : ui32, handshake.name = "constant6", value = false} : <>, <i1>
    %31:3 = fork [3] %30 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i1>
    %32 = extsi %31#0 {handshake.bb = 2 : ui32, handshake.name = "extsi33"} : <i1> to <i5>
    %33 = cmpi eq, %25#4, %32 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i5>
    %34:2 = fork [2] %33 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i1>
    %35 = cmpi eq, %25#3, %29 {handshake.bb = 2 : ui32, handshake.name = "cmpi1"} : <i5>
    %36 = cmpi eq, %34#1, %31#1 {handshake.bb = 2 : ui32, handshake.name = "cmpi2"} : <i1>
    %37 = andi %36, %35 {handshake.bb = 2 : ui32, handshake.name = "andi0"} : <i1>
    %38 = ori %34#0, %37 {handshake.bb = 2 : ui32, handshake.name = "ori0"} : <i1>
    %39 = cmpi eq, %38, %31#2 {handshake.bb = 2 : ui32, handshake.name = "cmpi3"} : <i1>
    %40:6 = fork [6] %39 {handshake.bb = 2 : ui32, handshake.name = "fork11"} : <i1>
    %trueResult, %falseResult = cond_br %40#0, %25#2 {handshake.bb = 3 : ui32, handshake.name = "cond_br129"} : <i1>, <i5>
    sink %falseResult {handshake.name = "sink0"} : <i5>
    %41 = extsi %trueResult {handshake.bb = 3 : ui32, handshake.name = "extsi24"} : <i5> to <i8>
    %42 = constant %115#3 {handshake.bb = 3 : ui32, handshake.name = "constant13", value = -1 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%41] %outputs_3 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i8>, <i32>
    %43 = constant %0#7 {ftd.imerge, handshake.bb = 4 : ui32, handshake.name = "constant76", value = false} : <>, <i1>
    %44 = merge %43, %114#1 {ftd.imerge, handshake.bb = 4 : ui32, handshake.name = "merge50"} : <i1>
    %45:5 = fork [5] %44 {handshake.bb = 4 : ui32, handshake.name = "fork12"} : <i1>
    %46 = mux %45#4 [%115#4, %trueResult_29] {ftd.regen, handshake.bb = 4 : ui32, handshake.name = "mux50"} : <i1>, <>
    %47:5 = fork [5] %46 {handshake.bb = 4 : ui32, handshake.name = "fork13"} : <>
    %48 = mux %45#3 [%dataResult, %trueResult_27] {ftd.regen, handshake.bb = 4 : ui32, handshake.name = "mux52"} : <i1>, <i32>
    %49:2 = fork [2] %48 {handshake.bb = 4 : ui32, handshake.name = "fork14"} : <i32>
    %50 = mux %45#2 [%121#0, %trueResult_23] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux58"} : <i1>, <i32>
    %51 = mux %45#1 [%121#1, %trueResult_21] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux59"} : <i1>, <i32>
    %52 = mux %45#0 [%42, %105] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux60"} : <i1>, <i32>
    %53:2 = fork [2] %52 {handshake.bb = 4 : ui32, handshake.name = "fork15"} : <i32>
    %54 = constant %47#4 {handshake.bb = 4 : ui32, handshake.name = "constant15", value = -1 : i32} : <>, <i32>
    %trueResult_5, %falseResult_6 = cond_br %102#1, %97 {handshake.bb = 5 : ui32, handshake.name = "cond_br130"} : <i1>, <i32>
    %trueResult_7, %falseResult_8 = cond_br %102#2, %91 {handshake.bb = 5 : ui32, handshake.name = "cond_br131"} : <i1>, <i32>
    %trueResult_9, %falseResult_10 = cond_br %102#0, %100 {handshake.bb = 5 : ui32, handshake.name = "cond_br132"} : <i1>, <i2>
    sink %falseResult_10 {handshake.name = "sink1"} : <i2>
    %55 = extsi %trueResult_9 {handshake.bb = 5 : ui32, handshake.name = "extsi34"} : <i2> to <i32>
    %trueResult_11, %falseResult_12 = cond_br %102#3, %70#3 {handshake.bb = 5 : ui32, handshake.name = "cond_br133"} : <i1>, <>
    sink %falseResult_12 {handshake.name = "sink2"} : <>
    %trueResult_13, %falseResult_14 = cond_br %102#4, %62#4 {handshake.bb = 5 : ui32, handshake.name = "cond_br134"} : <i1>, <i32>
    sink %falseResult_14 {handshake.name = "sink3"} : <i32>
    %trueResult_15, %falseResult_16 = cond_br %102#5, %60#2 {handshake.bb = 5 : ui32, handshake.name = "cond_br135"} : <i1>, <i32>
    sink %falseResult_16 {handshake.name = "sink4"} : <i32>
    %56 = constant %0#6 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant87", value = false} : <>, <i1>
    %57 = merge %56, %102#6 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge61"} : <i1>
    %58:6 = fork [6] %57 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <i1>
    %59 = mux %58#5 [%49#1, %trueResult_15] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux61"} : <i1>, <i32>
    %60:3 = fork [3] %59 {handshake.bb = 5 : ui32, handshake.name = "fork17"} : <i32>
    %61 = mux %58#4 [%53#1, %trueResult_13] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux66"} : <i1>, <i32>
    %62:5 = fork [5] %61 {handshake.bb = 5 : ui32, handshake.name = "fork18"} : <i32>
    %63 = trunci %62#0 {handshake.bb = 5 : ui32, handshake.name = "trunci1"} : <i32> to <i3>
    %64 = extsi %63 {handshake.bb = 5 : ui32, handshake.name = "extsi35"} : <i3> to <i4>
    %65 = trunci %62#1 {handshake.bb = 5 : ui32, handshake.name = "trunci2"} : <i32> to <i4>
    %66 = trunci %62#2 {handshake.bb = 5 : ui32, handshake.name = "trunci3"} : <i32> to <i3>
    %67 = extsi %66 {handshake.bb = 5 : ui32, handshake.name = "extsi36"} : <i3> to <i4>
    %68 = trunci %62#3 {handshake.bb = 5 : ui32, handshake.name = "trunci4"} : <i32> to <i4>
    %69 = mux %58#3 [%47#3, %trueResult_11] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux67"} : <i1>, <>
    %70:4 = fork [4] %69 {handshake.bb = 5 : ui32, handshake.name = "fork19"} : <>
    %71 = mux %58#2 [%50, %trueResult_7] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux70"} : <i1>, <i32>
    %72 = mux %58#1 [%51, %trueResult_5] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux71"} : <i1>, <i32>
    %73 = mux %58#0 [%54, %55] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux72"} : <i1>, <i32>
    %74:3 = fork [3] %73 {handshake.bb = 5 : ui32, handshake.name = "fork20"} : <i32>
    %75 = trunci %74#0 {handshake.bb = 5 : ui32, handshake.name = "trunci5"} : <i32> to <i4>
    %76 = trunci %74#1 {handshake.bb = 5 : ui32, handshake.name = "trunci6"} : <i32> to <i4>
    %77 = constant %70#2 {handshake.bb = 5 : ui32, handshake.name = "constant7", value = 4 : i4} : <>, <i4>
    %78:2 = fork [2] %77 {handshake.bb = 5 : ui32, handshake.name = "fork21"} : <i4>
    %79 = constant %70#1 {handshake.bb = 5 : ui32, handshake.name = "constant8", value = 2 : i3} : <>, <i3>
    %80 = extsi %79 {handshake.bb = 5 : ui32, handshake.name = "extsi7"} : <i3> to <i32>
    %81 = constant %70#0 {handshake.bb = 5 : ui32, handshake.name = "constant9", value = 1 : i2} : <>, <i2>
    %82:3 = fork [3] %81 {handshake.bb = 5 : ui32, handshake.name = "fork22"} : <i2>
    %83 = extui %82#0 {handshake.bb = 5 : ui32, handshake.name = "extui2"} : <i2> to <i4>
    %84 = extui %82#1 {handshake.bb = 5 : ui32, handshake.name = "extui3"} : <i2> to <i4>
    %85 = extsi %82#2 {handshake.bb = 5 : ui32, handshake.name = "extsi8"} : <i2> to <i32>
    %86 = shli %64, %83 {handshake.bb = 5 : ui32, handshake.name = "shli0"} : <i4>
    %87 = addi %65, %86 {handshake.bb = 5 : ui32, handshake.name = "addi13"} : <i4>
    %88 = addi %75, %87 {handshake.bb = 5 : ui32, handshake.name = "addi4"} : <i4>
    %89 = addi %88, %78#0 {handshake.bb = 5 : ui32, handshake.name = "addi5"} : <i4>
    %addressResult_17, %dataResult_18 = load[%89] %outputs_1 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i4>, <i32>
    %90 = muli %60#1, %dataResult_18 {handshake.bb = 5 : ui32, handshake.name = "muli0"} : <i32>
    %91 = addi %71, %90 {handshake.bb = 5 : ui32, handshake.name = "addi0"} : <i32>
    %92 = shli %67, %84 {handshake.bb = 5 : ui32, handshake.name = "shli1"} : <i4>
    %93 = addi %68, %92 {handshake.bb = 5 : ui32, handshake.name = "addi14"} : <i4>
    %94 = addi %76, %93 {handshake.bb = 5 : ui32, handshake.name = "addi6"} : <i4>
    %95 = addi %94, %78#1 {handshake.bb = 5 : ui32, handshake.name = "addi7"} : <i4>
    %addressResult_19, %dataResult_20 = load[%95] %outputs {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load2"} : <i4>, <i32>
    %96 = muli %60#0, %dataResult_20 {handshake.bb = 5 : ui32, handshake.name = "muli1"} : <i32>
    %97 = addi %72, %96 {handshake.bb = 5 : ui32, handshake.name = "addi1"} : <i32>
    %98 = addi %74#2, %85 {handshake.bb = 5 : ui32, handshake.name = "addi9"} : <i32>
    %99:2 = fork [2] %98 {handshake.bb = 5 : ui32, handshake.name = "fork23"} : <i32>
    %100 = trunci %99#0 {handshake.bb = 5 : ui32, handshake.name = "trunci7"} : <i32> to <i2>
    %101 = cmpi ult, %99#1, %80 {handshake.bb = 5 : ui32, handshake.name = "cmpi8"} : <i32>
    %102:7 = fork [7] %101 {handshake.bb = 5 : ui32, handshake.name = "fork24"} : <i1>
    %trueResult_21, %falseResult_22 = cond_br %114#2, %falseResult_6 {handshake.bb = 6 : ui32, handshake.name = "cond_br136"} : <i1>, <i32>
    %103:3 = fork [3] %falseResult_22 {handshake.bb = 6 : ui32, handshake.name = "fork25"} : <i32>
    %trueResult_23, %falseResult_24 = cond_br %114#3, %falseResult_8 {handshake.bb = 6 : ui32, handshake.name = "cond_br137"} : <i1>, <i32>
    %104:3 = fork [3] %falseResult_24 {handshake.bb = 6 : ui32, handshake.name = "fork26"} : <i32>
    %trueResult_25, %falseResult_26 = cond_br %114#0, %112 {handshake.bb = 6 : ui32, handshake.name = "cond_br138"} : <i1>, <i2>
    sink %falseResult_26 {handshake.name = "sink5"} : <i2>
    %105 = extsi %trueResult_25 {handshake.bb = 6 : ui32, handshake.name = "extsi37"} : <i2> to <i32>
    %trueResult_27, %falseResult_28 = cond_br %114#4, %49#0 {handshake.bb = 6 : ui32, handshake.name = "cond_br139"} : <i1>, <i32>
    sink %falseResult_28 {handshake.name = "sink6"} : <i32>
    %trueResult_29, %falseResult_30 = cond_br %114#5, %47#2 {handshake.bb = 6 : ui32, handshake.name = "cond_br140"} : <i1>, <>
    sink %falseResult_30 {handshake.name = "sink7"} : <>
    %106 = constant %47#1 {handshake.bb = 6 : ui32, handshake.name = "constant34", value = 2 : i3} : <>, <i3>
    %107 = extsi %106 {handshake.bb = 6 : ui32, handshake.name = "extsi9"} : <i3> to <i32>
    %108 = constant %47#0 {handshake.bb = 6 : ui32, handshake.name = "constant35", value = 1 : i2} : <>, <i2>
    %109 = extsi %108 {handshake.bb = 6 : ui32, handshake.name = "extsi10"} : <i2> to <i32>
    %110 = addi %53#0, %109 {handshake.bb = 6 : ui32, handshake.name = "addi10"} : <i32>
    %111:2 = fork [2] %110 {handshake.bb = 6 : ui32, handshake.name = "fork27"} : <i32>
    %112 = trunci %111#0 {handshake.bb = 6 : ui32, handshake.name = "trunci8"} : <i32> to <i2>
    %113 = cmpi ult, %111#1, %107 {handshake.bb = 6 : ui32, handshake.name = "cmpi9"} : <i32>
    %114:6 = fork [6] %113 {handshake.bb = 6 : ui32, handshake.name = "fork28"} : <i1>
    %trueResult_31, %falseResult_32 = cond_br %40#1, %22#8 {handshake.bb = 7 : ui32, handshake.name = "cond_br141"} : <i1>, <>
    sink %falseResult_32 {handshake.name = "sink8"} : <>
    %115:5 = fork [5] %trueResult_31 {handshake.bb = 7 : ui32, handshake.name = "fork29"} : <>
    %116 = constant %115#2 {handshake.bb = 7 : ui32, handshake.name = "constant21", value = false} : <>, <i1>
    %117:4 = fork [4] %116 {handshake.bb = 7 : ui32, handshake.name = "fork30"} : <i1>
    %118 = extsi %117#0 {handshake.bb = 7 : ui32, handshake.name = "extsi11"} : <i1> to <i32>
    %119 = extsi %117#1 {handshake.bb = 7 : ui32, handshake.name = "extsi12"} : <i1> to <i32>
    %120 = extsi %117#2 {handshake.bb = 7 : ui32, handshake.name = "extsi13"} : <i1> to <i32>
    %121:2 = fork [2] %120 {handshake.bb = 7 : ui32, handshake.name = "fork31"} : <i32>
    %122 = constant %115#0 {handshake.bb = 7 : ui32, handshake.name = "constant36", value = 255 : i9} : <>, <i9>
    %123:2 = fork [2] %122 {handshake.bb = 7 : ui32, handshake.name = "fork32"} : <i9>
    %124 = extsi %123#0 {handshake.bb = 7 : ui32, handshake.name = "extsi14"} : <i9> to <i32>
    %125:2 = fork [2] %124 {handshake.bb = 7 : ui32, handshake.name = "fork33"} : <i32>
    %126 = extsi %123#1 {handshake.bb = 7 : ui32, handshake.name = "extsi15"} : <i9> to <i32>
    %127:2 = fork [2] %126 {handshake.bb = 7 : ui32, handshake.name = "fork34"} : <i32>
    %128 = cmpi sgt, %104#2, %127#0 {handshake.bb = 7 : ui32, handshake.name = "cmpi4"} : <i32>
    %129:5 = fork [5] %128 {handshake.bb = 7 : ui32, handshake.name = "fork35"} : <i1>
    %130 = select %129#4[%127#1, %104#1] {handshake.bb = 7 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %trueResult_33, %falseResult_34 = cond_br %129#3, %104#0 {handshake.bb = 8 : ui32, handshake.name = "cond_br59"} : <i1>, <i32>
    sink %trueResult_33 {handshake.name = "sink9"} : <i32>
    %trueResult_35, %falseResult_36 = cond_br %133, %22#7 {handshake.bb = 8 : ui32, handshake.name = "cond_br61"} : <i1>, <>
    sink %trueResult_35 {handshake.name = "sink10"} : <>
    %131 = source {handshake.bb = 8 : ui32, handshake.name = "source0"} : <>
    %132 = constant %131 {ftd.skip, handshake.bb = 8 : ui32, handshake.name = "constant99", value = true} : <>, <i1>
    %133 = mux %40#2 [%132, %129#2] {ftd.skip, handshake.bb = 8 : ui32, handshake.name = "mux73"} : <i1>, <i1>
    %134 = constant %falseResult_36 {handshake.bb = 8 : ui32, handshake.name = "constant37", value = false} : <>, <i1>
    %135 = extsi %134 {handshake.bb = 8 : ui32, handshake.name = "extsi16"} : <i1> to <i32>
    %136 = cmpi slt, %falseResult_34, %135 {handshake.bb = 8 : ui32, handshake.name = "cmpi5"} : <i32>
    %trueResult_37, %falseResult_38 = cond_br %129#1, %117#3 {handshake.bb = 9 : ui32, handshake.name = "cond_br142"} : <i1>, <i1>
    sink %falseResult_38 {handshake.name = "sink11"} : <i1>
    %137 = mux %129#0 [%136, %trueResult_37] {ftd.phi, handshake.bb = 9 : ui32, handshake.name = "mux74"} : <i1>, <i1>
    %138 = constant %115#1 {handshake.bb = 9 : ui32, handshake.name = "constant24", value = false} : <>, <i1>
    %139 = select %137[%119, %130] {handshake.bb = 9 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %140 = cmpi sgt, %103#2, %125#0 {handshake.bb = 9 : ui32, handshake.name = "cmpi6"} : <i32>
    %141:5 = fork [5] %140 {handshake.bb = 9 : ui32, handshake.name = "fork36"} : <i1>
    %142 = select %141#4[%125#1, %103#1] {handshake.bb = 9 : ui32, handshake.name = "select3"} : <i1>, <i32>
    %trueResult_39, %falseResult_40 = cond_br %141#3, %103#0 {handshake.bb = 10 : ui32, handshake.name = "cond_br67"} : <i1>, <i32>
    sink %trueResult_39 {handshake.name = "sink12"} : <i32>
    %trueResult_41, %falseResult_42 = cond_br %145, %22#6 {handshake.bb = 10 : ui32, handshake.name = "cond_br69"} : <i1>, <>
    sink %trueResult_41 {handshake.name = "sink13"} : <>
    %143 = source {handshake.bb = 10 : ui32, handshake.name = "source1"} : <>
    %144 = constant %143 {ftd.skip, handshake.bb = 10 : ui32, handshake.name = "constant100", value = true} : <>, <i1>
    %145 = mux %40#3 [%144, %141#2] {ftd.skip, handshake.bb = 10 : ui32, handshake.name = "mux75"} : <i1>, <i1>
    %146 = constant %falseResult_42 {handshake.bb = 10 : ui32, handshake.name = "constant38", value = false} : <>, <i1>
    %147 = extsi %146 {handshake.bb = 10 : ui32, handshake.name = "extsi17"} : <i1> to <i32>
    %148 = cmpi slt, %falseResult_40, %147 {handshake.bb = 10 : ui32, handshake.name = "cmpi7"} : <i32>
    %trueResult_43, %falseResult_44 = cond_br %40#4, %23 {handshake.bb = 11 : ui32, handshake.name = "cond_br143"} : <i1>, <i32>
    %trueResult_45, %falseResult_46 = cond_br %141#1, %138 {handshake.bb = 11 : ui32, handshake.name = "cond_br144"} : <i1>, <i1>
    sink %falseResult_46 {handshake.name = "sink14"} : <i1>
    %149 = mux %141#0 [%148, %trueResult_45] {ftd.phi, handshake.bb = 11 : ui32, handshake.name = "mux76"} : <i1>, <i1>
    %150 = select %149[%118, %142] {handshake.bb = 11 : ui32, handshake.name = "select4"} : <i1>, <i32>
    %151 = addi %139, %150 {handshake.bb = 11 : ui32, handshake.name = "addi2"} : <i32>
    %152 = addi %trueResult_43, %151 {handshake.bb = 11 : ui32, handshake.name = "addi3"} : <i32>
    %trueResult_47, %falseResult_48 = cond_br %173#0, %171 {handshake.bb = 12 : ui32, handshake.name = "cond_br145"} : <i1>, <i5>
    sink %falseResult_48 {handshake.name = "sink15"} : <i5>
    %trueResult_49, %falseResult_50 = cond_br %173#3, %156#1 {handshake.bb = 12 : ui32, handshake.name = "cond_br146"} : <i1>, <i32>
    %trueResult_51, %falseResult_52 = cond_br %173#2, %22#5 {handshake.bb = 12 : ui32, handshake.name = "cond_br147"} : <i1>, <>
    sink %falseResult_52 {handshake.name = "sink16"} : <>
    %trueResult_53, %falseResult_54 = cond_br %173#1, %19#1 {handshake.bb = 12 : ui32, handshake.name = "cond_br148"} : <i1>, <i5>
    sink %falseResult_54 {handshake.name = "sink17"} : <i5>
    %153 = constant %0#4 {handshake.bb = 12 : ui32, handshake.name = "constant39", value = 1 : i2} : <>, <i2>
    %154 = extsi %153 {handshake.bb = 12 : ui32, handshake.name = "extsi18"} : <i2> to <i32>
    %155 = mux %40#5 [%falseResult_44, %152] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux77"} : <i1>, <i32>
    %156:2 = fork [2] %155 {handshake.bb = 12 : ui32, handshake.name = "fork37"} : <i32>
    %157 = constant %22#2 {handshake.bb = 12 : ui32, handshake.name = "constant40", value = 1 : i2} : <>, <i2>
    %158 = extsi %157 {handshake.bb = 12 : ui32, handshake.name = "extsi38"} : <i2> to <i6>
    %159 = constant %22#1 {handshake.bb = 12 : ui32, handshake.name = "constant41", value = 15 : i5} : <>, <i5>
    %160 = extsi %159 {handshake.bb = 12 : ui32, handshake.name = "extsi39"} : <i5> to <i6>
    %161 = constant %22#0 {handshake.bb = 12 : ui32, handshake.name = "constant42", value = 255 : i9} : <>, <i9>
    %162 = extsi %161 {handshake.bb = 12 : ui32, handshake.name = "extsi40"} : <i9> to <i10>
    %163 = trunci %156#0 {handshake.bb = 12 : ui32, handshake.name = "trunci0"} : <i32> to <i8>
    %164 = extui %163 {handshake.bb = 12 : ui32, handshake.name = "extui4"} : <i8> to <i10>
    %165 = subi %162, %164 {handshake.bb = 12 : ui32, handshake.name = "subi0"} : <i10>
    %166 = extsi %165 {handshake.bb = 12 : ui32, handshake.name = "extsi41"} : <i10> to <i32>
    %167 = addi %26, %20 {handshake.bb = 12 : ui32, handshake.name = "addi8"} : <i6>
    %168 = extsi %167 {handshake.bb = 12 : ui32, handshake.name = "extsi25"} : <i6> to <i8>
    %addressResult_55, %dataResult_56 = store[%168] %166 {handshake.bb = 12 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 14], [-14, -1]]>]>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i8>, <i32>
    %169 = addi %27, %158 {handshake.bb = 12 : ui32, handshake.name = "addi11"} : <i6>
    %170:2 = fork [2] %169 {handshake.bb = 12 : ui32, handshake.name = "fork38"} : <i6>
    %171 = trunci %170#0 {handshake.bb = 12 : ui32, handshake.name = "trunci9"} : <i6> to <i5>
    %172 = cmpi ult, %170#1, %160 {handshake.bb = 12 : ui32, handshake.name = "cmpi10"} : <i6>
    %173:5 = fork [5] %172 {handshake.bb = 12 : ui32, handshake.name = "fork39"} : <i1>
    %trueResult_57, %falseResult_58 = cond_br %182#2, %falseResult_50 {handshake.bb = 13 : ui32, handshake.name = "cond_br149"} : <i1>, <i32>
    %trueResult_59, %falseResult_60 = cond_br %182#0, %180 {handshake.bb = 13 : ui32, handshake.name = "cond_br150"} : <i1>, <i5>
    sink %falseResult_60 {handshake.name = "sink18"} : <i5>
    %trueResult_61, %falseResult_62 = cond_br %182#1, %8#3 {handshake.bb = 13 : ui32, handshake.name = "cond_br151"} : <i1>, <>
    sink %falseResult_62 {handshake.name = "sink19"} : <>
    %174 = constant %8#1 {handshake.bb = 13 : ui32, handshake.name = "constant43", value = 1 : i2} : <>, <i2>
    %175 = extsi %174 {handshake.bb = 13 : ui32, handshake.name = "extsi42"} : <i2> to <i6>
    %176 = constant %8#0 {handshake.bb = 13 : ui32, handshake.name = "constant44", value = 15 : i5} : <>, <i5>
    %177 = extsi %176 {handshake.bb = 13 : ui32, handshake.name = "extsi43"} : <i5> to <i6>
    %178 = addi %12, %175 {handshake.bb = 13 : ui32, handshake.name = "addi12"} : <i6>
    %179:2 = fork [2] %178 {handshake.bb = 13 : ui32, handshake.name = "fork40"} : <i6>
    %180 = trunci %179#0 {handshake.bb = 13 : ui32, handshake.name = "trunci10"} : <i6> to <i5>
    %181 = cmpi ult, %179#1, %177 {handshake.bb = 13 : ui32, handshake.name = "cmpi11"} : <i6>
    %182:4 = fork [4] %181 {handshake.bb = 13 : ui32, handshake.name = "fork41"} : <i1>
    end {handshake.bb = 14 : ui32, handshake.name = "end0"} %falseResult_58, %memEnd_4, %memEnd_2, %memEnd_0, %memEnd, %0#5 : <i32>, <>, <>, <>, <>, <>
  }
}


module {
  handshake.func @binary_search(%arg0: !handshake.channel<i32>, %arg1: memref<101xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["search", "a", "a_start", "start"], cfg.edges = "[0,1][7,5,8,cmpi6][2,3][4,5][6,7][1,2,3,mux0][3,1,4,cmpi5][5,6,7,mux1]", resNames = ["out0", "a_end", "end"]} {
    %0:11 = fork [11] %arg3 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %1:2 = fork [2] %arg0 {handshake.bb = 0 : ui32, handshake.name = "fork1"} : <i32>
    %outputs:2, %memEnd = mem_controller[%arg1 : memref<101xi32>] %arg2 (%addressResult, %addressResult_22) %0#0 {connectedBlocks = [2 : i32, 6 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i7>, !handshake.channel<i7>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %2 = constant %0#10 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = true} : <>, <i1>
    %3 = constant %0#9 {handshake.bb = 0 : ui32, handshake.name = "constant5", value = -1 : i32} : <>, <i32>
    %4 = constant %0#8 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %5:2 = fork [2] %4 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %6 = extsi %5#0 {handshake.bb = 1 : ui32, handshake.name = "extsi6"} : <i1> to <i8>
    %7 = merge %5#1, %39#5 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %8:5 = fork [5] %7 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <i1>
    %9 = mux %8#4 [%0#7, %trueResult_14] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <>
    %10:4 = fork [4] %9 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <>
    %11 = mux %8#3 [%1#1, %trueResult_12] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %12:2 = fork [2] %11 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i32>
    %13 = mux %8#2 [%2, %trueResult_10] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i1>
    %14:6 = fork [6] %13 {handshake.bb = 1 : ui32, handshake.name = "fork6"} : <i1>
    %15 = mux %8#1 [%3, %trueResult_4] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %16 = mux %8#0 [%6, %trueResult_8] {handshake.bb = 1 : ui32, handshake.name = "mux8"} : <i1>, <i8>
    %17:2 = fork [2] %16 {handshake.bb = 1 : ui32, handshake.name = "fork7"} : <i8>
    %18 = extsi %17#0 {handshake.bb = 1 : ui32, handshake.name = "extsi7"} : <i8> to <i9>
    %19 = constant %10#3 {handshake.bb = 1 : ui32, handshake.name = "constant7", value = false} : <>, <i1>
    %trueResult, %falseResult = cond_br %14#5, %15 {handshake.bb = 2 : ui32, handshake.name = "cond_br41"} : <i1>, <i32>
    %trueResult_0, %falseResult_1 = cond_br %14#4, %12#1 {handshake.bb = 2 : ui32, handshake.name = "cond_br42"} : <i1>, <i32>
    sink %falseResult_1 {handshake.name = "sink0"} : <i32>
    %20:2 = fork [2] %trueResult_0 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i32>
    %trueResult_2, %falseResult_3 = cond_br %14#0, %17#1 {handshake.bb = 2 : ui32, handshake.name = "cond_br43"} : <i1>, <i8>
    sink %falseResult_3 {handshake.name = "sink1"} : <i8>
    %21:2 = fork [2] %trueResult_2 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i8>
    %22 = extsi %21#1 {handshake.bb = 2 : ui32, handshake.name = "extsi8"} : <i8> to <i32>
    %23 = trunci %21#0 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i8> to <i7>
    %addressResult, %dataResult = load[%23] %outputs#0 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i7>, <i32>
    %24:2 = fork [2] %dataResult {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i32>
    %25 = cmpi eq, %24#0, %20#1 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %26 = select %25[%22, %trueResult] {handshake.bb = 2 : ui32, handshake.name = "select0"} : <i1>, <i32>
    %27 = cmpi ne, %24#1, %20#0 {handshake.bb = 2 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_4, %falseResult_5 = cond_br %39#4, %30 {handshake.bb = 3 : ui32, handshake.name = "cond_br44"} : <i1>, <i32>
    %28:2 = fork [2] %falseResult_5 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i32>
    %trueResult_6, %falseResult_7 = cond_br %14#3, %19 {handshake.bb = 3 : ui32, handshake.name = "cond_br13"} : <i1>, <i1>
    sink %trueResult_6 {handshake.name = "sink2"} : <i1>
    %trueResult_8, %falseResult_9 = cond_br %39#0, %37 {handshake.bb = 3 : ui32, handshake.name = "cond_br45"} : <i1>, <i8>
    sink %falseResult_9 {handshake.name = "sink3"} : <i8>
    %trueResult_10, %falseResult_11 = cond_br %39#3, %29 {handshake.bb = 3 : ui32, handshake.name = "cond_br46"} : <i1>, <i1>
    sink %falseResult_11 {handshake.name = "sink4"} : <i1>
    %trueResult_12, %falseResult_13 = cond_br %39#2, %12#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br47"} : <i1>, <i32>
    sink %falseResult_13 {handshake.name = "sink5"} : <i32>
    %trueResult_14, %falseResult_15 = cond_br %39#1, %10#2 {handshake.bb = 3 : ui32, handshake.name = "cond_br48"} : <i1>, <>
    sink %falseResult_15 {handshake.name = "sink6"} : <>
    %29 = mux %14#2 [%falseResult_7, %27] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux9"} : <i1>, <i1>
    %30 = mux %14#1 [%falseResult, %26] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %31 = constant %10#1 {handshake.bb = 3 : ui32, handshake.name = "constant1", value = 101 : i8} : <>, <i8>
    %32 = extsi %31 {handshake.bb = 3 : ui32, handshake.name = "extsi9"} : <i8> to <i9>
    %33 = constant %10#0 {handshake.bb = 3 : ui32, handshake.name = "constant3", value = 2 : i3} : <>, <i3>
    %34 = extsi %33 {handshake.bb = 3 : ui32, handshake.name = "extsi10"} : <i3> to <i9>
    %35 = addi %18, %34 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i9>
    %36:2 = fork [2] %35 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i9>
    %37 = trunci %36#0 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i9> to <i8>
    %38 = cmpi ult, %36#1, %32 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i9>
    %39:6 = fork [6] %38 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i1>
    %40 = constant %0#1 {handshake.bb = 4 : ui32, handshake.name = "constant6", value = 1 : i2} : <>, <i2>
    %41 = extsi %40 {handshake.bb = 4 : ui32, handshake.name = "extsi11"} : <i2> to <i8>
    %42 = constant %0#6 {handshake.bb = 4 : ui32, handshake.name = "constant11", value = -1 : i32} : <>, <i32>
    %43:2 = fork [2] %42 {handshake.bb = 4 : ui32, handshake.name = "fork14"} : <i32>
    %44 = constant %0#5 {handshake.bb = 4 : ui32, handshake.name = "constant12", value = true} : <>, <i1>
    %45 = cmpi ne, %28#1, %43#1 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i32>
    %46 = constant %0#4 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant20", value = false} : <>, <i1>
    %47 = merge %46, %78#5 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge8"} : <i1>
    %48:5 = fork [5] %47 {handshake.bb = 5 : ui32, handshake.name = "fork15"} : <i1>
    %49 = mux %48#4 [%0#3, %trueResult_34] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux11"} : <i1>, <>
    %50:4 = fork [4] %49 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <>
    %51 = mux %48#3 [%1#0, %trueResult_32] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %52:2 = fork [2] %51 {handshake.bb = 5 : ui32, handshake.name = "fork17"} : <i32>
    %53 = mux %48#2 [%44, %trueResult_30] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux1"} : <i1>, <i1>
    %54:6 = fork [6] %53 {handshake.bb = 5 : ui32, handshake.name = "fork18"} : <i1>
    %55 = mux %48#1 [%43#0, %trueResult_28] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux16"} : <i1>, <i32>
    %56 = mux %48#0 [%41, %trueResult_26] {handshake.bb = 5 : ui32, handshake.name = "mux17"} : <i1>, <i8>
    %57:2 = fork [2] %56 {handshake.bb = 5 : ui32, handshake.name = "fork19"} : <i8>
    %58 = extsi %57#0 {handshake.bb = 5 : ui32, handshake.name = "extsi12"} : <i8> to <i9>
    %59 = constant %50#3 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = false} : <>, <i1>
    %trueResult_16, %falseResult_17 = cond_br %54#5, %55 {handshake.bb = 6 : ui32, handshake.name = "cond_br49"} : <i1>, <i32>
    %trueResult_18, %falseResult_19 = cond_br %54#4, %52#1 {handshake.bb = 6 : ui32, handshake.name = "cond_br50"} : <i1>, <i32>
    sink %falseResult_19 {handshake.name = "sink7"} : <i32>
    %60:2 = fork [2] %trueResult_18 {handshake.bb = 6 : ui32, handshake.name = "fork20"} : <i32>
    %trueResult_20, %falseResult_21 = cond_br %54#0, %57#1 {handshake.bb = 6 : ui32, handshake.name = "cond_br51"} : <i1>, <i8>
    sink %falseResult_21 {handshake.name = "sink8"} : <i8>
    %61:2 = fork [2] %trueResult_20 {handshake.bb = 6 : ui32, handshake.name = "fork21"} : <i8>
    %62 = extsi %61#1 {handshake.bb = 6 : ui32, handshake.name = "extsi13"} : <i8> to <i32>
    %63 = trunci %61#0 {handshake.bb = 6 : ui32, handshake.name = "trunci2"} : <i8> to <i7>
    %addressResult_22, %dataResult_23 = load[%63] %outputs#1 {handshake.bb = 6 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i7>, <i32>
    %64:2 = fork [2] %dataResult_23 {handshake.bb = 6 : ui32, handshake.name = "fork22"} : <i32>
    %65 = cmpi eq, %64#0, %60#1 {handshake.bb = 6 : ui32, handshake.name = "cmpi3"} : <i32>
    %66 = select %65[%62, %trueResult_16] {handshake.bb = 6 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %67 = cmpi ne, %64#1, %60#0 {handshake.bb = 6 : ui32, handshake.name = "cmpi4"} : <i32>
    %trueResult_24, %falseResult_25 = cond_br %54#3, %59 {handshake.bb = 7 : ui32, handshake.name = "cond_br31"} : <i1>, <i1>
    sink %trueResult_24 {handshake.name = "sink9"} : <i1>
    %trueResult_26, %falseResult_27 = cond_br %78#0, %76 {handshake.bb = 7 : ui32, handshake.name = "cond_br52"} : <i1>, <i8>
    sink %falseResult_27 {handshake.name = "sink10"} : <i8>
    %trueResult_28, %falseResult_29 = cond_br %78#4, %69 {handshake.bb = 7 : ui32, handshake.name = "cond_br53"} : <i1>, <i32>
    %trueResult_30, %falseResult_31 = cond_br %78#3, %68 {handshake.bb = 7 : ui32, handshake.name = "cond_br54"} : <i1>, <i1>
    sink %falseResult_31 {handshake.name = "sink11"} : <i1>
    %trueResult_32, %falseResult_33 = cond_br %78#2, %52#0 {handshake.bb = 7 : ui32, handshake.name = "cond_br55"} : <i1>, <i32>
    sink %falseResult_33 {handshake.name = "sink12"} : <i32>
    %trueResult_34, %falseResult_35 = cond_br %78#1, %50#2 {handshake.bb = 7 : ui32, handshake.name = "cond_br56"} : <i1>, <>
    sink %falseResult_35 {handshake.name = "sink13"} : <>
    %68 = mux %54#2 [%falseResult_25, %67] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux18"} : <i1>, <i1>
    %69 = mux %54#1 [%falseResult_17, %66] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux19"} : <i1>, <i32>
    %70 = constant %50#1 {handshake.bb = 7 : ui32, handshake.name = "constant16", value = 101 : i8} : <>, <i8>
    %71 = extsi %70 {handshake.bb = 7 : ui32, handshake.name = "extsi14"} : <i8> to <i9>
    %72 = constant %50#0 {handshake.bb = 7 : ui32, handshake.name = "constant17", value = 2 : i3} : <>, <i3>
    %73 = extsi %72 {handshake.bb = 7 : ui32, handshake.name = "extsi15"} : <i3> to <i9>
    %74 = addi %58, %73 {handshake.bb = 7 : ui32, handshake.name = "addi1"} : <i9>
    %75:2 = fork [2] %74 {handshake.bb = 7 : ui32, handshake.name = "fork23"} : <i9>
    %76 = trunci %75#0 {handshake.bb = 7 : ui32, handshake.name = "trunci3"} : <i9> to <i8>
    %77 = cmpi ult, %75#1, %71 {handshake.bb = 7 : ui32, handshake.name = "cmpi6"} : <i9>
    %78:6 = fork [6] %77 {handshake.bb = 7 : ui32, handshake.name = "fork24"} : <i1>
    %79 = select %45[%28#0, %falseResult_29] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    end {handshake.bb = 8 : ui32, handshake.name = "end0"} %79, %memEnd, %0#2 : <i32>, <>, <>
  }
}


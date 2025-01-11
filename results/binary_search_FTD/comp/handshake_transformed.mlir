module {
  handshake.func @binary_search(%arg0: !handshake.channel<i32>, %arg1: memref<101xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["search", "a", "a_start", "start"], cfg.edges = "[0,1][7,5,8,cmpi6][2,3][4,5][6,7][1,2,3,mux0][3,1,4,cmpi5][5,6,7,mux1]", resNames = ["out0", "a_end", "end"]} {
    %0:4 = fork [4] %arg3 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %1:2 = fork [2] %arg0 {handshake.bb = 0 : ui32, handshake.name = "fork1"} : <i32>
    %outputs:2, %memEnd = mem_controller[%arg1 : memref<101xi32>] %arg2 (%addressResult, %addressResult_20) %0#0 {connectedBlocks = [2 : i32, 6 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i7>, !handshake.channel<i7>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %2 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %3 = constant %2 {handshake.bb = 0 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %4 = extsi %3 {handshake.bb = 0 : ui32, handshake.name = "extsi6"} : <i1> to <i8>
    %5 = source {handshake.bb = 0 : ui32, handshake.name = "source1"} : <>
    %6 = constant %5 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = true} : <>, <i1>
    %7 = source {handshake.bb = 0 : ui32, handshake.name = "source2"} : <>
    %8 = constant %7 {handshake.bb = 0 : ui32, handshake.name = "constant5", value = -1 : i32} : <>, <i32>
    %9 = constant %0#3 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %10 = merge %9, %43#4 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %11:4 = fork [4] %10 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %12 = mux %11#3 [%1#1, %trueResult_12] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %13:2 = fork [2] %12 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <i32>
    %14 = mux %11#2 [%6, %trueResult_10] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i1>
    %15:6 = fork [6] %14 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i1>
    %16 = mux %11#1 [%8, %trueResult_4] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %17 = mux %11#0 [%4, %trueResult_8] {handshake.bb = 1 : ui32, handshake.name = "mux5"} : <i1>, <i8>
    %18:2 = fork [2] %17 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i8>
    %19 = extsi %18#0 {handshake.bb = 1 : ui32, handshake.name = "extsi7"} : <i8> to <i9>
    %20 = source {handshake.bb = 1 : ui32, handshake.name = "source3"} : <>
    %21 = constant %20 {handshake.bb = 1 : ui32, handshake.name = "constant7", value = false} : <>, <i1>
    %trueResult, %falseResult = cond_br %15#5, %16 {handshake.bb = 2 : ui32, handshake.name = "cond_br35"} : <i1>, <i32>
    %trueResult_0, %falseResult_1 = cond_br %15#4, %13#1 {handshake.bb = 2 : ui32, handshake.name = "cond_br36"} : <i1>, <i32>
    sink %falseResult_1 {handshake.name = "sink0"} : <i32>
    %22:2 = fork [2] %trueResult_0 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i32>
    %trueResult_2, %falseResult_3 = cond_br %15#0, %18#1 {handshake.bb = 2 : ui32, handshake.name = "cond_br37"} : <i1>, <i8>
    sink %falseResult_3 {handshake.name = "sink1"} : <i8>
    %23:2 = fork [2] %trueResult_2 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i8>
    %24 = extsi %23#1 {handshake.bb = 2 : ui32, handshake.name = "extsi8"} : <i8> to <i32>
    %25 = trunci %23#0 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i8> to <i7>
    %addressResult, %dataResult = load[%25] %outputs#0 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i7>, <i32>
    %26:2 = fork [2] %dataResult {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i32>
    %27 = cmpi eq, %26#0, %22#1 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %28 = select %27[%24, %trueResult] {handshake.bb = 2 : ui32, handshake.name = "select0"} : <i1>, <i32>
    %29 = cmpi ne, %26#1, %22#0 {handshake.bb = 2 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_4, %falseResult_5 = cond_br %43#3, %32 {handshake.bb = 3 : ui32, handshake.name = "cond_br38"} : <i1>, <i32>
    %30:2 = fork [2] %falseResult_5 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i32>
    %trueResult_6, %falseResult_7 = cond_br %15#3, %21 {handshake.bb = 3 : ui32, handshake.name = "cond_br13"} : <i1>, <i1>
    sink %trueResult_6 {handshake.name = "sink2"} : <i1>
    %trueResult_8, %falseResult_9 = cond_br %43#0, %41 {handshake.bb = 3 : ui32, handshake.name = "cond_br39"} : <i1>, <i8>
    sink %falseResult_9 {handshake.name = "sink3"} : <i8>
    %trueResult_10, %falseResult_11 = cond_br %43#2, %31 {handshake.bb = 3 : ui32, handshake.name = "cond_br40"} : <i1>, <i1>
    sink %falseResult_11 {handshake.name = "sink4"} : <i1>
    %trueResult_12, %falseResult_13 = cond_br %43#1, %13#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br41"} : <i1>, <i32>
    sink %falseResult_13 {handshake.name = "sink5"} : <i32>
    %31 = mux %15#2 [%falseResult_7, %29] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <i1>
    %32 = mux %15#1 [%falseResult, %28] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %33 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %34 = constant %33 {handshake.bb = 3 : ui32, handshake.name = "constant3", value = 101 : i8} : <>, <i8>
    %35 = extsi %34 {handshake.bb = 3 : ui32, handshake.name = "extsi9"} : <i8> to <i9>
    %36 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %37 = constant %36 {handshake.bb = 3 : ui32, handshake.name = "constant6", value = 2 : i3} : <>, <i3>
    %38 = extsi %37 {handshake.bb = 3 : ui32, handshake.name = "extsi10"} : <i3> to <i9>
    %39 = addi %19, %38 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i9>
    %40:2 = fork [2] %39 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i9>
    %41 = trunci %40#0 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i9> to <i8>
    %42 = cmpi ult, %40#1, %35 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i9>
    %43:5 = fork [5] %42 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i1>
    %44 = source {handshake.bb = 4 : ui32, handshake.name = "source6"} : <>
    %45 = constant %44 {handshake.bb = 4 : ui32, handshake.name = "constant16", value = 1 : i2} : <>, <i2>
    %46 = extsi %45 {handshake.bb = 4 : ui32, handshake.name = "extsi11"} : <i2> to <i8>
    %47 = source {handshake.bb = 4 : ui32, handshake.name = "source7"} : <>
    %48 = constant %47 {handshake.bb = 4 : ui32, handshake.name = "constant11", value = -1 : i32} : <>, <i32>
    %49:2 = fork [2] %48 {handshake.bb = 4 : ui32, handshake.name = "fork12"} : <i32>
    %50 = source {handshake.bb = 4 : ui32, handshake.name = "source8"} : <>
    %51 = constant %50 {handshake.bb = 4 : ui32, handshake.name = "constant12", value = true} : <>, <i1>
    %52 = cmpi ne, %30#1, %49#1 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i32>
    %53 = constant %0#2 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant17", value = false} : <>, <i1>
    %54 = merge %53, %86#4 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge5"} : <i1>
    %55:4 = fork [4] %54 {handshake.bb = 5 : ui32, handshake.name = "fork13"} : <i1>
    %56 = mux %55#3 [%1#0, %trueResult_30] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %57:2 = fork [2] %56 {handshake.bb = 5 : ui32, handshake.name = "fork14"} : <i32>
    %58 = mux %55#2 [%51, %trueResult_28] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux1"} : <i1>, <i1>
    %59:6 = fork [6] %58 {handshake.bb = 5 : ui32, handshake.name = "fork15"} : <i1>
    %60 = mux %55#1 [%49#0, %trueResult_26] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %61 = mux %55#0 [%46, %trueResult_24] {handshake.bb = 5 : ui32, handshake.name = "mux11"} : <i1>, <i8>
    %62:2 = fork [2] %61 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <i8>
    %63 = extsi %62#0 {handshake.bb = 5 : ui32, handshake.name = "extsi12"} : <i8> to <i9>
    %64 = source {handshake.bb = 5 : ui32, handshake.name = "source9"} : <>
    %65 = constant %64 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = false} : <>, <i1>
    %trueResult_14, %falseResult_15 = cond_br %59#5, %60 {handshake.bb = 6 : ui32, handshake.name = "cond_br42"} : <i1>, <i32>
    %trueResult_16, %falseResult_17 = cond_br %59#4, %57#1 {handshake.bb = 6 : ui32, handshake.name = "cond_br43"} : <i1>, <i32>
    sink %falseResult_17 {handshake.name = "sink6"} : <i32>
    %66:2 = fork [2] %trueResult_16 {handshake.bb = 6 : ui32, handshake.name = "fork17"} : <i32>
    %trueResult_18, %falseResult_19 = cond_br %59#0, %62#1 {handshake.bb = 6 : ui32, handshake.name = "cond_br44"} : <i1>, <i8>
    sink %falseResult_19 {handshake.name = "sink7"} : <i8>
    %67:2 = fork [2] %trueResult_18 {handshake.bb = 6 : ui32, handshake.name = "fork18"} : <i8>
    %68 = extsi %67#1 {handshake.bb = 6 : ui32, handshake.name = "extsi13"} : <i8> to <i32>
    %69 = trunci %67#0 {handshake.bb = 6 : ui32, handshake.name = "trunci2"} : <i8> to <i7>
    %addressResult_20, %dataResult_21 = load[%69] %outputs#1 {handshake.bb = 6 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i7>, <i32>
    %70:2 = fork [2] %dataResult_21 {handshake.bb = 6 : ui32, handshake.name = "fork19"} : <i32>
    %71 = cmpi eq, %70#0, %66#1 {handshake.bb = 6 : ui32, handshake.name = "cmpi3"} : <i32>
    %72 = select %71[%68, %trueResult_14] {handshake.bb = 6 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %73 = cmpi ne, %70#1, %66#0 {handshake.bb = 6 : ui32, handshake.name = "cmpi4"} : <i32>
    %trueResult_22, %falseResult_23 = cond_br %59#3, %65 {handshake.bb = 7 : ui32, handshake.name = "cond_br28"} : <i1>, <i1>
    sink %trueResult_22 {handshake.name = "sink8"} : <i1>
    %trueResult_24, %falseResult_25 = cond_br %86#0, %84 {handshake.bb = 7 : ui32, handshake.name = "cond_br45"} : <i1>, <i8>
    sink %falseResult_25 {handshake.name = "sink9"} : <i8>
    %trueResult_26, %falseResult_27 = cond_br %86#3, %75 {handshake.bb = 7 : ui32, handshake.name = "cond_br46"} : <i1>, <i32>
    %trueResult_28, %falseResult_29 = cond_br %86#2, %74 {handshake.bb = 7 : ui32, handshake.name = "cond_br47"} : <i1>, <i1>
    sink %falseResult_29 {handshake.name = "sink10"} : <i1>
    %trueResult_30, %falseResult_31 = cond_br %86#1, %57#0 {handshake.bb = 7 : ui32, handshake.name = "cond_br48"} : <i1>, <i32>
    sink %falseResult_31 {handshake.name = "sink11"} : <i32>
    %74 = mux %59#2 [%falseResult_23, %73] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux12"} : <i1>, <i1>
    %75 = mux %59#1 [%falseResult_15, %72] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %76 = source {handshake.bb = 7 : ui32, handshake.name = "source10"} : <>
    %77 = constant %76 {handshake.bb = 7 : ui32, handshake.name = "constant18", value = 101 : i8} : <>, <i8>
    %78 = extsi %77 {handshake.bb = 7 : ui32, handshake.name = "extsi14"} : <i8> to <i9>
    %79 = source {handshake.bb = 7 : ui32, handshake.name = "source11"} : <>
    %80 = constant %79 {handshake.bb = 7 : ui32, handshake.name = "constant19", value = 2 : i3} : <>, <i3>
    %81 = extsi %80 {handshake.bb = 7 : ui32, handshake.name = "extsi15"} : <i3> to <i9>
    %82 = addi %63, %81 {handshake.bb = 7 : ui32, handshake.name = "addi1"} : <i9>
    %83:2 = fork [2] %82 {handshake.bb = 7 : ui32, handshake.name = "fork20"} : <i9>
    %84 = trunci %83#0 {handshake.bb = 7 : ui32, handshake.name = "trunci3"} : <i9> to <i8>
    %85 = cmpi ult, %83#1, %78 {handshake.bb = 7 : ui32, handshake.name = "cmpi6"} : <i9>
    %86:5 = fork [5] %85 {handshake.bb = 7 : ui32, handshake.name = "fork21"} : <i1>
    %87 = select %52[%30#0, %falseResult_27] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    end {handshake.bb = 8 : ui32, handshake.name = "end0"} %87, %memEnd, %0#1 : <i32>, <>, <>
  }
}


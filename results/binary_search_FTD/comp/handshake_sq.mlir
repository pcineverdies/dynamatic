module {
  handshake.func @binary_search(%arg0: !handshake.channel<i32>, %arg1: memref<101xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["search", "a", "a_start", "start"], cfg.edges = "[0,1][7,5,8,cmpi6][2,3][4,5][6,7][1,2,3,mux0][3,1,4,cmpi5][5,6,7,mux1]", resNames = ["out0", "a_end", "end"]} {
    %outputs:2, %memEnd = mem_controller[%arg1 : memref<101xi32>] %arg2 (%addressResult, %addressResult_20) %arg3 {connectedBlocks = [2 : i32, 6 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %0 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %1 = constant %0 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %2 = source {handshake.bb = 0 : ui32, handshake.name = "source1"} : <>
    %3 = constant %2 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = true} : <>, <i1>
    %4 = source {handshake.bb = 0 : ui32, handshake.name = "source2"} : <>
    %5 = constant %4 {handshake.bb = 0 : ui32, handshake.name = "constant5", value = -1 : i32} : <>, <i32>
    %6 = constant %arg3 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %7 = merge %6, %24 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %8 = mux %7 [%arg0, %trueResult_12] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %9 = mux %7 [%3, %trueResult_10] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i1>
    %10 = mux %7 [%5, %trueResult_4] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %11 = mux %7 [%1, %trueResult_8] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %12 = source {handshake.bb = 1 : ui32, handshake.name = "source3"} : <>
    %13 = constant %12 {handshake.bb = 1 : ui32, handshake.name = "constant7", value = false} : <>, <i1>
    %trueResult, %falseResult = cond_br %9, %10 {handshake.bb = 2 : ui32, handshake.name = "cond_br35"} : <i1>, <i32>
    %trueResult_0, %falseResult_1 = cond_br %9, %8 {handshake.bb = 2 : ui32, handshake.name = "cond_br36"} : <i1>, <i32>
    %trueResult_2, %falseResult_3 = cond_br %9, %11 {handshake.bb = 2 : ui32, handshake.name = "cond_br37"} : <i1>, <i32>
    %addressResult, %dataResult = load[%trueResult_2] %outputs#0 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i32>, <i32>
    %14 = cmpi eq, %dataResult, %trueResult_0 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %15 = select %14[%trueResult_2, %trueResult] {handshake.bb = 2 : ui32, handshake.name = "select0"} : <i1>, <i32>
    %16 = cmpi ne, %dataResult, %trueResult_0 {handshake.bb = 2 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_4, %falseResult_5 = cond_br %24, %18 {handshake.bb = 3 : ui32, handshake.name = "cond_br38"} : <i1>, <i32>
    %trueResult_6, %falseResult_7 = cond_br %9, %13 {handshake.bb = 3 : ui32, handshake.name = "cond_br13"} : <i1>, <i1>
    %trueResult_8, %falseResult_9 = cond_br %24, %23 {handshake.bb = 3 : ui32, handshake.name = "cond_br39"} : <i1>, <i32>
    %trueResult_10, %falseResult_11 = cond_br %24, %17 {handshake.bb = 3 : ui32, handshake.name = "cond_br40"} : <i1>, <i1>
    %trueResult_12, %falseResult_13 = cond_br %24, %8 {handshake.bb = 3 : ui32, handshake.name = "cond_br41"} : <i1>, <i32>
    %17 = mux %9 [%falseResult_7, %16] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <i1>
    %18 = mux %9 [%falseResult, %15] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %19 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %20 = constant %19 {handshake.bb = 3 : ui32, handshake.name = "constant8", value = 101 : i32} : <>, <i32>
    %21 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %22 = constant %21 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 2 : i32} : <>, <i32>
    %23 = addi %11, %22 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %24 = cmpi ult, %23, %20 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i32>
    %25 = source {handshake.bb = 4 : ui32, handshake.name = "source6"} : <>
    %26 = constant %25 {handshake.bb = 4 : ui32, handshake.name = "constant10", value = 1 : i32} : <>, <i32>
    %27 = source {handshake.bb = 4 : ui32, handshake.name = "source7"} : <>
    %28 = constant %27 {handshake.bb = 4 : ui32, handshake.name = "constant11", value = -1 : i32} : <>, <i32>
    %29 = source {handshake.bb = 4 : ui32, handshake.name = "source8"} : <>
    %30 = constant %29 {handshake.bb = 4 : ui32, handshake.name = "constant12", value = true} : <>, <i1>
    %31 = cmpi ne, %falseResult_5, %28 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i32>
    %32 = constant %arg3 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant17", value = false} : <>, <i1>
    %33 = merge %32, %50 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge5"} : <i1>
    %34 = mux %33 [%arg0, %trueResult_30] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %35 = mux %33 [%30, %trueResult_28] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux1"} : <i1>, <i1>
    %36 = mux %33 [%28, %trueResult_26] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %37 = mux %33 [%26, %trueResult_24] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux11"} : <i1>, <i32>
    %38 = source {handshake.bb = 5 : ui32, handshake.name = "source9"} : <>
    %39 = constant %38 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = false} : <>, <i1>
    %trueResult_14, %falseResult_15 = cond_br %35, %36 {handshake.bb = 6 : ui32, handshake.name = "cond_br42"} : <i1>, <i32>
    %trueResult_16, %falseResult_17 = cond_br %35, %34 {handshake.bb = 6 : ui32, handshake.name = "cond_br43"} : <i1>, <i32>
    %trueResult_18, %falseResult_19 = cond_br %35, %37 {handshake.bb = 6 : ui32, handshake.name = "cond_br44"} : <i1>, <i32>
    %addressResult_20, %dataResult_21 = load[%trueResult_18] %outputs#1 {handshake.bb = 6 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i32>, <i32>
    %40 = cmpi eq, %dataResult_21, %trueResult_16 {handshake.bb = 6 : ui32, handshake.name = "cmpi3"} : <i32>
    %41 = select %40[%trueResult_18, %trueResult_14] {handshake.bb = 6 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %42 = cmpi ne, %dataResult_21, %trueResult_16 {handshake.bb = 6 : ui32, handshake.name = "cmpi4"} : <i32>
    %trueResult_22, %falseResult_23 = cond_br %35, %39 {handshake.bb = 7 : ui32, handshake.name = "cond_br28"} : <i1>, <i1>
    %trueResult_24, %falseResult_25 = cond_br %50, %49 {handshake.bb = 7 : ui32, handshake.name = "cond_br45"} : <i1>, <i32>
    %trueResult_26, %falseResult_27 = cond_br %50, %44 {handshake.bb = 7 : ui32, handshake.name = "cond_br46"} : <i1>, <i32>
    %trueResult_28, %falseResult_29 = cond_br %50, %43 {handshake.bb = 7 : ui32, handshake.name = "cond_br47"} : <i1>, <i1>
    %trueResult_30, %falseResult_31 = cond_br %50, %34 {handshake.bb = 7 : ui32, handshake.name = "cond_br48"} : <i1>, <i32>
    %43 = mux %35 [%falseResult_23, %42] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux12"} : <i1>, <i1>
    %44 = mux %35 [%falseResult_15, %41] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %45 = source {handshake.bb = 7 : ui32, handshake.name = "source10"} : <>
    %46 = constant %45 {handshake.bb = 7 : ui32, handshake.name = "constant14", value = 101 : i32} : <>, <i32>
    %47 = source {handshake.bb = 7 : ui32, handshake.name = "source11"} : <>
    %48 = constant %47 {handshake.bb = 7 : ui32, handshake.name = "constant15", value = 2 : i32} : <>, <i32>
    %49 = addi %37, %48 {handshake.bb = 7 : ui32, handshake.name = "addi1"} : <i32>
    %50 = cmpi ult, %49, %46 {handshake.bb = 7 : ui32, handshake.name = "cmpi6"} : <i32>
    %51 = select %31[%falseResult_5, %falseResult_27] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    end {handshake.bb = 8 : ui32, handshake.name = "end0"} %51, %memEnd, %arg3 : <i32>, <>, <>
  }
}


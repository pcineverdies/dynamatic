module {
  handshake.func @binary_search(%arg0: !handshake.channel<i32>, %arg1: memref<101xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["search", "a", "a_start", "start"], cfg.edges = "[0,1][7,5,8,cmpi6][2,3][4,5][6,7][1,2,3,mux0][3,1,4,cmpi5][5,6,7,mux1]", resNames = ["out0", "a_end", "end"]} {
    %outputs:2, %memEnd = mem_controller[%arg1 : memref<101xi32>] %arg2 (%addressResult, %addressResult_22) %arg3 {connectedBlocks = [2 : i32, 6 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %0 = constant %arg3 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %1 = constant %arg3 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = true} : <>, <i1>
    %2 = constant %arg3 {handshake.bb = 0 : ui32, handshake.name = "constant5", value = -1 : i32} : <>, <i32>
    %3 = constant %arg3 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %4 = merge %3, %19 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %5 = mux %4 [%arg3, %trueResult_14] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <>
    %6 = mux %4 [%arg0, %trueResult_12] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %7 = mux %4 [%1, %trueResult_10] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i1>
    %8 = mux %4 [%2, %trueResult_4] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %9 = mux %4 [%0, %trueResult_8] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %10 = constant %5 {handshake.bb = 1 : ui32, handshake.name = "constant7", value = false} : <>, <i1>
    %trueResult, %falseResult = cond_br %7, %8 {handshake.bb = 2 : ui32, handshake.name = "cond_br41"} : <i1>, <i32>
    %trueResult_0, %falseResult_1 = cond_br %7, %6 {handshake.bb = 2 : ui32, handshake.name = "cond_br42"} : <i1>, <i32>
    %trueResult_2, %falseResult_3 = cond_br %7, %9 {handshake.bb = 2 : ui32, handshake.name = "cond_br43"} : <i1>, <i32>
    %addressResult, %dataResult = load[%trueResult_2] %outputs#0 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i32>, <i32>
    %11 = cmpi eq, %dataResult, %trueResult_0 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %12 = select %11[%trueResult_2, %trueResult] {handshake.bb = 2 : ui32, handshake.name = "select0"} : <i1>, <i32>
    %13 = cmpi ne, %dataResult, %trueResult_0 {handshake.bb = 2 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_4, %falseResult_5 = cond_br %19, %15 {handshake.bb = 3 : ui32, handshake.name = "cond_br44"} : <i1>, <i32>
    %trueResult_6, %falseResult_7 = cond_br %7, %10 {handshake.bb = 3 : ui32, handshake.name = "cond_br13"} : <i1>, <i1>
    %trueResult_8, %falseResult_9 = cond_br %19, %18 {handshake.bb = 3 : ui32, handshake.name = "cond_br45"} : <i1>, <i32>
    %trueResult_10, %falseResult_11 = cond_br %19, %14 {handshake.bb = 3 : ui32, handshake.name = "cond_br46"} : <i1>, <i1>
    %trueResult_12, %falseResult_13 = cond_br %19, %6 {handshake.bb = 3 : ui32, handshake.name = "cond_br47"} : <i1>, <i32>
    %trueResult_14, %falseResult_15 = cond_br %19, %5 {handshake.bb = 3 : ui32, handshake.name = "cond_br48"} : <i1>, <>
    %14 = mux %7 [%falseResult_7, %13] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux9"} : <i1>, <i1>
    %15 = mux %7 [%falseResult, %12] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %16 = constant %5 {handshake.bb = 3 : ui32, handshake.name = "constant8", value = 101 : i32} : <>, <i32>
    %17 = constant %5 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 2 : i32} : <>, <i32>
    %18 = addi %9, %17 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %19 = cmpi ult, %18, %16 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i32>
    %20 = constant %arg3 {handshake.bb = 4 : ui32, handshake.name = "constant10", value = 1 : i32} : <>, <i32>
    %21 = constant %arg3 {handshake.bb = 4 : ui32, handshake.name = "constant11", value = -1 : i32} : <>, <i32>
    %22 = constant %arg3 {handshake.bb = 4 : ui32, handshake.name = "constant12", value = true} : <>, <i1>
    %23 = cmpi ne, %falseResult_5, %21 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i32>
    %24 = constant %arg3 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant20", value = false} : <>, <i1>
    %25 = merge %24, %40 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge8"} : <i1>
    %26 = mux %25 [%arg3, %trueResult_34] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux11"} : <i1>, <>
    %27 = mux %25 [%arg0, %trueResult_32] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %28 = mux %25 [%22, %trueResult_30] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux1"} : <i1>, <i1>
    %29 = mux %25 [%21, %trueResult_28] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux16"} : <i1>, <i32>
    %30 = mux %25 [%20, %trueResult_26] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux17"} : <i1>, <i32>
    %31 = constant %26 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = false} : <>, <i1>
    %trueResult_16, %falseResult_17 = cond_br %28, %29 {handshake.bb = 6 : ui32, handshake.name = "cond_br49"} : <i1>, <i32>
    %trueResult_18, %falseResult_19 = cond_br %28, %27 {handshake.bb = 6 : ui32, handshake.name = "cond_br50"} : <i1>, <i32>
    %trueResult_20, %falseResult_21 = cond_br %28, %30 {handshake.bb = 6 : ui32, handshake.name = "cond_br51"} : <i1>, <i32>
    %addressResult_22, %dataResult_23 = load[%trueResult_20] %outputs#1 {handshake.bb = 6 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i32>, <i32>
    %32 = cmpi eq, %dataResult_23, %trueResult_18 {handshake.bb = 6 : ui32, handshake.name = "cmpi3"} : <i32>
    %33 = select %32[%trueResult_20, %trueResult_16] {handshake.bb = 6 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %34 = cmpi ne, %dataResult_23, %trueResult_18 {handshake.bb = 6 : ui32, handshake.name = "cmpi4"} : <i32>
    %trueResult_24, %falseResult_25 = cond_br %28, %31 {handshake.bb = 7 : ui32, handshake.name = "cond_br31"} : <i1>, <i1>
    %trueResult_26, %falseResult_27 = cond_br %40, %39 {handshake.bb = 7 : ui32, handshake.name = "cond_br52"} : <i1>, <i32>
    %trueResult_28, %falseResult_29 = cond_br %40, %36 {handshake.bb = 7 : ui32, handshake.name = "cond_br53"} : <i1>, <i32>
    %trueResult_30, %falseResult_31 = cond_br %40, %35 {handshake.bb = 7 : ui32, handshake.name = "cond_br54"} : <i1>, <i1>
    %trueResult_32, %falseResult_33 = cond_br %40, %27 {handshake.bb = 7 : ui32, handshake.name = "cond_br55"} : <i1>, <i32>
    %trueResult_34, %falseResult_35 = cond_br %40, %26 {handshake.bb = 7 : ui32, handshake.name = "cond_br56"} : <i1>, <>
    %35 = mux %28 [%falseResult_25, %34] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux18"} : <i1>, <i1>
    %36 = mux %28 [%falseResult_17, %33] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux19"} : <i1>, <i32>
    %37 = constant %26 {handshake.bb = 7 : ui32, handshake.name = "constant14", value = 101 : i32} : <>, <i32>
    %38 = constant %26 {handshake.bb = 7 : ui32, handshake.name = "constant15", value = 2 : i32} : <>, <i32>
    %39 = addi %30, %38 {handshake.bb = 7 : ui32, handshake.name = "addi1"} : <i32>
    %40 = cmpi ult, %39, %37 {handshake.bb = 7 : ui32, handshake.name = "cmpi6"} : <i32>
    %41 = select %23[%falseResult_5, %falseResult_29] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    end {handshake.bb = 8 : ui32, handshake.name = "end0"} %41, %memEnd, %arg3 : <i32>, <>, <>
  }
}


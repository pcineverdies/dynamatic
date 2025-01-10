module {
  handshake.func @stencil_2d(%arg0: memref<900xi32>, %arg1: memref<10xi32>, %arg2: memref<900xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["orig", "filter", "sol", "orig_start", "filter_start", "sol_start", "start"], cfg.edges = "[0,1][2,3][4,2,5,cmpi1][1,2][3,3,4,cmpi0][5,1,6,cmpi2]", resNames = ["out0", "orig_end", "filter_end", "sol_end", "end"]} {
    %memEnd = mem_controller[%arg2 : memref<900xi32>] %arg5 (%38, %addressResult_27, %dataResult_28) %arg6 {connectedBlocks = [5 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<10xi32>] %arg4 (%addressResult) %arg6 {connectedBlocks = [3 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<900xi32>] %arg3 (%addressResult_11) %arg6 {connectedBlocks = [3 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0 = constant %arg6 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %1 = constant %arg6 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %2 = merge %1, %42 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %3 = mux %2 [%arg6, %trueResult_25] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %4 = mux %2 [%0, %trueResult_23] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %5 = constant %3 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %6 = constant %3 {handshake.bb = 1 : ui32, handshake.name = "constant7", value = 0 : i32} : <>, <i32>
    %7 = constant %arg6 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant22", value = false} : <>, <i1>
    %8 = merge %7, %37 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge11"} : <i1>
    %9 = mux %8 [%4, %trueResult_19] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %10 = mux %8 [%3, %trueResult_17] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux17"} : <i1>, <>
    %11 = mux %8 [%5, %trueResult_13] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux18"} : <i1>, <i32>
    %12 = mux %8 [%6, %trueResult_15] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux19"} : <i1>, <i32>
    %13 = constant %10 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 0 : i32} : <>, <i32>
    %trueResult, %falseResult = cond_br %33, %32 {handshake.bb = 3 : ui32, handshake.name = "cond_br41"} : <i1>, <i32>
    %trueResult_3, %falseResult_4 = cond_br %33, %18 {handshake.bb = 3 : ui32, handshake.name = "cond_br42"} : <i1>, <>
    %trueResult_5, %falseResult_6 = cond_br %33, %17 {handshake.bb = 3 : ui32, handshake.name = "cond_br43"} : <i1>, <i32>
    %trueResult_7, %falseResult_8 = cond_br %33, %16 {handshake.bb = 3 : ui32, handshake.name = "cond_br44"} : <i1>, <i32>
    %trueResult_9, %falseResult_10 = cond_br %33, %31 {handshake.bb = 3 : ui32, handshake.name = "cond_br45"} : <i1>, <i32>
    %14 = constant %arg6 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant31", value = false} : <>, <i1>
    %15 = merge %14, %33 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge20"} : <i1>
    %16 = mux %15 [%9, %trueResult_7] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux21"} : <i1>, <i32>
    %17 = mux %15 [%12, %trueResult_5] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux23"} : <i1>, <i32>
    %18 = mux %15 [%10, %trueResult_3] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux26"} : <i1>, <>
    %19 = mux %15 [%11, %trueResult_9] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux27"} : <i1>, <i32>
    %20 = mux %15 [%13, %trueResult] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux28"} : <i1>, <i32>
    %21 = constant %18 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 30 : i32} : <>, <i32>
    %22 = constant %18 {handshake.bb = 3 : ui32, handshake.name = "constant10", value = 3 : i32} : <>, <i32>
    %23 = constant %18 {handshake.bb = 3 : ui32, handshake.name = "constant11", value = 1 : i32} : <>, <i32>
    %24 = shli %17, %23 {handshake.bb = 3 : ui32, handshake.name = "shli0"} : <i32>
    %25 = addi %17, %24 {handshake.bb = 3 : ui32, handshake.name = "addi7"} : <i32>
    %26 = addi %20, %25 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i32>
    %addressResult, %dataResult = load[%26] %outputs {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i32>, <i32>
    %27 = addi %20, %16 {handshake.bb = 3 : ui32, handshake.name = "addi2"} : <i32>
    %28 = muli %17, %21 {handshake.bb = 3 : ui32, handshake.name = "muli2"} : <i32>
    %29 = addi %27, %28 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i32>
    %addressResult_11, %dataResult_12 = load[%29] %outputs_1 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i32>, <i32>
    %30 = muli %dataResult, %dataResult_12 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %31 = addi %19, %30 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %32 = addi %20, %23 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i32>
    %33 = cmpi ult, %32, %22 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_13, %falseResult_14 = cond_br %37, %falseResult_10 {handshake.bb = 4 : ui32, handshake.name = "cond_br46"} : <i1>, <i32>
    %trueResult_15, %falseResult_16 = cond_br %37, %36 {handshake.bb = 4 : ui32, handshake.name = "cond_br47"} : <i1>, <i32>
    %trueResult_17, %falseResult_18 = cond_br %37, %10 {handshake.bb = 4 : ui32, handshake.name = "cond_br48"} : <i1>, <>
    %trueResult_19, %falseResult_20 = cond_br %37, %9 {handshake.bb = 4 : ui32, handshake.name = "cond_br49"} : <i1>, <i32>
    %34 = constant %10 {handshake.bb = 4 : ui32, handshake.name = "constant12", value = 3 : i32} : <>, <i32>
    %35 = constant %10 {handshake.bb = 4 : ui32, handshake.name = "constant13", value = 1 : i32} : <>, <i32>
    %36 = addi %12, %35 {handshake.bb = 4 : ui32, handshake.name = "addi5"} : <i32>
    %37 = cmpi ult, %36, %34 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_21, %falseResult_22 = cond_br %42, %falseResult_14 {handshake.bb = 5 : ui32, handshake.name = "cond_br50"} : <i1>, <i32>
    %trueResult_23, %falseResult_24 = cond_br %42, %41 {handshake.bb = 5 : ui32, handshake.name = "cond_br51"} : <i1>, <i32>
    %trueResult_25, %falseResult_26 = cond_br %42, %3 {handshake.bb = 5 : ui32, handshake.name = "cond_br52"} : <i1>, <>
    %38 = constant %arg6 {handshake.bb = 5 : ui32, handshake.name = "constant1", value = 1 : i32} : <>, <i32>
    %39 = constant %3 {handshake.bb = 5 : ui32, handshake.name = "constant14", value = 28 : i32} : <>, <i32>
    %40 = constant %3 {handshake.bb = 5 : ui32, handshake.name = "constant15", value = 1 : i32} : <>, <i32>
    %addressResult_27, %dataResult_28 = store[%4] %falseResult_14 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i32>, <i32>
    %41 = addi %4, %40 {handshake.bb = 5 : ui32, handshake.name = "addi6"} : <i32>
    %42 = cmpi ult, %41, %39 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i32>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %falseResult_22, %memEnd_2, %memEnd_0, %memEnd, %arg6 : <i32>, <>, <>, <>, <>
  }
}


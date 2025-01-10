module {
  handshake.func @matvec(%arg0: memref<400xi32>, %arg1: memref<20xi32>, %arg2: memref<20xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["m", "v", "out", "m_start", "v_start", "out_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][1,2][3,1,4,cmpi1]", resNames = ["out0", "m_end", "v_end", "out_end", "end"]} {
    %memEnd = mem_controller[%arg2 : memref<20xi32>] %arg5 (%25, %addressResult_17, %dataResult_18) %arg6 {connectedBlocks = [3 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<20xi32>] %arg4 (%addressResult) %arg6 {connectedBlocks = [2 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<400xi32>] %arg3 (%addressResult_9) %arg6 {connectedBlocks = [2 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0 = constant %arg6 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %1 = constant %arg6 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %2 = merge %1, %29 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %3 = mux %2 [%arg6, %trueResult_15] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %4 = mux %2 [%0, %trueResult_13] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %5 = constant %3 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %6 = constant %3 {handshake.bb = 1 : ui32, handshake.name = "constant7", value = 0 : i32} : <>, <i32>
    %trueResult, %falseResult = cond_br %24, %22 {handshake.bb = 2 : ui32, handshake.name = "cond_br24"} : <i1>, <i32>
    %trueResult_3, %falseResult_4 = cond_br %24, %23 {handshake.bb = 2 : ui32, handshake.name = "cond_br25"} : <i1>, <i32>
    %trueResult_5, %falseResult_6 = cond_br %24, %10 {handshake.bb = 2 : ui32, handshake.name = "cond_br26"} : <i1>, <>
    %trueResult_7, %falseResult_8 = cond_br %24, %9 {handshake.bb = 2 : ui32, handshake.name = "cond_br27"} : <i1>, <i32>
    %7 = constant %arg6 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant18", value = false} : <>, <i1>
    %8 = merge %7, %24 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge9"} : <i1>
    %9 = mux %8 [%4, %trueResult_7] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %10 = mux %8 [%3, %trueResult_5] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux14"} : <i1>, <>
    %11 = mux %8 [%5, %trueResult] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux15"} : <i1>, <i32>
    %12 = mux %8 [%6, %trueResult_3] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux16"} : <i1>, <i32>
    %13 = constant %10 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 20 : i32} : <>, <i32>
    %14 = constant %10 {handshake.bb = 2 : ui32, handshake.name = "constant9", value = 1 : i32} : <>, <i32>
    %15 = constant %10 {handshake.bb = 2 : ui32, handshake.name = "constant10", value = 4 : i32} : <>, <i32>
    %16 = constant %10 {handshake.bb = 2 : ui32, handshake.name = "constant11", value = 2 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%12] %outputs {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i32>, <i32>
    %17 = shli %9, %16 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %18 = shli %9, %15 {handshake.bb = 2 : ui32, handshake.name = "shli1"} : <i32>
    %19 = addi %17, %18 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i32>
    %20 = addi %12, %19 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %addressResult_9, %dataResult_10 = load[%20] %outputs_1 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i32>, <i32>
    %21 = muli %dataResult, %dataResult_10 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %22 = addi %11, %21 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %23 = addi %12, %14 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i32>
    %24 = cmpi ult, %23, %13 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_11, %falseResult_12 = cond_br %29, %falseResult {handshake.bb = 3 : ui32, handshake.name = "cond_br28"} : <i1>, <i32>
    %trueResult_13, %falseResult_14 = cond_br %29, %28 {handshake.bb = 3 : ui32, handshake.name = "cond_br29"} : <i1>, <i32>
    %trueResult_15, %falseResult_16 = cond_br %29, %3 {handshake.bb = 3 : ui32, handshake.name = "cond_br30"} : <i1>, <>
    %25 = constant %arg6 {handshake.bb = 3 : ui32, handshake.name = "constant1", value = 1 : i32} : <>, <i32>
    %26 = constant %3 {handshake.bb = 3 : ui32, handshake.name = "constant12", value = 20 : i32} : <>, <i32>
    %27 = constant %3 {handshake.bb = 3 : ui32, handshake.name = "constant13", value = 1 : i32} : <>, <i32>
    %addressResult_17, %dataResult_18 = store[%4] %falseResult {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i32>, <i32>
    %28 = addi %4, %27 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i32>
    %29 = cmpi ult, %28, %26 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %falseResult_12, %memEnd_2, %memEnd_0, %memEnd, %arg6 : <i32>, <>, <>, <>, <>
  }
}


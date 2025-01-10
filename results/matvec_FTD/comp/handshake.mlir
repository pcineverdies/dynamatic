module {
  handshake.func @matvec(%arg0: memref<400xi32>, %arg1: memref<20xi32>, %arg2: memref<20xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["m", "v", "out", "m_start", "v_start", "out_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][1,2][3,1,4,cmpi1]", resNames = ["out0", "m_end", "v_end", "out_end", "end"]} {
    %memEnd = mem_controller[%arg2 : memref<20xi32>] %arg5 (%27, %addressResult_23, %dataResult_24) %result_27 {connectedBlocks = [3 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<20xi32>] %arg4 (%addressResult) %result_27 {connectedBlocks = [2 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<400xi32>] %arg3 (%addressResult_11) %result_27 {connectedBlocks = [2 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0 = constant %arg6 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %1 = br %arg6 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <>
    %2 = constant %arg6 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %3 = merge %2, %31 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %4 = mux %3 [%arg6, %trueResult_19] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %result, %index = control_merge %1, %trueResult_25  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %5 = mux %3 [%0, %trueResult_17] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %6 = constant %4 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %7 = constant %4 {handshake.bb = 1 : ui32, handshake.name = "constant7", value = 0 : i32} : <>, <i32>
    %8 = br %result {handshake.bb = 1 : ui32, handshake.name = "br3"} : <>
    %trueResult, %falseResult = cond_br %26, %24 {handshake.bb = 2 : ui32, handshake.name = "cond_br24"} : <i1>, <i32>
    %trueResult_3, %falseResult_4 = cond_br %26, %25 {handshake.bb = 2 : ui32, handshake.name = "cond_br25"} : <i1>, <i32>
    %trueResult_5, %falseResult_6 = cond_br %26, %12 {handshake.bb = 2 : ui32, handshake.name = "cond_br26"} : <i1>, <>
    %trueResult_7, %falseResult_8 = cond_br %26, %11 {handshake.bb = 2 : ui32, handshake.name = "cond_br27"} : <i1>, <i32>
    %9 = constant %arg6 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant18", value = false} : <>, <i1>
    %10 = merge %9, %26 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge9"} : <i1>
    %11 = mux %10 [%5, %trueResult_7] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %12 = mux %10 [%4, %trueResult_5] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux14"} : <i1>, <>
    %result_9, %index_10 = control_merge %8, %trueResult_13  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %13 = mux %10 [%6, %trueResult] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux15"} : <i1>, <i32>
    %14 = mux %10 [%7, %trueResult_3] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux16"} : <i1>, <i32>
    %15 = constant %12 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 20 : i32} : <>, <i32>
    %16 = constant %12 {handshake.bb = 2 : ui32, handshake.name = "constant9", value = 1 : i32} : <>, <i32>
    %17 = constant %12 {handshake.bb = 2 : ui32, handshake.name = "constant10", value = 4 : i32} : <>, <i32>
    %18 = constant %12 {handshake.bb = 2 : ui32, handshake.name = "constant11", value = 2 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%14] %outputs {handshake.bb = 2 : ui32, handshake.name = "load0"} : <i32>, <i32>
    %19 = shli %11, %18 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %20 = shli %11, %17 {handshake.bb = 2 : ui32, handshake.name = "shli1"} : <i32>
    %21 = addi %19, %20 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i32>
    %22 = addi %14, %21 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %addressResult_11, %dataResult_12 = load[%22] %outputs_1 {handshake.bb = 2 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %23 = muli %dataResult, %dataResult_12 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %24 = addi %13, %23 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %25 = addi %14, %16 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i32>
    %26 = cmpi ult, %25, %15 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_13, %falseResult_14 = cond_br %26, %result_9 {handshake.bb = 2 : ui32, handshake.name = "cond_br12"} : <i1>, <>
    %trueResult_15, %falseResult_16 = cond_br %31, %falseResult {handshake.bb = 3 : ui32, handshake.name = "cond_br28"} : <i1>, <i32>
    %trueResult_17, %falseResult_18 = cond_br %31, %30 {handshake.bb = 3 : ui32, handshake.name = "cond_br29"} : <i1>, <i32>
    %trueResult_19, %falseResult_20 = cond_br %31, %4 {handshake.bb = 3 : ui32, handshake.name = "cond_br30"} : <i1>, <>
    %27 = constant %result_21 {handshake.bb = 3 : ui32, handshake.name = "constant26", value = 1 : i32} : <>, <i32>
    %result_21, %index_22 = control_merge %falseResult_14  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %28 = constant %4 {handshake.bb = 3 : ui32, handshake.name = "constant12", value = 20 : i32} : <>, <i32>
    %29 = constant %4 {handshake.bb = 3 : ui32, handshake.name = "constant13", value = 1 : i32} : <>, <i32>
    %addressResult_23, %dataResult_24 = store[%5] %falseResult {handshake.bb = 3 : ui32, handshake.name = "store0"} : <i32>, <i32>
    %30 = addi %5, %29 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i32>
    %31 = cmpi ult, %30, %28 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_25, %falseResult_26 = cond_br %31, %result_21 {handshake.bb = 3 : ui32, handshake.name = "cond_br23"} : <i1>, <>
    %result_27, %index_28 = control_merge %falseResult_26  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %falseResult_16, %memEnd_2, %memEnd_0, %memEnd, %arg6 : <i32>, <>, <>, <>, <>
  }
}


module {
  handshake.func @fir(%arg0: memref<1000xi32>, %arg1: memref<1000xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["di", "idx", "di_start", "idx_start", "start"], cfg.edges = "[0,1][1,1,2,cmpi0]", resNames = ["out0", "di_end", "idx_end", "end"]} {
    %outputs, %memEnd = mem_controller[%arg1 : memref<1000xi32>] %arg3 (%addressResult) %result_10 {connectedBlocks = [1 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg0 : memref<1000xi32>] %arg2 (%addressResult_6) %result_10 {connectedBlocks = [1 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0 = constant %arg4 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %1 = constant %arg4 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %2 = br %arg4 {handshake.bb = 0 : ui32, handshake.name = "br1"} : <>
    %trueResult, %falseResult = cond_br %15, %14 {handshake.bb = 1 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    %trueResult_2, %falseResult_3 = cond_br %15, %13 {handshake.bb = 1 : ui32, handshake.name = "cond_br9"} : <i1>, <i32>
    %trueResult_4, %falseResult_5 = cond_br %15, %5 {handshake.bb = 1 : ui32, handshake.name = "cond_br10"} : <i1>, <>
    %3 = constant %arg4 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %4 = merge %3, %15 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %5 = mux %4 [%arg4, %trueResult_4] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %result, %index = control_merge %2, %trueResult_8  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %6 = mux %4 [%1, %trueResult_2] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %7 = mux %4 [%0, %trueResult] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %8 = constant %5 {handshake.bb = 1 : ui32, handshake.name = "constant5", value = 999 : i32} : <>, <i32>
    %9 = constant %5 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 1000 : i32} : <>, <i32>
    %10 = constant %5 {handshake.bb = 1 : ui32, handshake.name = "constant7", value = 1 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%7] %outputs {handshake.bb = 1 : ui32, handshake.name = "load0"} : <i32>, <i32>
    %11 = subi %8, %7 {handshake.bb = 1 : ui32, handshake.name = "subi0"} : <i32>
    %addressResult_6, %dataResult_7 = load[%11] %outputs_0 {handshake.bb = 1 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %12 = muli %dataResult, %dataResult_7 {handshake.bb = 1 : ui32, handshake.name = "muli0"} : <i32>
    %13 = addi %6, %12 {handshake.bb = 1 : ui32, handshake.name = "addi0"} : <i32>
    %14 = addi %7, %10 {handshake.bb = 1 : ui32, handshake.name = "addi2"} : <i32>
    %15 = cmpi ult, %14, %9 {handshake.bb = 1 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_8, %falseResult_9 = cond_br %15, %result {handshake.bb = 1 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %result_10, %index_11 = control_merge %falseResult_9  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    end {handshake.bb = 2 : ui32, handshake.name = "end0"} %falseResult_3, %memEnd_1, %memEnd, %arg4 : <i32>, <>, <>, <>
  }
}


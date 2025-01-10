module {
  handshake.func @fir(%arg0: memref<1000xi32>, %arg1: memref<1000xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["di", "idx", "di_start", "idx_start", "start"], cfg.edges = "[0,1][1,1,2,cmpi0]", resNames = ["out0", "di_end", "idx_end", "end"]} {
    %outputs, %memEnd = mem_controller[%arg1 : memref<1000xi32>] %arg3 (%addressResult) %arg4 {connectedBlocks = [1 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg0 : memref<1000xi32>] %arg2 (%addressResult_6) %arg4 {connectedBlocks = [1 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0 = constant %arg4 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %1 = constant %arg4 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %trueResult, %falseResult = cond_br %14, %13 {handshake.bb = 1 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    %trueResult_2, %falseResult_3 = cond_br %14, %12 {handshake.bb = 1 : ui32, handshake.name = "cond_br9"} : <i1>, <i32>
    %trueResult_4, %falseResult_5 = cond_br %14, %4 {handshake.bb = 1 : ui32, handshake.name = "cond_br10"} : <i1>, <>
    %2 = constant %arg4 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %3 = merge %2, %14 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %4 = mux %3 [%arg4, %trueResult_4] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %5 = mux %3 [%1, %trueResult_2] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %6 = mux %3 [%0, %trueResult] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %7 = constant %4 {handshake.bb = 1 : ui32, handshake.name = "constant5", value = 999 : i32} : <>, <i32>
    %8 = constant %4 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 1000 : i32} : <>, <i32>
    %9 = constant %4 {handshake.bb = 1 : ui32, handshake.name = "constant7", value = 1 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%6] %outputs {handshake.bb = 1 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i32>, <i32>
    %10 = subi %7, %6 {handshake.bb = 1 : ui32, handshake.name = "subi0"} : <i32>
    %addressResult_6, %dataResult_7 = load[%10] %outputs_0 {handshake.bb = 1 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i32>, <i32>
    %11 = muli %dataResult, %dataResult_7 {handshake.bb = 1 : ui32, handshake.name = "muli0"} : <i32>
    %12 = addi %5, %11 {handshake.bb = 1 : ui32, handshake.name = "addi0"} : <i32>
    %13 = addi %6, %9 {handshake.bb = 1 : ui32, handshake.name = "addi2"} : <i32>
    %14 = cmpi ult, %13, %8 {handshake.bb = 1 : ui32, handshake.name = "cmpi0"} : <i32>
    end {handshake.bb = 2 : ui32, handshake.name = "end0"} %falseResult_3, %memEnd_1, %memEnd, %arg4 : <i32>, <>, <>, <>
  }
}


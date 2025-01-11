module {
  handshake.func @fir(%arg0: memref<1000xi32>, %arg1: memref<1000xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["di", "idx", "di_start", "idx_start", "start"], cfg.edges = "[0,1][1,1,2,cmpi0]", resNames = ["out0", "di_end", "idx_end", "end"]} {
    %outputs, %memEnd = mem_controller[%arg1 : memref<1000xi32>] %arg3 (%addressResult) %arg4 {connectedBlocks = [1 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg0 : memref<1000xi32>] %arg2 (%addressResult_4) %arg4 {connectedBlocks = [1 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %1 = constant %0 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %2 = source {handshake.bb = 0 : ui32, handshake.name = "source1"} : <>
    %3 = constant %2 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %trueResult, %falseResult = cond_br %18, %17 {handshake.bb = 1 : ui32, handshake.name = "cond_br5"} : <i1>, <i32>
    %trueResult_2, %falseResult_3 = cond_br %18, %16 {handshake.bb = 1 : ui32, handshake.name = "cond_br6"} : <i1>, <i32>
    %4 = constant %arg4 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %5 = mux %6 [%3, %trueResult_2] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %6 = merge %4, %18 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %7 = mux %6 [%1, %trueResult] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %8 = source {handshake.bb = 1 : ui32, handshake.name = "source2"} : <>
    %9 = constant %8 {handshake.bb = 1 : ui32, handshake.name = "constant5", value = 999 : i32} : <>, <i32>
    %10 = source {handshake.bb = 1 : ui32, handshake.name = "source3"} : <>
    %11 = constant %10 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 1000 : i32} : <>, <i32>
    %12 = source {handshake.bb = 1 : ui32, handshake.name = "source4"} : <>
    %13 = constant %12 {handshake.bb = 1 : ui32, handshake.name = "constant7", value = 1 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%7] %outputs {handshake.bb = 1 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i32>, <i32>
    %14 = subi %9, %7 {handshake.bb = 1 : ui32, handshake.name = "subi0"} : <i32>
    %addressResult_4, %dataResult_5 = load[%14] %outputs_0 {handshake.bb = 1 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i32>, <i32>
    %15 = muli %dataResult, %dataResult_5 {handshake.bb = 1 : ui32, handshake.name = "muli0"} : <i32>
    %16 = addi %5, %15 {handshake.bb = 1 : ui32, handshake.name = "addi0"} : <i32>
    %17 = addi %7, %13 {handshake.bb = 1 : ui32, handshake.name = "addi2"} : <i32>
    %18 = cmpi ult, %17, %11 {handshake.bb = 1 : ui32, handshake.name = "cmpi0"} : <i32>
    end {handshake.bb = 2 : ui32, handshake.name = "end0"} %falseResult_3, %memEnd_1, %memEnd, %arg4 : <i32>, <>, <>, <>
  }
}


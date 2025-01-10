module {
  handshake.func @fir(%arg0: memref<1000xi32>, %arg1: memref<1000xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["di", "idx", "di_start", "idx_start", "start"], resNames = ["out0", "di_end", "idx_end", "end"]} {
    %outputs, %memEnd = mem_controller[%arg1 : memref<1000xi32>] %arg3 (%addressResult) %result_8 {connectedBlocks = [1 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg0 : memref<1000xi32>] %arg2 (%addressResult_2) %result_8 {connectedBlocks = [1 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0 = constant %arg4 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %1 = constant %arg4 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %2 = br %0 {handshake.bb = 0 : ui32, handshake.name = "br1"} : <i32>
    %3 = br %1 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <i32>
    %4 = br %arg4 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %5 = mux %index [%2, %trueResult] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %6 = mux %index [%3, %trueResult_4] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %result, %index = control_merge %4, %trueResult_6  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %7 = source {handshake.bb = 1 : ui32, handshake.name = "source0"} : <>
    %8 = constant %7 {handshake.bb = 1 : ui32, handshake.name = "constant5", value = 999 : i32} : <>, <i32>
    %9 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %10 = constant %9 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 1000 : i32} : <>, <i32>
    %11 = source {handshake.bb = 1 : ui32, handshake.name = "source2"} : <>
    %12 = constant %11 {handshake.bb = 1 : ui32, handshake.name = "constant7", value = 1 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%5] %outputs {handshake.bb = 1 : ui32, handshake.name = "load0"} : <i32>, <i32>
    %13 = subi %8, %5 {handshake.bb = 1 : ui32, handshake.name = "subi0"} : <i32>
    %addressResult_2, %dataResult_3 = load[%13] %outputs_0 {handshake.bb = 1 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %14 = muli %dataResult, %dataResult_3 {handshake.bb = 1 : ui32, handshake.name = "muli0"} : <i32>
    %15 = addi %6, %14 {handshake.bb = 1 : ui32, handshake.name = "addi0"} : <i32>
    %16 = addi %5, %12 {handshake.bb = 1 : ui32, handshake.name = "addi2"} : <i32>
    %17 = cmpi ult, %16, %10 {handshake.bb = 1 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult, %falseResult = cond_br %17, %16 {handshake.bb = 1 : ui32, handshake.name = "cond_br1"} : <i1>, <i32>
    %trueResult_4, %falseResult_5 = cond_br %17, %15 {handshake.bb = 1 : ui32, handshake.name = "cond_br2"} : <i1>, <i32>
    %trueResult_6, %falseResult_7 = cond_br %17, %result {handshake.bb = 1 : ui32, handshake.name = "cond_br3"} : <i1>, <>
    %18 = merge %falseResult_5 {handshake.bb = 2 : ui32, handshake.name = "merge0"} : <i32>
    %result_8, %index_9 = control_merge %falseResult_7  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    end {handshake.bb = 2 : ui32, handshake.name = "end0"} %18, %memEnd_1, %memEnd, %arg4 : <i32>, <>, <>, <>
  }
}


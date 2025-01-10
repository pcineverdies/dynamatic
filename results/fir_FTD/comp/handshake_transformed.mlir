module {
  handshake.func @fir(%arg0: memref<1000xi32>, %arg1: memref<1000xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["di", "idx", "di_start", "idx_start", "start"], cfg.edges = "[0,1][1,1,2,cmpi0]", resNames = ["out0", "di_end", "idx_end", "end"]} {
    %0:5 = fork [5] %arg4 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %outputs, %memEnd = mem_controller[%arg1 : memref<1000xi32>] %arg3 (%addressResult) %0#1 {connectedBlocks = [1 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg0 : memref<1000xi32>] %arg2 (%addressResult_6) %0#0 {connectedBlocks = [1 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %trueResult, %falseResult = cond_br %28#0, %26 {handshake.bb = 1 : ui32, handshake.name = "cond_br8"} : <i1>, <i11>
    sink %falseResult {handshake.name = "sink0"} : <i11>
    %trueResult_2, %falseResult_3 = cond_br %28#3, %23 {handshake.bb = 1 : ui32, handshake.name = "cond_br9"} : <i1>, <i32>
    %trueResult_4, %falseResult_5 = cond_br %28#2, %8#3 {handshake.bb = 1 : ui32, handshake.name = "cond_br10"} : <i1>, <>
    sink %falseResult_5 {handshake.name = "sink1"} : <>
    %1 = constant %0#4 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %2:3 = fork [3] %1 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %3 = extsi %2#0 {handshake.bb = 1 : ui32, handshake.name = "extsi5"} : <i1> to <i11>
    %4 = extsi %2#1 {handshake.bb = 1 : ui32, handshake.name = "extsi0"} : <i1> to <i32>
    %5 = merge %2#2, %28#1 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %6:3 = fork [3] %5 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %7 = mux %6#2 [%0#3, %trueResult_4] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %8:4 = fork [4] %7 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %9 = mux %6#1 [%4, %trueResult_2] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %10 = mux %6#0 [%3, %trueResult] {handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <i11>
    %11:3 = fork [3] %10 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i11>
    %12 = trunci %11#0 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i11> to <i10>
    %13 = extsi %11#2 {handshake.bb = 1 : ui32, handshake.name = "extsi6"} : <i11> to <i12>
    %14 = trunci %11#1 {handshake.bb = 1 : ui32, handshake.name = "trunci1"} : <i11> to <i10>
    %15 = constant %8#2 {handshake.bb = 1 : ui32, handshake.name = "constant1", value = 999 : i11} : <>, <i11>
    %16 = trunci %15 {handshake.bb = 1 : ui32, handshake.name = "trunci2"} : <i11> to <i10>
    %17 = constant %8#1 {handshake.bb = 1 : ui32, handshake.name = "constant4", value = 1000 : i11} : <>, <i11>
    %18 = extsi %17 {handshake.bb = 1 : ui32, handshake.name = "extsi7"} : <i11> to <i12>
    %19 = constant %8#0 {handshake.bb = 1 : ui32, handshake.name = "constant8", value = 1 : i2} : <>, <i2>
    %20 = extsi %19 {handshake.bb = 1 : ui32, handshake.name = "extsi8"} : <i2> to <i12>
    %addressResult, %dataResult = load[%14] %outputs {handshake.bb = 1 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i10>, <i32>
    %21 = subi %16, %12 {handshake.bb = 1 : ui32, handshake.name = "subi0"} : <i10>
    %addressResult_6, %dataResult_7 = load[%21] %outputs_0 {handshake.bb = 1 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i10>, <i32>
    %22 = muli %dataResult, %dataResult_7 {handshake.bb = 1 : ui32, handshake.name = "muli0"} : <i32>
    %23 = addi %9, %22 {handshake.bb = 1 : ui32, handshake.name = "addi0"} : <i32>
    %24 = addi %13, %20 {handshake.bb = 1 : ui32, handshake.name = "addi2"} : <i12>
    %25:2 = fork [2] %24 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i12>
    %26 = trunci %25#0 {handshake.bb = 1 : ui32, handshake.name = "trunci3"} : <i12> to <i11>
    %27 = cmpi ult, %25#1, %18 {handshake.bb = 1 : ui32, handshake.name = "cmpi0"} : <i12>
    %28:4 = fork [4] %27 {handshake.bb = 1 : ui32, handshake.name = "fork6"} : <i1>
    end {handshake.bb = 2 : ui32, handshake.name = "end0"} %falseResult_3, %memEnd_1, %memEnd, %0#2 : <i32>, <>, <>, <>
  }
}


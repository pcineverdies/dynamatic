module {
  handshake.func @fir(%arg0: memref<1000xi32>, %arg1: memref<1000xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["di", "idx", "di_start", "idx_start", "start"], cfg.edges = "[0,1][1,1,2,cmpi0]", resNames = ["out0", "di_end", "idx_end", "end"]} {
    %0:4 = fork [4] %arg4 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %outputs, %memEnd = mem_controller[%arg1 : memref<1000xi32>] %arg3 (%addressResult) %0#1 {connectedBlocks = [1 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg0 : memref<1000xi32>] %arg2 (%addressResult_4) %0#0 {connectedBlocks = [1 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %1 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %2 = constant %1 {handshake.bb = 0 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %3:2 = fork [2] %2 {handshake.bb = 0 : ui32, handshake.name = "fork1"} : <i1>
    %4 = extsi %3#0 {handshake.bb = 0 : ui32, handshake.name = "extsi5"} : <i1> to <i11>
    %5 = extsi %3#1 {handshake.bb = 0 : ui32, handshake.name = "extsi0"} : <i1> to <i32>
    %trueResult, %falseResult = cond_br %31#0, %29 {handshake.bb = 1 : ui32, handshake.name = "cond_br5"} : <i1>, <i11>
    sink %falseResult {handshake.name = "sink0"} : <i11>
    %trueResult_2, %falseResult_3 = cond_br %31#2, %26 {handshake.bb = 1 : ui32, handshake.name = "cond_br6"} : <i1>, <i32>
    %6 = constant %0#3 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %7 = mux %9#1 [%5, %trueResult_2] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %8 = merge %6, %31#1 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %9:2 = fork [2] %8 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %10 = mux %9#0 [%4, %trueResult] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i11>
    %11:3 = fork [3] %10 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <i11>
    %12 = trunci %11#0 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i11> to <i10>
    %13 = extsi %11#2 {handshake.bb = 1 : ui32, handshake.name = "extsi6"} : <i11> to <i12>
    %14 = trunci %11#1 {handshake.bb = 1 : ui32, handshake.name = "trunci1"} : <i11> to <i10>
    %15 = source {handshake.bb = 1 : ui32, handshake.name = "source2"} : <>
    %16 = constant %15 {handshake.bb = 1 : ui32, handshake.name = "constant4", value = 999 : i11} : <>, <i11>
    %17 = trunci %16 {handshake.bb = 1 : ui32, handshake.name = "trunci2"} : <i11> to <i10>
    %18 = source {handshake.bb = 1 : ui32, handshake.name = "source3"} : <>
    %19 = constant %18 {handshake.bb = 1 : ui32, handshake.name = "constant8", value = 1000 : i11} : <>, <i11>
    %20 = extsi %19 {handshake.bb = 1 : ui32, handshake.name = "extsi7"} : <i11> to <i12>
    %21 = source {handshake.bb = 1 : ui32, handshake.name = "source4"} : <>
    %22 = constant %21 {handshake.bb = 1 : ui32, handshake.name = "constant9", value = 1 : i2} : <>, <i2>
    %23 = extsi %22 {handshake.bb = 1 : ui32, handshake.name = "extsi8"} : <i2> to <i12>
    %addressResult, %dataResult = load[%14] %outputs {handshake.bb = 1 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i10>, <i32>
    %24 = subi %17, %12 {handshake.bb = 1 : ui32, handshake.name = "subi0"} : <i10>
    %addressResult_4, %dataResult_5 = load[%24] %outputs_0 {handshake.bb = 1 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i10>, <i32>
    %25 = muli %dataResult, %dataResult_5 {handshake.bb = 1 : ui32, handshake.name = "muli0"} : <i32>
    %26 = addi %7, %25 {handshake.bb = 1 : ui32, handshake.name = "addi0"} : <i32>
    %27 = addi %13, %23 {handshake.bb = 1 : ui32, handshake.name = "addi2"} : <i12>
    %28:2 = fork [2] %27 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i12>
    %29 = trunci %28#0 {handshake.bb = 1 : ui32, handshake.name = "trunci3"} : <i12> to <i11>
    %30 = cmpi ult, %28#1, %20 {handshake.bb = 1 : ui32, handshake.name = "cmpi0"} : <i12>
    %31:3 = fork [3] %30 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i1>
    end {handshake.bb = 2 : ui32, handshake.name = "end0"} %falseResult_3, %memEnd_1, %memEnd, %0#2 : <i32>, <>, <>, <>
  }
}


module {
  handshake.func @fir(%arg0: memref<1000xi32>, %arg1: memref<1000xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["di", "idx", "di_start", "idx_start", "start"], resNames = ["out0", "di_end", "idx_end", "end"]} {
    %0:3 = fork [3] %arg4 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %outputs, %memEnd = mem_controller[%arg1 : memref<1000xi32>] %arg3 (%addressResult) %33#1 {connectedBlocks = [1 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg0 : memref<1000xi32>] %arg2 (%addressResult_2) %33#0 {connectedBlocks = [1 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %1 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %2:2 = fork [2] %1 {handshake.bb = 0 : ui32, handshake.name = "fork1"} : <i1>
    %3 = br %2#0 {handshake.bb = 0 : ui32, handshake.name = "br1"} : <i1>
    %4 = extsi %3 {handshake.bb = 0 : ui32, handshake.name = "extsi5"} : <i1> to <i11>
    %5 = br %2#1 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <i1>
    %6 = extsi %5 {handshake.bb = 0 : ui32, handshake.name = "extsi6"} : <i1> to <i32>
    %7 = br %0#2 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %8 = mux %14#0 [%4, %trueResult] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i11>
    %9:3 = fork [3] %8 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i11>
    %10 = trunci %9#0 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i11> to <i10>
    %11 = extsi %9#2 {handshake.bb = 1 : ui32, handshake.name = "extsi7"} : <i11> to <i12>
    %12 = trunci %9#1 {handshake.bb = 1 : ui32, handshake.name = "trunci1"} : <i11> to <i10>
    %13 = mux %14#1 [%6, %trueResult_4] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %result, %index = control_merge %7, %trueResult_6  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %14:2 = fork [2] %index {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <i1>
    %15 = source {handshake.bb = 1 : ui32, handshake.name = "source0"} : <>
    %16 = constant %15 {handshake.bb = 1 : ui32, handshake.name = "constant1", value = 999 : i11} : <>, <i11>
    %17 = trunci %16 {handshake.bb = 1 : ui32, handshake.name = "trunci2"} : <i11> to <i10>
    %18 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %19 = constant %18 {handshake.bb = 1 : ui32, handshake.name = "constant4", value = 1000 : i11} : <>, <i11>
    %20 = extsi %19 {handshake.bb = 1 : ui32, handshake.name = "extsi8"} : <i11> to <i12>
    %21 = source {handshake.bb = 1 : ui32, handshake.name = "source2"} : <>
    %22 = constant %21 {handshake.bb = 1 : ui32, handshake.name = "constant8", value = 1 : i2} : <>, <i2>
    %23 = extsi %22 {handshake.bb = 1 : ui32, handshake.name = "extsi9"} : <i2> to <i12>
    %addressResult, %dataResult = load[%12] %outputs {handshake.bb = 1 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i10>, <i32>
    %24 = subi %17, %10 {handshake.bb = 1 : ui32, handshake.name = "subi0"} : <i10>
    %addressResult_2, %dataResult_3 = load[%24] %outputs_0 {handshake.bb = 1 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i10>, <i32>
    %25 = muli %dataResult, %dataResult_3 {handshake.bb = 1 : ui32, handshake.name = "muli0"} : <i32>
    %26 = addi %13, %25 {handshake.bb = 1 : ui32, handshake.name = "addi0"} : <i32>
    %27 = addi %11, %23 {handshake.bb = 1 : ui32, handshake.name = "addi2"} : <i12>
    %28:2 = fork [2] %27 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i12>
    %29 = trunci %28#0 {handshake.bb = 1 : ui32, handshake.name = "trunci3"} : <i12> to <i11>
    %30 = cmpi ult, %28#1, %20 {handshake.bb = 1 : ui32, handshake.name = "cmpi0"} : <i12>
    %31:3 = fork [3] %30 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i1>
    %trueResult, %falseResult = cond_br %31#0, %29 {handshake.bb = 1 : ui32, handshake.name = "cond_br1"} : <i1>, <i11>
    sink %falseResult {handshake.name = "sink0"} : <i11>
    %trueResult_4, %falseResult_5 = cond_br %31#1, %26 {handshake.bb = 1 : ui32, handshake.name = "cond_br2"} : <i1>, <i32>
    %trueResult_6, %falseResult_7 = cond_br %31#2, %result {handshake.bb = 1 : ui32, handshake.name = "cond_br3"} : <i1>, <>
    %32 = merge %falseResult_5 {handshake.bb = 2 : ui32, handshake.name = "merge0"} : <i32>
    %result_8, %index_9 = control_merge %falseResult_7  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    sink %index_9 {handshake.name = "sink1"} : <i1>
    %33:2 = fork [2] %result_8 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <>
    end {handshake.bb = 2 : ui32, handshake.name = "end0"} %32, %memEnd_1, %memEnd, %0#1 : <i32>, <>, <>, <>
  }
}


module {
  handshake.func @fir(%arg0: memref<1000xi32>, %arg1: memref<1000xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["di", "idx", "di_start", "idx_start", "start"], cfg.edges = "[0,1][1,1,2,cmpi0]", resNames = ["out0", "di_end", "idx_end", "end"]} {
    %0:4 = fork [4] %arg4 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %outputs, %memEnd = mem_controller[%arg1 : memref<1000xi32>] %arg3 (%addressResult) %0#1 {connectedBlocks = [1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller2"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg0 : memref<1000xi32>] %arg2 (%addressResult_4) %0#0 {connectedBlocks = [1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %3 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %4 = constant %3 {handshake.bb = 0 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %5:2 = fork [2] %4 {handshake.bb = 0 : ui32, handshake.name = "fork1"} : <i1>
    %7 = extsi %5#0 {handshake.bb = 0 : ui32, handshake.name = "extsi5"} : <i1> to <i11>
    %9 = extsi %5#1 {handshake.bb = 0 : ui32, handshake.name = "extsi0"} : <i1> to <i32>
    %trueResult, %falseResult = cond_br %51#0, %48 {handshake.bb = 1 : ui32, handshake.name = "cond_br5"} : <i1>, <i11>
    sink %falseResult {handshake.name = "sink0"} : <i11>
    %11 = buffer %51#2 {handshake.bb = 1 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_2, %falseResult_3 = cond_br %11, %44 {handshake.bb = 1 : ui32, handshake.name = "cond_br6"} : <i1>, <i32>
    %13 = constant %0#3 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %14 = buffer %19#1 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %15 = mux %14 [%9, %trueResult_2] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %17 = merge %13, %51#1 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %18 = buffer %17 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %19:2 = fork [2] %18 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <i1>
    %21 = mux %19#0 [%7, %trueResult] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i11>
    %22 = buffer %21 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i11>
    %23 = buffer %22 {handshake.bb = 1 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i11>
    %24:3 = fork [3] %23 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <i11>
    %26 = trunci %24#0 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i11> to <i10>
    %28 = extsi %24#2 {handshake.bb = 1 : ui32, handshake.name = "extsi6"} : <i11> to <i12>
    %30 = trunci %24#1 {handshake.bb = 1 : ui32, handshake.name = "trunci1"} : <i11> to <i10>
    %31 = source {handshake.bb = 1 : ui32, handshake.name = "source2"} : <>
    %32 = constant %31 {handshake.bb = 1 : ui32, handshake.name = "constant4", value = 999 : i11} : <>, <i11>
    %33 = trunci %32 {handshake.bb = 1 : ui32, handshake.name = "trunci2"} : <i11> to <i10>
    %34 = source {handshake.bb = 1 : ui32, handshake.name = "source3"} : <>
    %35 = constant %34 {handshake.bb = 1 : ui32, handshake.name = "constant8", value = 1000 : i11} : <>, <i11>
    %36 = extsi %35 {handshake.bb = 1 : ui32, handshake.name = "extsi7"} : <i11> to <i12>
    %37 = source {handshake.bb = 1 : ui32, handshake.name = "source4"} : <>
    %38 = constant %37 {handshake.bb = 1 : ui32, handshake.name = "constant9", value = 1 : i2} : <>, <i2>
    %39 = extsi %38 {handshake.bb = 1 : ui32, handshake.name = "extsi8"} : <i2> to <i12>
    %addressResult, %dataResult = load[%30] %outputs {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i10>, <i32>
    %40 = subi %33, %26 {handshake.bb = 1 : ui32, handshake.name = "subi0"} : <i10>
    %addressResult_4, %dataResult_5 = load[%40] %outputs_0 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i10>, <i32>
    %41 = muli %dataResult, %dataResult_5 {handshake.bb = 1 : ui32, handshake.name = "muli0"} : <i32>
    %42 = buffer %15 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %43 = buffer %42 {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %44 = addi %43, %41 {handshake.bb = 1 : ui32, handshake.name = "addi0"} : <i32>
    %45 = addi %28, %39 {handshake.bb = 1 : ui32, handshake.name = "addi2"} : <i12>
    %46:2 = fork [2] %45 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i12>
    %48 = trunci %46#0 {handshake.bb = 1 : ui32, handshake.name = "trunci3"} : <i12> to <i11>
    %50 = cmpi ult, %46#1, %36 {handshake.bb = 1 : ui32, handshake.name = "cmpi0"} : <i12>
    %51:3 = fork [3] %50 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i1>
    %52 = buffer %0#2 {handshake.bb = 2 : ui32, handshake.name = "buffer2", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    end {handshake.bb = 2 : ui32, handshake.name = "end0"} %falseResult_3, %memEnd_1, %memEnd, %52 : <i32>, <>, <>, <>
  }
}


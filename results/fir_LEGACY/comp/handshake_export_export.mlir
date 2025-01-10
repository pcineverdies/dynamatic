module {
  handshake.func @fir(%arg0: memref<1000xi32>, %arg1: memref<1000xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["di", "idx", "di_start", "idx_start", "start"], resNames = ["out0", "di_end", "idx_end", "end"]} {
    %0:3 = fork [3] %arg4 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %outputs, %memEnd = mem_controller[%arg1 : memref<1000xi32>] %arg3 (%addressResult) %53#1 {connectedBlocks = [1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller2"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg0 : memref<1000xi32>] %arg2 (%addressResult_2) %53#0 {connectedBlocks = [1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %4 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %5:2 = fork [2] %4 {handshake.bb = 0 : ui32, handshake.name = "fork1"} : <i1>
    %7 = extsi %5#0 {handshake.bb = 0 : ui32, handshake.name = "extsi5"} : <i1> to <i11>
    %9 = extsi %5#1 {handshake.bb = 0 : ui32, handshake.name = "extsi6"} : <i1> to <i32>
    %12 = mux %24#0 [%7, %trueResult] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i11>
    %13 = buffer %12 {handshake.bb = 1 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i11>
    %14 = buffer %13 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i11>
    %15:3 = fork [3] %14 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i11>
    %17 = trunci %15#0 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i11> to <i10>
    %19 = extsi %15#2 {handshake.bb = 1 : ui32, handshake.name = "extsi7"} : <i11> to <i12>
    %21 = trunci %15#1 {handshake.bb = 1 : ui32, handshake.name = "trunci1"} : <i11> to <i10>
    %22 = buffer %24#1 {handshake.bb = 1 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %23 = mux %22 [%9, %trueResult_4] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %result, %index = control_merge %0#2, %trueResult_6  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %24:2 = fork [2] %index {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <i1>
    %25 = source {handshake.bb = 1 : ui32, handshake.name = "source0"} : <>
    %26 = constant %25 {handshake.bb = 1 : ui32, handshake.name = "constant1", value = 999 : i11} : <>, <i11>
    %27 = trunci %26 {handshake.bb = 1 : ui32, handshake.name = "trunci2"} : <i11> to <i10>
    %28 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %29 = constant %28 {handshake.bb = 1 : ui32, handshake.name = "constant4", value = 1000 : i11} : <>, <i11>
    %30 = extsi %29 {handshake.bb = 1 : ui32, handshake.name = "extsi8"} : <i11> to <i12>
    %31 = source {handshake.bb = 1 : ui32, handshake.name = "source2"} : <>
    %32 = constant %31 {handshake.bb = 1 : ui32, handshake.name = "constant8", value = 1 : i2} : <>, <i2>
    %33 = extsi %32 {handshake.bb = 1 : ui32, handshake.name = "extsi9"} : <i2> to <i12>
    %addressResult, %dataResult = load[%21] %outputs {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i10>, <i32>
    %34 = subi %27, %17 {handshake.bb = 1 : ui32, handshake.name = "subi0"} : <i10>
    %addressResult_2, %dataResult_3 = load[%34] %outputs_0 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i10>, <i32>
    %35 = muli %dataResult, %dataResult_3 {handshake.bb = 1 : ui32, handshake.name = "muli0"} : <i32>
    %36 = buffer %23 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %37 = buffer %36 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %38 = addi %37, %35 {handshake.bb = 1 : ui32, handshake.name = "addi0"} : <i32>
    %39 = addi %19, %33 {handshake.bb = 1 : ui32, handshake.name = "addi2"} : <i12>
    %40:2 = fork [2] %39 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i12>
    %42 = trunci %40#0 {handshake.bb = 1 : ui32, handshake.name = "trunci3"} : <i12> to <i11>
    %44 = cmpi ult, %40#1, %30 {handshake.bb = 1 : ui32, handshake.name = "cmpi0"} : <i12>
    %45:3 = fork [3] %44 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i1>
    %trueResult, %falseResult = cond_br %45#0, %42 {handshake.bb = 1 : ui32, handshake.name = "cond_br1"} : <i1>, <i11>
    sink %falseResult {handshake.name = "sink0"} : <i11>
    %47 = buffer %45#1 {handshake.bb = 1 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_4, %falseResult_5 = cond_br %47, %38 {handshake.bb = 1 : ui32, handshake.name = "cond_br2"} : <i1>, <i32>
    %48 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %49 = buffer %48 {handshake.bb = 1 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_6, %falseResult_7 = cond_br %45#2, %49 {handshake.bb = 1 : ui32, handshake.name = "cond_br3"} : <i1>, <>
    %51 = buffer %falseResult_7 {handshake.bb = 2 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %52 = buffer %51 {handshake.bb = 2 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %53:2 = fork [2] %52 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <>
    %54 = buffer %0#1 {handshake.bb = 2 : ui32, handshake.name = "buffer1", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %55 = buffer %falseResult_5 {handshake.bb = 2 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %56 = buffer %55 {handshake.bb = 2 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    end {handshake.bb = 2 : ui32, handshake.name = "end0"} %56, %memEnd_1, %memEnd, %54 : <i32>, <>, <>, <>
  }
}


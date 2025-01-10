module {
  handshake.func @fir(%arg0: memref<1000xi32>, %arg1: memref<1000xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["di", "idx", "di_start", "idx_start", "start"], cfg.edges = "[0,1][1,1,2,cmpi0]", resNames = ["out0", "di_end", "idx_end", "end"]} {
    %0:5 = fork [5] %arg4 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1 = buffer %0#1 {handshake.name = "buffer1", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs, %memEnd = mem_controller[%arg1 : memref<1000xi32>] %arg3 (%addressResult) %1 {connectedBlocks = [1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller2"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %2 = buffer %0#0 {handshake.name = "buffer0", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs_0, %memEnd_1 = mem_controller[%arg0 : memref<1000xi32>] %arg2 (%addressResult_6) %2 {connectedBlocks = [1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %3 = buffer %58#0 {handshake.bb = 1 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult, %falseResult = cond_br %3, %55 {handshake.bb = 1 : ui32, handshake.name = "cond_br8"} : <i1>, <i11>
    sink %falseResult {handshake.name = "sink0"} : <i11>
    %4 = buffer %58#3 {handshake.bb = 1 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_2, %falseResult_3 = cond_br %4, %51 {handshake.bb = 1 : ui32, handshake.name = "cond_br9"} : <i1>, <i32>
    %5 = buffer %24#3 {handshake.bb = 1 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %6 = buffer %58#2 {handshake.bb = 1 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_4, %falseResult_5 = cond_br %6, %5 {handshake.bb = 1 : ui32, handshake.name = "cond_br10"} : <i1>, <>
    sink %falseResult_5 {handshake.name = "sink1"} : <>
    %7 = buffer %0#4 {handshake.bb = 1 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %8 = constant %7 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %9:3 = fork [3] %8 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %10 = buffer %9#0 {handshake.bb = 1 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %11 = extsi %10 {handshake.bb = 1 : ui32, handshake.name = "extsi5"} : <i1> to <i11>
    %12 = buffer %9#1 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %13 = extsi %12 {handshake.bb = 1 : ui32, handshake.name = "extsi0"} : <i1> to <i32>
    %14 = buffer %9#2 {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %15 = buffer %58#1 {handshake.bb = 1 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %16 = merge %14, %15 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %17 = buffer %16 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %18:3 = fork [3] %17 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <i1>
    %19 = buffer %0#3 {handshake.bb = 1 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %20 = buffer %18#2 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %21 = mux %20 [%19, %trueResult_4] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %22 = buffer %21 {handshake.bb = 1 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %23 = buffer %22 {handshake.bb = 1 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %24:4 = fork [4] %23 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %25 = buffer %18#1 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %26 = mux %25 [%13, %trueResult_2] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %27 = buffer %18#0 {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %28 = mux %27 [%11, %trueResult] {handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <i11>
    %29 = buffer %28 {handshake.bb = 1 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i11>
    %30 = buffer %29 {handshake.bb = 1 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i11>
    %31:3 = fork [3] %30 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i11>
    %32 = buffer %31#0 {handshake.bb = 1 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i11>
    %33 = trunci %32 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i11> to <i10>
    %34 = buffer %31#2 {handshake.bb = 1 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i11>
    %35 = extsi %34 {handshake.bb = 1 : ui32, handshake.name = "extsi6"} : <i11> to <i12>
    %36 = buffer %31#1 {handshake.bb = 1 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i11>
    %37 = trunci %36 {handshake.bb = 1 : ui32, handshake.name = "trunci1"} : <i11> to <i10>
    %38 = buffer %24#2 {handshake.bb = 1 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %39 = constant %38 {handshake.bb = 1 : ui32, handshake.name = "constant1", value = 999 : i11} : <>, <i11>
    %40 = trunci %39 {handshake.bb = 1 : ui32, handshake.name = "trunci2"} : <i11> to <i10>
    %41 = buffer %24#1 {handshake.bb = 1 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %42 = constant %41 {handshake.bb = 1 : ui32, handshake.name = "constant4", value = 1000 : i11} : <>, <i11>
    %43 = extsi %42 {handshake.bb = 1 : ui32, handshake.name = "extsi7"} : <i11> to <i12>
    %44 = buffer %24#0 {handshake.bb = 1 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %45 = constant %44 {handshake.bb = 1 : ui32, handshake.name = "constant8", value = 1 : i2} : <>, <i2>
    %46 = extsi %45 {handshake.bb = 1 : ui32, handshake.name = "extsi8"} : <i2> to <i12>
    %addressResult, %dataResult = load[%37] %outputs {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i10>, <i32>
    %47 = subi %40, %33 {handshake.bb = 1 : ui32, handshake.name = "subi0"} : <i10>
    %addressResult_6, %dataResult_7 = load[%47] %outputs_0 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i10>, <i32>
    %48 = muli %dataResult, %dataResult_7 {handshake.bb = 1 : ui32, handshake.name = "muli0"} : <i32>
    %49 = buffer %26 {handshake.bb = 1 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %50 = buffer %49 {handshake.bb = 1 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %51 = addi %50, %48 {handshake.bb = 1 : ui32, handshake.name = "addi0"} : <i32>
    %52 = addi %35, %46 {handshake.bb = 1 : ui32, handshake.name = "addi2"} : <i12>
    %53:2 = fork [2] %52 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i12>
    %54 = buffer %53#0 {handshake.bb = 1 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i12>
    %55 = trunci %54 {handshake.bb = 1 : ui32, handshake.name = "trunci3"} : <i12> to <i11>
    %56 = buffer %53#1 {handshake.bb = 1 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i12>
    %57 = cmpi ult, %56, %43 {handshake.bb = 1 : ui32, handshake.name = "cmpi0"} : <i12>
    %58:4 = fork [4] %57 {handshake.bb = 1 : ui32, handshake.name = "fork6"} : <i1>
    %59 = buffer %0#2 {handshake.bb = 2 : ui32, handshake.name = "buffer2", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    end {handshake.bb = 2 : ui32, handshake.name = "end0"} %falseResult_3, %memEnd_1, %memEnd, %59 : <i32>, <>, <>, <>
  }
}


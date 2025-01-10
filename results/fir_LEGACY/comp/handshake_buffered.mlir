module {
  handshake.func @fir(%arg0: memref<1000xi32>, %arg1: memref<1000xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["di", "idx", "di_start", "idx_start", "start"], resNames = ["out0", "di_end", "idx_end", "end"]} {
    %0:3 = fork [3] %arg4 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1 = buffer %57#1 {handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs, %memEnd = mem_controller[%arg1 : memref<1000xi32>] %arg3 (%addressResult) %1 {connectedBlocks = [1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller2"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %2 = buffer %57#0 {handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs_0, %memEnd_1 = mem_controller[%arg0 : memref<1000xi32>] %arg2 (%addressResult_2) %2 {connectedBlocks = [1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %3 = buffer %0#0 {handshake.bb = 0 : ui32, handshake.name = "buffer0", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %4 = constant %3 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %5:2 = fork [2] %4 {handshake.bb = 0 : ui32, handshake.name = "fork1"} : <i1>
    %6 = buffer %5#0 {handshake.bb = 0 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %7 = br %6 {handshake.bb = 0 : ui32, handshake.name = "br1"} : <i1>
    %8 = extsi %7 {handshake.bb = 0 : ui32, handshake.name = "extsi5"} : <i1> to <i11>
    %9 = buffer %5#1 {handshake.bb = 0 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %10 = br %9 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <i1>
    %11 = extsi %10 {handshake.bb = 0 : ui32, handshake.name = "extsi6"} : <i1> to <i32>
    %12 = buffer %0#2 {handshake.bb = 0 : ui32, handshake.name = "buffer2", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %13 = br %12 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %14 = buffer %27#0 {handshake.bb = 1 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %15 = mux %14 [%8, %trueResult] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i11>
    %16 = buffer %15 {handshake.bb = 1 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i11>
    %17 = buffer %16 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i11>
    %18:3 = fork [3] %17 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i11>
    %19 = buffer %18#0 {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i11>
    %20 = trunci %19 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i11> to <i10>
    %21 = buffer %18#2 {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i11>
    %22 = extsi %21 {handshake.bb = 1 : ui32, handshake.name = "extsi7"} : <i11> to <i12>
    %23 = buffer %18#1 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i11>
    %24 = trunci %23 {handshake.bb = 1 : ui32, handshake.name = "trunci1"} : <i11> to <i10>
    %25 = buffer %27#1 {handshake.bb = 1 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %26 = mux %25 [%11, %trueResult_4] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %result, %index = control_merge %13, %trueResult_6  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %27:2 = fork [2] %index {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <i1>
    %28 = source {handshake.bb = 1 : ui32, handshake.name = "source0"} : <>
    %29 = constant %28 {handshake.bb = 1 : ui32, handshake.name = "constant1", value = 999 : i11} : <>, <i11>
    %30 = trunci %29 {handshake.bb = 1 : ui32, handshake.name = "trunci2"} : <i11> to <i10>
    %31 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %32 = constant %31 {handshake.bb = 1 : ui32, handshake.name = "constant4", value = 1000 : i11} : <>, <i11>
    %33 = extsi %32 {handshake.bb = 1 : ui32, handshake.name = "extsi8"} : <i11> to <i12>
    %34 = source {handshake.bb = 1 : ui32, handshake.name = "source2"} : <>
    %35 = constant %34 {handshake.bb = 1 : ui32, handshake.name = "constant8", value = 1 : i2} : <>, <i2>
    %36 = extsi %35 {handshake.bb = 1 : ui32, handshake.name = "extsi9"} : <i2> to <i12>
    %addressResult, %dataResult = load[%24] %outputs {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i10>, <i32>
    %37 = subi %30, %20 {handshake.bb = 1 : ui32, handshake.name = "subi0"} : <i10>
    %addressResult_2, %dataResult_3 = load[%37] %outputs_0 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i10>, <i32>
    %38 = muli %dataResult, %dataResult_3 {handshake.bb = 1 : ui32, handshake.name = "muli0"} : <i32>
    %39 = buffer %26 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %40 = buffer %39 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %41 = addi %40, %38 {handshake.bb = 1 : ui32, handshake.name = "addi0"} : <i32>
    %42 = addi %22, %36 {handshake.bb = 1 : ui32, handshake.name = "addi2"} : <i12>
    %43:2 = fork [2] %42 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i12>
    %44 = buffer %43#0 {handshake.bb = 1 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i12>
    %45 = trunci %44 {handshake.bb = 1 : ui32, handshake.name = "trunci3"} : <i12> to <i11>
    %46 = buffer %43#1 {handshake.bb = 1 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i12>
    %47 = cmpi ult, %46, %33 {handshake.bb = 1 : ui32, handshake.name = "cmpi0"} : <i12>
    %48:3 = fork [3] %47 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i1>
    %49 = buffer %48#0 {handshake.bb = 1 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult, %falseResult = cond_br %49, %45 {handshake.bb = 1 : ui32, handshake.name = "cond_br1"} : <i1>, <i11>
    sink %falseResult {handshake.name = "sink0"} : <i11>
    %50 = buffer %48#1 {handshake.bb = 1 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_4, %falseResult_5 = cond_br %50, %41 {handshake.bb = 1 : ui32, handshake.name = "cond_br2"} : <i1>, <i32>
    %51 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %52 = buffer %51 {handshake.bb = 1 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %53 = buffer %48#2 {handshake.bb = 1 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_6, %falseResult_7 = cond_br %53, %52 {handshake.bb = 1 : ui32, handshake.name = "cond_br3"} : <i1>, <>
    %54 = merge %falseResult_5 {handshake.bb = 2 : ui32, handshake.name = "merge0"} : <i32>
    %result_8, %index_9 = control_merge %falseResult_7  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    sink %index_9 {handshake.name = "sink1"} : <i1>
    %55 = buffer %result_8 {handshake.bb = 2 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %56 = buffer %55 {handshake.bb = 2 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %57:2 = fork [2] %56 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <>
    %58 = buffer %0#1 {handshake.bb = 2 : ui32, handshake.name = "buffer1", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %59 = buffer %54 {handshake.bb = 2 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %60 = buffer %59 {handshake.bb = 2 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    end {handshake.bb = 2 : ui32, handshake.name = "end0"} %60, %memEnd_1, %memEnd, %58 : <i32>, <>, <>, <>
  }
}


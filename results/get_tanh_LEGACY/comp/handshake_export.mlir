module {
  handshake.func @get_tanh(%arg0: memref<1000xf32>, %arg1: memref<1000xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "addr", "A_start", "addr_start", "start"], resNames = ["A_end", "addr_end", "end"]} {
    %0:3 = fork [3] %arg4 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %outputs, %memEnd = mem_controller[%arg1 : memref<1000xi32>] %arg3 (%addressResult) %100#1 {connectedBlocks = [1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller1"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %3:2 = lsq[%arg0 : memref<1000xf32>] (%arg2, %16#0, %addressResult_0, %77#0, %addressResult_12, %dataResult_13, %100#0)  {groupSizes = [1 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq1"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i10>, !handshake.control<>, !handshake.channel<i10>, !handshake.channel<f32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.control<>)
    %5 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %6 = extsi %5 {handshake.bb = 0 : ui32, handshake.name = "extsi3"} : <i1> to <i11>
    %8 = mux %index [%6, %trueResult_14] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i11>
    %9 = buffer %8 {handshake.bb = 1 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i11>
    %10 = buffer %9 {handshake.bb = 1 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i11>
    %11:2 = fork [2] %10 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i11>
    %13 = trunci %11#0 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i11> to <i10>
    %result, %index = control_merge %0#2, %trueResult_16  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %14 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %15 = buffer %14 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %16:3 = lazy_fork [3] %15 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork0"} : <>
    %17 = buffer %16#2 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %18 = fork [1] %17 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <>
    %20 = constant %18 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 1.000000e+00 : f32} : <>, <f32>
    %21:2 = fork [2] %20 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <f32>
    %addressResult, %dataResult = load[%13] %outputs {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i10>, <i32>
    %22:2 = fork [2] %dataResult {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i32>
    %24 = trunci %22#0 {handshake.bb = 1 : ui32, handshake.name = "trunci1"} : <i32> to <i10>
    %26 = trunci %22#1 {handshake.bb = 1 : ui32, handshake.name = "trunci2"} : <i32> to <i10>
    %addressResult_0, %dataResult_1 = load[%26] %3#0 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (0)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i10>, <f32>
    %27:2 = fork [2] %dataResult_1 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <f32>
    %30 = cmpf oge, %27#0, %21#1 {handshake.bb = 1 : ui32, handshake.name = "cmpf0"} : <f32>
    %31:5 = fork [5] %30 {handshake.bb = 1 : ui32, handshake.name = "fork6"} : <i1>
    %trueResult, %falseResult = cond_br %31#4, %21#0 {handshake.bb = 1 : ui32, handshake.name = "cond_br2"} : <i1>, <f32>
    sink %falseResult {handshake.name = "sink0"} : <f32>
    %trueResult_2, %falseResult_3 = cond_br %31#1, %11#1 {handshake.bb = 1 : ui32, handshake.name = "cond_br3"} : <i1>, <i11>
    %trueResult_4, %falseResult_5 = cond_br %31#0, %24 {handshake.bb = 1 : ui32, handshake.name = "cond_br4"} : <i1>, <i10>
    %37 = buffer %16#1 {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %trueResult_6, %falseResult_7 = cond_br %31#3, %37 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br5"} : <i1>, <>
    %trueResult_8, %falseResult_9 = cond_br %31#2, %27#1 {handshake.bb = 1 : ui32, handshake.name = "cond_br6"} : <i1>, <f32>
    sink %trueResult_8 {handshake.name = "sink1"} : <f32>
    %41 = buffer %falseResult_9 {handshake.bb = 2 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <f32>
    %42 = buffer %41 {handshake.bb = 2 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %43:5 = fork [5] %42 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <f32>
    %44 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %45 = constant %44 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 3.70476198 : f32} : <>, <f32>
    %46 = source {handshake.bb = 2 : ui32, handshake.name = "source1"} : <>
    %47 = constant %46 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 19.5238094 : f32} : <>, <f32>
    %50 = mulf %43#3, %43#4 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf0"} : <f32>
    %51 = addf %50, %47 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf0"} : <f32>
    %53 = mulf %51, %43#2 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf1"} : <f32>
    %55 = mulf %53, %43#1 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf2"} : <f32>
    %56 = addf %55, %45 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf1"} : <f32>
    %58 = mulf %56, %43#0 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf3"} : <f32>
    %59 = buffer %falseResult_3 {handshake.bb = 2 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i11>
    %60 = buffer %59 {handshake.bb = 2 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i11>
    %61 = buffer %falseResult_5 {handshake.bb = 2 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i10>
    %62 = buffer %61 {handshake.bb = 2 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i10>
    %63 = buffer %falseResult_7 {handshake.bb = 2 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %64 = buffer %63 {handshake.bb = 2 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %66 = mux %74#2 [%trueResult, %58] {handshake.bb = 3 : ui32, handshake.name = "mux1"} : <i1>, <f32>
    %68 = mux %74#1 [%trueResult_2, %60] {handshake.bb = 3 : ui32, handshake.name = "mux2"} : <i1>, <i11>
    %69 = buffer %68 {handshake.bb = 3 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i11>
    %70 = buffer %69 {handshake.bb = 3 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i11>
    %71 = extsi %70 {handshake.bb = 3 : ui32, handshake.name = "extsi4"} : <i11> to <i12>
    %73 = mux %74#0 [%trueResult_4, %62] {handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i10>
    %result_10, %index_11 = control_merge %trueResult_6, %64  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %74:3 = fork [3] %index_11 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i1>
    %75 = buffer %result_10 {handshake.bb = 3 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %76 = buffer %75 {handshake.bb = 3 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %77:2 = lazy_fork [2] %76 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork1"} : <>
    %78 = source {handshake.bb = 3 : ui32, handshake.name = "source2"} : <>
    %79 = constant %78 {handshake.bb = 3 : ui32, handshake.name = "constant1", value = 1000 : i11} : <>, <i11>
    %80 = extsi %79 {handshake.bb = 3 : ui32, handshake.name = "extsi5"} : <i11> to <i12>
    %81 = source {handshake.bb = 3 : ui32, handshake.name = "source3"} : <>
    %82 = constant %81 {handshake.bb = 3 : ui32, handshake.name = "constant3", value = 1 : i2} : <>, <i2>
    %83 = extsi %82 {handshake.bb = 3 : ui32, handshake.name = "extsi6"} : <i2> to <i12>
    %84 = buffer %66 {handshake.bb = 3 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <f32>
    %85 = buffer %84 {handshake.bb = 3 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %86 = buffer %73 {handshake.bb = 3 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i10>
    %87 = buffer %86 {handshake.bb = 3 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i10>
    %addressResult_12, %dataResult_13 = store[%87] %85 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load3" (0)>, <"store1" (0)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i10>, <f32>
    %88 = addi %71, %83 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i12>
    %89:2 = fork [2] %88 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i12>
    %91 = trunci %89#0 {handshake.bb = 3 : ui32, handshake.name = "trunci3"} : <i12> to <i11>
    %93 = cmpi ult, %89#1, %80 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i12>
    %94:2 = fork [2] %93 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i1>
    %trueResult_14, %falseResult_15 = cond_br %94#0, %91 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <i11>
    sink %falseResult_15 {handshake.name = "sink3"} : <i11>
    %96 = buffer %77#1 {handshake.bb = 3 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %trueResult_16, %falseResult_17 = cond_br %94#1, %96 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br8"} : <i1>, <>
    %98 = buffer %falseResult_17 {handshake.bb = 4 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %99 = buffer %98 {handshake.bb = 4 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %100:2 = fork [2] %99 {handshake.bb = 4 : ui32, handshake.name = "fork11"} : <>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %3#1, %memEnd, %0#1 : <>, <>, <>
  }
}


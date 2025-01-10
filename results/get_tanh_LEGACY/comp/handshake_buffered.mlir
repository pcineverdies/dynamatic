module {
  handshake.func @get_tanh(%arg0: memref<1000xf32>, %arg1: memref<1000xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "addr", "A_start", "addr_start", "start"], resNames = ["A_end", "addr_end", "end"]} {
    %0:3 = fork [3] %arg4 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1 = buffer %109#1 {handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs, %memEnd = mem_controller[%arg1 : memref<1000xi32>] %arg3 (%addressResult) %1 {connectedBlocks = [1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller1"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %2 = buffer %109#0 {handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %3:2 = lsq[%arg0 : memref<1000xf32>] (%arg2, %18#0, %addressResult_0, %86#0, %addressResult_14, %dataResult_15, %2)  {groupSizes = [1 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq1"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i10>, !handshake.control<>, !handshake.channel<i10>, !handshake.channel<f32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.control<>)
    %4 = buffer %0#0 {handshake.bb = 0 : ui32, handshake.name = "buffer0", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %5 = constant %4 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %6 = br %5 {handshake.bb = 0 : ui32, handshake.name = "br1"} : <i1>
    %7 = extsi %6 {handshake.bb = 0 : ui32, handshake.name = "extsi3"} : <i1> to <i11>
    %8 = buffer %0#2 {handshake.bb = 0 : ui32, handshake.name = "buffer2", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %9 = br %8 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %10 = mux %index [%7, %trueResult_16] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i11>
    %11 = buffer %10 {handshake.bb = 1 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i11>
    %12 = buffer %11 {handshake.bb = 1 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i11>
    %13:2 = fork [2] %12 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i11>
    %14 = buffer %13#0 {handshake.bb = 1 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i11>
    %15 = trunci %14 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i11> to <i10>
    %result, %index = control_merge %9, %trueResult_18  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %16 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %17 = buffer %16 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %18:3 = lazy_fork [3] %17 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork0"} : <>
    %19 = buffer %18#2 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %20 = fork [1] %19 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <>
    %21 = buffer %20 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %22 = constant %21 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 1.000000e+00 : f32} : <>, <f32>
    %23:2 = fork [2] %22 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <f32>
    %addressResult, %dataResult = load[%15] %outputs {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i10>, <i32>
    %24:2 = fork [2] %dataResult {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i32>
    %25 = buffer %24#0 {handshake.bb = 1 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %26 = trunci %25 {handshake.bb = 1 : ui32, handshake.name = "trunci1"} : <i32> to <i10>
    %27 = buffer %24#1 {handshake.bb = 1 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %28 = trunci %27 {handshake.bb = 1 : ui32, handshake.name = "trunci2"} : <i32> to <i10>
    %addressResult_0, %dataResult_1 = load[%28] %3#0 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (0)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i10>, <f32>
    %29:2 = fork [2] %dataResult_1 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <f32>
    %30 = buffer %23#1 {handshake.bb = 1 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %31 = buffer %29#0 {handshake.bb = 1 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %32 = cmpf oge, %31, %30 {handshake.bb = 1 : ui32, handshake.name = "cmpf0"} : <f32>
    %33:5 = fork [5] %32 {handshake.bb = 1 : ui32, handshake.name = "fork6"} : <i1>
    %34 = buffer %23#0 {handshake.bb = 1 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %35 = buffer %33#4 {handshake.bb = 1 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult, %falseResult = cond_br %35, %34 {handshake.bb = 1 : ui32, handshake.name = "cond_br2"} : <i1>, <f32>
    sink %falseResult {handshake.name = "sink0"} : <f32>
    %36 = buffer %13#1 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i11>
    %37 = buffer %33#1 {handshake.bb = 1 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_2, %falseResult_3 = cond_br %37, %36 {handshake.bb = 1 : ui32, handshake.name = "cond_br3"} : <i1>, <i11>
    %38 = buffer %33#0 {handshake.bb = 1 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_4, %falseResult_5 = cond_br %38, %26 {handshake.bb = 1 : ui32, handshake.name = "cond_br4"} : <i1>, <i10>
    %39 = buffer %18#1 {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %40 = buffer %33#3 {handshake.bb = 1 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_6, %falseResult_7 = cond_br %40, %39 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br5"} : <i1>, <>
    %41 = buffer %29#1 {handshake.bb = 1 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %42 = buffer %33#2 {handshake.bb = 1 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_8, %falseResult_9 = cond_br %42, %41 {handshake.bb = 1 : ui32, handshake.name = "cond_br6"} : <i1>, <f32>
    sink %trueResult_8 {handshake.name = "sink1"} : <f32>
    %43 = merge %falseResult_3 {handshake.bb = 2 : ui32, handshake.name = "merge0"} : <i11>
    %44 = merge %falseResult_5 {handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i10>
    %45 = merge %falseResult_9 {handshake.bb = 2 : ui32, handshake.name = "merge2"} : <f32>
    %46 = buffer %45 {handshake.bb = 2 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <f32>
    %47 = buffer %46 {handshake.bb = 2 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %48:5 = fork [5] %47 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <f32>
    %result_10, %index_11 = control_merge %falseResult_7  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    sink %index_11 {handshake.name = "sink2"} : <i1>
    %49 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %50 = constant %49 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 3.70476198 : f32} : <>, <f32>
    %51 = source {handshake.bb = 2 : ui32, handshake.name = "source1"} : <>
    %52 = constant %51 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 19.5238094 : f32} : <>, <f32>
    %53 = buffer %48#3 {handshake.bb = 2 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %54 = buffer %48#4 {handshake.bb = 2 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %55 = mulf %53, %54 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf0"} : <f32>
    %56 = addf %55, %52 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf0"} : <f32>
    %57 = buffer %48#2 {handshake.bb = 2 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %58 = mulf %56, %57 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf1"} : <f32>
    %59 = buffer %48#1 {handshake.bb = 2 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %60 = mulf %58, %59 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf2"} : <f32>
    %61 = addf %60, %50 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf1"} : <f32>
    %62 = buffer %48#0 {handshake.bb = 2 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %63 = mulf %61, %62 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf3"} : <f32>
    %64 = br %63 {handshake.bb = 2 : ui32, handshake.name = "br4"} : <f32>
    %65 = buffer %43 {handshake.bb = 2 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i11>
    %66 = buffer %65 {handshake.bb = 2 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i11>
    %67 = br %66 {handshake.bb = 2 : ui32, handshake.name = "br5"} : <i11>
    %68 = buffer %44 {handshake.bb = 2 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i10>
    %69 = buffer %68 {handshake.bb = 2 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i10>
    %70 = br %69 {handshake.bb = 2 : ui32, handshake.name = "br6"} : <i10>
    %71 = buffer %result_10 {handshake.bb = 2 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %72 = buffer %71 {handshake.bb = 2 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %73 = br %72 {handshake.bb = 2 : ui32, handshake.name = "br7"} : <>
    %74 = buffer %83#2 {handshake.bb = 3 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %75 = mux %74 [%trueResult, %64] {handshake.bb = 3 : ui32, handshake.name = "mux1"} : <i1>, <f32>
    %76 = buffer %83#1 {handshake.bb = 3 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %77 = mux %76 [%trueResult_2, %67] {handshake.bb = 3 : ui32, handshake.name = "mux2"} : <i1>, <i11>
    %78 = buffer %77 {handshake.bb = 3 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i11>
    %79 = buffer %78 {handshake.bb = 3 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i11>
    %80 = extsi %79 {handshake.bb = 3 : ui32, handshake.name = "extsi4"} : <i11> to <i12>
    %81 = buffer %83#0 {handshake.bb = 3 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %82 = mux %81 [%trueResult_4, %70] {handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i10>
    %result_12, %index_13 = control_merge %trueResult_6, %73  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %83:3 = fork [3] %index_13 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i1>
    %84 = buffer %result_12 {handshake.bb = 3 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %85 = buffer %84 {handshake.bb = 3 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %86:2 = lazy_fork [2] %85 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork1"} : <>
    %87 = source {handshake.bb = 3 : ui32, handshake.name = "source2"} : <>
    %88 = constant %87 {handshake.bb = 3 : ui32, handshake.name = "constant1", value = 1000 : i11} : <>, <i11>
    %89 = extsi %88 {handshake.bb = 3 : ui32, handshake.name = "extsi5"} : <i11> to <i12>
    %90 = source {handshake.bb = 3 : ui32, handshake.name = "source3"} : <>
    %91 = constant %90 {handshake.bb = 3 : ui32, handshake.name = "constant3", value = 1 : i2} : <>, <i2>
    %92 = extsi %91 {handshake.bb = 3 : ui32, handshake.name = "extsi6"} : <i2> to <i12>
    %93 = buffer %75 {handshake.bb = 3 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <f32>
    %94 = buffer %93 {handshake.bb = 3 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %95 = buffer %82 {handshake.bb = 3 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i10>
    %96 = buffer %95 {handshake.bb = 3 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i10>
    %addressResult_14, %dataResult_15 = store[%96] %94 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load3" (0)>, <"store1" (0)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i10>, <f32>
    %97 = addi %80, %92 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i12>
    %98:2 = fork [2] %97 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i12>
    %99 = buffer %98#0 {handshake.bb = 3 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i12>
    %100 = trunci %99 {handshake.bb = 3 : ui32, handshake.name = "trunci3"} : <i12> to <i11>
    %101 = buffer %98#1 {handshake.bb = 3 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i12>
    %102 = cmpi ult, %101, %89 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i12>
    %103:2 = fork [2] %102 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i1>
    %104 = buffer %103#0 {handshake.bb = 3 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_16, %falseResult_17 = cond_br %104, %100 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <i11>
    sink %falseResult_17 {handshake.name = "sink3"} : <i11>
    %105 = buffer %86#1 {handshake.bb = 3 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %106 = buffer %103#1 {handshake.bb = 3 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_18, %falseResult_19 = cond_br %106, %105 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br8"} : <i1>, <>
    %result_20, %index_21 = control_merge %falseResult_19  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_21 {handshake.name = "sink4"} : <i1>
    %107 = buffer %result_20 {handshake.bb = 4 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %108 = buffer %107 {handshake.bb = 4 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %109:2 = fork [2] %108 {handshake.bb = 4 : ui32, handshake.name = "fork11"} : <>
    %110 = buffer %0#1 {handshake.bb = 4 : ui32, handshake.name = "buffer1", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %3#1, %memEnd, %110 : <>, <>, <>
  }
}


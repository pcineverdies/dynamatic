module {
  handshake.func @binary_search(%arg0: !handshake.channel<i32>, %arg1: memref<101xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["search", "a", "a_start", "start"], resNames = ["out0", "a_end", "end"]} {
    %0:5 = fork [5] %arg3 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1 = buffer %result_60 {handshake.name = "buffer161", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %2 = buffer %1 {handshake.name = "buffer162", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs:2, %memEnd = mem_controller[%arg1 : memref<101xi32>] %arg2 (%addressResult, %addressResult_42) %2 {connectedBlocks = [2 : i32, 6 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller1"} :    (!handshake.channel<i7>, !handshake.channel<i7>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %3 = buffer %0#0 {handshake.bb = 0 : ui32, handshake.name = "buffer0", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %4 = constant %3 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %5 = buffer %0#4 {handshake.bb = 0 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %6 = constant %5 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = true} : <>, <i1>
    %7 = buffer %0#3 {handshake.bb = 0 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %8 = constant %7 {handshake.bb = 0 : ui32, handshake.name = "constant5", value = -1 : i32} : <>, <i32>
    %9 = br %4 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <i1>
    %10 = extsi %9 {handshake.bb = 0 : ui32, handshake.name = "extsi7"} : <i1> to <i8>
    %11 = br %8 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <i32>
    %12 = br %6 {handshake.bb = 0 : ui32, handshake.name = "br6"} : <i1>
    %13 = br %arg0 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "br7"} : <i32>
    %14 = buffer %0#2 {handshake.bb = 0 : ui32, handshake.name = "buffer2", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %15 = br %14 {handshake.bb = 0 : ui32, handshake.name = "br8"} : <>
    %16 = buffer %27#0 {handshake.bb = 1 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %17 = mux %16 [%10, %trueResult_12] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i8>
    %18 = buffer %27#1 {handshake.bb = 1 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %19 = mux %18 [%11, %trueResult_14] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %20 = buffer %27#2 {handshake.bb = 1 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %21 = mux %20 [%12, %trueResult_16] {handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i1>
    %22 = buffer %21 {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %23 = buffer %22 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %24:5 = fork [5] %23 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %25 = buffer %27#3 {handshake.bb = 1 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %26 = mux %25 [%13, %trueResult_18] {handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %result, %index = control_merge %15, %trueResult_20  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %27:4 = fork [4] %index {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %28 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %29 = buffer %28 {handshake.bb = 1 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %30:2 = fork [2] %29 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %31 = buffer %30#1 {handshake.bb = 1 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %32 = constant %31 {handshake.bb = 1 : ui32, handshake.name = "constant7", value = false} : <>, <i1>
    %33 = buffer %24#4 {handshake.bb = 1 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %34 = buffer %26 {handshake.bb = 1 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %35 = buffer %34 {handshake.bb = 1 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult, %falseResult = cond_br %33, %35 {handshake.bb = 1 : ui32, handshake.name = "cond_br4"} : <i1>, <i32>
    %36 = buffer %17 {handshake.bb = 1 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i8>
    %37 = buffer %36 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %38 = buffer %24#0 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_0, %falseResult_1 = cond_br %38, %37 {handshake.bb = 1 : ui32, handshake.name = "cond_br5"} : <i1>, <i8>
    %39 = buffer %19 {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %40 = buffer %39 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %41 = buffer %24#3 {handshake.bb = 1 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_2, %falseResult_3 = cond_br %41, %40 {handshake.bb = 1 : ui32, handshake.name = "cond_br6"} : <i1>, <i32>
    %42 = buffer %24#2 {handshake.bb = 1 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %43 = buffer %30#0 {handshake.bb = 1 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_4, %falseResult_5 = cond_br %42, %43 {handshake.bb = 1 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %44 = buffer %24#1 {handshake.bb = 1 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_6, %falseResult_7 = cond_br %44, %32 {handshake.bb = 1 : ui32, handshake.name = "cond_br8"} : <i1>, <i1>
    sink %trueResult_6 {handshake.name = "sink0"} : <i1>
    %45 = merge %trueResult {handshake.bb = 2 : ui32, handshake.name = "merge0"} : <i32>
    %46 = buffer %45 {handshake.bb = 2 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %47 = buffer %46 {handshake.bb = 2 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %48:3 = fork [3] %47 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i32>
    %49 = merge %trueResult_0 {handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i8>
    %50 = buffer %49 {handshake.bb = 2 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i8>
    %51 = buffer %50 {handshake.bb = 2 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %52:3 = fork [3] %51 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i8>
    %53 = buffer %52#2 {handshake.bb = 2 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %54 = extsi %53 {handshake.bb = 2 : ui32, handshake.name = "extsi8"} : <i8> to <i32>
    %55 = buffer %52#0 {handshake.bb = 2 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %56 = trunci %55 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i8> to <i7>
    %57 = merge %trueResult_2 {handshake.bb = 2 : ui32, handshake.name = "merge2"} : <i32>
    %result_8, %index_9 = control_merge %trueResult_4  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    sink %index_9 {handshake.name = "sink1"} : <i1>
    %addressResult, %dataResult = load[%56] %outputs#0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i7>, <i32>
    %58:2 = fork [2] %dataResult {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i32>
    %59 = buffer %48#2 {handshake.bb = 2 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %60 = buffer %58#0 {handshake.bb = 2 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %61 = cmpi eq, %60, %59 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %62 = buffer %57 {handshake.bb = 2 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %63 = buffer %62 {handshake.bb = 2 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %64 = select %61[%54, %63] {handshake.bb = 2 : ui32, handshake.name = "select0"} : <i1>, <i32>
    %65 = buffer %48#1 {handshake.bb = 2 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %66 = buffer %58#1 {handshake.bb = 2 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %67 = cmpi ne, %66, %65 {handshake.bb = 2 : ui32, handshake.name = "cmpi1"} : <i32>
    %68 = br %64 {handshake.bb = 2 : ui32, handshake.name = "br9"} : <i32>
    %69 = br %67 {handshake.bb = 2 : ui32, handshake.name = "br10"} : <i1>
    %70 = buffer %48#0 {handshake.bb = 2 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %71 = br %70 {handshake.bb = 2 : ui32, handshake.name = "br11"} : <i32>
    %72 = buffer %52#1 {handshake.bb = 2 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %73 = br %72 {handshake.bb = 2 : ui32, handshake.name = "br12"} : <i8>
    %74 = buffer %result_8 {handshake.bb = 2 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %75 = buffer %74 {handshake.bb = 2 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %76 = br %75 {handshake.bb = 2 : ui32, handshake.name = "br13"} : <>
    %77 = buffer %88#1 {handshake.bb = 3 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %78 = mux %77 [%falseResult_3, %68] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %79 = buffer %88#2 {handshake.bb = 3 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %80 = mux %79 [%falseResult_7, %69] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i1>
    %81 = buffer %88#3 {handshake.bb = 3 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %82 = mux %81 [%falseResult, %71] {handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %83 = buffer %88#0 {handshake.bb = 3 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %84 = mux %83 [%falseResult_1, %73] {handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <i8>
    %85 = buffer %84 {handshake.bb = 3 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i8>
    %86 = buffer %85 {handshake.bb = 3 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %87 = extsi %86 {handshake.bb = 3 : ui32, handshake.name = "extsi9"} : <i8> to <i9>
    %result_10, %index_11 = control_merge %falseResult_5, %76  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %88:4 = fork [4] %index_11 {handshake.bb = 3 : ui32, handshake.name = "fork7"} : <i1>
    %89 = source {handshake.bb = 3 : ui32, handshake.name = "source0"} : <>
    %90 = constant %89 {handshake.bb = 3 : ui32, handshake.name = "constant1", value = 101 : i8} : <>, <i8>
    %91 = extsi %90 {handshake.bb = 3 : ui32, handshake.name = "extsi10"} : <i8> to <i9>
    %92 = source {handshake.bb = 3 : ui32, handshake.name = "source1"} : <>
    %93 = constant %92 {handshake.bb = 3 : ui32, handshake.name = "constant3", value = 2 : i3} : <>, <i3>
    %94 = extsi %93 {handshake.bb = 3 : ui32, handshake.name = "extsi11"} : <i3> to <i9>
    %95 = addi %87, %94 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i9>
    %96:2 = fork [2] %95 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i9>
    %97 = buffer %96#0 {handshake.bb = 3 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i9>
    %98 = trunci %97 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i9> to <i8>
    %99 = buffer %96#1 {handshake.bb = 3 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i9>
    %100 = cmpi ult, %99, %91 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i9>
    %101:5 = fork [5] %100 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i1>
    %102 = buffer %101#0 {handshake.bb = 3 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_12, %falseResult_13 = cond_br %102, %98 {handshake.bb = 3 : ui32, handshake.name = "cond_br9"} : <i1>, <i8>
    sink %falseResult_13 {handshake.name = "sink2"} : <i8>
    %103 = buffer %78 {handshake.bb = 3 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %104 = buffer %103 {handshake.bb = 3 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %105 = buffer %101#1 {handshake.bb = 3 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_14, %falseResult_15 = cond_br %105, %104 {handshake.bb = 3 : ui32, handshake.name = "cond_br10"} : <i1>, <i32>
    %106 = buffer %80 {handshake.bb = 3 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %107 = buffer %106 {handshake.bb = 3 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %108 = buffer %101#2 {handshake.bb = 3 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_16, %falseResult_17 = cond_br %108, %107 {handshake.bb = 3 : ui32, handshake.name = "cond_br11"} : <i1>, <i1>
    sink %falseResult_17 {handshake.name = "sink3"} : <i1>
    %109 = buffer %82 {handshake.bb = 3 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %110 = buffer %109 {handshake.bb = 3 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %111 = buffer %101#3 {handshake.bb = 3 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_18, %falseResult_19 = cond_br %111, %110 {handshake.bb = 3 : ui32, handshake.name = "cond_br12"} : <i1>, <i32>
    %112 = buffer %result_10 {handshake.bb = 3 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %113 = buffer %112 {handshake.bb = 3 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %114 = buffer %101#4 {handshake.bb = 3 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_20, %falseResult_21 = cond_br %114, %113 {handshake.bb = 3 : ui32, handshake.name = "cond_br13"} : <i1>, <>
    %115 = merge %falseResult_19 {handshake.bb = 4 : ui32, handshake.name = "merge3"} : <i32>
    %116 = merge %falseResult_15 {handshake.bb = 4 : ui32, handshake.name = "merge4"} : <i32>
    %117 = buffer %116 {handshake.bb = 4 : ui32, handshake.name = "buffer65", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %118 = buffer %117 {handshake.bb = 4 : ui32, handshake.name = "buffer66", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %119:2 = fork [2] %118 {handshake.bb = 4 : ui32, handshake.name = "fork10"} : <i32>
    %result_22, %index_23 = control_merge %falseResult_21  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_23 {handshake.name = "sink4"} : <i1>
    %120 = buffer %result_22 {handshake.bb = 4 : ui32, handshake.name = "buffer69", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %121 = buffer %120 {handshake.bb = 4 : ui32, handshake.name = "buffer70", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %122:4 = fork [4] %121 {handshake.bb = 4 : ui32, handshake.name = "fork11"} : <>
    %123 = buffer %122#0 {handshake.bb = 4 : ui32, handshake.name = "buffer71", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %124 = constant %123 {handshake.bb = 4 : ui32, handshake.name = "constant6", value = 1 : i2} : <>, <i2>
    %125 = buffer %122#3 {handshake.bb = 4 : ui32, handshake.name = "buffer74", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %126 = constant %125 {handshake.bb = 4 : ui32, handshake.name = "constant11", value = -1 : i32} : <>, <i32>
    %127:2 = fork [2] %126 {handshake.bb = 4 : ui32, handshake.name = "fork12"} : <i32>
    %128 = buffer %122#2 {handshake.bb = 4 : ui32, handshake.name = "buffer73", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %129 = constant %128 {handshake.bb = 4 : ui32, handshake.name = "constant12", value = true} : <>, <i1>
    %130 = buffer %119#1 {handshake.bb = 4 : ui32, handshake.name = "buffer68", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %131 = buffer %127#1 {handshake.bb = 4 : ui32, handshake.name = "buffer76", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %132 = cmpi ne, %130, %131 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i32>
    %133 = br %124 {handshake.bb = 4 : ui32, handshake.name = "br14"} : <i2>
    %134 = extsi %133 {handshake.bb = 4 : ui32, handshake.name = "extsi6"} : <i2> to <i8>
    %135 = buffer %127#0 {handshake.bb = 4 : ui32, handshake.name = "buffer75", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %136 = br %135 {handshake.bb = 4 : ui32, handshake.name = "br15"} : <i32>
    %137 = br %129 {handshake.bb = 4 : ui32, handshake.name = "br16"} : <i1>
    %138 = buffer %115 {handshake.bb = 4 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %139 = buffer %138 {handshake.bb = 4 : ui32, handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %140 = br %139 {handshake.bb = 4 : ui32, handshake.name = "br17"} : <i32>
    %141 = buffer %119#0 {handshake.bb = 4 : ui32, handshake.name = "buffer67", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %142 = br %141 {handshake.bb = 4 : ui32, handshake.name = "br18"} : <i32>
    %143 = br %132 {handshake.bb = 4 : ui32, handshake.name = "br19"} : <i1>
    %144 = buffer %122#1 {handshake.bb = 4 : ui32, handshake.name = "buffer72", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %145 = br %144 {handshake.bb = 4 : ui32, handshake.name = "br20"} : <>
    %146 = buffer %161#0 {handshake.bb = 5 : ui32, handshake.name = "buffer98", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %147 = mux %146 [%134, %trueResult_46] {handshake.bb = 5 : ui32, handshake.name = "mux8"} : <i1>, <i8>
    %148 = buffer %161#1 {handshake.bb = 5 : ui32, handshake.name = "buffer99", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %149 = mux %148 [%136, %trueResult_48] {handshake.bb = 5 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %150 = buffer %161#2 {handshake.bb = 5 : ui32, handshake.name = "buffer100", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %151 = mux %150 [%137, %trueResult_50] {handshake.bb = 5 : ui32, handshake.name = "mux10"} : <i1>, <i1>
    %152 = buffer %151 {handshake.bb = 5 : ui32, handshake.name = "buffer81", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %153 = buffer %152 {handshake.bb = 5 : ui32, handshake.name = "buffer82", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %154:7 = fork [7] %153 {handshake.bb = 5 : ui32, handshake.name = "fork13"} : <i1>
    %155 = buffer %161#3 {handshake.bb = 5 : ui32, handshake.name = "buffer101", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %156 = mux %155 [%140, %trueResult_52] {handshake.bb = 5 : ui32, handshake.name = "mux11"} : <i1>, <i32>
    %157 = buffer %161#4 {handshake.bb = 5 : ui32, handshake.name = "buffer102", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %158 = mux %157 [%142, %trueResult_54] {handshake.bb = 5 : ui32, handshake.name = "mux12"} : <i1>, <i32>
    %159 = buffer %161#5 {handshake.bb = 5 : ui32, handshake.name = "buffer103", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %160 = mux %159 [%143, %trueResult_56] {handshake.bb = 5 : ui32, handshake.name = "mux13"} : <i1>, <i1>
    %result_24, %index_25 = control_merge %145, %trueResult_58  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %161:6 = fork [6] %index_25 {handshake.bb = 5 : ui32, handshake.name = "fork14"} : <i1>
    %162 = buffer %result_24 {handshake.bb = 5 : ui32, handshake.name = "buffer96", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %163 = buffer %162 {handshake.bb = 5 : ui32, handshake.name = "buffer97", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %164:2 = fork [2] %163 {handshake.bb = 5 : ui32, handshake.name = "fork15"} : <>
    %165 = buffer %164#1 {handshake.bb = 5 : ui32, handshake.name = "buffer105", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %166 = constant %165 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = false} : <>, <i1>
    %167 = buffer %154#6 {handshake.bb = 5 : ui32, handshake.name = "buffer89", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %168 = buffer %156 {handshake.bb = 5 : ui32, handshake.name = "buffer90", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %169 = buffer %168 {handshake.bb = 5 : ui32, handshake.name = "buffer91", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_26, %falseResult_27 = cond_br %167, %169 {handshake.bb = 5 : ui32, handshake.name = "cond_br14"} : <i1>, <i32>
    %170 = buffer %154#5 {handshake.bb = 5 : ui32, handshake.name = "buffer88", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %171 = buffer %158 {handshake.bb = 5 : ui32, handshake.name = "buffer92", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %172 = buffer %171 {handshake.bb = 5 : ui32, handshake.name = "buffer93", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_28, %falseResult_29 = cond_br %170, %172 {handshake.bb = 5 : ui32, handshake.name = "cond_br15"} : <i1>, <i32>
    %173 = buffer %154#4 {handshake.bb = 5 : ui32, handshake.name = "buffer87", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %174 = buffer %160 {handshake.bb = 5 : ui32, handshake.name = "buffer94", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %175 = buffer %174 {handshake.bb = 5 : ui32, handshake.name = "buffer95", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_30, %falseResult_31 = cond_br %173, %175 {handshake.bb = 5 : ui32, handshake.name = "cond_br16"} : <i1>, <i1>
    %176 = buffer %147 {handshake.bb = 5 : ui32, handshake.name = "buffer77", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i8>
    %177 = buffer %176 {handshake.bb = 5 : ui32, handshake.name = "buffer78", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %178 = buffer %154#0 {handshake.bb = 5 : ui32, handshake.name = "buffer83", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_32, %falseResult_33 = cond_br %178, %177 {handshake.bb = 5 : ui32, handshake.name = "cond_br17"} : <i1>, <i8>
    %179 = buffer %149 {handshake.bb = 5 : ui32, handshake.name = "buffer79", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %180 = buffer %179 {handshake.bb = 5 : ui32, handshake.name = "buffer80", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %181 = buffer %154#3 {handshake.bb = 5 : ui32, handshake.name = "buffer86", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_34, %falseResult_35 = cond_br %181, %180 {handshake.bb = 5 : ui32, handshake.name = "cond_br18"} : <i1>, <i32>
    %182 = buffer %154#2 {handshake.bb = 5 : ui32, handshake.name = "buffer85", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %183 = buffer %164#0 {handshake.bb = 5 : ui32, handshake.name = "buffer104", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_36, %falseResult_37 = cond_br %182, %183 {handshake.bb = 5 : ui32, handshake.name = "cond_br19"} : <i1>, <>
    %184 = buffer %154#1 {handshake.bb = 5 : ui32, handshake.name = "buffer84", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_38, %falseResult_39 = cond_br %184, %166 {handshake.bb = 5 : ui32, handshake.name = "cond_br20"} : <i1>, <i1>
    sink %trueResult_38 {handshake.name = "sink5"} : <i1>
    %185 = merge %trueResult_26 {handshake.bb = 6 : ui32, handshake.name = "merge5"} : <i32>
    %186 = buffer %185 {handshake.bb = 6 : ui32, handshake.name = "buffer106", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %187 = buffer %186 {handshake.bb = 6 : ui32, handshake.name = "buffer107", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %188:3 = fork [3] %187 {handshake.bb = 6 : ui32, handshake.name = "fork16"} : <i32>
    %189 = merge %trueResult_28 {handshake.bb = 6 : ui32, handshake.name = "merge6"} : <i32>
    %190 = merge %trueResult_30 {handshake.bb = 6 : ui32, handshake.name = "merge7"} : <i1>
    %191 = merge %trueResult_32 {handshake.bb = 6 : ui32, handshake.name = "merge8"} : <i8>
    %192 = buffer %191 {handshake.bb = 6 : ui32, handshake.name = "buffer115", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i8>
    %193 = buffer %192 {handshake.bb = 6 : ui32, handshake.name = "buffer116", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %194:3 = fork [3] %193 {handshake.bb = 6 : ui32, handshake.name = "fork17"} : <i8>
    %195 = buffer %194#2 {handshake.bb = 6 : ui32, handshake.name = "buffer119", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %196 = extsi %195 {handshake.bb = 6 : ui32, handshake.name = "extsi12"} : <i8> to <i32>
    %197 = buffer %194#0 {handshake.bb = 6 : ui32, handshake.name = "buffer117", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %198 = trunci %197 {handshake.bb = 6 : ui32, handshake.name = "trunci2"} : <i8> to <i7>
    %199 = merge %trueResult_34 {handshake.bb = 6 : ui32, handshake.name = "merge9"} : <i32>
    %result_40, %index_41 = control_merge %trueResult_36  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    sink %index_41 {handshake.name = "sink6"} : <i1>
    %addressResult_42, %dataResult_43 = load[%198] %outputs#1 {handshake.bb = 6 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i7>, <i32>
    %200:2 = fork [2] %dataResult_43 {handshake.bb = 6 : ui32, handshake.name = "fork18"} : <i32>
    %201 = buffer %188#2 {handshake.bb = 6 : ui32, handshake.name = "buffer110", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %202 = buffer %200#0 {handshake.bb = 6 : ui32, handshake.name = "buffer124", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %203 = cmpi eq, %202, %201 {handshake.bb = 6 : ui32, handshake.name = "cmpi3"} : <i32>
    %204 = buffer %199 {handshake.bb = 6 : ui32, handshake.name = "buffer120", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %205 = buffer %204 {handshake.bb = 6 : ui32, handshake.name = "buffer121", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %206 = select %203[%196, %205] {handshake.bb = 6 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %207 = buffer %188#1 {handshake.bb = 6 : ui32, handshake.name = "buffer109", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %208 = buffer %200#1 {handshake.bb = 6 : ui32, handshake.name = "buffer125", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %209 = cmpi ne, %208, %207 {handshake.bb = 6 : ui32, handshake.name = "cmpi4"} : <i32>
    %210 = br %206 {handshake.bb = 6 : ui32, handshake.name = "br21"} : <i32>
    %211 = br %209 {handshake.bb = 6 : ui32, handshake.name = "br22"} : <i1>
    %212 = buffer %188#0 {handshake.bb = 6 : ui32, handshake.name = "buffer108", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %213 = br %212 {handshake.bb = 6 : ui32, handshake.name = "br23"} : <i32>
    %214 = buffer %189 {handshake.bb = 6 : ui32, handshake.name = "buffer111", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %215 = buffer %214 {handshake.bb = 6 : ui32, handshake.name = "buffer112", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %216 = br %215 {handshake.bb = 6 : ui32, handshake.name = "br24"} : <i32>
    %217 = buffer %190 {handshake.bb = 6 : ui32, handshake.name = "buffer113", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %218 = buffer %217 {handshake.bb = 6 : ui32, handshake.name = "buffer114", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %219 = br %218 {handshake.bb = 6 : ui32, handshake.name = "br25"} : <i1>
    %220 = buffer %194#1 {handshake.bb = 6 : ui32, handshake.name = "buffer118", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %221 = br %220 {handshake.bb = 6 : ui32, handshake.name = "br26"} : <i8>
    %222 = buffer %result_40 {handshake.bb = 6 : ui32, handshake.name = "buffer122", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %223 = buffer %222 {handshake.bb = 6 : ui32, handshake.name = "buffer123", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %224 = br %223 {handshake.bb = 6 : ui32, handshake.name = "br27"} : <>
    %225 = buffer %240#1 {handshake.bb = 7 : ui32, handshake.name = "buffer141", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %226 = mux %225 [%falseResult_35, %210] {handshake.bb = 7 : ui32, handshake.name = "mux14"} : <i1>, <i32>
    %227 = buffer %240#2 {handshake.bb = 7 : ui32, handshake.name = "buffer142", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %228 = mux %227 [%falseResult_39, %211] {handshake.bb = 7 : ui32, handshake.name = "mux15"} : <i1>, <i1>
    %229 = buffer %240#3 {handshake.bb = 7 : ui32, handshake.name = "buffer143", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %230 = mux %229 [%falseResult_27, %213] {handshake.bb = 7 : ui32, handshake.name = "mux16"} : <i1>, <i32>
    %231 = buffer %240#4 {handshake.bb = 7 : ui32, handshake.name = "buffer144", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %232 = mux %231 [%falseResult_29, %216] {handshake.bb = 7 : ui32, handshake.name = "mux17"} : <i1>, <i32>
    %233 = buffer %240#5 {handshake.bb = 7 : ui32, handshake.name = "buffer145", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %234 = mux %233 [%falseResult_31, %219] {handshake.bb = 7 : ui32, handshake.name = "mux18"} : <i1>, <i1>
    %235 = buffer %240#0 {handshake.bb = 7 : ui32, handshake.name = "buffer140", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %236 = mux %235 [%falseResult_33, %221] {handshake.bb = 7 : ui32, handshake.name = "mux19"} : <i1>, <i8>
    %237 = buffer %236 {handshake.bb = 7 : ui32, handshake.name = "buffer136", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i8>
    %238 = buffer %237 {handshake.bb = 7 : ui32, handshake.name = "buffer137", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %239 = extsi %238 {handshake.bb = 7 : ui32, handshake.name = "extsi13"} : <i8> to <i9>
    %result_44, %index_45 = control_merge %falseResult_37, %224  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %240:6 = fork [6] %index_45 {handshake.bb = 7 : ui32, handshake.name = "fork19"} : <i1>
    %241 = source {handshake.bb = 7 : ui32, handshake.name = "source2"} : <>
    %242 = constant %241 {handshake.bb = 7 : ui32, handshake.name = "constant16", value = 101 : i8} : <>, <i8>
    %243 = extsi %242 {handshake.bb = 7 : ui32, handshake.name = "extsi14"} : <i8> to <i9>
    %244 = source {handshake.bb = 7 : ui32, handshake.name = "source3"} : <>
    %245 = constant %244 {handshake.bb = 7 : ui32, handshake.name = "constant17", value = 2 : i3} : <>, <i3>
    %246 = extsi %245 {handshake.bb = 7 : ui32, handshake.name = "extsi15"} : <i3> to <i9>
    %247 = addi %239, %246 {handshake.bb = 7 : ui32, handshake.name = "addi1"} : <i9>
    %248:2 = fork [2] %247 {handshake.bb = 7 : ui32, handshake.name = "fork20"} : <i9>
    %249 = buffer %248#0 {handshake.bb = 7 : ui32, handshake.name = "buffer146", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i9>
    %250 = trunci %249 {handshake.bb = 7 : ui32, handshake.name = "trunci3"} : <i9> to <i8>
    %251 = buffer %248#1 {handshake.bb = 7 : ui32, handshake.name = "buffer147", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i9>
    %252 = cmpi ult, %251, %243 {handshake.bb = 7 : ui32, handshake.name = "cmpi6"} : <i9>
    %253:7 = fork [7] %252 {handshake.bb = 7 : ui32, handshake.name = "fork21"} : <i1>
    %254 = buffer %253#0 {handshake.bb = 7 : ui32, handshake.name = "buffer148", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_46, %falseResult_47 = cond_br %254, %250 {handshake.bb = 7 : ui32, handshake.name = "cond_br21"} : <i1>, <i8>
    sink %falseResult_47 {handshake.name = "sink7"} : <i8>
    %255 = buffer %226 {handshake.bb = 7 : ui32, handshake.name = "buffer126", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %256 = buffer %255 {handshake.bb = 7 : ui32, handshake.name = "buffer127", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %257 = buffer %253#1 {handshake.bb = 7 : ui32, handshake.name = "buffer149", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_48, %falseResult_49 = cond_br %257, %256 {handshake.bb = 7 : ui32, handshake.name = "cond_br22"} : <i1>, <i32>
    %258 = buffer %228 {handshake.bb = 7 : ui32, handshake.name = "buffer128", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %259 = buffer %258 {handshake.bb = 7 : ui32, handshake.name = "buffer129", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %260 = buffer %253#2 {handshake.bb = 7 : ui32, handshake.name = "buffer150", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_50, %falseResult_51 = cond_br %260, %259 {handshake.bb = 7 : ui32, handshake.name = "cond_br23"} : <i1>, <i1>
    sink %falseResult_51 {handshake.name = "sink8"} : <i1>
    %261 = buffer %230 {handshake.bb = 7 : ui32, handshake.name = "buffer130", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %262 = buffer %261 {handshake.bb = 7 : ui32, handshake.name = "buffer131", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %263 = buffer %253#3 {handshake.bb = 7 : ui32, handshake.name = "buffer151", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_52, %falseResult_53 = cond_br %263, %262 {handshake.bb = 7 : ui32, handshake.name = "cond_br24"} : <i1>, <i32>
    sink %falseResult_53 {handshake.name = "sink9"} : <i32>
    %264 = buffer %232 {handshake.bb = 7 : ui32, handshake.name = "buffer132", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %265 = buffer %264 {handshake.bb = 7 : ui32, handshake.name = "buffer133", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %266 = buffer %253#4 {handshake.bb = 7 : ui32, handshake.name = "buffer152", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_54, %falseResult_55 = cond_br %266, %265 {handshake.bb = 7 : ui32, handshake.name = "cond_br25"} : <i1>, <i32>
    %267 = buffer %234 {handshake.bb = 7 : ui32, handshake.name = "buffer134", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %268 = buffer %267 {handshake.bb = 7 : ui32, handshake.name = "buffer135", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %269 = buffer %253#5 {handshake.bb = 7 : ui32, handshake.name = "buffer153", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_56, %falseResult_57 = cond_br %269, %268 {handshake.bb = 7 : ui32, handshake.name = "cond_br26"} : <i1>, <i1>
    %270 = buffer %result_44 {handshake.bb = 7 : ui32, handshake.name = "buffer138", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %271 = buffer %270 {handshake.bb = 7 : ui32, handshake.name = "buffer139", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %272 = buffer %253#6 {handshake.bb = 7 : ui32, handshake.name = "buffer154", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_58, %falseResult_59 = cond_br %272, %271 {handshake.bb = 7 : ui32, handshake.name = "cond_br27"} : <i1>, <>
    %273 = merge %falseResult_55 {handshake.bb = 8 : ui32, handshake.name = "merge10"} : <i32>
    %274 = merge %falseResult_57 {handshake.bb = 8 : ui32, handshake.name = "merge11"} : <i1>
    %275 = merge %falseResult_49 {handshake.bb = 8 : ui32, handshake.name = "merge12"} : <i32>
    %result_60, %index_61 = control_merge %falseResult_59  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    sink %index_61 {handshake.name = "sink10"} : <i1>
    %276 = buffer %273 {handshake.bb = 8 : ui32, handshake.name = "buffer155", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %277 = buffer %276 {handshake.bb = 8 : ui32, handshake.name = "buffer156", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %278 = buffer %274 {handshake.bb = 8 : ui32, handshake.name = "buffer157", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %279 = buffer %278 {handshake.bb = 8 : ui32, handshake.name = "buffer158", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %280 = buffer %275 {handshake.bb = 8 : ui32, handshake.name = "buffer159", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %281 = buffer %280 {handshake.bb = 8 : ui32, handshake.name = "buffer160", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %282 = select %279[%277, %281] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %283 = buffer %0#1 {handshake.bb = 8 : ui32, handshake.name = "buffer1", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    end {handshake.bb = 8 : ui32, handshake.name = "end0"} %282, %memEnd, %283 : <i32>, <>, <>
  }
}


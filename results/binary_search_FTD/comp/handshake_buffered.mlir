module {
  handshake.func @binary_search(%arg0: !handshake.channel<i32>, %arg1: memref<101xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["search", "a", "a_start", "start"], cfg.edges = "[0,1][7,5,8,cmpi6][2,3][4,5][6,7][1,2,3,mux0][3,1,4,cmpi5][5,6,7,mux1]", resNames = ["out0", "a_end", "end"]} {
    %0:4 = fork [4] %arg3 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1:2 = fork [2] %arg0 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork1"} : <i32>
    %2 = buffer %0#0 {handshake.name = "buffer0", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs:2, %memEnd = mem_controller[%arg1 : memref<101xi32>] %arg2 (%addressResult, %addressResult_20) %2 {connectedBlocks = [2 : i32, 6 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller1"} :    (!handshake.channel<i7>, !handshake.channel<i7>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %3 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %4 = constant %3 {handshake.bb = 0 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %5 = extsi %4 {handshake.bb = 0 : ui32, handshake.name = "extsi6"} : <i1> to <i8>
    %6 = source {handshake.bb = 0 : ui32, handshake.name = "source1"} : <>
    %7 = constant %6 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = true} : <>, <i1>
    %8 = source {handshake.bb = 0 : ui32, handshake.name = "source2"} : <>
    %9 = constant %8 {handshake.bb = 0 : ui32, handshake.name = "constant5", value = -1 : i32} : <>, <i32>
    %10 = buffer %0#3 {handshake.bb = 1 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %11 = constant %10 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %12 = buffer %86#4 {handshake.bb = 1 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %13 = merge %11, %12 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %14 = buffer %13 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %15:4 = fork [4] %14 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <i1>
    %16 = buffer %1#1 {handshake.bb = 1 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %17 = buffer %15#3 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %18 = mux %17 [%16, %trueResult_12] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %19 = buffer %18 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %20 = buffer %19 {handshake.bb = 1 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %21:2 = fork [2] %20 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <i32>
    %22 = buffer %15#2 {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %23 = mux %22 [%7, %trueResult_10] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i1>
    %24 = buffer %23 {handshake.bb = 1 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %25 = buffer %24 {handshake.bb = 1 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %26:6 = fork [6] %25 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i1>
    %27 = buffer %15#1 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %28 = mux %27 [%9, %trueResult_4] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %29 = buffer %15#0 {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %30 = mux %29 [%5, %trueResult_8] {handshake.bb = 1 : ui32, handshake.name = "mux5"} : <i1>, <i8>
    %31 = buffer %30 {handshake.bb = 1 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i8>
    %32 = buffer %31 {handshake.bb = 1 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %33:2 = fork [2] %32 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i8>
    %34 = buffer %33#0 {handshake.bb = 1 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %35 = extsi %34 {handshake.bb = 1 : ui32, handshake.name = "extsi7"} : <i8> to <i9>
    %36 = source {handshake.bb = 1 : ui32, handshake.name = "source3"} : <>
    %37 = constant %36 {handshake.bb = 1 : ui32, handshake.name = "constant7", value = false} : <>, <i1>
    %38 = buffer %26#5 {handshake.bb = 2 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %39 = buffer %28 {handshake.bb = 2 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %40 = buffer %39 {handshake.bb = 2 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult, %falseResult = cond_br %38, %40 {handshake.bb = 2 : ui32, handshake.name = "cond_br35"} : <i1>, <i32>
    %41 = buffer %21#1 {handshake.bb = 2 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %42 = buffer %26#4 {handshake.bb = 2 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_0, %falseResult_1 = cond_br %42, %41 {handshake.bb = 2 : ui32, handshake.name = "cond_br36"} : <i1>, <i32>
    sink %falseResult_1 {handshake.name = "sink0"} : <i32>
    %43:2 = fork [2] %trueResult_0 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i32>
    %44 = buffer %26#0 {handshake.bb = 2 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %45 = buffer %33#1 {handshake.bb = 2 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %trueResult_2, %falseResult_3 = cond_br %44, %45 {handshake.bb = 2 : ui32, handshake.name = "cond_br37"} : <i1>, <i8>
    sink %falseResult_3 {handshake.name = "sink1"} : <i8>
    %46:2 = fork [2] %trueResult_2 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i8>
    %47 = buffer %46#1 {handshake.bb = 2 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %48 = extsi %47 {handshake.bb = 2 : ui32, handshake.name = "extsi8"} : <i8> to <i32>
    %49 = buffer %46#0 {handshake.bb = 2 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %50 = trunci %49 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i8> to <i7>
    %addressResult, %dataResult = load[%50] %outputs#0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i7>, <i32>
    %51:2 = fork [2] %dataResult {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i32>
    %52 = buffer %43#1 {handshake.bb = 2 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %53 = buffer %51#0 {handshake.bb = 2 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %54 = cmpi eq, %53, %52 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %55 = select %54[%48, %trueResult] {handshake.bb = 2 : ui32, handshake.name = "select0"} : <i1>, <i32>
    %56 = buffer %43#0 {handshake.bb = 2 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %57 = buffer %51#1 {handshake.bb = 2 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %58 = cmpi ne, %57, %56 {handshake.bb = 2 : ui32, handshake.name = "cmpi1"} : <i32>
    %59 = buffer %73 {handshake.bb = 3 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %60 = buffer %59 {handshake.bb = 3 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %61 = buffer %86#3 {handshake.bb = 3 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_4, %falseResult_5 = cond_br %61, %60 {handshake.bb = 3 : ui32, handshake.name = "cond_br38"} : <i1>, <i32>
    %62:2 = fork [2] %falseResult_5 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i32>
    %63 = buffer %26#3 {handshake.bb = 3 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_6, %falseResult_7 = cond_br %63, %37 {handshake.bb = 3 : ui32, handshake.name = "cond_br13"} : <i1>, <i1>
    sink %trueResult_6 {handshake.name = "sink2"} : <i1>
    %64 = buffer %86#0 {handshake.bb = 3 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_8, %falseResult_9 = cond_br %64, %83 {handshake.bb = 3 : ui32, handshake.name = "cond_br39"} : <i1>, <i8>
    sink %falseResult_9 {handshake.name = "sink3"} : <i8>
    %65 = buffer %71 {handshake.bb = 3 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %66 = buffer %65 {handshake.bb = 3 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %67 = buffer %86#2 {handshake.bb = 3 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_10, %falseResult_11 = cond_br %67, %66 {handshake.bb = 3 : ui32, handshake.name = "cond_br40"} : <i1>, <i1>
    sink %falseResult_11 {handshake.name = "sink4"} : <i1>
    %68 = buffer %21#0 {handshake.bb = 3 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %69 = buffer %86#1 {handshake.bb = 3 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_12, %falseResult_13 = cond_br %69, %68 {handshake.bb = 3 : ui32, handshake.name = "cond_br41"} : <i1>, <i32>
    sink %falseResult_13 {handshake.name = "sink5"} : <i32>
    %70 = buffer %26#2 {handshake.bb = 3 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %71 = mux %70 [%falseResult_7, %58] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <i1>
    %72 = buffer %26#1 {handshake.bb = 3 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %73 = mux %72 [%falseResult, %55] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %74 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %75 = constant %74 {handshake.bb = 3 : ui32, handshake.name = "constant3", value = 101 : i8} : <>, <i8>
    %76 = extsi %75 {handshake.bb = 3 : ui32, handshake.name = "extsi9"} : <i8> to <i9>
    %77 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %78 = constant %77 {handshake.bb = 3 : ui32, handshake.name = "constant6", value = 2 : i3} : <>, <i3>
    %79 = extsi %78 {handshake.bb = 3 : ui32, handshake.name = "extsi10"} : <i3> to <i9>
    %80 = addi %35, %79 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i9>
    %81:2 = fork [2] %80 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i9>
    %82 = buffer %81#0 {handshake.bb = 3 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i9>
    %83 = trunci %82 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i9> to <i8>
    %84 = buffer %81#1 {handshake.bb = 3 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i9>
    %85 = cmpi ult, %84, %76 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i9>
    %86:5 = fork [5] %85 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i1>
    %87 = source {handshake.bb = 4 : ui32, handshake.name = "source6"} : <>
    %88 = constant %87 {handshake.bb = 4 : ui32, handshake.name = "constant16", value = 1 : i2} : <>, <i2>
    %89 = extsi %88 {handshake.bb = 4 : ui32, handshake.name = "extsi11"} : <i2> to <i8>
    %90 = source {handshake.bb = 4 : ui32, handshake.name = "source7"} : <>
    %91 = constant %90 {handshake.bb = 4 : ui32, handshake.name = "constant11", value = -1 : i32} : <>, <i32>
    %92:2 = fork [2] %91 {handshake.bb = 4 : ui32, handshake.name = "fork12"} : <i32>
    %93 = source {handshake.bb = 4 : ui32, handshake.name = "source8"} : <>
    %94 = constant %93 {handshake.bb = 4 : ui32, handshake.name = "constant12", value = true} : <>, <i1>
    %95 = buffer %62#1 {handshake.bb = 4 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %96 = buffer %92#1 {handshake.bb = 4 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %97 = cmpi ne, %95, %96 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i32>
    %98 = buffer %0#2 {handshake.bb = 5 : ui32, handshake.name = "buffer2", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %99 = constant %98 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant17", value = false} : <>, <i1>
    %100 = buffer %174#4 {handshake.bb = 5 : ui32, handshake.name = "buffer89", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %101 = merge %99, %100 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge5"} : <i1>
    %102 = buffer %101 {handshake.bb = 5 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %103:4 = fork [4] %102 {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork13"} : <i1>
    %104 = buffer %1#0 {handshake.bb = 5 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %105 = buffer %103#3 {handshake.bb = 5 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %106 = mux %105 [%104, %trueResult_30] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %107 = buffer %106 {handshake.bb = 5 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %108 = buffer %107 {handshake.bb = 5 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %109:2 = fork [2] %108 {handshake.bb = 5 : ui32, handshake.name = "fork14"} : <i32>
    %110 = buffer %103#2 {handshake.bb = 5 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %111 = mux %110 [%94, %trueResult_28] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux1"} : <i1>, <i1>
    %112 = buffer %111 {handshake.bb = 5 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %113 = buffer %112 {handshake.bb = 5 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %114:6 = fork [6] %113 {handshake.bb = 5 : ui32, handshake.name = "fork15"} : <i1>
    %115 = buffer %92#0 {handshake.bb = 5 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %116 = buffer %103#1 {handshake.bb = 5 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %117 = mux %116 [%115, %trueResult_26] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %118 = buffer %103#0 {handshake.bb = 5 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %119 = mux %118 [%89, %trueResult_24] {handshake.bb = 5 : ui32, handshake.name = "mux11"} : <i1>, <i8>
    %120 = buffer %119 {handshake.bb = 5 : ui32, handshake.name = "buffer69", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i8>
    %121 = buffer %120 {handshake.bb = 5 : ui32, handshake.name = "buffer70", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %122:2 = fork [2] %121 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <i8>
    %123 = buffer %122#0 {handshake.bb = 5 : ui32, handshake.name = "buffer71", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %124 = extsi %123 {handshake.bb = 5 : ui32, handshake.name = "extsi12"} : <i8> to <i9>
    %125 = source {handshake.bb = 5 : ui32, handshake.name = "source9"} : <>
    %126 = constant %125 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = false} : <>, <i1>
    %127 = buffer %114#5 {handshake.bb = 6 : ui32, handshake.name = "buffer66", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %128 = buffer %117 {handshake.bb = 6 : ui32, handshake.name = "buffer67", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %129 = buffer %128 {handshake.bb = 6 : ui32, handshake.name = "buffer68", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_14, %falseResult_15 = cond_br %127, %129 {handshake.bb = 6 : ui32, handshake.name = "cond_br42"} : <i1>, <i32>
    %130 = buffer %109#1 {handshake.bb = 6 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %131 = buffer %114#4 {handshake.bb = 6 : ui32, handshake.name = "buffer65", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_16, %falseResult_17 = cond_br %131, %130 {handshake.bb = 6 : ui32, handshake.name = "cond_br43"} : <i1>, <i32>
    sink %falseResult_17 {handshake.name = "sink6"} : <i32>
    %132:2 = fork [2] %trueResult_16 {handshake.bb = 6 : ui32, handshake.name = "fork17"} : <i32>
    %133 = buffer %114#0 {handshake.bb = 6 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %134 = buffer %122#1 {handshake.bb = 6 : ui32, handshake.name = "buffer72", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %trueResult_18, %falseResult_19 = cond_br %133, %134 {handshake.bb = 6 : ui32, handshake.name = "cond_br44"} : <i1>, <i8>
    sink %falseResult_19 {handshake.name = "sink7"} : <i8>
    %135:2 = fork [2] %trueResult_18 {handshake.bb = 6 : ui32, handshake.name = "fork18"} : <i8>
    %136 = buffer %135#1 {handshake.bb = 6 : ui32, handshake.name = "buffer76", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %137 = extsi %136 {handshake.bb = 6 : ui32, handshake.name = "extsi13"} : <i8> to <i32>
    %138 = buffer %135#0 {handshake.bb = 6 : ui32, handshake.name = "buffer75", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %139 = trunci %138 {handshake.bb = 6 : ui32, handshake.name = "trunci2"} : <i8> to <i7>
    %addressResult_20, %dataResult_21 = load[%139] %outputs#1 {handshake.bb = 6 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i7>, <i32>
    %140:2 = fork [2] %dataResult_21 {handshake.bb = 6 : ui32, handshake.name = "fork19"} : <i32>
    %141 = buffer %132#1 {handshake.bb = 6 : ui32, handshake.name = "buffer74", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %142 = buffer %140#0 {handshake.bb = 6 : ui32, handshake.name = "buffer77", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %143 = cmpi eq, %142, %141 {handshake.bb = 6 : ui32, handshake.name = "cmpi3"} : <i32>
    %144 = select %143[%137, %trueResult_14] {handshake.bb = 6 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %145 = buffer %132#0 {handshake.bb = 6 : ui32, handshake.name = "buffer73", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %146 = buffer %140#1 {handshake.bb = 6 : ui32, handshake.name = "buffer78", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %147 = cmpi ne, %146, %145 {handshake.bb = 6 : ui32, handshake.name = "cmpi4"} : <i32>
    %148 = buffer %114#3 {handshake.bb = 7 : ui32, handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_22, %falseResult_23 = cond_br %148, %126 {handshake.bb = 7 : ui32, handshake.name = "cond_br28"} : <i1>, <i1>
    sink %trueResult_22 {handshake.name = "sink8"} : <i1>
    %149 = buffer %174#0 {handshake.bb = 7 : ui32, handshake.name = "buffer85", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_24, %falseResult_25 = cond_br %149, %171 {handshake.bb = 7 : ui32, handshake.name = "cond_br45"} : <i1>, <i8>
    sink %falseResult_25 {handshake.name = "sink9"} : <i8>
    %150 = buffer %161 {handshake.bb = 7 : ui32, handshake.name = "buffer81", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %151 = buffer %150 {handshake.bb = 7 : ui32, handshake.name = "buffer82", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %152 = buffer %174#3 {handshake.bb = 7 : ui32, handshake.name = "buffer88", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_26, %falseResult_27 = cond_br %152, %151 {handshake.bb = 7 : ui32, handshake.name = "cond_br46"} : <i1>, <i32>
    %153 = buffer %159 {handshake.bb = 7 : ui32, handshake.name = "buffer79", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %154 = buffer %153 {handshake.bb = 7 : ui32, handshake.name = "buffer80", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %155 = buffer %174#2 {handshake.bb = 7 : ui32, handshake.name = "buffer87", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_28, %falseResult_29 = cond_br %155, %154 {handshake.bb = 7 : ui32, handshake.name = "cond_br47"} : <i1>, <i1>
    sink %falseResult_29 {handshake.name = "sink10"} : <i1>
    %156 = buffer %109#0 {handshake.bb = 7 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %157 = buffer %174#1 {handshake.bb = 7 : ui32, handshake.name = "buffer86", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_30, %falseResult_31 = cond_br %157, %156 {handshake.bb = 7 : ui32, handshake.name = "cond_br48"} : <i1>, <i32>
    sink %falseResult_31 {handshake.name = "sink11"} : <i32>
    %158 = buffer %114#2 {handshake.bb = 7 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %159 = mux %158 [%falseResult_23, %147] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux12"} : <i1>, <i1>
    %160 = buffer %114#1 {handshake.bb = 7 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %161 = mux %160 [%falseResult_15, %144] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %162 = source {handshake.bb = 7 : ui32, handshake.name = "source10"} : <>
    %163 = constant %162 {handshake.bb = 7 : ui32, handshake.name = "constant18", value = 101 : i8} : <>, <i8>
    %164 = extsi %163 {handshake.bb = 7 : ui32, handshake.name = "extsi14"} : <i8> to <i9>
    %165 = source {handshake.bb = 7 : ui32, handshake.name = "source11"} : <>
    %166 = constant %165 {handshake.bb = 7 : ui32, handshake.name = "constant19", value = 2 : i3} : <>, <i3>
    %167 = extsi %166 {handshake.bb = 7 : ui32, handshake.name = "extsi15"} : <i3> to <i9>
    %168 = addi %124, %167 {handshake.bb = 7 : ui32, handshake.name = "addi1"} : <i9>
    %169:2 = fork [2] %168 {handshake.bb = 7 : ui32, handshake.name = "fork20"} : <i9>
    %170 = buffer %169#0 {handshake.bb = 7 : ui32, handshake.name = "buffer83", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i9>
    %171 = trunci %170 {handshake.bb = 7 : ui32, handshake.name = "trunci3"} : <i9> to <i8>
    %172 = buffer %169#1 {handshake.bb = 7 : ui32, handshake.name = "buffer84", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i9>
    %173 = cmpi ult, %172, %164 {handshake.bb = 7 : ui32, handshake.name = "cmpi6"} : <i9>
    %174:5 = fork [5] %173 {handshake.bb = 7 : ui32, handshake.name = "fork21"} : <i1>
    %175 = buffer %62#0 {handshake.bb = 8 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %176 = select %97[%175, %falseResult_27] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %177 = buffer %0#1 {handshake.bb = 8 : ui32, handshake.name = "buffer1", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    end {handshake.bb = 8 : ui32, handshake.name = "end0"} %176, %memEnd, %177 : <i32>, <>, <>
  }
}


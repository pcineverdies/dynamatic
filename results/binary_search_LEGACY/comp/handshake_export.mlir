module {
  handshake.func @binary_search(%arg0: !handshake.channel<i32>, %arg1: memref<101xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["search", "a", "a_start", "start"], resNames = ["out0", "a_end", "end"]} {
    %0:5 = fork [5] %arg3 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1 = buffer %falseResult_53 {handshake.name = "buffer161", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %2 = buffer %1 {handshake.name = "buffer162", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs:2, %memEnd = mem_controller[%arg1 : memref<101xi32>] %arg2 (%addressResult, %addressResult_36) %2 {connectedBlocks = [2 : i32, 6 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller1"} :    (!handshake.channel<i7>, !handshake.channel<i7>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %4 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %6 = constant %0#4 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = true} : <>, <i1>
    %8 = constant %0#3 {handshake.bb = 0 : ui32, handshake.name = "constant5", value = -1 : i32} : <>, <i32>
    %9 = extsi %4 {handshake.bb = 0 : ui32, handshake.name = "extsi7"} : <i1> to <i8>
    %12 = mux %22#0 [%9, %trueResult_10] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i8>
    %14 = mux %22#1 [%8, %trueResult_12] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %16 = mux %22#2 [%6, %trueResult_14] {handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i1>
    %17 = buffer %16 {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %18 = buffer %17 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %19:5 = fork [5] %18 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %21 = mux %22#3 [%arg0, %trueResult_16] {handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %result, %index = control_merge %0#2, %trueResult_18  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %22:4 = fork [4] %index {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %23 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %24 = buffer %23 {handshake.bb = 1 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %25:2 = fork [2] %24 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %27 = constant %25#1 {handshake.bb = 1 : ui32, handshake.name = "constant7", value = false} : <>, <i1>
    %29 = buffer %21 {handshake.bb = 1 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %30 = buffer %29 {handshake.bb = 1 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult, %falseResult = cond_br %19#4, %30 {handshake.bb = 1 : ui32, handshake.name = "cond_br4"} : <i1>, <i32>
    %31 = buffer %12 {handshake.bb = 1 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i8>
    %32 = buffer %31 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %trueResult_0, %falseResult_1 = cond_br %19#0, %32 {handshake.bb = 1 : ui32, handshake.name = "cond_br5"} : <i1>, <i8>
    %34 = buffer %14 {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %35 = buffer %34 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_2, %falseResult_3 = cond_br %19#3, %35 {handshake.bb = 1 : ui32, handshake.name = "cond_br6"} : <i1>, <i32>
    %trueResult_4, %falseResult_5 = cond_br %19#2, %25#0 {handshake.bb = 1 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %trueResult_6, %falseResult_7 = cond_br %19#1, %27 {handshake.bb = 1 : ui32, handshake.name = "cond_br8"} : <i1>, <i1>
    sink %trueResult_6 {handshake.name = "sink0"} : <i1>
    %40 = buffer %trueResult {handshake.bb = 2 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %41 = buffer %40 {handshake.bb = 2 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %42:3 = fork [3] %41 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i32>
    %43 = buffer %trueResult_0 {handshake.bb = 2 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i8>
    %44 = buffer %43 {handshake.bb = 2 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %45:3 = fork [3] %44 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i8>
    %47 = extsi %45#2 {handshake.bb = 2 : ui32, handshake.name = "extsi8"} : <i8> to <i32>
    %49 = trunci %45#0 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i8> to <i7>
    %addressResult, %dataResult = load[%49] %outputs#0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i7>, <i32>
    %50:2 = fork [2] %dataResult {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i32>
    %53 = cmpi eq, %50#0, %42#2 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %54 = buffer %trueResult_2 {handshake.bb = 2 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %55 = buffer %54 {handshake.bb = 2 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %56 = select %53[%47, %55] {handshake.bb = 2 : ui32, handshake.name = "select0"} : <i1>, <i32>
    %59 = cmpi ne, %50#1, %42#1 {handshake.bb = 2 : ui32, handshake.name = "cmpi1"} : <i32>
    %62 = buffer %trueResult_4 {handshake.bb = 2 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %63 = buffer %62 {handshake.bb = 2 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %65 = mux %75#1 [%falseResult_3, %56] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %67 = mux %75#2 [%falseResult_7, %59] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i1>
    %69 = mux %75#3 [%falseResult, %42#0] {handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %71 = mux %75#0 [%falseResult_1, %45#1] {handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <i8>
    %72 = buffer %71 {handshake.bb = 3 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i8>
    %73 = buffer %72 {handshake.bb = 3 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %74 = extsi %73 {handshake.bb = 3 : ui32, handshake.name = "extsi9"} : <i8> to <i9>
    %result_8, %index_9 = control_merge %falseResult_5, %63  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %75:4 = fork [4] %index_9 {handshake.bb = 3 : ui32, handshake.name = "fork7"} : <i1>
    %76 = source {handshake.bb = 3 : ui32, handshake.name = "source0"} : <>
    %77 = constant %76 {handshake.bb = 3 : ui32, handshake.name = "constant1", value = 101 : i8} : <>, <i8>
    %78 = extsi %77 {handshake.bb = 3 : ui32, handshake.name = "extsi10"} : <i8> to <i9>
    %79 = source {handshake.bb = 3 : ui32, handshake.name = "source1"} : <>
    %80 = constant %79 {handshake.bb = 3 : ui32, handshake.name = "constant3", value = 2 : i3} : <>, <i3>
    %81 = extsi %80 {handshake.bb = 3 : ui32, handshake.name = "extsi11"} : <i3> to <i9>
    %82 = addi %74, %81 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i9>
    %83:2 = fork [2] %82 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i9>
    %85 = trunci %83#0 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i9> to <i8>
    %87 = cmpi ult, %83#1, %78 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i9>
    %88:5 = fork [5] %87 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i1>
    %trueResult_10, %falseResult_11 = cond_br %88#0, %85 {handshake.bb = 3 : ui32, handshake.name = "cond_br9"} : <i1>, <i8>
    sink %falseResult_11 {handshake.name = "sink2"} : <i8>
    %90 = buffer %65 {handshake.bb = 3 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %91 = buffer %90 {handshake.bb = 3 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_12, %falseResult_13 = cond_br %88#1, %91 {handshake.bb = 3 : ui32, handshake.name = "cond_br10"} : <i1>, <i32>
    %93 = buffer %67 {handshake.bb = 3 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %94 = buffer %93 {handshake.bb = 3 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_14, %falseResult_15 = cond_br %88#2, %94 {handshake.bb = 3 : ui32, handshake.name = "cond_br11"} : <i1>, <i1>
    sink %falseResult_15 {handshake.name = "sink3"} : <i1>
    %96 = buffer %69 {handshake.bb = 3 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %97 = buffer %96 {handshake.bb = 3 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_16, %falseResult_17 = cond_br %88#3, %97 {handshake.bb = 3 : ui32, handshake.name = "cond_br12"} : <i1>, <i32>
    %99 = buffer %result_8 {handshake.bb = 3 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %100 = buffer %99 {handshake.bb = 3 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_18, %falseResult_19 = cond_br %88#4, %100 {handshake.bb = 3 : ui32, handshake.name = "cond_br13"} : <i1>, <>
    %102 = buffer %falseResult_13 {handshake.bb = 4 : ui32, handshake.name = "buffer65", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %103 = buffer %102 {handshake.bb = 4 : ui32, handshake.name = "buffer66", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %104:2 = fork [2] %103 {handshake.bb = 4 : ui32, handshake.name = "fork10"} : <i32>
    %105 = buffer %falseResult_19 {handshake.bb = 4 : ui32, handshake.name = "buffer69", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %106 = buffer %105 {handshake.bb = 4 : ui32, handshake.name = "buffer70", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %107:4 = fork [4] %106 {handshake.bb = 4 : ui32, handshake.name = "fork11"} : <>
    %109 = constant %107#0 {handshake.bb = 4 : ui32, handshake.name = "constant6", value = 1 : i2} : <>, <i2>
    %111 = constant %107#3 {handshake.bb = 4 : ui32, handshake.name = "constant11", value = -1 : i32} : <>, <i32>
    %112:2 = fork [2] %111 {handshake.bb = 4 : ui32, handshake.name = "fork12"} : <i32>
    %114 = constant %107#2 {handshake.bb = 4 : ui32, handshake.name = "constant12", value = true} : <>, <i1>
    %117 = cmpi ne, %104#1, %112#1 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i32>
    %118 = extsi %109 {handshake.bb = 4 : ui32, handshake.name = "extsi6"} : <i2> to <i8>
    %120 = buffer %falseResult_17 {handshake.bb = 4 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %121 = buffer %120 {handshake.bb = 4 : ui32, handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %125 = mux %139#0 [%118, %trueResult_40] {handshake.bb = 5 : ui32, handshake.name = "mux8"} : <i1>, <i8>
    %127 = mux %139#1 [%112#0, %trueResult_42] {handshake.bb = 5 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %129 = mux %139#2 [%114, %trueResult_44] {handshake.bb = 5 : ui32, handshake.name = "mux10"} : <i1>, <i1>
    %130 = buffer %129 {handshake.bb = 5 : ui32, handshake.name = "buffer81", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %131 = buffer %130 {handshake.bb = 5 : ui32, handshake.name = "buffer82", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %132:7 = fork [7] %131 {handshake.bb = 5 : ui32, handshake.name = "fork13"} : <i1>
    %134 = mux %139#3 [%121, %trueResult_46] {handshake.bb = 5 : ui32, handshake.name = "mux11"} : <i1>, <i32>
    %136 = mux %139#4 [%104#0, %trueResult_48] {handshake.bb = 5 : ui32, handshake.name = "mux12"} : <i1>, <i32>
    %138 = mux %139#5 [%117, %trueResult_50] {handshake.bb = 5 : ui32, handshake.name = "mux13"} : <i1>, <i1>
    %result_20, %index_21 = control_merge %107#1, %trueResult_52  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %139:6 = fork [6] %index_21 {handshake.bb = 5 : ui32, handshake.name = "fork14"} : <i1>
    %140 = buffer %result_20 {handshake.bb = 5 : ui32, handshake.name = "buffer96", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %141 = buffer %140 {handshake.bb = 5 : ui32, handshake.name = "buffer97", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %142:2 = fork [2] %141 {handshake.bb = 5 : ui32, handshake.name = "fork15"} : <>
    %144 = constant %142#1 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = false} : <>, <i1>
    %146 = buffer %134 {handshake.bb = 5 : ui32, handshake.name = "buffer90", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %147 = buffer %146 {handshake.bb = 5 : ui32, handshake.name = "buffer91", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_22, %falseResult_23 = cond_br %132#6, %147 {handshake.bb = 5 : ui32, handshake.name = "cond_br14"} : <i1>, <i32>
    %149 = buffer %136 {handshake.bb = 5 : ui32, handshake.name = "buffer92", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %150 = buffer %149 {handshake.bb = 5 : ui32, handshake.name = "buffer93", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_24, %falseResult_25 = cond_br %132#5, %150 {handshake.bb = 5 : ui32, handshake.name = "cond_br15"} : <i1>, <i32>
    %152 = buffer %138 {handshake.bb = 5 : ui32, handshake.name = "buffer94", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %153 = buffer %152 {handshake.bb = 5 : ui32, handshake.name = "buffer95", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_26, %falseResult_27 = cond_br %132#4, %153 {handshake.bb = 5 : ui32, handshake.name = "cond_br16"} : <i1>, <i1>
    %154 = buffer %125 {handshake.bb = 5 : ui32, handshake.name = "buffer77", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i8>
    %155 = buffer %154 {handshake.bb = 5 : ui32, handshake.name = "buffer78", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %trueResult_28, %falseResult_29 = cond_br %132#0, %155 {handshake.bb = 5 : ui32, handshake.name = "cond_br17"} : <i1>, <i8>
    %157 = buffer %127 {handshake.bb = 5 : ui32, handshake.name = "buffer79", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %158 = buffer %157 {handshake.bb = 5 : ui32, handshake.name = "buffer80", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_30, %falseResult_31 = cond_br %132#3, %158 {handshake.bb = 5 : ui32, handshake.name = "cond_br18"} : <i1>, <i32>
    %trueResult_32, %falseResult_33 = cond_br %132#2, %142#0 {handshake.bb = 5 : ui32, handshake.name = "cond_br19"} : <i1>, <>
    %trueResult_34, %falseResult_35 = cond_br %132#1, %144 {handshake.bb = 5 : ui32, handshake.name = "cond_br20"} : <i1>, <i1>
    sink %trueResult_34 {handshake.name = "sink5"} : <i1>
    %163 = buffer %trueResult_22 {handshake.bb = 6 : ui32, handshake.name = "buffer106", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %164 = buffer %163 {handshake.bb = 6 : ui32, handshake.name = "buffer107", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %165:3 = fork [3] %164 {handshake.bb = 6 : ui32, handshake.name = "fork16"} : <i32>
    %166 = buffer %trueResult_28 {handshake.bb = 6 : ui32, handshake.name = "buffer115", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i8>
    %167 = buffer %166 {handshake.bb = 6 : ui32, handshake.name = "buffer116", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %168:3 = fork [3] %167 {handshake.bb = 6 : ui32, handshake.name = "fork17"} : <i8>
    %170 = extsi %168#2 {handshake.bb = 6 : ui32, handshake.name = "extsi12"} : <i8> to <i32>
    %172 = trunci %168#0 {handshake.bb = 6 : ui32, handshake.name = "trunci2"} : <i8> to <i7>
    %addressResult_36, %dataResult_37 = load[%172] %outputs#1 {handshake.bb = 6 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i7>, <i32>
    %173:2 = fork [2] %dataResult_37 {handshake.bb = 6 : ui32, handshake.name = "fork18"} : <i32>
    %176 = cmpi eq, %173#0, %165#2 {handshake.bb = 6 : ui32, handshake.name = "cmpi3"} : <i32>
    %177 = buffer %trueResult_30 {handshake.bb = 6 : ui32, handshake.name = "buffer120", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %178 = buffer %177 {handshake.bb = 6 : ui32, handshake.name = "buffer121", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %179 = select %176[%170, %178] {handshake.bb = 6 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %182 = cmpi ne, %173#1, %165#1 {handshake.bb = 6 : ui32, handshake.name = "cmpi4"} : <i32>
    %184 = buffer %trueResult_24 {handshake.bb = 6 : ui32, handshake.name = "buffer111", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %185 = buffer %184 {handshake.bb = 6 : ui32, handshake.name = "buffer112", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %186 = buffer %trueResult_26 {handshake.bb = 6 : ui32, handshake.name = "buffer113", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %187 = buffer %186 {handshake.bb = 6 : ui32, handshake.name = "buffer114", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %189 = buffer %trueResult_32 {handshake.bb = 6 : ui32, handshake.name = "buffer122", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %190 = buffer %189 {handshake.bb = 6 : ui32, handshake.name = "buffer123", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %192 = mux %206#1 [%falseResult_31, %179] {handshake.bb = 7 : ui32, handshake.name = "mux14"} : <i1>, <i32>
    %194 = mux %206#2 [%falseResult_35, %182] {handshake.bb = 7 : ui32, handshake.name = "mux15"} : <i1>, <i1>
    %196 = mux %206#3 [%falseResult_23, %165#0] {handshake.bb = 7 : ui32, handshake.name = "mux16"} : <i1>, <i32>
    %198 = mux %206#4 [%falseResult_25, %185] {handshake.bb = 7 : ui32, handshake.name = "mux17"} : <i1>, <i32>
    %200 = mux %206#5 [%falseResult_27, %187] {handshake.bb = 7 : ui32, handshake.name = "mux18"} : <i1>, <i1>
    %202 = mux %206#0 [%falseResult_29, %168#1] {handshake.bb = 7 : ui32, handshake.name = "mux19"} : <i1>, <i8>
    %203 = buffer %202 {handshake.bb = 7 : ui32, handshake.name = "buffer136", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i8>
    %204 = buffer %203 {handshake.bb = 7 : ui32, handshake.name = "buffer137", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %205 = extsi %204 {handshake.bb = 7 : ui32, handshake.name = "extsi13"} : <i8> to <i9>
    %result_38, %index_39 = control_merge %falseResult_33, %190  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %206:6 = fork [6] %index_39 {handshake.bb = 7 : ui32, handshake.name = "fork19"} : <i1>
    %207 = source {handshake.bb = 7 : ui32, handshake.name = "source2"} : <>
    %208 = constant %207 {handshake.bb = 7 : ui32, handshake.name = "constant16", value = 101 : i8} : <>, <i8>
    %209 = extsi %208 {handshake.bb = 7 : ui32, handshake.name = "extsi14"} : <i8> to <i9>
    %210 = source {handshake.bb = 7 : ui32, handshake.name = "source3"} : <>
    %211 = constant %210 {handshake.bb = 7 : ui32, handshake.name = "constant17", value = 2 : i3} : <>, <i3>
    %212 = extsi %211 {handshake.bb = 7 : ui32, handshake.name = "extsi15"} : <i3> to <i9>
    %213 = addi %205, %212 {handshake.bb = 7 : ui32, handshake.name = "addi1"} : <i9>
    %214:2 = fork [2] %213 {handshake.bb = 7 : ui32, handshake.name = "fork20"} : <i9>
    %216 = trunci %214#0 {handshake.bb = 7 : ui32, handshake.name = "trunci3"} : <i9> to <i8>
    %218 = cmpi ult, %214#1, %209 {handshake.bb = 7 : ui32, handshake.name = "cmpi6"} : <i9>
    %219:7 = fork [7] %218 {handshake.bb = 7 : ui32, handshake.name = "fork21"} : <i1>
    %trueResult_40, %falseResult_41 = cond_br %219#0, %216 {handshake.bb = 7 : ui32, handshake.name = "cond_br21"} : <i1>, <i8>
    sink %falseResult_41 {handshake.name = "sink7"} : <i8>
    %221 = buffer %192 {handshake.bb = 7 : ui32, handshake.name = "buffer126", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %222 = buffer %221 {handshake.bb = 7 : ui32, handshake.name = "buffer127", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_42, %falseResult_43 = cond_br %219#1, %222 {handshake.bb = 7 : ui32, handshake.name = "cond_br22"} : <i1>, <i32>
    %224 = buffer %194 {handshake.bb = 7 : ui32, handshake.name = "buffer128", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %225 = buffer %224 {handshake.bb = 7 : ui32, handshake.name = "buffer129", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_44, %falseResult_45 = cond_br %219#2, %225 {handshake.bb = 7 : ui32, handshake.name = "cond_br23"} : <i1>, <i1>
    sink %falseResult_45 {handshake.name = "sink8"} : <i1>
    %227 = buffer %196 {handshake.bb = 7 : ui32, handshake.name = "buffer130", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %228 = buffer %227 {handshake.bb = 7 : ui32, handshake.name = "buffer131", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_46, %falseResult_47 = cond_br %219#3, %228 {handshake.bb = 7 : ui32, handshake.name = "cond_br24"} : <i1>, <i32>
    sink %falseResult_47 {handshake.name = "sink9"} : <i32>
    %230 = buffer %198 {handshake.bb = 7 : ui32, handshake.name = "buffer132", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %231 = buffer %230 {handshake.bb = 7 : ui32, handshake.name = "buffer133", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_48, %falseResult_49 = cond_br %219#4, %231 {handshake.bb = 7 : ui32, handshake.name = "cond_br25"} : <i1>, <i32>
    %233 = buffer %200 {handshake.bb = 7 : ui32, handshake.name = "buffer134", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %234 = buffer %233 {handshake.bb = 7 : ui32, handshake.name = "buffer135", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_50, %falseResult_51 = cond_br %219#5, %234 {handshake.bb = 7 : ui32, handshake.name = "cond_br26"} : <i1>, <i1>
    %236 = buffer %result_38 {handshake.bb = 7 : ui32, handshake.name = "buffer138", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %237 = buffer %236 {handshake.bb = 7 : ui32, handshake.name = "buffer139", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_52, %falseResult_53 = cond_br %219#6, %237 {handshake.bb = 7 : ui32, handshake.name = "cond_br27"} : <i1>, <>
    %239 = buffer %falseResult_49 {handshake.bb = 8 : ui32, handshake.name = "buffer155", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %240 = buffer %239 {handshake.bb = 8 : ui32, handshake.name = "buffer156", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %241 = buffer %falseResult_51 {handshake.bb = 8 : ui32, handshake.name = "buffer157", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %242 = buffer %241 {handshake.bb = 8 : ui32, handshake.name = "buffer158", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %243 = buffer %falseResult_43 {handshake.bb = 8 : ui32, handshake.name = "buffer159", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %244 = buffer %243 {handshake.bb = 8 : ui32, handshake.name = "buffer160", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %245 = select %242[%240, %244] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    end {handshake.bb = 8 : ui32, handshake.name = "end0"} %245, %memEnd, %0#1 : <i32>, <>, <>
  }
}


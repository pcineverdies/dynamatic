module {
  handshake.func @binary_search(%arg0: !handshake.channel<i32>, %arg1: memref<101xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["search", "a", "a_start", "start"], cfg.edges = "[0,1][7,5,8,cmpi6][2,3][4,5][6,7][1,2,3,mux0][3,1,4,cmpi5][5,6,7,mux1]", resNames = ["out0", "a_end", "end"]} {
    %0:11 = fork [11] %arg3 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1:2 = fork [2] %arg0 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork1"} : <i32>
    %outputs:2, %memEnd = mem_controller[%arg1 : memref<101xi32>] %arg2 (%addressResult, %addressResult_22) %0#0 {connectedBlocks = [2 : i32, 6 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller1"} :    (!handshake.channel<i7>, !handshake.channel<i7>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %4 = constant %0#10 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = true} : <>, <i1>
    %6 = constant %0#9 {handshake.bb = 0 : ui32, handshake.name = "constant5", value = -1 : i32} : <>, <i32>
    %8 = constant %0#8 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %9:2 = fork [2] %8 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %11 = extsi %9#0 {handshake.bb = 1 : ui32, handshake.name = "extsi6"} : <i1> to <i8>
    %14 = merge %9#1, %95#5 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %15 = buffer %14 {handshake.bb = 1 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %16:5 = fork [5] %15 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork3"} : <i1>
    %19 = mux %16#4 [%0#7, %trueResult_14] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <>
    %20 = buffer %19 {handshake.bb = 1 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %21 = buffer %20 {handshake.bb = 1 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %22:4 = fork [4] %21 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <>
    %25 = mux %16#3 [%1#1, %trueResult_12] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %26 = buffer %25 {handshake.bb = 1 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %27 = buffer %26 {handshake.bb = 1 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %28:2 = fork [2] %27 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i32>
    %30 = mux %16#2 [%4, %trueResult_10] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i1>
    %31 = buffer %30 {handshake.bb = 1 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %32 = buffer %31 {handshake.bb = 1 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %33:6 = fork [6] %32 {handshake.bb = 1 : ui32, handshake.name = "fork6"} : <i1>
    %35 = mux %16#1 [%6, %trueResult_4] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %37 = mux %16#0 [%11, %trueResult_8] {handshake.bb = 1 : ui32, handshake.name = "mux8"} : <i1>, <i8>
    %38 = buffer %37 {handshake.bb = 1 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i8>
    %39 = buffer %38 {handshake.bb = 1 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %40:2 = fork [2] %39 {handshake.bb = 1 : ui32, handshake.name = "fork7"} : <i8>
    %42 = extsi %40#0 {handshake.bb = 1 : ui32, handshake.name = "extsi7"} : <i8> to <i9>
    %44 = constant %22#3 {handshake.bb = 1 : ui32, handshake.name = "constant7", value = false} : <>, <i1>
    %46 = buffer %35 {handshake.bb = 2 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %47 = buffer %46 {handshake.bb = 2 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult, %falseResult = cond_br %33#5, %47 {handshake.bb = 2 : ui32, handshake.name = "cond_br41"} : <i1>, <i32>
    %trueResult_0, %falseResult_1 = cond_br %33#4, %28#1 {handshake.bb = 2 : ui32, handshake.name = "cond_br42"} : <i1>, <i32>
    sink %falseResult_1 {handshake.name = "sink0"} : <i32>
    %50:2 = fork [2] %trueResult_0 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i32>
    %trueResult_2, %falseResult_3 = cond_br %33#0, %40#1 {handshake.bb = 2 : ui32, handshake.name = "cond_br43"} : <i1>, <i8>
    sink %falseResult_3 {handshake.name = "sink1"} : <i8>
    %53:2 = fork [2] %trueResult_2 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i8>
    %55 = extsi %53#1 {handshake.bb = 2 : ui32, handshake.name = "extsi8"} : <i8> to <i32>
    %57 = trunci %53#0 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i8> to <i7>
    %addressResult, %dataResult = load[%57] %outputs#0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i7>, <i32>
    %58:2 = fork [2] %dataResult {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i32>
    %61 = cmpi eq, %58#0, %50#1 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %62 = select %61[%55, %trueResult] {handshake.bb = 2 : ui32, handshake.name = "select0"} : <i1>, <i32>
    %65 = cmpi ne, %58#1, %50#0 {handshake.bb = 2 : ui32, handshake.name = "cmpi1"} : <i32>
    %66 = buffer %82 {handshake.bb = 3 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %67 = buffer %66 {handshake.bb = 3 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_4, %falseResult_5 = cond_br %95#4, %67 {handshake.bb = 3 : ui32, handshake.name = "cond_br44"} : <i1>, <i32>
    %69:2 = fork [2] %falseResult_5 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i32>
    %trueResult_6, %falseResult_7 = cond_br %33#3, %44 {handshake.bb = 3 : ui32, handshake.name = "cond_br13"} : <i1>, <i1>
    sink %trueResult_6 {handshake.name = "sink2"} : <i1>
    %trueResult_8, %falseResult_9 = cond_br %95#0, %92 {handshake.bb = 3 : ui32, handshake.name = "cond_br45"} : <i1>, <i8>
    sink %falseResult_9 {handshake.name = "sink3"} : <i8>
    %72 = buffer %80 {handshake.bb = 3 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %73 = buffer %72 {handshake.bb = 3 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_10, %falseResult_11 = cond_br %95#3, %73 {handshake.bb = 3 : ui32, handshake.name = "cond_br46"} : <i1>, <i1>
    sink %falseResult_11 {handshake.name = "sink4"} : <i1>
    %trueResult_12, %falseResult_13 = cond_br %95#2, %28#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br47"} : <i1>, <i32>
    sink %falseResult_13 {handshake.name = "sink5"} : <i32>
    %trueResult_14, %falseResult_15 = cond_br %95#1, %22#2 {handshake.bb = 3 : ui32, handshake.name = "cond_br48"} : <i1>, <>
    sink %falseResult_15 {handshake.name = "sink6"} : <>
    %80 = mux %33#2 [%falseResult_7, %65] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux9"} : <i1>, <i1>
    %82 = mux %33#1 [%falseResult, %62] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %84 = constant %22#1 {handshake.bb = 3 : ui32, handshake.name = "constant1", value = 101 : i8} : <>, <i8>
    %85 = extsi %84 {handshake.bb = 3 : ui32, handshake.name = "extsi9"} : <i8> to <i9>
    %87 = constant %22#0 {handshake.bb = 3 : ui32, handshake.name = "constant3", value = 2 : i3} : <>, <i3>
    %88 = extsi %87 {handshake.bb = 3 : ui32, handshake.name = "extsi10"} : <i3> to <i9>
    %89 = addi %42, %88 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i9>
    %90:2 = fork [2] %89 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i9>
    %92 = trunci %90#0 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i9> to <i8>
    %94 = cmpi ult, %90#1, %85 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i9>
    %95:6 = fork [6] %94 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i1>
    %97 = constant %0#1 {handshake.bb = 4 : ui32, handshake.name = "constant6", value = 1 : i2} : <>, <i2>
    %98 = extsi %97 {handshake.bb = 4 : ui32, handshake.name = "extsi11"} : <i2> to <i8>
    %100 = constant %0#6 {handshake.bb = 4 : ui32, handshake.name = "constant11", value = -1 : i32} : <>, <i32>
    %101:2 = fork [2] %100 {handshake.bb = 4 : ui32, handshake.name = "fork14"} : <i32>
    %103 = constant %0#5 {handshake.bb = 4 : ui32, handshake.name = "constant12", value = true} : <>, <i1>
    %106 = cmpi ne, %69#1, %101#1 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i32>
    %108 = constant %0#4 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant20", value = false} : <>, <i1>
    %110 = merge %108, %191#5 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge8"} : <i1>
    %111 = buffer %110 {handshake.bb = 5 : ui32, handshake.name = "buffer67", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %112:5 = fork [5] %111 {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork15"} : <i1>
    %115 = mux %112#4 [%0#3, %trueResult_34] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux11"} : <i1>, <>
    %116 = buffer %115 {handshake.bb = 5 : ui32, handshake.name = "buffer73", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %117 = buffer %116 {handshake.bb = 5 : ui32, handshake.name = "buffer74", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %118:4 = fork [4] %117 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <>
    %121 = mux %112#3 [%1#0, %trueResult_32] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %122 = buffer %121 {handshake.bb = 5 : ui32, handshake.name = "buffer79", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %123 = buffer %122 {handshake.bb = 5 : ui32, handshake.name = "buffer80", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %124:2 = fork [2] %123 {handshake.bb = 5 : ui32, handshake.name = "fork17"} : <i32>
    %126 = mux %112#2 [%103, %trueResult_30] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux1"} : <i1>, <i1>
    %127 = buffer %126 {handshake.bb = 5 : ui32, handshake.name = "buffer83", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %128 = buffer %127 {handshake.bb = 5 : ui32, handshake.name = "buffer84", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %129:6 = fork [6] %128 {handshake.bb = 5 : ui32, handshake.name = "fork18"} : <i1>
    %132 = mux %112#1 [%101#0, %trueResult_28] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux16"} : <i1>, <i32>
    %134 = mux %112#0 [%98, %trueResult_26] {handshake.bb = 5 : ui32, handshake.name = "mux17"} : <i1>, <i8>
    %135 = buffer %134 {handshake.bb = 5 : ui32, handshake.name = "buffer93", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i8>
    %136 = buffer %135 {handshake.bb = 5 : ui32, handshake.name = "buffer94", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %137:2 = fork [2] %136 {handshake.bb = 5 : ui32, handshake.name = "fork19"} : <i8>
    %139 = extsi %137#0 {handshake.bb = 5 : ui32, handshake.name = "extsi12"} : <i8> to <i9>
    %141 = constant %118#3 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = false} : <>, <i1>
    %143 = buffer %132 {handshake.bb = 6 : ui32, handshake.name = "buffer91", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %144 = buffer %143 {handshake.bb = 6 : ui32, handshake.name = "buffer92", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_16, %falseResult_17 = cond_br %129#5, %144 {handshake.bb = 6 : ui32, handshake.name = "cond_br49"} : <i1>, <i32>
    %trueResult_18, %falseResult_19 = cond_br %129#4, %124#1 {handshake.bb = 6 : ui32, handshake.name = "cond_br50"} : <i1>, <i32>
    sink %falseResult_19 {handshake.name = "sink7"} : <i32>
    %147:2 = fork [2] %trueResult_18 {handshake.bb = 6 : ui32, handshake.name = "fork20"} : <i32>
    %trueResult_20, %falseResult_21 = cond_br %129#0, %137#1 {handshake.bb = 6 : ui32, handshake.name = "cond_br51"} : <i1>, <i8>
    sink %falseResult_21 {handshake.name = "sink8"} : <i8>
    %150:2 = fork [2] %trueResult_20 {handshake.bb = 6 : ui32, handshake.name = "fork21"} : <i8>
    %152 = extsi %150#1 {handshake.bb = 6 : ui32, handshake.name = "extsi13"} : <i8> to <i32>
    %154 = trunci %150#0 {handshake.bb = 6 : ui32, handshake.name = "trunci2"} : <i8> to <i7>
    %addressResult_22, %dataResult_23 = load[%154] %outputs#1 {handshake.bb = 6 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i7>, <i32>
    %155:2 = fork [2] %dataResult_23 {handshake.bb = 6 : ui32, handshake.name = "fork22"} : <i32>
    %158 = cmpi eq, %155#0, %147#1 {handshake.bb = 6 : ui32, handshake.name = "cmpi3"} : <i32>
    %159 = select %158[%152, %trueResult_16] {handshake.bb = 6 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %162 = cmpi ne, %155#1, %147#0 {handshake.bb = 6 : ui32, handshake.name = "cmpi4"} : <i32>
    %trueResult_24, %falseResult_25 = cond_br %129#3, %141 {handshake.bb = 7 : ui32, handshake.name = "cond_br31"} : <i1>, <i1>
    sink %trueResult_24 {handshake.name = "sink9"} : <i1>
    %trueResult_26, %falseResult_27 = cond_br %191#0, %188 {handshake.bb = 7 : ui32, handshake.name = "cond_br52"} : <i1>, <i8>
    sink %falseResult_27 {handshake.name = "sink10"} : <i8>
    %165 = buffer %178 {handshake.bb = 7 : ui32, handshake.name = "buffer105", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %166 = buffer %165 {handshake.bb = 7 : ui32, handshake.name = "buffer106", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_28, %falseResult_29 = cond_br %191#4, %166 {handshake.bb = 7 : ui32, handshake.name = "cond_br53"} : <i1>, <i32>
    %168 = buffer %176 {handshake.bb = 7 : ui32, handshake.name = "buffer103", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %169 = buffer %168 {handshake.bb = 7 : ui32, handshake.name = "buffer104", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_30, %falseResult_31 = cond_br %191#3, %169 {handshake.bb = 7 : ui32, handshake.name = "cond_br54"} : <i1>, <i1>
    sink %falseResult_31 {handshake.name = "sink11"} : <i1>
    %trueResult_32, %falseResult_33 = cond_br %191#2, %124#0 {handshake.bb = 7 : ui32, handshake.name = "cond_br55"} : <i1>, <i32>
    sink %falseResult_33 {handshake.name = "sink12"} : <i32>
    %trueResult_34, %falseResult_35 = cond_br %191#1, %118#2 {handshake.bb = 7 : ui32, handshake.name = "cond_br56"} : <i1>, <>
    sink %falseResult_35 {handshake.name = "sink13"} : <>
    %176 = mux %129#2 [%falseResult_25, %162] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux18"} : <i1>, <i1>
    %178 = mux %129#1 [%falseResult_17, %159] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux19"} : <i1>, <i32>
    %180 = constant %118#1 {handshake.bb = 7 : ui32, handshake.name = "constant16", value = 101 : i8} : <>, <i8>
    %181 = extsi %180 {handshake.bb = 7 : ui32, handshake.name = "extsi14"} : <i8> to <i9>
    %183 = constant %118#0 {handshake.bb = 7 : ui32, handshake.name = "constant17", value = 2 : i3} : <>, <i3>
    %184 = extsi %183 {handshake.bb = 7 : ui32, handshake.name = "extsi15"} : <i3> to <i9>
    %185 = addi %139, %184 {handshake.bb = 7 : ui32, handshake.name = "addi1"} : <i9>
    %186:2 = fork [2] %185 {handshake.bb = 7 : ui32, handshake.name = "fork23"} : <i9>
    %188 = trunci %186#0 {handshake.bb = 7 : ui32, handshake.name = "trunci3"} : <i9> to <i8>
    %190 = cmpi ult, %186#1, %181 {handshake.bb = 7 : ui32, handshake.name = "cmpi6"} : <i9>
    %191:6 = fork [6] %190 {handshake.bb = 7 : ui32, handshake.name = "fork24"} : <i1>
    %193 = select %106[%69#0, %falseResult_29] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %194 = buffer %0#2 {handshake.bb = 8 : ui32, handshake.name = "buffer2", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    end {handshake.bb = 8 : ui32, handshake.name = "end0"} %193, %memEnd, %194 : <i32>, <>, <>
  }
}


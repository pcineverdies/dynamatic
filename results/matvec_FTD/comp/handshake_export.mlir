module {
  handshake.func @matvec(%arg0: memref<400xi32>, %arg1: memref<20xi32>, %arg2: memref<20xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["m", "v", "out", "m_start", "v_start", "out_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][1,2][3,1,4,cmpi1]", resNames = ["out0", "m_end", "v_end", "out_end", "end"]} {
    %0:8 = fork [8] %arg6 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %memEnd = mem_controller[%arg2 : memref<20xi32>] %arg5 (%114, %addressResult_17, %dataResult_18) %0#2 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i32>, !handshake.channel<i5>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<20xi32>] %arg4 (%addressResult) %0#1 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller4"} :    (!handshake.channel<i5>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<400xi32>] %arg3 (%addressResult_9) %0#0 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i9>) -> !handshake.channel<i32>
    %5 = constant %0#7 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %6:2 = fork [2] %5 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %8 = extsi %6#0 {handshake.bb = 1 : ui32, handshake.name = "extsi10"} : <i1> to <i6>
    %11 = merge %6#1, %128#3 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %12 = buffer %11 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %13:2 = fork [2] %12 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <i1>
    %16 = mux %13#1 [%0#6, %trueResult_15] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %17 = buffer %16 {handshake.bb = 1 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %18 = buffer %17 {handshake.bb = 1 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %19:5 = fork [5] %18 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %21 = mux %13#0 [%8, %trueResult_13] {handshake.bb = 1 : ui32, handshake.name = "mux8"} : <i1>, <i6>
    %22 = buffer %21 {handshake.bb = 1 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %23 = buffer %22 {handshake.bb = 1 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %24:3 = fork [3] %23 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i6>
    %26 = extsi %24#1 {handshake.bb = 1 : ui32, handshake.name = "extsi11"} : <i6> to <i7>
    %27 = buffer %24#0 {handshake.bb = 1 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %28 = trunci %27 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i6> to <i5>
    %30 = constant %19#2 {handshake.bb = 1 : ui32, handshake.name = "constant2", value = false} : <>, <i1>
    %31:2 = fork [2] %30 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i1>
    %33 = extsi %31#0 {handshake.bb = 1 : ui32, handshake.name = "extsi12"} : <i1> to <i6>
    %35 = extsi %31#1 {handshake.bb = 1 : ui32, handshake.name = "extsi2"} : <i1> to <i32>
    %36 = buffer %106#4 {handshake.bb = 2 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult, %falseResult = cond_br %36, %99 {handshake.bb = 2 : ui32, handshake.name = "cond_br24"} : <i1>, <i32>
    %37:2 = fork [2] %falseResult {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i32>
    %trueResult_3, %falseResult_4 = cond_br %106#0, %103 {handshake.bb = 2 : ui32, handshake.name = "cond_br25"} : <i1>, <i6>
    sink %falseResult_4 {handshake.name = "sink0"} : <i6>
    %trueResult_5, %falseResult_6 = cond_br %106#3, %65#4 {handshake.bb = 2 : ui32, handshake.name = "cond_br26"} : <i1>, <>
    sink %falseResult_6 {handshake.name = "sink1"} : <>
    %trueResult_7, %falseResult_8 = cond_br %106#1, %54#2 {handshake.bb = 2 : ui32, handshake.name = "cond_br27"} : <i1>, <i6>
    sink %falseResult_8 {handshake.name = "sink2"} : <i6>
    %44 = constant %0#5 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant18", value = false} : <>, <i1>
    %46 = merge %44, %106#2 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge9"} : <i1>
    %47 = buffer %46 {handshake.bb = 2 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %48:4 = fork [4] %47 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork7"} : <i1>
    %51 = mux %48#0 [%24#2, %trueResult_7] {handshake.bb = 2 : ui32, handshake.name = "mux9"} : <i1>, <i6>
    %52 = buffer %51 {handshake.bb = 2 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %53 = buffer %52 {handshake.bb = 2 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %54:3 = fork [3] %53 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i6>
    %56 = trunci %54#0 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i6> to <i5>
    %57 = extsi %56 {handshake.bb = 2 : ui32, handshake.name = "extsi13"} : <i5> to <i9>
    %59 = extsi %54#1 {handshake.bb = 2 : ui32, handshake.name = "extsi14"} : <i6> to <i8>
    %62 = mux %48#3 [%19#4, %trueResult_5] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux14"} : <i1>, <>
    %63 = buffer %62 {handshake.bb = 2 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %64 = buffer %63 {handshake.bb = 2 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %65:5 = fork [5] %64 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <>
    %66 = buffer %48#2 {handshake.bb = 2 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %67 = mux %66 [%35, %trueResult] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux15"} : <i1>, <i32>
    %69 = mux %48#1 [%33, %trueResult_3] {handshake.bb = 2 : ui32, handshake.name = "mux16"} : <i1>, <i6>
    %70 = buffer %69 {handshake.bb = 2 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %71 = buffer %70 {handshake.bb = 2 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %72:3 = fork [3] %71 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i6>
    %74 = extsi %72#0 {handshake.bb = 2 : ui32, handshake.name = "extsi15"} : <i6> to <i9>
    %76 = extsi %72#2 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i6> to <i7>
    %78 = trunci %72#1 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i6> to <i5>
    %80 = constant %65#3 {handshake.bb = 2 : ui32, handshake.name = "constant3", value = 20 : i6} : <>, <i6>
    %81 = extsi %80 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i6> to <i7>
    %83 = constant %65#2 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = 1 : i2} : <>, <i2>
    %84 = extsi %83 {handshake.bb = 2 : ui32, handshake.name = "extsi18"} : <i2> to <i7>
    %86 = constant %65#1 {handshake.bb = 2 : ui32, handshake.name = "constant14", value = 4 : i4} : <>, <i4>
    %87 = extui %86 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i4> to <i9>
    %89 = constant %65#0 {handshake.bb = 2 : ui32, handshake.name = "constant15", value = 2 : i3} : <>, <i3>
    %90 = extui %89 {handshake.bb = 2 : ui32, handshake.name = "extui1"} : <i3> to <i8>
    %addressResult, %dataResult = load[%78] %outputs {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i5>, <i32>
    %91 = shli %59, %90 {handshake.bb = 2 : ui32, handshake.name = "shli3"} : <i8>
    %92 = extsi %91 {handshake.bb = 2 : ui32, handshake.name = "extsi19"} : <i8> to <i9>
    %93 = shli %57, %87 {handshake.bb = 2 : ui32, handshake.name = "shli2"} : <i9>
    %94 = addi %92, %93 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i9>
    %95 = addi %74, %94 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i9>
    %addressResult_9, %dataResult_10 = load[%95] %outputs_1 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i9>, <i32>
    %96 = muli %dataResult, %dataResult_10 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %97 = buffer %67 {handshake.bb = 2 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %98 = buffer %97 {handshake.bb = 2 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %99 = addi %98, %96 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %100 = addi %76, %84 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i7>
    %101:2 = fork [2] %100 {handshake.bb = 2 : ui32, handshake.name = "fork11"} : <i7>
    %103 = trunci %101#0 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i7> to <i6>
    %105 = cmpi ult, %101#1, %81 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i7>
    %106:5 = fork [5] %105 {handshake.bb = 2 : ui32, handshake.name = "fork12"} : <i1>
    %trueResult_11, %falseResult_12 = cond_br %128#2, %37#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br28"} : <i1>, <i32>
    sink %trueResult_11 {handshake.name = "sink3"} : <i32>
    %trueResult_13, %falseResult_14 = cond_br %128#0, %125 {handshake.bb = 3 : ui32, handshake.name = "cond_br29"} : <i1>, <i6>
    sink %falseResult_14 {handshake.name = "sink4"} : <i6>
    %trueResult_15, %falseResult_16 = cond_br %128#1, %19#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br30"} : <i1>, <>
    sink %falseResult_16 {handshake.name = "sink5"} : <>
    %113 = constant %0#3 {handshake.bb = 3 : ui32, handshake.name = "constant16", value = 1 : i2} : <>, <i2>
    %114 = extsi %113 {handshake.bb = 3 : ui32, handshake.name = "extsi7"} : <i2> to <i32>
    %115 = buffer %19#1 {handshake.bb = 3 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %116 = constant %115 {handshake.bb = 3 : ui32, handshake.name = "constant17", value = 20 : i6} : <>, <i6>
    %117 = extsi %116 {handshake.bb = 3 : ui32, handshake.name = "extsi20"} : <i6> to <i7>
    %119 = constant %19#0 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 1 : i2} : <>, <i2>
    %120 = extsi %119 {handshake.bb = 3 : ui32, handshake.name = "extsi21"} : <i2> to <i7>
    %addressResult_17, %dataResult_18 = store[%28] %37#0 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i5>, <i32>
    %122 = addi %26, %120 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i7>
    %123:2 = fork [2] %122 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i7>
    %125 = trunci %123#0 {handshake.bb = 3 : ui32, handshake.name = "trunci4"} : <i7> to <i6>
    %126 = buffer %123#1 {handshake.bb = 3 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %127 = cmpi ult, %126, %117 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i7>
    %128:4 = fork [4] %127 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i1>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %falseResult_12, %memEnd_2, %memEnd_0, %memEnd, %0#4 : <i32>, <>, <>, <>, <>
  }
}


module {
  handshake.func @matvec(%arg0: memref<400xi32>, %arg1: memref<20xi32>, %arg2: memref<20xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["m", "v", "out", "m_start", "v_start", "out_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][1,2][3,1,4,cmpi1]", resNames = ["out0", "m_end", "v_end", "out_end", "end"]} {
    %0:7 = fork [7] %arg6 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %memEnd = mem_controller[%arg2 : memref<20xi32>] %arg5 (%95, %addressResult_13, %dataResult_14) %0#2 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i32>, !handshake.channel<i5>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<20xi32>] %arg4 (%addressResult) %0#1 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller4"} :    (!handshake.channel<i5>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<400xi32>] %arg3 (%addressResult_7) %0#0 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i9>) -> !handshake.channel<i32>
    %4 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %5 = constant %4 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %6 = extsi %5 {handshake.bb = 0 : ui32, handshake.name = "extsi10"} : <i1> to <i6>
    %8 = constant %0#6 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %9 = buffer %19 {handshake.bb = 1 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %10 = mux %9 [%6, %trueResult_11] {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mux0"} : <i1>, <i6>
    %11 = buffer %10 {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %12 = buffer %11 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %13:3 = fork [3] %12 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i6>
    %15 = extsi %13#1 {handshake.bb = 1 : ui32, handshake.name = "extsi11"} : <i6> to <i7>
    %16 = buffer %13#0 {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %17 = trunci %16 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i6> to <i5>
    %19 = merge %8, %109#2 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %20 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %21 = constant %20 {handshake.bb = 1 : ui32, handshake.name = "constant5", value = false} : <>, <i1>
    %22:2 = fork [2] %21 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %24 = extsi %22#0 {handshake.bb = 1 : ui32, handshake.name = "extsi12"} : <i1> to <i6>
    %26 = extsi %22#1 {handshake.bb = 1 : ui32, handshake.name = "extsi2"} : <i1> to <i32>
    %27 = buffer %89#3 {handshake.bb = 2 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult, %falseResult = cond_br %27, %82 {handshake.bb = 2 : ui32, handshake.name = "cond_br12"} : <i1>, <i32>
    %28:2 = fork [2] %falseResult {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i32>
    %trueResult_3, %falseResult_4 = cond_br %89#0, %86 {handshake.bb = 2 : ui32, handshake.name = "cond_br13"} : <i1>, <i6>
    sink %falseResult_4 {handshake.name = "sink0"} : <i6>
    %trueResult_5, %falseResult_6 = cond_br %89#1, %43#2 {handshake.bb = 2 : ui32, handshake.name = "cond_br14"} : <i1>, <i6>
    sink %falseResult_6 {handshake.name = "sink1"} : <i6>
    %33 = constant %0#5 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %35 = merge %33, %89#2 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i1>
    %36 = buffer %35 {handshake.bb = 2 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %37:3 = fork [3] %36 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork4"} : <i1>
    %39 = buffer %37#0 {handshake.bb = 2 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %40 = mux %39 [%13#2, %trueResult_5] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i6>
    %41 = buffer %40 {handshake.bb = 2 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %42 = buffer %41 {handshake.bb = 2 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %43:3 = fork [3] %42 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i6>
    %45 = trunci %43#0 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i6> to <i5>
    %46 = extsi %45 {handshake.bb = 2 : ui32, handshake.name = "extsi13"} : <i5> to <i9>
    %48 = extsi %43#1 {handshake.bb = 2 : ui32, handshake.name = "extsi14"} : <i6> to <i8>
    %49 = buffer %37#2 {handshake.bb = 2 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %50 = mux %49 [%26, %trueResult] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %52 = mux %37#1 [%24, %trueResult_3] {handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <i6>
    %53 = buffer %52 {handshake.bb = 2 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %54 = buffer %53 {handshake.bb = 2 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %55:3 = fork [3] %54 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i6>
    %56 = buffer %55#0 {handshake.bb = 2 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %57 = extsi %56 {handshake.bb = 2 : ui32, handshake.name = "extsi15"} : <i6> to <i9>
    %59 = extsi %55#2 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i6> to <i7>
    %61 = trunci %55#1 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i6> to <i5>
    %62 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %63 = constant %62 {handshake.bb = 2 : ui32, handshake.name = "constant14", value = 20 : i6} : <>, <i6>
    %64 = extsi %63 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i6> to <i7>
    %65 = source {handshake.bb = 2 : ui32, handshake.name = "source4"} : <>
    %66 = constant %65 {handshake.bb = 2 : ui32, handshake.name = "constant15", value = 1 : i2} : <>, <i2>
    %67 = extsi %66 {handshake.bb = 2 : ui32, handshake.name = "extsi18"} : <i2> to <i7>
    %68 = source {handshake.bb = 2 : ui32, handshake.name = "source5"} : <>
    %69 = constant %68 {handshake.bb = 2 : ui32, handshake.name = "constant16", value = 4 : i4} : <>, <i4>
    %70 = extui %69 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i4> to <i9>
    %71 = source {handshake.bb = 2 : ui32, handshake.name = "source6"} : <>
    %72 = constant %71 {handshake.bb = 2 : ui32, handshake.name = "constant17", value = 2 : i3} : <>, <i3>
    %73 = extui %72 {handshake.bb = 2 : ui32, handshake.name = "extui1"} : <i3> to <i8>
    %addressResult, %dataResult = load[%61] %outputs {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i5>, <i32>
    %74 = shli %48, %73 {handshake.bb = 2 : ui32, handshake.name = "shli3"} : <i8>
    %75 = extsi %74 {handshake.bb = 2 : ui32, handshake.name = "extsi19"} : <i8> to <i9>
    %76 = shli %46, %70 {handshake.bb = 2 : ui32, handshake.name = "shli2"} : <i9>
    %77 = addi %75, %76 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i9>
    %78 = addi %57, %77 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i9>
    %addressResult_7, %dataResult_8 = load[%78] %outputs_1 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i9>, <i32>
    %79 = muli %dataResult, %dataResult_8 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %80 = buffer %50 {handshake.bb = 2 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %81 = buffer %80 {handshake.bb = 2 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %82 = addi %81, %79 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %83 = addi %59, %67 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i7>
    %84:2 = fork [2] %83 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i7>
    %86 = trunci %84#0 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i7> to <i6>
    %87 = buffer %84#1 {handshake.bb = 2 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %88 = cmpi ult, %87, %64 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i7>
    %89:4 = fork [4] %88 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i1>
    %trueResult_9, %falseResult_10 = cond_br %109#1, %28#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br15"} : <i1>, <i32>
    sink %trueResult_9 {handshake.name = "sink2"} : <i32>
    %trueResult_11, %falseResult_12 = cond_br %109#0, %106 {handshake.bb = 3 : ui32, handshake.name = "cond_br16"} : <i1>, <i6>
    sink %falseResult_12 {handshake.name = "sink3"} : <i6>
    %94 = constant %0#3 {handshake.bb = 3 : ui32, handshake.name = "constant18", value = 1 : i2} : <>, <i2>
    %95 = extsi %94 {handshake.bb = 3 : ui32, handshake.name = "extsi7"} : <i2> to <i32>
    %96 = source {handshake.bb = 3 : ui32, handshake.name = "source7"} : <>
    %97 = constant %96 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 20 : i6} : <>, <i6>
    %98 = extsi %97 {handshake.bb = 3 : ui32, handshake.name = "extsi20"} : <i6> to <i7>
    %99 = source {handshake.bb = 3 : ui32, handshake.name = "source8"} : <>
    %100 = constant %99 {handshake.bb = 3 : ui32, handshake.name = "constant20", value = 1 : i2} : <>, <i2>
    %101 = extsi %100 {handshake.bb = 3 : ui32, handshake.name = "extsi21"} : <i2> to <i7>
    %addressResult_13, %dataResult_14 = store[%17] %28#0 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i5>, <i32>
    %103 = addi %15, %101 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i7>
    %104:2 = fork [2] %103 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i7>
    %106 = trunci %104#0 {handshake.bb = 3 : ui32, handshake.name = "trunci4"} : <i7> to <i6>
    %107 = buffer %104#1 {handshake.bb = 3 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %108 = cmpi ult, %107, %98 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i7>
    %109:3 = fork [3] %108 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i1>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %falseResult_10, %memEnd_2, %memEnd_0, %memEnd, %0#4 : <i32>, <>, <>, <>, <>
  }
}


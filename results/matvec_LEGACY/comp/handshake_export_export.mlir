module {
  handshake.func @matvec(%arg0: memref<400xi32>, %arg1: memref<20xi32>, %arg2: memref<20xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["m", "v", "out", "m_start", "v_start", "out_start", "start"], resNames = ["out0", "m_end", "v_end", "out_end", "end"]} {
    %0:3 = fork [3] %arg6 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %memEnd = mem_controller[%arg2 : memref<20xi32>] %arg5 (%96, %addressResult_13, %dataResult_14) %118#2 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i32>, !handshake.channel<i5>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<20xi32>] %arg4 (%addressResult) %118#1 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller4"} :    (!handshake.channel<i5>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<400xi32>] %arg3 (%addressResult_5) %118#0 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i9>) -> !handshake.channel<i32>
    %5 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = false} : <>, <i1>
    %6 = extsi %5 {handshake.bb = 0 : ui32, handshake.name = "extsi11"} : <i1> to <i6>
    %8 = mux %index [%6, %trueResult_15] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i6>
    %result, %index = control_merge %0#2, %trueResult_17  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %9 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %10 = buffer %9 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %11:2 = fork [2] %10 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <>
    %13 = constant %11#0 {handshake.bb = 1 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %14:2 = fork [2] %13 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %16 = extsi %14#0 {handshake.bb = 1 : ui32, handshake.name = "extsi10"} : <i1> to <i6>
    %18 = extsi %14#1 {handshake.bb = 1 : ui32, handshake.name = "extsi12"} : <i1> to <i32>
    %19 = buffer %8 {handshake.bb = 1 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %20 = buffer %19 {handshake.bb = 1 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %23 = mux %45#1 [%16, %trueResult] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i6>
    %24 = buffer %23 {handshake.bb = 2 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %25 = buffer %24 {handshake.bb = 2 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %26:3 = fork [3] %25 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i6>
    %28 = extsi %26#0 {handshake.bb = 2 : ui32, handshake.name = "extsi13"} : <i6> to <i9>
    %30 = extsi %26#2 {handshake.bb = 2 : ui32, handshake.name = "extsi14"} : <i6> to <i7>
    %32 = trunci %26#1 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i6> to <i5>
    %33 = buffer %45#2 {handshake.bb = 2 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %34 = mux %33 [%18, %trueResult_7] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %36 = mux %45#0 [%20, %trueResult_9] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i6>
    %37 = buffer %36 {handshake.bb = 2 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %38 = buffer %37 {handshake.bb = 2 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %39:3 = fork [3] %38 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i6>
    %41 = trunci %39#0 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i6> to <i5>
    %42 = extsi %41 {handshake.bb = 2 : ui32, handshake.name = "extsi15"} : <i5> to <i9>
    %44 = extsi %39#2 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i6> to <i8>
    %result_3, %index_4 = control_merge %11#1, %trueResult_11  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %45:3 = fork [3] %index_4 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i1>
    %46 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %47 = constant %46 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = 20 : i6} : <>, <i6>
    %48 = extsi %47 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i6> to <i7>
    %49 = source {handshake.bb = 2 : ui32, handshake.name = "source1"} : <>
    %50 = constant %49 {handshake.bb = 2 : ui32, handshake.name = "constant14", value = 1 : i2} : <>, <i2>
    %51 = extsi %50 {handshake.bb = 2 : ui32, handshake.name = "extsi18"} : <i2> to <i7>
    %52 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %53 = constant %52 {handshake.bb = 2 : ui32, handshake.name = "constant15", value = 4 : i4} : <>, <i4>
    %54 = extui %53 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i4> to <i9>
    %55 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %56 = constant %55 {handshake.bb = 2 : ui32, handshake.name = "constant16", value = 2 : i3} : <>, <i3>
    %57 = extui %56 {handshake.bb = 2 : ui32, handshake.name = "extui1"} : <i3> to <i8>
    %addressResult, %dataResult = load[%32] %outputs {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i5>, <i32>
    %58 = shli %44, %57 {handshake.bb = 2 : ui32, handshake.name = "shli3"} : <i8>
    %59 = extsi %58 {handshake.bb = 2 : ui32, handshake.name = "extsi19"} : <i8> to <i9>
    %60 = shli %42, %54 {handshake.bb = 2 : ui32, handshake.name = "shli2"} : <i9>
    %61 = addi %59, %60 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i9>
    %62 = addi %28, %61 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i9>
    %addressResult_5, %dataResult_6 = load[%62] %outputs_1 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i9>, <i32>
    %63 = muli %dataResult, %dataResult_6 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %64 = buffer %34 {handshake.bb = 2 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %65 = buffer %64 {handshake.bb = 2 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %66 = addi %65, %63 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %67 = addi %30, %51 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i7>
    %68:2 = fork [2] %67 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i7>
    %70 = trunci %68#0 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i7> to <i6>
    %72 = cmpi ult, %68#1, %48 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i7>
    %73:4 = fork [4] %72 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i1>
    %trueResult, %falseResult = cond_br %73#0, %70 {handshake.bb = 2 : ui32, handshake.name = "cond_br2"} : <i1>, <i6>
    sink %falseResult {handshake.name = "sink0"} : <i6>
    %75 = buffer %73#2 {handshake.bb = 2 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_7, %falseResult_8 = cond_br %75, %66 {handshake.bb = 2 : ui32, handshake.name = "cond_br3"} : <i1>, <i32>
    %trueResult_9, %falseResult_10 = cond_br %73#1, %39#1 {handshake.bb = 2 : ui32, handshake.name = "cond_br4"} : <i1>, <i6>
    %78 = buffer %result_3 {handshake.bb = 2 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %79 = buffer %78 {handshake.bb = 2 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_11, %falseResult_12 = cond_br %73#3, %79 {handshake.bb = 2 : ui32, handshake.name = "cond_br5"} : <i1>, <>
    %81 = buffer %falseResult_10 {handshake.bb = 3 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %82 = buffer %81 {handshake.bb = 3 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %83:2 = fork [2] %82 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i6>
    %85 = extsi %83#1 {handshake.bb = 3 : ui32, handshake.name = "extsi20"} : <i6> to <i7>
    %87 = trunci %83#0 {handshake.bb = 3 : ui32, handshake.name = "trunci3"} : <i6> to <i5>
    %88 = buffer %falseResult_8 {handshake.bb = 3 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %89 = buffer %88 {handshake.bb = 3 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %90:2 = fork [2] %89 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i32>
    %91 = buffer %falseResult_12 {handshake.bb = 3 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %92 = buffer %91 {handshake.bb = 3 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %93:2 = fork [2] %92 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <>
    %95 = constant %93#0 {handshake.bb = 3 : ui32, handshake.name = "constant17", value = 1 : i2} : <>, <i2>
    %96 = extsi %95 {handshake.bb = 3 : ui32, handshake.name = "extsi7"} : <i2> to <i32>
    %97 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %98 = constant %97 {handshake.bb = 3 : ui32, handshake.name = "constant18", value = 20 : i6} : <>, <i6>
    %99 = extsi %98 {handshake.bb = 3 : ui32, handshake.name = "extsi21"} : <i6> to <i7>
    %100 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %101 = constant %100 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 1 : i2} : <>, <i2>
    %102 = extsi %101 {handshake.bb = 3 : ui32, handshake.name = "extsi22"} : <i2> to <i7>
    %addressResult_13, %dataResult_14 = store[%87] %90#0 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i5>, <i32>
    %104 = addi %85, %102 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i7>
    %105:2 = fork [2] %104 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i7>
    %107 = trunci %105#0 {handshake.bb = 3 : ui32, handshake.name = "trunci4"} : <i7> to <i6>
    %109 = cmpi ult, %105#1, %99 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i7>
    %110:3 = fork [3] %109 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i1>
    %trueResult_15, %falseResult_16 = cond_br %110#0, %107 {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <i6>
    sink %falseResult_16 {handshake.name = "sink2"} : <i6>
    %trueResult_17, %falseResult_18 = cond_br %110#1, %93#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %trueResult_19, %falseResult_20 = cond_br %110#2, %90#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    sink %trueResult_19 {handshake.name = "sink3"} : <i32>
    %116 = buffer %falseResult_18 {handshake.bb = 4 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %117 = buffer %116 {handshake.bb = 4 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %118:3 = fork [3] %117 {handshake.bb = 4 : ui32, handshake.name = "fork13"} : <>
    %119 = buffer %0#1 {handshake.bb = 4 : ui32, handshake.name = "buffer1", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %120 = buffer %falseResult_20 {handshake.bb = 4 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %121 = buffer %120 {handshake.bb = 4 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %121, %memEnd_2, %memEnd_0, %memEnd, %119 : <i32>, <>, <>, <>, <>
  }
}


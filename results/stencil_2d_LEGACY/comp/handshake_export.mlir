module {
  handshake.func @stencil_2d(%arg0: memref<900xi32>, %arg1: memref<10xi32>, %arg2: memref<900xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["orig", "filter", "sol", "orig_start", "filter_start", "sol_start", "start"], resNames = ["out0", "orig_end", "filter_end", "sol_end", "end"]} {
    %0:3 = fork [3] %arg6 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %memEnd = mem_controller[%arg2 : memref<900xi32>] %arg5 (%156, %addressResult_25, %dataResult_26) %178#2 {connectedBlocks = [5 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i32>, !handshake.channel<i10>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<10xi32>] %arg4 (%addressResult) %178#1 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller4"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<900xi32>] %arg3 (%addressResult_7) %178#0 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %5 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %6 = extsi %5 {handshake.bb = 0 : ui32, handshake.name = "extsi15"} : <i1> to <i6>
    %8 = mux %index [%6, %trueResult_27] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i6>
    %result, %index = control_merge %0#2, %trueResult_29  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %9 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %10 = buffer %9 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %11:2 = fork [2] %10 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <>
    %13 = constant %11#0 {handshake.bb = 1 : ui32, handshake.name = "constant4", value = false} : <>, <i1>
    %14:2 = fork [2] %13 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %16 = extsi %14#0 {handshake.bb = 1 : ui32, handshake.name = "extsi13"} : <i1> to <i3>
    %18 = extsi %14#1 {handshake.bb = 1 : ui32, handshake.name = "extsi16"} : <i1> to <i32>
    %19 = buffer %8 {handshake.bb = 1 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %20 = buffer %19 {handshake.bb = 1 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %23 = mux %28#1 [%16, %trueResult_17] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i3>
    %24 = buffer %28#2 {handshake.bb = 2 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %25 = mux %24 [%18, %trueResult_19] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %27 = mux %28#0 [%20, %trueResult_21] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i6>
    %result_3, %index_4 = control_merge %11#1, %trueResult_23  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %28:3 = fork [3] %index_4 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i1>
    %29 = buffer %result_3 {handshake.bb = 2 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %30 = buffer %29 {handshake.bb = 2 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %31:2 = fork [2] %30 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <>
    %33 = constant %31#0 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = false} : <>, <i1>
    %34 = extsi %33 {handshake.bb = 2 : ui32, handshake.name = "extsi12"} : <i1> to <i3>
    %35 = buffer %25 {handshake.bb = 2 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %36 = buffer %35 {handshake.bb = 2 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %37 = buffer %27 {handshake.bb = 2 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %38 = buffer %37 {handshake.bb = 2 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %39 = buffer %23 {handshake.bb = 2 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i3>
    %40 = buffer %39 {handshake.bb = 2 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %43 = mux %73#2 [%34, %trueResult] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i3>
    %44 = buffer %43 {handshake.bb = 3 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i3>
    %45 = buffer %44 {handshake.bb = 3 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %46:3 = fork [3] %45 {handshake.bb = 3 : ui32, handshake.name = "fork5"} : <i3>
    %47 = buffer %46#0 {handshake.bb = 3 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %48 = extsi %47 {handshake.bb = 3 : ui32, handshake.name = "extsi17"} : <i3> to <i4>
    %49 = buffer %46#1 {handshake.bb = 3 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %50 = extsi %49 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i3> to <i7>
    %52 = extsi %46#2 {handshake.bb = 3 : ui32, handshake.name = "extsi19"} : <i3> to <i4>
    %53 = buffer %73#3 {handshake.bb = 3 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %54 = mux %53 [%36, %trueResult_9] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %56 = mux %73#0 [%38, %trueResult_11] {handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <i6>
    %57 = buffer %56 {handshake.bb = 3 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %58 = buffer %57 {handshake.bb = 3 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %59:2 = fork [2] %58 {handshake.bb = 3 : ui32, handshake.name = "fork6"} : <i6>
    %60 = buffer %59#1 {handshake.bb = 3 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %61 = extsi %60 {handshake.bb = 3 : ui32, handshake.name = "extsi20"} : <i6> to <i7>
    %63 = mux %73#1 [%40, %trueResult_13] {handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <i3>
    %64 = buffer %63 {handshake.bb = 3 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i3>
    %65 = buffer %64 {handshake.bb = 3 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %66:4 = fork [4] %65 {handshake.bb = 3 : ui32, handshake.name = "fork7"} : <i3>
    %67 = buffer %66#0 {handshake.bb = 3 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %68 = extsi %67 {handshake.bb = 3 : ui32, handshake.name = "extsi21"} : <i3> to <i4>
    %70 = extsi %66#2 {handshake.bb = 3 : ui32, handshake.name = "extsi22"} : <i3> to <i9>
    %71 = buffer %66#3 {handshake.bb = 3 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %72 = extsi %71 {handshake.bb = 3 : ui32, handshake.name = "extsi23"} : <i3> to <i4>
    %result_5, %index_6 = control_merge %31#1, %trueResult_15  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %73:4 = fork [4] %index_6 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i1>
    %74 = source {handshake.bb = 3 : ui32, handshake.name = "source0"} : <>
    %75 = constant %74 {handshake.bb = 3 : ui32, handshake.name = "constant16", value = 30 : i6} : <>, <i6>
    %76 = extsi %75 {handshake.bb = 3 : ui32, handshake.name = "extsi24"} : <i6> to <i9>
    %77 = source {handshake.bb = 3 : ui32, handshake.name = "source1"} : <>
    %78 = constant %77 {handshake.bb = 3 : ui32, handshake.name = "constant17", value = 3 : i3} : <>, <i3>
    %79 = extsi %78 {handshake.bb = 3 : ui32, handshake.name = "extsi25"} : <i3> to <i4>
    %80 = source {handshake.bb = 3 : ui32, handshake.name = "source2"} : <>
    %81 = constant %80 {handshake.bb = 3 : ui32, handshake.name = "constant18", value = 1 : i2} : <>, <i2>
    %82:2 = fork [2] %81 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i2>
    %83 = buffer %82#0 {handshake.bb = 3 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %84 = extui %83 {handshake.bb = 3 : ui32, handshake.name = "extui0"} : <i2> to <i4>
    %86 = extsi %82#1 {handshake.bb = 3 : ui32, handshake.name = "extsi26"} : <i2> to <i4>
    %87 = shli %72, %84 {handshake.bb = 3 : ui32, handshake.name = "shli1"} : <i4>
    %88 = addi %68, %87 {handshake.bb = 3 : ui32, handshake.name = "addi7"} : <i4>
    %89 = addi %48, %88 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i4>
    %addressResult, %dataResult = load[%89] %outputs {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i4>, <i32>
    %90 = addi %50, %61 {handshake.bb = 3 : ui32, handshake.name = "addi2"} : <i7>
    %91 = extsi %90 {handshake.bb = 3 : ui32, handshake.name = "extsi27"} : <i7> to <i10>
    %92 = muli %70, %76 {handshake.bb = 3 : ui32, handshake.name = "muli2"} : <i9>
    %93 = extsi %92 {handshake.bb = 3 : ui32, handshake.name = "extsi28"} : <i9> to <i10>
    %94 = addi %91, %93 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i10>
    %addressResult_7, %dataResult_8 = load[%94] %outputs_1 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i10>, <i32>
    %95 = muli %dataResult, %dataResult_8 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %96 = buffer %54 {handshake.bb = 3 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %97 = buffer %96 {handshake.bb = 3 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %98 = addi %97, %95 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %99 = addi %52, %86 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i4>
    %100:2 = fork [2] %99 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i4>
    %102 = trunci %100#0 {handshake.bb = 3 : ui32, handshake.name = "trunci0"} : <i4> to <i3>
    %104 = cmpi ult, %100#1, %79 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i4>
    %105:5 = fork [5] %104 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i1>
    %trueResult, %falseResult = cond_br %105#0, %102 {handshake.bb = 3 : ui32, handshake.name = "cond_br3"} : <i1>, <i3>
    sink %falseResult {handshake.name = "sink0"} : <i3>
    %107 = buffer %105#3 {handshake.bb = 3 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_9, %falseResult_10 = cond_br %107, %98 {handshake.bb = 3 : ui32, handshake.name = "cond_br4"} : <i1>, <i32>
    %trueResult_11, %falseResult_12 = cond_br %105#1, %59#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br5"} : <i1>, <i6>
    %trueResult_13, %falseResult_14 = cond_br %105#2, %66#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <i3>
    %112 = buffer %result_5 {handshake.bb = 3 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %113 = buffer %112 {handshake.bb = 3 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_15, %falseResult_16 = cond_br %105#4, %113 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %115 = buffer %falseResult_14 {handshake.bb = 4 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i3>
    %116 = buffer %115 {handshake.bb = 4 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %117 = extsi %116 {handshake.bb = 4 : ui32, handshake.name = "extsi29"} : <i3> to <i4>
    %118 = source {handshake.bb = 4 : ui32, handshake.name = "source3"} : <>
    %119 = constant %118 {handshake.bb = 4 : ui32, handshake.name = "constant19", value = 3 : i3} : <>, <i3>
    %120 = extsi %119 {handshake.bb = 4 : ui32, handshake.name = "extsi30"} : <i3> to <i4>
    %121 = source {handshake.bb = 4 : ui32, handshake.name = "source4"} : <>
    %122 = constant %121 {handshake.bb = 4 : ui32, handshake.name = "constant20", value = 1 : i2} : <>, <i2>
    %123 = extsi %122 {handshake.bb = 4 : ui32, handshake.name = "extsi31"} : <i2> to <i4>
    %124 = addi %117, %123 {handshake.bb = 4 : ui32, handshake.name = "addi5"} : <i4>
    %125:2 = fork [2] %124 {handshake.bb = 4 : ui32, handshake.name = "fork12"} : <i4>
    %127 = trunci %125#0 {handshake.bb = 4 : ui32, handshake.name = "trunci1"} : <i4> to <i3>
    %129 = cmpi ult, %125#1, %120 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i4>
    %130:4 = fork [4] %129 {handshake.bb = 4 : ui32, handshake.name = "fork13"} : <i1>
    %trueResult_17, %falseResult_18 = cond_br %130#0, %127 {handshake.bb = 4 : ui32, handshake.name = "cond_br8"} : <i1>, <i3>
    sink %falseResult_18 {handshake.name = "sink2"} : <i3>
    %132 = buffer %falseResult_10 {handshake.bb = 4 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %133 = buffer %132 {handshake.bb = 4 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %134 = buffer %130#2 {handshake.bb = 4 : ui32, handshake.name = "buffer68", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_19, %falseResult_20 = cond_br %134, %133 {handshake.bb = 4 : ui32, handshake.name = "cond_br9"} : <i1>, <i32>
    %135 = buffer %falseResult_12 {handshake.bb = 4 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %136 = buffer %135 {handshake.bb = 4 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %trueResult_21, %falseResult_22 = cond_br %130#1, %136 {handshake.bb = 4 : ui32, handshake.name = "cond_br10"} : <i1>, <i6>
    %138 = buffer %falseResult_16 {handshake.bb = 4 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %139 = buffer %138 {handshake.bb = 4 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_23, %falseResult_24 = cond_br %130#3, %139 {handshake.bb = 4 : ui32, handshake.name = "cond_br11"} : <i1>, <>
    %141 = buffer %falseResult_22 {handshake.bb = 5 : ui32, handshake.name = "buffer70", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %142 = buffer %141 {handshake.bb = 5 : ui32, handshake.name = "buffer71", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %143:2 = fork [2] %142 {handshake.bb = 5 : ui32, handshake.name = "fork14"} : <i6>
    %145 = extsi %143#0 {handshake.bb = 5 : ui32, handshake.name = "extsi14"} : <i6> to <i10>
    %147 = extsi %143#1 {handshake.bb = 5 : ui32, handshake.name = "extsi32"} : <i6> to <i7>
    %148 = buffer %falseResult_20 {handshake.bb = 5 : ui32, handshake.name = "buffer74", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %149 = buffer %148 {handshake.bb = 5 : ui32, handshake.name = "buffer75", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %150:2 = fork [2] %149 {handshake.bb = 5 : ui32, handshake.name = "fork15"} : <i32>
    %151 = buffer %falseResult_24 {handshake.bb = 5 : ui32, handshake.name = "buffer78", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %152 = buffer %151 {handshake.bb = 5 : ui32, handshake.name = "buffer79", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %153:2 = fork [2] %152 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <>
    %155 = constant %153#0 {handshake.bb = 5 : ui32, handshake.name = "constant21", value = 1 : i2} : <>, <i2>
    %156 = extsi %155 {handshake.bb = 5 : ui32, handshake.name = "extsi9"} : <i2> to <i32>
    %157 = source {handshake.bb = 5 : ui32, handshake.name = "source5"} : <>
    %158 = constant %157 {handshake.bb = 5 : ui32, handshake.name = "constant22", value = 28 : i6} : <>, <i6>
    %159 = extsi %158 {handshake.bb = 5 : ui32, handshake.name = "extsi33"} : <i6> to <i7>
    %160 = source {handshake.bb = 5 : ui32, handshake.name = "source6"} : <>
    %161 = constant %160 {handshake.bb = 5 : ui32, handshake.name = "constant23", value = 1 : i2} : <>, <i2>
    %162 = extsi %161 {handshake.bb = 5 : ui32, handshake.name = "extsi34"} : <i2> to <i7>
    %addressResult_25, %dataResult_26 = store[%145] %150#0 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i10>, <i32>
    %164 = addi %147, %162 {handshake.bb = 5 : ui32, handshake.name = "addi6"} : <i7>
    %165:2 = fork [2] %164 {handshake.bb = 5 : ui32, handshake.name = "fork17"} : <i7>
    %167 = trunci %165#0 {handshake.bb = 5 : ui32, handshake.name = "trunci2"} : <i7> to <i6>
    %169 = cmpi ult, %165#1, %159 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i7>
    %170:3 = fork [3] %169 {handshake.bb = 5 : ui32, handshake.name = "fork18"} : <i1>
    %trueResult_27, %falseResult_28 = cond_br %170#0, %167 {handshake.bb = 5 : ui32, handshake.name = "cond_br12"} : <i1>, <i6>
    sink %falseResult_28 {handshake.name = "sink4"} : <i6>
    %trueResult_29, %falseResult_30 = cond_br %170#1, %153#1 {handshake.bb = 5 : ui32, handshake.name = "cond_br13"} : <i1>, <>
    %trueResult_31, %falseResult_32 = cond_br %170#2, %150#1 {handshake.bb = 5 : ui32, handshake.name = "cond_br14"} : <i1>, <i32>
    sink %trueResult_31 {handshake.name = "sink5"} : <i32>
    %176 = buffer %falseResult_30 {handshake.bb = 6 : ui32, handshake.name = "buffer89", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %177 = buffer %176 {handshake.bb = 6 : ui32, handshake.name = "buffer90", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %178:3 = fork [3] %177 {handshake.bb = 6 : ui32, handshake.name = "fork19"} : <>
    %180 = buffer %falseResult_32 {handshake.bb = 6 : ui32, handshake.name = "buffer87", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %181 = buffer %180 {handshake.bb = 6 : ui32, handshake.name = "buffer88", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %181, %memEnd_2, %memEnd_0, %memEnd, %0#1 : <i32>, <>, <>, <>, <>
  }
}


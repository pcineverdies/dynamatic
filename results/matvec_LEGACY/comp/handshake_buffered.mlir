module {
  handshake.func @matvec(%arg0: memref<400xi32>, %arg1: memref<20xi32>, %arg2: memref<20xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["m", "v", "out", "m_start", "v_start", "out_start", "start"], resNames = ["out0", "m_end", "v_end", "out_end", "end"]} {
    %0:3 = fork [3] %arg6 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1 = buffer %127#2 {handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %memEnd = mem_controller[%arg2 : memref<20xi32>] %arg5 (%104, %addressResult_15, %dataResult_16) %1 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i32>, !handshake.channel<i5>, !handshake.channel<i32>) -> ()
    %2 = buffer %127#1 {handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<20xi32>] %arg4 (%addressResult) %2 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller4"} :    (!handshake.channel<i5>) -> !handshake.channel<i32>
    %3 = buffer %127#0 {handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<400xi32>] %arg3 (%addressResult_5) %3 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i9>) -> !handshake.channel<i32>
    %4 = buffer %0#0 {handshake.bb = 0 : ui32, handshake.name = "buffer0", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %5 = constant %4 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = false} : <>, <i1>
    %6 = br %5 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <i1>
    %7 = extsi %6 {handshake.bb = 0 : ui32, handshake.name = "extsi11"} : <i1> to <i6>
    %8 = buffer %0#2 {handshake.bb = 0 : ui32, handshake.name = "buffer2", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %9 = br %8 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %10 = mux %index [%7, %trueResult_17] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i6>
    %result, %index = control_merge %9, %trueResult_19  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %11 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %12 = buffer %11 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %13:2 = fork [2] %12 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <>
    %14 = buffer %13#0 {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %15 = constant %14 {handshake.bb = 1 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %16:2 = fork [2] %15 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %17 = buffer %16#0 {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %18 = br %17 {handshake.bb = 1 : ui32, handshake.name = "br4"} : <i1>
    %19 = extsi %18 {handshake.bb = 1 : ui32, handshake.name = "extsi10"} : <i1> to <i6>
    %20 = buffer %16#1 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %21 = br %20 {handshake.bb = 1 : ui32, handshake.name = "br5"} : <i1>
    %22 = extsi %21 {handshake.bb = 1 : ui32, handshake.name = "extsi12"} : <i1> to <i32>
    %23 = buffer %10 {handshake.bb = 1 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %24 = buffer %23 {handshake.bb = 1 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %25 = br %24 {handshake.bb = 1 : ui32, handshake.name = "br6"} : <i6>
    %26 = buffer %13#1 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %27 = br %26 {handshake.bb = 1 : ui32, handshake.name = "br7"} : <>
    %28 = buffer %51#1 {handshake.bb = 2 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %29 = mux %28 [%19, %trueResult] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i6>
    %30 = buffer %29 {handshake.bb = 2 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %31 = buffer %30 {handshake.bb = 2 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %32:3 = fork [3] %31 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i6>
    %33 = buffer %32#0 {handshake.bb = 2 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %34 = extsi %33 {handshake.bb = 2 : ui32, handshake.name = "extsi13"} : <i6> to <i9>
    %35 = buffer %32#2 {handshake.bb = 2 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %36 = extsi %35 {handshake.bb = 2 : ui32, handshake.name = "extsi14"} : <i6> to <i7>
    %37 = buffer %32#1 {handshake.bb = 2 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %38 = trunci %37 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i6> to <i5>
    %39 = buffer %51#2 {handshake.bb = 2 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %40 = mux %39 [%22, %trueResult_7] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %41 = buffer %51#0 {handshake.bb = 2 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %42 = mux %41 [%25, %trueResult_9] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i6>
    %43 = buffer %42 {handshake.bb = 2 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %44 = buffer %43 {handshake.bb = 2 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %45:3 = fork [3] %44 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i6>
    %46 = buffer %45#0 {handshake.bb = 2 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %47 = trunci %46 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i6> to <i5>
    %48 = extsi %47 {handshake.bb = 2 : ui32, handshake.name = "extsi15"} : <i5> to <i9>
    %49 = buffer %45#2 {handshake.bb = 2 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %50 = extsi %49 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i6> to <i8>
    %result_3, %index_4 = control_merge %27, %trueResult_11  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %51:3 = fork [3] %index_4 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i1>
    %52 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %53 = constant %52 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = 20 : i6} : <>, <i6>
    %54 = extsi %53 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i6> to <i7>
    %55 = source {handshake.bb = 2 : ui32, handshake.name = "source1"} : <>
    %56 = constant %55 {handshake.bb = 2 : ui32, handshake.name = "constant14", value = 1 : i2} : <>, <i2>
    %57 = extsi %56 {handshake.bb = 2 : ui32, handshake.name = "extsi18"} : <i2> to <i7>
    %58 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %59 = constant %58 {handshake.bb = 2 : ui32, handshake.name = "constant15", value = 4 : i4} : <>, <i4>
    %60 = extui %59 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i4> to <i9>
    %61 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %62 = constant %61 {handshake.bb = 2 : ui32, handshake.name = "constant16", value = 2 : i3} : <>, <i3>
    %63 = extui %62 {handshake.bb = 2 : ui32, handshake.name = "extui1"} : <i3> to <i8>
    %addressResult, %dataResult = load[%38] %outputs {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i5>, <i32>
    %64 = shli %50, %63 {handshake.bb = 2 : ui32, handshake.name = "shli3"} : <i8>
    %65 = extsi %64 {handshake.bb = 2 : ui32, handshake.name = "extsi19"} : <i8> to <i9>
    %66 = shli %48, %60 {handshake.bb = 2 : ui32, handshake.name = "shli2"} : <i9>
    %67 = addi %65, %66 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i9>
    %68 = addi %34, %67 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i9>
    %addressResult_5, %dataResult_6 = load[%68] %outputs_1 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i9>, <i32>
    %69 = muli %dataResult, %dataResult_6 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %70 = buffer %40 {handshake.bb = 2 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %71 = buffer %70 {handshake.bb = 2 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %72 = addi %71, %69 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %73 = addi %36, %57 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i7>
    %74:2 = fork [2] %73 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i7>
    %75 = buffer %74#0 {handshake.bb = 2 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %76 = trunci %75 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i7> to <i6>
    %77 = buffer %74#1 {handshake.bb = 2 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %78 = cmpi ult, %77, %54 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i7>
    %79:4 = fork [4] %78 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i1>
    %80 = buffer %79#0 {handshake.bb = 2 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult, %falseResult = cond_br %80, %76 {handshake.bb = 2 : ui32, handshake.name = "cond_br2"} : <i1>, <i6>
    sink %falseResult {handshake.name = "sink0"} : <i6>
    %81 = buffer %79#2 {handshake.bb = 2 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_7, %falseResult_8 = cond_br %81, %72 {handshake.bb = 2 : ui32, handshake.name = "cond_br3"} : <i1>, <i32>
    %82 = buffer %45#1 {handshake.bb = 2 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %83 = buffer %79#1 {handshake.bb = 2 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_9, %falseResult_10 = cond_br %83, %82 {handshake.bb = 2 : ui32, handshake.name = "cond_br4"} : <i1>, <i6>
    %84 = buffer %result_3 {handshake.bb = 2 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %85 = buffer %84 {handshake.bb = 2 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %86 = buffer %79#3 {handshake.bb = 2 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_11, %falseResult_12 = cond_br %86, %85 {handshake.bb = 2 : ui32, handshake.name = "cond_br5"} : <i1>, <>
    %87 = merge %falseResult_10 {handshake.bb = 3 : ui32, handshake.name = "merge0"} : <i6>
    %88 = buffer %87 {handshake.bb = 3 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %89 = buffer %88 {handshake.bb = 3 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %90:2 = fork [2] %89 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i6>
    %91 = buffer %90#1 {handshake.bb = 3 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %92 = extsi %91 {handshake.bb = 3 : ui32, handshake.name = "extsi20"} : <i6> to <i7>
    %93 = buffer %90#0 {handshake.bb = 3 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %94 = trunci %93 {handshake.bb = 3 : ui32, handshake.name = "trunci3"} : <i6> to <i5>
    %95 = merge %falseResult_8 {handshake.bb = 3 : ui32, handshake.name = "merge1"} : <i32>
    %96 = buffer %95 {handshake.bb = 3 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %97 = buffer %96 {handshake.bb = 3 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %98:2 = fork [2] %97 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i32>
    %result_13, %index_14 = control_merge %falseResult_12  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    sink %index_14 {handshake.name = "sink1"} : <i1>
    %99 = buffer %result_13 {handshake.bb = 3 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %100 = buffer %99 {handshake.bb = 3 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %101:2 = fork [2] %100 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <>
    %102 = buffer %101#0 {handshake.bb = 3 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %103 = constant %102 {handshake.bb = 3 : ui32, handshake.name = "constant17", value = 1 : i2} : <>, <i2>
    %104 = extsi %103 {handshake.bb = 3 : ui32, handshake.name = "extsi7"} : <i2> to <i32>
    %105 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %106 = constant %105 {handshake.bb = 3 : ui32, handshake.name = "constant18", value = 20 : i6} : <>, <i6>
    %107 = extsi %106 {handshake.bb = 3 : ui32, handshake.name = "extsi21"} : <i6> to <i7>
    %108 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %109 = constant %108 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 1 : i2} : <>, <i2>
    %110 = extsi %109 {handshake.bb = 3 : ui32, handshake.name = "extsi22"} : <i2> to <i7>
    %111 = buffer %98#0 {handshake.bb = 3 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %addressResult_15, %dataResult_16 = store[%94] %111 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i5>, <i32>
    %112 = addi %92, %110 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i7>
    %113:2 = fork [2] %112 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i7>
    %114 = buffer %113#0 {handshake.bb = 3 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %115 = trunci %114 {handshake.bb = 3 : ui32, handshake.name = "trunci4"} : <i7> to <i6>
    %116 = buffer %113#1 {handshake.bb = 3 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %117 = cmpi ult, %116, %107 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i7>
    %118:3 = fork [3] %117 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i1>
    %119 = buffer %118#0 {handshake.bb = 3 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_17, %falseResult_18 = cond_br %119, %115 {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <i6>
    sink %falseResult_18 {handshake.name = "sink2"} : <i6>
    %120 = buffer %101#1 {handshake.bb = 3 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %121 = buffer %118#1 {handshake.bb = 3 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_19, %falseResult_20 = cond_br %121, %120 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %122 = buffer %98#1 {handshake.bb = 3 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %123 = buffer %118#2 {handshake.bb = 3 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_21, %falseResult_22 = cond_br %123, %122 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    sink %trueResult_21 {handshake.name = "sink3"} : <i32>
    %124 = merge %falseResult_22 {handshake.bb = 4 : ui32, handshake.name = "merge2"} : <i32>
    %result_23, %index_24 = control_merge %falseResult_20  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_24 {handshake.name = "sink4"} : <i1>
    %125 = buffer %result_23 {handshake.bb = 4 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %126 = buffer %125 {handshake.bb = 4 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %127:3 = fork [3] %126 {handshake.bb = 4 : ui32, handshake.name = "fork13"} : <>
    %128 = buffer %0#1 {handshake.bb = 4 : ui32, handshake.name = "buffer1", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %129 = buffer %124 {handshake.bb = 4 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %130 = buffer %129 {handshake.bb = 4 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %130, %memEnd_2, %memEnd_0, %memEnd, %128 : <i32>, <>, <>, <>, <>
  }
}


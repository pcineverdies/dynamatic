module {
  handshake.func @stencil_2d(%arg0: memref<900xi32>, %arg1: memref<10xi32>, %arg2: memref<900xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["orig", "filter", "sol", "orig_start", "filter_start", "sol_start", "start"], resNames = ["out0", "orig_end", "filter_end", "sol_end", "end"]} {
    %0:3 = fork [3] %arg6 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1 = buffer %195#2 {handshake.name = "buffer93", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %memEnd = mem_controller[%arg2 : memref<900xi32>] %arg5 (%172, %addressResult_29, %dataResult_30) %1 {connectedBlocks = [5 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i32>, !handshake.channel<i10>, !handshake.channel<i32>) -> ()
    %2 = buffer %195#1 {handshake.name = "buffer92", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<10xi32>] %arg4 (%addressResult) %2 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller4"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %3 = buffer %195#0 {handshake.name = "buffer91", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<900xi32>] %arg3 (%addressResult_7) %3 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %4 = buffer %0#0 {handshake.bb = 0 : ui32, handshake.name = "buffer0", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %5 = constant %4 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %6 = br %5 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <i1>
    %7 = extsi %6 {handshake.bb = 0 : ui32, handshake.name = "extsi15"} : <i1> to <i6>
    %8 = buffer %0#2 {handshake.bb = 0 : ui32, handshake.name = "buffer2", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %9 = br %8 {handshake.bb = 0 : ui32, handshake.name = "br4"} : <>
    %10 = mux %index [%7, %trueResult_31] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i6>
    %result, %index = control_merge %9, %trueResult_33  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %11 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %12 = buffer %11 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %13:2 = fork [2] %12 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <>
    %14 = buffer %13#0 {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %15 = constant %14 {handshake.bb = 1 : ui32, handshake.name = "constant4", value = false} : <>, <i1>
    %16:2 = fork [2] %15 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %17 = buffer %16#0 {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %18 = br %17 {handshake.bb = 1 : ui32, handshake.name = "br5"} : <i1>
    %19 = extsi %18 {handshake.bb = 1 : ui32, handshake.name = "extsi13"} : <i1> to <i3>
    %20 = buffer %16#1 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %21 = br %20 {handshake.bb = 1 : ui32, handshake.name = "br6"} : <i1>
    %22 = extsi %21 {handshake.bb = 1 : ui32, handshake.name = "extsi16"} : <i1> to <i32>
    %23 = buffer %10 {handshake.bb = 1 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %24 = buffer %23 {handshake.bb = 1 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %25 = br %24 {handshake.bb = 1 : ui32, handshake.name = "br7"} : <i6>
    %26 = buffer %13#1 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %27 = br %26 {handshake.bb = 1 : ui32, handshake.name = "br8"} : <>
    %28 = buffer %34#1 {handshake.bb = 2 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %29 = mux %28 [%19, %trueResult_19] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i3>
    %30 = buffer %34#2 {handshake.bb = 2 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %31 = mux %30 [%22, %trueResult_21] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %32 = buffer %34#0 {handshake.bb = 2 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %33 = mux %32 [%25, %trueResult_23] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i6>
    %result_3, %index_4 = control_merge %27, %trueResult_25  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %34:3 = fork [3] %index_4 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i1>
    %35 = buffer %result_3 {handshake.bb = 2 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %36 = buffer %35 {handshake.bb = 2 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %37:2 = fork [2] %36 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <>
    %38 = buffer %37#0 {handshake.bb = 2 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %39 = constant %38 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = false} : <>, <i1>
    %40 = br %39 {handshake.bb = 2 : ui32, handshake.name = "br9"} : <i1>
    %41 = extsi %40 {handshake.bb = 2 : ui32, handshake.name = "extsi12"} : <i1> to <i3>
    %42 = buffer %31 {handshake.bb = 2 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %43 = buffer %42 {handshake.bb = 2 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %44 = br %43 {handshake.bb = 2 : ui32, handshake.name = "br10"} : <i32>
    %45 = buffer %33 {handshake.bb = 2 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %46 = buffer %45 {handshake.bb = 2 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %47 = br %46 {handshake.bb = 2 : ui32, handshake.name = "br11"} : <i6>
    %48 = buffer %29 {handshake.bb = 2 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i3>
    %49 = buffer %48 {handshake.bb = 2 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %50 = br %49 {handshake.bb = 2 : ui32, handshake.name = "br12"} : <i3>
    %51 = buffer %37#1 {handshake.bb = 2 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %52 = br %51 {handshake.bb = 2 : ui32, handshake.name = "br13"} : <>
    %53 = buffer %84#2 {handshake.bb = 3 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %54 = mux %53 [%41, %trueResult] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i3>
    %55 = buffer %54 {handshake.bb = 3 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i3>
    %56 = buffer %55 {handshake.bb = 3 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %57:3 = fork [3] %56 {handshake.bb = 3 : ui32, handshake.name = "fork5"} : <i3>
    %58 = buffer %57#0 {handshake.bb = 3 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %59 = extsi %58 {handshake.bb = 3 : ui32, handshake.name = "extsi17"} : <i3> to <i4>
    %60 = buffer %57#1 {handshake.bb = 3 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %61 = extsi %60 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i3> to <i7>
    %62 = buffer %57#2 {handshake.bb = 3 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %63 = extsi %62 {handshake.bb = 3 : ui32, handshake.name = "extsi19"} : <i3> to <i4>
    %64 = buffer %84#3 {handshake.bb = 3 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %65 = mux %64 [%44, %trueResult_9] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %66 = buffer %84#0 {handshake.bb = 3 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %67 = mux %66 [%47, %trueResult_11] {handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <i6>
    %68 = buffer %67 {handshake.bb = 3 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %69 = buffer %68 {handshake.bb = 3 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %70:2 = fork [2] %69 {handshake.bb = 3 : ui32, handshake.name = "fork6"} : <i6>
    %71 = buffer %70#1 {handshake.bb = 3 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %72 = extsi %71 {handshake.bb = 3 : ui32, handshake.name = "extsi20"} : <i6> to <i7>
    %73 = buffer %84#1 {handshake.bb = 3 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %74 = mux %73 [%50, %trueResult_13] {handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <i3>
    %75 = buffer %74 {handshake.bb = 3 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i3>
    %76 = buffer %75 {handshake.bb = 3 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %77:4 = fork [4] %76 {handshake.bb = 3 : ui32, handshake.name = "fork7"} : <i3>
    %78 = buffer %77#0 {handshake.bb = 3 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %79 = extsi %78 {handshake.bb = 3 : ui32, handshake.name = "extsi21"} : <i3> to <i4>
    %80 = buffer %77#2 {handshake.bb = 3 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %81 = extsi %80 {handshake.bb = 3 : ui32, handshake.name = "extsi22"} : <i3> to <i9>
    %82 = buffer %77#3 {handshake.bb = 3 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %83 = extsi %82 {handshake.bb = 3 : ui32, handshake.name = "extsi23"} : <i3> to <i4>
    %result_5, %index_6 = control_merge %52, %trueResult_15  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %84:4 = fork [4] %index_6 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i1>
    %85 = source {handshake.bb = 3 : ui32, handshake.name = "source0"} : <>
    %86 = constant %85 {handshake.bb = 3 : ui32, handshake.name = "constant16", value = 30 : i6} : <>, <i6>
    %87 = extsi %86 {handshake.bb = 3 : ui32, handshake.name = "extsi24"} : <i6> to <i9>
    %88 = source {handshake.bb = 3 : ui32, handshake.name = "source1"} : <>
    %89 = constant %88 {handshake.bb = 3 : ui32, handshake.name = "constant17", value = 3 : i3} : <>, <i3>
    %90 = extsi %89 {handshake.bb = 3 : ui32, handshake.name = "extsi25"} : <i3> to <i4>
    %91 = source {handshake.bb = 3 : ui32, handshake.name = "source2"} : <>
    %92 = constant %91 {handshake.bb = 3 : ui32, handshake.name = "constant18", value = 1 : i2} : <>, <i2>
    %93:2 = fork [2] %92 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i2>
    %94 = buffer %93#0 {handshake.bb = 3 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %95 = extui %94 {handshake.bb = 3 : ui32, handshake.name = "extui0"} : <i2> to <i4>
    %96 = buffer %93#1 {handshake.bb = 3 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %97 = extsi %96 {handshake.bb = 3 : ui32, handshake.name = "extsi26"} : <i2> to <i4>
    %98 = shli %83, %95 {handshake.bb = 3 : ui32, handshake.name = "shli1"} : <i4>
    %99 = addi %79, %98 {handshake.bb = 3 : ui32, handshake.name = "addi7"} : <i4>
    %100 = addi %59, %99 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i4>
    %addressResult, %dataResult = load[%100] %outputs {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i4>, <i32>
    %101 = addi %61, %72 {handshake.bb = 3 : ui32, handshake.name = "addi2"} : <i7>
    %102 = extsi %101 {handshake.bb = 3 : ui32, handshake.name = "extsi27"} : <i7> to <i10>
    %103 = muli %81, %87 {handshake.bb = 3 : ui32, handshake.name = "muli2"} : <i9>
    %104 = extsi %103 {handshake.bb = 3 : ui32, handshake.name = "extsi28"} : <i9> to <i10>
    %105 = addi %102, %104 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i10>
    %addressResult_7, %dataResult_8 = load[%105] %outputs_1 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i10>, <i32>
    %106 = muli %dataResult, %dataResult_8 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %107 = buffer %65 {handshake.bb = 3 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %108 = buffer %107 {handshake.bb = 3 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %109 = addi %108, %106 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %110 = addi %63, %97 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i4>
    %111:2 = fork [2] %110 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i4>
    %112 = buffer %111#0 {handshake.bb = 3 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %113 = trunci %112 {handshake.bb = 3 : ui32, handshake.name = "trunci0"} : <i4> to <i3>
    %114 = buffer %111#1 {handshake.bb = 3 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %115 = cmpi ult, %114, %90 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i4>
    %116:5 = fork [5] %115 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i1>
    %117 = buffer %116#0 {handshake.bb = 3 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult, %falseResult = cond_br %117, %113 {handshake.bb = 3 : ui32, handshake.name = "cond_br3"} : <i1>, <i3>
    sink %falseResult {handshake.name = "sink0"} : <i3>
    %118 = buffer %116#3 {handshake.bb = 3 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_9, %falseResult_10 = cond_br %118, %109 {handshake.bb = 3 : ui32, handshake.name = "cond_br4"} : <i1>, <i32>
    %119 = buffer %70#0 {handshake.bb = 3 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %120 = buffer %116#1 {handshake.bb = 3 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_11, %falseResult_12 = cond_br %120, %119 {handshake.bb = 3 : ui32, handshake.name = "cond_br5"} : <i1>, <i6>
    %121 = buffer %77#1 {handshake.bb = 3 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %122 = buffer %116#2 {handshake.bb = 3 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_13, %falseResult_14 = cond_br %122, %121 {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <i3>
    %123 = buffer %result_5 {handshake.bb = 3 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %124 = buffer %123 {handshake.bb = 3 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %125 = buffer %116#4 {handshake.bb = 3 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_15, %falseResult_16 = cond_br %125, %124 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %126 = merge %falseResult_12 {handshake.bb = 4 : ui32, handshake.name = "merge0"} : <i6>
    %127 = merge %falseResult_14 {handshake.bb = 4 : ui32, handshake.name = "merge1"} : <i3>
    %128 = buffer %127 {handshake.bb = 4 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i3>
    %129 = buffer %128 {handshake.bb = 4 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %130 = extsi %129 {handshake.bb = 4 : ui32, handshake.name = "extsi29"} : <i3> to <i4>
    %131 = merge %falseResult_10 {handshake.bb = 4 : ui32, handshake.name = "merge2"} : <i32>
    %result_17, %index_18 = control_merge %falseResult_16  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_18 {handshake.name = "sink1"} : <i1>
    %132 = source {handshake.bb = 4 : ui32, handshake.name = "source3"} : <>
    %133 = constant %132 {handshake.bb = 4 : ui32, handshake.name = "constant19", value = 3 : i3} : <>, <i3>
    %134 = extsi %133 {handshake.bb = 4 : ui32, handshake.name = "extsi30"} : <i3> to <i4>
    %135 = source {handshake.bb = 4 : ui32, handshake.name = "source4"} : <>
    %136 = constant %135 {handshake.bb = 4 : ui32, handshake.name = "constant20", value = 1 : i2} : <>, <i2>
    %137 = extsi %136 {handshake.bb = 4 : ui32, handshake.name = "extsi31"} : <i2> to <i4>
    %138 = addi %130, %137 {handshake.bb = 4 : ui32, handshake.name = "addi5"} : <i4>
    %139:2 = fork [2] %138 {handshake.bb = 4 : ui32, handshake.name = "fork12"} : <i4>
    %140 = buffer %139#0 {handshake.bb = 4 : ui32, handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %141 = trunci %140 {handshake.bb = 4 : ui32, handshake.name = "trunci1"} : <i4> to <i3>
    %142 = buffer %139#1 {handshake.bb = 4 : ui32, handshake.name = "buffer65", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %143 = cmpi ult, %142, %134 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i4>
    %144:4 = fork [4] %143 {handshake.bb = 4 : ui32, handshake.name = "fork13"} : <i1>
    %145 = buffer %144#0 {handshake.bb = 4 : ui32, handshake.name = "buffer66", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_19, %falseResult_20 = cond_br %145, %141 {handshake.bb = 4 : ui32, handshake.name = "cond_br8"} : <i1>, <i3>
    sink %falseResult_20 {handshake.name = "sink2"} : <i3>
    %146 = buffer %131 {handshake.bb = 4 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %147 = buffer %146 {handshake.bb = 4 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %148 = buffer %144#2 {handshake.bb = 4 : ui32, handshake.name = "buffer68", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_21, %falseResult_22 = cond_br %148, %147 {handshake.bb = 4 : ui32, handshake.name = "cond_br9"} : <i1>, <i32>
    %149 = buffer %126 {handshake.bb = 4 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %150 = buffer %149 {handshake.bb = 4 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %151 = buffer %144#1 {handshake.bb = 4 : ui32, handshake.name = "buffer67", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_23, %falseResult_24 = cond_br %151, %150 {handshake.bb = 4 : ui32, handshake.name = "cond_br10"} : <i1>, <i6>
    %152 = buffer %result_17 {handshake.bb = 4 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %153 = buffer %152 {handshake.bb = 4 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %154 = buffer %144#3 {handshake.bb = 4 : ui32, handshake.name = "buffer69", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_25, %falseResult_26 = cond_br %154, %153 {handshake.bb = 4 : ui32, handshake.name = "cond_br11"} : <i1>, <>
    %155 = merge %falseResult_24 {handshake.bb = 5 : ui32, handshake.name = "merge3"} : <i6>
    %156 = buffer %155 {handshake.bb = 5 : ui32, handshake.name = "buffer70", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %157 = buffer %156 {handshake.bb = 5 : ui32, handshake.name = "buffer71", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %158:2 = fork [2] %157 {handshake.bb = 5 : ui32, handshake.name = "fork14"} : <i6>
    %159 = buffer %158#0 {handshake.bb = 5 : ui32, handshake.name = "buffer72", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %160 = extsi %159 {handshake.bb = 5 : ui32, handshake.name = "extsi14"} : <i6> to <i10>
    %161 = buffer %158#1 {handshake.bb = 5 : ui32, handshake.name = "buffer73", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %162 = extsi %161 {handshake.bb = 5 : ui32, handshake.name = "extsi32"} : <i6> to <i7>
    %163 = merge %falseResult_22 {handshake.bb = 5 : ui32, handshake.name = "merge4"} : <i32>
    %164 = buffer %163 {handshake.bb = 5 : ui32, handshake.name = "buffer74", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %165 = buffer %164 {handshake.bb = 5 : ui32, handshake.name = "buffer75", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %166:2 = fork [2] %165 {handshake.bb = 5 : ui32, handshake.name = "fork15"} : <i32>
    %result_27, %index_28 = control_merge %falseResult_26  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    sink %index_28 {handshake.name = "sink3"} : <i1>
    %167 = buffer %result_27 {handshake.bb = 5 : ui32, handshake.name = "buffer78", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %168 = buffer %167 {handshake.bb = 5 : ui32, handshake.name = "buffer79", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %169:2 = fork [2] %168 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <>
    %170 = buffer %169#0 {handshake.bb = 5 : ui32, handshake.name = "buffer80", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %171 = constant %170 {handshake.bb = 5 : ui32, handshake.name = "constant21", value = 1 : i2} : <>, <i2>
    %172 = extsi %171 {handshake.bb = 5 : ui32, handshake.name = "extsi9"} : <i2> to <i32>
    %173 = source {handshake.bb = 5 : ui32, handshake.name = "source5"} : <>
    %174 = constant %173 {handshake.bb = 5 : ui32, handshake.name = "constant22", value = 28 : i6} : <>, <i6>
    %175 = extsi %174 {handshake.bb = 5 : ui32, handshake.name = "extsi33"} : <i6> to <i7>
    %176 = source {handshake.bb = 5 : ui32, handshake.name = "source6"} : <>
    %177 = constant %176 {handshake.bb = 5 : ui32, handshake.name = "constant23", value = 1 : i2} : <>, <i2>
    %178 = extsi %177 {handshake.bb = 5 : ui32, handshake.name = "extsi34"} : <i2> to <i7>
    %179 = buffer %166#0 {handshake.bb = 5 : ui32, handshake.name = "buffer76", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %addressResult_29, %dataResult_30 = store[%160] %179 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i10>, <i32>
    %180 = addi %162, %178 {handshake.bb = 5 : ui32, handshake.name = "addi6"} : <i7>
    %181:2 = fork [2] %180 {handshake.bb = 5 : ui32, handshake.name = "fork17"} : <i7>
    %182 = buffer %181#0 {handshake.bb = 5 : ui32, handshake.name = "buffer82", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %183 = trunci %182 {handshake.bb = 5 : ui32, handshake.name = "trunci2"} : <i7> to <i6>
    %184 = buffer %181#1 {handshake.bb = 5 : ui32, handshake.name = "buffer83", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %185 = cmpi ult, %184, %175 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i7>
    %186:3 = fork [3] %185 {handshake.bb = 5 : ui32, handshake.name = "fork18"} : <i1>
    %187 = buffer %186#0 {handshake.bb = 5 : ui32, handshake.name = "buffer84", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_31, %falseResult_32 = cond_br %187, %183 {handshake.bb = 5 : ui32, handshake.name = "cond_br12"} : <i1>, <i6>
    sink %falseResult_32 {handshake.name = "sink4"} : <i6>
    %188 = buffer %169#1 {handshake.bb = 5 : ui32, handshake.name = "buffer81", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %189 = buffer %186#1 {handshake.bb = 5 : ui32, handshake.name = "buffer85", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_33, %falseResult_34 = cond_br %189, %188 {handshake.bb = 5 : ui32, handshake.name = "cond_br13"} : <i1>, <>
    %190 = buffer %166#1 {handshake.bb = 5 : ui32, handshake.name = "buffer77", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %191 = buffer %186#2 {handshake.bb = 5 : ui32, handshake.name = "buffer86", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_35, %falseResult_36 = cond_br %191, %190 {handshake.bb = 5 : ui32, handshake.name = "cond_br14"} : <i1>, <i32>
    sink %trueResult_35 {handshake.name = "sink5"} : <i32>
    %192 = merge %falseResult_36 {handshake.bb = 6 : ui32, handshake.name = "merge5"} : <i32>
    %result_37, %index_38 = control_merge %falseResult_34  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    sink %index_38 {handshake.name = "sink6"} : <i1>
    %193 = buffer %result_37 {handshake.bb = 6 : ui32, handshake.name = "buffer89", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %194 = buffer %193 {handshake.bb = 6 : ui32, handshake.name = "buffer90", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %195:3 = fork [3] %194 {handshake.bb = 6 : ui32, handshake.name = "fork19"} : <>
    %196 = buffer %0#1 {handshake.bb = 6 : ui32, handshake.name = "buffer1", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %197 = buffer %192 {handshake.bb = 6 : ui32, handshake.name = "buffer87", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %198 = buffer %197 {handshake.bb = 6 : ui32, handshake.name = "buffer88", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %198, %memEnd_2, %memEnd_0, %memEnd, %196 : <i32>, <>, <>, <>, <>
  }
}


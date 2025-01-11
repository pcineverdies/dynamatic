module {
  handshake.func @stencil_2d(%arg0: memref<900xi32>, %arg1: memref<10xi32>, %arg2: memref<900xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["orig", "filter", "sol", "orig_start", "filter_start", "sol_start", "start"], cfg.edges = "[0,1][2,3][4,2,5,cmpi1][1,2][3,3,4,cmpi0][5,1,6,cmpi2]", resNames = ["out0", "orig_end", "filter_end", "sol_end", "end"]} {
    %0:8 = fork [8] %arg6 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1 = buffer %0#2 {handshake.name = "buffer2", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %memEnd = mem_controller[%arg2 : memref<900xi32>] %arg5 (%153, %addressResult_21, %dataResult_22) %1 {connectedBlocks = [5 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i32>, !handshake.channel<i10>, !handshake.channel<i32>) -> ()
    %2 = buffer %0#1 {handshake.name = "buffer1", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<10xi32>] %arg4 (%addressResult) %2 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller4"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %3 = buffer %0#0 {handshake.name = "buffer0", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<900xi32>] %arg3 (%addressResult_9) %3 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %4 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %5 = constant %4 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = false} : <>, <i1>
    %6 = extsi %5 {handshake.bb = 0 : ui32, handshake.name = "extsi13"} : <i1> to <i6>
    %7 = buffer %0#7 {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %8 = constant %7 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %9 = buffer %19 {handshake.bb = 1 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %10 = mux %9 [%6, %trueResult_19] {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mux0"} : <i1>, <i6>
    %11 = buffer %10 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %12 = buffer %11 {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %13:3 = fork [3] %12 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i6>
    %14 = buffer %13#0 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %15 = extsi %14 {handshake.bb = 1 : ui32, handshake.name = "extsi12"} : <i6> to <i10>
    %16 = buffer %13#1 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %17 = extsi %16 {handshake.bb = 1 : ui32, handshake.name = "extsi14"} : <i6> to <i7>
    %18 = buffer %167#2 {handshake.bb = 1 : ui32, handshake.name = "buffer73", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %19 = merge %8, %18 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %20 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %21 = constant %20 {handshake.bb = 1 : ui32, handshake.name = "constant16", value = false} : <>, <i1>
    %22:2 = fork [2] %21 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %23 = buffer %22#0 {handshake.bb = 1 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %24 = extsi %23 {handshake.bb = 1 : ui32, handshake.name = "extsi15"} : <i1> to <i3>
    %25 = buffer %22#1 {handshake.bb = 1 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %26 = extsi %25 {handshake.bb = 1 : ui32, handshake.name = "extsi2"} : <i1> to <i32>
    %27 = buffer %0#6 {handshake.bb = 2 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %28 = constant %27 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %29 = buffer %147#3 {handshake.bb = 2 : ui32, handshake.name = "buffer68", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %30 = merge %28, %29 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i1>
    %31 = buffer %30 {handshake.bb = 2 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %32:3 = fork [3] %31 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork3"} : <i1>
    %33 = buffer %13#2 {handshake.bb = 2 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %34 = buffer %32#0 {handshake.bb = 2 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %35 = mux %34 [%33, %trueResult_15] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i6>
    %36 = buffer %35 {handshake.bb = 2 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %37 = buffer %36 {handshake.bb = 2 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %38:2 = fork [2] %37 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i6>
    %39 = buffer %32#2 {handshake.bb = 2 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %40 = mux %39 [%26, %trueResult_11] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %41 = buffer %32#1 {handshake.bb = 2 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %42 = mux %41 [%24, %trueResult_13] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i3>
    %43 = buffer %42 {handshake.bb = 2 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i3>
    %44 = buffer %43 {handshake.bb = 2 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %45:2 = fork [2] %44 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i3>
    %46 = buffer %45#0 {handshake.bb = 2 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %47 = extsi %46 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i3> to <i4>
    %48 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %49 = constant %48 {handshake.bb = 2 : ui32, handshake.name = "constant17", value = false} : <>, <i1>
    %50 = extsi %49 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i1> to <i3>
    %51 = buffer %129#0 {handshake.bb = 3 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult, %falseResult = cond_br %51, %126 {handshake.bb = 3 : ui32, handshake.name = "cond_br22"} : <i1>, <i3>
    sink %falseResult {handshake.name = "sink0"} : <i3>
    %52 = buffer %76#3 {handshake.bb = 3 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %53 = buffer %129#2 {handshake.bb = 3 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_3, %falseResult_4 = cond_br %53, %52 {handshake.bb = 3 : ui32, handshake.name = "cond_br23"} : <i1>, <i3>
    sink %falseResult_4 {handshake.name = "sink1"} : <i3>
    %54 = buffer %68#1 {handshake.bb = 3 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %55 = buffer %129#1 {handshake.bb = 3 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_5, %falseResult_6 = cond_br %55, %54 {handshake.bb = 3 : ui32, handshake.name = "cond_br24"} : <i1>, <i6>
    sink %falseResult_6 {handshake.name = "sink2"} : <i6>
    %56 = buffer %129#4 {handshake.bb = 3 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_7, %falseResult_8 = cond_br %56, %122 {handshake.bb = 3 : ui32, handshake.name = "cond_br25"} : <i1>, <i32>
    %57 = buffer %0#5 {handshake.bb = 3 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %58 = constant %57 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant5", value = false} : <>, <i1>
    %59 = buffer %129#3 {handshake.bb = 3 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %60 = merge %58, %59 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge4"} : <i1>
    %61 = buffer %60 {handshake.bb = 3 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %62:4 = fork [4] %61 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork6"} : <i1>
    %63 = buffer %38#1 {handshake.bb = 3 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %64 = buffer %62#0 {handshake.bb = 3 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %65 = mux %64 [%63, %trueResult_5] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i6>
    %66 = buffer %65 {handshake.bb = 3 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %67 = buffer %66 {handshake.bb = 3 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %68:2 = fork [2] %67 {handshake.bb = 3 : ui32, handshake.name = "fork7"} : <i6>
    %69 = buffer %68#0 {handshake.bb = 3 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %70 = extsi %69 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i6> to <i7>
    %71 = buffer %45#1 {handshake.bb = 3 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %72 = buffer %62#1 {handshake.bb = 3 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %73 = mux %72 [%71, %trueResult_3] {handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <i3>
    %74 = buffer %73 {handshake.bb = 3 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i3>
    %75 = buffer %74 {handshake.bb = 3 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %76:4 = fork [4] %75 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i3>
    %77 = buffer %76#0 {handshake.bb = 3 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %78 = extsi %77 {handshake.bb = 3 : ui32, handshake.name = "extsi19"} : <i3> to <i4>
    %79 = buffer %76#1 {handshake.bb = 3 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %80 = extsi %79 {handshake.bb = 3 : ui32, handshake.name = "extsi20"} : <i3> to <i9>
    %81 = buffer %76#2 {handshake.bb = 3 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %82 = extsi %81 {handshake.bb = 3 : ui32, handshake.name = "extsi21"} : <i3> to <i4>
    %83 = buffer %40 {handshake.bb = 3 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %84 = buffer %83 {handshake.bb = 3 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %85 = buffer %62#3 {handshake.bb = 3 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %86 = mux %85 [%84, %trueResult_7] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %87 = buffer %62#2 {handshake.bb = 3 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %88 = mux %87 [%50, %trueResult] {handshake.bb = 3 : ui32, handshake.name = "mux9"} : <i1>, <i3>
    %89 = buffer %88 {handshake.bb = 3 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i3>
    %90 = buffer %89 {handshake.bb = 3 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %91:3 = fork [3] %90 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i3>
    %92 = buffer %91#0 {handshake.bb = 3 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %93 = extsi %92 {handshake.bb = 3 : ui32, handshake.name = "extsi22"} : <i3> to <i4>
    %94 = buffer %91#1 {handshake.bb = 3 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %95 = extsi %94 {handshake.bb = 3 : ui32, handshake.name = "extsi23"} : <i3> to <i7>
    %96 = buffer %91#2 {handshake.bb = 3 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %97 = extsi %96 {handshake.bb = 3 : ui32, handshake.name = "extsi24"} : <i3> to <i4>
    %98 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %99 = constant %98 {handshake.bb = 3 : ui32, handshake.name = "constant18", value = 30 : i6} : <>, <i6>
    %100 = extsi %99 {handshake.bb = 3 : ui32, handshake.name = "extsi25"} : <i6> to <i9>
    %101 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %102 = constant %101 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 3 : i3} : <>, <i3>
    %103 = extsi %102 {handshake.bb = 3 : ui32, handshake.name = "extsi26"} : <i3> to <i4>
    %104 = source {handshake.bb = 3 : ui32, handshake.name = "source6"} : <>
    %105 = constant %104 {handshake.bb = 3 : ui32, handshake.name = "constant20", value = 1 : i2} : <>, <i2>
    %106:2 = fork [2] %105 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i2>
    %107 = buffer %106#0 {handshake.bb = 3 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %108 = extui %107 {handshake.bb = 3 : ui32, handshake.name = "extui0"} : <i2> to <i4>
    %109 = buffer %106#1 {handshake.bb = 3 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %110 = extsi %109 {handshake.bb = 3 : ui32, handshake.name = "extsi27"} : <i2> to <i4>
    %111 = shli %82, %108 {handshake.bb = 3 : ui32, handshake.name = "shli1"} : <i4>
    %112 = addi %78, %111 {handshake.bb = 3 : ui32, handshake.name = "addi7"} : <i4>
    %113 = addi %93, %112 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i4>
    %addressResult, %dataResult = load[%113] %outputs {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i4>, <i32>
    %114 = addi %95, %70 {handshake.bb = 3 : ui32, handshake.name = "addi2"} : <i7>
    %115 = extsi %114 {handshake.bb = 3 : ui32, handshake.name = "extsi28"} : <i7> to <i10>
    %116 = muli %80, %100 {handshake.bb = 3 : ui32, handshake.name = "muli2"} : <i9>
    %117 = extsi %116 {handshake.bb = 3 : ui32, handshake.name = "extsi29"} : <i9> to <i10>
    %118 = addi %115, %117 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i10>
    %addressResult_9, %dataResult_10 = load[%118] %outputs_1 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i10>, <i32>
    %119 = muli %dataResult, %dataResult_10 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %120 = buffer %86 {handshake.bb = 3 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %121 = buffer %120 {handshake.bb = 3 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %122 = addi %121, %119 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %123 = addi %97, %110 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i4>
    %124:2 = fork [2] %123 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i4>
    %125 = buffer %124#0 {handshake.bb = 3 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %126 = trunci %125 {handshake.bb = 3 : ui32, handshake.name = "trunci0"} : <i4> to <i3>
    %127 = buffer %124#1 {handshake.bb = 3 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %128 = cmpi ult, %127, %103 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i4>
    %129:5 = fork [5] %128 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i1>
    %130 = buffer %147#2 {handshake.bb = 4 : ui32, handshake.name = "buffer67", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_11, %falseResult_12 = cond_br %130, %falseResult_8 {handshake.bb = 4 : ui32, handshake.name = "cond_br26"} : <i1>, <i32>
    %131:2 = fork [2] %falseResult_12 {handshake.bb = 4 : ui32, handshake.name = "fork13"} : <i32>
    %132 = buffer %147#0 {handshake.bb = 4 : ui32, handshake.name = "buffer65", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_13, %falseResult_14 = cond_br %132, %144 {handshake.bb = 4 : ui32, handshake.name = "cond_br27"} : <i1>, <i3>
    sink %falseResult_14 {handshake.name = "sink3"} : <i3>
    %133 = buffer %38#0 {handshake.bb = 4 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %134 = buffer %147#1 {handshake.bb = 4 : ui32, handshake.name = "buffer66", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_15, %falseResult_16 = cond_br %134, %133 {handshake.bb = 4 : ui32, handshake.name = "cond_br28"} : <i1>, <i6>
    sink %falseResult_16 {handshake.name = "sink4"} : <i6>
    %135 = source {handshake.bb = 4 : ui32, handshake.name = "source7"} : <>
    %136 = constant %135 {handshake.bb = 4 : ui32, handshake.name = "constant21", value = 3 : i3} : <>, <i3>
    %137 = extsi %136 {handshake.bb = 4 : ui32, handshake.name = "extsi30"} : <i3> to <i4>
    %138 = source {handshake.bb = 4 : ui32, handshake.name = "source8"} : <>
    %139 = constant %138 {handshake.bb = 4 : ui32, handshake.name = "constant22", value = 1 : i2} : <>, <i2>
    %140 = extsi %139 {handshake.bb = 4 : ui32, handshake.name = "extsi31"} : <i2> to <i4>
    %141 = addi %47, %140 {handshake.bb = 4 : ui32, handshake.name = "addi5"} : <i4>
    %142:2 = fork [2] %141 {handshake.bb = 4 : ui32, handshake.name = "fork14"} : <i4>
    %143 = buffer %142#0 {handshake.bb = 4 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %144 = trunci %143 {handshake.bb = 4 : ui32, handshake.name = "trunci1"} : <i4> to <i3>
    %145 = buffer %142#1 {handshake.bb = 4 : ui32, handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %146 = cmpi ult, %145, %137 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i4>
    %147:4 = fork [4] %146 {handshake.bb = 4 : ui32, handshake.name = "fork15"} : <i1>
    %148 = buffer %131#1 {handshake.bb = 5 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %149 = buffer %167#1 {handshake.bb = 5 : ui32, handshake.name = "buffer72", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_17, %falseResult_18 = cond_br %149, %148 {handshake.bb = 5 : ui32, handshake.name = "cond_br29"} : <i1>, <i32>
    sink %trueResult_17 {handshake.name = "sink5"} : <i32>
    %150 = buffer %167#0 {handshake.bb = 5 : ui32, handshake.name = "buffer71", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_19, %falseResult_20 = cond_br %150, %164 {handshake.bb = 5 : ui32, handshake.name = "cond_br30"} : <i1>, <i6>
    sink %falseResult_20 {handshake.name = "sink6"} : <i6>
    %151 = buffer %0#3 {handshake.bb = 5 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %152 = constant %151 {handshake.bb = 5 : ui32, handshake.name = "constant23", value = 1 : i2} : <>, <i2>
    %153 = extsi %152 {handshake.bb = 5 : ui32, handshake.name = "extsi9"} : <i2> to <i32>
    %154 = source {handshake.bb = 5 : ui32, handshake.name = "source9"} : <>
    %155 = constant %154 {handshake.bb = 5 : ui32, handshake.name = "constant24", value = 28 : i6} : <>, <i6>
    %156 = extsi %155 {handshake.bb = 5 : ui32, handshake.name = "extsi32"} : <i6> to <i7>
    %157 = source {handshake.bb = 5 : ui32, handshake.name = "source10"} : <>
    %158 = constant %157 {handshake.bb = 5 : ui32, handshake.name = "constant25", value = 1 : i2} : <>, <i2>
    %159 = extsi %158 {handshake.bb = 5 : ui32, handshake.name = "extsi33"} : <i2> to <i7>
    %160 = buffer %131#0 {handshake.bb = 5 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %addressResult_21, %dataResult_22 = store[%15] %160 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i10>, <i32>
    %161 = addi %17, %159 {handshake.bb = 5 : ui32, handshake.name = "addi6"} : <i7>
    %162:2 = fork [2] %161 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <i7>
    %163 = buffer %162#0 {handshake.bb = 5 : ui32, handshake.name = "buffer69", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %164 = trunci %163 {handshake.bb = 5 : ui32, handshake.name = "trunci2"} : <i7> to <i6>
    %165 = buffer %162#1 {handshake.bb = 5 : ui32, handshake.name = "buffer70", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %166 = cmpi ult, %165, %156 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i7>
    %167:3 = fork [3] %166 {handshake.bb = 5 : ui32, handshake.name = "fork17"} : <i1>
    %168 = buffer %0#4 {handshake.bb = 6 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %falseResult_18, %memEnd_2, %memEnd_0, %memEnd, %168 : <i32>, <>, <>, <>, <>
  }
}


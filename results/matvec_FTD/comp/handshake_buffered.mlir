module {
  handshake.func @matvec(%arg0: memref<400xi32>, %arg1: memref<20xi32>, %arg2: memref<20xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["m", "v", "out", "m_start", "v_start", "out_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][1,2][3,1,4,cmpi1]", resNames = ["out0", "m_end", "v_end", "out_end", "end"]} {
    %0:8 = fork [8] %arg6 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1 = buffer %0#2 {handshake.name = "buffer2", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %memEnd = mem_controller[%arg2 : memref<20xi32>] %arg5 (%114, %addressResult_17, %dataResult_18) %1 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i32>, !handshake.channel<i5>, !handshake.channel<i32>) -> ()
    %2 = buffer %0#1 {handshake.name = "buffer1", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<20xi32>] %arg4 (%addressResult) %2 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller4"} :    (!handshake.channel<i5>) -> !handshake.channel<i32>
    %3 = buffer %0#0 {handshake.name = "buffer0", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<400xi32>] %arg3 (%addressResult_9) %3 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i9>) -> !handshake.channel<i32>
    %4 = buffer %0#7 {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %5 = constant %4 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %6:2 = fork [2] %5 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %7 = buffer %6#0 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %8 = extsi %7 {handshake.bb = 1 : ui32, handshake.name = "extsi10"} : <i1> to <i6>
    %9 = buffer %6#1 {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %10 = buffer %128#3 {handshake.bb = 1 : ui32, handshake.name = "buffer65", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %11 = merge %9, %10 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %12 = buffer %11 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %13:2 = fork [2] %12 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <i1>
    %14 = buffer %0#6 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %15 = buffer %13#1 {handshake.bb = 1 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %16 = mux %15 [%14, %trueResult_15] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %17 = buffer %16 {handshake.bb = 1 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %18 = buffer %17 {handshake.bb = 1 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %19:5 = fork [5] %18 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %20 = buffer %13#0 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %21 = mux %20 [%8, %trueResult_13] {handshake.bb = 1 : ui32, handshake.name = "mux8"} : <i1>, <i6>
    %22 = buffer %21 {handshake.bb = 1 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %23 = buffer %22 {handshake.bb = 1 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %24:3 = fork [3] %23 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i6>
    %25 = buffer %24#1 {handshake.bb = 1 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %26 = extsi %25 {handshake.bb = 1 : ui32, handshake.name = "extsi11"} : <i6> to <i7>
    %27 = buffer %24#0 {handshake.bb = 1 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %28 = trunci %27 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i6> to <i5>
    %29 = buffer %19#2 {handshake.bb = 1 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %30 = constant %29 {handshake.bb = 1 : ui32, handshake.name = "constant2", value = false} : <>, <i1>
    %31:2 = fork [2] %30 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i1>
    %32 = buffer %31#0 {handshake.bb = 1 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %33 = extsi %32 {handshake.bb = 1 : ui32, handshake.name = "extsi12"} : <i1> to <i6>
    %34 = buffer %31#1 {handshake.bb = 1 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %35 = extsi %34 {handshake.bb = 1 : ui32, handshake.name = "extsi2"} : <i1> to <i32>
    %36 = buffer %106#4 {handshake.bb = 2 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult, %falseResult = cond_br %36, %99 {handshake.bb = 2 : ui32, handshake.name = "cond_br24"} : <i1>, <i32>
    %37:2 = fork [2] %falseResult {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i32>
    %38 = buffer %106#0 {handshake.bb = 2 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_3, %falseResult_4 = cond_br %38, %103 {handshake.bb = 2 : ui32, handshake.name = "cond_br25"} : <i1>, <i6>
    sink %falseResult_4 {handshake.name = "sink0"} : <i6>
    %39 = buffer %65#4 {handshake.bb = 2 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %40 = buffer %106#3 {handshake.bb = 2 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_5, %falseResult_6 = cond_br %40, %39 {handshake.bb = 2 : ui32, handshake.name = "cond_br26"} : <i1>, <>
    sink %falseResult_6 {handshake.name = "sink1"} : <>
    %41 = buffer %54#2 {handshake.bb = 2 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %42 = buffer %106#1 {handshake.bb = 2 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_7, %falseResult_8 = cond_br %42, %41 {handshake.bb = 2 : ui32, handshake.name = "cond_br27"} : <i1>, <i6>
    sink %falseResult_8 {handshake.name = "sink2"} : <i6>
    %43 = buffer %0#5 {handshake.bb = 2 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %44 = constant %43 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant18", value = false} : <>, <i1>
    %45 = buffer %106#2 {handshake.bb = 2 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %46 = merge %44, %45 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge9"} : <i1>
    %47 = buffer %46 {handshake.bb = 2 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %48:4 = fork [4] %47 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork7"} : <i1>
    %49 = buffer %24#2 {handshake.bb = 2 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %50 = buffer %48#0 {handshake.bb = 2 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %51 = mux %50 [%49, %trueResult_7] {handshake.bb = 2 : ui32, handshake.name = "mux9"} : <i1>, <i6>
    %52 = buffer %51 {handshake.bb = 2 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %53 = buffer %52 {handshake.bb = 2 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %54:3 = fork [3] %53 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i6>
    %55 = buffer %54#0 {handshake.bb = 2 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %56 = trunci %55 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i6> to <i5>
    %57 = extsi %56 {handshake.bb = 2 : ui32, handshake.name = "extsi13"} : <i5> to <i9>
    %58 = buffer %54#1 {handshake.bb = 2 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %59 = extsi %58 {handshake.bb = 2 : ui32, handshake.name = "extsi14"} : <i6> to <i8>
    %60 = buffer %19#4 {handshake.bb = 2 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %61 = buffer %48#3 {handshake.bb = 2 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %62 = mux %61 [%60, %trueResult_5] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux14"} : <i1>, <>
    %63 = buffer %62 {handshake.bb = 2 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %64 = buffer %63 {handshake.bb = 2 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %65:5 = fork [5] %64 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <>
    %66 = buffer %48#2 {handshake.bb = 2 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %67 = mux %66 [%35, %trueResult] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux15"} : <i1>, <i32>
    %68 = buffer %48#1 {handshake.bb = 2 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %69 = mux %68 [%33, %trueResult_3] {handshake.bb = 2 : ui32, handshake.name = "mux16"} : <i1>, <i6>
    %70 = buffer %69 {handshake.bb = 2 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %71 = buffer %70 {handshake.bb = 2 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %72:3 = fork [3] %71 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i6>
    %73 = buffer %72#0 {handshake.bb = 2 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %74 = extsi %73 {handshake.bb = 2 : ui32, handshake.name = "extsi15"} : <i6> to <i9>
    %75 = buffer %72#2 {handshake.bb = 2 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %76 = extsi %75 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i6> to <i7>
    %77 = buffer %72#1 {handshake.bb = 2 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %78 = trunci %77 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i6> to <i5>
    %79 = buffer %65#3 {handshake.bb = 2 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %80 = constant %79 {handshake.bb = 2 : ui32, handshake.name = "constant3", value = 20 : i6} : <>, <i6>
    %81 = extsi %80 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i6> to <i7>
    %82 = buffer %65#2 {handshake.bb = 2 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %83 = constant %82 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = 1 : i2} : <>, <i2>
    %84 = extsi %83 {handshake.bb = 2 : ui32, handshake.name = "extsi18"} : <i2> to <i7>
    %85 = buffer %65#1 {handshake.bb = 2 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %86 = constant %85 {handshake.bb = 2 : ui32, handshake.name = "constant14", value = 4 : i4} : <>, <i4>
    %87 = extui %86 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i4> to <i9>
    %88 = buffer %65#0 {handshake.bb = 2 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %89 = constant %88 {handshake.bb = 2 : ui32, handshake.name = "constant15", value = 2 : i3} : <>, <i3>
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
    %102 = buffer %101#0 {handshake.bb = 2 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %103 = trunci %102 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i7> to <i6>
    %104 = buffer %101#1 {handshake.bb = 2 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %105 = cmpi ult, %104, %81 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i7>
    %106:5 = fork [5] %105 {handshake.bb = 2 : ui32, handshake.name = "fork12"} : <i1>
    %107 = buffer %37#1 {handshake.bb = 3 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %108 = buffer %128#2 {handshake.bb = 3 : ui32, handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_11, %falseResult_12 = cond_br %108, %107 {handshake.bb = 3 : ui32, handshake.name = "cond_br28"} : <i1>, <i32>
    sink %trueResult_11 {handshake.name = "sink3"} : <i32>
    %109 = buffer %128#0 {handshake.bb = 3 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_13, %falseResult_14 = cond_br %109, %125 {handshake.bb = 3 : ui32, handshake.name = "cond_br29"} : <i1>, <i6>
    sink %falseResult_14 {handshake.name = "sink4"} : <i6>
    %110 = buffer %19#3 {handshake.bb = 3 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %111 = buffer %128#1 {handshake.bb = 3 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_15, %falseResult_16 = cond_br %111, %110 {handshake.bb = 3 : ui32, handshake.name = "cond_br30"} : <i1>, <>
    sink %falseResult_16 {handshake.name = "sink5"} : <>
    %112 = buffer %0#3 {handshake.bb = 3 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %113 = constant %112 {handshake.bb = 3 : ui32, handshake.name = "constant16", value = 1 : i2} : <>, <i2>
    %114 = extsi %113 {handshake.bb = 3 : ui32, handshake.name = "extsi7"} : <i2> to <i32>
    %115 = buffer %19#1 {handshake.bb = 3 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %116 = constant %115 {handshake.bb = 3 : ui32, handshake.name = "constant17", value = 20 : i6} : <>, <i6>
    %117 = extsi %116 {handshake.bb = 3 : ui32, handshake.name = "extsi20"} : <i6> to <i7>
    %118 = buffer %19#0 {handshake.bb = 3 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %119 = constant %118 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 1 : i2} : <>, <i2>
    %120 = extsi %119 {handshake.bb = 3 : ui32, handshake.name = "extsi21"} : <i2> to <i7>
    %121 = buffer %37#0 {handshake.bb = 3 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %addressResult_17, %dataResult_18 = store[%28] %121 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i5>, <i32>
    %122 = addi %26, %120 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i7>
    %123:2 = fork [2] %122 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i7>
    %124 = buffer %123#0 {handshake.bb = 3 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %125 = trunci %124 {handshake.bb = 3 : ui32, handshake.name = "trunci4"} : <i7> to <i6>
    %126 = buffer %123#1 {handshake.bb = 3 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %127 = cmpi ult, %126, %117 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i7>
    %128:4 = fork [4] %127 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i1>
    %129 = buffer %0#4 {handshake.bb = 4 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %falseResult_12, %memEnd_2, %memEnd_0, %memEnd, %129 : <i32>, <>, <>, <>, <>
  }
}


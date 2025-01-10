module {
  handshake.func @sobel(%arg0: memref<256xi32>, %arg1: memref<9xi32>, %arg2: memref<9xi32>, %arg3: memref<256xi32>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["in", "gX", "gY", "out", "in_start", "gX_start", "gY_start", "out_start", "start"], resNames = ["out0", "in_end", "gX_end", "gY_end", "out_end", "end"]} {
    %0:3 = fork [3] %arg8 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1 = buffer %588#3 {handshake.name = "buffer312", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %memEnd = mem_controller[%arg3 : memref<256xi32>] %arg7 (%529, %addressResult_103, %dataResult_104) %1 {connectedBlocks = [12 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller4"} :    (!handshake.channel<i32>, !handshake.channel<i8>, !handshake.channel<i32>) -> ()
    %2 = buffer %588#2 {handshake.name = "buffer311", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs, %memEnd_0 = mem_controller[%arg2 : memref<9xi32>] %arg6 (%addressResult_21) %2 {connectedBlocks = [5 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %3 = buffer %588#1 {handshake.name = "buffer310", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs_1, %memEnd_2 = mem_controller[%arg1 : memref<9xi32>] %arg5 (%addressResult_19) %3 {connectedBlocks = [5 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller6"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %4 = buffer %588#0 {handshake.name = "buffer309", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs_3, %memEnd_4 = mem_controller[%arg0 : memref<256xi32>] %arg4 (%addressResult) %4 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller7"} :    (!handshake.channel<i8>) -> !handshake.channel<i32>
    %5 = buffer %0#0 {handshake.bb = 0 : ui32, handshake.name = "buffer0", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %6 = constant %5 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %7:2 = fork [2] %6 {handshake.bb = 0 : ui32, handshake.name = "fork1"} : <i1>
    %8 = buffer %7#0 {handshake.bb = 0 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %9 = br %8 {handshake.bb = 0 : ui32, handshake.name = "br4"} : <i1>
    %10 = extsi %9 {handshake.bb = 0 : ui32, handshake.name = "extsi27"} : <i1> to <i5>
    %11 = buffer %7#1 {handshake.bb = 0 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %12 = br %11 {handshake.bb = 0 : ui32, handshake.name = "br6"} : <i1>
    %13 = extsi %12 {handshake.bb = 0 : ui32, handshake.name = "extsi28"} : <i1> to <i32>
    %14 = buffer %0#2 {handshake.bb = 0 : ui32, handshake.name = "buffer2", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %15 = br %14 {handshake.bb = 0 : ui32, handshake.name = "br7"} : <>
    %16 = buffer %20#0 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %17 = mux %16 [%10, %trueResult_115] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i5>
    %18 = buffer %20#1 {handshake.bb = 1 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %19 = mux %18 [%13, %trueResult_117] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %result, %index = control_merge %15, %trueResult_119  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %20:2 = fork [2] %index {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %21 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %22 = buffer %21 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %23:2 = fork [2] %22 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %24 = buffer %23#0 {handshake.bb = 1 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %25 = constant %24 {handshake.bb = 1 : ui32, handshake.name = "constant5", value = false} : <>, <i1>
    %26 = br %25 {handshake.bb = 1 : ui32, handshake.name = "br9"} : <i1>
    %27 = extsi %26 {handshake.bb = 1 : ui32, handshake.name = "extsi25"} : <i1> to <i5>
    %28 = buffer %19 {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %29 = buffer %28 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %30 = br %29 {handshake.bb = 1 : ui32, handshake.name = "br11"} : <i32>
    %31 = buffer %17 {handshake.bb = 1 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %32 = buffer %31 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %33 = br %32 {handshake.bb = 1 : ui32, handshake.name = "br12"} : <i5>
    %34 = buffer %23#1 {handshake.bb = 1 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %35 = br %34 {handshake.bb = 1 : ui32, handshake.name = "br13"} : <>
    %36 = buffer %45#1 {handshake.bb = 2 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %37 = mux %36 [%27, %trueResult_105] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i5>
    %38 = buffer %37 {handshake.bb = 2 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %39 = buffer %38 {handshake.bb = 2 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %40:3 = fork [3] %39 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i5>
    %41 = buffer %45#2 {handshake.bb = 2 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %42 = mux %41 [%30, %trueResult_107] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %43 = buffer %45#0 {handshake.bb = 2 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %44 = mux %43 [%33, %trueResult_109] {handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <i5>
    %result_5, %index_6 = control_merge %35, %trueResult_111  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %45:3 = fork [3] %index_6 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i1>
    %46 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %47 = constant %46 {handshake.bb = 2 : ui32, handshake.name = "constant6", value = 5 : i4} : <>, <i4>
    %48 = extsi %47 {handshake.bb = 2 : ui32, handshake.name = "extsi29"} : <i4> to <i5>
    %49 = source {handshake.bb = 2 : ui32, handshake.name = "source1"} : <>
    %50 = constant %49 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = false} : <>, <i1>
    %51:3 = fork [3] %50 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i1>
    %52 = buffer %51#0 {handshake.bb = 2 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %53 = extsi %52 {handshake.bb = 2 : ui32, handshake.name = "extsi30"} : <i1> to <i5>
    %54 = buffer %40#0 {handshake.bb = 2 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %55 = cmpi eq, %54, %53 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i5>
    %56:2 = fork [2] %55 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i1>
    %57 = buffer %40#1 {handshake.bb = 2 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %58 = cmpi eq, %57, %48 {handshake.bb = 2 : ui32, handshake.name = "cmpi1"} : <i5>
    %59 = buffer %51#1 {handshake.bb = 2 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %60 = buffer %56#1 {handshake.bb = 2 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %61 = cmpi eq, %60, %59 {handshake.bb = 2 : ui32, handshake.name = "cmpi2"} : <i1>
    %62 = andi %61, %58 {handshake.bb = 2 : ui32, handshake.name = "andi0"} : <i1>
    %63 = buffer %56#0 {handshake.bb = 2 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %64 = ori %63, %62 {handshake.bb = 2 : ui32, handshake.name = "ori0"} : <i1>
    %65 = buffer %51#2 {handshake.bb = 2 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %66 = cmpi eq, %64, %65 {handshake.bb = 2 : ui32, handshake.name = "cmpi3"} : <i1>
    %67:4 = fork [4] %66 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i1>
    %68 = buffer %44 {handshake.bb = 2 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %69 = buffer %68 {handshake.bb = 2 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %70 = buffer %67#0 {handshake.bb = 2 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult, %falseResult = cond_br %70, %69 {handshake.bb = 2 : ui32, handshake.name = "cond_br7"} : <i1>, <i5>
    %71 = buffer %40#2 {handshake.bb = 2 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %72 = buffer %67#1 {handshake.bb = 2 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_7, %falseResult_8 = cond_br %72, %71 {handshake.bb = 2 : ui32, handshake.name = "cond_br8"} : <i1>, <i5>
    %73 = buffer %42 {handshake.bb = 2 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %74 = buffer %73 {handshake.bb = 2 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %75 = buffer %67#2 {handshake.bb = 2 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_9, %falseResult_10 = cond_br %75, %74 {handshake.bb = 2 : ui32, handshake.name = "cond_br9"} : <i1>, <i32>
    %76 = buffer %result_5 {handshake.bb = 2 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %77 = buffer %76 {handshake.bb = 2 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %78 = buffer %67#3 {handshake.bb = 2 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_11, %falseResult_12 = cond_br %78, %77 {handshake.bb = 2 : ui32, handshake.name = "cond_br10"} : <i1>, <>
    %79 = merge %trueResult {handshake.bb = 3 : ui32, handshake.name = "merge0"} : <i5>
    %80 = merge %trueResult_7 {handshake.bb = 3 : ui32, handshake.name = "merge1"} : <i5>
    %81 = buffer %80 {handshake.bb = 3 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %82 = buffer %81 {handshake.bb = 3 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %83:2 = fork [2] %82 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i5>
    %84 = buffer %83#0 {handshake.bb = 3 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %85 = extsi %84 {handshake.bb = 3 : ui32, handshake.name = "extsi24"} : <i5> to <i8>
    %86 = merge %trueResult_9 {handshake.bb = 3 : ui32, handshake.name = "merge2"} : <i32>
    %result_13, %index_14 = control_merge %trueResult_11  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    sink %index_14 {handshake.name = "sink0"} : <i1>
    %87 = buffer %result_13 {handshake.bb = 3 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %88 = buffer %87 {handshake.bb = 3 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %89:3 = fork [3] %88 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <>
    %90 = buffer %89#2 {handshake.bb = 3 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %91 = constant %90 {handshake.bb = 3 : ui32, handshake.name = "constant13", value = -1 : i32} : <>, <i32>
    %92 = buffer %89#0 {handshake.bb = 3 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %93 = constant %92 {handshake.bb = 3 : ui32, handshake.name = "constant8", value = false} : <>, <i1>
    %addressResult, %dataResult = load[%85] %outputs_3 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i8>, <i32>
    %94 = br %91 {handshake.bb = 3 : ui32, handshake.name = "br14"} : <i32>
    %95 = br %93 {handshake.bb = 3 : ui32, handshake.name = "br15"} : <i1>
    %96 = extsi %95 {handshake.bb = 3 : ui32, handshake.name = "extsi31"} : <i1> to <i32>
    %97:2 = fork [2] %96 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i32>
    %98 = buffer %79 {handshake.bb = 3 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %99 = buffer %98 {handshake.bb = 3 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %100 = br %99 {handshake.bb = 3 : ui32, handshake.name = "br16"} : <i5>
    %101 = buffer %83#1 {handshake.bb = 3 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %102 = br %101 {handshake.bb = 3 : ui32, handshake.name = "br17"} : <i5>
    %103 = buffer %86 {handshake.bb = 3 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %104 = buffer %103 {handshake.bb = 3 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %105 = br %104 {handshake.bb = 3 : ui32, handshake.name = "br18"} : <i32>
    %106 = br %dataResult {handshake.bb = 3 : ui32, handshake.name = "br19"} : <i32>
    %107 = buffer %89#1 {handshake.bb = 3 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %108 = br %107 {handshake.bb = 3 : ui32, handshake.name = "br20"} : <>
    %109 = buffer %125#2 {handshake.bb = 4 : ui32, handshake.name = "buffer71", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %110 = mux %109 [%94, %281] {handshake.bb = 4 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %111 = buffer %97#0 {handshake.bb = 4 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %112 = buffer %125#3 {handshake.bb = 4 : ui32, handshake.name = "buffer72", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %113 = mux %112 [%111, %trueResult_45] {handshake.bb = 4 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %114 = buffer %97#1 {handshake.bb = 4 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %115 = buffer %125#4 {handshake.bb = 4 : ui32, handshake.name = "buffer73", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %116 = mux %115 [%114, %trueResult_47] {handshake.bb = 4 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %117 = buffer %125#0 {handshake.bb = 4 : ui32, handshake.name = "buffer69", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %118 = mux %117 [%100, %trueResult_49] {handshake.bb = 4 : ui32, handshake.name = "mux8"} : <i1>, <i5>
    %119 = buffer %125#1 {handshake.bb = 4 : ui32, handshake.name = "buffer70", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %120 = mux %119 [%102, %trueResult_51] {handshake.bb = 4 : ui32, handshake.name = "mux9"} : <i1>, <i5>
    %121 = buffer %125#5 {handshake.bb = 4 : ui32, handshake.name = "buffer74", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %122 = mux %121 [%105, %trueResult_53] {handshake.bb = 4 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %123 = buffer %125#6 {handshake.bb = 4 : ui32, handshake.name = "buffer75", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %124 = mux %123 [%106, %trueResult_55] {handshake.bb = 4 : ui32, handshake.name = "mux11"} : <i1>, <i32>
    %result_15, %index_16 = control_merge %108, %trueResult_57  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %125:7 = fork [7] %index_16 {handshake.bb = 4 : ui32, handshake.name = "fork12"} : <i1>
    %126 = buffer %result_15 {handshake.bb = 4 : ui32, handshake.name = "buffer67", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %127 = buffer %126 {handshake.bb = 4 : ui32, handshake.name = "buffer68", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %128:2 = fork [2] %127 {handshake.bb = 4 : ui32, handshake.name = "fork13"} : <>
    %129 = buffer %128#1 {handshake.bb = 4 : ui32, handshake.name = "buffer77", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %130 = constant %129 {handshake.bb = 4 : ui32, handshake.name = "constant15", value = -1 : i32} : <>, <i32>
    %131 = br %130 {handshake.bb = 4 : ui32, handshake.name = "br21"} : <i32>
    %132 = buffer %113 {handshake.bb = 4 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %133 = buffer %132 {handshake.bb = 4 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %134 = br %133 {handshake.bb = 4 : ui32, handshake.name = "br22"} : <i32>
    %135 = buffer %116 {handshake.bb = 4 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %136 = buffer %135 {handshake.bb = 4 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %137 = br %136 {handshake.bb = 4 : ui32, handshake.name = "br23"} : <i32>
    %138 = buffer %118 {handshake.bb = 4 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %139 = buffer %138 {handshake.bb = 4 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %140 = br %139 {handshake.bb = 4 : ui32, handshake.name = "br24"} : <i5>
    %141 = buffer %120 {handshake.bb = 4 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %142 = buffer %141 {handshake.bb = 4 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %143 = br %142 {handshake.bb = 4 : ui32, handshake.name = "br25"} : <i5>
    %144 = buffer %122 {handshake.bb = 4 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %145 = buffer %144 {handshake.bb = 4 : ui32, handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %146 = br %145 {handshake.bb = 4 : ui32, handshake.name = "br26"} : <i32>
    %147 = buffer %124 {handshake.bb = 4 : ui32, handshake.name = "buffer65", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %148 = buffer %147 {handshake.bb = 4 : ui32, handshake.name = "buffer66", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %149 = br %148 {handshake.bb = 4 : ui32, handshake.name = "br27"} : <i32>
    %150 = buffer %110 {handshake.bb = 4 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %151 = buffer %150 {handshake.bb = 4 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %152 = br %151 {handshake.bb = 4 : ui32, handshake.name = "br28"} : <i32>
    %153 = buffer %128#0 {handshake.bb = 4 : ui32, handshake.name = "buffer76", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %154 = br %153 {handshake.bb = 4 : ui32, handshake.name = "br29"} : <>
    %155 = buffer %194#2 {handshake.bb = 5 : ui32, handshake.name = "buffer109", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %156 = mux %155 [%131, %239] {handshake.bb = 5 : ui32, handshake.name = "mux12"} : <i1>, <i32>
    %157 = buffer %156 {handshake.bb = 5 : ui32, handshake.name = "buffer78", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %158 = buffer %157 {handshake.bb = 5 : ui32, handshake.name = "buffer79", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %159:3 = fork [3] %158 {handshake.bb = 5 : ui32, handshake.name = "fork14"} : <i32>
    %160 = buffer %159#0 {handshake.bb = 5 : ui32, handshake.name = "buffer80", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %161 = trunci %160 {handshake.bb = 5 : ui32, handshake.name = "trunci1"} : <i32> to <i4>
    %162 = buffer %159#1 {handshake.bb = 5 : ui32, handshake.name = "buffer81", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %163 = trunci %162 {handshake.bb = 5 : ui32, handshake.name = "trunci2"} : <i32> to <i4>
    %164 = buffer %194#3 {handshake.bb = 5 : ui32, handshake.name = "buffer110", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %165 = mux %164 [%134, %trueResult_25] {handshake.bb = 5 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %166 = buffer %194#4 {handshake.bb = 5 : ui32, handshake.name = "buffer111", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %167 = mux %166 [%137, %trueResult_27] {handshake.bb = 5 : ui32, handshake.name = "mux14"} : <i1>, <i32>
    %168 = buffer %194#0 {handshake.bb = 5 : ui32, handshake.name = "buffer107", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %169 = mux %168 [%140, %trueResult_29] {handshake.bb = 5 : ui32, handshake.name = "mux15"} : <i1>, <i5>
    %170 = buffer %194#1 {handshake.bb = 5 : ui32, handshake.name = "buffer108", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %171 = mux %170 [%143, %trueResult_31] {handshake.bb = 5 : ui32, handshake.name = "mux16"} : <i1>, <i5>
    %172 = buffer %194#5 {handshake.bb = 5 : ui32, handshake.name = "buffer112", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %173 = mux %172 [%146, %trueResult_33] {handshake.bb = 5 : ui32, handshake.name = "mux17"} : <i1>, <i32>
    %174 = buffer %194#6 {handshake.bb = 5 : ui32, handshake.name = "buffer113", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %175 = mux %174 [%149, %trueResult_35] {handshake.bb = 5 : ui32, handshake.name = "mux18"} : <i1>, <i32>
    %176 = buffer %175 {handshake.bb = 5 : ui32, handshake.name = "buffer93", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %177 = buffer %176 {handshake.bb = 5 : ui32, handshake.name = "buffer94", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %178:3 = fork [3] %177 {handshake.bb = 5 : ui32, handshake.name = "fork15"} : <i32>
    %179 = buffer %194#7 {handshake.bb = 5 : ui32, handshake.name = "buffer114", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %180 = mux %179 [%152, %trueResult_37] {handshake.bb = 5 : ui32, handshake.name = "mux19"} : <i1>, <i32>
    %181 = buffer %180 {handshake.bb = 5 : ui32, handshake.name = "buffer98", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %182 = buffer %181 {handshake.bb = 5 : ui32, handshake.name = "buffer99", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %183:5 = fork [5] %182 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <i32>
    %184 = buffer %183#0 {handshake.bb = 5 : ui32, handshake.name = "buffer100", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %185 = trunci %184 {handshake.bb = 5 : ui32, handshake.name = "trunci3"} : <i32> to <i3>
    %186 = extsi %185 {handshake.bb = 5 : ui32, handshake.name = "extsi32"} : <i3> to <i4>
    %187 = buffer %183#1 {handshake.bb = 5 : ui32, handshake.name = "buffer101", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %188 = trunci %187 {handshake.bb = 5 : ui32, handshake.name = "trunci4"} : <i32> to <i4>
    %189 = buffer %183#2 {handshake.bb = 5 : ui32, handshake.name = "buffer102", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %190 = trunci %189 {handshake.bb = 5 : ui32, handshake.name = "trunci5"} : <i32> to <i3>
    %191 = extsi %190 {handshake.bb = 5 : ui32, handshake.name = "extsi33"} : <i3> to <i4>
    %192 = buffer %183#3 {handshake.bb = 5 : ui32, handshake.name = "buffer103", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %193 = trunci %192 {handshake.bb = 5 : ui32, handshake.name = "trunci6"} : <i32> to <i4>
    %result_17, %index_18 = control_merge %154, %trueResult_39  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %194:8 = fork [8] %index_18 {handshake.bb = 5 : ui32, handshake.name = "fork17"} : <i1>
    %195 = source {handshake.bb = 5 : ui32, handshake.name = "source2"} : <>
    %196 = constant %195 {handshake.bb = 5 : ui32, handshake.name = "constant9", value = 4 : i4} : <>, <i4>
    %197:2 = fork [2] %196 {handshake.bb = 5 : ui32, handshake.name = "fork18"} : <i4>
    %198 = source {handshake.bb = 5 : ui32, handshake.name = "source3"} : <>
    %199 = constant %198 {handshake.bb = 5 : ui32, handshake.name = "constant34", value = 2 : i3} : <>, <i3>
    %200 = extsi %199 {handshake.bb = 5 : ui32, handshake.name = "extsi8"} : <i3> to <i32>
    %201 = source {handshake.bb = 5 : ui32, handshake.name = "source4"} : <>
    %202 = constant %201 {handshake.bb = 5 : ui32, handshake.name = "constant35", value = 1 : i2} : <>, <i2>
    %203:3 = fork [3] %202 {handshake.bb = 5 : ui32, handshake.name = "fork19"} : <i2>
    %204 = buffer %203#0 {handshake.bb = 5 : ui32, handshake.name = "buffer117", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %205 = extui %204 {handshake.bb = 5 : ui32, handshake.name = "extui2"} : <i2> to <i4>
    %206 = buffer %203#1 {handshake.bb = 5 : ui32, handshake.name = "buffer118", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %207 = extui %206 {handshake.bb = 5 : ui32, handshake.name = "extui3"} : <i2> to <i4>
    %208 = buffer %203#2 {handshake.bb = 5 : ui32, handshake.name = "buffer119", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %209 = extsi %208 {handshake.bb = 5 : ui32, handshake.name = "extsi9"} : <i2> to <i32>
    %210 = shli %186, %205 {handshake.bb = 5 : ui32, handshake.name = "shli0"} : <i4>
    %211 = addi %188, %210 {handshake.bb = 5 : ui32, handshake.name = "addi13"} : <i4>
    %212 = addi %161, %211 {handshake.bb = 5 : ui32, handshake.name = "addi4"} : <i4>
    %213 = buffer %197#0 {handshake.bb = 5 : ui32, handshake.name = "buffer115", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %214 = addi %212, %213 {handshake.bb = 5 : ui32, handshake.name = "addi5"} : <i4>
    %addressResult_19, %dataResult_20 = load[%214] %outputs_1 {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i4>, <i32>
    %215 = buffer %178#2 {handshake.bb = 5 : ui32, handshake.name = "buffer97", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %216 = muli %215, %dataResult_20 {handshake.bb = 5 : ui32, handshake.name = "muli0"} : <i32>
    %217 = buffer %167 {handshake.bb = 5 : ui32, handshake.name = "buffer85", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %218 = buffer %217 {handshake.bb = 5 : ui32, handshake.name = "buffer86", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %219 = addi %218, %216 {handshake.bb = 5 : ui32, handshake.name = "addi0"} : <i32>
    %220 = shli %191, %207 {handshake.bb = 5 : ui32, handshake.name = "shli1"} : <i4>
    %221 = addi %193, %220 {handshake.bb = 5 : ui32, handshake.name = "addi14"} : <i4>
    %222 = addi %163, %221 {handshake.bb = 5 : ui32, handshake.name = "addi6"} : <i4>
    %223 = buffer %197#1 {handshake.bb = 5 : ui32, handshake.name = "buffer116", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %224 = addi %222, %223 {handshake.bb = 5 : ui32, handshake.name = "addi7"} : <i4>
    %addressResult_21, %dataResult_22 = load[%224] %outputs {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load2"} : <i4>, <i32>
    %225 = buffer %178#1 {handshake.bb = 5 : ui32, handshake.name = "buffer96", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %226 = muli %225, %dataResult_22 {handshake.bb = 5 : ui32, handshake.name = "muli1"} : <i32>
    %227 = buffer %165 {handshake.bb = 5 : ui32, handshake.name = "buffer83", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %228 = buffer %227 {handshake.bb = 5 : ui32, handshake.name = "buffer84", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %229 = addi %228, %226 {handshake.bb = 5 : ui32, handshake.name = "addi1"} : <i32>
    %230 = buffer %159#2 {handshake.bb = 5 : ui32, handshake.name = "buffer82", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %231 = addi %230, %209 {handshake.bb = 5 : ui32, handshake.name = "addi9"} : <i32>
    %232:2 = fork [2] %231 {handshake.bb = 5 : ui32, handshake.name = "fork20"} : <i32>
    %233 = buffer %232#0 {handshake.bb = 5 : ui32, handshake.name = "buffer120", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %234 = trunci %233 {handshake.bb = 5 : ui32, handshake.name = "trunci7"} : <i32> to <i2>
    %235 = buffer %232#1 {handshake.bb = 5 : ui32, handshake.name = "buffer121", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %236 = cmpi ult, %235, %200 {handshake.bb = 5 : ui32, handshake.name = "cmpi8"} : <i32>
    %237:9 = fork [9] %236 {handshake.bb = 5 : ui32, handshake.name = "fork21"} : <i1>
    %238 = buffer %237#0 {handshake.bb = 5 : ui32, handshake.name = "buffer122", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_23, %falseResult_24 = cond_br %238, %234 {handshake.bb = 5 : ui32, handshake.name = "cond_br11"} : <i1>, <i2>
    sink %falseResult_24 {handshake.name = "sink1"} : <i2>
    %239 = extsi %trueResult_23 {handshake.bb = 5 : ui32, handshake.name = "extsi34"} : <i2> to <i32>
    %240 = buffer %237#8 {handshake.bb = 5 : ui32, handshake.name = "buffer130", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_25, %falseResult_26 = cond_br %240, %229 {handshake.bb = 5 : ui32, handshake.name = "cond_br12"} : <i1>, <i32>
    %241 = buffer %237#7 {handshake.bb = 5 : ui32, handshake.name = "buffer129", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_27, %falseResult_28 = cond_br %241, %219 {handshake.bb = 5 : ui32, handshake.name = "cond_br13"} : <i1>, <i32>
    %242 = buffer %169 {handshake.bb = 5 : ui32, handshake.name = "buffer87", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %243 = buffer %242 {handshake.bb = 5 : ui32, handshake.name = "buffer88", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %244 = buffer %237#1 {handshake.bb = 5 : ui32, handshake.name = "buffer123", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_29, %falseResult_30 = cond_br %244, %243 {handshake.bb = 5 : ui32, handshake.name = "cond_br14"} : <i1>, <i5>
    %245 = buffer %171 {handshake.bb = 5 : ui32, handshake.name = "buffer89", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %246 = buffer %245 {handshake.bb = 5 : ui32, handshake.name = "buffer90", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %247 = buffer %237#2 {handshake.bb = 5 : ui32, handshake.name = "buffer124", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_31, %falseResult_32 = cond_br %247, %246 {handshake.bb = 5 : ui32, handshake.name = "cond_br15"} : <i1>, <i5>
    %248 = buffer %173 {handshake.bb = 5 : ui32, handshake.name = "buffer91", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %249 = buffer %248 {handshake.bb = 5 : ui32, handshake.name = "buffer92", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %250 = buffer %237#6 {handshake.bb = 5 : ui32, handshake.name = "buffer128", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_33, %falseResult_34 = cond_br %250, %249 {handshake.bb = 5 : ui32, handshake.name = "cond_br16"} : <i1>, <i32>
    %251 = buffer %178#0 {handshake.bb = 5 : ui32, handshake.name = "buffer95", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %252 = buffer %237#5 {handshake.bb = 5 : ui32, handshake.name = "buffer127", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_35, %falseResult_36 = cond_br %252, %251 {handshake.bb = 5 : ui32, handshake.name = "cond_br17"} : <i1>, <i32>
    %253 = buffer %183#4 {handshake.bb = 5 : ui32, handshake.name = "buffer104", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %254 = buffer %237#4 {handshake.bb = 5 : ui32, handshake.name = "buffer126", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_37, %falseResult_38 = cond_br %254, %253 {handshake.bb = 5 : ui32, handshake.name = "cond_br18"} : <i1>, <i32>
    %255 = buffer %result_17 {handshake.bb = 5 : ui32, handshake.name = "buffer105", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %256 = buffer %255 {handshake.bb = 5 : ui32, handshake.name = "buffer106", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %257 = buffer %237#3 {handshake.bb = 5 : ui32, handshake.name = "buffer125", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_39, %falseResult_40 = cond_br %257, %256 {handshake.bb = 5 : ui32, handshake.name = "cond_br19"} : <i1>, <>
    %258 = merge %falseResult_30 {handshake.bb = 6 : ui32, handshake.name = "merge3"} : <i5>
    %259 = merge %falseResult_32 {handshake.bb = 6 : ui32, handshake.name = "merge4"} : <i5>
    %260 = merge %falseResult_34 {handshake.bb = 6 : ui32, handshake.name = "merge5"} : <i32>
    %261 = merge %falseResult_36 {handshake.bb = 6 : ui32, handshake.name = "merge6"} : <i32>
    %262 = merge %falseResult_38 {handshake.bb = 6 : ui32, handshake.name = "merge7"} : <i32>
    %263 = merge %falseResult_28 {handshake.bb = 6 : ui32, handshake.name = "merge8"} : <i32>
    %264 = merge %falseResult_26 {handshake.bb = 6 : ui32, handshake.name = "merge9"} : <i32>
    %result_41, %index_42 = control_merge %falseResult_40  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    sink %index_42 {handshake.name = "sink2"} : <i1>
    %265 = source {handshake.bb = 6 : ui32, handshake.name = "source5"} : <>
    %266 = constant %265 {handshake.bb = 6 : ui32, handshake.name = "constant36", value = 2 : i3} : <>, <i3>
    %267 = extsi %266 {handshake.bb = 6 : ui32, handshake.name = "extsi10"} : <i3> to <i32>
    %268 = source {handshake.bb = 6 : ui32, handshake.name = "source6"} : <>
    %269 = constant %268 {handshake.bb = 6 : ui32, handshake.name = "constant37", value = 1 : i2} : <>, <i2>
    %270 = extsi %269 {handshake.bb = 6 : ui32, handshake.name = "extsi11"} : <i2> to <i32>
    %271 = buffer %262 {handshake.bb = 6 : ui32, handshake.name = "buffer139", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %272 = buffer %271 {handshake.bb = 6 : ui32, handshake.name = "buffer140", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %273 = addi %272, %270 {handshake.bb = 6 : ui32, handshake.name = "addi10"} : <i32>
    %274:2 = fork [2] %273 {handshake.bb = 6 : ui32, handshake.name = "fork22"} : <i32>
    %275 = buffer %274#0 {handshake.bb = 6 : ui32, handshake.name = "buffer147", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %276 = trunci %275 {handshake.bb = 6 : ui32, handshake.name = "trunci8"} : <i32> to <i2>
    %277 = buffer %274#1 {handshake.bb = 6 : ui32, handshake.name = "buffer148", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %278 = cmpi ult, %277, %267 {handshake.bb = 6 : ui32, handshake.name = "cmpi9"} : <i32>
    %279:8 = fork [8] %278 {handshake.bb = 6 : ui32, handshake.name = "fork23"} : <i1>
    %280 = buffer %279#0 {handshake.bb = 6 : ui32, handshake.name = "buffer149", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_43, %falseResult_44 = cond_br %280, %276 {handshake.bb = 6 : ui32, handshake.name = "cond_br20"} : <i1>, <i2>
    sink %falseResult_44 {handshake.name = "sink3"} : <i2>
    %281 = extsi %trueResult_43 {handshake.bb = 6 : ui32, handshake.name = "extsi35"} : <i2> to <i32>
    %282 = buffer %264 {handshake.bb = 6 : ui32, handshake.name = "buffer143", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %283 = buffer %282 {handshake.bb = 6 : ui32, handshake.name = "buffer144", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %284 = buffer %279#7 {handshake.bb = 6 : ui32, handshake.name = "buffer156", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_45, %falseResult_46 = cond_br %284, %283 {handshake.bb = 6 : ui32, handshake.name = "cond_br21"} : <i1>, <i32>
    %285 = buffer %263 {handshake.bb = 6 : ui32, handshake.name = "buffer141", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %286 = buffer %285 {handshake.bb = 6 : ui32, handshake.name = "buffer142", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %287 = buffer %279#6 {handshake.bb = 6 : ui32, handshake.name = "buffer155", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_47, %falseResult_48 = cond_br %287, %286 {handshake.bb = 6 : ui32, handshake.name = "cond_br22"} : <i1>, <i32>
    %288 = buffer %258 {handshake.bb = 6 : ui32, handshake.name = "buffer131", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %289 = buffer %288 {handshake.bb = 6 : ui32, handshake.name = "buffer132", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %290 = buffer %279#1 {handshake.bb = 6 : ui32, handshake.name = "buffer150", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_49, %falseResult_50 = cond_br %290, %289 {handshake.bb = 6 : ui32, handshake.name = "cond_br23"} : <i1>, <i5>
    %291 = buffer %259 {handshake.bb = 6 : ui32, handshake.name = "buffer133", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %292 = buffer %291 {handshake.bb = 6 : ui32, handshake.name = "buffer134", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %293 = buffer %279#2 {handshake.bb = 6 : ui32, handshake.name = "buffer151", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_51, %falseResult_52 = cond_br %293, %292 {handshake.bb = 6 : ui32, handshake.name = "cond_br24"} : <i1>, <i5>
    %294 = buffer %260 {handshake.bb = 6 : ui32, handshake.name = "buffer135", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %295 = buffer %294 {handshake.bb = 6 : ui32, handshake.name = "buffer136", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %296 = buffer %279#5 {handshake.bb = 6 : ui32, handshake.name = "buffer154", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_53, %falseResult_54 = cond_br %296, %295 {handshake.bb = 6 : ui32, handshake.name = "cond_br25"} : <i1>, <i32>
    %297 = buffer %261 {handshake.bb = 6 : ui32, handshake.name = "buffer137", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %298 = buffer %297 {handshake.bb = 6 : ui32, handshake.name = "buffer138", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %299 = buffer %279#4 {handshake.bb = 6 : ui32, handshake.name = "buffer153", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_55, %falseResult_56 = cond_br %299, %298 {handshake.bb = 6 : ui32, handshake.name = "cond_br26"} : <i1>, <i32>
    sink %falseResult_56 {handshake.name = "sink4"} : <i32>
    %300 = buffer %result_41 {handshake.bb = 6 : ui32, handshake.name = "buffer145", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %301 = buffer %300 {handshake.bb = 6 : ui32, handshake.name = "buffer146", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %302 = buffer %279#3 {handshake.bb = 6 : ui32, handshake.name = "buffer152", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_57, %falseResult_58 = cond_br %302, %301 {handshake.bb = 6 : ui32, handshake.name = "cond_br27"} : <i1>, <>
    %303 = merge %falseResult_50 {handshake.bb = 7 : ui32, handshake.name = "merge10"} : <i5>
    %304 = merge %falseResult_52 {handshake.bb = 7 : ui32, handshake.name = "merge11"} : <i5>
    %305 = merge %falseResult_54 {handshake.bb = 7 : ui32, handshake.name = "merge12"} : <i32>
    %306 = merge %falseResult_48 {handshake.bb = 7 : ui32, handshake.name = "merge13"} : <i32>
    %307 = buffer %306 {handshake.bb = 7 : ui32, handshake.name = "buffer163", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %308 = buffer %307 {handshake.bb = 7 : ui32, handshake.name = "buffer164", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %309:3 = fork [3] %308 {handshake.bb = 7 : ui32, handshake.name = "fork24"} : <i32>
    %310 = merge %falseResult_46 {handshake.bb = 7 : ui32, handshake.name = "merge14"} : <i32>
    %result_59, %index_60 = control_merge %falseResult_58  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    sink %index_60 {handshake.name = "sink5"} : <i1>
    %311 = buffer %result_59 {handshake.bb = 7 : ui32, handshake.name = "buffer170", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %312 = buffer %311 {handshake.bb = 7 : ui32, handshake.name = "buffer171", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %313:2 = fork [2] %312 {handshake.bb = 7 : ui32, handshake.name = "fork25"} : <>
    %314 = buffer %313#1 {handshake.bb = 7 : ui32, handshake.name = "buffer173", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %315 = constant %314 {handshake.bb = 7 : ui32, handshake.name = "constant21", value = false} : <>, <i1>
    %316 = source {handshake.bb = 7 : ui32, handshake.name = "source7"} : <>
    %317 = constant %316 {handshake.bb = 7 : ui32, handshake.name = "constant38", value = 255 : i9} : <>, <i9>
    %318 = extsi %317 {handshake.bb = 7 : ui32, handshake.name = "extsi12"} : <i9> to <i32>
    %319:2 = fork [2] %318 {handshake.bb = 7 : ui32, handshake.name = "fork26"} : <i32>
    %320 = buffer %309#2 {handshake.bb = 7 : ui32, handshake.name = "buffer167", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %321 = buffer %319#0 {handshake.bb = 7 : ui32, handshake.name = "buffer174", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %322 = cmpi sgt, %320, %321 {handshake.bb = 7 : ui32, handshake.name = "cmpi4"} : <i32>
    %323:9 = fork [9] %322 {handshake.bb = 7 : ui32, handshake.name = "fork27"} : <i1>
    %324 = buffer %309#1 {handshake.bb = 7 : ui32, handshake.name = "buffer166", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %325 = buffer %319#1 {handshake.bb = 7 : ui32, handshake.name = "buffer175", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %326 = buffer %323#8 {handshake.bb = 7 : ui32, handshake.name = "buffer184", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %327 = select %326[%325, %324] {handshake.bb = 7 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %328 = buffer %323#7 {handshake.bb = 7 : ui32, handshake.name = "buffer183", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_61, %falseResult_62 = cond_br %328, %315 {handshake.bb = 7 : ui32, handshake.name = "cond_br28"} : <i1>, <i1>
    sink %falseResult_62 {handshake.name = "sink6"} : <i1>
    %329 = buffer %303 {handshake.bb = 7 : ui32, handshake.name = "buffer157", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %330 = buffer %329 {handshake.bb = 7 : ui32, handshake.name = "buffer158", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %331 = buffer %323#0 {handshake.bb = 7 : ui32, handshake.name = "buffer176", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_63, %falseResult_64 = cond_br %331, %330 {handshake.bb = 7 : ui32, handshake.name = "cond_br29"} : <i1>, <i5>
    %332 = buffer %304 {handshake.bb = 7 : ui32, handshake.name = "buffer159", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %333 = buffer %332 {handshake.bb = 7 : ui32, handshake.name = "buffer160", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %334 = buffer %323#1 {handshake.bb = 7 : ui32, handshake.name = "buffer177", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_65, %falseResult_66 = cond_br %334, %333 {handshake.bb = 7 : ui32, handshake.name = "cond_br30"} : <i1>, <i5>
    %335 = buffer %305 {handshake.bb = 7 : ui32, handshake.name = "buffer161", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %336 = buffer %335 {handshake.bb = 7 : ui32, handshake.name = "buffer162", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %337 = buffer %323#6 {handshake.bb = 7 : ui32, handshake.name = "buffer182", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_67, %falseResult_68 = cond_br %337, %336 {handshake.bb = 7 : ui32, handshake.name = "cond_br31"} : <i1>, <i32>
    %338 = buffer %310 {handshake.bb = 7 : ui32, handshake.name = "buffer168", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %339 = buffer %338 {handshake.bb = 7 : ui32, handshake.name = "buffer169", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %340 = buffer %323#5 {handshake.bb = 7 : ui32, handshake.name = "buffer181", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_69, %falseResult_70 = cond_br %340, %339 {handshake.bb = 7 : ui32, handshake.name = "cond_br32"} : <i1>, <i32>
    %341 = buffer %323#4 {handshake.bb = 7 : ui32, handshake.name = "buffer180", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_71, %falseResult_72 = cond_br %341, %327 {handshake.bb = 7 : ui32, handshake.name = "cond_br33"} : <i1>, <i32>
    %342 = buffer %313#0 {handshake.bb = 7 : ui32, handshake.name = "buffer172", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %343 = buffer %323#3 {handshake.bb = 7 : ui32, handshake.name = "buffer179", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_73, %falseResult_74 = cond_br %343, %342 {handshake.bb = 7 : ui32, handshake.name = "cond_br34"} : <i1>, <>
    %344 = buffer %309#0 {handshake.bb = 7 : ui32, handshake.name = "buffer165", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %345 = buffer %323#2 {handshake.bb = 7 : ui32, handshake.name = "buffer178", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_75, %falseResult_76 = cond_br %345, %344 {handshake.bb = 7 : ui32, handshake.name = "cond_br35"} : <i1>, <i32>
    sink %trueResult_75 {handshake.name = "sink7"} : <i32>
    %346 = merge %falseResult_64 {handshake.bb = 8 : ui32, handshake.name = "merge15"} : <i5>
    %347 = merge %falseResult_66 {handshake.bb = 8 : ui32, handshake.name = "merge16"} : <i5>
    %348 = merge %falseResult_68 {handshake.bb = 8 : ui32, handshake.name = "merge17"} : <i32>
    %349 = merge %falseResult_76 {handshake.bb = 8 : ui32, handshake.name = "merge18"} : <i32>
    %350 = merge %falseResult_70 {handshake.bb = 8 : ui32, handshake.name = "merge19"} : <i32>
    %351 = merge %falseResult_72 {handshake.bb = 8 : ui32, handshake.name = "merge20"} : <i32>
    %result_77, %index_78 = control_merge %falseResult_74  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    sink %index_78 {handshake.name = "sink8"} : <i1>
    %352 = source {handshake.bb = 8 : ui32, handshake.name = "source8"} : <>
    %353 = constant %352 {handshake.bb = 8 : ui32, handshake.name = "constant39", value = false} : <>, <i1>
    %354 = extsi %353 {handshake.bb = 8 : ui32, handshake.name = "extsi13"} : <i1> to <i32>
    %355 = buffer %349 {handshake.bb = 8 : ui32, handshake.name = "buffer191", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %356 = buffer %355 {handshake.bb = 8 : ui32, handshake.name = "buffer192", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %357 = cmpi slt, %356, %354 {handshake.bb = 8 : ui32, handshake.name = "cmpi5"} : <i32>
    %358 = br %357 {handshake.bb = 8 : ui32, handshake.name = "br30"} : <i1>
    %359 = buffer %346 {handshake.bb = 8 : ui32, handshake.name = "buffer185", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %360 = buffer %359 {handshake.bb = 8 : ui32, handshake.name = "buffer186", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %361 = br %360 {handshake.bb = 8 : ui32, handshake.name = "br31"} : <i5>
    %362 = buffer %347 {handshake.bb = 8 : ui32, handshake.name = "buffer187", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %363 = buffer %362 {handshake.bb = 8 : ui32, handshake.name = "buffer188", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %364 = br %363 {handshake.bb = 8 : ui32, handshake.name = "br32"} : <i5>
    %365 = buffer %348 {handshake.bb = 8 : ui32, handshake.name = "buffer189", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %366 = buffer %365 {handshake.bb = 8 : ui32, handshake.name = "buffer190", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %367 = br %366 {handshake.bb = 8 : ui32, handshake.name = "br33"} : <i32>
    %368 = buffer %350 {handshake.bb = 8 : ui32, handshake.name = "buffer193", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %369 = buffer %368 {handshake.bb = 8 : ui32, handshake.name = "buffer194", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %370 = br %369 {handshake.bb = 8 : ui32, handshake.name = "br34"} : <i32>
    %371 = buffer %351 {handshake.bb = 8 : ui32, handshake.name = "buffer195", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %372 = buffer %371 {handshake.bb = 8 : ui32, handshake.name = "buffer196", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %373 = br %372 {handshake.bb = 8 : ui32, handshake.name = "br35"} : <i32>
    %374 = buffer %result_77 {handshake.bb = 8 : ui32, handshake.name = "buffer197", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %375 = buffer %374 {handshake.bb = 8 : ui32, handshake.name = "buffer198", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %376 = br %375 {handshake.bb = 8 : ui32, handshake.name = "br36"} : <>
    %377 = buffer %392#2 {handshake.bb = 9 : ui32, handshake.name = "buffer218", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %378 = mux %377 [%trueResult_61, %358] {handshake.bb = 9 : ui32, handshake.name = "mux20"} : <i1>, <i1>
    %379 = buffer %392#0 {handshake.bb = 9 : ui32, handshake.name = "buffer216", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %380 = mux %379 [%trueResult_63, %361] {handshake.bb = 9 : ui32, handshake.name = "mux21"} : <i1>, <i5>
    %381 = buffer %392#1 {handshake.bb = 9 : ui32, handshake.name = "buffer217", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %382 = mux %381 [%trueResult_65, %364] {handshake.bb = 9 : ui32, handshake.name = "mux22"} : <i1>, <i5>
    %383 = buffer %392#3 {handshake.bb = 9 : ui32, handshake.name = "buffer219", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %384 = mux %383 [%trueResult_67, %367] {handshake.bb = 9 : ui32, handshake.name = "mux23"} : <i1>, <i32>
    %385 = buffer %392#4 {handshake.bb = 9 : ui32, handshake.name = "buffer220", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %386 = mux %385 [%trueResult_69, %370] {handshake.bb = 9 : ui32, handshake.name = "mux24"} : <i1>, <i32>
    %387 = buffer %386 {handshake.bb = 9 : ui32, handshake.name = "buffer207", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %388 = buffer %387 {handshake.bb = 9 : ui32, handshake.name = "buffer208", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %389:3 = fork [3] %388 {handshake.bb = 9 : ui32, handshake.name = "fork28"} : <i32>
    %390 = buffer %392#5 {handshake.bb = 9 : ui32, handshake.name = "buffer221", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %391 = mux %390 [%trueResult_71, %373] {handshake.bb = 9 : ui32, handshake.name = "mux25"} : <i1>, <i32>
    %result_79, %index_80 = control_merge %trueResult_73, %376  {handshake.bb = 9 : ui32, handshake.name = "control_merge8"} : <>, <i1>
    %392:6 = fork [6] %index_80 {handshake.bb = 9 : ui32, handshake.name = "fork29"} : <i1>
    %393 = buffer %result_79 {handshake.bb = 9 : ui32, handshake.name = "buffer214", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %394 = buffer %393 {handshake.bb = 9 : ui32, handshake.name = "buffer215", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %395:2 = fork [2] %394 {handshake.bb = 9 : ui32, handshake.name = "fork30"} : <>
    %396 = buffer %395#1 {handshake.bb = 9 : ui32, handshake.name = "buffer223", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %397 = constant %396 {handshake.bb = 9 : ui32, handshake.name = "constant24", value = false} : <>, <i1>
    %398 = source {handshake.bb = 9 : ui32, handshake.name = "source9"} : <>
    %399 = constant %398 {handshake.bb = 9 : ui32, handshake.name = "constant40", value = 255 : i9} : <>, <i9>
    %400 = extsi %399 {handshake.bb = 9 : ui32, handshake.name = "extsi14"} : <i9> to <i32>
    %401:2 = fork [2] %400 {handshake.bb = 9 : ui32, handshake.name = "fork31"} : <i32>
    %402 = source {handshake.bb = 9 : ui32, handshake.name = "source10"} : <>
    %403 = constant %402 {handshake.bb = 9 : ui32, handshake.name = "constant41", value = false} : <>, <i1>
    %404 = extsi %403 {handshake.bb = 9 : ui32, handshake.name = "extsi15"} : <i1> to <i32>
    %405 = buffer %378 {handshake.bb = 9 : ui32, handshake.name = "buffer199", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %406 = buffer %405 {handshake.bb = 9 : ui32, handshake.name = "buffer200", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %407 = buffer %391 {handshake.bb = 9 : ui32, handshake.name = "buffer212", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %408 = buffer %407 {handshake.bb = 9 : ui32, handshake.name = "buffer213", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %409 = select %406[%404, %408] {handshake.bb = 9 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %410 = buffer %389#2 {handshake.bb = 9 : ui32, handshake.name = "buffer211", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %411 = buffer %401#0 {handshake.bb = 9 : ui32, handshake.name = "buffer224", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %412 = cmpi sgt, %410, %411 {handshake.bb = 9 : ui32, handshake.name = "cmpi6"} : <i32>
    %413:9 = fork [9] %412 {handshake.bb = 9 : ui32, handshake.name = "fork32"} : <i1>
    %414 = buffer %389#1 {handshake.bb = 9 : ui32, handshake.name = "buffer210", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %415 = buffer %401#1 {handshake.bb = 9 : ui32, handshake.name = "buffer225", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %416 = buffer %413#8 {handshake.bb = 9 : ui32, handshake.name = "buffer234", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %417 = select %416[%415, %414] {handshake.bb = 9 : ui32, handshake.name = "select3"} : <i1>, <i32>
    %418 = buffer %413#7 {handshake.bb = 9 : ui32, handshake.name = "buffer233", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_81, %falseResult_82 = cond_br %418, %397 {handshake.bb = 9 : ui32, handshake.name = "cond_br36"} : <i1>, <i1>
    sink %falseResult_82 {handshake.name = "sink9"} : <i1>
    %419 = buffer %380 {handshake.bb = 9 : ui32, handshake.name = "buffer201", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %420 = buffer %419 {handshake.bb = 9 : ui32, handshake.name = "buffer202", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %421 = buffer %413#0 {handshake.bb = 9 : ui32, handshake.name = "buffer226", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_83, %falseResult_84 = cond_br %421, %420 {handshake.bb = 9 : ui32, handshake.name = "cond_br37"} : <i1>, <i5>
    %422 = buffer %382 {handshake.bb = 9 : ui32, handshake.name = "buffer203", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %423 = buffer %422 {handshake.bb = 9 : ui32, handshake.name = "buffer204", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %424 = buffer %413#1 {handshake.bb = 9 : ui32, handshake.name = "buffer227", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_85, %falseResult_86 = cond_br %424, %423 {handshake.bb = 9 : ui32, handshake.name = "cond_br38"} : <i1>, <i5>
    %425 = buffer %384 {handshake.bb = 9 : ui32, handshake.name = "buffer205", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %426 = buffer %425 {handshake.bb = 9 : ui32, handshake.name = "buffer206", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %427 = buffer %413#6 {handshake.bb = 9 : ui32, handshake.name = "buffer232", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_87, %falseResult_88 = cond_br %427, %426 {handshake.bb = 9 : ui32, handshake.name = "cond_br39"} : <i1>, <i32>
    %428 = buffer %413#5 {handshake.bb = 9 : ui32, handshake.name = "buffer231", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_89, %falseResult_90 = cond_br %428, %409 {handshake.bb = 9 : ui32, handshake.name = "cond_br40"} : <i1>, <i32>
    %429 = buffer %413#4 {handshake.bb = 9 : ui32, handshake.name = "buffer230", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_91, %falseResult_92 = cond_br %429, %417 {handshake.bb = 9 : ui32, handshake.name = "cond_br41"} : <i1>, <i32>
    %430 = buffer %395#0 {handshake.bb = 9 : ui32, handshake.name = "buffer222", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %431 = buffer %413#3 {handshake.bb = 9 : ui32, handshake.name = "buffer229", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_93, %falseResult_94 = cond_br %431, %430 {handshake.bb = 9 : ui32, handshake.name = "cond_br42"} : <i1>, <>
    %432 = buffer %389#0 {handshake.bb = 9 : ui32, handshake.name = "buffer209", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %433 = buffer %413#2 {handshake.bb = 9 : ui32, handshake.name = "buffer228", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_95, %falseResult_96 = cond_br %433, %432 {handshake.bb = 9 : ui32, handshake.name = "cond_br43"} : <i1>, <i32>
    sink %trueResult_95 {handshake.name = "sink10"} : <i32>
    %434 = merge %falseResult_84 {handshake.bb = 10 : ui32, handshake.name = "merge21"} : <i5>
    %435 = merge %falseResult_86 {handshake.bb = 10 : ui32, handshake.name = "merge22"} : <i5>
    %436 = merge %falseResult_88 {handshake.bb = 10 : ui32, handshake.name = "merge23"} : <i32>
    %437 = merge %falseResult_96 {handshake.bb = 10 : ui32, handshake.name = "merge24"} : <i32>
    %438 = merge %falseResult_90 {handshake.bb = 10 : ui32, handshake.name = "merge25"} : <i32>
    %439 = merge %falseResult_92 {handshake.bb = 10 : ui32, handshake.name = "merge26"} : <i32>
    %result_97, %index_98 = control_merge %falseResult_94  {handshake.bb = 10 : ui32, handshake.name = "control_merge9"} : <>, <i1>
    sink %index_98 {handshake.name = "sink11"} : <i1>
    %440 = source {handshake.bb = 10 : ui32, handshake.name = "source11"} : <>
    %441 = constant %440 {handshake.bb = 10 : ui32, handshake.name = "constant42", value = false} : <>, <i1>
    %442 = extsi %441 {handshake.bb = 10 : ui32, handshake.name = "extsi16"} : <i1> to <i32>
    %443 = buffer %437 {handshake.bb = 10 : ui32, handshake.name = "buffer241", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %444 = buffer %443 {handshake.bb = 10 : ui32, handshake.name = "buffer242", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %445 = cmpi slt, %444, %442 {handshake.bb = 10 : ui32, handshake.name = "cmpi7"} : <i32>
    %446 = br %445 {handshake.bb = 10 : ui32, handshake.name = "br37"} : <i1>
    %447 = buffer %434 {handshake.bb = 10 : ui32, handshake.name = "buffer235", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %448 = buffer %447 {handshake.bb = 10 : ui32, handshake.name = "buffer236", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %449 = br %448 {handshake.bb = 10 : ui32, handshake.name = "br38"} : <i5>
    %450 = buffer %435 {handshake.bb = 10 : ui32, handshake.name = "buffer237", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %451 = buffer %450 {handshake.bb = 10 : ui32, handshake.name = "buffer238", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %452 = br %451 {handshake.bb = 10 : ui32, handshake.name = "br39"} : <i5>
    %453 = buffer %436 {handshake.bb = 10 : ui32, handshake.name = "buffer239", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %454 = buffer %453 {handshake.bb = 10 : ui32, handshake.name = "buffer240", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %455 = br %454 {handshake.bb = 10 : ui32, handshake.name = "br40"} : <i32>
    %456 = buffer %438 {handshake.bb = 10 : ui32, handshake.name = "buffer243", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %457 = buffer %456 {handshake.bb = 10 : ui32, handshake.name = "buffer244", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %458 = br %457 {handshake.bb = 10 : ui32, handshake.name = "br41"} : <i32>
    %459 = buffer %439 {handshake.bb = 10 : ui32, handshake.name = "buffer245", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %460 = buffer %459 {handshake.bb = 10 : ui32, handshake.name = "buffer246", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %461 = br %460 {handshake.bb = 10 : ui32, handshake.name = "br42"} : <i32>
    %462 = buffer %result_97 {handshake.bb = 10 : ui32, handshake.name = "buffer247", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %463 = buffer %462 {handshake.bb = 10 : ui32, handshake.name = "buffer248", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %464 = br %463 {handshake.bb = 10 : ui32, handshake.name = "br43"} : <>
    %465 = buffer %477#2 {handshake.bb = 11 : ui32, handshake.name = "buffer265", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %466 = mux %465 [%trueResult_81, %446] {handshake.bb = 11 : ui32, handshake.name = "mux26"} : <i1>, <i1>
    %467 = buffer %477#0 {handshake.bb = 11 : ui32, handshake.name = "buffer263", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %468 = mux %467 [%trueResult_83, %449] {handshake.bb = 11 : ui32, handshake.name = "mux27"} : <i1>, <i5>
    %469 = buffer %477#1 {handshake.bb = 11 : ui32, handshake.name = "buffer264", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %470 = mux %469 [%trueResult_85, %452] {handshake.bb = 11 : ui32, handshake.name = "mux28"} : <i1>, <i5>
    %471 = buffer %477#3 {handshake.bb = 11 : ui32, handshake.name = "buffer266", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %472 = mux %471 [%trueResult_87, %455] {handshake.bb = 11 : ui32, handshake.name = "mux29"} : <i1>, <i32>
    %473 = buffer %477#4 {handshake.bb = 11 : ui32, handshake.name = "buffer267", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %474 = mux %473 [%trueResult_89, %458] {handshake.bb = 11 : ui32, handshake.name = "mux30"} : <i1>, <i32>
    %475 = buffer %477#5 {handshake.bb = 11 : ui32, handshake.name = "buffer268", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %476 = mux %475 [%trueResult_91, %461] {handshake.bb = 11 : ui32, handshake.name = "mux31"} : <i1>, <i32>
    %result_99, %index_100 = control_merge %trueResult_93, %464  {handshake.bb = 11 : ui32, handshake.name = "control_merge10"} : <>, <i1>
    %477:6 = fork [6] %index_100 {handshake.bb = 11 : ui32, handshake.name = "fork33"} : <i1>
    %478 = source {handshake.bb = 11 : ui32, handshake.name = "source12"} : <>
    %479 = constant %478 {handshake.bb = 11 : ui32, handshake.name = "constant43", value = false} : <>, <i1>
    %480 = extsi %479 {handshake.bb = 11 : ui32, handshake.name = "extsi17"} : <i1> to <i32>
    %481 = buffer %466 {handshake.bb = 11 : ui32, handshake.name = "buffer249", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %482 = buffer %481 {handshake.bb = 11 : ui32, handshake.name = "buffer250", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %483 = buffer %476 {handshake.bb = 11 : ui32, handshake.name = "buffer259", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %484 = buffer %483 {handshake.bb = 11 : ui32, handshake.name = "buffer260", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %485 = select %482[%480, %484] {handshake.bb = 11 : ui32, handshake.name = "select4"} : <i1>, <i32>
    %486 = buffer %474 {handshake.bb = 11 : ui32, handshake.name = "buffer257", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %487 = buffer %486 {handshake.bb = 11 : ui32, handshake.name = "buffer258", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %488 = addi %487, %485 {handshake.bb = 11 : ui32, handshake.name = "addi2"} : <i32>
    %489 = buffer %472 {handshake.bb = 11 : ui32, handshake.name = "buffer255", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %490 = buffer %489 {handshake.bb = 11 : ui32, handshake.name = "buffer256", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %491 = addi %490, %488 {handshake.bb = 11 : ui32, handshake.name = "addi3"} : <i32>
    %492 = br %491 {handshake.bb = 11 : ui32, handshake.name = "br44"} : <i32>
    %493 = buffer %468 {handshake.bb = 11 : ui32, handshake.name = "buffer251", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %494 = buffer %493 {handshake.bb = 11 : ui32, handshake.name = "buffer252", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %495 = br %494 {handshake.bb = 11 : ui32, handshake.name = "br45"} : <i5>
    %496 = buffer %470 {handshake.bb = 11 : ui32, handshake.name = "buffer253", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %497 = buffer %496 {handshake.bb = 11 : ui32, handshake.name = "buffer254", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %498 = br %497 {handshake.bb = 11 : ui32, handshake.name = "br46"} : <i5>
    %499 = buffer %result_99 {handshake.bb = 11 : ui32, handshake.name = "buffer261", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %500 = buffer %499 {handshake.bb = 11 : ui32, handshake.name = "buffer262", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %501 = br %500 {handshake.bb = 11 : ui32, handshake.name = "br47"} : <>
    %502 = buffer %523#2 {handshake.bb = 12 : ui32, handshake.name = "buffer285", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %503 = mux %502 [%falseResult_10, %492] {handshake.bb = 12 : ui32, handshake.name = "mux32"} : <i1>, <i32>
    %504 = buffer %503 {handshake.bb = 12 : ui32, handshake.name = "buffer269", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %505 = buffer %504 {handshake.bb = 12 : ui32, handshake.name = "buffer270", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %506:2 = fork [2] %505 {handshake.bb = 12 : ui32, handshake.name = "fork34"} : <i32>
    %507 = buffer %523#0 {handshake.bb = 12 : ui32, handshake.name = "buffer283", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %508 = mux %507 [%falseResult, %495] {handshake.bb = 12 : ui32, handshake.name = "mux33"} : <i1>, <i5>
    %509 = buffer %508 {handshake.bb = 12 : ui32, handshake.name = "buffer273", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %510 = buffer %509 {handshake.bb = 12 : ui32, handshake.name = "buffer274", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %511:2 = fork [2] %510 {handshake.bb = 12 : ui32, handshake.name = "fork35"} : <i5>
    %512 = buffer %511#1 {handshake.bb = 12 : ui32, handshake.name = "buffer276", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %513 = extsi %512 {handshake.bb = 12 : ui32, handshake.name = "extsi36"} : <i5> to <i6>
    %514 = buffer %523#1 {handshake.bb = 12 : ui32, handshake.name = "buffer284", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %515 = mux %514 [%falseResult_8, %498] {handshake.bb = 12 : ui32, handshake.name = "mux34"} : <i1>, <i5>
    %516 = buffer %515 {handshake.bb = 12 : ui32, handshake.name = "buffer277", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %517 = buffer %516 {handshake.bb = 12 : ui32, handshake.name = "buffer278", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %518:2 = fork [2] %517 {handshake.bb = 12 : ui32, handshake.name = "fork36"} : <i5>
    %519 = buffer %518#0 {handshake.bb = 12 : ui32, handshake.name = "buffer279", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %520 = extsi %519 {handshake.bb = 12 : ui32, handshake.name = "extsi37"} : <i5> to <i6>
    %521 = buffer %518#1 {handshake.bb = 12 : ui32, handshake.name = "buffer280", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %522 = extsi %521 {handshake.bb = 12 : ui32, handshake.name = "extsi38"} : <i5> to <i6>
    %result_101, %index_102 = control_merge %falseResult_12, %501  {handshake.bb = 12 : ui32, handshake.name = "control_merge11"} : <>, <i1>
    %523:3 = fork [3] %index_102 {handshake.bb = 12 : ui32, handshake.name = "fork37"} : <i1>
    %524 = buffer %result_101 {handshake.bb = 12 : ui32, handshake.name = "buffer281", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %525 = buffer %524 {handshake.bb = 12 : ui32, handshake.name = "buffer282", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %526:2 = fork [2] %525 {handshake.bb = 12 : ui32, handshake.name = "fork38"} : <>
    %527 = buffer %526#0 {handshake.bb = 12 : ui32, handshake.name = "buffer286", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %528 = constant %527 {handshake.bb = 12 : ui32, handshake.name = "constant44", value = 1 : i2} : <>, <i2>
    %529 = extsi %528 {handshake.bb = 12 : ui32, handshake.name = "extsi18"} : <i2> to <i32>
    %530 = source {handshake.bb = 12 : ui32, handshake.name = "source13"} : <>
    %531 = constant %530 {handshake.bb = 12 : ui32, handshake.name = "constant45", value = 1 : i2} : <>, <i2>
    %532 = extsi %531 {handshake.bb = 12 : ui32, handshake.name = "extsi39"} : <i2> to <i6>
    %533 = source {handshake.bb = 12 : ui32, handshake.name = "source14"} : <>
    %534 = constant %533 {handshake.bb = 12 : ui32, handshake.name = "constant46", value = 15 : i5} : <>, <i5>
    %535 = extsi %534 {handshake.bb = 12 : ui32, handshake.name = "extsi40"} : <i5> to <i6>
    %536 = source {handshake.bb = 12 : ui32, handshake.name = "source15"} : <>
    %537 = constant %536 {handshake.bb = 12 : ui32, handshake.name = "constant47", value = 255 : i9} : <>, <i9>
    %538 = extsi %537 {handshake.bb = 12 : ui32, handshake.name = "extsi41"} : <i9> to <i10>
    %539 = buffer %506#1 {handshake.bb = 12 : ui32, handshake.name = "buffer272", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %540 = trunci %539 {handshake.bb = 12 : ui32, handshake.name = "trunci0"} : <i32> to <i8>
    %541 = extui %540 {handshake.bb = 12 : ui32, handshake.name = "extui4"} : <i8> to <i10>
    %542 = subi %538, %541 {handshake.bb = 12 : ui32, handshake.name = "subi0"} : <i10>
    %543 = extsi %542 {handshake.bb = 12 : ui32, handshake.name = "extsi42"} : <i10> to <i32>
    %544 = addi %520, %513 {handshake.bb = 12 : ui32, handshake.name = "addi8"} : <i6>
    %545 = extsi %544 {handshake.bb = 12 : ui32, handshake.name = "extsi26"} : <i6> to <i8>
    %addressResult_103, %dataResult_104 = store[%545] %543 {handshake.bb = 12 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 14], [-14, -1]]>]>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i8>, <i32>
    %546 = addi %522, %532 {handshake.bb = 12 : ui32, handshake.name = "addi11"} : <i6>
    %547:2 = fork [2] %546 {handshake.bb = 12 : ui32, handshake.name = "fork39"} : <i6>
    %548 = buffer %547#0 {handshake.bb = 12 : ui32, handshake.name = "buffer288", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %549 = trunci %548 {handshake.bb = 12 : ui32, handshake.name = "trunci9"} : <i6> to <i5>
    %550 = buffer %547#1 {handshake.bb = 12 : ui32, handshake.name = "buffer289", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %551 = cmpi ult, %550, %535 {handshake.bb = 12 : ui32, handshake.name = "cmpi10"} : <i6>
    %552:4 = fork [4] %551 {handshake.bb = 12 : ui32, handshake.name = "fork40"} : <i1>
    %553 = buffer %552#0 {handshake.bb = 12 : ui32, handshake.name = "buffer290", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_105, %falseResult_106 = cond_br %553, %549 {handshake.bb = 12 : ui32, handshake.name = "cond_br44"} : <i1>, <i5>
    sink %falseResult_106 {handshake.name = "sink12"} : <i5>
    %554 = buffer %506#0 {handshake.bb = 12 : ui32, handshake.name = "buffer271", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %555 = buffer %552#2 {handshake.bb = 12 : ui32, handshake.name = "buffer292", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_107, %falseResult_108 = cond_br %555, %554 {handshake.bb = 12 : ui32, handshake.name = "cond_br45"} : <i1>, <i32>
    %556 = buffer %511#0 {handshake.bb = 12 : ui32, handshake.name = "buffer275", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %557 = buffer %552#1 {handshake.bb = 12 : ui32, handshake.name = "buffer291", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_109, %falseResult_110 = cond_br %557, %556 {handshake.bb = 12 : ui32, handshake.name = "cond_br46"} : <i1>, <i5>
    %558 = buffer %526#1 {handshake.bb = 12 : ui32, handshake.name = "buffer287", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %559 = buffer %552#3 {handshake.bb = 12 : ui32, handshake.name = "buffer293", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_111, %falseResult_112 = cond_br %559, %558 {handshake.bb = 12 : ui32, handshake.name = "cond_br47"} : <i1>, <>
    %560 = merge %falseResult_110 {handshake.bb = 13 : ui32, handshake.name = "merge27"} : <i5>
    %561 = buffer %560 {handshake.bb = 13 : ui32, handshake.name = "buffer294", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %562 = buffer %561 {handshake.bb = 13 : ui32, handshake.name = "buffer295", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %563 = extsi %562 {handshake.bb = 13 : ui32, handshake.name = "extsi43"} : <i5> to <i6>
    %564 = merge %falseResult_108 {handshake.bb = 13 : ui32, handshake.name = "merge28"} : <i32>
    %result_113, %index_114 = control_merge %falseResult_112  {handshake.bb = 13 : ui32, handshake.name = "control_merge12"} : <>, <i1>
    sink %index_114 {handshake.name = "sink13"} : <i1>
    %565 = source {handshake.bb = 13 : ui32, handshake.name = "source16"} : <>
    %566 = constant %565 {handshake.bb = 13 : ui32, handshake.name = "constant48", value = 1 : i2} : <>, <i2>
    %567 = extsi %566 {handshake.bb = 13 : ui32, handshake.name = "extsi44"} : <i2> to <i6>
    %568 = source {handshake.bb = 13 : ui32, handshake.name = "source17"} : <>
    %569 = constant %568 {handshake.bb = 13 : ui32, handshake.name = "constant49", value = 15 : i5} : <>, <i5>
    %570 = extsi %569 {handshake.bb = 13 : ui32, handshake.name = "extsi45"} : <i5> to <i6>
    %571 = addi %563, %567 {handshake.bb = 13 : ui32, handshake.name = "addi12"} : <i6>
    %572:2 = fork [2] %571 {handshake.bb = 13 : ui32, handshake.name = "fork41"} : <i6>
    %573 = buffer %572#0 {handshake.bb = 13 : ui32, handshake.name = "buffer300", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %574 = trunci %573 {handshake.bb = 13 : ui32, handshake.name = "trunci10"} : <i6> to <i5>
    %575 = buffer %572#1 {handshake.bb = 13 : ui32, handshake.name = "buffer301", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %576 = cmpi ult, %575, %570 {handshake.bb = 13 : ui32, handshake.name = "cmpi11"} : <i6>
    %577:3 = fork [3] %576 {handshake.bb = 13 : ui32, handshake.name = "fork42"} : <i1>
    %578 = buffer %577#0 {handshake.bb = 13 : ui32, handshake.name = "buffer302", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_115, %falseResult_116 = cond_br %578, %574 {handshake.bb = 13 : ui32, handshake.name = "cond_br48"} : <i1>, <i5>
    sink %falseResult_116 {handshake.name = "sink14"} : <i5>
    %579 = buffer %564 {handshake.bb = 13 : ui32, handshake.name = "buffer296", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %580 = buffer %579 {handshake.bb = 13 : ui32, handshake.name = "buffer297", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %581 = buffer %577#1 {handshake.bb = 13 : ui32, handshake.name = "buffer303", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_117, %falseResult_118 = cond_br %581, %580 {handshake.bb = 13 : ui32, handshake.name = "cond_br49"} : <i1>, <i32>
    %582 = buffer %result_113 {handshake.bb = 13 : ui32, handshake.name = "buffer298", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %583 = buffer %582 {handshake.bb = 13 : ui32, handshake.name = "buffer299", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %584 = buffer %577#2 {handshake.bb = 13 : ui32, handshake.name = "buffer304", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_119, %falseResult_120 = cond_br %584, %583 {handshake.bb = 13 : ui32, handshake.name = "cond_br50"} : <i1>, <>
    %585 = merge %falseResult_118 {handshake.bb = 14 : ui32, handshake.name = "merge29"} : <i32>
    %result_121, %index_122 = control_merge %falseResult_120  {handshake.bb = 14 : ui32, handshake.name = "control_merge13"} : <>, <i1>
    sink %index_122 {handshake.name = "sink15"} : <i1>
    %586 = buffer %result_121 {handshake.bb = 14 : ui32, handshake.name = "buffer307", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %587 = buffer %586 {handshake.bb = 14 : ui32, handshake.name = "buffer308", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %588:4 = fork [4] %587 {handshake.bb = 14 : ui32, handshake.name = "fork43"} : <>
    %589 = buffer %0#1 {handshake.bb = 14 : ui32, handshake.name = "buffer1", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %590 = buffer %585 {handshake.bb = 14 : ui32, handshake.name = "buffer305", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %591 = buffer %590 {handshake.bb = 14 : ui32, handshake.name = "buffer306", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    end {handshake.bb = 14 : ui32, handshake.name = "end0"} %591, %memEnd_4, %memEnd_2, %memEnd_0, %memEnd, %589 : <i32>, <>, <>, <>, <>, <>
  }
}


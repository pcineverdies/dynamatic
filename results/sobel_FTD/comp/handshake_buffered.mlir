module {
  handshake.func @sobel(%arg0: memref<256xi32>, %arg1: memref<9xi32>, %arg2: memref<9xi32>, %arg3: memref<256xi32>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["in", "gX", "gY", "out", "in_start", "gX_start", "gY_start", "out_start", "start"], cfg.edges = "[0,1][7,9,8,cmpi4][2,3,12,cmpi3][9,11,10,cmpi6][4,5][11,12][6,4,7,cmpi9][13,1,14,cmpi11][1,2][8,9][3,4][10,11][5,5,6,cmpi8][12,2,13,cmpi10]", resNames = ["out0", "in_end", "gX_end", "gY_end", "out_end", "end"]} {
    %0:11 = fork [11] %arg8 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1 = buffer %0#3 {handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %memEnd = mem_controller[%arg3 : memref<256xi32>] %arg7 (%346, %addressResult_55, %dataResult_56) %1 {connectedBlocks = [12 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller4"} :    (!handshake.channel<i32>, !handshake.channel<i8>, !handshake.channel<i32>) -> ()
    %2 = buffer %0#2 {handshake.name = "buffer2", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs, %memEnd_0 = mem_controller[%arg2 : memref<9xi32>] %arg6 (%addressResult_19) %2 {connectedBlocks = [5 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %3 = buffer %0#1 {handshake.name = "buffer1", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs_1, %memEnd_2 = mem_controller[%arg1 : memref<9xi32>] %arg5 (%addressResult_17) %3 {connectedBlocks = [5 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller6"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %4 = buffer %0#0 {handshake.name = "buffer0", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs_3, %memEnd_4 = mem_controller[%arg0 : memref<256xi32>] %arg4 (%addressResult) %4 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller7"} :    (!handshake.channel<i8>) -> !handshake.channel<i32>
    %5 = buffer %0#10 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %6 = constant %5 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %7:3 = fork [3] %6 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %8 = buffer %7#0 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %9 = extsi %8 {handshake.bb = 1 : ui32, handshake.name = "extsi26"} : <i1> to <i5>
    %10 = buffer %7#1 {handshake.bb = 1 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %11 = extsi %10 {handshake.bb = 1 : ui32, handshake.name = "extsi2"} : <i1> to <i32>
    %12 = buffer %7#2 {handshake.bb = 1 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %13 = buffer %391#3 {handshake.bb = 1 : ui32, handshake.name = "buffer209", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %14 = merge %12, %13 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %15 = buffer %14 {handshake.bb = 1 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %16:3 = fork [3] %15 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <i1>
    %17 = buffer %0#9 {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %18 = buffer %16#2 {handshake.bb = 1 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %19 = mux %18 [%17, %trueResult_61] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %20 = buffer %19 {handshake.bb = 1 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %21 = buffer %20 {handshake.bb = 1 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %22:5 = fork [5] %21 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %23 = buffer %16#1 {handshake.bb = 1 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %24 = mux %23 [%11, %trueResult_57] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux24"} : <i1>, <i32>
    %25 = buffer %16#0 {handshake.bb = 1 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %26 = mux %25 [%9, %trueResult_59] {handshake.bb = 1 : ui32, handshake.name = "mux25"} : <i1>, <i5>
    %27 = buffer %26 {handshake.bb = 1 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %28 = buffer %27 {handshake.bb = 1 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %29:2 = fork [2] %28 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i5>
    %30 = buffer %29#0 {handshake.bb = 1 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %31 = extsi %30 {handshake.bb = 1 : ui32, handshake.name = "extsi27"} : <i5> to <i6>
    %32 = buffer %22#2 {handshake.bb = 1 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %33 = constant %32 {handshake.bb = 1 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %34 = extsi %33 {handshake.bb = 1 : ui32, handshake.name = "extsi28"} : <i1> to <i5>
    %35 = buffer %0#8 {handshake.bb = 2 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %36 = constant %35 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant52", value = false} : <>, <i1>
    %37 = buffer %374#4 {handshake.bb = 2 : ui32, handshake.name = "buffer203", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %38 = merge %36, %37 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge26"} : <i1>
    %39 = buffer %38 {handshake.bb = 2 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %40:4 = fork [4] %39 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork5"} : <i1>
    %41 = buffer %29#1 {handshake.bb = 2 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %42 = buffer %40#0 {handshake.bb = 2 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %43 = mux %42 [%41, %trueResult_53] {handshake.bb = 2 : ui32, handshake.name = "mux26"} : <i1>, <i5>
    %44 = buffer %43 {handshake.bb = 2 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %45 = buffer %44 {handshake.bb = 2 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %46:2 = fork [2] %45 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i5>
    %47 = buffer %46#0 {handshake.bb = 2 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %48 = extsi %47 {handshake.bb = 2 : ui32, handshake.name = "extsi29"} : <i5> to <i6>
    %49 = buffer %22#4 {handshake.bb = 2 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %50 = buffer %40#3 {handshake.bb = 2 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %51 = mux %50 [%49, %trueResult_51] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux43"} : <i1>, <>
    %52 = buffer %51 {handshake.bb = 2 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %53 = buffer %52 {handshake.bb = 2 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %54:9 = fork [9] %53 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <>
    %55 = buffer %24 {handshake.bb = 2 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %56 = buffer %55 {handshake.bb = 2 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %57 = buffer %40#2 {handshake.bb = 2 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %58 = mux %57 [%56, %trueResult_49] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux48"} : <i1>, <i32>
    %59 = buffer %40#1 {handshake.bb = 2 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %60 = mux %59 [%34, %trueResult_47] {handshake.bb = 2 : ui32, handshake.name = "mux49"} : <i1>, <i5>
    %61 = buffer %60 {handshake.bb = 2 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %62 = buffer %61 {handshake.bb = 2 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %63:5 = fork [5] %62 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i5>
    %64 = buffer %63#0 {handshake.bb = 2 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %65 = extsi %64 {handshake.bb = 2 : ui32, handshake.name = "extsi30"} : <i5> to <i6>
    %66 = buffer %63#1 {handshake.bb = 2 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %67 = extsi %66 {handshake.bb = 2 : ui32, handshake.name = "extsi31"} : <i5> to <i6>
    %68 = buffer %54#4 {handshake.bb = 2 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %69 = constant %68 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = 5 : i4} : <>, <i4>
    %70 = extsi %69 {handshake.bb = 2 : ui32, handshake.name = "extsi32"} : <i4> to <i5>
    %71 = buffer %54#3 {handshake.bb = 2 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %72 = constant %71 {handshake.bb = 2 : ui32, handshake.name = "constant6", value = false} : <>, <i1>
    %73:3 = fork [3] %72 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i1>
    %74 = buffer %73#0 {handshake.bb = 2 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %75 = extsi %74 {handshake.bb = 2 : ui32, handshake.name = "extsi33"} : <i1> to <i5>
    %76 = buffer %63#4 {handshake.bb = 2 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %77 = cmpi eq, %76, %75 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i5>
    %78:2 = fork [2] %77 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i1>
    %79 = buffer %63#3 {handshake.bb = 2 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %80 = cmpi eq, %79, %70 {handshake.bb = 2 : ui32, handshake.name = "cmpi1"} : <i5>
    %81 = buffer %73#1 {handshake.bb = 2 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %82 = buffer %78#1 {handshake.bb = 2 : ui32, handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %83 = cmpi eq, %82, %81 {handshake.bb = 2 : ui32, handshake.name = "cmpi2"} : <i1>
    %84 = andi %83, %80 {handshake.bb = 2 : ui32, handshake.name = "andi0"} : <i1>
    %85 = buffer %78#0 {handshake.bb = 2 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %86 = ori %85, %84 {handshake.bb = 2 : ui32, handshake.name = "ori0"} : <i1>
    %87 = buffer %73#2 {handshake.bb = 2 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %88 = cmpi eq, %86, %87 {handshake.bb = 2 : ui32, handshake.name = "cmpi3"} : <i1>
    %89:6 = fork [6] %88 {handshake.bb = 2 : ui32, handshake.name = "fork11"} : <i1>
    %90 = buffer %63#2 {handshake.bb = 3 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %91 = buffer %89#0 {handshake.bb = 3 : ui32, handshake.name = "buffer65", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult, %falseResult = cond_br %91, %90 {handshake.bb = 3 : ui32, handshake.name = "cond_br129"} : <i1>, <i5>
    sink %falseResult {handshake.name = "sink0"} : <i5>
    %92 = extsi %trueResult {handshake.bb = 3 : ui32, handshake.name = "extsi24"} : <i5> to <i8>
    %93 = buffer %255#3 {handshake.bb = 3 : ui32, handshake.name = "buffer161", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %94 = constant %93 {handshake.bb = 3 : ui32, handshake.name = "constant13", value = -1 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%92] %outputs_3 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i8>, <i32>
    %95 = buffer %0#7 {handshake.bb = 4 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %96 = constant %95 {ftd.imerge, handshake.bb = 4 : ui32, handshake.name = "constant76", value = false} : <>, <i1>
    %97 = buffer %252#1 {handshake.bb = 4 : ui32, handshake.name = "buffer153", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %98 = merge %96, %97 {ftd.imerge, handshake.bb = 4 : ui32, handshake.name = "merge50"} : <i1>
    %99 = buffer %98 {handshake.bb = 4 : ui32, handshake.name = "buffer71", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %100:5 = fork [5] %99 {handshake.bb = 4 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork12"} : <i1>
    %101 = buffer %100#4 {handshake.bb = 4 : ui32, handshake.name = "buffer76", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %102 = buffer %255#4 {handshake.bb = 4 : ui32, handshake.name = "buffer162", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %103 = mux %101 [%102, %trueResult_29] {ftd.regen, handshake.bb = 4 : ui32, handshake.name = "mux50"} : <i1>, <>
    %104 = buffer %103 {handshake.bb = 4 : ui32, handshake.name = "buffer77", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %105 = buffer %104 {handshake.bb = 4 : ui32, handshake.name = "buffer78", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %106:5 = fork [5] %105 {handshake.bb = 4 : ui32, handshake.name = "fork13"} : <>
    %107 = buffer %100#3 {handshake.bb = 4 : ui32, handshake.name = "buffer75", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %108 = mux %107 [%dataResult, %trueResult_27] {ftd.regen, handshake.bb = 4 : ui32, handshake.name = "mux52"} : <i1>, <i32>
    %109 = buffer %108 {handshake.bb = 4 : ui32, handshake.name = "buffer84", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %110 = buffer %109 {handshake.bb = 4 : ui32, handshake.name = "buffer85", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %111:2 = fork [2] %110 {handshake.bb = 4 : ui32, handshake.name = "fork14"} : <i32>
    %112 = buffer %100#2 {handshake.bb = 4 : ui32, handshake.name = "buffer74", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %113 = buffer %265#0 {handshake.bb = 4 : ui32, handshake.name = "buffer167", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %114 = mux %112 [%113, %trueResult_23] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux58"} : <i1>, <i32>
    %115 = buffer %100#1 {handshake.bb = 4 : ui32, handshake.name = "buffer73", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %116 = buffer %265#1 {handshake.bb = 4 : ui32, handshake.name = "buffer168", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %117 = mux %115 [%116, %trueResult_21] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux59"} : <i1>, <i32>
    %118 = buffer %100#0 {handshake.bb = 4 : ui32, handshake.name = "buffer72", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %119 = mux %118 [%94, %234] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux60"} : <i1>, <i32>
    %120 = buffer %119 {handshake.bb = 4 : ui32, handshake.name = "buffer92", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %121 = buffer %120 {handshake.bb = 4 : ui32, handshake.name = "buffer93", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %122:2 = fork [2] %121 {handshake.bb = 4 : ui32, handshake.name = "fork15"} : <i32>
    %123 = buffer %106#4 {handshake.bb = 4 : ui32, handshake.name = "buffer83", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %124 = constant %123 {handshake.bb = 4 : ui32, handshake.name = "constant15", value = -1 : i32} : <>, <i32>
    %125 = buffer %228#1 {handshake.bb = 5 : ui32, handshake.name = "buffer138", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_5, %falseResult_6 = cond_br %125, %220 {handshake.bb = 5 : ui32, handshake.name = "cond_br130"} : <i1>, <i32>
    %126 = buffer %228#2 {handshake.bb = 5 : ui32, handshake.name = "buffer139", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_7, %falseResult_8 = cond_br %126, %210 {handshake.bb = 5 : ui32, handshake.name = "cond_br131"} : <i1>, <i32>
    %127 = buffer %228#0 {handshake.bb = 5 : ui32, handshake.name = "buffer137", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_9, %falseResult_10 = cond_br %127, %225 {handshake.bb = 5 : ui32, handshake.name = "cond_br132"} : <i1>, <i2>
    sink %falseResult_10 {handshake.name = "sink1"} : <i2>
    %128 = extsi %trueResult_9 {handshake.bb = 5 : ui32, handshake.name = "extsi34"} : <i2> to <i32>
    %129 = buffer %168#3 {handshake.bb = 5 : ui32, handshake.name = "buffer120", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %130 = buffer %228#3 {handshake.bb = 5 : ui32, handshake.name = "buffer140", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_11, %falseResult_12 = cond_br %130, %129 {handshake.bb = 5 : ui32, handshake.name = "cond_br133"} : <i1>, <>
    sink %falseResult_12 {handshake.name = "sink2"} : <>
    %131 = buffer %152#4 {handshake.bb = 5 : ui32, handshake.name = "buffer114", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %132 = buffer %228#4 {handshake.bb = 5 : ui32, handshake.name = "buffer141", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_13, %falseResult_14 = cond_br %132, %131 {handshake.bb = 5 : ui32, handshake.name = "cond_br134"} : <i1>, <i32>
    sink %falseResult_14 {handshake.name = "sink3"} : <i32>
    %133 = buffer %146#2 {handshake.bb = 5 : ui32, handshake.name = "buffer107", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %134 = buffer %228#5 {handshake.bb = 5 : ui32, handshake.name = "buffer142", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_15, %falseResult_16 = cond_br %134, %133 {handshake.bb = 5 : ui32, handshake.name = "cond_br135"} : <i1>, <i32>
    sink %falseResult_16 {handshake.name = "sink4"} : <i32>
    %135 = buffer %0#6 {handshake.bb = 5 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %136 = constant %135 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant87", value = false} : <>, <i1>
    %137 = buffer %228#6 {handshake.bb = 5 : ui32, handshake.name = "buffer143", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %138 = merge %136, %137 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge61"} : <i1>
    %139 = buffer %138 {handshake.bb = 5 : ui32, handshake.name = "buffer96", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %140:6 = fork [6] %139 {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork16"} : <i1>
    %141 = buffer %111#1 {handshake.bb = 5 : ui32, handshake.name = "buffer87", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %142 = buffer %140#5 {handshake.bb = 5 : ui32, handshake.name = "buffer102", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %143 = mux %142 [%141, %trueResult_15] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux61"} : <i1>, <i32>
    %144 = buffer %143 {handshake.bb = 5 : ui32, handshake.name = "buffer103", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %145 = buffer %144 {handshake.bb = 5 : ui32, handshake.name = "buffer104", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %146:3 = fork [3] %145 {handshake.bb = 5 : ui32, handshake.name = "fork17"} : <i32>
    %147 = buffer %122#1 {handshake.bb = 5 : ui32, handshake.name = "buffer95", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %148 = buffer %140#4 {handshake.bb = 5 : ui32, handshake.name = "buffer101", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %149 = mux %148 [%147, %trueResult_13] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux66"} : <i1>, <i32>
    %150 = buffer %149 {handshake.bb = 5 : ui32, handshake.name = "buffer108", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %151 = buffer %150 {handshake.bb = 5 : ui32, handshake.name = "buffer109", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %152:5 = fork [5] %151 {handshake.bb = 5 : ui32, handshake.name = "fork18"} : <i32>
    %153 = buffer %152#0 {handshake.bb = 5 : ui32, handshake.name = "buffer110", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %154 = trunci %153 {handshake.bb = 5 : ui32, handshake.name = "trunci1"} : <i32> to <i3>
    %155 = extsi %154 {handshake.bb = 5 : ui32, handshake.name = "extsi35"} : <i3> to <i4>
    %156 = buffer %152#1 {handshake.bb = 5 : ui32, handshake.name = "buffer111", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %157 = trunci %156 {handshake.bb = 5 : ui32, handshake.name = "trunci2"} : <i32> to <i4>
    %158 = buffer %152#2 {handshake.bb = 5 : ui32, handshake.name = "buffer112", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %159 = trunci %158 {handshake.bb = 5 : ui32, handshake.name = "trunci3"} : <i32> to <i3>
    %160 = extsi %159 {handshake.bb = 5 : ui32, handshake.name = "extsi36"} : <i3> to <i4>
    %161 = buffer %152#3 {handshake.bb = 5 : ui32, handshake.name = "buffer113", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %162 = trunci %161 {handshake.bb = 5 : ui32, handshake.name = "trunci4"} : <i32> to <i4>
    %163 = buffer %106#3 {handshake.bb = 5 : ui32, handshake.name = "buffer82", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %164 = buffer %140#3 {handshake.bb = 5 : ui32, handshake.name = "buffer100", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %165 = mux %164 [%163, %trueResult_11] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux67"} : <i1>, <>
    %166 = buffer %165 {handshake.bb = 5 : ui32, handshake.name = "buffer115", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %167 = buffer %166 {handshake.bb = 5 : ui32, handshake.name = "buffer116", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %168:4 = fork [4] %167 {handshake.bb = 5 : ui32, handshake.name = "fork19"} : <>
    %169 = buffer %114 {handshake.bb = 5 : ui32, handshake.name = "buffer88", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %170 = buffer %169 {handshake.bb = 5 : ui32, handshake.name = "buffer89", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %171 = buffer %140#2 {handshake.bb = 5 : ui32, handshake.name = "buffer99", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %172 = mux %171 [%170, %trueResult_7] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux70"} : <i1>, <i32>
    %173 = buffer %117 {handshake.bb = 5 : ui32, handshake.name = "buffer90", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %174 = buffer %173 {handshake.bb = 5 : ui32, handshake.name = "buffer91", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %175 = buffer %140#1 {handshake.bb = 5 : ui32, handshake.name = "buffer98", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %176 = mux %175 [%174, %trueResult_5] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux71"} : <i1>, <i32>
    %177 = buffer %140#0 {handshake.bb = 5 : ui32, handshake.name = "buffer97", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %178 = mux %177 [%124, %128] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux72"} : <i1>, <i32>
    %179 = buffer %178 {handshake.bb = 5 : ui32, handshake.name = "buffer125", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %180 = buffer %179 {handshake.bb = 5 : ui32, handshake.name = "buffer126", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %181:3 = fork [3] %180 {handshake.bb = 5 : ui32, handshake.name = "fork20"} : <i32>
    %182 = buffer %181#0 {handshake.bb = 5 : ui32, handshake.name = "buffer127", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %183 = trunci %182 {handshake.bb = 5 : ui32, handshake.name = "trunci5"} : <i32> to <i4>
    %184 = buffer %181#1 {handshake.bb = 5 : ui32, handshake.name = "buffer128", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %185 = trunci %184 {handshake.bb = 5 : ui32, handshake.name = "trunci6"} : <i32> to <i4>
    %186 = buffer %168#2 {handshake.bb = 5 : ui32, handshake.name = "buffer119", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %187 = constant %186 {handshake.bb = 5 : ui32, handshake.name = "constant7", value = 4 : i4} : <>, <i4>
    %188:2 = fork [2] %187 {handshake.bb = 5 : ui32, handshake.name = "fork21"} : <i4>
    %189 = buffer %168#1 {handshake.bb = 5 : ui32, handshake.name = "buffer118", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %190 = constant %189 {handshake.bb = 5 : ui32, handshake.name = "constant8", value = 2 : i3} : <>, <i3>
    %191 = extsi %190 {handshake.bb = 5 : ui32, handshake.name = "extsi7"} : <i3> to <i32>
    %192 = buffer %168#0 {handshake.bb = 5 : ui32, handshake.name = "buffer117", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %193 = constant %192 {handshake.bb = 5 : ui32, handshake.name = "constant9", value = 1 : i2} : <>, <i2>
    %194:3 = fork [3] %193 {handshake.bb = 5 : ui32, handshake.name = "fork22"} : <i2>
    %195 = buffer %194#0 {handshake.bb = 5 : ui32, handshake.name = "buffer132", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %196 = extui %195 {handshake.bb = 5 : ui32, handshake.name = "extui2"} : <i2> to <i4>
    %197 = buffer %194#1 {handshake.bb = 5 : ui32, handshake.name = "buffer133", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %198 = extui %197 {handshake.bb = 5 : ui32, handshake.name = "extui3"} : <i2> to <i4>
    %199 = buffer %194#2 {handshake.bb = 5 : ui32, handshake.name = "buffer134", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %200 = extsi %199 {handshake.bb = 5 : ui32, handshake.name = "extsi8"} : <i2> to <i32>
    %201 = shli %155, %196 {handshake.bb = 5 : ui32, handshake.name = "shli0"} : <i4>
    %202 = addi %157, %201 {handshake.bb = 5 : ui32, handshake.name = "addi13"} : <i4>
    %203 = addi %183, %202 {handshake.bb = 5 : ui32, handshake.name = "addi4"} : <i4>
    %204 = buffer %188#0 {handshake.bb = 5 : ui32, handshake.name = "buffer130", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %205 = addi %203, %204 {handshake.bb = 5 : ui32, handshake.name = "addi5"} : <i4>
    %addressResult_17, %dataResult_18 = load[%205] %outputs_1 {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i4>, <i32>
    %206 = buffer %146#1 {handshake.bb = 5 : ui32, handshake.name = "buffer106", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %207 = muli %206, %dataResult_18 {handshake.bb = 5 : ui32, handshake.name = "muli0"} : <i32>
    %208 = buffer %172 {handshake.bb = 5 : ui32, handshake.name = "buffer121", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %209 = buffer %208 {handshake.bb = 5 : ui32, handshake.name = "buffer122", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %210 = addi %209, %207 {handshake.bb = 5 : ui32, handshake.name = "addi0"} : <i32>
    %211 = shli %160, %198 {handshake.bb = 5 : ui32, handshake.name = "shli1"} : <i4>
    %212 = addi %162, %211 {handshake.bb = 5 : ui32, handshake.name = "addi14"} : <i4>
    %213 = addi %185, %212 {handshake.bb = 5 : ui32, handshake.name = "addi6"} : <i4>
    %214 = buffer %188#1 {handshake.bb = 5 : ui32, handshake.name = "buffer131", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %215 = addi %213, %214 {handshake.bb = 5 : ui32, handshake.name = "addi7"} : <i4>
    %addressResult_19, %dataResult_20 = load[%215] %outputs {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load2"} : <i4>, <i32>
    %216 = buffer %146#0 {handshake.bb = 5 : ui32, handshake.name = "buffer105", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %217 = muli %216, %dataResult_20 {handshake.bb = 5 : ui32, handshake.name = "muli1"} : <i32>
    %218 = buffer %176 {handshake.bb = 5 : ui32, handshake.name = "buffer123", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %219 = buffer %218 {handshake.bb = 5 : ui32, handshake.name = "buffer124", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %220 = addi %219, %217 {handshake.bb = 5 : ui32, handshake.name = "addi1"} : <i32>
    %221 = buffer %181#2 {handshake.bb = 5 : ui32, handshake.name = "buffer129", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %222 = addi %221, %200 {handshake.bb = 5 : ui32, handshake.name = "addi9"} : <i32>
    %223:2 = fork [2] %222 {handshake.bb = 5 : ui32, handshake.name = "fork23"} : <i32>
    %224 = buffer %223#0 {handshake.bb = 5 : ui32, handshake.name = "buffer135", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %225 = trunci %224 {handshake.bb = 5 : ui32, handshake.name = "trunci7"} : <i32> to <i2>
    %226 = buffer %223#1 {handshake.bb = 5 : ui32, handshake.name = "buffer136", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %227 = cmpi ult, %226, %191 {handshake.bb = 5 : ui32, handshake.name = "cmpi8"} : <i32>
    %228:7 = fork [7] %227 {handshake.bb = 5 : ui32, handshake.name = "fork24"} : <i1>
    %229 = buffer %252#2 {handshake.bb = 6 : ui32, handshake.name = "buffer154", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_21, %falseResult_22 = cond_br %229, %falseResult_6 {handshake.bb = 6 : ui32, handshake.name = "cond_br136"} : <i1>, <i32>
    %230:3 = fork [3] %falseResult_22 {handshake.bb = 6 : ui32, handshake.name = "fork25"} : <i32>
    %231 = buffer %252#3 {handshake.bb = 6 : ui32, handshake.name = "buffer155", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_23, %falseResult_24 = cond_br %231, %falseResult_8 {handshake.bb = 6 : ui32, handshake.name = "cond_br137"} : <i1>, <i32>
    %232:3 = fork [3] %falseResult_24 {handshake.bb = 6 : ui32, handshake.name = "fork26"} : <i32>
    %233 = buffer %252#0 {handshake.bb = 6 : ui32, handshake.name = "buffer152", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_25, %falseResult_26 = cond_br %233, %249 {handshake.bb = 6 : ui32, handshake.name = "cond_br138"} : <i1>, <i2>
    sink %falseResult_26 {handshake.name = "sink5"} : <i2>
    %234 = extsi %trueResult_25 {handshake.bb = 6 : ui32, handshake.name = "extsi37"} : <i2> to <i32>
    %235 = buffer %111#0 {handshake.bb = 6 : ui32, handshake.name = "buffer86", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %236 = buffer %252#4 {handshake.bb = 6 : ui32, handshake.name = "buffer156", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_27, %falseResult_28 = cond_br %236, %235 {handshake.bb = 6 : ui32, handshake.name = "cond_br139"} : <i1>, <i32>
    sink %falseResult_28 {handshake.name = "sink6"} : <i32>
    %237 = buffer %106#2 {handshake.bb = 6 : ui32, handshake.name = "buffer81", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %238 = buffer %252#5 {handshake.bb = 6 : ui32, handshake.name = "buffer157", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_29, %falseResult_30 = cond_br %238, %237 {handshake.bb = 6 : ui32, handshake.name = "cond_br140"} : <i1>, <>
    sink %falseResult_30 {handshake.name = "sink7"} : <>
    %239 = buffer %106#1 {handshake.bb = 6 : ui32, handshake.name = "buffer80", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %240 = constant %239 {handshake.bb = 6 : ui32, handshake.name = "constant34", value = 2 : i3} : <>, <i3>
    %241 = extsi %240 {handshake.bb = 6 : ui32, handshake.name = "extsi9"} : <i3> to <i32>
    %242 = buffer %106#0 {handshake.bb = 6 : ui32, handshake.name = "buffer79", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %243 = constant %242 {handshake.bb = 6 : ui32, handshake.name = "constant35", value = 1 : i2} : <>, <i2>
    %244 = extsi %243 {handshake.bb = 6 : ui32, handshake.name = "extsi10"} : <i2> to <i32>
    %245 = buffer %122#0 {handshake.bb = 6 : ui32, handshake.name = "buffer94", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %246 = addi %245, %244 {handshake.bb = 6 : ui32, handshake.name = "addi10"} : <i32>
    %247:2 = fork [2] %246 {handshake.bb = 6 : ui32, handshake.name = "fork27"} : <i32>
    %248 = buffer %247#0 {handshake.bb = 6 : ui32, handshake.name = "buffer150", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %249 = trunci %248 {handshake.bb = 6 : ui32, handshake.name = "trunci8"} : <i32> to <i2>
    %250 = buffer %247#1 {handshake.bb = 6 : ui32, handshake.name = "buffer151", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %251 = cmpi ult, %250, %241 {handshake.bb = 6 : ui32, handshake.name = "cmpi9"} : <i32>
    %252:6 = fork [6] %251 {handshake.bb = 6 : ui32, handshake.name = "fork28"} : <i1>
    %253 = buffer %54#8 {handshake.bb = 7 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %254 = buffer %89#1 {handshake.bb = 7 : ui32, handshake.name = "buffer66", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_31, %falseResult_32 = cond_br %254, %253 {handshake.bb = 7 : ui32, handshake.name = "cond_br141"} : <i1>, <>
    sink %falseResult_32 {handshake.name = "sink8"} : <>
    %255:5 = fork [5] %trueResult_31 {handshake.bb = 7 : ui32, handshake.name = "fork29"} : <>
    %256 = buffer %255#2 {handshake.bb = 7 : ui32, handshake.name = "buffer160", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %257 = constant %256 {handshake.bb = 7 : ui32, handshake.name = "constant21", value = false} : <>, <i1>
    %258:4 = fork [4] %257 {handshake.bb = 7 : ui32, handshake.name = "fork30"} : <i1>
    %259 = buffer %258#0 {handshake.bb = 7 : ui32, handshake.name = "buffer163", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %260 = extsi %259 {handshake.bb = 7 : ui32, handshake.name = "extsi11"} : <i1> to <i32>
    %261 = buffer %258#1 {handshake.bb = 7 : ui32, handshake.name = "buffer164", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %262 = extsi %261 {handshake.bb = 7 : ui32, handshake.name = "extsi12"} : <i1> to <i32>
    %263 = buffer %258#2 {handshake.bb = 7 : ui32, handshake.name = "buffer165", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %264 = extsi %263 {handshake.bb = 7 : ui32, handshake.name = "extsi13"} : <i1> to <i32>
    %265:2 = fork [2] %264 {handshake.bb = 7 : ui32, handshake.name = "fork31"} : <i32>
    %266 = buffer %255#0 {handshake.bb = 7 : ui32, handshake.name = "buffer158", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %267 = constant %266 {handshake.bb = 7 : ui32, handshake.name = "constant36", value = 255 : i9} : <>, <i9>
    %268:2 = fork [2] %267 {handshake.bb = 7 : ui32, handshake.name = "fork32"} : <i9>
    %269 = buffer %268#0 {handshake.bb = 7 : ui32, handshake.name = "buffer169", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i9>
    %270 = extsi %269 {handshake.bb = 7 : ui32, handshake.name = "extsi14"} : <i9> to <i32>
    %271:2 = fork [2] %270 {handshake.bb = 7 : ui32, handshake.name = "fork33"} : <i32>
    %272 = buffer %268#1 {handshake.bb = 7 : ui32, handshake.name = "buffer170", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i9>
    %273 = extsi %272 {handshake.bb = 7 : ui32, handshake.name = "extsi15"} : <i9> to <i32>
    %274:2 = fork [2] %273 {handshake.bb = 7 : ui32, handshake.name = "fork34"} : <i32>
    %275 = buffer %232#2 {handshake.bb = 7 : ui32, handshake.name = "buffer149", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %276 = buffer %274#0 {handshake.bb = 7 : ui32, handshake.name = "buffer173", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %277 = cmpi sgt, %275, %276 {handshake.bb = 7 : ui32, handshake.name = "cmpi4"} : <i32>
    %278:5 = fork [5] %277 {handshake.bb = 7 : ui32, handshake.name = "fork35"} : <i1>
    %279 = buffer %232#1 {handshake.bb = 7 : ui32, handshake.name = "buffer148", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %280 = buffer %274#1 {handshake.bb = 7 : ui32, handshake.name = "buffer174", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %281 = buffer %278#4 {handshake.bb = 7 : ui32, handshake.name = "buffer179", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %282 = select %281[%280, %279] {handshake.bb = 7 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %283 = buffer %232#0 {handshake.bb = 8 : ui32, handshake.name = "buffer147", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %284 = buffer %278#3 {handshake.bb = 8 : ui32, handshake.name = "buffer178", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_33, %falseResult_34 = cond_br %284, %283 {handshake.bb = 8 : ui32, handshake.name = "cond_br59"} : <i1>, <i32>
    sink %trueResult_33 {handshake.name = "sink9"} : <i32>
    %285 = buffer %54#7 {handshake.bb = 8 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %286 = buffer %292 {handshake.bb = 8 : ui32, handshake.name = "buffer180", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %287 = buffer %286 {handshake.bb = 8 : ui32, handshake.name = "buffer181", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_35, %falseResult_36 = cond_br %287, %285 {handshake.bb = 8 : ui32, handshake.name = "cond_br61"} : <i1>, <>
    sink %trueResult_35 {handshake.name = "sink10"} : <>
    %288 = source {handshake.bb = 8 : ui32, handshake.name = "source0"} : <>
    %289 = constant %288 {ftd.skip, handshake.bb = 8 : ui32, handshake.name = "constant99", value = true} : <>, <i1>
    %290 = buffer %89#2 {handshake.bb = 8 : ui32, handshake.name = "buffer67", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %291 = buffer %278#2 {handshake.bb = 8 : ui32, handshake.name = "buffer177", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %292 = mux %290 [%289, %291] {ftd.skip, handshake.bb = 8 : ui32, handshake.name = "mux73"} : <i1>, <i1>
    %293 = constant %falseResult_36 {handshake.bb = 8 : ui32, handshake.name = "constant37", value = false} : <>, <i1>
    %294 = extsi %293 {handshake.bb = 8 : ui32, handshake.name = "extsi16"} : <i1> to <i32>
    %295 = cmpi slt, %falseResult_34, %294 {handshake.bb = 8 : ui32, handshake.name = "cmpi5"} : <i32>
    %296 = buffer %258#3 {handshake.bb = 9 : ui32, handshake.name = "buffer166", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %297 = buffer %278#1 {handshake.bb = 9 : ui32, handshake.name = "buffer176", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_37, %falseResult_38 = cond_br %297, %296 {handshake.bb = 9 : ui32, handshake.name = "cond_br142"} : <i1>, <i1>
    sink %falseResult_38 {handshake.name = "sink11"} : <i1>
    %298 = buffer %278#0 {handshake.bb = 9 : ui32, handshake.name = "buffer175", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %299 = mux %298 [%295, %trueResult_37] {ftd.phi, handshake.bb = 9 : ui32, handshake.name = "mux74"} : <i1>, <i1>
    %300 = buffer %255#1 {handshake.bb = 9 : ui32, handshake.name = "buffer159", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %301 = constant %300 {handshake.bb = 9 : ui32, handshake.name = "constant24", value = false} : <>, <i1>
    %302 = buffer %299 {handshake.bb = 9 : ui32, handshake.name = "buffer182", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %303 = buffer %302 {handshake.bb = 9 : ui32, handshake.name = "buffer183", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %304 = select %303[%262, %282] {handshake.bb = 9 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %305 = buffer %230#2 {handshake.bb = 9 : ui32, handshake.name = "buffer146", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %306 = buffer %271#0 {handshake.bb = 9 : ui32, handshake.name = "buffer171", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %307 = cmpi sgt, %305, %306 {handshake.bb = 9 : ui32, handshake.name = "cmpi6"} : <i32>
    %308:5 = fork [5] %307 {handshake.bb = 9 : ui32, handshake.name = "fork36"} : <i1>
    %309 = buffer %230#1 {handshake.bb = 9 : ui32, handshake.name = "buffer145", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %310 = buffer %271#1 {handshake.bb = 9 : ui32, handshake.name = "buffer172", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %311 = buffer %308#4 {handshake.bb = 9 : ui32, handshake.name = "buffer188", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %312 = select %311[%310, %309] {handshake.bb = 9 : ui32, handshake.name = "select3"} : <i1>, <i32>
    %313 = buffer %230#0 {handshake.bb = 10 : ui32, handshake.name = "buffer144", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %314 = buffer %308#3 {handshake.bb = 10 : ui32, handshake.name = "buffer187", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_39, %falseResult_40 = cond_br %314, %313 {handshake.bb = 10 : ui32, handshake.name = "cond_br67"} : <i1>, <i32>
    sink %trueResult_39 {handshake.name = "sink12"} : <i32>
    %315 = buffer %54#6 {handshake.bb = 10 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %316 = buffer %322 {handshake.bb = 10 : ui32, handshake.name = "buffer189", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %317 = buffer %316 {handshake.bb = 10 : ui32, handshake.name = "buffer190", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_41, %falseResult_42 = cond_br %317, %315 {handshake.bb = 10 : ui32, handshake.name = "cond_br69"} : <i1>, <>
    sink %trueResult_41 {handshake.name = "sink13"} : <>
    %318 = source {handshake.bb = 10 : ui32, handshake.name = "source1"} : <>
    %319 = constant %318 {ftd.skip, handshake.bb = 10 : ui32, handshake.name = "constant100", value = true} : <>, <i1>
    %320 = buffer %89#3 {handshake.bb = 10 : ui32, handshake.name = "buffer68", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %321 = buffer %308#2 {handshake.bb = 10 : ui32, handshake.name = "buffer186", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %322 = mux %320 [%319, %321] {ftd.skip, handshake.bb = 10 : ui32, handshake.name = "mux75"} : <i1>, <i1>
    %323 = constant %falseResult_42 {handshake.bb = 10 : ui32, handshake.name = "constant38", value = false} : <>, <i1>
    %324 = extsi %323 {handshake.bb = 10 : ui32, handshake.name = "extsi17"} : <i1> to <i32>
    %325 = cmpi slt, %falseResult_40, %324 {handshake.bb = 10 : ui32, handshake.name = "cmpi7"} : <i32>
    %326 = buffer %58 {handshake.bb = 11 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %327 = buffer %326 {handshake.bb = 11 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %328 = buffer %89#4 {handshake.bb = 11 : ui32, handshake.name = "buffer69", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_43, %falseResult_44 = cond_br %328, %327 {handshake.bb = 11 : ui32, handshake.name = "cond_br143"} : <i1>, <i32>
    %329 = buffer %308#1 {handshake.bb = 11 : ui32, handshake.name = "buffer185", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_45, %falseResult_46 = cond_br %329, %301 {handshake.bb = 11 : ui32, handshake.name = "cond_br144"} : <i1>, <i1>
    sink %falseResult_46 {handshake.name = "sink14"} : <i1>
    %330 = buffer %308#0 {handshake.bb = 11 : ui32, handshake.name = "buffer184", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %331 = mux %330 [%325, %trueResult_45] {ftd.phi, handshake.bb = 11 : ui32, handshake.name = "mux76"} : <i1>, <i1>
    %332 = buffer %331 {handshake.bb = 11 : ui32, handshake.name = "buffer191", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %333 = buffer %332 {handshake.bb = 11 : ui32, handshake.name = "buffer192", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %334 = select %333[%260, %312] {handshake.bb = 11 : ui32, handshake.name = "select4"} : <i1>, <i32>
    %335 = addi %304, %334 {handshake.bb = 11 : ui32, handshake.name = "addi2"} : <i32>
    %336 = addi %trueResult_43, %335 {handshake.bb = 11 : ui32, handshake.name = "addi3"} : <i32>
    %337 = buffer %374#0 {handshake.bb = 12 : ui32, handshake.name = "buffer199", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_47, %falseResult_48 = cond_br %337, %371 {handshake.bb = 12 : ui32, handshake.name = "cond_br145"} : <i1>, <i5>
    sink %falseResult_48 {handshake.name = "sink15"} : <i5>
    %338 = buffer %351#1 {handshake.bb = 12 : ui32, handshake.name = "buffer196", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %339 = buffer %374#3 {handshake.bb = 12 : ui32, handshake.name = "buffer202", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_49, %falseResult_50 = cond_br %339, %338 {handshake.bb = 12 : ui32, handshake.name = "cond_br146"} : <i1>, <i32>
    %340 = buffer %54#5 {handshake.bb = 12 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %341 = buffer %374#2 {handshake.bb = 12 : ui32, handshake.name = "buffer201", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_51, %falseResult_52 = cond_br %341, %340 {handshake.bb = 12 : ui32, handshake.name = "cond_br147"} : <i1>, <>
    sink %falseResult_52 {handshake.name = "sink16"} : <>
    %342 = buffer %46#1 {handshake.bb = 12 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %343 = buffer %374#1 {handshake.bb = 12 : ui32, handshake.name = "buffer200", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_53, %falseResult_54 = cond_br %343, %342 {handshake.bb = 12 : ui32, handshake.name = "cond_br148"} : <i1>, <i5>
    sink %falseResult_54 {handshake.name = "sink17"} : <i5>
    %344 = buffer %0#4 {handshake.bb = 12 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %345 = constant %344 {handshake.bb = 12 : ui32, handshake.name = "constant39", value = 1 : i2} : <>, <i2>
    %346 = extsi %345 {handshake.bb = 12 : ui32, handshake.name = "extsi18"} : <i2> to <i32>
    %347 = buffer %89#5 {handshake.bb = 12 : ui32, handshake.name = "buffer70", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %348 = mux %347 [%falseResult_44, %336] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux77"} : <i1>, <i32>
    %349 = buffer %348 {handshake.bb = 12 : ui32, handshake.name = "buffer193", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %350 = buffer %349 {handshake.bb = 12 : ui32, handshake.name = "buffer194", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %351:2 = fork [2] %350 {handshake.bb = 12 : ui32, handshake.name = "fork37"} : <i32>
    %352 = buffer %54#2 {handshake.bb = 12 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %353 = constant %352 {handshake.bb = 12 : ui32, handshake.name = "constant40", value = 1 : i2} : <>, <i2>
    %354 = extsi %353 {handshake.bb = 12 : ui32, handshake.name = "extsi38"} : <i2> to <i6>
    %355 = buffer %54#1 {handshake.bb = 12 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %356 = constant %355 {handshake.bb = 12 : ui32, handshake.name = "constant41", value = 15 : i5} : <>, <i5>
    %357 = extsi %356 {handshake.bb = 12 : ui32, handshake.name = "extsi39"} : <i5> to <i6>
    %358 = buffer %54#0 {handshake.bb = 12 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %359 = constant %358 {handshake.bb = 12 : ui32, handshake.name = "constant42", value = 255 : i9} : <>, <i9>
    %360 = extsi %359 {handshake.bb = 12 : ui32, handshake.name = "extsi40"} : <i9> to <i10>
    %361 = buffer %351#0 {handshake.bb = 12 : ui32, handshake.name = "buffer195", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %362 = trunci %361 {handshake.bb = 12 : ui32, handshake.name = "trunci0"} : <i32> to <i8>
    %363 = extui %362 {handshake.bb = 12 : ui32, handshake.name = "extui4"} : <i8> to <i10>
    %364 = subi %360, %363 {handshake.bb = 12 : ui32, handshake.name = "subi0"} : <i10>
    %365 = extsi %364 {handshake.bb = 12 : ui32, handshake.name = "extsi41"} : <i10> to <i32>
    %366 = addi %65, %48 {handshake.bb = 12 : ui32, handshake.name = "addi8"} : <i6>
    %367 = extsi %366 {handshake.bb = 12 : ui32, handshake.name = "extsi25"} : <i6> to <i8>
    %addressResult_55, %dataResult_56 = store[%367] %365 {handshake.bb = 12 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 14], [-14, -1]]>]>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i8>, <i32>
    %368 = addi %67, %354 {handshake.bb = 12 : ui32, handshake.name = "addi11"} : <i6>
    %369:2 = fork [2] %368 {handshake.bb = 12 : ui32, handshake.name = "fork38"} : <i6>
    %370 = buffer %369#0 {handshake.bb = 12 : ui32, handshake.name = "buffer197", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %371 = trunci %370 {handshake.bb = 12 : ui32, handshake.name = "trunci9"} : <i6> to <i5>
    %372 = buffer %369#1 {handshake.bb = 12 : ui32, handshake.name = "buffer198", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %373 = cmpi ult, %372, %357 {handshake.bb = 12 : ui32, handshake.name = "cmpi10"} : <i6>
    %374:5 = fork [5] %373 {handshake.bb = 12 : ui32, handshake.name = "fork39"} : <i1>
    %375 = buffer %391#2 {handshake.bb = 13 : ui32, handshake.name = "buffer208", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_57, %falseResult_58 = cond_br %375, %falseResult_50 {handshake.bb = 13 : ui32, handshake.name = "cond_br149"} : <i1>, <i32>
    %376 = buffer %391#0 {handshake.bb = 13 : ui32, handshake.name = "buffer206", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_59, %falseResult_60 = cond_br %376, %388 {handshake.bb = 13 : ui32, handshake.name = "cond_br150"} : <i1>, <i5>
    sink %falseResult_60 {handshake.name = "sink18"} : <i5>
    %377 = buffer %22#3 {handshake.bb = 13 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %378 = buffer %391#1 {handshake.bb = 13 : ui32, handshake.name = "buffer207", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_61, %falseResult_62 = cond_br %378, %377 {handshake.bb = 13 : ui32, handshake.name = "cond_br151"} : <i1>, <>
    sink %falseResult_62 {handshake.name = "sink19"} : <>
    %379 = buffer %22#1 {handshake.bb = 13 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %380 = constant %379 {handshake.bb = 13 : ui32, handshake.name = "constant43", value = 1 : i2} : <>, <i2>
    %381 = extsi %380 {handshake.bb = 13 : ui32, handshake.name = "extsi42"} : <i2> to <i6>
    %382 = buffer %22#0 {handshake.bb = 13 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %383 = constant %382 {handshake.bb = 13 : ui32, handshake.name = "constant44", value = 15 : i5} : <>, <i5>
    %384 = extsi %383 {handshake.bb = 13 : ui32, handshake.name = "extsi43"} : <i5> to <i6>
    %385 = addi %31, %381 {handshake.bb = 13 : ui32, handshake.name = "addi12"} : <i6>
    %386:2 = fork [2] %385 {handshake.bb = 13 : ui32, handshake.name = "fork40"} : <i6>
    %387 = buffer %386#0 {handshake.bb = 13 : ui32, handshake.name = "buffer204", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %388 = trunci %387 {handshake.bb = 13 : ui32, handshake.name = "trunci10"} : <i6> to <i5>
    %389 = buffer %386#1 {handshake.bb = 13 : ui32, handshake.name = "buffer205", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %390 = cmpi ult, %389, %384 {handshake.bb = 13 : ui32, handshake.name = "cmpi11"} : <i6>
    %391:4 = fork [4] %390 {handshake.bb = 13 : ui32, handshake.name = "fork41"} : <i1>
    %392 = buffer %0#5 {handshake.bb = 14 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    end {handshake.bb = 14 : ui32, handshake.name = "end0"} %falseResult_58, %memEnd_4, %memEnd_2, %memEnd_0, %memEnd, %392 : <i32>, <>, <>, <>, <>, <>
  }
}


module {
  handshake.func @jacobi_1d_imper(%arg0: memref<50xi32>, %arg1: memref<50xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "B", "A_start", "B_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][4,1,5,cmpi2][1,2][3,3,4,cmpi1]", resNames = ["out0", "A_end", "B_end", "end"]} {
    %0:10 = fork [10] %arg4 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1 = buffer %0#1 {handshake.name = "buffer1", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %2:2 = lsq[%arg1 : memref<50xi32>] (%arg3, %60#1, %addressResult_12, %dataResult_13, %139#1, %addressResult_24, %1)  {groupSizes = [1 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %3 = buffer %0#0 {handshake.name = "buffer0", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs:2, %memEnd = mem_controller[%arg0 : memref<50xi32>] %arg2 (%addressResult_34, %151, %4#3, %4#4, %4#5) %3 {connectedBlocks = [5 : i32, 3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller1"} :    (!handshake.channel<i6>, !handshake.channel<i32>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %4:6 = lsq[MC] (%57#1, %addressResult, %addressResult_8, %addressResult_10, %135#1, %addressResult_26, %dataResult_27, %outputs#1)  {groupSizes = [3 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "7": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq3"} : (!handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>)
    %5 = buffer %0#9 {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %6 = buffer %17#2 {handshake.bb = 1 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %7 = mux %6 [%5, %trueResult_28] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <>
    %8 = buffer %0#8 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %9 = constant %8 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant16", value = false} : <>, <i1>
    %10:2 = fork [2] %9 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %11 = buffer %10#0 {handshake.bb = 1 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %12 = extsi %11 {handshake.bb = 1 : ui32, handshake.name = "extsi12"} : <i1> to <i2>
    %13 = buffer %10#1 {handshake.bb = 1 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %14 = buffer %188#3 {handshake.bb = 1 : ui32, handshake.name = "buffer104", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %15 = merge %13, %14 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge1"} : <i1>
    %16 = buffer %15 {handshake.bb = 1 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %17:3 = fork [3] %16 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <i1>
    %18 = buffer %0#7 {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %19 = buffer %17#1 {handshake.bb = 1 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %20 = mux %19 [%18, %trueResult_32] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %21 = buffer %20 {handshake.bb = 1 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %22 = buffer %21 {handshake.bb = 1 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %23:4 = fork [4] %22 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %24 = buffer %17#0 {handshake.bb = 1 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %25 = mux %24 [%12, %trueResult_30] {handshake.bb = 1 : ui32, handshake.name = "mux9"} : <i1>, <i2>
    %26 = buffer %25 {handshake.bb = 1 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i2>
    %27 = buffer %26 {handshake.bb = 1 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %28 = extsi %27 {handshake.bb = 1 : ui32, handshake.name = "extsi13"} : <i2> to <i3>
    %29 = buffer %23#1 {handshake.bb = 1 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %30 = constant %29 {handshake.bb = 1 : ui32, handshake.name = "constant0", value = 1 : i2} : <>, <i2>
    %31:2 = fork [2] %30 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i2>
    %32 = buffer %31#0 {handshake.bb = 1 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %33 = extsi %32 {handshake.bb = 1 : ui32, handshake.name = "extsi14"} : <i2> to <i3>
    %34 = buffer %31#1 {handshake.bb = 1 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %35 = extsi %34 {handshake.bb = 1 : ui32, handshake.name = "extsi15"} : <i2> to <i7>
    %36 = buffer %57#0 {handshake.bb = 2 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %37 = buffer %110#5 {handshake.bb = 2 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult, %falseResult = cond_br %37, %36 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br20"} : <i1>, <>
    sink %trueResult {handshake.name = "sink0"} : <>
    %38 = buffer %60#0 {handshake.bb = 2 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %39 = buffer %110#4 {handshake.bb = 2 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_0, %falseResult_1 = cond_br %39, %38 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br21"} : <i1>, <>
    sink %trueResult_0 {handshake.name = "sink1"} : <>
    %40 = buffer %54#5 {handshake.bb = 2 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %41 = buffer %110#3 {handshake.bb = 2 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_2, %falseResult_3 = cond_br %41, %40 {handshake.bb = 2 : ui32, handshake.name = "cond_br22"} : <i1>, <>
    sink %falseResult_3 {handshake.name = "sink2"} : <>
    %42 = buffer %0#6 {handshake.bb = 2 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %43 = constant %42 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant17", value = false} : <>, <i1>
    %44 = buffer %110#2 {handshake.bb = 2 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %45 = merge %43, %44 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge5"} : <i1>
    %46 = buffer %45 {handshake.bb = 2 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %47:2 = fork [2] %46 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork5"} : <i1>
    %48 = buffer %7 {handshake.bb = 2 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %49 = buffer %48 {handshake.bb = 2 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %50 = buffer %47#1 {handshake.bb = 2 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %51 = mux %50 [%49, %trueResult_2] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux5"} : <i1>, <>
    %52 = buffer %51 {handshake.bb = 2 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %53 = buffer %52 {handshake.bb = 2 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %54:6 = fork [6] %53 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <>
    %55 = buffer %54#4 {handshake.bb = 2 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %56 = buffer %55 {handshake.bb = 2 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %57:2 = lazy_fork [2] %56 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork0"} : <>
    %58 = buffer %54#3 {handshake.bb = 2 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %59 = buffer %58 {handshake.bb = 2 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %60:2 = lazy_fork [2] %59 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork1"} : <>
    %61 = buffer %88#1 {handshake.bb = 2 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %62 = buffer %110#1 {handshake.bb = 2 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_4, %falseResult_5 = cond_br %62, %61 {handshake.bb = 2 : ui32, handshake.name = "cond_br25"} : <i1>, <i2>
    sink %trueResult_4 {handshake.name = "sink3"} : <i2>
    %63 = extsi %falseResult_5 {handshake.bb = 2 : ui32, handshake.name = "extsi11"} : <i2> to <i7>
    %64 = buffer %110#0 {handshake.bb = 2 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_6, %falseResult_7 = cond_br %64, %107 {handshake.bb = 2 : ui32, handshake.name = "cond_br26"} : <i1>, <i7>
    sink %falseResult_7 {handshake.name = "sink4"} : <i7>
    %65 = buffer %47#0 {handshake.bb = 2 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %66 = mux %65 [%35, %trueResult_6] {handshake.bb = 2 : ui32, handshake.name = "mux14"} : <i1>, <i7>
    %67 = buffer %66 {handshake.bb = 2 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i7>
    %68 = buffer %67 {handshake.bb = 2 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %69:5 = fork [5] %68 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i7>
    %70 = buffer %69#0 {handshake.bb = 2 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %71 = trunci %70 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i7> to <i6>
    %72 = buffer %69#1 {handshake.bb = 2 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %73 = trunci %72 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i7> to <i6>
    %74 = buffer %69#4 {handshake.bb = 2 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %75 = extsi %74 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i7> to <i8>
    %76 = buffer %69#2 {handshake.bb = 2 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %77 = trunci %76 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i7> to <i6>
    %78 = buffer %69#3 {handshake.bb = 2 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %79 = trunci %78 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i7> to <i6>
    %80 = buffer %54#2 {handshake.bb = 2 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %81 = constant %80 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = -1 : i32} : <>, <i32>
    %82 = trunci %81 {handshake.bb = 2 : ui32, handshake.name = "trunci4"} : <i32> to <i6>
    %83 = buffer %54#1 {handshake.bb = 2 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %84 = constant %83 {handshake.bb = 2 : ui32, handshake.name = "constant2", value = 49 : i7} : <>, <i7>
    %85 = extsi %84 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i7> to <i8>
    %86 = buffer %54#0 {handshake.bb = 2 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %87 = constant %86 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = 1 : i2} : <>, <i2>
    %88:4 = fork [4] %87 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i2>
    %89 = buffer %88#0 {handshake.bb = 2 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %90 = extsi %89 {handshake.bb = 2 : ui32, handshake.name = "extsi18"} : <i2> to <i6>
    %91 = buffer %88#2 {handshake.bb = 2 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %92 = extsi %91 {handshake.bb = 2 : ui32, handshake.name = "extsi19"} : <i2> to <i8>
    %93 = buffer %88#3 {handshake.bb = 2 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %94 = extsi %93 {handshake.bb = 2 : ui32, handshake.name = "extsi4"} : <i2> to <i32>
    %95 = addi %71, %82 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i6>
    %addressResult, %dataResult = load[%95] %4#0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i6>, <i32>
    %addressResult_8, %dataResult_9 = load[%79] %4#1 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load1"} : <i6>, <i32>
    %96 = addi %dataResult, %dataResult_9 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %97 = addi %73, %90 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i6>
    %addressResult_10, %dataResult_11 = load[%97] %4#2 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load2"} : <i6>, <i32>
    %98 = addi %96, %dataResult_11 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %99:2 = fork [2] %98 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i32>
    %100 = buffer %99#1 {handshake.bb = 2 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %101 = shli %100, %94 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %102 = buffer %99#0 {handshake.bb = 2 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %103 = addi %102, %101 {handshake.bb = 2 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_12, %dataResult_13 = store[%77] %103 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1], [0, 0]]>, <"load3" (1) [[1, 1]]>, <"load3" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i6>, <i32>
    %104 = addi %75, %92 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i8>
    %105:2 = fork [2] %104 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i8>
    %106 = buffer %105#0 {handshake.bb = 2 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %107 = trunci %106 {handshake.bb = 2 : ui32, handshake.name = "trunci5"} : <i8> to <i7>
    %108 = buffer %105#1 {handshake.bb = 2 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %109 = cmpi ult, %108, %85 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i8>
    %110:6 = fork [6] %109 {handshake.bb = 2 : ui32, handshake.name = "fork11"} : <i1>
    %111 = buffer %132#1 {handshake.bb = 3 : ui32, handshake.name = "buffer78", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %112 = buffer %175#5 {handshake.bb = 3 : ui32, handshake.name = "buffer98", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_14, %falseResult_15 = cond_br %112, %111 {handshake.bb = 3 : ui32, handshake.name = "cond_br23"} : <i1>, <>
    sink %falseResult_15 {handshake.name = "sink5"} : <>
    %113 = buffer %127#1 {handshake.bb = 3 : ui32, handshake.name = "buffer73", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %114 = buffer %175#4 {handshake.bb = 3 : ui32, handshake.name = "buffer97", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_16, %falseResult_17 = cond_br %114, %113 {handshake.bb = 3 : ui32, handshake.name = "cond_br32"} : <i1>, <>
    sink %falseResult_17 {handshake.name = "sink6"} : <>
    %115 = buffer %139#0 {handshake.bb = 3 : ui32, handshake.name = "buffer80", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %116 = buffer %175#3 {handshake.bb = 3 : ui32, handshake.name = "buffer96", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_18, %falseResult_19 = cond_br %116, %115 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br33"} : <i1>, <>
    sink %trueResult_18 {handshake.name = "sink7"} : <>
    %117 = buffer %0#5 {handshake.bb = 3 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %118 = constant %117 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant22", value = false} : <>, <i1>
    %119 = buffer %175#2 {handshake.bb = 3 : ui32, handshake.name = "buffer95", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %120 = merge %118, %119 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge9"} : <i1>
    %121 = buffer %120 {handshake.bb = 3 : ui32, handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %122:4 = fork [4] %121 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork12"} : <i1>
    %123 = buffer %122#3 {handshake.bb = 3 : ui32, handshake.name = "buffer68", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %124 = mux %123 [%falseResult_1, %trueResult_16] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux10"} : <i1>, <>
    %125 = buffer %124 {handshake.bb = 3 : ui32, handshake.name = "buffer69", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %126 = buffer %125 {handshake.bb = 3 : ui32, handshake.name = "buffer70", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %127:2 = fork [2] %126 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <>
    %128 = buffer %122#2 {handshake.bb = 3 : ui32, handshake.name = "buffer67", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %129 = mux %128 [%falseResult, %trueResult_14] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux11"} : <i1>, <>
    %130 = buffer %129 {handshake.bb = 3 : ui32, handshake.name = "buffer74", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %131 = buffer %130 {handshake.bb = 3 : ui32, handshake.name = "buffer75", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %132:2 = fork [2] %131 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <>
    %133 = buffer %132#0 {handshake.bb = 3 : ui32, handshake.name = "buffer76", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %134 = buffer %133 {handshake.bb = 3 : ui32, handshake.name = "buffer77", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %135:2 = lazy_fork [2] %134 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork2"} : <>
    %136 = buffer %135#0 {handshake.name = "buffer79", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    sink %136 {handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "sink8"} : <>
    %137 = buffer %127#0 {handshake.bb = 3 : ui32, handshake.name = "buffer71", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %138 = buffer %137 {handshake.bb = 3 : ui32, handshake.name = "buffer72", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %139:2 = lazy_fork [2] %138 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork3"} : <>
    %140 = buffer %175#0 {handshake.bb = 3 : ui32, handshake.name = "buffer93", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_20, %falseResult_21 = cond_br %140, %172 {handshake.bb = 3 : ui32, handshake.name = "cond_br28"} : <i1>, <i7>
    sink %falseResult_21 {handshake.name = "sink9"} : <i7>
    %141 = buffer %148#2 {handshake.bb = 3 : ui32, handshake.name = "buffer85", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %142 = buffer %175#1 {handshake.bb = 3 : ui32, handshake.name = "buffer94", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_22, %falseResult_23 = cond_br %142, %141 {handshake.bb = 3 : ui32, handshake.name = "cond_br29"} : <i1>, <>
    sink %falseResult_23 {handshake.name = "sink10"} : <>
    %143 = buffer %23#3 {handshake.bb = 3 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %144 = buffer %122#1 {handshake.bb = 3 : ui32, handshake.name = "buffer66", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %145 = mux %144 [%143, %trueResult_22] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux15"} : <i1>, <>
    %146 = buffer %145 {handshake.bb = 3 : ui32, handshake.name = "buffer81", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %147 = buffer %146 {handshake.bb = 3 : ui32, handshake.name = "buffer82", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %148:3 = fork [3] %147 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <>
    %149 = buffer %0#3 {handshake.bb = 3 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %150 = constant %149 {handshake.bb = 3 : ui32, handshake.name = "constant5", value = 1 : i2} : <>, <i2>
    %151 = extsi %150 {handshake.bb = 3 : ui32, handshake.name = "extsi6"} : <i2> to <i32>
    %152 = buffer %122#0 {handshake.bb = 3 : ui32, handshake.name = "buffer65", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %153 = mux %152 [%63, %trueResult_20] {handshake.bb = 3 : ui32, handshake.name = "mux17"} : <i1>, <i7>
    %154 = buffer %153 {handshake.bb = 3 : ui32, handshake.name = "buffer86", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i7>
    %155 = buffer %154 {handshake.bb = 3 : ui32, handshake.name = "buffer87", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %156:3 = fork [3] %155 {handshake.bb = 3 : ui32, handshake.name = "fork16"} : <i7>
    %157 = buffer %156#2 {handshake.bb = 3 : ui32, handshake.name = "buffer90", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %158 = extsi %157 {handshake.bb = 3 : ui32, handshake.name = "extsi20"} : <i7> to <i8>
    %159 = buffer %156#0 {handshake.bb = 3 : ui32, handshake.name = "buffer88", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %160 = trunci %159 {handshake.bb = 3 : ui32, handshake.name = "trunci6"} : <i7> to <i6>
    %161 = buffer %156#1 {handshake.bb = 3 : ui32, handshake.name = "buffer89", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %162 = trunci %161 {handshake.bb = 3 : ui32, handshake.name = "trunci7"} : <i7> to <i6>
    %163 = buffer %148#1 {handshake.bb = 3 : ui32, handshake.name = "buffer84", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %164 = constant %163 {handshake.bb = 3 : ui32, handshake.name = "constant18", value = 49 : i7} : <>, <i7>
    %165 = extsi %164 {handshake.bb = 3 : ui32, handshake.name = "extsi21"} : <i7> to <i8>
    %166 = buffer %148#0 {handshake.bb = 3 : ui32, handshake.name = "buffer83", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %167 = constant %166 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 1 : i2} : <>, <i2>
    %168 = extsi %167 {handshake.bb = 3 : ui32, handshake.name = "extsi22"} : <i2> to <i8>
    %addressResult_24, %dataResult_25 = load[%162] %2#0 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load3"} : <i6>, <i32>
    %addressResult_26, %dataResult_27 = store[%160] %dataResult_25 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load0" (1) [[1, 1]]>, <"load1" (1) [[1, 1]]>, <"load2" (1) [[1, 1]]>, <"store1" (1) [[1, 1], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i6>, <i32>
    %169 = addi %158, %168 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i8>
    %170:2 = fork [2] %169 {handshake.bb = 3 : ui32, handshake.name = "fork17"} : <i8>
    %171 = buffer %170#0 {handshake.bb = 3 : ui32, handshake.name = "buffer91", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %172 = trunci %171 {handshake.bb = 3 : ui32, handshake.name = "trunci8"} : <i8> to <i7>
    %173 = buffer %170#1 {handshake.bb = 3 : ui32, handshake.name = "buffer92", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %174 = cmpi ult, %173, %165 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i8>
    %175:6 = fork [6] %174 {handshake.bb = 3 : ui32, handshake.name = "fork18"} : <i1>
    %176 = buffer %188#2 {handshake.bb = 4 : ui32, handshake.name = "buffer103", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_28, %falseResult_29 = cond_br %176, %falseResult_19 {handshake.bb = 4 : ui32, handshake.name = "cond_br34"} : <i1>, <>
    sink %falseResult_29 {handshake.name = "sink11"} : <>
    %177 = buffer %188#0 {handshake.bb = 4 : ui32, handshake.name = "buffer101", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_30, %falseResult_31 = cond_br %177, %185 {handshake.bb = 4 : ui32, handshake.name = "cond_br30"} : <i1>, <i2>
    sink %falseResult_31 {handshake.name = "sink12"} : <i2>
    %178 = buffer %23#2 {handshake.bb = 4 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %179 = buffer %188#1 {handshake.bb = 4 : ui32, handshake.name = "buffer102", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_32, %falseResult_33 = cond_br %179, %178 {handshake.bb = 4 : ui32, handshake.name = "cond_br31"} : <i1>, <>
    sink %falseResult_33 {handshake.name = "sink13"} : <>
    %180 = buffer %23#0 {handshake.bb = 4 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %181 = constant %180 {handshake.bb = 4 : ui32, handshake.name = "constant20", value = 2 : i3} : <>, <i3>
    %182 = addi %28, %33 {handshake.bb = 4 : ui32, handshake.name = "addi6"} : <i3>
    %183:2 = fork [2] %182 {handshake.bb = 4 : ui32, handshake.name = "fork19"} : <i3>
    %184 = buffer %183#0 {handshake.bb = 4 : ui32, handshake.name = "buffer99", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %185 = trunci %184 {handshake.bb = 4 : ui32, handshake.name = "trunci9"} : <i3> to <i2>
    %186 = buffer %183#1 {handshake.bb = 4 : ui32, handshake.name = "buffer100", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %187 = cmpi ult, %186, %181 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i3>
    %188:4 = fork [4] %187 {handshake.bb = 4 : ui32, handshake.name = "fork20"} : <i1>
    %189 = buffer %0#2 {handshake.bb = 5 : ui32, handshake.name = "buffer2", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %190 = constant %189 {handshake.bb = 5 : ui32, handshake.name = "constant21", value = 49 : i7} : <>, <i7>
    %191 = trunci %190 {handshake.bb = 5 : ui32, handshake.name = "trunci10"} : <i7> to <i6>
    %addressResult_34, %dataResult_35 = load[%191] %outputs#0 {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i6>, <i32>
    %192 = buffer %0#4 {handshake.bb = 5 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %dataResult_35, %memEnd, %2#1, %192 : <i32>, <>, <>, <>
  }
}


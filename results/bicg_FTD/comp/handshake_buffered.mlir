module {
  handshake.func @bicg(%arg0: memref<100xi32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["a", "s", "q", "p", "r", "a_start", "s_start", "q_start", "p_start", "r_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][1,2][3,1,4,cmpi1]", resNames = ["out0", "a_end", "s_end", "q_end", "p_end", "r_end", "end"]} {
    %0:11 = fork [11] %arg10 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1 = buffer %0#4 {handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs, %memEnd = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_16) %1 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %2 = buffer %0#3 {handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs_0, %memEnd_1 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_20) %2 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller4"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %3 = buffer %0#2 {handshake.name = "buffer2", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %4:2 = lsq[%arg2 : memref<10xi32>] (%arg7, %26#1, %addressResult, %144#1, %addressResult_32, %dataResult_33, %3)  {groupSizes = [1 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %5 = buffer %0#1 {handshake.name = "buffer1", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %6:2 = lsq[%arg1 : memref<10xi32>] (%arg6, %61#1, %addressResult_14, %addressResult_18, %dataResult_19, %5)  {groupSizes = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<i4>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %7 = buffer %0#0 {handshake.name = "buffer0", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs_2, %memEnd_3 = mem_controller[%arg0 : memref<100xi32>] %arg5 (%addressResult_12) %7 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i7>) -> !handshake.channel<i32>
    %8 = buffer %0#10 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %9 = buffer %23#2 {handshake.bb = 1 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %10 = mux %9 [%8, %trueResult_24] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <>
    %11 = buffer %0#9 {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %12 = constant %11 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant10", value = false} : <>, <i1>
    %13:2 = fork [2] %12 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %14 = buffer %13#0 {handshake.bb = 1 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %15 = extsi %14 {handshake.bb = 1 : ui32, handshake.name = "extsi7"} : <i1> to <i5>
    %16 = buffer %0#8 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %17 = buffer %23#3 {handshake.bb = 1 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %18 = mux %17 [%16, %trueResult_22] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <>
    %19 = buffer %13#1 {handshake.bb = 1 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %20 = buffer %163#5 {handshake.bb = 1 : ui32, handshake.name = "buffer89", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %21 = merge %19, %20 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge1"} : <i1>
    %22 = buffer %21 {handshake.bb = 1 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %23:4 = fork [4] %22 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <i1>
    %24 = buffer %10 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %25 = buffer %24 {handshake.bb = 1 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %26:2 = lazy_fork [2] %25 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork0"} : <>
    %27 = buffer %0#7 {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %28 = buffer %23#1 {handshake.bb = 1 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %29 = mux %28 [%27, %trueResult_30] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %30 = buffer %29 {handshake.bb = 1 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %31 = buffer %30 {handshake.bb = 1 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %32:5 = fork [5] %31 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %33 = buffer %23#0 {handshake.bb = 1 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %34 = mux %33 [%15, %trueResult_28] {handshake.bb = 1 : ui32, handshake.name = "mux6"} : <i1>, <i5>
    %35 = buffer %34 {handshake.bb = 1 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %36 = buffer %35 {handshake.bb = 1 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %37:4 = fork [4] %36 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i5>
    %38 = buffer %37#2 {handshake.bb = 1 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %39 = extsi %38 {handshake.bb = 1 : ui32, handshake.name = "extsi8"} : <i5> to <i6>
    %40 = buffer %37#0 {handshake.bb = 1 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %41 = trunci %40 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i5> to <i4>
    %42 = buffer %37#1 {handshake.bb = 1 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %43 = trunci %42 {handshake.bb = 1 : ui32, handshake.name = "trunci1"} : <i5> to <i4>
    %44 = buffer %32#2 {handshake.bb = 1 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %45 = constant %44 {handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %46 = extsi %45 {handshake.bb = 1 : ui32, handshake.name = "extsi9"} : <i1> to <i5>
    %addressResult, %dataResult = load[%43] %4#0 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i4>, <i32>
    %47 = buffer %61#0 {handshake.bb = 2 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %48 = buffer %138#5 {handshake.bb = 2 : ui32, handshake.name = "buffer80", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult, %falseResult = cond_br %48, %47 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br5"} : <i1>, <>
    %49 = buffer %0#6 {handshake.bb = 2 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %50 = constant %49 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant11", value = false} : <>, <i1>
    %51 = buffer %18 {handshake.bb = 2 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %52 = buffer %51 {handshake.bb = 2 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %53 = buffer %58#4 {handshake.bb = 2 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %54 = mux %53 [%52, %trueResult] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <>
    %55 = buffer %138#4 {handshake.bb = 2 : ui32, handshake.name = "buffer79", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %56 = merge %50, %55 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge4"} : <i1>
    %57 = buffer %56 {handshake.bb = 2 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %58:5 = fork [5] %57 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork5"} : <i1>
    %59 = buffer %54 {handshake.bb = 2 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %60 = buffer %59 {handshake.bb = 2 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %61:2 = lazy_fork [2] %60 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork1"} : <>
    %62 = buffer %138#3 {handshake.bb = 2 : ui32, handshake.name = "buffer78", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_4, %falseResult_5 = cond_br %62, %131 {handshake.bb = 2 : ui32, handshake.name = "cond_br23"} : <i1>, <i32>
    %63:2 = fork [2] %falseResult_5 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i32>
    %64 = buffer %138#0 {handshake.bb = 2 : ui32, handshake.name = "buffer75", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_6, %falseResult_7 = cond_br %64, %135 {handshake.bb = 2 : ui32, handshake.name = "cond_br24"} : <i1>, <i5>
    sink %falseResult_7 {handshake.name = "sink0"} : <i5>
    %65 = buffer %87#3 {handshake.bb = 2 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %66 = buffer %138#2 {handshake.bb = 2 : ui32, handshake.name = "buffer77", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_8, %falseResult_9 = cond_br %66, %65 {handshake.bb = 2 : ui32, handshake.name = "cond_br25"} : <i1>, <>
    sink %falseResult_9 {handshake.name = "sink1"} : <>
    %67 = buffer %74#3 {handshake.bb = 2 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %68 = buffer %138#1 {handshake.bb = 2 : ui32, handshake.name = "buffer76", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_10, %falseResult_11 = cond_br %68, %67 {handshake.bb = 2 : ui32, handshake.name = "cond_br26"} : <i1>, <i5>
    sink %falseResult_11 {handshake.name = "sink2"} : <i5>
    %69 = buffer %37#3 {handshake.bb = 2 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %70 = buffer %58#0 {handshake.bb = 2 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %71 = mux %70 [%69, %trueResult_10] {handshake.bb = 2 : ui32, handshake.name = "mux10"} : <i1>, <i5>
    %72 = buffer %71 {handshake.bb = 2 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %73 = buffer %72 {handshake.bb = 2 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %74:4 = fork [4] %73 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i5>
    %75 = buffer %74#0 {handshake.bb = 2 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %76 = trunci %75 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i5> to <i4>
    %77 = extsi %76 {handshake.bb = 2 : ui32, handshake.name = "extsi10"} : <i4> to <i7>
    %78 = buffer %74#2 {handshake.bb = 2 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %79 = extsi %78 {handshake.bb = 2 : ui32, handshake.name = "extsi11"} : <i5> to <i6>
    %80 = buffer %74#1 {handshake.bb = 2 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %81 = trunci %80 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i5> to <i4>
    %82 = buffer %32#4 {handshake.bb = 2 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %83 = buffer %58#3 {handshake.bb = 2 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %84 = mux %83 [%82, %trueResult_8] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux12"} : <i1>, <>
    %85 = buffer %84 {handshake.bb = 2 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %86 = buffer %85 {handshake.bb = 2 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %87:4 = fork [4] %86 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <>
    %88 = buffer %58#2 {handshake.bb = 2 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %89 = mux %88 [%dataResult, %trueResult_4] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux14"} : <i1>, <i32>
    %90 = buffer %58#1 {handshake.bb = 2 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %91 = mux %90 [%46, %trueResult_6] {handshake.bb = 2 : ui32, handshake.name = "mux15"} : <i1>, <i5>
    %92 = buffer %91 {handshake.bb = 2 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %93 = buffer %92 {handshake.bb = 2 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %94:5 = fork [5] %93 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i5>
    %95 = buffer %94#0 {handshake.bb = 2 : ui32, handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %96 = extsi %95 {handshake.bb = 2 : ui32, handshake.name = "extsi12"} : <i5> to <i7>
    %97 = buffer %94#4 {handshake.bb = 2 : ui32, handshake.name = "buffer68", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %98 = extsi %97 {handshake.bb = 2 : ui32, handshake.name = "extsi13"} : <i5> to <i6>
    %99 = buffer %94#1 {handshake.bb = 2 : ui32, handshake.name = "buffer65", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %100 = trunci %99 {handshake.bb = 2 : ui32, handshake.name = "trunci4"} : <i5> to <i4>
    %101 = buffer %94#2 {handshake.bb = 2 : ui32, handshake.name = "buffer66", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %102 = trunci %101 {handshake.bb = 2 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %103 = buffer %94#3 {handshake.bb = 2 : ui32, handshake.name = "buffer67", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %104 = trunci %103 {handshake.bb = 2 : ui32, handshake.name = "trunci6"} : <i5> to <i4>
    %105 = buffer %87#2 {handshake.bb = 2 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %106 = constant %105 {handshake.bb = 2 : ui32, handshake.name = "constant1", value = 10 : i5} : <>, <i5>
    %107 = extsi %106 {handshake.bb = 2 : ui32, handshake.name = "extsi14"} : <i5> to <i6>
    %108 = buffer %87#1 {handshake.bb = 2 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %109 = constant %108 {handshake.bb = 2 : ui32, handshake.name = "constant2", value = 1 : i2} : <>, <i2>
    %110:2 = fork [2] %109 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i2>
    %111 = buffer %110#0 {handshake.bb = 2 : ui32, handshake.name = "buffer69", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %112 = extui %111 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i2> to <i6>
    %113 = buffer %110#1 {handshake.bb = 2 : ui32, handshake.name = "buffer70", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %114 = extsi %113 {handshake.bb = 2 : ui32, handshake.name = "extsi15"} : <i2> to <i6>
    %115 = buffer %87#0 {handshake.bb = 2 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %116 = constant %115 {handshake.bb = 2 : ui32, handshake.name = "constant12", value = 3 : i3} : <>, <i3>
    %117 = extui %116 {handshake.bb = 2 : ui32, handshake.name = "extui1"} : <i3> to <i7>
    %118 = shli %79, %112 {handshake.bb = 2 : ui32, handshake.name = "shli3"} : <i6>
    %119 = extsi %118 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i6> to <i7>
    %120 = shli %77, %117 {handshake.bb = 2 : ui32, handshake.name = "shli2"} : <i7>
    %121 = addi %119, %120 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i7>
    %122 = addi %96, %121 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i7>
    %addressResult_12, %dataResult_13 = load[%122] %outputs_2 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i7>, <i32>
    %123:2 = fork [2] %dataResult_13 {handshake.bb = 2 : ui32, handshake.name = "fork11"} : <i32>
    %addressResult_14, %dataResult_15 = load[%104] %6#0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load2"} : <i4>, <i32>
    %addressResult_16, %dataResult_17 = load[%81] %outputs {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load3"} : <i4>, <i32>
    %124 = buffer %123#0 {handshake.bb = 2 : ui32, handshake.name = "buffer71", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %125 = muli %dataResult_17, %124 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %126 = addi %dataResult_15, %125 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %addressResult_18, %dataResult_19 = store[%102] %126 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i4>, <i32>
    %addressResult_20, %dataResult_21 = load[%100] %outputs_0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i4>, <i32>
    %127 = buffer %123#1 {handshake.bb = 2 : ui32, handshake.name = "buffer72", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %128 = muli %127, %dataResult_21 {handshake.bb = 2 : ui32, handshake.name = "muli1"} : <i32>
    %129 = buffer %89 {handshake.bb = 2 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %130 = buffer %129 {handshake.bb = 2 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %131 = addi %130, %128 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %132 = addi %98, %114 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i6>
    %133:2 = fork [2] %132 {handshake.bb = 2 : ui32, handshake.name = "fork12"} : <i6>
    %134 = buffer %133#0 {handshake.bb = 2 : ui32, handshake.name = "buffer73", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %135 = trunci %134 {handshake.bb = 2 : ui32, handshake.name = "trunci7"} : <i6> to <i5>
    %136 = buffer %133#1 {handshake.bb = 2 : ui32, handshake.name = "buffer74", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %137 = cmpi ult, %136, %107 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i6>
    %138:6 = fork [6] %137 {handshake.bb = 2 : ui32, handshake.name = "fork13"} : <i1>
    %139 = buffer %163#4 {handshake.bb = 3 : ui32, handshake.name = "buffer88", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_22, %falseResult_23 = cond_br %139, %falseResult {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <>
    sink %falseResult_23 {handshake.name = "sink3"} : <>
    %140 = buffer %144#0 {handshake.bb = 3 : ui32, handshake.name = "buffer81", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %141 = buffer %163#3 {handshake.bb = 3 : ui32, handshake.name = "buffer87", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_24, %falseResult_25 = cond_br %141, %140 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br7"} : <i1>, <>
    sink %falseResult_25 {handshake.name = "sink4"} : <>
    %142 = buffer %26#0 {handshake.bb = 3 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %143 = buffer %142 {handshake.bb = 3 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %144:2 = lazy_fork [2] %143 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork2"} : <>
    %145 = buffer %63#1 {handshake.bb = 3 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %146 = buffer %163#2 {handshake.bb = 3 : ui32, handshake.name = "buffer86", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_26, %falseResult_27 = cond_br %146, %145 {handshake.bb = 3 : ui32, handshake.name = "cond_br27"} : <i1>, <i32>
    sink %trueResult_26 {handshake.name = "sink5"} : <i32>
    %147 = buffer %163#0 {handshake.bb = 3 : ui32, handshake.name = "buffer84", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_28, %falseResult_29 = cond_br %147, %160 {handshake.bb = 3 : ui32, handshake.name = "cond_br28"} : <i1>, <i5>
    sink %falseResult_29 {handshake.name = "sink6"} : <i5>
    %148 = buffer %32#3 {handshake.bb = 3 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %149 = buffer %163#1 {handshake.bb = 3 : ui32, handshake.name = "buffer85", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_30, %falseResult_31 = cond_br %149, %148 {handshake.bb = 3 : ui32, handshake.name = "cond_br29"} : <i1>, <>
    sink %falseResult_31 {handshake.name = "sink7"} : <>
    %150 = buffer %32#1 {handshake.bb = 3 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %151 = constant %150 {handshake.bb = 3 : ui32, handshake.name = "constant13", value = 10 : i5} : <>, <i5>
    %152 = extsi %151 {handshake.bb = 3 : ui32, handshake.name = "extsi17"} : <i5> to <i6>
    %153 = buffer %32#0 {handshake.bb = 3 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %154 = constant %153 {handshake.bb = 3 : ui32, handshake.name = "constant14", value = 1 : i2} : <>, <i2>
    %155 = extsi %154 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i2> to <i6>
    %156 = buffer %63#0 {handshake.bb = 3 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %addressResult_32, %dataResult_33 = store[%41] %156 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i4>, <i32>
    %157 = addi %39, %155 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i6>
    %158:2 = fork [2] %157 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i6>
    %159 = buffer %158#0 {handshake.bb = 3 : ui32, handshake.name = "buffer82", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %160 = trunci %159 {handshake.bb = 3 : ui32, handshake.name = "trunci8"} : <i6> to <i5>
    %161 = buffer %158#1 {handshake.bb = 3 : ui32, handshake.name = "buffer83", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %162 = cmpi ult, %161, %152 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i6>
    %163:6 = fork [6] %162 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <i1>
    %164 = buffer %0#5 {handshake.bb = 4 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %falseResult_27, %memEnd_3, %6#1, %4#1, %memEnd_1, %memEnd, %164 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


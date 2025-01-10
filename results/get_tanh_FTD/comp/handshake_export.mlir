module {
  handshake.func @get_tanh(%arg0: memref<1000xf32>, %arg1: memref<1000xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "addr", "A_start", "addr_start", "start"], cfg.edges = "[0,1][2,3][1,3,2,cmpf0][3,1,4,cmpi0]", resNames = ["A_end", "addr_end", "end"]} {
    %0:5 = fork [5] %arg4 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %outputs, %memEnd = mem_controller[%arg1 : memref<1000xi32>] %arg3 (%addressResult) %109#1 {connectedBlocks = [1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller1"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %3:2 = lsq[%arg0 : memref<1000xf32>] (%arg2, %20#1, %addressResult_0, %80#1, %addressResult_14, %dataResult_15, %109#0)  {groupSizes = [1 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq1"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i10>, !handshake.control<>, !handshake.channel<i10>, !handshake.channel<f32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.control<>)
    %6 = constant %0#3 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %7:2 = fork [2] %6 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %9 = extsi %7#0 {handshake.bb = 1 : ui32, handshake.name = "extsi3"} : <i1> to <i11>
    %12 = mux %17#2 [%0#2, %trueResult_6] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <>
    %15 = merge %7#1, %103#3 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge2"} : <i1>
    %16 = buffer %15 {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %17:3 = fork [3] %16 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <i1>
    %18 = buffer %12 {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %19 = buffer %18 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %20:2 = lazy_fork [2] %19 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork0"} : <>
    %23 = mux %17#1 [%0#1, %trueResult_12] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %24 = buffer %23 {handshake.bb = 1 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %25 = buffer %24 {handshake.bb = 1 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %26:5 = fork [5] %25 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %27 = merge %0#4, %trueResult_16 {handshake.bb = 1 : ui32, handshake.name = "merge0"} : <>
    %29 = mux %17#0 [%9, %trueResult_10] {handshake.bb = 1 : ui32, handshake.name = "mux5"} : <i1>, <i11>
    %30 = buffer %29 {handshake.bb = 1 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i11>
    %31 = buffer %30 {handshake.bb = 1 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i11>
    %32:2 = fork [2] %31 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i11>
    %34 = extsi %32#1 {handshake.bb = 1 : ui32, handshake.name = "extsi4"} : <i11> to <i12>
    %36 = trunci %32#0 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i11> to <i10>
    %38 = constant %26#4 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 1.000000e+00 : f32} : <>, <f32>
    %39:2 = fork [2] %38 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <f32>
    %addressResult, %dataResult = load[%36] %outputs {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i10>, <i32>
    %40:2 = fork [2] %dataResult {handshake.bb = 1 : ui32, handshake.name = "fork6"} : <i32>
    %41 = buffer %40#0 {handshake.bb = 1 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %42 = trunci %41 {handshake.bb = 1 : ui32, handshake.name = "trunci1"} : <i32> to <i10>
    %44 = trunci %40#1 {handshake.bb = 1 : ui32, handshake.name = "trunci2"} : <i32> to <i10>
    %addressResult_0, %dataResult_1 = load[%44] %3#0 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (0)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i10>, <f32>
    %45:2 = fork [2] %dataResult_1 {handshake.bb = 1 : ui32, handshake.name = "fork7"} : <f32>
    %48 = cmpf oge, %45#0, %39#1 {handshake.bb = 1 : ui32, handshake.name = "cmpf0"} : <f32>
    %49:5 = fork [5] %48 {handshake.bb = 1 : ui32, handshake.name = "fork8"} : <i1>
    %50 = buffer %27 {handshake.bb = 1 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %51 = buffer %50 {handshake.bb = 1 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult, %falseResult = cond_br %49#4, %51 {handshake.bb = 1 : ui32, handshake.name = "cond_br2"} : <i1>, <>
    %trueResult_2, %falseResult_3 = cond_br %49#3, %45#1 {handshake.bb = 2 : ui32, handshake.name = "cond_br3"} : <i1>, <f32>
    %55:5 = fork [5] %falseResult_3 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <f32>
    sink %trueResult_2 {handshake.name = "sink1"} : <f32>
    %trueResult_4, %falseResult_5 = cond_br %49#2, %26#3 {handshake.bb = 2 : ui32, handshake.name = "cond_br8"} : <i1>, <>
    %58:2 = fork [2] %falseResult_5 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <>
    sink %trueResult_4 {handshake.name = "sink2"} : <>
    %60 = constant %58#1 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 3.70476198 : f32} : <>, <f32>
    %62 = constant %58#0 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 19.5238094 : f32} : <>, <f32>
    %65 = mulf %55#3, %55#4 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf0"} : <f32>
    %66 = addf %65, %62 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf0"} : <f32>
    %68 = mulf %66, %55#2 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf1"} : <f32>
    %70 = mulf %68, %55#1 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf2"} : <f32>
    %71 = addf %70, %60 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf1"} : <f32>
    %73 = mulf %71, %55#0 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf3"} : <f32>
    %74 = buffer %falseResult {handshake.bb = 2 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %75 = buffer %74 {handshake.bb = 2 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %76 = buffer %80#0 {handshake.bb = 3 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %trueResult_6, %falseResult_7 = cond_br %103#2, %76 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br4"} : <i1>, <>
    sink %falseResult_7 {handshake.name = "sink4"} : <>
    %78 = buffer %20#0 {handshake.bb = 3 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %79 = buffer %78 {handshake.bb = 3 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %80:2 = lazy_fork [2] %79 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork1"} : <>
    %trueResult_8, %falseResult_9 = cond_br %49#1, %39#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br18"} : <i1>, <f32>
    sink %falseResult_9 {handshake.name = "sink5"} : <f32>
    %trueResult_10, %falseResult_11 = cond_br %103#0, %100 {handshake.bb = 3 : ui32, handshake.name = "cond_br19"} : <i1>, <i11>
    sink %falseResult_11 {handshake.name = "sink6"} : <i11>
    %trueResult_12, %falseResult_13 = cond_br %103#1, %26#2 {handshake.bb = 3 : ui32, handshake.name = "cond_br20"} : <i1>, <>
    sink %falseResult_13 {handshake.name = "sink7"} : <>
    %86 = merge %trueResult, %75 {handshake.bb = 3 : ui32, handshake.name = "merge1"} : <>
    %88 = mux %49#0 [%73, %trueResult_8] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <f32>
    %90 = constant %26#1 {handshake.bb = 3 : ui32, handshake.name = "constant0", value = 1000 : i11} : <>, <i11>
    %91 = extsi %90 {handshake.bb = 3 : ui32, handshake.name = "extsi5"} : <i11> to <i12>
    %93 = constant %26#0 {handshake.bb = 3 : ui32, handshake.name = "constant3", value = 1 : i2} : <>, <i2>
    %94 = extsi %93 {handshake.bb = 3 : ui32, handshake.name = "extsi6"} : <i2> to <i12>
    %95 = buffer %88 {handshake.bb = 3 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <f32>
    %96 = buffer %95 {handshake.bb = 3 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %addressResult_14, %dataResult_15 = store[%42] %96 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load3" (0)>, <"store1" (0)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i10>, <f32>
    %97 = addi %34, %94 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i12>
    %98:2 = fork [2] %97 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i12>
    %100 = trunci %98#0 {handshake.bb = 3 : ui32, handshake.name = "trunci3"} : <i12> to <i11>
    %102 = cmpi ult, %98#1, %91 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i12>
    %103:5 = fork [5] %102 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i1>
    %104 = buffer %86 {handshake.bb = 3 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %105 = buffer %104 {handshake.bb = 3 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %106 = buffer %103#4 {handshake.bb = 3 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_16, %falseResult_17 = cond_br %106, %105 {handshake.bb = 3 : ui32, handshake.name = "cond_br17"} : <i1>, <>
    %107 = buffer %falseResult_17 {handshake.bb = 4 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %108 = buffer %107 {handshake.bb = 4 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %109:2 = fork [2] %108 {handshake.bb = 4 : ui32, handshake.name = "fork13"} : <>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %3#1, %memEnd, %0#0 : <>, <>, <>
  }
}


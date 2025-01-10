module {
  handshake.func @atax_float(%arg0: memref<100xf32>, %arg1: memref<10xf32>, %arg2: memref<10xf32>, %arg3: memref<10xf32>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "x", "y", "tmp", "A_start", "x_start", "y_start", "tmp_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][4,1,5,cmpi2][1,2][3,3,4,cmpi1]", resNames = ["out0", "A_end", "x_end", "y_end", "tmp_end", "end"]} {
    %0:11 = fork [11] %arg8 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %2:3 = lsq[%arg3 : memref<10xf32>] (%arg7, %25#1, %addressResult, %213#1, %addressResult_38, %dataResult_39, %232#0, %addressResult_40, %232#1)  {groupSizes = [1 : i32, 1 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "7": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "8": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<f32>, !handshake.control<>, !handshake.channel<i4>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.channel<f32>, !handshake.control<>)
    %4:2 = lsq[%arg2 : memref<10xf32>] (%arg6, %136#1, %addressResult_24, %addressResult_28, %dataResult_29, %0#2)  {groupSizes = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<i4>, !handshake.channel<f32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg1 : memref<10xf32>] %arg5 (%addressResult_12) %0#1 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller2"} :    (!handshake.channel<i4>) -> !handshake.channel<f32>
    %outputs_0:2, %memEnd_1 = mem_controller[%arg0 : memref<100xf32>] %arg4 (%addressResult_10, %addressResult_26) %0#0 {connectedBlocks = [2 : i32, 3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i7>, !handshake.channel<i7>) -> (!handshake.channel<f32>, !handshake.channel<f32>)
    %9 = mux %22#2 [%0#10, %trueResult_32] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <>
    %11 = constant %0#9 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant16", value = false} : <>, <i1>
    %12:2 = fork [2] %11 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %14 = extsi %12#0 {handshake.bb = 1 : ui32, handshake.name = "extsi13"} : <i1> to <i5>
    %16 = buffer %22#3 {handshake.bb = 1 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %17 = mux %16 [%0#8, %trueResult_30] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <>
    %20 = merge %12#1, %230#4 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge1"} : <i1>
    %21 = buffer %20 {handshake.bb = 1 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %22:4 = fork [4] %21 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <i1>
    %23 = buffer %9 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %24 = buffer %23 {handshake.bb = 1 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %25:2 = lazy_fork [2] %24 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork0"} : <>
    %28 = mux %22#1 [%0#7, %trueResult_36] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %29 = buffer %28 {handshake.bb = 1 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %30 = buffer %29 {handshake.bb = 1 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %31:6 = fork [6] %30 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %33 = mux %22#0 [%14, %trueResult_34] {handshake.bb = 1 : ui32, handshake.name = "mux10"} : <i1>, <i5>
    %34 = buffer %33 {handshake.bb = 1 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %35 = buffer %34 {handshake.bb = 1 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %36:5 = fork [5] %35 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i5>
    %38 = extsi %36#2 {handshake.bb = 1 : ui32, handshake.name = "extsi14"} : <i5> to <i6>
    %39 = buffer %36#0 {handshake.bb = 1 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %40 = trunci %39 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i5> to <i4>
    %42 = trunci %36#1 {handshake.bb = 1 : ui32, handshake.name = "trunci1"} : <i5> to <i4>
    %44 = constant %31#2 {handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %45 = extsi %44 {handshake.bb = 1 : ui32, handshake.name = "extsi15"} : <i1> to <i5>
    %addressResult, %dataResult = load[%42] %2#0 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i4>, <f32>
    %46 = buffer %121#2 {handshake.bb = 2 : ui32, handshake.name = "buffer71", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult, %falseResult = cond_br %46, %92 {handshake.bb = 2 : ui32, handshake.name = "cond_br35"} : <i1>, <i1>
    sink %trueResult {handshake.name = "sink0"} : <i1>
    %47 = extsi %falseResult {handshake.bb = 2 : ui32, handshake.name = "extsi12"} : <i1> to <i5>
    %trueResult_2, %falseResult_3 = cond_br %121#5, %114 {handshake.bb = 2 : ui32, handshake.name = "cond_br36"} : <i1>, <f32>
    %49:2 = fork [2] %falseResult_3 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <f32>
    %trueResult_4, %falseResult_5 = cond_br %121#0, %118 {handshake.bb = 2 : ui32, handshake.name = "cond_br37"} : <i1>, <i5>
    sink %falseResult_5 {handshake.name = "sink1"} : <i5>
    %trueResult_6, %falseResult_7 = cond_br %121#4, %77#4 {handshake.bb = 2 : ui32, handshake.name = "cond_br38"} : <i1>, <>
    sink %falseResult_7 {handshake.name = "sink2"} : <>
    %trueResult_8, %falseResult_9 = cond_br %121#1, %66#2 {handshake.bb = 2 : ui32, handshake.name = "cond_br39"} : <i1>, <i5>
    sink %falseResult_9 {handshake.name = "sink3"} : <i5>
    %56 = constant %0#6 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant23", value = false} : <>, <i1>
    %58 = merge %56, %121#3 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge11"} : <i1>
    %59 = buffer %58 {handshake.bb = 2 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %60:4 = fork [4] %59 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork6"} : <i1>
    %63 = mux %60#0 [%36#4, %trueResult_8] {handshake.bb = 2 : ui32, handshake.name = "mux11"} : <i1>, <i5>
    %64 = buffer %63 {handshake.bb = 2 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %65 = buffer %64 {handshake.bb = 2 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %66:3 = fork [3] %65 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i5>
    %68 = trunci %66#0 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i5> to <i4>
    %69 = extsi %68 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i4> to <i7>
    %71 = extsi %66#1 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i5> to <i6>
    %74 = mux %60#3 [%31#5, %trueResult_6] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux13"} : <i1>, <>
    %75 = buffer %74 {handshake.bb = 2 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %76 = buffer %75 {handshake.bb = 2 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %77:5 = fork [5] %76 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <>
    %79 = mux %60#2 [%dataResult, %trueResult_2] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux17"} : <i1>, <f32>
    %81 = mux %60#1 [%45, %trueResult_4] {handshake.bb = 2 : ui32, handshake.name = "mux18"} : <i1>, <i5>
    %82 = buffer %81 {handshake.bb = 2 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %83 = buffer %82 {handshake.bb = 2 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %84:3 = fork [3] %83 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i5>
    %86 = extsi %84#0 {handshake.bb = 2 : ui32, handshake.name = "extsi18"} : <i5> to <i7>
    %88 = extsi %84#2 {handshake.bb = 2 : ui32, handshake.name = "extsi19"} : <i5> to <i6>
    %90 = trunci %84#1 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i5> to <i4>
    %91 = buffer %77#3 {handshake.bb = 2 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %92 = constant %91 {handshake.bb = 2 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %93 = buffer %77#2 {handshake.bb = 2 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %94 = constant %93 {handshake.bb = 2 : ui32, handshake.name = "constant2", value = 10 : i5} : <>, <i5>
    %95 = extsi %94 {handshake.bb = 2 : ui32, handshake.name = "extsi20"} : <i5> to <i6>
    %97 = constant %77#1 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = 1 : i2} : <>, <i2>
    %98:2 = fork [2] %97 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i2>
    %100 = extui %98#0 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i2> to <i6>
    %102 = extsi %98#1 {handshake.bb = 2 : ui32, handshake.name = "extsi21"} : <i2> to <i6>
    %104 = constant %77#0 {handshake.bb = 2 : ui32, handshake.name = "constant18", value = 3 : i3} : <>, <i3>
    %105 = extui %104 {handshake.bb = 2 : ui32, handshake.name = "extui1"} : <i3> to <i7>
    %106 = shli %71, %100 {handshake.bb = 2 : ui32, handshake.name = "shli6"} : <i6>
    %107 = extsi %106 {handshake.bb = 2 : ui32, handshake.name = "extsi22"} : <i6> to <i7>
    %108 = shli %69, %105 {handshake.bb = 2 : ui32, handshake.name = "shli5"} : <i7>
    %109 = addi %107, %108 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i7>
    %110 = addi %86, %109 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i7>
    %addressResult_10, %dataResult_11 = load[%110] %outputs_0#0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i7>, <f32>
    %addressResult_12, %dataResult_13 = load[%90] %outputs {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load2"} : <i4>, <f32>
    %111 = mulf %dataResult_11, %dataResult_13 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf0"} : <f32>
    %112 = buffer %79 {handshake.bb = 2 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <f32>
    %113 = buffer %112 {handshake.bb = 2 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %114 = addf %113, %111 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf0"} : <f32>
    %115 = addi %88, %102 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i6>
    %116:2 = fork [2] %115 {handshake.bb = 2 : ui32, handshake.name = "fork11"} : <i6>
    %118 = trunci %116#0 {handshake.bb = 2 : ui32, handshake.name = "trunci4"} : <i6> to <i5>
    %119 = buffer %116#1 {handshake.bb = 2 : ui32, handshake.name = "buffer68", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %120 = cmpi ult, %119, %95 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i6>
    %121:6 = fork [6] %120 {handshake.bb = 2 : ui32, handshake.name = "fork12"} : <i1>
    %122 = buffer %136#0 {handshake.bb = 3 : ui32, handshake.name = "buffer83", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_14, %falseResult_15 = cond_br %207#5, %122 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br7"} : <i1>, <>
    %125 = constant %0#5 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant17", value = false} : <>, <i1>
    %126 = buffer %17 {handshake.bb = 3 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %127 = buffer %126 {handshake.bb = 3 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %129 = mux %133#4 [%127, %trueResult_14] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <>
    %131 = merge %125, %207#4 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge5"} : <i1>
    %132 = buffer %131 {handshake.bb = 3 : ui32, handshake.name = "buffer77", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %133:5 = fork [5] %132 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork13"} : <i1>
    %134 = buffer %129 {handshake.bb = 3 : ui32, handshake.name = "buffer75", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %135 = buffer %134 {handshake.bb = 3 : ui32, handshake.name = "buffer76", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %136:2 = lazy_fork [2] %135 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork1"} : <>
    %trueResult_16, %falseResult_17 = cond_br %207#0, %204 {handshake.bb = 3 : ui32, handshake.name = "cond_br40"} : <i1>, <i5>
    sink %falseResult_17 {handshake.name = "sink4"} : <i5>
    %trueResult_18, %falseResult_19 = cond_br %207#3, %166#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br41"} : <i1>, <>
    sink %falseResult_19 {handshake.name = "sink5"} : <>
    %trueResult_20, %falseResult_21 = cond_br %207#1, %155#2 {handshake.bb = 3 : ui32, handshake.name = "cond_br42"} : <i1>, <i5>
    sink %falseResult_21 {handshake.name = "sink6"} : <i5>
    %trueResult_22, %falseResult_23 = cond_br %207#2, %149#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br43"} : <i1>, <f32>
    sink %falseResult_23 {handshake.name = "sink7"} : <f32>
    %144 = buffer %49#1 {handshake.bb = 3 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %146 = mux %133#3 [%144, %trueResult_22] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux19"} : <i1>, <f32>
    %147 = buffer %146 {handshake.bb = 3 : ui32, handshake.name = "buffer84", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <f32>
    %148 = buffer %147 {handshake.bb = 3 : ui32, handshake.name = "buffer85", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %149:2 = fork [2] %148 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <f32>
    %150 = buffer %36#3 {handshake.bb = 3 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %152 = mux %133#0 [%150, %trueResult_20] {handshake.bb = 3 : ui32, handshake.name = "mux20"} : <i1>, <i5>
    %153 = buffer %152 {handshake.bb = 3 : ui32, handshake.name = "buffer88", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %154 = buffer %153 {handshake.bb = 3 : ui32, handshake.name = "buffer89", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %155:3 = fork [3] %154 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <i5>
    %157 = trunci %155#0 {handshake.bb = 3 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %158 = extsi %157 {handshake.bb = 3 : ui32, handshake.name = "extsi23"} : <i4> to <i7>
    %160 = extsi %155#1 {handshake.bb = 3 : ui32, handshake.name = "extsi24"} : <i5> to <i6>
    %161 = buffer %31#4 {handshake.bb = 3 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %163 = mux %133#2 [%161, %trueResult_18] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux23"} : <i1>, <>
    %164 = buffer %163 {handshake.bb = 3 : ui32, handshake.name = "buffer93", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %165 = buffer %164 {handshake.bb = 3 : ui32, handshake.name = "buffer94", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %166:4 = fork [4] %165 {handshake.bb = 3 : ui32, handshake.name = "fork16"} : <>
    %168 = mux %133#1 [%47, %trueResult_16] {handshake.bb = 3 : ui32, handshake.name = "mux25"} : <i1>, <i5>
    %169 = buffer %168 {handshake.bb = 3 : ui32, handshake.name = "buffer99", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %170 = buffer %169 {handshake.bb = 3 : ui32, handshake.name = "buffer100", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %171:4 = fork [4] %170 {handshake.bb = 3 : ui32, handshake.name = "fork17"} : <i5>
    %173 = extsi %171#0 {handshake.bb = 3 : ui32, handshake.name = "extsi25"} : <i5> to <i7>
    %175 = extsi %171#3 {handshake.bb = 3 : ui32, handshake.name = "extsi26"} : <i5> to <i6>
    %176 = buffer %171#1 {handshake.bb = 3 : ui32, handshake.name = "buffer102", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %177 = trunci %176 {handshake.bb = 3 : ui32, handshake.name = "trunci6"} : <i5> to <i4>
    %179 = trunci %171#2 {handshake.bb = 3 : ui32, handshake.name = "trunci7"} : <i5> to <i4>
    %181 = constant %166#2 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 10 : i5} : <>, <i5>
    %182 = extsi %181 {handshake.bb = 3 : ui32, handshake.name = "extsi27"} : <i5> to <i6>
    %184 = constant %166#1 {handshake.bb = 3 : ui32, handshake.name = "constant20", value = 1 : i2} : <>, <i2>
    %185:2 = fork [2] %184 {handshake.bb = 3 : ui32, handshake.name = "fork18"} : <i2>
    %187 = extui %185#0 {handshake.bb = 3 : ui32, handshake.name = "extui2"} : <i2> to <i6>
    %189 = extsi %185#1 {handshake.bb = 3 : ui32, handshake.name = "extsi28"} : <i2> to <i6>
    %191 = constant %166#0 {handshake.bb = 3 : ui32, handshake.name = "constant21", value = 3 : i3} : <>, <i3>
    %192 = extui %191 {handshake.bb = 3 : ui32, handshake.name = "extui3"} : <i3> to <i7>
    %addressResult_24, %dataResult_25 = load[%179] %4#0 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i4>, <f32>
    %193 = shli %160, %187 {handshake.bb = 3 : ui32, handshake.name = "shli7"} : <i6>
    %194 = extsi %193 {handshake.bb = 3 : ui32, handshake.name = "extsi29"} : <i6> to <i7>
    %195 = shli %158, %192 {handshake.bb = 3 : ui32, handshake.name = "shli4"} : <i7>
    %196 = addi %194, %195 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i7>
    %197 = addi %173, %196 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i7>
    %addressResult_26, %dataResult_27 = load[%197] %outputs_0#1 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i7>, <f32>
    %199 = mulf %dataResult_27, %149#0 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "mulf1"} : <f32>
    %200 = addf %dataResult_25, %199 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "addf1"} : <f32>
    %addressResult_28, %dataResult_29 = store[%177] %200 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load3" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i4>, <f32>
    %201 = addi %175, %189 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i6>
    %202:2 = fork [2] %201 {handshake.bb = 3 : ui32, handshake.name = "fork19"} : <i6>
    %204 = trunci %202#0 {handshake.bb = 3 : ui32, handshake.name = "trunci8"} : <i6> to <i5>
    %206 = cmpi ult, %202#1, %182 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i6>
    %207:6 = fork [6] %206 {handshake.bb = 3 : ui32, handshake.name = "fork20"} : <i1>
    %208 = buffer %230#3 {handshake.bb = 4 : ui32, handshake.name = "buffer121", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_30, %falseResult_31 = cond_br %208, %falseResult_15 {handshake.bb = 4 : ui32, handshake.name = "cond_br8"} : <i1>, <>
    sink %falseResult_31 {handshake.name = "sink8"} : <>
    %209 = buffer %213#0 {handshake.bb = 4 : ui32, handshake.name = "buffer115", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %trueResult_32, %falseResult_33 = cond_br %230#2, %209 {handshake.bb = 4 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br9"} : <i1>, <>
    %211 = buffer %25#0 {handshake.bb = 4 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %212 = buffer %211 {handshake.bb = 4 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %213:2 = lazy_fork [2] %212 {handshake.bb = 4 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork2"} : <>
    %trueResult_34, %falseResult_35 = cond_br %230#0, %227 {handshake.bb = 4 : ui32, handshake.name = "cond_br44"} : <i1>, <i5>
    sink %falseResult_35 {handshake.name = "sink9"} : <i5>
    %trueResult_36, %falseResult_37 = cond_br %230#1, %31#3 {handshake.bb = 4 : ui32, handshake.name = "cond_br45"} : <i1>, <>
    sink %falseResult_37 {handshake.name = "sink10"} : <>
    %218 = constant %31#1 {handshake.bb = 4 : ui32, handshake.name = "constant22", value = 10 : i5} : <>, <i5>
    %219 = extsi %218 {handshake.bb = 4 : ui32, handshake.name = "extsi30"} : <i5> to <i6>
    %221 = constant %31#0 {handshake.bb = 4 : ui32, handshake.name = "constant24", value = 1 : i2} : <>, <i2>
    %222 = extsi %221 {handshake.bb = 4 : ui32, handshake.name = "extsi31"} : <i2> to <i6>
    %addressResult_38, %dataResult_39 = store[%40] %49#0 {handshake.bb = 4 : ui32, handshake.deps = #handshake<deps[<"load5" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i4>, <f32>
    %224 = addi %38, %222 {handshake.bb = 4 : ui32, handshake.name = "addi4"} : <i6>
    %225:2 = fork [2] %224 {handshake.bb = 4 : ui32, handshake.name = "fork21"} : <i6>
    %227 = trunci %225#0 {handshake.bb = 4 : ui32, handshake.name = "trunci9"} : <i6> to <i5>
    %229 = cmpi ult, %225#1, %219 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i6>
    %230:5 = fork [5] %229 {handshake.bb = 4 : ui32, handshake.name = "fork22"} : <i1>
    %231:2 = lazy_fork [2] %falseResult_33 {handshake.bb = 5 : ui32, handshake.name = "lazy_fork3"} : <>
    %232:2 = fork [2] %231#1 {handshake.bb = 5 : ui32, handshake.name = "fork23"} : <>
    sink %231#0 {handshake.name = "sink11"} : <>
    %234 = constant %0#3 {handshake.bb = 5 : ui32, handshake.name = "constant25", value = 9 : i5} : <>, <i5>
    %235 = trunci %234 {handshake.bb = 5 : ui32, handshake.name = "trunci10"} : <i5> to <i4>
    %addressResult_40, %dataResult_41 = load[%235] %2#1 {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load5"} : <i4>, <f32>
    %236 = fptosi %dataResult_41 {handshake.bb = 5 : ui32, handshake.name = "fptosi0"} : <f32> to <i32>
    %237 = buffer %0#4 {handshake.bb = 5 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %236, %memEnd_1, %memEnd, %4#1, %2#2, %237 : <i32>, <>, <>, <>, <>, <>
  }
}


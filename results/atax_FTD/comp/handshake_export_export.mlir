module {
  handshake.func @atax(%arg0: memref<100xf32>, %arg1: memref<10xf32>, %arg2: memref<10xf32>, %arg3: memref<10xf32>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "x", "y", "tmp", "A_start", "x_start", "y_start", "tmp_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][4,1,5,cmpi2][1,2][3,3,4,cmpi1]", resNames = ["out0", "A_end", "x_end", "y_end", "tmp_end", "end"]} {
    %0:10 = fork [10] %arg8 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %2:3 = lsq[%arg3 : memref<10xf32>] (%arg7, %24#1, %addressResult, %190#1, %addressResult_32, %dataResult_33, %207#0, %addressResult_34, %207#1)  {groupSizes = [1 : i32, 1 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "7": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "8": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<f32>, !handshake.control<>, !handshake.channel<i4>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.channel<f32>, !handshake.control<>)
    %4:2 = lsq[%arg2 : memref<10xf32>] (%arg6, %121#1, %addressResult_20, %addressResult_24, %dataResult_25, %0#2)  {groupSizes = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<i4>, !handshake.channel<f32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg1 : memref<10xf32>] %arg5 (%addressResult_10) %0#1 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller2"} :    (!handshake.channel<i4>) -> !handshake.channel<f32>
    %outputs_0:2, %memEnd_1 = mem_controller[%arg0 : memref<100xf32>] %arg4 (%addressResult_8, %addressResult_22) %0#0 {connectedBlocks = [2 : i32, 3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i7>, !handshake.channel<i7>) -> (!handshake.channel<f32>, !handshake.channel<f32>)
    %7 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %8 = constant %7 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %9 = extsi %8 {handshake.bb = 0 : ui32, handshake.name = "extsi13"} : <i1> to <i5>
    %12 = mux %21#1 [%0#9, %trueResult_28] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux9"} : <i1>, <>
    %14 = constant %0#8 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant18", value = false} : <>, <i1>
    %16 = buffer %21#2 {handshake.bb = 1 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %17 = mux %16 [%0#7, %trueResult_26] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux10"} : <i1>, <>
    %19 = merge %14, %205#3 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge2"} : <i1>
    %20 = buffer %19 {handshake.bb = 1 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %21:3 = fork [3] %20 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork1"} : <i1>
    %22 = buffer %12 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %23 = buffer %22 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %24:2 = lazy_fork [2] %23 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork0"} : <>
    %26 = mux %21#0 [%9, %trueResult_30] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i5>
    %27 = buffer %26 {handshake.bb = 1 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %28 = buffer %27 {handshake.bb = 1 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %29:5 = fork [5] %28 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i5>
    %31 = extsi %29#2 {handshake.bb = 1 : ui32, handshake.name = "extsi14"} : <i5> to <i6>
    %32 = buffer %29#0 {handshake.bb = 1 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %33 = trunci %32 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i5> to <i4>
    %35 = trunci %29#1 {handshake.bb = 1 : ui32, handshake.name = "trunci1"} : <i5> to <i4>
    %36 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %37 = constant %36 {handshake.bb = 1 : ui32, handshake.name = "constant2", value = false} : <>, <i1>
    %38 = extsi %37 {handshake.bb = 1 : ui32, handshake.name = "extsi15"} : <i1> to <i5>
    %addressResult, %dataResult = load[%35] %2#0 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i4>, <f32>
    %39 = buffer %106#2 {handshake.bb = 2 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult, %falseResult = cond_br %39, %77 {handshake.bb = 2 : ui32, handshake.name = "cond_br18"} : <i1>, <i1>
    sink %trueResult {handshake.name = "sink0"} : <i1>
    %40 = extsi %falseResult {handshake.bb = 2 : ui32, handshake.name = "extsi12"} : <i1> to <i5>
    %trueResult_2, %falseResult_3 = cond_br %106#4, %99 {handshake.bb = 2 : ui32, handshake.name = "cond_br19"} : <i1>, <f32>
    %42:2 = fork [2] %falseResult_3 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <f32>
    %trueResult_4, %falseResult_5 = cond_br %106#0, %103 {handshake.bb = 2 : ui32, handshake.name = "cond_br20"} : <i1>, <i5>
    sink %falseResult_5 {handshake.name = "sink1"} : <i5>
    %trueResult_6, %falseResult_7 = cond_br %106#1, %57#2 {handshake.bb = 2 : ui32, handshake.name = "cond_br21"} : <i1>, <i5>
    sink %falseResult_7 {handshake.name = "sink2"} : <i5>
    %47 = constant %0#6 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %49 = merge %47, %106#3 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i1>
    %50 = buffer %49 {handshake.bb = 2 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %51:3 = fork [3] %50 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork4"} : <i1>
    %54 = mux %51#0 [%29#4, %trueResult_6] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i5>
    %55 = buffer %54 {handshake.bb = 2 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %56 = buffer %55 {handshake.bb = 2 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %57:3 = fork [3] %56 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i5>
    %59 = trunci %57#0 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i5> to <i4>
    %60 = extsi %59 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i4> to <i7>
    %62 = extsi %57#1 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i5> to <i6>
    %64 = mux %51#2 [%dataResult, %trueResult_2] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <f32>
    %66 = mux %51#1 [%38, %trueResult_4] {handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <i5>
    %67 = buffer %66 {handshake.bb = 2 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %68 = buffer %67 {handshake.bb = 2 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %69:3 = fork [3] %68 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i5>
    %71 = extsi %69#0 {handshake.bb = 2 : ui32, handshake.name = "extsi18"} : <i5> to <i7>
    %73 = extsi %69#2 {handshake.bb = 2 : ui32, handshake.name = "extsi19"} : <i5> to <i6>
    %75 = trunci %69#1 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i5> to <i4>
    %76 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %77 = constant %76 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = false} : <>, <i1>
    %78 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %79 = constant %78 {handshake.bb = 2 : ui32, handshake.name = "constant16", value = 10 : i5} : <>, <i5>
    %80 = extsi %79 {handshake.bb = 2 : ui32, handshake.name = "extsi20"} : <i5> to <i6>
    %81 = source {handshake.bb = 2 : ui32, handshake.name = "source4"} : <>
    %82 = constant %81 {handshake.bb = 2 : ui32, handshake.name = "constant17", value = 1 : i2} : <>, <i2>
    %83:2 = fork [2] %82 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i2>
    %85 = extui %83#0 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i2> to <i6>
    %87 = extsi %83#1 {handshake.bb = 2 : ui32, handshake.name = "extsi21"} : <i2> to <i6>
    %88 = source {handshake.bb = 2 : ui32, handshake.name = "source5"} : <>
    %89 = constant %88 {handshake.bb = 2 : ui32, handshake.name = "constant20", value = 3 : i3} : <>, <i3>
    %90 = extui %89 {handshake.bb = 2 : ui32, handshake.name = "extui1"} : <i3> to <i7>
    %91 = shli %62, %85 {handshake.bb = 2 : ui32, handshake.name = "shli6"} : <i6>
    %92 = extsi %91 {handshake.bb = 2 : ui32, handshake.name = "extsi22"} : <i6> to <i7>
    %93 = shli %60, %90 {handshake.bb = 2 : ui32, handshake.name = "shli5"} : <i7>
    %94 = addi %92, %93 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i7>
    %95 = addi %71, %94 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i7>
    %addressResult_8, %dataResult_9 = load[%95] %outputs_0#0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i7>, <f32>
    %addressResult_10, %dataResult_11 = load[%75] %outputs {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load2"} : <i4>, <f32>
    %96 = mulf %dataResult_9, %dataResult_11 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf0"} : <f32>
    %97 = buffer %64 {handshake.bb = 2 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <f32>
    %98 = buffer %97 {handshake.bb = 2 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %99 = addf %98, %96 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf0"} : <f32>
    %100 = addi %73, %87 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i6>
    %101:2 = fork [2] %100 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i6>
    %103 = trunci %101#0 {handshake.bb = 2 : ui32, handshake.name = "trunci4"} : <i6> to <i5>
    %104 = buffer %101#1 {handshake.bb = 2 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %105 = cmpi ult, %104, %80 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i6>
    %106:5 = fork [5] %105 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i1>
    %107 = buffer %121#0 {handshake.bb = 3 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_12, %falseResult_13 = cond_br %184#4, %107 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br7"} : <i1>, <>
    %110 = constant %0#5 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant19", value = false} : <>, <i1>
    %111 = buffer %17 {handshake.bb = 3 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %112 = buffer %111 {handshake.bb = 3 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %114 = mux %118#3 [%112, %trueResult_12] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux11"} : <i1>, <>
    %116 = merge %110, %184#3 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge7"} : <i1>
    %117 = buffer %116 {handshake.bb = 3 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %118:4 = fork [4] %117 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork10"} : <i1>
    %119 = buffer %114 {handshake.bb = 3 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %120 = buffer %119 {handshake.bb = 3 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %121:2 = lazy_fork [2] %120 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork1"} : <>
    %trueResult_14, %falseResult_15 = cond_br %184#0, %181 {handshake.bb = 3 : ui32, handshake.name = "cond_br22"} : <i1>, <i5>
    sink %falseResult_15 {handshake.name = "sink3"} : <i5>
    %trueResult_16, %falseResult_17 = cond_br %184#1, %138#2 {handshake.bb = 3 : ui32, handshake.name = "cond_br23"} : <i1>, <i5>
    sink %falseResult_17 {handshake.name = "sink4"} : <i5>
    %trueResult_18, %falseResult_19 = cond_br %184#2, %132#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br24"} : <i1>, <f32>
    sink %falseResult_19 {handshake.name = "sink5"} : <f32>
    %127 = buffer %42#1 {handshake.bb = 3 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %129 = mux %118#2 [%127, %trueResult_18] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <f32>
    %130 = buffer %129 {handshake.bb = 3 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <f32>
    %131 = buffer %130 {handshake.bb = 3 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %132:2 = fork [2] %131 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <f32>
    %133 = buffer %29#3 {handshake.bb = 3 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %135 = mux %118#0 [%133, %trueResult_16] {handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <i5>
    %136 = buffer %135 {handshake.bb = 3 : ui32, handshake.name = "buffer66", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %137 = buffer %136 {handshake.bb = 3 : ui32, handshake.name = "buffer67", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %138:3 = fork [3] %137 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i5>
    %140 = trunci %138#0 {handshake.bb = 3 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %141 = extsi %140 {handshake.bb = 3 : ui32, handshake.name = "extsi23"} : <i4> to <i7>
    %143 = extsi %138#1 {handshake.bb = 3 : ui32, handshake.name = "extsi24"} : <i5> to <i6>
    %145 = mux %118#1 [%40, %trueResult_14] {handshake.bb = 3 : ui32, handshake.name = "mux8"} : <i1>, <i5>
    %146 = buffer %145 {handshake.bb = 3 : ui32, handshake.name = "buffer71", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %147 = buffer %146 {handshake.bb = 3 : ui32, handshake.name = "buffer72", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %148:4 = fork [4] %147 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i5>
    %150 = extsi %148#0 {handshake.bb = 3 : ui32, handshake.name = "extsi25"} : <i5> to <i7>
    %152 = extsi %148#3 {handshake.bb = 3 : ui32, handshake.name = "extsi26"} : <i5> to <i6>
    %153 = buffer %148#1 {handshake.bb = 3 : ui32, handshake.name = "buffer74", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %154 = trunci %153 {handshake.bb = 3 : ui32, handshake.name = "trunci6"} : <i5> to <i4>
    %156 = trunci %148#2 {handshake.bb = 3 : ui32, handshake.name = "trunci7"} : <i5> to <i4>
    %157 = source {handshake.bb = 3 : ui32, handshake.name = "source6"} : <>
    %158 = constant %157 {handshake.bb = 3 : ui32, handshake.name = "constant21", value = 10 : i5} : <>, <i5>
    %159 = extsi %158 {handshake.bb = 3 : ui32, handshake.name = "extsi27"} : <i5> to <i6>
    %160 = source {handshake.bb = 3 : ui32, handshake.name = "source7"} : <>
    %161 = constant %160 {handshake.bb = 3 : ui32, handshake.name = "constant22", value = 1 : i2} : <>, <i2>
    %162:2 = fork [2] %161 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i2>
    %164 = extui %162#0 {handshake.bb = 3 : ui32, handshake.name = "extui2"} : <i2> to <i6>
    %166 = extsi %162#1 {handshake.bb = 3 : ui32, handshake.name = "extsi28"} : <i2> to <i6>
    %167 = source {handshake.bb = 3 : ui32, handshake.name = "source8"} : <>
    %168 = constant %167 {handshake.bb = 3 : ui32, handshake.name = "constant23", value = 3 : i3} : <>, <i3>
    %169 = extui %168 {handshake.bb = 3 : ui32, handshake.name = "extui3"} : <i3> to <i7>
    %addressResult_20, %dataResult_21 = load[%156] %4#0 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i4>, <f32>
    %170 = shli %143, %164 {handshake.bb = 3 : ui32, handshake.name = "shli7"} : <i6>
    %171 = extsi %170 {handshake.bb = 3 : ui32, handshake.name = "extsi29"} : <i6> to <i7>
    %172 = shli %141, %169 {handshake.bb = 3 : ui32, handshake.name = "shli4"} : <i7>
    %173 = addi %171, %172 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i7>
    %174 = addi %150, %173 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i7>
    %addressResult_22, %dataResult_23 = load[%174] %outputs_0#1 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i7>, <f32>
    %176 = mulf %dataResult_23, %132#0 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "mulf1"} : <f32>
    %177 = addf %dataResult_21, %176 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "addf1"} : <f32>
    %addressResult_24, %dataResult_25 = store[%154] %177 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load3" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i4>, <f32>
    %178 = addi %152, %166 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i6>
    %179:2 = fork [2] %178 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <i6>
    %181 = trunci %179#0 {handshake.bb = 3 : ui32, handshake.name = "trunci8"} : <i6> to <i5>
    %183 = cmpi ult, %179#1, %159 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i6>
    %184:5 = fork [5] %183 {handshake.bb = 3 : ui32, handshake.name = "fork16"} : <i1>
    %185 = buffer %205#2 {handshake.bb = 4 : ui32, handshake.name = "buffer91", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_26, %falseResult_27 = cond_br %185, %falseResult_13 {handshake.bb = 4 : ui32, handshake.name = "cond_br8"} : <i1>, <>
    sink %falseResult_27 {handshake.name = "sink6"} : <>
    %186 = buffer %190#0 {handshake.bb = 4 : ui32, handshake.name = "buffer86", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %trueResult_28, %falseResult_29 = cond_br %205#1, %186 {handshake.bb = 4 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br9"} : <i1>, <>
    %188 = buffer %24#0 {handshake.bb = 4 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %189 = buffer %188 {handshake.bb = 4 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %190:2 = lazy_fork [2] %189 {handshake.bb = 4 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork2"} : <>
    %trueResult_30, %falseResult_31 = cond_br %205#0, %202 {handshake.bb = 4 : ui32, handshake.name = "cond_br25"} : <i1>, <i5>
    sink %falseResult_31 {handshake.name = "sink7"} : <i5>
    %192 = source {handshake.bb = 4 : ui32, handshake.name = "source9"} : <>
    %193 = constant %192 {handshake.bb = 4 : ui32, handshake.name = "constant24", value = 10 : i5} : <>, <i5>
    %194 = extsi %193 {handshake.bb = 4 : ui32, handshake.name = "extsi30"} : <i5> to <i6>
    %195 = source {handshake.bb = 4 : ui32, handshake.name = "source10"} : <>
    %196 = constant %195 {handshake.bb = 4 : ui32, handshake.name = "constant25", value = 1 : i2} : <>, <i2>
    %197 = extsi %196 {handshake.bb = 4 : ui32, handshake.name = "extsi31"} : <i2> to <i6>
    %addressResult_32, %dataResult_33 = store[%33] %42#0 {handshake.bb = 4 : ui32, handshake.deps = #handshake<deps[<"load5" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i4>, <f32>
    %199 = addi %31, %197 {handshake.bb = 4 : ui32, handshake.name = "addi4"} : <i6>
    %200:2 = fork [2] %199 {handshake.bb = 4 : ui32, handshake.name = "fork17"} : <i6>
    %202 = trunci %200#0 {handshake.bb = 4 : ui32, handshake.name = "trunci9"} : <i6> to <i5>
    %204 = cmpi ult, %200#1, %194 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i6>
    %205:4 = fork [4] %204 {handshake.bb = 4 : ui32, handshake.name = "fork18"} : <i1>
    %206:2 = lazy_fork [2] %falseResult_29 {handshake.bb = 5 : ui32, handshake.name = "lazy_fork3"} : <>
    %207:2 = fork [2] %206#1 {handshake.bb = 5 : ui32, handshake.name = "fork19"} : <>
    sink %206#0 {handshake.name = "sink8"} : <>
    %209 = constant %0#3 {handshake.bb = 5 : ui32, handshake.name = "constant26", value = 9 : i5} : <>, <i5>
    %210 = trunci %209 {handshake.bb = 5 : ui32, handshake.name = "trunci10"} : <i5> to <i4>
    %addressResult_34, %dataResult_35 = load[%210] %2#1 {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load5"} : <i4>, <f32>
    %211 = fptosi %dataResult_35 {handshake.bb = 5 : ui32, handshake.name = "fptosi0"} : <f32> to <i32>
    %212 = buffer %0#4 {handshake.bb = 5 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %211, %memEnd_1, %memEnd, %4#1, %2#2, %212 : <i32>, <>, <>, <>, <>, <>
  }
}


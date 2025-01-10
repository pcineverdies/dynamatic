module {
  handshake.func @atax(%arg0: memref<100xf32>, %arg1: memref<10xf32>, %arg2: memref<10xf32>, %arg3: memref<10xf32>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "x", "y", "tmp", "A_start", "x_start", "y_start", "tmp_start", "start"], resNames = ["out0", "A_end", "x_end", "y_end", "tmp_end", "end"]} {
    %0:3 = fork [3] %arg8 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %2:3 = lsq[%arg3 : memref<10xf32>] (%arg7, %19#0, %addressResult, %169#0, %addressResult_32, %dataResult_33, %190#3, %addressResult_38, %190#4)  {groupSizes = [1 : i32, 1 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "7": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "8": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<f32>, !handshake.control<>, !handshake.channel<i4>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.channel<f32>, !handshake.control<>)
    %4:2 = lsq[%arg2 : memref<10xf32>] (%arg6, %124#0, %addressResult_18, %addressResult_22, %dataResult_23, %190#2)  {groupSizes = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<i4>, !handshake.channel<f32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg1 : memref<10xf32>] %arg5 (%addressResult_6) %190#1 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller2"} :    (!handshake.channel<i4>) -> !handshake.channel<f32>
    %outputs_0:2, %memEnd_1 = mem_controller[%arg0 : memref<100xf32>] %arg4 (%addressResult_4, %addressResult_20) %190#0 {connectedBlocks = [2 : i32, 3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i7>, !handshake.channel<i7>) -> (!handshake.channel<f32>, !handshake.channel<f32>)
    %8 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %9 = extsi %8 {handshake.bb = 0 : ui32, handshake.name = "extsi14"} : <i1> to <i5>
    %11 = mux %index [%9, %trueResult_34] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i5>
    %12 = buffer %11 {handshake.bb = 1 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %13 = buffer %12 {handshake.bb = 1 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %14:2 = fork [2] %13 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i5>
    %16 = trunci %14#0 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i5> to <i4>
    %result, %index = control_merge %0#2, %trueResult_36  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %17 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %18 = buffer %17 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %19:3 = lazy_fork [3] %18 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork0"} : <>
    %20 = buffer %19#2 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %21 = fork [1] %20 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <>
    %23 = constant %21 {handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %addressResult, %dataResult = load[%16] %2#0 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i4>, <f32>
    %24 = extsi %23 {handshake.bb = 1 : ui32, handshake.name = "extsi13"} : <i1> to <i5>
    %26 = buffer %19#1 {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %28 = mux %50#1 [%24, %trueResult] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i5>
    %29 = buffer %28 {handshake.bb = 2 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %30 = buffer %29 {handshake.bb = 2 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %31:3 = fork [3] %30 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i5>
    %33 = extsi %31#0 {handshake.bb = 2 : ui32, handshake.name = "extsi15"} : <i5> to <i7>
    %35 = extsi %31#2 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i5> to <i6>
    %37 = trunci %31#1 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i5> to <i4>
    %39 = mux %50#2 [%dataResult, %trueResult_8] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <f32>
    %41 = mux %50#0 [%14#1, %trueResult_10] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i5>
    %42 = buffer %41 {handshake.bb = 2 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %43 = buffer %42 {handshake.bb = 2 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %44:3 = fork [3] %43 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i5>
    %46 = trunci %44#0 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i5> to <i4>
    %47 = extsi %46 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i4> to <i7>
    %49 = extsi %44#2 {handshake.bb = 2 : ui32, handshake.name = "extsi18"} : <i5> to <i6>
    %result_2, %index_3 = control_merge %26, %trueResult_12  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %50:3 = fork [3] %index_3 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i1>
    %51 = buffer %result_2 {handshake.bb = 2 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %52 = buffer %51 {handshake.bb = 2 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %53:2 = fork [2] %52 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <>
    %55 = constant %53#0 {handshake.bb = 2 : ui32, handshake.name = "constant2", value = false} : <>, <i1>
    %56 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %57 = constant %56 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = 10 : i5} : <>, <i5>
    %58 = extsi %57 {handshake.bb = 2 : ui32, handshake.name = "extsi19"} : <i5> to <i6>
    %59 = source {handshake.bb = 2 : ui32, handshake.name = "source1"} : <>
    %60 = constant %59 {handshake.bb = 2 : ui32, handshake.name = "constant16", value = 1 : i2} : <>, <i2>
    %61:2 = fork [2] %60 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i2>
    %63 = extui %61#0 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i2> to <i6>
    %65 = extsi %61#1 {handshake.bb = 2 : ui32, handshake.name = "extsi20"} : <i2> to <i6>
    %66 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %67 = constant %66 {handshake.bb = 2 : ui32, handshake.name = "constant17", value = 3 : i3} : <>, <i3>
    %68 = extui %67 {handshake.bb = 2 : ui32, handshake.name = "extui1"} : <i3> to <i7>
    %69 = shli %49, %63 {handshake.bb = 2 : ui32, handshake.name = "shli6"} : <i6>
    %70 = extsi %69 {handshake.bb = 2 : ui32, handshake.name = "extsi21"} : <i6> to <i7>
    %71 = shli %47, %68 {handshake.bb = 2 : ui32, handshake.name = "shli5"} : <i7>
    %72 = addi %70, %71 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i7>
    %73 = addi %33, %72 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i7>
    %addressResult_4, %dataResult_5 = load[%73] %outputs_0#0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i7>, <f32>
    %addressResult_6, %dataResult_7 = load[%37] %outputs {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load2"} : <i4>, <f32>
    %74 = mulf %dataResult_5, %dataResult_7 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf0"} : <f32>
    %75 = buffer %39 {handshake.bb = 2 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <f32>
    %76 = buffer %75 {handshake.bb = 2 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %77 = addf %76, %74 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf0"} : <f32>
    %78 = addi %35, %65 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i6>
    %79:2 = fork [2] %78 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i6>
    %81 = trunci %79#0 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i6> to <i5>
    %83 = cmpi ult, %79#1, %58 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i6>
    %84:5 = fork [5] %83 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i1>
    %trueResult, %falseResult = cond_br %84#0, %81 {handshake.bb = 2 : ui32, handshake.name = "cond_br3"} : <i1>, <i5>
    sink %falseResult {handshake.name = "sink0"} : <i5>
    %86 = buffer %84#2 {handshake.bb = 2 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_8, %falseResult_9 = cond_br %86, %77 {handshake.bb = 2 : ui32, handshake.name = "cond_br4"} : <i1>, <f32>
    %trueResult_10, %falseResult_11 = cond_br %84#1, %44#1 {handshake.bb = 2 : ui32, handshake.name = "cond_br5"} : <i1>, <i5>
    %trueResult_12, %falseResult_13 = cond_br %84#3, %53#1 {handshake.bb = 2 : ui32, handshake.name = "cond_br6"} : <i1>, <>
    %trueResult_14, %falseResult_15 = cond_br %84#4, %55 {handshake.bb = 2 : ui32, handshake.name = "cond_br7"} : <i1>, <i1>
    sink %trueResult_14 {handshake.name = "sink1"} : <i1>
    %92 = extsi %falseResult_15 {handshake.bb = 2 : ui32, handshake.name = "extsi12"} : <i1> to <i5>
    %94 = mux %121#1 [%92, %trueResult_24] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i5>
    %95 = buffer %94 {handshake.bb = 3 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %96 = buffer %95 {handshake.bb = 3 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %97:4 = fork [4] %96 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i5>
    %99 = extsi %97#0 {handshake.bb = 3 : ui32, handshake.name = "extsi22"} : <i5> to <i7>
    %101 = extsi %97#3 {handshake.bb = 3 : ui32, handshake.name = "extsi23"} : <i5> to <i6>
    %102 = buffer %97#1 {handshake.bb = 3 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %103 = trunci %102 {handshake.bb = 3 : ui32, handshake.name = "trunci4"} : <i5> to <i4>
    %105 = trunci %97#2 {handshake.bb = 3 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %107 = mux %121#0 [%falseResult_11, %trueResult_26] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i5>
    %108 = buffer %107 {handshake.bb = 3 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %109 = buffer %108 {handshake.bb = 3 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %110:3 = fork [3] %109 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i5>
    %112 = trunci %110#0 {handshake.bb = 3 : ui32, handshake.name = "trunci6"} : <i5> to <i4>
    %113 = extsi %112 {handshake.bb = 3 : ui32, handshake.name = "extsi24"} : <i4> to <i7>
    %115 = extsi %110#2 {handshake.bb = 3 : ui32, handshake.name = "extsi25"} : <i5> to <i6>
    %117 = mux %121#2 [%falseResult_9, %trueResult_28] {handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <f32>
    %118 = buffer %117 {handshake.bb = 3 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <f32>
    %119 = buffer %118 {handshake.bb = 3 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %120:2 = fork [2] %119 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <f32>
    %result_16, %index_17 = control_merge %falseResult_13, %trueResult_30  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %121:3 = fork [3] %index_17 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i1>
    %122 = buffer %result_16 {handshake.bb = 3 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %123 = buffer %122 {handshake.bb = 3 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %124:2 = fork [2] %123 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <>
    %125 = source {handshake.bb = 3 : ui32, handshake.name = "source3"} : <>
    %126 = constant %125 {handshake.bb = 3 : ui32, handshake.name = "constant18", value = 10 : i5} : <>, <i5>
    %127 = extsi %126 {handshake.bb = 3 : ui32, handshake.name = "extsi26"} : <i5> to <i6>
    %128 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %129 = constant %128 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 1 : i2} : <>, <i2>
    %130:2 = fork [2] %129 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <i2>
    %132 = extui %130#0 {handshake.bb = 3 : ui32, handshake.name = "extui2"} : <i2> to <i6>
    %134 = extsi %130#1 {handshake.bb = 3 : ui32, handshake.name = "extsi27"} : <i2> to <i6>
    %135 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %136 = constant %135 {handshake.bb = 3 : ui32, handshake.name = "constant20", value = 3 : i3} : <>, <i3>
    %137 = extui %136 {handshake.bb = 3 : ui32, handshake.name = "extui3"} : <i3> to <i7>
    %addressResult_18, %dataResult_19 = load[%105] %4#0 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i4>, <f32>
    %138 = shli %115, %132 {handshake.bb = 3 : ui32, handshake.name = "shli7"} : <i6>
    %139 = extsi %138 {handshake.bb = 3 : ui32, handshake.name = "extsi28"} : <i6> to <i7>
    %140 = shli %113, %137 {handshake.bb = 3 : ui32, handshake.name = "shli4"} : <i7>
    %141 = addi %139, %140 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i7>
    %142 = addi %99, %141 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i7>
    %addressResult_20, %dataResult_21 = load[%142] %outputs_0#1 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i7>, <f32>
    %144 = mulf %dataResult_21, %120#1 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "mulf1"} : <f32>
    %145 = addf %dataResult_19, %144 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "addf1"} : <f32>
    %addressResult_22, %dataResult_23 = store[%103] %145 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load3" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i4>, <f32>
    %146 = addi %101, %134 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i6>
    %147:2 = fork [2] %146 {handshake.bb = 3 : ui32, handshake.name = "fork16"} : <i6>
    %149 = trunci %147#0 {handshake.bb = 3 : ui32, handshake.name = "trunci7"} : <i6> to <i5>
    %151 = cmpi ult, %147#1, %127 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i6>
    %152:4 = fork [4] %151 {handshake.bb = 3 : ui32, handshake.name = "fork17"} : <i1>
    %trueResult_24, %falseResult_25 = cond_br %152#0, %149 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <i5>
    sink %falseResult_25 {handshake.name = "sink2"} : <i5>
    %trueResult_26, %falseResult_27 = cond_br %152#1, %110#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br9"} : <i1>, <i5>
    %trueResult_28, %falseResult_29 = cond_br %152#2, %120#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br10"} : <i1>, <f32>
    %trueResult_30, %falseResult_31 = cond_br %152#3, %124#1 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br11"} : <i1>, <>
    %160 = buffer %falseResult_27 {handshake.bb = 4 : ui32, handshake.name = "buffer69", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %161 = buffer %160 {handshake.bb = 4 : ui32, handshake.name = "buffer70", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %162:2 = fork [2] %161 {handshake.bb = 4 : ui32, handshake.name = "fork18"} : <i5>
    %164 = extsi %162#1 {handshake.bb = 4 : ui32, handshake.name = "extsi29"} : <i5> to <i6>
    %166 = trunci %162#0 {handshake.bb = 4 : ui32, handshake.name = "trunci8"} : <i5> to <i4>
    %167 = buffer %falseResult_31 {handshake.bb = 4 : ui32, handshake.name = "buffer75", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %168 = buffer %167 {handshake.bb = 4 : ui32, handshake.name = "buffer76", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %169:2 = lazy_fork [2] %168 {handshake.bb = 4 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork1"} : <>
    %170 = source {handshake.bb = 4 : ui32, handshake.name = "source6"} : <>
    %171 = constant %170 {handshake.bb = 4 : ui32, handshake.name = "constant21", value = 10 : i5} : <>, <i5>
    %172 = extsi %171 {handshake.bb = 4 : ui32, handshake.name = "extsi30"} : <i5> to <i6>
    %173 = source {handshake.bb = 4 : ui32, handshake.name = "source7"} : <>
    %174 = constant %173 {handshake.bb = 4 : ui32, handshake.name = "constant22", value = 1 : i2} : <>, <i2>
    %175 = extsi %174 {handshake.bb = 4 : ui32, handshake.name = "extsi31"} : <i2> to <i6>
    %176 = buffer %falseResult_29 {handshake.bb = 4 : ui32, handshake.name = "buffer73", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <f32>
    %177 = buffer %176 {handshake.bb = 4 : ui32, handshake.name = "buffer74", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %addressResult_32, %dataResult_33 = store[%166] %177 {handshake.bb = 4 : ui32, handshake.deps = #handshake<deps[<"load5" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i4>, <f32>
    %178 = addi %164, %175 {handshake.bb = 4 : ui32, handshake.name = "addi4"} : <i6>
    %179:2 = fork [2] %178 {handshake.bb = 4 : ui32, handshake.name = "fork19"} : <i6>
    %181 = trunci %179#0 {handshake.bb = 4 : ui32, handshake.name = "trunci9"} : <i6> to <i5>
    %183 = cmpi ult, %179#1, %172 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i6>
    %184:2 = fork [2] %183 {handshake.bb = 4 : ui32, handshake.name = "fork20"} : <i1>
    %trueResult_34, %falseResult_35 = cond_br %184#0, %181 {handshake.bb = 4 : ui32, handshake.name = "cond_br12"} : <i1>, <i5>
    sink %falseResult_35 {handshake.name = "sink4"} : <i5>
    %186 = buffer %169#1 {handshake.bb = 4 : ui32, handshake.name = "buffer77", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %trueResult_36, %falseResult_37 = cond_br %184#1, %186 {handshake.bb = 4 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br13"} : <i1>, <>
    %188 = buffer %falseResult_37 {handshake.bb = 5 : ui32, handshake.name = "buffer82", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %189 = buffer %188 {handshake.bb = 5 : ui32, handshake.name = "buffer83", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %190:6 = fork [6] %189 {handshake.bb = 5 : ui32, handshake.name = "fork21"} : <>
    %192 = constant %190#5 {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "constant23", value = 9 : i5} : <>, <i5>
    %193 = trunci %192 {handshake.bb = 5 : ui32, handshake.name = "trunci10"} : <i5> to <i4>
    %addressResult_38, %dataResult_39 = load[%193] %2#1 {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load5"} : <i4>, <f32>
    %194 = fptosi %dataResult_39 {handshake.bb = 5 : ui32, handshake.name = "fptosi0"} : <f32> to <i32>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %194, %memEnd_1, %memEnd, %4#1, %2#2, %0#1 : <i32>, <>, <>, <>, <>, <>
  }
}


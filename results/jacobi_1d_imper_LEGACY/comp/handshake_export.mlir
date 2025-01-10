module {
  handshake.func @jacobi_1d_imper(%arg0: memref<50xi32>, %arg1: memref<50xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "B", "A_start", "B_start", "start"], resNames = ["out0", "A_end", "B_end", "end"]} {
    %0:3 = fork [3] %arg4 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %2:2 = lsq[%arg1 : memref<50xi32>] (%arg3, %39#0, %addressResult_6, %dataResult_7, %99#0, %addressResult_16, %145#1)  {groupSizes = [1 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %outputs:2, %memEnd = mem_controller[%arg0 : memref<50xi32>] %arg2 (%addressResult_30, %104, %4#3, %4#4, %4#5) %145#0 {connectedBlocks = [5 : i32, 3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller1"} :    (!handshake.channel<i6>, !handshake.channel<i32>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %4:6 = lsq[MC] (%39#2, %addressResult, %addressResult_2, %addressResult_4, %99#2, %addressResult_18, %dataResult_19, %outputs#1)  {groupSizes = [3 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "7": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq3"} : (!handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>)
    %6 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = false} : <>, <i1>
    %7 = extsi %6 {handshake.bb = 0 : ui32, handshake.name = "extsi13"} : <i1> to <i2>
    %9 = mux %index [%7, %trueResult_26] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i2>
    %result, %index = control_merge %0#2, %trueResult_28  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %10 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %11 = buffer %10 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %12:2 = fork [2] %11 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <>
    %14 = constant %12#0 {handshake.bb = 1 : ui32, handshake.name = "constant4", value = 1 : i2} : <>, <i2>
    %15 = extsi %14 {handshake.bb = 1 : ui32, handshake.name = "extsi12"} : <i2> to <i7>
    %16 = buffer %9 {handshake.bb = 1 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i2>
    %17 = buffer %16 {handshake.bb = 1 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %20 = mux %36#1 [%15, %trueResult] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i7>
    %21 = buffer %20 {handshake.bb = 2 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i7>
    %22 = buffer %21 {handshake.bb = 2 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %23:5 = fork [5] %22 {handshake.bb = 2 : ui32, handshake.name = "fork2"} : <i7>
    %25 = trunci %23#0 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i7> to <i6>
    %27 = trunci %23#1 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i7> to <i6>
    %29 = extsi %23#4 {handshake.bb = 2 : ui32, handshake.name = "extsi14"} : <i7> to <i8>
    %30 = buffer %23#2 {handshake.bb = 2 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %31 = trunci %30 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i7> to <i6>
    %33 = trunci %23#3 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i7> to <i6>
    %35 = mux %36#0 [%17, %trueResult_8] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i2>
    %result_0, %index_1 = control_merge %12#1, %trueResult_10  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %36:2 = fork [2] %index_1 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i1>
    %37 = buffer %result_0 {handshake.bb = 2 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %38 = buffer %37 {handshake.bb = 2 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %39:4 = lazy_fork [4] %38 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork0"} : <>
    %40 = buffer %39#3 {handshake.bb = 2 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %41 = fork [1] %40 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork4"} : <>
    %42 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %43 = constant %42 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = -1 : i32} : <>, <i32>
    %44 = trunci %43 {handshake.bb = 2 : ui32, handshake.name = "trunci4"} : <i32> to <i6>
    %45 = source {handshake.bb = 2 : ui32, handshake.name = "source1"} : <>
    %46 = constant %45 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = 49 : i7} : <>, <i7>
    %47 = extsi %46 {handshake.bb = 2 : ui32, handshake.name = "extsi15"} : <i7> to <i8>
    %49 = constant %41 {handshake.bb = 2 : ui32, handshake.name = "constant16", value = 1 : i2} : <>, <i2>
    %50:3 = fork [3] %49 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i2>
    %52 = extsi %50#0 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i2> to <i6>
    %54 = extsi %50#1 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i2> to <i8>
    %55 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %56 = constant %55 {handshake.bb = 2 : ui32, handshake.name = "constant17", value = 1 : i2} : <>, <i2>
    %57 = extsi %56 {handshake.bb = 2 : ui32, handshake.name = "extsi4"} : <i2> to <i32>
    %58 = addi %25, %44 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i6>
    %addressResult, %dataResult = load[%58] %4#0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i6>, <i32>
    %addressResult_2, %dataResult_3 = load[%33] %4#1 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load1"} : <i6>, <i32>
    %59 = addi %dataResult, %dataResult_3 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %60 = addi %27, %52 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i6>
    %addressResult_4, %dataResult_5 = load[%60] %4#2 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load2"} : <i6>, <i32>
    %61 = addi %59, %dataResult_5 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %62:2 = fork [2] %61 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i32>
    %64 = shli %62#1, %57 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %66 = addi %62#0, %64 {handshake.bb = 2 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_6, %dataResult_7 = store[%31] %66 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1], [0, 0]]>, <"load3" (1) [[1, 1]]>, <"load3" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i6>, <i32>
    %67 = addi %29, %54 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i8>
    %68:2 = fork [2] %67 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i8>
    %70 = trunci %68#0 {handshake.bb = 2 : ui32, handshake.name = "trunci5"} : <i8> to <i7>
    %72 = cmpi ult, %68#1, %47 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i8>
    %73:4 = fork [4] %72 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i1>
    %trueResult, %falseResult = cond_br %73#0, %70 {handshake.bb = 2 : ui32, handshake.name = "cond_br3"} : <i1>, <i7>
    sink %falseResult {handshake.name = "sink0"} : <i7>
    %75 = buffer %35 {handshake.bb = 2 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i2>
    %76 = buffer %75 {handshake.bb = 2 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %trueResult_8, %falseResult_9 = cond_br %73#1, %76 {handshake.bb = 2 : ui32, handshake.name = "cond_br4"} : <i1>, <i2>
    %78 = buffer %39#1 {handshake.bb = 2 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %trueResult_10, %falseResult_11 = cond_br %73#2, %78 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br5"} : <i1>, <>
    %trueResult_12, %falseResult_13 = cond_br %73#3, %50#2 {handshake.bb = 2 : ui32, handshake.name = "cond_br6"} : <i1>, <i2>
    sink %trueResult_12 {handshake.name = "sink1"} : <i2>
    %82 = extsi %falseResult_13 {handshake.bb = 2 : ui32, handshake.name = "extsi11"} : <i2> to <i7>
    %84 = mux %96#1 [%82, %trueResult_20] {handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i7>
    %85 = buffer %84 {handshake.bb = 3 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i7>
    %86 = buffer %85 {handshake.bb = 3 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %87:3 = fork [3] %86 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i7>
    %89 = extsi %87#2 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i7> to <i8>
    %90 = buffer %87#0 {handshake.bb = 3 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %91 = trunci %90 {handshake.bb = 3 : ui32, handshake.name = "trunci6"} : <i7> to <i6>
    %93 = trunci %87#1 {handshake.bb = 3 : ui32, handshake.name = "trunci7"} : <i7> to <i6>
    %95 = mux %96#0 [%falseResult_9, %trueResult_22] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i2>
    %result_14, %index_15 = control_merge %falseResult_11, %trueResult_24  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %96:2 = fork [2] %index_15 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i1>
    %97 = buffer %result_14 {handshake.bb = 3 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %98 = buffer %97 {handshake.bb = 3 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %99:4 = lazy_fork [4] %98 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork1"} : <>
    %100 = buffer %99#3 {handshake.bb = 3 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %101 = fork [1] %100 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork11"} : <>
    %103 = constant %101 {handshake.bb = 3 : ui32, handshake.name = "constant18", value = 1 : i2} : <>, <i2>
    %104 = extsi %103 {handshake.bb = 3 : ui32, handshake.name = "extsi5"} : <i2> to <i32>
    %105 = source {handshake.bb = 3 : ui32, handshake.name = "source3"} : <>
    %106 = constant %105 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 49 : i7} : <>, <i7>
    %107 = extsi %106 {handshake.bb = 3 : ui32, handshake.name = "extsi19"} : <i7> to <i8>
    %108 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %109 = constant %108 {handshake.bb = 3 : ui32, handshake.name = "constant20", value = 1 : i2} : <>, <i2>
    %110 = extsi %109 {handshake.bb = 3 : ui32, handshake.name = "extsi20"} : <i2> to <i8>
    %addressResult_16, %dataResult_17 = load[%93] %2#0 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load3"} : <i6>, <i32>
    %addressResult_18, %dataResult_19 = store[%91] %dataResult_17 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load0" (1) [[1, 1]]>, <"load1" (1) [[1, 1]]>, <"load2" (1) [[1, 1]]>, <"store1" (1) [[1, 1], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i6>, <i32>
    %111 = addi %89, %110 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i8>
    %112:2 = fork [2] %111 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i8>
    %114 = trunci %112#0 {handshake.bb = 3 : ui32, handshake.name = "trunci8"} : <i8> to <i7>
    %116 = cmpi ult, %112#1, %107 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i8>
    %117:3 = fork [3] %116 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i1>
    %trueResult_20, %falseResult_21 = cond_br %117#0, %114 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <i7>
    sink %falseResult_21 {handshake.name = "sink2"} : <i7>
    %119 = buffer %95 {handshake.bb = 3 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i2>
    %120 = buffer %119 {handshake.bb = 3 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %trueResult_22, %falseResult_23 = cond_br %117#1, %120 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <i2>
    %122 = buffer %99#1 {handshake.bb = 3 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %trueResult_24, %falseResult_25 = cond_br %117#2, %122 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br9"} : <i1>, <>
    %124 = buffer %falseResult_23 {handshake.bb = 4 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i2>
    %125 = buffer %124 {handshake.bb = 4 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %126 = extsi %125 {handshake.bb = 4 : ui32, handshake.name = "extsi21"} : <i2> to <i3>
    %127 = source {handshake.bb = 4 : ui32, handshake.name = "source5"} : <>
    %128 = constant %127 {handshake.bb = 4 : ui32, handshake.name = "constant21", value = 2 : i3} : <>, <i3>
    %129 = source {handshake.bb = 4 : ui32, handshake.name = "source6"} : <>
    %130 = constant %129 {handshake.bb = 4 : ui32, handshake.name = "constant22", value = 1 : i2} : <>, <i2>
    %131 = extsi %130 {handshake.bb = 4 : ui32, handshake.name = "extsi22"} : <i2> to <i3>
    %132 = addi %126, %131 {handshake.bb = 4 : ui32, handshake.name = "addi6"} : <i3>
    %133:2 = fork [2] %132 {handshake.bb = 4 : ui32, handshake.name = "fork14"} : <i3>
    %135 = trunci %133#0 {handshake.bb = 4 : ui32, handshake.name = "trunci9"} : <i3> to <i2>
    %137 = cmpi ult, %133#1, %128 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i3>
    %138:2 = fork [2] %137 {handshake.bb = 4 : ui32, handshake.name = "fork15"} : <i1>
    %trueResult_26, %falseResult_27 = cond_br %138#0, %135 {handshake.bb = 4 : ui32, handshake.name = "cond_br10"} : <i1>, <i2>
    sink %falseResult_27 {handshake.name = "sink4"} : <i2>
    %140 = buffer %falseResult_25 {handshake.bb = 4 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %141 = buffer %140 {handshake.bb = 4 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_28, %falseResult_29 = cond_br %138#1, %141 {handshake.bb = 4 : ui32, handshake.name = "cond_br11"} : <i1>, <>
    %143 = buffer %falseResult_29 {handshake.bb = 5 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %144 = buffer %143 {handshake.bb = 5 : ui32, handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %145:3 = fork [3] %144 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <>
    %147 = constant %145#2 {handshake.bb = 5 : ui32, handshake.name = "constant23", value = 49 : i7} : <>, <i7>
    %148 = trunci %147 {handshake.bb = 5 : ui32, handshake.name = "trunci10"} : <i7> to <i6>
    %addressResult_30, %dataResult_31 = load[%148] %outputs#0 {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i6>, <i32>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %dataResult_31, %memEnd, %2#1, %0#1 : <i32>, <>, <>, <>
  }
}


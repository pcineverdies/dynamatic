module {
  handshake.func @bicg(%arg0: memref<100xi32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["a", "s", "q", "p", "r", "a_start", "s_start", "q_start", "p_start", "r_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][1,2][3,1,4,cmpi1]", resNames = ["out0", "a_end", "s_end", "q_end", "p_end", "r_end", "end"]} {
    %0:10 = fork [10] %arg10 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %outputs, %memEnd = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_14) %0#4 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_18) %0#3 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller4"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %4:2 = lsq[%arg2 : memref<10xi32>] (%arg7, %25#1, %addressResult, %129#1, %addressResult_28, %dataResult_29, %0#2)  {groupSizes = [1 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %6:2 = lsq[%arg1 : memref<10xi32>] (%arg6, %54#1, %addressResult_12, %addressResult_16, %dataResult_17, %0#1)  {groupSizes = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<i4>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %outputs_2, %memEnd_3 = mem_controller[%arg0 : memref<100xi32>] %arg5 (%addressResult_10) %0#0 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i7>) -> !handshake.channel<i32>
    %8 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %9 = constant %8 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %10 = extsi %9 {handshake.bb = 0 : ui32, handshake.name = "extsi7"} : <i1> to <i5>
    %13 = mux %22#1 [%0#9, %trueResult_22] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <>
    %15 = constant %0#8 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant11", value = false} : <>, <i1>
    %18 = mux %22#2 [%0#7, %trueResult_20] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <>
    %20 = merge %15, %146#4 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge2"} : <i1>
    %21 = buffer %20 {handshake.bb = 1 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %22:3 = fork [3] %21 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork1"} : <i1>
    %23 = buffer %13 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %24 = buffer %23 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %25:2 = lazy_fork [2] %24 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork0"} : <>
    %27 = mux %22#0 [%10, %trueResult_26] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i5>
    %28 = buffer %27 {handshake.bb = 1 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %29 = buffer %28 {handshake.bb = 1 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %30:4 = fork [4] %29 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i5>
    %32 = extsi %30#2 {handshake.bb = 1 : ui32, handshake.name = "extsi8"} : <i5> to <i6>
    %34 = trunci %30#0 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i5> to <i4>
    %36 = trunci %30#1 {handshake.bb = 1 : ui32, handshake.name = "trunci1"} : <i5> to <i4>
    %37 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %38 = constant %37 {handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %39 = extsi %38 {handshake.bb = 1 : ui32, handshake.name = "extsi9"} : <i1> to <i5>
    %addressResult, %dataResult = load[%36] %4#0 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i4>, <i32>
    %40 = buffer %54#0 {handshake.bb = 2 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult, %falseResult = cond_br %123#4, %40 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br5"} : <i1>, <>
    %43 = constant %0#6 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant12", value = false} : <>, <i1>
    %44 = buffer %18 {handshake.bb = 2 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %45 = buffer %44 {handshake.bb = 2 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %47 = mux %51#3 [%45, %trueResult] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux7"} : <i1>, <>
    %49 = merge %43, %123#3 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge5"} : <i1>
    %50 = buffer %49 {handshake.bb = 2 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %51:4 = fork [4] %50 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork3"} : <i1>
    %52 = buffer %47 {handshake.bb = 2 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %53 = buffer %52 {handshake.bb = 2 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %54:2 = lazy_fork [2] %53 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork1"} : <>
    %55 = buffer %123#2 {handshake.bb = 2 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_4, %falseResult_5 = cond_br %55, %116 {handshake.bb = 2 : ui32, handshake.name = "cond_br14"} : <i1>, <i32>
    %56:2 = fork [2] %falseResult_5 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i32>
    %trueResult_6, %falseResult_7 = cond_br %123#0, %120 {handshake.bb = 2 : ui32, handshake.name = "cond_br15"} : <i1>, <i5>
    sink %falseResult_7 {handshake.name = "sink0"} : <i5>
    %trueResult_8, %falseResult_9 = cond_br %123#1, %65#3 {handshake.bb = 2 : ui32, handshake.name = "cond_br16"} : <i1>, <i5>
    sink %falseResult_9 {handshake.name = "sink1"} : <i5>
    %62 = mux %51#0 [%30#3, %trueResult_8] {handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <i5>
    %63 = buffer %62 {handshake.bb = 2 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %64 = buffer %63 {handshake.bb = 2 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %65:4 = fork [4] %64 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i5>
    %67 = trunci %65#0 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i5> to <i4>
    %68 = extsi %67 {handshake.bb = 2 : ui32, handshake.name = "extsi10"} : <i4> to <i7>
    %70 = extsi %65#2 {handshake.bb = 2 : ui32, handshake.name = "extsi11"} : <i5> to <i6>
    %72 = trunci %65#1 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i5> to <i4>
    %73 = buffer %51#2 {handshake.bb = 2 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %74 = mux %73 [%dataResult, %trueResult_4] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %76 = mux %51#1 [%39, %trueResult_6] {handshake.bb = 2 : ui32, handshake.name = "mux6"} : <i1>, <i5>
    %77 = buffer %76 {handshake.bb = 2 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %78 = buffer %77 {handshake.bb = 2 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %79:5 = fork [5] %78 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i5>
    %81 = extsi %79#0 {handshake.bb = 2 : ui32, handshake.name = "extsi12"} : <i5> to <i7>
    %83 = extsi %79#4 {handshake.bb = 2 : ui32, handshake.name = "extsi13"} : <i5> to <i6>
    %85 = trunci %79#1 {handshake.bb = 2 : ui32, handshake.name = "trunci4"} : <i5> to <i4>
    %86 = buffer %79#2 {handshake.bb = 2 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %87 = trunci %86 {handshake.bb = 2 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %89 = trunci %79#3 {handshake.bb = 2 : ui32, handshake.name = "trunci6"} : <i5> to <i4>
    %90 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %91 = constant %90 {handshake.bb = 2 : ui32, handshake.name = "constant2", value = 10 : i5} : <>, <i5>
    %92 = extsi %91 {handshake.bb = 2 : ui32, handshake.name = "extsi14"} : <i5> to <i6>
    %93 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %94 = constant %93 {handshake.bb = 2 : ui32, handshake.name = "constant10", value = 1 : i2} : <>, <i2>
    %95:2 = fork [2] %94 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i2>
    %97 = extui %95#0 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i2> to <i6>
    %99 = extsi %95#1 {handshake.bb = 2 : ui32, handshake.name = "extsi15"} : <i2> to <i6>
    %100 = source {handshake.bb = 2 : ui32, handshake.name = "source4"} : <>
    %101 = constant %100 {handshake.bb = 2 : ui32, handshake.name = "constant13", value = 3 : i3} : <>, <i3>
    %102 = extui %101 {handshake.bb = 2 : ui32, handshake.name = "extui1"} : <i3> to <i7>
    %103 = shli %70, %97 {handshake.bb = 2 : ui32, handshake.name = "shli3"} : <i6>
    %104 = extsi %103 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i6> to <i7>
    %105 = shli %68, %102 {handshake.bb = 2 : ui32, handshake.name = "shli2"} : <i7>
    %106 = addi %104, %105 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i7>
    %107 = addi %81, %106 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i7>
    %addressResult_10, %dataResult_11 = load[%107] %outputs_2 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i7>, <i32>
    %108:2 = fork [2] %dataResult_11 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i32>
    %addressResult_12, %dataResult_13 = load[%89] %6#0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load2"} : <i4>, <i32>
    %addressResult_14, %dataResult_15 = load[%72] %outputs {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load3"} : <i4>, <i32>
    %109 = buffer %108#0 {handshake.bb = 2 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %110 = muli %dataResult_15, %109 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %111 = addi %dataResult_13, %110 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %addressResult_16, %dataResult_17 = store[%87] %111 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i4>, <i32>
    %addressResult_18, %dataResult_19 = load[%85] %outputs_0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i4>, <i32>
    %113 = muli %108#1, %dataResult_19 {handshake.bb = 2 : ui32, handshake.name = "muli1"} : <i32>
    %114 = buffer %74 {handshake.bb = 2 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %115 = buffer %114 {handshake.bb = 2 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %116 = addi %115, %113 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %117 = addi %83, %99 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i6>
    %118:2 = fork [2] %117 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i6>
    %120 = trunci %118#0 {handshake.bb = 2 : ui32, handshake.name = "trunci7"} : <i6> to <i5>
    %122 = cmpi ult, %118#1, %92 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i6>
    %123:5 = fork [5] %122 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i1>
    %trueResult_20, %falseResult_21 = cond_br %146#3, %falseResult {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <>
    sink %falseResult_21 {handshake.name = "sink2"} : <>
    %125 = buffer %129#0 {handshake.bb = 3 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %trueResult_22, %falseResult_23 = cond_br %146#2, %125 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br7"} : <i1>, <>
    sink %falseResult_23 {handshake.name = "sink3"} : <>
    %127 = buffer %25#0 {handshake.bb = 3 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %128 = buffer %127 {handshake.bb = 3 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %129:2 = lazy_fork [2] %128 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork2"} : <>
    %trueResult_24, %falseResult_25 = cond_br %146#1, %56#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br17"} : <i1>, <i32>
    sink %trueResult_24 {handshake.name = "sink4"} : <i32>
    %trueResult_26, %falseResult_27 = cond_br %146#0, %143 {handshake.bb = 3 : ui32, handshake.name = "cond_br18"} : <i1>, <i5>
    sink %falseResult_27 {handshake.name = "sink5"} : <i5>
    %133 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %134 = constant %133 {handshake.bb = 3 : ui32, handshake.name = "constant14", value = 10 : i5} : <>, <i5>
    %135 = extsi %134 {handshake.bb = 3 : ui32, handshake.name = "extsi17"} : <i5> to <i6>
    %136 = source {handshake.bb = 3 : ui32, handshake.name = "source6"} : <>
    %137 = constant %136 {handshake.bb = 3 : ui32, handshake.name = "constant15", value = 1 : i2} : <>, <i2>
    %138 = extsi %137 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i2> to <i6>
    %addressResult_28, %dataResult_29 = store[%34] %56#0 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i4>, <i32>
    %140 = addi %32, %138 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i6>
    %141:2 = fork [2] %140 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i6>
    %143 = trunci %141#0 {handshake.bb = 3 : ui32, handshake.name = "trunci8"} : <i6> to <i5>
    %145 = cmpi ult, %141#1, %135 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i6>
    %146:5 = fork [5] %145 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i1>
    %147 = buffer %0#5 {handshake.bb = 4 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %falseResult_25, %memEnd_3, %6#1, %4#1, %memEnd_1, %memEnd, %147 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


module {
  handshake.func @jacobi_1d_imper(%arg0: memref<50xi32>, %arg1: memref<50xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "B", "A_start", "B_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][4,1,5,cmpi2][1,2][3,3,4,cmpi1]", resNames = ["out0", "A_end", "B_end", "end"]} {
    %0:9 = fork [9] %arg4 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %2:2 = lsq[%arg1 : memref<50xi32>] (%arg3, %49#1, %addressResult_12, %dataResult_13, %128#1, %addressResult_22, %0#1)  {groupSizes = [1 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %outputs:2, %memEnd = mem_controller[%arg0 : memref<50xi32>] %arg2 (%addressResult_30, %132, %4#3, %4#4, %4#5) %0#0 {connectedBlocks = [5 : i32, 3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller1"} :    (!handshake.channel<i6>, !handshake.channel<i32>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %4:6 = lsq[MC] (%46#1, %addressResult, %addressResult_8, %addressResult_10, %124#1, %addressResult_24, %dataResult_25, %outputs#1)  {groupSizes = [3 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "7": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq3"} : (!handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>)
    %5 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %6 = constant %5 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %7 = extsi %6 {handshake.bb = 0 : ui32, handshake.name = "extsi12"} : <i1> to <i2>
    %10 = mux %16#1 [%0#8, %trueResult_26] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <>
    %12 = constant %0#7 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant19", value = false} : <>, <i1>
    %14 = merge %12, %170#2 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge3"} : <i1>
    %15 = buffer %14 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %16:2 = fork [2] %15 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork1"} : <i1>
    %18 = mux %16#0 [%7, %trueResult_28] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i2>
    %19 = buffer %18 {handshake.bb = 1 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i2>
    %20 = buffer %19 {handshake.bb = 1 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %21 = extsi %20 {handshake.bb = 1 : ui32, handshake.name = "extsi13"} : <i2> to <i3>
    %22 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %23 = constant %22 {handshake.bb = 1 : ui32, handshake.name = "constant1", value = 1 : i2} : <>, <i2>
    %24 = extsi %23 {handshake.bb = 1 : ui32, handshake.name = "extsi14"} : <i2> to <i7>
    %25 = buffer %46#0 {handshake.bb = 2 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %trueResult, %falseResult = cond_br %99#5, %25 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br25"} : <i1>, <>
    sink %trueResult {handshake.name = "sink0"} : <>
    %27 = buffer %49#0 {handshake.bb = 2 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %trueResult_0, %falseResult_1 = cond_br %99#4, %27 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br26"} : <i1>, <>
    sink %trueResult_0 {handshake.name = "sink1"} : <>
    %trueResult_2, %falseResult_3 = cond_br %99#3, %43#2 {handshake.bb = 2 : ui32, handshake.name = "cond_br27"} : <i1>, <>
    sink %falseResult_3 {handshake.name = "sink2"} : <>
    %32 = constant %0#6 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant20", value = false} : <>, <i1>
    %34 = merge %32, %99#2 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge7"} : <i1>
    %35 = buffer %34 {handshake.bb = 2 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %36:2 = fork [2] %35 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <i1>
    %37 = buffer %10 {handshake.bb = 2 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %38 = buffer %37 {handshake.bb = 2 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %40 = mux %36#1 [%38, %trueResult_2] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux7"} : <i1>, <>
    %41 = buffer %40 {handshake.bb = 2 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %42 = buffer %41 {handshake.bb = 2 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %43:3 = fork [3] %42 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <>
    %44 = buffer %43#1 {handshake.bb = 2 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %46:2 = lazy_fork [2] %44 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork0"} : <>
    %47 = buffer %43#0 {handshake.bb = 2 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %49:2 = lazy_fork [2] %47 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork1"} : <>
    %trueResult_4, %falseResult_5 = cond_br %99#1, %77#1 {handshake.bb = 2 : ui32, handshake.name = "cond_br10"} : <i1>, <i2>
    sink %trueResult_4 {handshake.name = "sink3"} : <i2>
    %52 = extsi %falseResult_5 {handshake.bb = 2 : ui32, handshake.name = "extsi11"} : <i2> to <i7>
    %trueResult_6, %falseResult_7 = cond_br %99#0, %96 {handshake.bb = 2 : ui32, handshake.name = "cond_br11"} : <i1>, <i7>
    sink %falseResult_7 {handshake.name = "sink4"} : <i7>
    %55 = mux %36#0 [%24, %trueResult_6] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i7>
    %56 = buffer %55 {handshake.bb = 2 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i7>
    %57 = buffer %56 {handshake.bb = 2 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %58:5 = fork [5] %57 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i7>
    %60 = trunci %58#0 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i7> to <i6>
    %62 = trunci %58#1 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i7> to <i6>
    %64 = extsi %58#4 {handshake.bb = 2 : ui32, handshake.name = "extsi15"} : <i7> to <i8>
    %65 = buffer %58#2 {handshake.bb = 2 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %66 = trunci %65 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i7> to <i6>
    %68 = trunci %58#3 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i7> to <i6>
    %69 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %70 = constant %69 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = -1 : i32} : <>, <i32>
    %71 = trunci %70 {handshake.bb = 2 : ui32, handshake.name = "trunci4"} : <i32> to <i6>
    %72 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %73 = constant %72 {handshake.bb = 2 : ui32, handshake.name = "constant2", value = 49 : i7} : <>, <i7>
    %74 = extsi %73 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i7> to <i8>
    %75 = source {handshake.bb = 2 : ui32, handshake.name = "source4"} : <>
    %76 = constant %75 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = 1 : i2} : <>, <i2>
    %77:4 = fork [4] %76 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i2>
    %79 = extsi %77#0 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i2> to <i6>
    %81 = extsi %77#2 {handshake.bb = 2 : ui32, handshake.name = "extsi18"} : <i2> to <i8>
    %82 = buffer %77#3 {handshake.bb = 2 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %83 = extsi %82 {handshake.bb = 2 : ui32, handshake.name = "extsi3"} : <i2> to <i32>
    %84 = addi %60, %71 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i6>
    %addressResult, %dataResult = load[%84] %4#0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i6>, <i32>
    %addressResult_8, %dataResult_9 = load[%68] %4#1 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load1"} : <i6>, <i32>
    %85 = addi %dataResult, %dataResult_9 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %86 = addi %62, %79 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i6>
    %addressResult_10, %dataResult_11 = load[%86] %4#2 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load2"} : <i6>, <i32>
    %87 = addi %85, %dataResult_11 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %88:2 = fork [2] %87 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i32>
    %90 = shli %88#1, %83 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %92 = addi %88#0, %90 {handshake.bb = 2 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_12, %dataResult_13 = store[%66] %92 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1], [0, 0]]>, <"load3" (1) [[1, 1]]>, <"load3" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i6>, <i32>
    %93 = addi %64, %81 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i8>
    %94:2 = fork [2] %93 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i8>
    %96 = trunci %94#0 {handshake.bb = 2 : ui32, handshake.name = "trunci5"} : <i8> to <i7>
    %98 = cmpi ult, %94#1, %74 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i8>
    %99:6 = fork [6] %98 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i1>
    %trueResult_14, %falseResult_15 = cond_br %156#4, %121#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br28"} : <i1>, <>
    sink %falseResult_15 {handshake.name = "sink5"} : <>
    %trueResult_16, %falseResult_17 = cond_br %156#3, %116#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br29"} : <i1>, <>
    sink %falseResult_17 {handshake.name = "sink6"} : <>
    %104 = buffer %128#0 {handshake.bb = 3 : ui32, handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %trueResult_18, %falseResult_19 = cond_br %156#2, %104 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br30"} : <i1>, <>
    sink %trueResult_18 {handshake.name = "sink7"} : <>
    %107 = constant %0#5 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant24", value = false} : <>, <i1>
    %109 = merge %107, %156#1 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge11"} : <i1>
    %110 = buffer %109 {handshake.bb = 3 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %111:3 = fork [3] %110 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork9"} : <i1>
    %113 = mux %111#2 [%falseResult_1, %trueResult_16] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux11"} : <i1>, <>
    %114 = buffer %113 {handshake.bb = 3 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %115 = buffer %114 {handshake.bb = 3 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %116:2 = fork [2] %115 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <>
    %118 = mux %111#1 [%falseResult, %trueResult_14] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux12"} : <i1>, <>
    %119 = buffer %118 {handshake.bb = 3 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %120 = buffer %119 {handshake.bb = 3 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %121:2 = fork [2] %120 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <>
    %122 = buffer %121#0 {handshake.bb = 3 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %124:2 = lazy_fork [2] %122 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork2"} : <>
    %125 = buffer %124#0 {handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    sink %125 {handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "sink8"} : <>
    %126 = buffer %116#0 {handshake.bb = 3 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %128:2 = lazy_fork [2] %126 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork3"} : <>
    %trueResult_20, %falseResult_21 = cond_br %156#0, %153 {handshake.bb = 3 : ui32, handshake.name = "cond_br12"} : <i1>, <i7>
    sink %falseResult_21 {handshake.name = "sink9"} : <i7>
    %131 = constant %0#3 {handshake.bb = 3 : ui32, handshake.name = "constant16", value = 1 : i2} : <>, <i2>
    %132 = extsi %131 {handshake.bb = 3 : ui32, handshake.name = "extsi5"} : <i2> to <i32>
    %134 = mux %111#0 [%52, %trueResult_20] {handshake.bb = 3 : ui32, handshake.name = "mux2"} : <i1>, <i7>
    %135 = buffer %134 {handshake.bb = 3 : ui32, handshake.name = "buffer65", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i7>
    %136 = buffer %135 {handshake.bb = 3 : ui32, handshake.name = "buffer66", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %137:3 = fork [3] %136 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i7>
    %139 = extsi %137#2 {handshake.bb = 3 : ui32, handshake.name = "extsi19"} : <i7> to <i8>
    %141 = trunci %137#0 {handshake.bb = 3 : ui32, handshake.name = "trunci6"} : <i7> to <i6>
    %143 = trunci %137#1 {handshake.bb = 3 : ui32, handshake.name = "trunci7"} : <i7> to <i6>
    %144 = source {handshake.bb = 3 : ui32, handshake.name = "source6"} : <>
    %145 = constant %144 {handshake.bb = 3 : ui32, handshake.name = "constant17", value = 49 : i7} : <>, <i7>
    %146 = extsi %145 {handshake.bb = 3 : ui32, handshake.name = "extsi20"} : <i7> to <i8>
    %147 = source {handshake.bb = 3 : ui32, handshake.name = "source7"} : <>
    %148 = constant %147 {handshake.bb = 3 : ui32, handshake.name = "constant18", value = 1 : i2} : <>, <i2>
    %149 = extsi %148 {handshake.bb = 3 : ui32, handshake.name = "extsi21"} : <i2> to <i8>
    %addressResult_22, %dataResult_23 = load[%143] %2#0 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load3"} : <i6>, <i32>
    %addressResult_24, %dataResult_25 = store[%141] %dataResult_23 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load0" (1) [[1, 1]]>, <"load1" (1) [[1, 1]]>, <"load2" (1) [[1, 1]]>, <"store1" (1) [[1, 1], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i6>, <i32>
    %150 = addi %139, %149 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i8>
    %151:2 = fork [2] %150 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i8>
    %153 = trunci %151#0 {handshake.bb = 3 : ui32, handshake.name = "trunci8"} : <i8> to <i7>
    %155 = cmpi ult, %151#1, %146 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i8>
    %156:5 = fork [5] %155 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i1>
    %trueResult_26, %falseResult_27 = cond_br %170#1, %falseResult_19 {handshake.bb = 4 : ui32, handshake.name = "cond_br31"} : <i1>, <>
    sink %falseResult_27 {handshake.name = "sink10"} : <>
    %trueResult_28, %falseResult_29 = cond_br %170#0, %167 {handshake.bb = 4 : ui32, handshake.name = "cond_br13"} : <i1>, <i2>
    sink %falseResult_29 {handshake.name = "sink11"} : <i2>
    %159 = source {handshake.bb = 4 : ui32, handshake.name = "source8"} : <>
    %160 = constant %159 {handshake.bb = 4 : ui32, handshake.name = "constant21", value = 2 : i3} : <>, <i3>
    %161 = source {handshake.bb = 4 : ui32, handshake.name = "source9"} : <>
    %162 = constant %161 {handshake.bb = 4 : ui32, handshake.name = "constant22", value = 1 : i2} : <>, <i2>
    %163 = extsi %162 {handshake.bb = 4 : ui32, handshake.name = "extsi22"} : <i2> to <i3>
    %164 = addi %21, %163 {handshake.bb = 4 : ui32, handshake.name = "addi6"} : <i3>
    %165:2 = fork [2] %164 {handshake.bb = 4 : ui32, handshake.name = "fork15"} : <i3>
    %167 = trunci %165#0 {handshake.bb = 4 : ui32, handshake.name = "trunci9"} : <i3> to <i2>
    %169 = cmpi ult, %165#1, %160 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i3>
    %170:3 = fork [3] %169 {handshake.bb = 4 : ui32, handshake.name = "fork16"} : <i1>
    %172 = constant %0#2 {handshake.bb = 5 : ui32, handshake.name = "constant23", value = 49 : i7} : <>, <i7>
    %173 = trunci %172 {handshake.bb = 5 : ui32, handshake.name = "trunci10"} : <i7> to <i6>
    %addressResult_30, %dataResult_31 = load[%173] %outputs#0 {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i6>, <i32>
    %174 = buffer %0#4 {handshake.bb = 5 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %dataResult_31, %memEnd, %2#1, %174 : <i32>, <>, <>, <>
  }
}


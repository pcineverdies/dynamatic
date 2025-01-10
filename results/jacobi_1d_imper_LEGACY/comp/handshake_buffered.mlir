module {
  handshake.func @jacobi_1d_imper(%arg0: memref<50xi32>, %arg1: memref<50xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "B", "A_start", "B_start", "start"], resNames = ["out0", "A_end", "B_end", "end"]} {
    %0:3 = fork [3] %arg4 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1 = buffer %151#1 {handshake.name = "buffer66", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %2:2 = lsq[%arg1 : memref<50xi32>] (%arg3, %44#0, %addressResult_6, %dataResult_7, %104#0, %addressResult_16, %1)  {groupSizes = [1 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %3 = buffer %151#0 {handshake.name = "buffer65", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs:2, %memEnd = mem_controller[%arg0 : memref<50xi32>] %arg2 (%addressResult_34, %109, %4#3, %4#4, %4#5) %3 {connectedBlocks = [5 : i32, 3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller1"} :    (!handshake.channel<i6>, !handshake.channel<i32>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %4:6 = lsq[MC] (%44#2, %addressResult, %addressResult_2, %addressResult_4, %104#2, %addressResult_18, %dataResult_19, %outputs#1)  {groupSizes = [3 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "7": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq3"} : (!handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>)
    %5 = buffer %0#0 {handshake.bb = 0 : ui32, handshake.name = "buffer0", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %6 = constant %5 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = false} : <>, <i1>
    %7 = br %6 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <i1>
    %8 = extsi %7 {handshake.bb = 0 : ui32, handshake.name = "extsi13"} : <i1> to <i2>
    %9 = buffer %0#2 {handshake.bb = 0 : ui32, handshake.name = "buffer2", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %10 = br %9 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %11 = mux %index [%8, %trueResult_28] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i2>
    %result, %index = control_merge %10, %trueResult_30  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %12 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %13 = buffer %12 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %14:2 = fork [2] %13 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <>
    %15 = buffer %14#0 {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %16 = constant %15 {handshake.bb = 1 : ui32, handshake.name = "constant4", value = 1 : i2} : <>, <i2>
    %17 = br %16 {handshake.bb = 1 : ui32, handshake.name = "br4"} : <i2>
    %18 = extsi %17 {handshake.bb = 1 : ui32, handshake.name = "extsi12"} : <i2> to <i7>
    %19 = buffer %11 {handshake.bb = 1 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i2>
    %20 = buffer %19 {handshake.bb = 1 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %21 = br %20 {handshake.bb = 1 : ui32, handshake.name = "br5"} : <i2>
    %22 = buffer %14#1 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %23 = br %22 {handshake.bb = 1 : ui32, handshake.name = "br6"} : <>
    %24 = buffer %41#1 {handshake.bb = 2 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %25 = mux %24 [%18, %trueResult] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i7>
    %26 = buffer %25 {handshake.bb = 2 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i7>
    %27 = buffer %26 {handshake.bb = 2 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %28:5 = fork [5] %27 {handshake.bb = 2 : ui32, handshake.name = "fork2"} : <i7>
    %29 = buffer %28#0 {handshake.bb = 2 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %30 = trunci %29 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i7> to <i6>
    %31 = buffer %28#1 {handshake.bb = 2 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %32 = trunci %31 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i7> to <i6>
    %33 = buffer %28#4 {handshake.bb = 2 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %34 = extsi %33 {handshake.bb = 2 : ui32, handshake.name = "extsi14"} : <i7> to <i8>
    %35 = buffer %28#2 {handshake.bb = 2 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %36 = trunci %35 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i7> to <i6>
    %37 = buffer %28#3 {handshake.bb = 2 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %38 = trunci %37 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i7> to <i6>
    %39 = buffer %41#0 {handshake.bb = 2 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %40 = mux %39 [%21, %trueResult_8] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i2>
    %result_0, %index_1 = control_merge %23, %trueResult_10  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %41:2 = fork [2] %index_1 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i1>
    %42 = buffer %result_0 {handshake.bb = 2 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %43 = buffer %42 {handshake.bb = 2 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %44:4 = lazy_fork [4] %43 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork0"} : <>
    %45 = buffer %44#3 {handshake.bb = 2 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %46 = fork [1] %45 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork4"} : <>
    %47 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %48 = constant %47 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = -1 : i32} : <>, <i32>
    %49 = trunci %48 {handshake.bb = 2 : ui32, handshake.name = "trunci4"} : <i32> to <i6>
    %50 = source {handshake.bb = 2 : ui32, handshake.name = "source1"} : <>
    %51 = constant %50 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = 49 : i7} : <>, <i7>
    %52 = extsi %51 {handshake.bb = 2 : ui32, handshake.name = "extsi15"} : <i7> to <i8>
    %53 = buffer %46 {handshake.bb = 2 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %54 = constant %53 {handshake.bb = 2 : ui32, handshake.name = "constant16", value = 1 : i2} : <>, <i2>
    %55:3 = fork [3] %54 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i2>
    %56 = buffer %55#0 {handshake.bb = 2 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %57 = extsi %56 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i2> to <i6>
    %58 = buffer %55#1 {handshake.bb = 2 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %59 = extsi %58 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i2> to <i8>
    %60 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %61 = constant %60 {handshake.bb = 2 : ui32, handshake.name = "constant17", value = 1 : i2} : <>, <i2>
    %62 = extsi %61 {handshake.bb = 2 : ui32, handshake.name = "extsi4"} : <i2> to <i32>
    %63 = addi %30, %49 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i6>
    %addressResult, %dataResult = load[%63] %4#0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i6>, <i32>
    %addressResult_2, %dataResult_3 = load[%38] %4#1 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load1"} : <i6>, <i32>
    %64 = addi %dataResult, %dataResult_3 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %65 = addi %32, %57 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i6>
    %addressResult_4, %dataResult_5 = load[%65] %4#2 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load2"} : <i6>, <i32>
    %66 = addi %64, %dataResult_5 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %67:2 = fork [2] %66 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i32>
    %68 = buffer %67#1 {handshake.bb = 2 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %69 = shli %68, %62 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %70 = buffer %67#0 {handshake.bb = 2 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %71 = addi %70, %69 {handshake.bb = 2 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_6, %dataResult_7 = store[%36] %71 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1], [0, 0]]>, <"load3" (1) [[1, 1]]>, <"load3" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i6>, <i32>
    %72 = addi %34, %59 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i8>
    %73:2 = fork [2] %72 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i8>
    %74 = buffer %73#0 {handshake.bb = 2 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %75 = trunci %74 {handshake.bb = 2 : ui32, handshake.name = "trunci5"} : <i8> to <i7>
    %76 = buffer %73#1 {handshake.bb = 2 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %77 = cmpi ult, %76, %52 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i8>
    %78:4 = fork [4] %77 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i1>
    %79 = buffer %78#0 {handshake.bb = 2 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult, %falseResult = cond_br %79, %75 {handshake.bb = 2 : ui32, handshake.name = "cond_br3"} : <i1>, <i7>
    sink %falseResult {handshake.name = "sink0"} : <i7>
    %80 = buffer %40 {handshake.bb = 2 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i2>
    %81 = buffer %80 {handshake.bb = 2 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %82 = buffer %78#1 {handshake.bb = 2 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_8, %falseResult_9 = cond_br %82, %81 {handshake.bb = 2 : ui32, handshake.name = "cond_br4"} : <i1>, <i2>
    %83 = buffer %44#1 {handshake.bb = 2 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %84 = buffer %78#2 {handshake.bb = 2 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_10, %falseResult_11 = cond_br %84, %83 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br5"} : <i1>, <>
    %85 = buffer %55#2 {handshake.bb = 2 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %86 = buffer %78#3 {handshake.bb = 2 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_12, %falseResult_13 = cond_br %86, %85 {handshake.bb = 2 : ui32, handshake.name = "cond_br6"} : <i1>, <i2>
    sink %trueResult_12 {handshake.name = "sink1"} : <i2>
    %87 = extsi %falseResult_13 {handshake.bb = 2 : ui32, handshake.name = "extsi11"} : <i2> to <i7>
    %88 = buffer %101#1 {handshake.bb = 3 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %89 = mux %88 [%87, %trueResult_20] {handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i7>
    %90 = buffer %89 {handshake.bb = 3 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i7>
    %91 = buffer %90 {handshake.bb = 3 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %92:3 = fork [3] %91 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i7>
    %93 = buffer %92#2 {handshake.bb = 3 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %94 = extsi %93 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i7> to <i8>
    %95 = buffer %92#0 {handshake.bb = 3 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %96 = trunci %95 {handshake.bb = 3 : ui32, handshake.name = "trunci6"} : <i7> to <i6>
    %97 = buffer %92#1 {handshake.bb = 3 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %98 = trunci %97 {handshake.bb = 3 : ui32, handshake.name = "trunci7"} : <i7> to <i6>
    %99 = buffer %101#0 {handshake.bb = 3 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %100 = mux %99 [%falseResult_9, %trueResult_22] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i2>
    %result_14, %index_15 = control_merge %falseResult_11, %trueResult_24  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %101:2 = fork [2] %index_15 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i1>
    %102 = buffer %result_14 {handshake.bb = 3 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %103 = buffer %102 {handshake.bb = 3 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %104:4 = lazy_fork [4] %103 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork1"} : <>
    %105 = buffer %104#3 {handshake.bb = 3 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %106 = fork [1] %105 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork11"} : <>
    %107 = buffer %106 {handshake.bb = 3 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %108 = constant %107 {handshake.bb = 3 : ui32, handshake.name = "constant18", value = 1 : i2} : <>, <i2>
    %109 = extsi %108 {handshake.bb = 3 : ui32, handshake.name = "extsi5"} : <i2> to <i32>
    %110 = source {handshake.bb = 3 : ui32, handshake.name = "source3"} : <>
    %111 = constant %110 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 49 : i7} : <>, <i7>
    %112 = extsi %111 {handshake.bb = 3 : ui32, handshake.name = "extsi19"} : <i7> to <i8>
    %113 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %114 = constant %113 {handshake.bb = 3 : ui32, handshake.name = "constant20", value = 1 : i2} : <>, <i2>
    %115 = extsi %114 {handshake.bb = 3 : ui32, handshake.name = "extsi20"} : <i2> to <i8>
    %addressResult_16, %dataResult_17 = load[%98] %2#0 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load3"} : <i6>, <i32>
    %addressResult_18, %dataResult_19 = store[%96] %dataResult_17 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load0" (1) [[1, 1]]>, <"load1" (1) [[1, 1]]>, <"load2" (1) [[1, 1]]>, <"store1" (1) [[1, 1], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i6>, <i32>
    %116 = addi %94, %115 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i8>
    %117:2 = fork [2] %116 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i8>
    %118 = buffer %117#0 {handshake.bb = 3 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %119 = trunci %118 {handshake.bb = 3 : ui32, handshake.name = "trunci8"} : <i8> to <i7>
    %120 = buffer %117#1 {handshake.bb = 3 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i8>
    %121 = cmpi ult, %120, %112 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i8>
    %122:3 = fork [3] %121 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i1>
    %123 = buffer %122#0 {handshake.bb = 3 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_20, %falseResult_21 = cond_br %123, %119 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <i7>
    sink %falseResult_21 {handshake.name = "sink2"} : <i7>
    %124 = buffer %100 {handshake.bb = 3 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i2>
    %125 = buffer %124 {handshake.bb = 3 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %126 = buffer %122#1 {handshake.bb = 3 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_22, %falseResult_23 = cond_br %126, %125 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <i2>
    %127 = buffer %104#1 {handshake.bb = 3 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %128 = buffer %122#2 {handshake.bb = 3 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_24, %falseResult_25 = cond_br %128, %127 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br9"} : <i1>, <>
    %129 = merge %falseResult_23 {handshake.bb = 4 : ui32, handshake.name = "merge0"} : <i2>
    %130 = buffer %129 {handshake.bb = 4 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i2>
    %131 = buffer %130 {handshake.bb = 4 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %132 = extsi %131 {handshake.bb = 4 : ui32, handshake.name = "extsi21"} : <i2> to <i3>
    %result_26, %index_27 = control_merge %falseResult_25  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_27 {handshake.name = "sink3"} : <i1>
    %133 = source {handshake.bb = 4 : ui32, handshake.name = "source5"} : <>
    %134 = constant %133 {handshake.bb = 4 : ui32, handshake.name = "constant21", value = 2 : i3} : <>, <i3>
    %135 = source {handshake.bb = 4 : ui32, handshake.name = "source6"} : <>
    %136 = constant %135 {handshake.bb = 4 : ui32, handshake.name = "constant22", value = 1 : i2} : <>, <i2>
    %137 = extsi %136 {handshake.bb = 4 : ui32, handshake.name = "extsi22"} : <i2> to <i3>
    %138 = addi %132, %137 {handshake.bb = 4 : ui32, handshake.name = "addi6"} : <i3>
    %139:2 = fork [2] %138 {handshake.bb = 4 : ui32, handshake.name = "fork14"} : <i3>
    %140 = buffer %139#0 {handshake.bb = 4 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %141 = trunci %140 {handshake.bb = 4 : ui32, handshake.name = "trunci9"} : <i3> to <i2>
    %142 = buffer %139#1 {handshake.bb = 4 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %143 = cmpi ult, %142, %134 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i3>
    %144:2 = fork [2] %143 {handshake.bb = 4 : ui32, handshake.name = "fork15"} : <i1>
    %145 = buffer %144#0 {handshake.bb = 4 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_28, %falseResult_29 = cond_br %145, %141 {handshake.bb = 4 : ui32, handshake.name = "cond_br10"} : <i1>, <i2>
    sink %falseResult_29 {handshake.name = "sink4"} : <i2>
    %146 = buffer %result_26 {handshake.bb = 4 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %147 = buffer %146 {handshake.bb = 4 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %148 = buffer %144#1 {handshake.bb = 4 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_30, %falseResult_31 = cond_br %148, %147 {handshake.bb = 4 : ui32, handshake.name = "cond_br11"} : <i1>, <>
    %result_32, %index_33 = control_merge %falseResult_31  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    sink %index_33 {handshake.name = "sink5"} : <i1>
    %149 = buffer %result_32 {handshake.bb = 5 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %150 = buffer %149 {handshake.bb = 5 : ui32, handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %151:3 = fork [3] %150 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <>
    %152 = buffer %151#2 {handshake.bb = 5 : ui32, handshake.name = "buffer67", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %153 = constant %152 {handshake.bb = 5 : ui32, handshake.name = "constant23", value = 49 : i7} : <>, <i7>
    %154 = trunci %153 {handshake.bb = 5 : ui32, handshake.name = "trunci10"} : <i7> to <i6>
    %addressResult_34, %dataResult_35 = load[%154] %outputs#0 {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i6>, <i32>
    %155 = buffer %0#1 {handshake.bb = 5 : ui32, handshake.name = "buffer1", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %dataResult_35, %memEnd, %2#1, %155 : <i32>, <>, <>, <>
  }
}


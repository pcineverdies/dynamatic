module {
  handshake.func @bicg(%arg0: memref<100xi32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["a", "s", "q", "p", "r", "a_start", "s_start", "q_start", "p_start", "r_start", "start"], resNames = ["out0", "a_end", "s_end", "q_end", "p_end", "r_end", "end"]} {
    %0:3 = fork [3] %arg10 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1 = buffer %144#4 {handshake.name = "buffer67", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs, %memEnd = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_10) %1 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %2 = buffer %144#3 {handshake.name = "buffer66", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs_0, %memEnd_1 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_14) %2 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller4"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %3 = buffer %144#2 {handshake.name = "buffer65", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %4:2 = lsq[%arg2 : memref<10xi32>] (%arg7, %22#0, %addressResult, %121#0, %addressResult_24, %dataResult_25, %3)  {groupSizes = [1 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %5 = buffer %144#1 {handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %6:2 = lsq[%arg1 : memref<10xi32>] (%arg6, %66#0, %addressResult_8, %addressResult_12, %dataResult_13, %5)  {groupSizes = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<i4>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %7 = buffer %144#0 {handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs_2, %memEnd_3 = mem_controller[%arg0 : memref<100xi32>] %arg5 (%addressResult_6) %7 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i7>) -> !handshake.channel<i32>
    %8 = buffer %0#0 {handshake.bb = 0 : ui32, handshake.name = "buffer0", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %9 = constant %8 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %10 = br %9 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <i1>
    %11 = extsi %10 {handshake.bb = 0 : ui32, handshake.name = "extsi8"} : <i1> to <i5>
    %12 = buffer %0#2 {handshake.bb = 0 : ui32, handshake.name = "buffer2", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %13 = br %12 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %14 = mux %index [%11, %trueResult_26] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i5>
    %15 = buffer %14 {handshake.bb = 1 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %16 = buffer %15 {handshake.bb = 1 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %17:2 = fork [2] %16 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i5>
    %18 = buffer %17#0 {handshake.bb = 1 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %19 = trunci %18 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i5> to <i4>
    %result, %index = control_merge %13, %trueResult_28  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %20 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %21 = buffer %20 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %22:3 = lazy_fork [3] %21 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork0"} : <>
    %23 = buffer %22#2 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %24 = fork [1] %23 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <>
    %25 = buffer %24 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %26 = constant %25 {handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %addressResult, %dataResult = load[%19] %4#0 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i4>, <i32>
    %27 = br %26 {handshake.bb = 1 : ui32, handshake.name = "br4"} : <i1>
    %28 = extsi %27 {handshake.bb = 1 : ui32, handshake.name = "extsi7"} : <i1> to <i5>
    %29 = br %dataResult {handshake.bb = 1 : ui32, handshake.name = "br5"} : <i32>
    %30 = buffer %17#1 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %31 = br %30 {handshake.bb = 1 : ui32, handshake.name = "br6"} : <i5>
    %32 = buffer %22#1 {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %33 = br %32 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "br7"} : <>
    %34 = buffer %63#1 {handshake.bb = 2 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %35 = mux %34 [%28, %trueResult] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i5>
    %36 = buffer %35 {handshake.bb = 2 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %37 = buffer %36 {handshake.bb = 2 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %38:5 = fork [5] %37 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i5>
    %39 = buffer %38#0 {handshake.bb = 2 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %40 = extsi %39 {handshake.bb = 2 : ui32, handshake.name = "extsi9"} : <i5> to <i7>
    %41 = buffer %38#4 {handshake.bb = 2 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %42 = extsi %41 {handshake.bb = 2 : ui32, handshake.name = "extsi10"} : <i5> to <i6>
    %43 = buffer %38#1 {handshake.bb = 2 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %44 = trunci %43 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i5> to <i4>
    %45 = buffer %38#2 {handshake.bb = 2 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %46 = trunci %45 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i5> to <i4>
    %47 = buffer %38#3 {handshake.bb = 2 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %48 = trunci %47 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i5> to <i4>
    %49 = buffer %63#2 {handshake.bb = 2 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %50 = mux %49 [%29, %trueResult_16] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %51 = buffer %63#0 {handshake.bb = 2 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %52 = mux %51 [%31, %trueResult_18] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i5>
    %53 = buffer %52 {handshake.bb = 2 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %54 = buffer %53 {handshake.bb = 2 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %55:4 = fork [4] %54 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i5>
    %56 = buffer %55#0 {handshake.bb = 2 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %57 = trunci %56 {handshake.bb = 2 : ui32, handshake.name = "trunci4"} : <i5> to <i4>
    %58 = extsi %57 {handshake.bb = 2 : ui32, handshake.name = "extsi11"} : <i4> to <i7>
    %59 = buffer %55#3 {handshake.bb = 2 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %60 = extsi %59 {handshake.bb = 2 : ui32, handshake.name = "extsi12"} : <i5> to <i6>
    %61 = buffer %55#1 {handshake.bb = 2 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %62 = trunci %61 {handshake.bb = 2 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %result_4, %index_5 = control_merge %33, %trueResult_20  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %63:3 = fork [3] %index_5 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i1>
    %64 = buffer %result_4 {handshake.bb = 2 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %65 = buffer %64 {handshake.bb = 2 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %66:2 = fork [2] %65 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <>
    %67 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %68 = constant %67 {handshake.bb = 2 : ui32, handshake.name = "constant2", value = 10 : i5} : <>, <i5>
    %69 = extsi %68 {handshake.bb = 2 : ui32, handshake.name = "extsi13"} : <i5> to <i6>
    %70 = source {handshake.bb = 2 : ui32, handshake.name = "source1"} : <>
    %71 = constant %70 {handshake.bb = 2 : ui32, handshake.name = "constant10", value = 1 : i2} : <>, <i2>
    %72:2 = fork [2] %71 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i2>
    %73 = buffer %72#0 {handshake.bb = 2 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %74 = extui %73 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i2> to <i6>
    %75 = buffer %72#1 {handshake.bb = 2 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %76 = extsi %75 {handshake.bb = 2 : ui32, handshake.name = "extsi14"} : <i2> to <i6>
    %77 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %78 = constant %77 {handshake.bb = 2 : ui32, handshake.name = "constant11", value = 3 : i3} : <>, <i3>
    %79 = extui %78 {handshake.bb = 2 : ui32, handshake.name = "extui1"} : <i3> to <i7>
    %80 = shli %60, %74 {handshake.bb = 2 : ui32, handshake.name = "shli3"} : <i6>
    %81 = extsi %80 {handshake.bb = 2 : ui32, handshake.name = "extsi15"} : <i6> to <i7>
    %82 = shli %58, %79 {handshake.bb = 2 : ui32, handshake.name = "shli2"} : <i7>
    %83 = addi %81, %82 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i7>
    %84 = addi %40, %83 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i7>
    %addressResult_6, %dataResult_7 = load[%84] %outputs_2 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i7>, <i32>
    %85:2 = fork [2] %dataResult_7 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i32>
    %addressResult_8, %dataResult_9 = load[%48] %6#0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load2"} : <i4>, <i32>
    %addressResult_10, %dataResult_11 = load[%62] %outputs {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load3"} : <i4>, <i32>
    %86 = buffer %85#0 {handshake.bb = 2 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %87 = muli %dataResult_11, %86 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %88 = addi %dataResult_9, %87 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %addressResult_12, %dataResult_13 = store[%46] %88 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i4>, <i32>
    %addressResult_14, %dataResult_15 = load[%44] %outputs_0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i4>, <i32>
    %89 = buffer %85#1 {handshake.bb = 2 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %90 = muli %89, %dataResult_15 {handshake.bb = 2 : ui32, handshake.name = "muli1"} : <i32>
    %91 = buffer %50 {handshake.bb = 2 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %92 = buffer %91 {handshake.bb = 2 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %93 = addi %92, %90 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %94 = addi %42, %76 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i6>
    %95:2 = fork [2] %94 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i6>
    %96 = buffer %95#0 {handshake.bb = 2 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %97 = trunci %96 {handshake.bb = 2 : ui32, handshake.name = "trunci6"} : <i6> to <i5>
    %98 = buffer %95#1 {handshake.bb = 2 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %99 = cmpi ult, %98, %69 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i6>
    %100:4 = fork [4] %99 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i1>
    %101 = buffer %100#0 {handshake.bb = 2 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult, %falseResult = cond_br %101, %97 {handshake.bb = 2 : ui32, handshake.name = "cond_br2"} : <i1>, <i5>
    sink %falseResult {handshake.name = "sink0"} : <i5>
    %102 = buffer %100#2 {handshake.bb = 2 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_16, %falseResult_17 = cond_br %102, %93 {handshake.bb = 2 : ui32, handshake.name = "cond_br3"} : <i1>, <i32>
    %103 = buffer %55#2 {handshake.bb = 2 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %104 = buffer %100#1 {handshake.bb = 2 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_18, %falseResult_19 = cond_br %104, %103 {handshake.bb = 2 : ui32, handshake.name = "cond_br4"} : <i1>, <i5>
    %105 = buffer %66#1 {handshake.bb = 2 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %106 = buffer %100#3 {handshake.bb = 2 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_20, %falseResult_21 = cond_br %106, %105 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br5"} : <i1>, <>
    %107 = merge %falseResult_19 {handshake.bb = 3 : ui32, handshake.name = "merge0"} : <i5>
    %108 = buffer %107 {handshake.bb = 3 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %109 = buffer %108 {handshake.bb = 3 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %110:2 = fork [2] %109 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i5>
    %111 = buffer %110#1 {handshake.bb = 3 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %112 = extsi %111 {handshake.bb = 3 : ui32, handshake.name = "extsi16"} : <i5> to <i6>
    %113 = buffer %110#0 {handshake.bb = 3 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %114 = trunci %113 {handshake.bb = 3 : ui32, handshake.name = "trunci7"} : <i5> to <i4>
    %115 = merge %falseResult_17 {handshake.bb = 3 : ui32, handshake.name = "merge1"} : <i32>
    %116 = buffer %115 {handshake.bb = 3 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %117 = buffer %116 {handshake.bb = 3 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %118:2 = fork [2] %117 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i32>
    %result_22, %index_23 = control_merge %falseResult_21  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    sink %index_23 {handshake.name = "sink1"} : <i1>
    %119 = buffer %result_22 {handshake.bb = 3 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %120 = buffer %119 {handshake.bb = 3 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %121:2 = lazy_fork [2] %120 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork1"} : <>
    %122 = source {handshake.bb = 3 : ui32, handshake.name = "source3"} : <>
    %123 = constant %122 {handshake.bb = 3 : ui32, handshake.name = "constant12", value = 10 : i5} : <>, <i5>
    %124 = extsi %123 {handshake.bb = 3 : ui32, handshake.name = "extsi17"} : <i5> to <i6>
    %125 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %126 = constant %125 {handshake.bb = 3 : ui32, handshake.name = "constant13", value = 1 : i2} : <>, <i2>
    %127 = extsi %126 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i2> to <i6>
    %128 = buffer %118#0 {handshake.bb = 3 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %addressResult_24, %dataResult_25 = store[%114] %128 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i4>, <i32>
    %129 = addi %112, %127 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i6>
    %130:2 = fork [2] %129 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i6>
    %131 = buffer %130#0 {handshake.bb = 3 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %132 = trunci %131 {handshake.bb = 3 : ui32, handshake.name = "trunci8"} : <i6> to <i5>
    %133 = buffer %130#1 {handshake.bb = 3 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %134 = cmpi ult, %133, %124 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i6>
    %135:3 = fork [3] %134 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i1>
    %136 = buffer %135#0 {handshake.bb = 3 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_26, %falseResult_27 = cond_br %136, %132 {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <i5>
    sink %falseResult_27 {handshake.name = "sink2"} : <i5>
    %137 = buffer %121#1 {handshake.bb = 3 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %138 = buffer %135#1 {handshake.bb = 3 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_28, %falseResult_29 = cond_br %138, %137 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br7"} : <i1>, <>
    %139 = buffer %118#1 {handshake.bb = 3 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %140 = buffer %135#2 {handshake.bb = 3 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_30, %falseResult_31 = cond_br %140, %139 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    sink %trueResult_30 {handshake.name = "sink3"} : <i32>
    %141 = merge %falseResult_31 {handshake.bb = 4 : ui32, handshake.name = "merge2"} : <i32>
    %result_32, %index_33 = control_merge %falseResult_29  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_33 {handshake.name = "sink4"} : <i1>
    %142 = buffer %result_32 {handshake.bb = 4 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %143 = buffer %142 {handshake.bb = 4 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %144:5 = fork [5] %143 {handshake.bb = 4 : ui32, handshake.name = "fork15"} : <>
    %145 = buffer %0#1 {handshake.bb = 4 : ui32, handshake.name = "buffer1", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %146 = buffer %141 {handshake.bb = 4 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %147 = buffer %146 {handshake.bb = 4 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %147, %memEnd_3, %6#1, %4#1, %memEnd_1, %memEnd, %145 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


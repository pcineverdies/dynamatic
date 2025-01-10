module {
  handshake.func @bicg(%arg0: memref<100xi32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["a", "s", "q", "p", "r", "a_start", "s_start", "q_start", "p_start", "r_start", "start"], resNames = ["out0", "a_end", "s_end", "q_end", "p_end", "r_end", "end"]} {
    %0:3 = fork [3] %arg10 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %outputs, %memEnd = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_10) %135#4 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_14) %135#3 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller4"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %4:2 = lsq[%arg2 : memref<10xi32>] (%arg7, %20#0, %addressResult, %113#0, %addressResult_22, %dataResult_23, %135#2)  {groupSizes = [1 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %6:2 = lsq[%arg1 : memref<10xi32>] (%arg6, %60#0, %addressResult_8, %addressResult_12, %dataResult_13, %135#1)  {groupSizes = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<i4>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %outputs_2, %memEnd_3 = mem_controller[%arg0 : memref<100xi32>] %arg5 (%addressResult_6) %135#0 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i7>) -> !handshake.channel<i32>
    %9 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %10 = extsi %9 {handshake.bb = 0 : ui32, handshake.name = "extsi8"} : <i1> to <i5>
    %12 = mux %index [%10, %trueResult_24] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i5>
    %13 = buffer %12 {handshake.bb = 1 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %14 = buffer %13 {handshake.bb = 1 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %15:2 = fork [2] %14 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i5>
    %17 = trunci %15#0 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i5> to <i4>
    %result, %index = control_merge %0#2, %trueResult_26  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %18 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %19 = buffer %18 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %20:3 = lazy_fork [3] %19 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork0"} : <>
    %21 = buffer %20#2 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %22 = fork [1] %21 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <>
    %24 = constant %22 {handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %addressResult, %dataResult = load[%17] %4#0 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i4>, <i32>
    %25 = extsi %24 {handshake.bb = 1 : ui32, handshake.name = "extsi7"} : <i1> to <i5>
    %27 = buffer %20#1 {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %29 = mux %57#1 [%25, %trueResult] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i5>
    %30 = buffer %29 {handshake.bb = 2 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %31 = buffer %30 {handshake.bb = 2 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %32:5 = fork [5] %31 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i5>
    %34 = extsi %32#0 {handshake.bb = 2 : ui32, handshake.name = "extsi9"} : <i5> to <i7>
    %36 = extsi %32#4 {handshake.bb = 2 : ui32, handshake.name = "extsi10"} : <i5> to <i6>
    %38 = trunci %32#1 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i5> to <i4>
    %39 = buffer %32#2 {handshake.bb = 2 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %40 = trunci %39 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i5> to <i4>
    %42 = trunci %32#3 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i5> to <i4>
    %43 = buffer %57#2 {handshake.bb = 2 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %44 = mux %43 [%dataResult, %trueResult_16] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %46 = mux %57#0 [%15#1, %trueResult_18] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i5>
    %47 = buffer %46 {handshake.bb = 2 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %48 = buffer %47 {handshake.bb = 2 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %49:4 = fork [4] %48 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i5>
    %51 = trunci %49#0 {handshake.bb = 2 : ui32, handshake.name = "trunci4"} : <i5> to <i4>
    %52 = extsi %51 {handshake.bb = 2 : ui32, handshake.name = "extsi11"} : <i4> to <i7>
    %54 = extsi %49#3 {handshake.bb = 2 : ui32, handshake.name = "extsi12"} : <i5> to <i6>
    %56 = trunci %49#1 {handshake.bb = 2 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %result_4, %index_5 = control_merge %27, %trueResult_20  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %57:3 = fork [3] %index_5 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i1>
    %58 = buffer %result_4 {handshake.bb = 2 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %59 = buffer %58 {handshake.bb = 2 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %60:2 = fork [2] %59 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <>
    %61 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %62 = constant %61 {handshake.bb = 2 : ui32, handshake.name = "constant2", value = 10 : i5} : <>, <i5>
    %63 = extsi %62 {handshake.bb = 2 : ui32, handshake.name = "extsi13"} : <i5> to <i6>
    %64 = source {handshake.bb = 2 : ui32, handshake.name = "source1"} : <>
    %65 = constant %64 {handshake.bb = 2 : ui32, handshake.name = "constant10", value = 1 : i2} : <>, <i2>
    %66:2 = fork [2] %65 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i2>
    %68 = extui %66#0 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i2> to <i6>
    %70 = extsi %66#1 {handshake.bb = 2 : ui32, handshake.name = "extsi14"} : <i2> to <i6>
    %71 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %72 = constant %71 {handshake.bb = 2 : ui32, handshake.name = "constant11", value = 3 : i3} : <>, <i3>
    %73 = extui %72 {handshake.bb = 2 : ui32, handshake.name = "extui1"} : <i3> to <i7>
    %74 = shli %54, %68 {handshake.bb = 2 : ui32, handshake.name = "shli3"} : <i6>
    %75 = extsi %74 {handshake.bb = 2 : ui32, handshake.name = "extsi15"} : <i6> to <i7>
    %76 = shli %52, %73 {handshake.bb = 2 : ui32, handshake.name = "shli2"} : <i7>
    %77 = addi %75, %76 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i7>
    %78 = addi %34, %77 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i7>
    %addressResult_6, %dataResult_7 = load[%78] %outputs_2 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i7>, <i32>
    %79:2 = fork [2] %dataResult_7 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i32>
    %addressResult_8, %dataResult_9 = load[%42] %6#0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load2"} : <i4>, <i32>
    %addressResult_10, %dataResult_11 = load[%56] %outputs {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load3"} : <i4>, <i32>
    %81 = muli %dataResult_11, %79#0 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %82 = addi %dataResult_9, %81 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %addressResult_12, %dataResult_13 = store[%40] %82 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i4>, <i32>
    %addressResult_14, %dataResult_15 = load[%38] %outputs_0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i4>, <i32>
    %84 = muli %79#1, %dataResult_15 {handshake.bb = 2 : ui32, handshake.name = "muli1"} : <i32>
    %85 = buffer %44 {handshake.bb = 2 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %86 = buffer %85 {handshake.bb = 2 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %87 = addi %86, %84 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %88 = addi %36, %70 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i6>
    %89:2 = fork [2] %88 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i6>
    %91 = trunci %89#0 {handshake.bb = 2 : ui32, handshake.name = "trunci6"} : <i6> to <i5>
    %93 = cmpi ult, %89#1, %63 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i6>
    %94:4 = fork [4] %93 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i1>
    %trueResult, %falseResult = cond_br %94#0, %91 {handshake.bb = 2 : ui32, handshake.name = "cond_br2"} : <i1>, <i5>
    sink %falseResult {handshake.name = "sink0"} : <i5>
    %96 = buffer %94#2 {handshake.bb = 2 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_16, %falseResult_17 = cond_br %96, %87 {handshake.bb = 2 : ui32, handshake.name = "cond_br3"} : <i1>, <i32>
    %trueResult_18, %falseResult_19 = cond_br %94#1, %49#2 {handshake.bb = 2 : ui32, handshake.name = "cond_br4"} : <i1>, <i5>
    %trueResult_20, %falseResult_21 = cond_br %94#3, %60#1 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br5"} : <i1>, <>
    %101 = buffer %falseResult_19 {handshake.bb = 3 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %102 = buffer %101 {handshake.bb = 3 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %103:2 = fork [2] %102 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i5>
    %105 = extsi %103#1 {handshake.bb = 3 : ui32, handshake.name = "extsi16"} : <i5> to <i6>
    %107 = trunci %103#0 {handshake.bb = 3 : ui32, handshake.name = "trunci7"} : <i5> to <i4>
    %108 = buffer %falseResult_17 {handshake.bb = 3 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %109 = buffer %108 {handshake.bb = 3 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %110:2 = fork [2] %109 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i32>
    %111 = buffer %falseResult_21 {handshake.bb = 3 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %112 = buffer %111 {handshake.bb = 3 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %113:2 = lazy_fork [2] %112 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork1"} : <>
    %114 = source {handshake.bb = 3 : ui32, handshake.name = "source3"} : <>
    %115 = constant %114 {handshake.bb = 3 : ui32, handshake.name = "constant12", value = 10 : i5} : <>, <i5>
    %116 = extsi %115 {handshake.bb = 3 : ui32, handshake.name = "extsi17"} : <i5> to <i6>
    %117 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %118 = constant %117 {handshake.bb = 3 : ui32, handshake.name = "constant13", value = 1 : i2} : <>, <i2>
    %119 = extsi %118 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i2> to <i6>
    %addressResult_22, %dataResult_23 = store[%107] %110#0 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i4>, <i32>
    %121 = addi %105, %119 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i6>
    %122:2 = fork [2] %121 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i6>
    %124 = trunci %122#0 {handshake.bb = 3 : ui32, handshake.name = "trunci8"} : <i6> to <i5>
    %126 = cmpi ult, %122#1, %116 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i6>
    %127:3 = fork [3] %126 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i1>
    %trueResult_24, %falseResult_25 = cond_br %127#0, %124 {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <i5>
    sink %falseResult_25 {handshake.name = "sink2"} : <i5>
    %129 = buffer %113#1 {handshake.bb = 3 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %trueResult_26, %falseResult_27 = cond_br %127#1, %129 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br7"} : <i1>, <>
    %trueResult_28, %falseResult_29 = cond_br %127#2, %110#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    sink %trueResult_28 {handshake.name = "sink3"} : <i32>
    %133 = buffer %falseResult_27 {handshake.bb = 4 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %134 = buffer %133 {handshake.bb = 4 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %135:5 = fork [5] %134 {handshake.bb = 4 : ui32, handshake.name = "fork15"} : <>
    %137 = buffer %falseResult_29 {handshake.bb = 4 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %138 = buffer %137 {handshake.bb = 4 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %138, %memEnd_3, %6#1, %4#1, %memEnd_1, %memEnd, %0#1 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


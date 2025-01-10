module {
  handshake.func @kernel_2mm(%arg0: !handshake.channel<i32>, %arg1: !handshake.channel<i32>, %arg2: memref<49xi32>, %arg3: memref<49xi32>, %arg4: memref<49xi32>, %arg5: memref<49xi32>, %arg6: memref<49xi32>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, %arg12: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["alpha", "beta", "tmp", "A", "B", "C", "D", "tmp_start", "A_start", "B_start", "C_start", "D_start", "start"], resNames = ["out0", "tmp_end", "A_end", "B_end", "C_end", "D_end", "end"]} {
    %0:3 = fork [3] %arg12 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %2:4 = lsq[%arg6 : memref<49xi32>] (%arg11, %274#0, %addressResult_50, %addressResult_52, %dataResult_53, %337#0, %addressResult_60, %addressResult_62, %dataResult_63, %438#4, %addressResult_88, %438#5)  {groupSizes = [2 : i32, 2 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "10": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "11": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "7": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "8": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "9": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg5 : memref<49xi32>] %arg10 (%addressResult_58) %438#3 {connectedBlocks = [8 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg4 : memref<49xi32>] %arg9 (%addressResult_10) %438#2 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller4"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %outputs_2, %memEnd_3 = mem_controller[%arg3 : memref<49xi32>] %arg8 (%addressResult_8) %438#1 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %7:3 = lsq[%arg2 : memref<49xi32>] (%arg7, %53#0, %addressResult, %dataResult, %119#0, %addressResult_12, %addressResult_14, %dataResult_15, %339, %addressResult_56, %438#0)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "10": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "7": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "8": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "9": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %9 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %10 = extsi %9 {handshake.bb = 0 : ui32, handshake.name = "extsi27"} : <i1> to <i4>
    %13 = mux %18#0 [%10, %trueResult_36] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i4>
    %15 = mux %18#1 [%arg0, %trueResult_38] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %17 = mux %18#2 [%arg1, %trueResult_40] {handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %result, %index = control_merge %0#2, %trueResult_42  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %18:3 = fork [3] %index {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %19 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %20 = buffer %19 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %21:2 = fork [2] %20 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <>
    %23 = constant %21#0 {handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %24 = extsi %23 {handshake.bb = 1 : ui32, handshake.name = "extsi26"} : <i1> to <i4>
    %25 = buffer %15 {handshake.bb = 1 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %26 = buffer %25 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %27 = buffer %17 {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %28 = buffer %27 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %29 = buffer %13 {handshake.bb = 1 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %30 = buffer %29 {handshake.bb = 1 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %33 = mux %50#1 [%24, %trueResult_26] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i4>
    %34 = buffer %33 {handshake.bb = 2 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %35 = buffer %34 {handshake.bb = 2 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %36:2 = fork [2] %35 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i4>
    %38 = extsi %36#0 {handshake.bb = 2 : ui32, handshake.name = "extsi28"} : <i4> to <i6>
    %40 = mux %50#2 [%26, %trueResult_28] {handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %42 = mux %50#3 [%28, %trueResult_30] {handshake.bb = 2 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %44 = mux %50#0 [%30, %trueResult_32] {handshake.bb = 2 : ui32, handshake.name = "mux6"} : <i1>, <i4>
    %45 = buffer %44 {handshake.bb = 2 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %46 = buffer %45 {handshake.bb = 2 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %47:2 = fork [2] %46 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i4>
    %49 = extsi %47#1 {handshake.bb = 2 : ui32, handshake.name = "extsi29"} : <i4> to <i8>
    %result_4, %index_5 = control_merge %21#1, %trueResult_34  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %50:4 = fork [4] %index_5 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i1>
    %51 = buffer %result_4 {handshake.bb = 2 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %52 = buffer %51 {handshake.bb = 2 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %53:3 = lazy_fork [3] %52 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork0"} : <>
    %54 = buffer %53#2 {handshake.bb = 2 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %55 = fork [1] %54 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork6"} : <>
    %57 = constant %55 {handshake.bb = 2 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %58:2 = fork [2] %57 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i1>
    %60 = extsi %58#1 {handshake.bb = 2 : ui32, handshake.name = "extsi3"} : <i1> to <i32>
    %61 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %62 = constant %61 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = 7 : i4} : <>, <i4>
    %63 = extsi %62 {handshake.bb = 2 : ui32, handshake.name = "extsi30"} : <i4> to <i8>
    %64 = muli %49, %63 {handshake.bb = 2 : ui32, handshake.name = "muli4"} : <i8>
    %65 = trunci %64 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i8> to <i6>
    %66 = addi %38, %65 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i6>
    %addressResult, %dataResult = store[%66] %60 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0]]>, <"store1" (3) [[0, 0], [0, 0]]>, <"load4" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i6>, <i32>
    %68 = extsi %58#0 {handshake.bb = 2 : ui32, handshake.name = "extsi25"} : <i1> to <i4>
    %69 = buffer %40 {handshake.bb = 2 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %70 = buffer %69 {handshake.bb = 2 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %71 = buffer %42 {handshake.bb = 2 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %72 = buffer %71 {handshake.bb = 2 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %75 = buffer %53#1 {handshake.bb = 2 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %77 = mux %116#2 [%68, %trueResult] {handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <i4>
    %78 = buffer %77 {handshake.bb = 3 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %79 = buffer %78 {handshake.bb = 3 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %80:3 = fork [3] %79 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i4>
    %81 = buffer %80#0 {handshake.bb = 3 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %82 = extsi %81 {handshake.bb = 3 : ui32, handshake.name = "extsi31"} : <i4> to <i6>
    %84 = extsi %80#1 {handshake.bb = 3 : ui32, handshake.name = "extsi32"} : <i4> to <i5>
    %85 = buffer %80#2 {handshake.bb = 3 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %86 = extsi %85 {handshake.bb = 3 : ui32, handshake.name = "extsi33"} : <i4> to <i8>
    %88 = mux %116#3 [%70, %trueResult_16] {handshake.bb = 3 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %89 = buffer %88 {handshake.bb = 3 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %90 = buffer %89 {handshake.bb = 3 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %91:2 = fork [2] %90 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i32>
    %93 = mux %116#4 [%72, %trueResult_18] {handshake.bb = 3 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %95 = mux %116#0 [%47#0, %trueResult_20] {handshake.bb = 3 : ui32, handshake.name = "mux10"} : <i1>, <i4>
    %96 = buffer %95 {handshake.bb = 3 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %97 = buffer %96 {handshake.bb = 3 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %98:4 = fork [4] %97 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i4>
    %99 = buffer %98#1 {handshake.bb = 3 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %100 = extsi %99 {handshake.bb = 3 : ui32, handshake.name = "extsi34"} : <i4> to <i8>
    %102 = extsi %98#2 {handshake.bb = 3 : ui32, handshake.name = "extsi35"} : <i4> to <i8>
    %104 = extsi %98#3 {handshake.bb = 3 : ui32, handshake.name = "extsi36"} : <i4> to <i8>
    %106 = mux %116#1 [%36#1, %trueResult_22] {handshake.bb = 3 : ui32, handshake.name = "mux11"} : <i1>, <i4>
    %107 = buffer %106 {handshake.bb = 3 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %108 = buffer %107 {handshake.bb = 3 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %109:4 = fork [4] %108 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i4>
    %110 = buffer %109#0 {handshake.bb = 3 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %111 = extsi %110 {handshake.bb = 3 : ui32, handshake.name = "extsi37"} : <i4> to <i6>
    %112 = buffer %109#1 {handshake.bb = 3 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %113 = extsi %112 {handshake.bb = 3 : ui32, handshake.name = "extsi38"} : <i4> to <i6>
    %114 = buffer %109#2 {handshake.bb = 3 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %115 = extsi %114 {handshake.bb = 3 : ui32, handshake.name = "extsi39"} : <i4> to <i6>
    %result_6, %index_7 = control_merge %75, %trueResult_24  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %116:5 = fork [5] %index_7 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i1>
    %117 = buffer %result_6 {handshake.bb = 3 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %118 = buffer %117 {handshake.bb = 3 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %119:2 = lazy_fork [2] %118 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork1"} : <>
    %120 = source {handshake.bb = 3 : ui32, handshake.name = "source1"} : <>
    %121 = constant %120 {handshake.bb = 3 : ui32, handshake.name = "constant26", value = 7 : i4} : <>, <i4>
    %122:5 = fork [5] %121 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i4>
    %123 = buffer %122#0 {handshake.bb = 3 : ui32, handshake.name = "buffer70", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %124 = extsi %123 {handshake.bb = 3 : ui32, handshake.name = "extsi40"} : <i4> to <i8>
    %126 = extsi %122#1 {handshake.bb = 3 : ui32, handshake.name = "extsi41"} : <i4> to <i8>
    %128 = extsi %122#2 {handshake.bb = 3 : ui32, handshake.name = "extsi42"} : <i4> to <i8>
    %130 = extsi %122#3 {handshake.bb = 3 : ui32, handshake.name = "extsi43"} : <i4> to <i5>
    %131 = buffer %122#4 {handshake.bb = 3 : ui32, handshake.name = "buffer74", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %132 = extsi %131 {handshake.bb = 3 : ui32, handshake.name = "extsi44"} : <i4> to <i8>
    %133 = source {handshake.bb = 3 : ui32, handshake.name = "source2"} : <>
    %134 = constant %133 {handshake.bb = 3 : ui32, handshake.name = "constant27", value = 1 : i2} : <>, <i2>
    %135 = extsi %134 {handshake.bb = 3 : ui32, handshake.name = "extsi45"} : <i2> to <i5>
    %136 = muli %104, %128 {handshake.bb = 3 : ui32, handshake.name = "muli5"} : <i8>
    %137 = trunci %136 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i8> to <i6>
    %138 = addi %82, %137 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i6>
    %addressResult_8, %dataResult_9 = load[%138] %outputs_2 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i6>, <i32>
    %139 = buffer %91#1 {handshake.bb = 3 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %140 = muli %139, %dataResult_9 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %141 = muli %86, %132 {handshake.bb = 3 : ui32, handshake.name = "muli6"} : <i8>
    %142 = trunci %141 {handshake.bb = 3 : ui32, handshake.name = "trunci2"} : <i8> to <i6>
    %143 = addi %111, %142 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i6>
    %addressResult_10, %dataResult_11 = load[%143] %outputs_0 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i6>, <i32>
    %144 = muli %140, %dataResult_11 {handshake.bb = 3 : ui32, handshake.name = "muli1"} : <i32>
    %145 = muli %102, %126 {handshake.bb = 3 : ui32, handshake.name = "muli7"} : <i8>
    %146 = trunci %145 {handshake.bb = 3 : ui32, handshake.name = "trunci3"} : <i8> to <i6>
    %147 = addi %113, %146 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i6>
    %addressResult_12, %dataResult_13 = load[%147] %7#0 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load2"} : <i6>, <i32>
    %148 = addi %dataResult_13, %144 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %149 = muli %100, %124 {handshake.bb = 3 : ui32, handshake.name = "muli8"} : <i8>
    %150 = trunci %149 {handshake.bb = 3 : ui32, handshake.name = "trunci4"} : <i8> to <i6>
    %151 = addi %115, %150 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i6>
    %addressResult_14, %dataResult_15 = store[%151] %148 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"load4" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i6>, <i32>
    %152 = addi %84, %135 {handshake.bb = 3 : ui32, handshake.name = "addi14"} : <i5>
    %153:2 = fork [2] %152 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i5>
    %155 = trunci %153#0 {handshake.bb = 3 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %157 = cmpi ult, %153#1, %130 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i5>
    %158:6 = fork [6] %157 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <i1>
    %trueResult, %falseResult = cond_br %158#0, %155 {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <i4>
    sink %falseResult {handshake.name = "sink0"} : <i4>
    %trueResult_16, %falseResult_17 = cond_br %158#3, %91#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <i32>
    %162 = buffer %93 {handshake.bb = 3 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %163 = buffer %162 {handshake.bb = 3 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_18, %falseResult_19 = cond_br %158#4, %163 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    %trueResult_20, %falseResult_21 = cond_br %158#1, %98#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br9"} : <i1>, <i4>
    %trueResult_22, %falseResult_23 = cond_br %158#2, %109#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br10"} : <i1>, <i4>
    %169 = buffer %119#1 {handshake.bb = 3 : ui32, handshake.name = "buffer69", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %trueResult_24, %falseResult_25 = cond_br %158#5, %169 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br11"} : <i1>, <>
    %171 = buffer %falseResult_23 {handshake.bb = 4 : ui32, handshake.name = "buffer89", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %172 = buffer %171 {handshake.bb = 4 : ui32, handshake.name = "buffer90", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %173 = extsi %172 {handshake.bb = 4 : ui32, handshake.name = "extsi46"} : <i4> to <i5>
    %174 = source {handshake.bb = 4 : ui32, handshake.name = "source3"} : <>
    %175 = constant %174 {handshake.bb = 4 : ui32, handshake.name = "constant28", value = 7 : i4} : <>, <i4>
    %176 = extsi %175 {handshake.bb = 4 : ui32, handshake.name = "extsi47"} : <i4> to <i5>
    %177 = source {handshake.bb = 4 : ui32, handshake.name = "source4"} : <>
    %178 = constant %177 {handshake.bb = 4 : ui32, handshake.name = "constant29", value = 1 : i2} : <>, <i2>
    %179 = extsi %178 {handshake.bb = 4 : ui32, handshake.name = "extsi48"} : <i2> to <i5>
    %180 = addi %173, %179 {handshake.bb = 4 : ui32, handshake.name = "addi15"} : <i5>
    %181:2 = fork [2] %180 {handshake.bb = 4 : ui32, handshake.name = "fork16"} : <i5>
    %183 = trunci %181#0 {handshake.bb = 4 : ui32, handshake.name = "trunci6"} : <i5> to <i4>
    %185 = cmpi ult, %181#1, %176 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i5>
    %186:5 = fork [5] %185 {handshake.bb = 4 : ui32, handshake.name = "fork17"} : <i1>
    %trueResult_26, %falseResult_27 = cond_br %186#0, %183 {handshake.bb = 4 : ui32, handshake.name = "cond_br12"} : <i1>, <i4>
    sink %falseResult_27 {handshake.name = "sink2"} : <i4>
    %188 = buffer %falseResult_17 {handshake.bb = 4 : ui32, handshake.name = "buffer83", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %189 = buffer %188 {handshake.bb = 4 : ui32, handshake.name = "buffer84", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_28, %falseResult_29 = cond_br %186#2, %189 {handshake.bb = 4 : ui32, handshake.name = "cond_br13"} : <i1>, <i32>
    %191 = buffer %falseResult_19 {handshake.bb = 4 : ui32, handshake.name = "buffer85", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %192 = buffer %191 {handshake.bb = 4 : ui32, handshake.name = "buffer86", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_30, %falseResult_31 = cond_br %186#3, %192 {handshake.bb = 4 : ui32, handshake.name = "cond_br14"} : <i1>, <i32>
    %194 = buffer %falseResult_21 {handshake.bb = 4 : ui32, handshake.name = "buffer87", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %195 = buffer %194 {handshake.bb = 4 : ui32, handshake.name = "buffer88", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %trueResult_32, %falseResult_33 = cond_br %186#1, %195 {handshake.bb = 4 : ui32, handshake.name = "cond_br15"} : <i1>, <i4>
    %197 = buffer %falseResult_25 {handshake.bb = 4 : ui32, handshake.name = "buffer91", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %198 = buffer %197 {handshake.bb = 4 : ui32, handshake.name = "buffer92", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_34, %falseResult_35 = cond_br %186#4, %198 {handshake.bb = 4 : ui32, handshake.name = "cond_br16"} : <i1>, <>
    %200 = buffer %falseResult_33 {handshake.bb = 5 : ui32, handshake.name = "buffer104", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %201 = buffer %200 {handshake.bb = 5 : ui32, handshake.name = "buffer105", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %202 = extsi %201 {handshake.bb = 5 : ui32, handshake.name = "extsi49"} : <i4> to <i5>
    %203 = buffer %falseResult_35 {handshake.bb = 5 : ui32, handshake.name = "buffer106", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %204 = buffer %203 {handshake.bb = 5 : ui32, handshake.name = "buffer107", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %205:2 = fork [2] %204 {handshake.bb = 5 : ui32, handshake.name = "fork18"} : <>
    %207 = constant %205#0 {handshake.bb = 5 : ui32, handshake.name = "constant30", value = false} : <>, <i1>
    %208 = source {handshake.bb = 5 : ui32, handshake.name = "source5"} : <>
    %209 = constant %208 {handshake.bb = 5 : ui32, handshake.name = "constant31", value = 7 : i4} : <>, <i4>
    %210 = extsi %209 {handshake.bb = 5 : ui32, handshake.name = "extsi50"} : <i4> to <i5>
    %211 = source {handshake.bb = 5 : ui32, handshake.name = "source6"} : <>
    %212 = constant %211 {handshake.bb = 5 : ui32, handshake.name = "constant32", value = 1 : i2} : <>, <i2>
    %213 = extsi %212 {handshake.bb = 5 : ui32, handshake.name = "extsi51"} : <i2> to <i5>
    %214 = addi %202, %213 {handshake.bb = 5 : ui32, handshake.name = "addi16"} : <i5>
    %215:2 = fork [2] %214 {handshake.bb = 5 : ui32, handshake.name = "fork19"} : <i5>
    %217 = trunci %215#0 {handshake.bb = 5 : ui32, handshake.name = "trunci7"} : <i5> to <i4>
    %219 = cmpi ult, %215#1, %210 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i5>
    %220:5 = fork [5] %219 {handshake.bb = 5 : ui32, handshake.name = "fork20"} : <i1>
    %trueResult_36, %falseResult_37 = cond_br %220#0, %217 {handshake.bb = 5 : ui32, handshake.name = "cond_br17"} : <i1>, <i4>
    sink %falseResult_37 {handshake.name = "sink4"} : <i4>
    %222 = buffer %falseResult_29 {handshake.bb = 5 : ui32, handshake.name = "buffer100", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %223 = buffer %222 {handshake.bb = 5 : ui32, handshake.name = "buffer101", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_38, %falseResult_39 = cond_br %220#1, %223 {handshake.bb = 5 : ui32, handshake.name = "cond_br18"} : <i1>, <i32>
    sink %falseResult_39 {handshake.name = "sink5"} : <i32>
    %225 = buffer %falseResult_31 {handshake.bb = 5 : ui32, handshake.name = "buffer102", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %226 = buffer %225 {handshake.bb = 5 : ui32, handshake.name = "buffer103", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_40, %falseResult_41 = cond_br %220#2, %226 {handshake.bb = 5 : ui32, handshake.name = "cond_br19"} : <i1>, <i32>
    %trueResult_42, %falseResult_43 = cond_br %220#3, %205#1 {handshake.bb = 5 : ui32, handshake.name = "cond_br20"} : <i1>, <>
    %trueResult_44, %falseResult_45 = cond_br %220#4, %207 {handshake.bb = 5 : ui32, handshake.name = "cond_br21"} : <i1>, <i1>
    sink %trueResult_44 {handshake.name = "sink6"} : <i1>
    %231 = extsi %falseResult_45 {handshake.bb = 5 : ui32, handshake.name = "extsi24"} : <i1> to <i4>
    %233 = mux %236#0 [%231, %trueResult_82] {handshake.bb = 6 : ui32, handshake.name = "mux12"} : <i1>, <i4>
    %235 = mux %236#1 [%falseResult_41, %trueResult_84] {handshake.bb = 6 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %result_46, %index_47 = control_merge %falseResult_43, %trueResult_86  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    %236:2 = fork [2] %index_47 {handshake.bb = 6 : ui32, handshake.name = "fork21"} : <i1>
    %237 = buffer %result_46 {handshake.bb = 6 : ui32, handshake.name = "buffer121", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %238 = buffer %237 {handshake.bb = 6 : ui32, handshake.name = "buffer122", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %239:2 = fork [2] %238 {handshake.bb = 6 : ui32, handshake.name = "fork22"} : <>
    %241 = constant %239#0 {handshake.bb = 6 : ui32, handshake.name = "constant33", value = false} : <>, <i1>
    %242 = extsi %241 {handshake.bb = 6 : ui32, handshake.name = "extsi23"} : <i1> to <i4>
    %243 = buffer %235 {handshake.bb = 6 : ui32, handshake.name = "buffer119", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %244 = buffer %243 {handshake.bb = 6 : ui32, handshake.name = "buffer120", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %245 = buffer %233 {handshake.bb = 6 : ui32, handshake.name = "buffer117", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %246 = buffer %245 {handshake.bb = 6 : ui32, handshake.name = "buffer118", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %249 = mux %271#1 [%242, %trueResult_74] {handshake.bb = 7 : ui32, handshake.name = "mux14"} : <i1>, <i4>
    %250 = buffer %249 {handshake.bb = 7 : ui32, handshake.name = "buffer127", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %251 = buffer %250 {handshake.bb = 7 : ui32, handshake.name = "buffer128", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %252:3 = fork [3] %251 {handshake.bb = 7 : ui32, handshake.name = "fork23"} : <i4>
    %254 = extsi %252#0 {handshake.bb = 7 : ui32, handshake.name = "extsi52"} : <i4> to <i6>
    %256 = extsi %252#1 {handshake.bb = 7 : ui32, handshake.name = "extsi53"} : <i4> to <i6>
    %258 = mux %271#2 [%244, %trueResult_76] {handshake.bb = 7 : ui32, handshake.name = "mux15"} : <i1>, <i32>
    %259 = buffer %258 {handshake.bb = 7 : ui32, handshake.name = "buffer132", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %260 = buffer %259 {handshake.bb = 7 : ui32, handshake.name = "buffer133", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %261:2 = fork [2] %260 {handshake.bb = 7 : ui32, handshake.name = "fork24"} : <i32>
    %263 = mux %271#0 [%246, %trueResult_78] {handshake.bb = 7 : ui32, handshake.name = "mux16"} : <i1>, <i4>
    %264 = buffer %263 {handshake.bb = 7 : ui32, handshake.name = "buffer136", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %265 = buffer %264 {handshake.bb = 7 : ui32, handshake.name = "buffer137", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %266:3 = fork [3] %265 {handshake.bb = 7 : ui32, handshake.name = "fork25"} : <i4>
    %268 = extsi %266#1 {handshake.bb = 7 : ui32, handshake.name = "extsi54"} : <i4> to <i8>
    %270 = extsi %266#2 {handshake.bb = 7 : ui32, handshake.name = "extsi55"} : <i4> to <i8>
    %result_48, %index_49 = control_merge %239#1, %trueResult_80  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %271:3 = fork [3] %index_49 {handshake.bb = 7 : ui32, handshake.name = "fork26"} : <i1>
    %272 = buffer %result_48 {handshake.bb = 7 : ui32, handshake.name = "buffer141", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %273 = buffer %272 {handshake.bb = 7 : ui32, handshake.name = "buffer142", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %274:3 = lazy_fork [3] %273 {handshake.bb = 7 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork2"} : <>
    %275 = buffer %274#2 {handshake.bb = 7 : ui32, handshake.name = "buffer147", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %276 = fork [1] %275 {handshake.bb = 7 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork27"} : <>
    %278 = constant %276 {handshake.bb = 7 : ui32, handshake.name = "constant34", value = false} : <>, <i1>
    %279 = source {handshake.bb = 7 : ui32, handshake.name = "source7"} : <>
    %280 = constant %279 {handshake.bb = 7 : ui32, handshake.name = "constant35", value = 7 : i4} : <>, <i4>
    %281:2 = fork [2] %280 {handshake.bb = 7 : ui32, handshake.name = "fork28"} : <i4>
    %283 = extsi %281#0 {handshake.bb = 7 : ui32, handshake.name = "extsi56"} : <i4> to <i8>
    %285 = extsi %281#1 {handshake.bb = 7 : ui32, handshake.name = "extsi57"} : <i4> to <i8>
    %286 = muli %270, %285 {handshake.bb = 7 : ui32, handshake.name = "muli9"} : <i8>
    %287 = trunci %286 {handshake.bb = 7 : ui32, handshake.name = "trunci8"} : <i8> to <i6>
    %288 = addi %254, %287 {handshake.bb = 7 : ui32, handshake.name = "addi7"} : <i6>
    %addressResult_50, %dataResult_51 = load[%288] %2#0 {handshake.bb = 7 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store2" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i6>, <i32>
    %290 = muli %dataResult_51, %261#1 {handshake.bb = 7 : ui32, handshake.name = "muli2"} : <i32>
    %291 = muli %268, %283 {handshake.bb = 7 : ui32, handshake.name = "muli10"} : <i8>
    %292 = trunci %291 {handshake.bb = 7 : ui32, handshake.name = "trunci9"} : <i8> to <i6>
    %293 = addi %256, %292 {handshake.bb = 7 : ui32, handshake.name = "addi8"} : <i6>
    %addressResult_52, %dataResult_53 = store[%293] %290 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"load6" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store2"} : <i6>, <i32>
    %294 = extsi %278 {handshake.bb = 7 : ui32, handshake.name = "extsi22"} : <i1> to <i4>
    %298 = buffer %274#1 {handshake.bb = 7 : ui32, handshake.name = "buffer146", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %300 = mux %334#2 [%294, %trueResult_64] {handshake.bb = 8 : ui32, handshake.name = "mux17"} : <i1>, <i4>
    %301 = buffer %300 {handshake.bb = 8 : ui32, handshake.name = "buffer151", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %302 = buffer %301 {handshake.bb = 8 : ui32, handshake.name = "buffer152", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %303:3 = fork [3] %302 {handshake.bb = 8 : ui32, handshake.name = "fork29"} : <i4>
    %304 = buffer %303#0 {handshake.bb = 8 : ui32, handshake.name = "buffer153", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %305 = extsi %304 {handshake.bb = 8 : ui32, handshake.name = "extsi58"} : <i4> to <i6>
    %307 = extsi %303#1 {handshake.bb = 8 : ui32, handshake.name = "extsi59"} : <i4> to <i5>
    %309 = extsi %303#2 {handshake.bb = 8 : ui32, handshake.name = "extsi60"} : <i4> to <i8>
    %311 = mux %334#3 [%261#0, %trueResult_66] {handshake.bb = 8 : ui32, handshake.name = "mux18"} : <i1>, <i32>
    %313 = mux %334#0 [%266#0, %trueResult_68] {handshake.bb = 8 : ui32, handshake.name = "mux19"} : <i1>, <i4>
    %314 = buffer %313 {handshake.bb = 8 : ui32, handshake.name = "buffer158", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %315 = buffer %314 {handshake.bb = 8 : ui32, handshake.name = "buffer159", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %316:4 = fork [4] %315 {handshake.bb = 8 : ui32, handshake.name = "fork30"} : <i4>
    %317 = buffer %316#1 {handshake.bb = 8 : ui32, handshake.name = "buffer161", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %318 = extsi %317 {handshake.bb = 8 : ui32, handshake.name = "extsi61"} : <i4> to <i8>
    %320 = extsi %316#2 {handshake.bb = 8 : ui32, handshake.name = "extsi62"} : <i4> to <i8>
    %322 = extsi %316#3 {handshake.bb = 8 : ui32, handshake.name = "extsi63"} : <i4> to <i8>
    %324 = mux %334#1 [%252#2, %trueResult_70] {handshake.bb = 8 : ui32, handshake.name = "mux20"} : <i1>, <i4>
    %325 = buffer %324 {handshake.bb = 8 : ui32, handshake.name = "buffer164", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %326 = buffer %325 {handshake.bb = 8 : ui32, handshake.name = "buffer165", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %327:4 = fork [4] %326 {handshake.bb = 8 : ui32, handshake.name = "fork31"} : <i4>
    %328 = buffer %327#0 {handshake.bb = 8 : ui32, handshake.name = "buffer166", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %329 = extsi %328 {handshake.bb = 8 : ui32, handshake.name = "extsi64"} : <i4> to <i6>
    %330 = buffer %327#1 {handshake.bb = 8 : ui32, handshake.name = "buffer167", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %331 = extsi %330 {handshake.bb = 8 : ui32, handshake.name = "extsi65"} : <i4> to <i6>
    %332 = buffer %327#2 {handshake.bb = 8 : ui32, handshake.name = "buffer168", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %333 = extsi %332 {handshake.bb = 8 : ui32, handshake.name = "extsi66"} : <i4> to <i6>
    %result_54, %index_55 = control_merge %298, %trueResult_72  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    %334:4 = fork [4] %index_55 {handshake.bb = 8 : ui32, handshake.name = "fork32"} : <i1>
    %335 = buffer %result_54 {handshake.bb = 8 : ui32, handshake.name = "buffer170", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %336 = buffer %335 {handshake.bb = 8 : ui32, handshake.name = "buffer171", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %337:3 = lazy_fork [3] %336 {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork3"} : <>
    %338 = buffer %337#2 {handshake.bb = 8 : ui32, handshake.name = "buffer177", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %339 = fork [1] %338 {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork33"} : <>
    %340 = source {handshake.bb = 8 : ui32, handshake.name = "source8"} : <>
    %341 = constant %340 {handshake.bb = 8 : ui32, handshake.name = "constant36", value = 7 : i4} : <>, <i4>
    %342:5 = fork [5] %341 {handshake.bb = 8 : ui32, handshake.name = "fork34"} : <i4>
    %343 = buffer %342#0 {handshake.bb = 8 : ui32, handshake.name = "buffer178", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %344 = extsi %343 {handshake.bb = 8 : ui32, handshake.name = "extsi67"} : <i4> to <i8>
    %346 = extsi %342#1 {handshake.bb = 8 : ui32, handshake.name = "extsi68"} : <i4> to <i8>
    %348 = extsi %342#2 {handshake.bb = 8 : ui32, handshake.name = "extsi69"} : <i4> to <i8>
    %350 = extsi %342#3 {handshake.bb = 8 : ui32, handshake.name = "extsi70"} : <i4> to <i5>
    %352 = extsi %342#4 {handshake.bb = 8 : ui32, handshake.name = "extsi71"} : <i4> to <i8>
    %353 = source {handshake.bb = 8 : ui32, handshake.name = "source9"} : <>
    %354 = constant %353 {handshake.bb = 8 : ui32, handshake.name = "constant37", value = 1 : i2} : <>, <i2>
    %355 = extsi %354 {handshake.bb = 8 : ui32, handshake.name = "extsi72"} : <i2> to <i5>
    %356 = muli %322, %348 {handshake.bb = 8 : ui32, handshake.name = "muli11"} : <i8>
    %357 = trunci %356 {handshake.bb = 8 : ui32, handshake.name = "trunci10"} : <i8> to <i6>
    %358 = addi %305, %357 {handshake.bb = 8 : ui32, handshake.name = "addi9"} : <i6>
    %addressResult_56, %dataResult_57 = load[%358] %7#1 {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load4"} : <i6>, <i32>
    %359 = muli %309, %352 {handshake.bb = 8 : ui32, handshake.name = "muli12"} : <i8>
    %360 = trunci %359 {handshake.bb = 8 : ui32, handshake.name = "trunci11"} : <i8> to <i6>
    %361 = addi %329, %360 {handshake.bb = 8 : ui32, handshake.name = "addi10"} : <i6>
    %addressResult_58, %dataResult_59 = load[%361] %outputs {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load5"} : <i6>, <i32>
    %362 = muli %dataResult_57, %dataResult_59 {handshake.bb = 8 : ui32, handshake.name = "muli3"} : <i32>
    %363 = muli %320, %346 {handshake.bb = 8 : ui32, handshake.name = "muli13"} : <i8>
    %364 = trunci %363 {handshake.bb = 8 : ui32, handshake.name = "trunci12"} : <i8> to <i6>
    %365 = addi %331, %364 {handshake.bb = 8 : ui32, handshake.name = "addi11"} : <i6>
    %addressResult_60, %dataResult_61 = load[%365] %2#1 {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load6"} : <i6>, <i32>
    %366 = addi %dataResult_61, %362 {handshake.bb = 8 : ui32, handshake.name = "addi1"} : <i32>
    %367 = muli %318, %344 {handshake.bb = 8 : ui32, handshake.name = "muli14"} : <i8>
    %368 = trunci %367 {handshake.bb = 8 : ui32, handshake.name = "trunci13"} : <i8> to <i6>
    %369 = addi %333, %368 {handshake.bb = 8 : ui32, handshake.name = "addi12"} : <i6>
    %addressResult_62, %dataResult_63 = store[%369] %366 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"load6" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store3"} : <i6>, <i32>
    %370 = addi %307, %355 {handshake.bb = 8 : ui32, handshake.name = "addi17"} : <i5>
    %371:2 = fork [2] %370 {handshake.bb = 8 : ui32, handshake.name = "fork35"} : <i5>
    %373 = trunci %371#0 {handshake.bb = 8 : ui32, handshake.name = "trunci14"} : <i5> to <i4>
    %375 = cmpi ult, %371#1, %350 {handshake.bb = 8 : ui32, handshake.name = "cmpi3"} : <i5>
    %376:5 = fork [5] %375 {handshake.bb = 8 : ui32, handshake.name = "fork36"} : <i1>
    %trueResult_64, %falseResult_65 = cond_br %376#0, %373 {handshake.bb = 8 : ui32, handshake.name = "cond_br22"} : <i1>, <i4>
    sink %falseResult_65 {handshake.name = "sink7"} : <i4>
    %378 = buffer %311 {handshake.bb = 8 : ui32, handshake.name = "buffer156", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %379 = buffer %378 {handshake.bb = 8 : ui32, handshake.name = "buffer157", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_66, %falseResult_67 = cond_br %376#3, %379 {handshake.bb = 8 : ui32, handshake.name = "cond_br23"} : <i1>, <i32>
    %trueResult_68, %falseResult_69 = cond_br %376#1, %316#0 {handshake.bb = 8 : ui32, handshake.name = "cond_br24"} : <i1>, <i4>
    %trueResult_70, %falseResult_71 = cond_br %376#2, %327#3 {handshake.bb = 8 : ui32, handshake.name = "cond_br25"} : <i1>, <i4>
    %385 = buffer %337#1 {handshake.bb = 8 : ui32, handshake.name = "buffer176", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %trueResult_72, %falseResult_73 = cond_br %376#4, %385 {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br26"} : <i1>, <>
    %387 = buffer %falseResult_71 {handshake.bb = 9 : ui32, handshake.name = "buffer194", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %388 = buffer %387 {handshake.bb = 9 : ui32, handshake.name = "buffer195", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %389 = extsi %388 {handshake.bb = 9 : ui32, handshake.name = "extsi73"} : <i4> to <i5>
    %390 = source {handshake.bb = 9 : ui32, handshake.name = "source10"} : <>
    %391 = constant %390 {handshake.bb = 9 : ui32, handshake.name = "constant38", value = 7 : i4} : <>, <i4>
    %392 = extsi %391 {handshake.bb = 9 : ui32, handshake.name = "extsi74"} : <i4> to <i5>
    %393 = source {handshake.bb = 9 : ui32, handshake.name = "source11"} : <>
    %394 = constant %393 {handshake.bb = 9 : ui32, handshake.name = "constant39", value = 1 : i2} : <>, <i2>
    %395 = extsi %394 {handshake.bb = 9 : ui32, handshake.name = "extsi75"} : <i2> to <i5>
    %396 = addi %389, %395 {handshake.bb = 9 : ui32, handshake.name = "addi18"} : <i5>
    %397:2 = fork [2] %396 {handshake.bb = 9 : ui32, handshake.name = "fork37"} : <i5>
    %399 = trunci %397#0 {handshake.bb = 9 : ui32, handshake.name = "trunci15"} : <i5> to <i4>
    %401 = cmpi ult, %397#1, %392 {handshake.bb = 9 : ui32, handshake.name = "cmpi4"} : <i5>
    %402:4 = fork [4] %401 {handshake.bb = 9 : ui32, handshake.name = "fork38"} : <i1>
    %trueResult_74, %falseResult_75 = cond_br %402#0, %399 {handshake.bb = 9 : ui32, handshake.name = "cond_br27"} : <i1>, <i4>
    sink %falseResult_75 {handshake.name = "sink9"} : <i4>
    %404 = buffer %falseResult_67 {handshake.bb = 9 : ui32, handshake.name = "buffer190", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %405 = buffer %404 {handshake.bb = 9 : ui32, handshake.name = "buffer191", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_76, %falseResult_77 = cond_br %402#2, %405 {handshake.bb = 9 : ui32, handshake.name = "cond_br28"} : <i1>, <i32>
    %407 = buffer %falseResult_69 {handshake.bb = 9 : ui32, handshake.name = "buffer192", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %408 = buffer %407 {handshake.bb = 9 : ui32, handshake.name = "buffer193", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %trueResult_78, %falseResult_79 = cond_br %402#1, %408 {handshake.bb = 9 : ui32, handshake.name = "cond_br29"} : <i1>, <i4>
    %410 = buffer %falseResult_73 {handshake.bb = 9 : ui32, handshake.name = "buffer196", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %411 = buffer %410 {handshake.bb = 9 : ui32, handshake.name = "buffer197", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_80, %falseResult_81 = cond_br %402#3, %411 {handshake.bb = 9 : ui32, handshake.name = "cond_br30"} : <i1>, <>
    %413 = buffer %falseResult_79 {handshake.bb = 10 : ui32, handshake.name = "buffer206", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %414 = buffer %413 {handshake.bb = 10 : ui32, handshake.name = "buffer207", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %415 = extsi %414 {handshake.bb = 10 : ui32, handshake.name = "extsi76"} : <i4> to <i5>
    %416 = source {handshake.bb = 10 : ui32, handshake.name = "source12"} : <>
    %417 = constant %416 {handshake.bb = 10 : ui32, handshake.name = "constant40", value = 7 : i4} : <>, <i4>
    %418 = extsi %417 {handshake.bb = 10 : ui32, handshake.name = "extsi77"} : <i4> to <i5>
    %419 = source {handshake.bb = 10 : ui32, handshake.name = "source13"} : <>
    %420 = constant %419 {handshake.bb = 10 : ui32, handshake.name = "constant41", value = 1 : i2} : <>, <i2>
    %421 = extsi %420 {handshake.bb = 10 : ui32, handshake.name = "extsi78"} : <i2> to <i5>
    %422 = addi %415, %421 {handshake.bb = 10 : ui32, handshake.name = "addi19"} : <i5>
    %423:2 = fork [2] %422 {handshake.bb = 10 : ui32, handshake.name = "fork39"} : <i5>
    %425 = trunci %423#0 {handshake.bb = 10 : ui32, handshake.name = "trunci16"} : <i5> to <i4>
    %427 = cmpi ult, %423#1, %418 {handshake.bb = 10 : ui32, handshake.name = "cmpi5"} : <i5>
    %428:3 = fork [3] %427 {handshake.bb = 10 : ui32, handshake.name = "fork40"} : <i1>
    %trueResult_82, %falseResult_83 = cond_br %428#0, %425 {handshake.bb = 10 : ui32, handshake.name = "cond_br31"} : <i1>, <i4>
    sink %falseResult_83 {handshake.name = "sink11"} : <i4>
    %430 = buffer %falseResult_77 {handshake.bb = 10 : ui32, handshake.name = "buffer204", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %431 = buffer %430 {handshake.bb = 10 : ui32, handshake.name = "buffer205", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_84, %falseResult_85 = cond_br %428#1, %431 {handshake.bb = 10 : ui32, handshake.name = "cond_br32"} : <i1>, <i32>
    sink %falseResult_85 {handshake.name = "sink12"} : <i32>
    %433 = buffer %falseResult_81 {handshake.bb = 10 : ui32, handshake.name = "buffer208", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %434 = buffer %433 {handshake.bb = 10 : ui32, handshake.name = "buffer209", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_86, %falseResult_87 = cond_br %428#2, %434 {handshake.bb = 10 : ui32, handshake.name = "cond_br33"} : <i1>, <>
    %436 = buffer %falseResult_87 {handshake.bb = 11 : ui32, handshake.name = "buffer215", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %437 = buffer %436 {handshake.bb = 11 : ui32, handshake.name = "buffer216", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %438:7 = fork [7] %437 {handshake.bb = 11 : ui32, handshake.name = "fork41"} : <>
    %440 = constant %438#6 {handshake.bb = 11 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "constant42", value = 48 : i7} : <>, <i7>
    %441 = trunci %440 {handshake.bb = 11 : ui32, handshake.name = "trunci17"} : <i7> to <i6>
    %addressResult_88, %dataResult_89 = load[%441] %2#2 {handshake.bb = 11 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load7"} : <i6>, <i32>
    end {handshake.bb = 11 : ui32, handshake.name = "end0"} %dataResult_89, %7#2, %memEnd_3, %memEnd_1, %memEnd, %2#3, %0#1 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


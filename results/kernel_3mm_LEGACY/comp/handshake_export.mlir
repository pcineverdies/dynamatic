module {
  handshake.func @kernel_3mm(%arg0: memref<49xi32>, %arg1: memref<49xi32>, %arg2: memref<49xi32>, %arg3: memref<49xi32>, %arg4: memref<49xi32>, %arg5: memref<49xi32>, %arg6: memref<49xi32>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, %arg12: !handshake.control<>, %arg13: !handshake.control<>, %arg14: !handshake.control<>, ...) -> (!handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "B", "C", "D", "E", "F", "G", "A_start", "B_start", "C_start", "D_start", "E_start", "F_start", "G_start", "start"], resNames = ["A_end", "B_end", "C_end", "D_end", "E_end", "F_end", "G_end", "end"]} {
    %0:3 = fork [3] %arg14 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %2:2 = lsq[%arg6 : memref<49xi32>] (%arg13, %394#0, %addressResult_76, %dataResult_77, %449#0, %addressResult_84, %addressResult_86, %dataResult_87, %541#6)  {groupSizes = [1 : i32, 2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "7": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "8": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %4:3 = lsq[%arg5 : memref<49xi32>] (%arg12, %218#0, %addressResult_40, %dataResult_41, %273#0, %addressResult_48, %addressResult_50, %dataResult_51, %451#1, %addressResult_82, %541#5)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "10": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "7": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "8": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "9": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq4"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %6:3 = lsq[%arg4 : memref<49xi32>] (%arg11, %42#0, %addressResult, %dataResult, %97#0, %addressResult_14, %addressResult_16, %dataResult_17, %451#0, %addressResult_80, %541#4)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "10": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "7": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "8": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "9": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq5"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg3 : memref<49xi32>] %arg10 (%addressResult_46) %541#3 {connectedBlocks = [8 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller4"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg2 : memref<49xi32>] %arg9 (%addressResult_44) %541#2 {connectedBlocks = [8 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %outputs_2, %memEnd_3 = mem_controller[%arg1 : memref<49xi32>] %arg8 (%addressResult_12) %541#1 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller6"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %outputs_4, %memEnd_5 = mem_controller[%arg0 : memref<49xi32>] %arg7 (%addressResult_10) %541#0 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller7"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %12 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %13 = extsi %12 {handshake.bb = 0 : ui32, handshake.name = "extsi41"} : <i1> to <i4>
    %15 = mux %index [%13, %trueResult_30] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i4>
    %result, %index = control_merge %0#2, %trueResult_32  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %16 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %17 = buffer %16 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %18:2 = fork [2] %17 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <>
    %20 = constant %18#0 {handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %21 = extsi %20 {handshake.bb = 1 : ui32, handshake.name = "extsi40"} : <i1> to <i4>
    %22 = buffer %15 {handshake.bb = 1 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %23 = buffer %22 {handshake.bb = 1 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %26 = mux %39#1 [%21, %trueResult_24] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i4>
    %27 = buffer %26 {handshake.bb = 2 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %28 = buffer %27 {handshake.bb = 2 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %29:2 = fork [2] %28 {handshake.bb = 2 : ui32, handshake.name = "fork2"} : <i4>
    %31 = extsi %29#0 {handshake.bb = 2 : ui32, handshake.name = "extsi42"} : <i4> to <i6>
    %33 = mux %39#0 [%23, %trueResult_26] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i4>
    %34 = buffer %33 {handshake.bb = 2 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %35 = buffer %34 {handshake.bb = 2 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %36:2 = fork [2] %35 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i4>
    %38 = extsi %36#1 {handshake.bb = 2 : ui32, handshake.name = "extsi43"} : <i4> to <i8>
    %result_6, %index_7 = control_merge %18#1, %trueResult_28  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %39:2 = fork [2] %index_7 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i1>
    %40 = buffer %result_6 {handshake.bb = 2 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %41 = buffer %40 {handshake.bb = 2 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %42:3 = lazy_fork [3] %41 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork0"} : <>
    %43 = buffer %42#2 {handshake.bb = 2 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %44 = fork [1] %43 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork5"} : <>
    %46 = constant %44 {handshake.bb = 2 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %47:2 = fork [2] %46 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i1>
    %49 = extsi %47#1 {handshake.bb = 2 : ui32, handshake.name = "extsi3"} : <i1> to <i32>
    %50 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %51 = constant %50 {handshake.bb = 2 : ui32, handshake.name = "constant36", value = 7 : i4} : <>, <i4>
    %52 = extsi %51 {handshake.bb = 2 : ui32, handshake.name = "extsi44"} : <i4> to <i8>
    %53 = muli %38, %52 {handshake.bb = 2 : ui32, handshake.name = "muli3"} : <i8>
    %54 = trunci %53 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i8> to <i6>
    %55 = addi %31, %54 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i6>
    %addressResult, %dataResult = store[%55] %49 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0]]>, <"store1" (3) [[0, 0], [0, 0]]>, <"load6" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i6>, <i32>
    %57 = extsi %47#0 {handshake.bb = 2 : ui32, handshake.name = "extsi39"} : <i1> to <i4>
    %60 = buffer %42#1 {handshake.bb = 2 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %62 = mux %94#2 [%57, %trueResult] {handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i4>
    %63 = buffer %62 {handshake.bb = 3 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %64 = buffer %63 {handshake.bb = 3 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %65:3 = fork [3] %64 {handshake.bb = 3 : ui32, handshake.name = "fork7"} : <i4>
    %66 = buffer %65#0 {handshake.bb = 3 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %67 = extsi %66 {handshake.bb = 3 : ui32, handshake.name = "extsi45"} : <i4> to <i6>
    %69 = extsi %65#1 {handshake.bb = 3 : ui32, handshake.name = "extsi46"} : <i4> to <i5>
    %71 = extsi %65#2 {handshake.bb = 3 : ui32, handshake.name = "extsi47"} : <i4> to <i8>
    %73 = mux %94#0 [%36#0, %trueResult_18] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i4>
    %74 = buffer %73 {handshake.bb = 3 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %75 = buffer %74 {handshake.bb = 3 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %76:4 = fork [4] %75 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i4>
    %77 = buffer %76#1 {handshake.bb = 3 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %78 = extsi %77 {handshake.bb = 3 : ui32, handshake.name = "extsi48"} : <i4> to <i8>
    %80 = extsi %76#2 {handshake.bb = 3 : ui32, handshake.name = "extsi49"} : <i4> to <i8>
    %82 = extsi %76#3 {handshake.bb = 3 : ui32, handshake.name = "extsi50"} : <i4> to <i8>
    %84 = mux %94#1 [%29#1, %trueResult_20] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i4>
    %85 = buffer %84 {handshake.bb = 3 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %86 = buffer %85 {handshake.bb = 3 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %87:4 = fork [4] %86 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i4>
    %88 = buffer %87#0 {handshake.bb = 3 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %89 = extsi %88 {handshake.bb = 3 : ui32, handshake.name = "extsi51"} : <i4> to <i6>
    %90 = buffer %87#1 {handshake.bb = 3 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %91 = extsi %90 {handshake.bb = 3 : ui32, handshake.name = "extsi52"} : <i4> to <i6>
    %92 = buffer %87#2 {handshake.bb = 3 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %93 = extsi %92 {handshake.bb = 3 : ui32, handshake.name = "extsi53"} : <i4> to <i6>
    %result_8, %index_9 = control_merge %60, %trueResult_22  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %94:3 = fork [3] %index_9 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i1>
    %95 = buffer %result_8 {handshake.bb = 3 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %96 = buffer %95 {handshake.bb = 3 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %97:2 = lazy_fork [2] %96 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork1"} : <>
    %98 = source {handshake.bb = 3 : ui32, handshake.name = "source1"} : <>
    %99 = constant %98 {handshake.bb = 3 : ui32, handshake.name = "constant37", value = 7 : i4} : <>, <i4>
    %100:5 = fork [5] %99 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i4>
    %101 = buffer %100#0 {handshake.bb = 3 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %102 = extsi %101 {handshake.bb = 3 : ui32, handshake.name = "extsi54"} : <i4> to <i8>
    %104 = extsi %100#1 {handshake.bb = 3 : ui32, handshake.name = "extsi55"} : <i4> to <i8>
    %106 = extsi %100#2 {handshake.bb = 3 : ui32, handshake.name = "extsi56"} : <i4> to <i8>
    %108 = extsi %100#3 {handshake.bb = 3 : ui32, handshake.name = "extsi57"} : <i4> to <i5>
    %110 = extsi %100#4 {handshake.bb = 3 : ui32, handshake.name = "extsi58"} : <i4> to <i8>
    %111 = source {handshake.bb = 3 : ui32, handshake.name = "source2"} : <>
    %112 = constant %111 {handshake.bb = 3 : ui32, handshake.name = "constant38", value = 1 : i2} : <>, <i2>
    %113 = extsi %112 {handshake.bb = 3 : ui32, handshake.name = "extsi59"} : <i2> to <i5>
    %114 = muli %82, %106 {handshake.bb = 3 : ui32, handshake.name = "muli4"} : <i8>
    %115 = trunci %114 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i8> to <i6>
    %116 = addi %67, %115 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i6>
    %addressResult_10, %dataResult_11 = load[%116] %outputs_4 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i6>, <i32>
    %117 = muli %71, %110 {handshake.bb = 3 : ui32, handshake.name = "muli5"} : <i8>
    %118 = trunci %117 {handshake.bb = 3 : ui32, handshake.name = "trunci2"} : <i8> to <i6>
    %119 = addi %89, %118 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i6>
    %addressResult_12, %dataResult_13 = load[%119] %outputs_2 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i6>, <i32>
    %120 = muli %dataResult_11, %dataResult_13 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %121 = muli %80, %104 {handshake.bb = 3 : ui32, handshake.name = "muli6"} : <i8>
    %122 = trunci %121 {handshake.bb = 3 : ui32, handshake.name = "trunci3"} : <i8> to <i6>
    %123 = addi %91, %122 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i6>
    %addressResult_14, %dataResult_15 = load[%123] %6#0 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load2"} : <i6>, <i32>
    %124 = addi %dataResult_15, %120 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %125 = muli %78, %102 {handshake.bb = 3 : ui32, handshake.name = "muli7"} : <i8>
    %126 = trunci %125 {handshake.bb = 3 : ui32, handshake.name = "trunci4"} : <i8> to <i6>
    %127 = addi %93, %126 {handshake.bb = 3 : ui32, handshake.name = "addi7"} : <i6>
    %addressResult_16, %dataResult_17 = store[%127] %124 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"load6" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i6>, <i32>
    %128 = addi %69, %113 {handshake.bb = 3 : ui32, handshake.name = "addi18"} : <i5>
    %129:2 = fork [2] %128 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i5>
    %131 = trunci %129#0 {handshake.bb = 3 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %133 = cmpi ult, %129#1, %108 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i5>
    %134:4 = fork [4] %133 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i1>
    %trueResult, %falseResult = cond_br %134#0, %131 {handshake.bb = 3 : ui32, handshake.name = "cond_br9"} : <i1>, <i4>
    sink %falseResult {handshake.name = "sink0"} : <i4>
    %trueResult_18, %falseResult_19 = cond_br %134#1, %76#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br10"} : <i1>, <i4>
    %trueResult_20, %falseResult_21 = cond_br %134#2, %87#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br11"} : <i1>, <i4>
    %140 = buffer %97#1 {handshake.bb = 3 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %trueResult_22, %falseResult_23 = cond_br %134#3, %140 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br12"} : <i1>, <>
    %142 = buffer %falseResult_21 {handshake.bb = 4 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %143 = buffer %142 {handshake.bb = 4 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %144 = extsi %143 {handshake.bb = 4 : ui32, handshake.name = "extsi60"} : <i4> to <i5>
    %145 = source {handshake.bb = 4 : ui32, handshake.name = "source3"} : <>
    %146 = constant %145 {handshake.bb = 4 : ui32, handshake.name = "constant39", value = 7 : i4} : <>, <i4>
    %147 = extsi %146 {handshake.bb = 4 : ui32, handshake.name = "extsi61"} : <i4> to <i5>
    %148 = source {handshake.bb = 4 : ui32, handshake.name = "source4"} : <>
    %149 = constant %148 {handshake.bb = 4 : ui32, handshake.name = "constant40", value = 1 : i2} : <>, <i2>
    %150 = extsi %149 {handshake.bb = 4 : ui32, handshake.name = "extsi62"} : <i2> to <i5>
    %151 = addi %144, %150 {handshake.bb = 4 : ui32, handshake.name = "addi19"} : <i5>
    %152:2 = fork [2] %151 {handshake.bb = 4 : ui32, handshake.name = "fork14"} : <i5>
    %154 = trunci %152#0 {handshake.bb = 4 : ui32, handshake.name = "trunci6"} : <i5> to <i4>
    %156 = cmpi ult, %152#1, %147 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i5>
    %157:3 = fork [3] %156 {handshake.bb = 4 : ui32, handshake.name = "fork15"} : <i1>
    %trueResult_24, %falseResult_25 = cond_br %157#0, %154 {handshake.bb = 4 : ui32, handshake.name = "cond_br13"} : <i1>, <i4>
    sink %falseResult_25 {handshake.name = "sink2"} : <i4>
    %159 = buffer %falseResult_19 {handshake.bb = 4 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %160 = buffer %159 {handshake.bb = 4 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %trueResult_26, %falseResult_27 = cond_br %157#1, %160 {handshake.bb = 4 : ui32, handshake.name = "cond_br14"} : <i1>, <i4>
    %162 = buffer %falseResult_23 {handshake.bb = 4 : ui32, handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %163 = buffer %162 {handshake.bb = 4 : ui32, handshake.name = "buffer65", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_28, %falseResult_29 = cond_br %157#2, %163 {handshake.bb = 4 : ui32, handshake.name = "cond_br15"} : <i1>, <>
    %165 = buffer %falseResult_27 {handshake.bb = 5 : ui32, handshake.name = "buffer71", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %166 = buffer %165 {handshake.bb = 5 : ui32, handshake.name = "buffer72", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %167 = extsi %166 {handshake.bb = 5 : ui32, handshake.name = "extsi63"} : <i4> to <i5>
    %168 = buffer %falseResult_29 {handshake.bb = 5 : ui32, handshake.name = "buffer73", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %169 = buffer %168 {handshake.bb = 5 : ui32, handshake.name = "buffer74", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %170:2 = fork [2] %169 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <>
    %172 = constant %170#0 {handshake.bb = 5 : ui32, handshake.name = "constant41", value = false} : <>, <i1>
    %173 = source {handshake.bb = 5 : ui32, handshake.name = "source5"} : <>
    %174 = constant %173 {handshake.bb = 5 : ui32, handshake.name = "constant42", value = 7 : i4} : <>, <i4>
    %175 = extsi %174 {handshake.bb = 5 : ui32, handshake.name = "extsi64"} : <i4> to <i5>
    %176 = source {handshake.bb = 5 : ui32, handshake.name = "source6"} : <>
    %177 = constant %176 {handshake.bb = 5 : ui32, handshake.name = "constant43", value = 1 : i2} : <>, <i2>
    %178 = extsi %177 {handshake.bb = 5 : ui32, handshake.name = "extsi65"} : <i2> to <i5>
    %179 = addi %167, %178 {handshake.bb = 5 : ui32, handshake.name = "addi20"} : <i5>
    %180:2 = fork [2] %179 {handshake.bb = 5 : ui32, handshake.name = "fork17"} : <i5>
    %182 = trunci %180#0 {handshake.bb = 5 : ui32, handshake.name = "trunci7"} : <i5> to <i4>
    %184 = cmpi ult, %180#1, %175 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i5>
    %185:3 = fork [3] %184 {handshake.bb = 5 : ui32, handshake.name = "fork18"} : <i1>
    %trueResult_30, %falseResult_31 = cond_br %185#0, %182 {handshake.bb = 5 : ui32, handshake.name = "cond_br16"} : <i1>, <i4>
    sink %falseResult_31 {handshake.name = "sink4"} : <i4>
    %trueResult_32, %falseResult_33 = cond_br %185#1, %170#1 {handshake.bb = 5 : ui32, handshake.name = "cond_br17"} : <i1>, <>
    %trueResult_34, %falseResult_35 = cond_br %185#2, %172 {handshake.bb = 5 : ui32, handshake.name = "cond_br18"} : <i1>, <i1>
    sink %trueResult_34 {handshake.name = "sink5"} : <i1>
    %190 = extsi %falseResult_35 {handshake.bb = 5 : ui32, handshake.name = "extsi38"} : <i1> to <i4>
    %191 = mux %index_37 [%190, %trueResult_66] {handshake.bb = 6 : ui32, handshake.name = "mux6"} : <i1>, <i4>
    %result_36, %index_37 = control_merge %falseResult_33, %trueResult_68  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    %192 = buffer %result_36 {handshake.bb = 6 : ui32, handshake.name = "buffer84", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %193 = buffer %192 {handshake.bb = 6 : ui32, handshake.name = "buffer85", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %194:2 = fork [2] %193 {handshake.bb = 6 : ui32, handshake.name = "fork19"} : <>
    %196 = constant %194#0 {handshake.bb = 6 : ui32, handshake.name = "constant44", value = false} : <>, <i1>
    %197 = extsi %196 {handshake.bb = 6 : ui32, handshake.name = "extsi37"} : <i1> to <i4>
    %198 = buffer %191 {handshake.bb = 6 : ui32, handshake.name = "buffer82", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %199 = buffer %198 {handshake.bb = 6 : ui32, handshake.name = "buffer83", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %202 = mux %215#1 [%197, %trueResult_60] {handshake.bb = 7 : ui32, handshake.name = "mux7"} : <i1>, <i4>
    %203 = buffer %202 {handshake.bb = 7 : ui32, handshake.name = "buffer88", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %204 = buffer %203 {handshake.bb = 7 : ui32, handshake.name = "buffer89", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %205:2 = fork [2] %204 {handshake.bb = 7 : ui32, handshake.name = "fork20"} : <i4>
    %207 = extsi %205#0 {handshake.bb = 7 : ui32, handshake.name = "extsi66"} : <i4> to <i6>
    %209 = mux %215#0 [%199, %trueResult_62] {handshake.bb = 7 : ui32, handshake.name = "mux8"} : <i1>, <i4>
    %210 = buffer %209 {handshake.bb = 7 : ui32, handshake.name = "buffer92", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %211 = buffer %210 {handshake.bb = 7 : ui32, handshake.name = "buffer93", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %212:2 = fork [2] %211 {handshake.bb = 7 : ui32, handshake.name = "fork21"} : <i4>
    %214 = extsi %212#1 {handshake.bb = 7 : ui32, handshake.name = "extsi67"} : <i4> to <i8>
    %result_38, %index_39 = control_merge %194#1, %trueResult_64  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %215:2 = fork [2] %index_39 {handshake.bb = 7 : ui32, handshake.name = "fork22"} : <i1>
    %216 = buffer %result_38 {handshake.bb = 7 : ui32, handshake.name = "buffer96", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %217 = buffer %216 {handshake.bb = 7 : ui32, handshake.name = "buffer97", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %218:3 = lazy_fork [3] %217 {handshake.bb = 7 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork2"} : <>
    %219 = buffer %218#2 {handshake.bb = 7 : ui32, handshake.name = "buffer101", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %220 = fork [1] %219 {handshake.bb = 7 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork23"} : <>
    %222 = constant %220 {handshake.bb = 7 : ui32, handshake.name = "constant45", value = false} : <>, <i1>
    %223:2 = fork [2] %222 {handshake.bb = 7 : ui32, handshake.name = "fork24"} : <i1>
    %225 = extsi %223#1 {handshake.bb = 7 : ui32, handshake.name = "extsi14"} : <i1> to <i32>
    %226 = source {handshake.bb = 7 : ui32, handshake.name = "source7"} : <>
    %227 = constant %226 {handshake.bb = 7 : ui32, handshake.name = "constant46", value = 7 : i4} : <>, <i4>
    %228 = extsi %227 {handshake.bb = 7 : ui32, handshake.name = "extsi68"} : <i4> to <i8>
    %229 = muli %214, %228 {handshake.bb = 7 : ui32, handshake.name = "muli8"} : <i8>
    %230 = trunci %229 {handshake.bb = 7 : ui32, handshake.name = "trunci8"} : <i8> to <i6>
    %231 = addi %207, %230 {handshake.bb = 7 : ui32, handshake.name = "addi8"} : <i6>
    %addressResult_40, %dataResult_41 = store[%231] %225 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"load5" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store2"} : <i6>, <i32>
    %233 = extsi %223#0 {handshake.bb = 7 : ui32, handshake.name = "extsi36"} : <i1> to <i4>
    %236 = buffer %218#1 {handshake.bb = 7 : ui32, handshake.name = "buffer100", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %238 = mux %270#2 [%233, %trueResult_52] {handshake.bb = 8 : ui32, handshake.name = "mux9"} : <i1>, <i4>
    %239 = buffer %238 {handshake.bb = 8 : ui32, handshake.name = "buffer105", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %240 = buffer %239 {handshake.bb = 8 : ui32, handshake.name = "buffer106", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %241:3 = fork [3] %240 {handshake.bb = 8 : ui32, handshake.name = "fork25"} : <i4>
    %242 = buffer %241#0 {handshake.bb = 8 : ui32, handshake.name = "buffer107", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %243 = extsi %242 {handshake.bb = 8 : ui32, handshake.name = "extsi69"} : <i4> to <i6>
    %245 = extsi %241#1 {handshake.bb = 8 : ui32, handshake.name = "extsi70"} : <i4> to <i5>
    %247 = extsi %241#2 {handshake.bb = 8 : ui32, handshake.name = "extsi71"} : <i4> to <i8>
    %249 = mux %270#0 [%212#0, %trueResult_54] {handshake.bb = 8 : ui32, handshake.name = "mux10"} : <i1>, <i4>
    %250 = buffer %249 {handshake.bb = 8 : ui32, handshake.name = "buffer110", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %251 = buffer %250 {handshake.bb = 8 : ui32, handshake.name = "buffer111", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %252:4 = fork [4] %251 {handshake.bb = 8 : ui32, handshake.name = "fork26"} : <i4>
    %253 = buffer %252#1 {handshake.bb = 8 : ui32, handshake.name = "buffer113", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %254 = extsi %253 {handshake.bb = 8 : ui32, handshake.name = "extsi72"} : <i4> to <i8>
    %256 = extsi %252#2 {handshake.bb = 8 : ui32, handshake.name = "extsi73"} : <i4> to <i8>
    %258 = extsi %252#3 {handshake.bb = 8 : ui32, handshake.name = "extsi74"} : <i4> to <i8>
    %260 = mux %270#1 [%205#1, %trueResult_56] {handshake.bb = 8 : ui32, handshake.name = "mux11"} : <i1>, <i4>
    %261 = buffer %260 {handshake.bb = 8 : ui32, handshake.name = "buffer116", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %262 = buffer %261 {handshake.bb = 8 : ui32, handshake.name = "buffer117", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %263:4 = fork [4] %262 {handshake.bb = 8 : ui32, handshake.name = "fork27"} : <i4>
    %264 = buffer %263#0 {handshake.bb = 8 : ui32, handshake.name = "buffer118", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %265 = extsi %264 {handshake.bb = 8 : ui32, handshake.name = "extsi75"} : <i4> to <i6>
    %266 = buffer %263#1 {handshake.bb = 8 : ui32, handshake.name = "buffer119", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %267 = extsi %266 {handshake.bb = 8 : ui32, handshake.name = "extsi76"} : <i4> to <i6>
    %268 = buffer %263#2 {handshake.bb = 8 : ui32, handshake.name = "buffer120", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %269 = extsi %268 {handshake.bb = 8 : ui32, handshake.name = "extsi77"} : <i4> to <i6>
    %result_42, %index_43 = control_merge %236, %trueResult_58  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    %270:3 = fork [3] %index_43 {handshake.bb = 8 : ui32, handshake.name = "fork28"} : <i1>
    %271 = buffer %result_42 {handshake.bb = 8 : ui32, handshake.name = "buffer122", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %272 = buffer %271 {handshake.bb = 8 : ui32, handshake.name = "buffer123", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %273:2 = lazy_fork [2] %272 {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork3"} : <>
    %274 = source {handshake.bb = 8 : ui32, handshake.name = "source8"} : <>
    %275 = constant %274 {handshake.bb = 8 : ui32, handshake.name = "constant47", value = 7 : i4} : <>, <i4>
    %276:5 = fork [5] %275 {handshake.bb = 8 : ui32, handshake.name = "fork29"} : <i4>
    %277 = buffer %276#0 {handshake.bb = 8 : ui32, handshake.name = "buffer128", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %278 = extsi %277 {handshake.bb = 8 : ui32, handshake.name = "extsi78"} : <i4> to <i8>
    %280 = extsi %276#1 {handshake.bb = 8 : ui32, handshake.name = "extsi79"} : <i4> to <i8>
    %282 = extsi %276#2 {handshake.bb = 8 : ui32, handshake.name = "extsi80"} : <i4> to <i8>
    %284 = extsi %276#3 {handshake.bb = 8 : ui32, handshake.name = "extsi81"} : <i4> to <i5>
    %286 = extsi %276#4 {handshake.bb = 8 : ui32, handshake.name = "extsi82"} : <i4> to <i8>
    %287 = source {handshake.bb = 8 : ui32, handshake.name = "source9"} : <>
    %288 = constant %287 {handshake.bb = 8 : ui32, handshake.name = "constant48", value = 1 : i2} : <>, <i2>
    %289 = extsi %288 {handshake.bb = 8 : ui32, handshake.name = "extsi83"} : <i2> to <i5>
    %290 = muli %258, %282 {handshake.bb = 8 : ui32, handshake.name = "muli9"} : <i8>
    %291 = trunci %290 {handshake.bb = 8 : ui32, handshake.name = "trunci9"} : <i8> to <i6>
    %292 = addi %243, %291 {handshake.bb = 8 : ui32, handshake.name = "addi9"} : <i6>
    %addressResult_44, %dataResult_45 = load[%292] %outputs_0 {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load3"} : <i6>, <i32>
    %293 = muli %247, %286 {handshake.bb = 8 : ui32, handshake.name = "muli10"} : <i8>
    %294 = trunci %293 {handshake.bb = 8 : ui32, handshake.name = "trunci10"} : <i8> to <i6>
    %295 = addi %265, %294 {handshake.bb = 8 : ui32, handshake.name = "addi10"} : <i6>
    %addressResult_46, %dataResult_47 = load[%295] %outputs {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i6>, <i32>
    %296 = muli %dataResult_45, %dataResult_47 {handshake.bb = 8 : ui32, handshake.name = "muli1"} : <i32>
    %297 = muli %256, %280 {handshake.bb = 8 : ui32, handshake.name = "muli11"} : <i8>
    %298 = trunci %297 {handshake.bb = 8 : ui32, handshake.name = "trunci11"} : <i8> to <i6>
    %299 = addi %267, %298 {handshake.bb = 8 : ui32, handshake.name = "addi11"} : <i6>
    %addressResult_48, %dataResult_49 = load[%299] %4#0 {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load5"} : <i6>, <i32>
    %300 = addi %dataResult_49, %296 {handshake.bb = 8 : ui32, handshake.name = "addi1"} : <i32>
    %301 = muli %254, %278 {handshake.bb = 8 : ui32, handshake.name = "muli12"} : <i8>
    %302 = trunci %301 {handshake.bb = 8 : ui32, handshake.name = "trunci12"} : <i8> to <i6>
    %303 = addi %269, %302 {handshake.bb = 8 : ui32, handshake.name = "addi12"} : <i6>
    %addressResult_50, %dataResult_51 = store[%303] %300 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"load5" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store3"} : <i6>, <i32>
    %304 = addi %245, %289 {handshake.bb = 8 : ui32, handshake.name = "addi21"} : <i5>
    %305:2 = fork [2] %304 {handshake.bb = 8 : ui32, handshake.name = "fork30"} : <i5>
    %307 = trunci %305#0 {handshake.bb = 8 : ui32, handshake.name = "trunci13"} : <i5> to <i4>
    %309 = cmpi ult, %305#1, %284 {handshake.bb = 8 : ui32, handshake.name = "cmpi3"} : <i5>
    %310:4 = fork [4] %309 {handshake.bb = 8 : ui32, handshake.name = "fork31"} : <i1>
    %trueResult_52, %falseResult_53 = cond_br %310#0, %307 {handshake.bb = 8 : ui32, handshake.name = "cond_br19"} : <i1>, <i4>
    sink %falseResult_53 {handshake.name = "sink6"} : <i4>
    %trueResult_54, %falseResult_55 = cond_br %310#1, %252#0 {handshake.bb = 8 : ui32, handshake.name = "cond_br20"} : <i1>, <i4>
    %trueResult_56, %falseResult_57 = cond_br %310#2, %263#3 {handshake.bb = 8 : ui32, handshake.name = "cond_br21"} : <i1>, <i4>
    %316 = buffer %273#1 {handshake.bb = 8 : ui32, handshake.name = "buffer127", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %trueResult_58, %falseResult_59 = cond_br %310#3, %316 {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br22"} : <i1>, <>
    %318 = buffer %falseResult_57 {handshake.bb = 9 : ui32, handshake.name = "buffer141", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %319 = buffer %318 {handshake.bb = 9 : ui32, handshake.name = "buffer142", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %320 = extsi %319 {handshake.bb = 9 : ui32, handshake.name = "extsi84"} : <i4> to <i5>
    %321 = source {handshake.bb = 9 : ui32, handshake.name = "source10"} : <>
    %322 = constant %321 {handshake.bb = 9 : ui32, handshake.name = "constant49", value = 7 : i4} : <>, <i4>
    %323 = extsi %322 {handshake.bb = 9 : ui32, handshake.name = "extsi85"} : <i4> to <i5>
    %324 = source {handshake.bb = 9 : ui32, handshake.name = "source11"} : <>
    %325 = constant %324 {handshake.bb = 9 : ui32, handshake.name = "constant50", value = 1 : i2} : <>, <i2>
    %326 = extsi %325 {handshake.bb = 9 : ui32, handshake.name = "extsi86"} : <i2> to <i5>
    %327 = addi %320, %326 {handshake.bb = 9 : ui32, handshake.name = "addi22"} : <i5>
    %328:2 = fork [2] %327 {handshake.bb = 9 : ui32, handshake.name = "fork32"} : <i5>
    %330 = trunci %328#0 {handshake.bb = 9 : ui32, handshake.name = "trunci14"} : <i5> to <i4>
    %332 = cmpi ult, %328#1, %323 {handshake.bb = 9 : ui32, handshake.name = "cmpi4"} : <i5>
    %333:3 = fork [3] %332 {handshake.bb = 9 : ui32, handshake.name = "fork33"} : <i1>
    %trueResult_60, %falseResult_61 = cond_br %333#0, %330 {handshake.bb = 9 : ui32, handshake.name = "cond_br23"} : <i1>, <i4>
    sink %falseResult_61 {handshake.name = "sink8"} : <i4>
    %335 = buffer %falseResult_55 {handshake.bb = 9 : ui32, handshake.name = "buffer139", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %336 = buffer %335 {handshake.bb = 9 : ui32, handshake.name = "buffer140", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %trueResult_62, %falseResult_63 = cond_br %333#1, %336 {handshake.bb = 9 : ui32, handshake.name = "cond_br24"} : <i1>, <i4>
    %338 = buffer %falseResult_59 {handshake.bb = 9 : ui32, handshake.name = "buffer143", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %339 = buffer %338 {handshake.bb = 9 : ui32, handshake.name = "buffer144", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_64, %falseResult_65 = cond_br %333#2, %339 {handshake.bb = 9 : ui32, handshake.name = "cond_br25"} : <i1>, <>
    %341 = buffer %falseResult_63 {handshake.bb = 10 : ui32, handshake.name = "buffer150", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %342 = buffer %341 {handshake.bb = 10 : ui32, handshake.name = "buffer151", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %343 = extsi %342 {handshake.bb = 10 : ui32, handshake.name = "extsi87"} : <i4> to <i5>
    %344 = buffer %falseResult_65 {handshake.bb = 10 : ui32, handshake.name = "buffer152", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %345 = buffer %344 {handshake.bb = 10 : ui32, handshake.name = "buffer153", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %346:2 = fork [2] %345 {handshake.bb = 10 : ui32, handshake.name = "fork34"} : <>
    %348 = constant %346#0 {handshake.bb = 10 : ui32, handshake.name = "constant51", value = false} : <>, <i1>
    %349 = source {handshake.bb = 10 : ui32, handshake.name = "source12"} : <>
    %350 = constant %349 {handshake.bb = 10 : ui32, handshake.name = "constant52", value = 7 : i4} : <>, <i4>
    %351 = extsi %350 {handshake.bb = 10 : ui32, handshake.name = "extsi88"} : <i4> to <i5>
    %352 = source {handshake.bb = 10 : ui32, handshake.name = "source13"} : <>
    %353 = constant %352 {handshake.bb = 10 : ui32, handshake.name = "constant53", value = 1 : i2} : <>, <i2>
    %354 = extsi %353 {handshake.bb = 10 : ui32, handshake.name = "extsi89"} : <i2> to <i5>
    %355 = addi %343, %354 {handshake.bb = 10 : ui32, handshake.name = "addi23"} : <i5>
    %356:2 = fork [2] %355 {handshake.bb = 10 : ui32, handshake.name = "fork35"} : <i5>
    %358 = trunci %356#0 {handshake.bb = 10 : ui32, handshake.name = "trunci15"} : <i5> to <i4>
    %360 = cmpi ult, %356#1, %351 {handshake.bb = 10 : ui32, handshake.name = "cmpi5"} : <i5>
    %361:3 = fork [3] %360 {handshake.bb = 10 : ui32, handshake.name = "fork36"} : <i1>
    %trueResult_66, %falseResult_67 = cond_br %361#0, %358 {handshake.bb = 10 : ui32, handshake.name = "cond_br26"} : <i1>, <i4>
    sink %falseResult_67 {handshake.name = "sink10"} : <i4>
    %trueResult_68, %falseResult_69 = cond_br %361#1, %346#1 {handshake.bb = 10 : ui32, handshake.name = "cond_br27"} : <i1>, <>
    %trueResult_70, %falseResult_71 = cond_br %361#2, %348 {handshake.bb = 10 : ui32, handshake.name = "cond_br28"} : <i1>, <i1>
    sink %trueResult_70 {handshake.name = "sink11"} : <i1>
    %366 = extsi %falseResult_71 {handshake.bb = 10 : ui32, handshake.name = "extsi35"} : <i1> to <i4>
    %367 = mux %index_73 [%366, %trueResult_102] {handshake.bb = 11 : ui32, handshake.name = "mux12"} : <i1>, <i4>
    %result_72, %index_73 = control_merge %falseResult_69, %trueResult_104  {handshake.bb = 11 : ui32, handshake.name = "control_merge10"} : <>, <i1>
    %368 = buffer %result_72 {handshake.bb = 11 : ui32, handshake.name = "buffer163", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %369 = buffer %368 {handshake.bb = 11 : ui32, handshake.name = "buffer164", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %370:2 = fork [2] %369 {handshake.bb = 11 : ui32, handshake.name = "fork37"} : <>
    %372 = constant %370#0 {handshake.bb = 11 : ui32, handshake.name = "constant54", value = false} : <>, <i1>
    %373 = extsi %372 {handshake.bb = 11 : ui32, handshake.name = "extsi34"} : <i1> to <i4>
    %374 = buffer %367 {handshake.bb = 11 : ui32, handshake.name = "buffer161", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %375 = buffer %374 {handshake.bb = 11 : ui32, handshake.name = "buffer162", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %378 = mux %391#1 [%373, %trueResult_96] {handshake.bb = 12 : ui32, handshake.name = "mux13"} : <i1>, <i4>
    %379 = buffer %378 {handshake.bb = 12 : ui32, handshake.name = "buffer167", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %380 = buffer %379 {handshake.bb = 12 : ui32, handshake.name = "buffer168", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %381:2 = fork [2] %380 {handshake.bb = 12 : ui32, handshake.name = "fork38"} : <i4>
    %383 = extsi %381#0 {handshake.bb = 12 : ui32, handshake.name = "extsi90"} : <i4> to <i6>
    %385 = mux %391#0 [%375, %trueResult_98] {handshake.bb = 12 : ui32, handshake.name = "mux14"} : <i1>, <i4>
    %386 = buffer %385 {handshake.bb = 12 : ui32, handshake.name = "buffer171", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %387 = buffer %386 {handshake.bb = 12 : ui32, handshake.name = "buffer172", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %388:2 = fork [2] %387 {handshake.bb = 12 : ui32, handshake.name = "fork39"} : <i4>
    %390 = extsi %388#1 {handshake.bb = 12 : ui32, handshake.name = "extsi91"} : <i4> to <i8>
    %result_74, %index_75 = control_merge %370#1, %trueResult_100  {handshake.bb = 12 : ui32, handshake.name = "control_merge11"} : <>, <i1>
    %391:2 = fork [2] %index_75 {handshake.bb = 12 : ui32, handshake.name = "fork40"} : <i1>
    %392 = buffer %result_74 {handshake.bb = 12 : ui32, handshake.name = "buffer175", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %393 = buffer %392 {handshake.bb = 12 : ui32, handshake.name = "buffer176", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %394:3 = lazy_fork [3] %393 {handshake.bb = 12 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork4"} : <>
    %395 = buffer %394#2 {handshake.bb = 12 : ui32, handshake.name = "buffer180", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %396 = fork [1] %395 {handshake.bb = 12 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork41"} : <>
    %398 = constant %396 {handshake.bb = 12 : ui32, handshake.name = "constant55", value = false} : <>, <i1>
    %399:2 = fork [2] %398 {handshake.bb = 12 : ui32, handshake.name = "fork42"} : <i1>
    %401 = extsi %399#1 {handshake.bb = 12 : ui32, handshake.name = "extsi25"} : <i1> to <i32>
    %402 = source {handshake.bb = 12 : ui32, handshake.name = "source14"} : <>
    %403 = constant %402 {handshake.bb = 12 : ui32, handshake.name = "constant56", value = 7 : i4} : <>, <i4>
    %404 = extsi %403 {handshake.bb = 12 : ui32, handshake.name = "extsi92"} : <i4> to <i8>
    %405 = muli %390, %404 {handshake.bb = 12 : ui32, handshake.name = "muli13"} : <i8>
    %406 = trunci %405 {handshake.bb = 12 : ui32, handshake.name = "trunci16"} : <i8> to <i6>
    %407 = addi %383, %406 {handshake.bb = 12 : ui32, handshake.name = "addi13"} : <i6>
    %addressResult_76, %dataResult_77 = store[%407] %401 {handshake.bb = 12 : ui32, handshake.deps = #handshake<deps[<"load8" (3) [[0, 0], [0, 0]]>, <"store5" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store4"} : <i6>, <i32>
    %409 = extsi %399#0 {handshake.bb = 12 : ui32, handshake.name = "extsi33"} : <i1> to <i4>
    %412 = buffer %394#1 {handshake.bb = 12 : ui32, handshake.name = "buffer179", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %414 = mux %446#2 [%409, %trueResult_88] {handshake.bb = 13 : ui32, handshake.name = "mux15"} : <i1>, <i4>
    %415 = buffer %414 {handshake.bb = 13 : ui32, handshake.name = "buffer184", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %416 = buffer %415 {handshake.bb = 13 : ui32, handshake.name = "buffer185", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %417:3 = fork [3] %416 {handshake.bb = 13 : ui32, handshake.name = "fork43"} : <i4>
    %418 = buffer %417#0 {handshake.bb = 13 : ui32, handshake.name = "buffer186", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %419 = extsi %418 {handshake.bb = 13 : ui32, handshake.name = "extsi93"} : <i4> to <i6>
    %421 = extsi %417#1 {handshake.bb = 13 : ui32, handshake.name = "extsi94"} : <i4> to <i5>
    %423 = extsi %417#2 {handshake.bb = 13 : ui32, handshake.name = "extsi95"} : <i4> to <i8>
    %425 = mux %446#0 [%388#0, %trueResult_90] {handshake.bb = 13 : ui32, handshake.name = "mux16"} : <i1>, <i4>
    %426 = buffer %425 {handshake.bb = 13 : ui32, handshake.name = "buffer189", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %427 = buffer %426 {handshake.bb = 13 : ui32, handshake.name = "buffer190", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %428:4 = fork [4] %427 {handshake.bb = 13 : ui32, handshake.name = "fork44"} : <i4>
    %429 = buffer %428#1 {handshake.bb = 13 : ui32, handshake.name = "buffer192", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %430 = extsi %429 {handshake.bb = 13 : ui32, handshake.name = "extsi96"} : <i4> to <i8>
    %432 = extsi %428#2 {handshake.bb = 13 : ui32, handshake.name = "extsi97"} : <i4> to <i8>
    %434 = extsi %428#3 {handshake.bb = 13 : ui32, handshake.name = "extsi98"} : <i4> to <i8>
    %436 = mux %446#1 [%381#1, %trueResult_92] {handshake.bb = 13 : ui32, handshake.name = "mux17"} : <i1>, <i4>
    %437 = buffer %436 {handshake.bb = 13 : ui32, handshake.name = "buffer195", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %438 = buffer %437 {handshake.bb = 13 : ui32, handshake.name = "buffer196", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %439:4 = fork [4] %438 {handshake.bb = 13 : ui32, handshake.name = "fork45"} : <i4>
    %440 = buffer %439#0 {handshake.bb = 13 : ui32, handshake.name = "buffer197", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %441 = extsi %440 {handshake.bb = 13 : ui32, handshake.name = "extsi99"} : <i4> to <i6>
    %442 = buffer %439#1 {handshake.bb = 13 : ui32, handshake.name = "buffer198", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %443 = extsi %442 {handshake.bb = 13 : ui32, handshake.name = "extsi100"} : <i4> to <i6>
    %444 = buffer %439#2 {handshake.bb = 13 : ui32, handshake.name = "buffer199", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %445 = extsi %444 {handshake.bb = 13 : ui32, handshake.name = "extsi101"} : <i4> to <i6>
    %result_78, %index_79 = control_merge %412, %trueResult_94  {handshake.bb = 13 : ui32, handshake.name = "control_merge12"} : <>, <i1>
    %446:3 = fork [3] %index_79 {handshake.bb = 13 : ui32, handshake.name = "fork46"} : <i1>
    %447 = buffer %result_78 {handshake.bb = 13 : ui32, handshake.name = "buffer201", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %448 = buffer %447 {handshake.bb = 13 : ui32, handshake.name = "buffer202", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %449:3 = lazy_fork [3] %448 {handshake.bb = 13 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork5"} : <>
    %450 = buffer %449#2 {handshake.bb = 13 : ui32, handshake.name = "buffer207", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %451:2 = fork [2] %450 {handshake.bb = 13 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork47"} : <>
    %452 = source {handshake.bb = 13 : ui32, handshake.name = "source15"} : <>
    %453 = constant %452 {handshake.bb = 13 : ui32, handshake.name = "constant57", value = 7 : i4} : <>, <i4>
    %454:5 = fork [5] %453 {handshake.bb = 13 : ui32, handshake.name = "fork48"} : <i4>
    %455 = buffer %454#0 {handshake.bb = 13 : ui32, handshake.name = "buffer208", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %456 = extsi %455 {handshake.bb = 13 : ui32, handshake.name = "extsi102"} : <i4> to <i8>
    %458 = extsi %454#1 {handshake.bb = 13 : ui32, handshake.name = "extsi103"} : <i4> to <i8>
    %460 = extsi %454#2 {handshake.bb = 13 : ui32, handshake.name = "extsi104"} : <i4> to <i8>
    %462 = extsi %454#3 {handshake.bb = 13 : ui32, handshake.name = "extsi105"} : <i4> to <i5>
    %464 = extsi %454#4 {handshake.bb = 13 : ui32, handshake.name = "extsi106"} : <i4> to <i8>
    %465 = source {handshake.bb = 13 : ui32, handshake.name = "source16"} : <>
    %466 = constant %465 {handshake.bb = 13 : ui32, handshake.name = "constant58", value = 1 : i2} : <>, <i2>
    %467 = extsi %466 {handshake.bb = 13 : ui32, handshake.name = "extsi107"} : <i2> to <i5>
    %468 = muli %434, %460 {handshake.bb = 13 : ui32, handshake.name = "muli14"} : <i8>
    %469 = trunci %468 {handshake.bb = 13 : ui32, handshake.name = "trunci17"} : <i8> to <i6>
    %470 = addi %419, %469 {handshake.bb = 13 : ui32, handshake.name = "addi14"} : <i6>
    %addressResult_80, %dataResult_81 = load[%470] %6#1 {handshake.bb = 13 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load6"} : <i6>, <i32>
    %471 = muli %423, %464 {handshake.bb = 13 : ui32, handshake.name = "muli15"} : <i8>
    %472 = trunci %471 {handshake.bb = 13 : ui32, handshake.name = "trunci18"} : <i8> to <i6>
    %473 = addi %441, %472 {handshake.bb = 13 : ui32, handshake.name = "addi15"} : <i6>
    %addressResult_82, %dataResult_83 = load[%473] %4#1 {handshake.bb = 13 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load7"} : <i6>, <i32>
    %474 = muli %dataResult_81, %dataResult_83 {handshake.bb = 13 : ui32, handshake.name = "muli2"} : <i32>
    %475 = muli %432, %458 {handshake.bb = 13 : ui32, handshake.name = "muli16"} : <i8>
    %476 = trunci %475 {handshake.bb = 13 : ui32, handshake.name = "trunci19"} : <i8> to <i6>
    %477 = addi %443, %476 {handshake.bb = 13 : ui32, handshake.name = "addi16"} : <i6>
    %addressResult_84, %dataResult_85 = load[%477] %2#0 {handshake.bb = 13 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store5" (3) [[0, 0], [0, 0], [1, 6]]>, <"store5" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load8"} : <i6>, <i32>
    %478 = addi %dataResult_85, %474 {handshake.bb = 13 : ui32, handshake.name = "addi2"} : <i32>
    %479 = muli %430, %456 {handshake.bb = 13 : ui32, handshake.name = "muli17"} : <i8>
    %480 = trunci %479 {handshake.bb = 13 : ui32, handshake.name = "trunci20"} : <i8> to <i6>
    %481 = addi %445, %480 {handshake.bb = 13 : ui32, handshake.name = "addi17"} : <i6>
    %addressResult_86, %dataResult_87 = store[%481] %478 {handshake.bb = 13 : ui32, handshake.deps = #handshake<deps[<"load8" (3) [[0, 0], [0, 0], [1, 6]]>, <"store5" (3) [[0, 0], [0, 0], [1, 6]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store5"} : <i6>, <i32>
    %482 = addi %421, %467 {handshake.bb = 13 : ui32, handshake.name = "addi24"} : <i5>
    %483:2 = fork [2] %482 {handshake.bb = 13 : ui32, handshake.name = "fork49"} : <i5>
    %485 = trunci %483#0 {handshake.bb = 13 : ui32, handshake.name = "trunci21"} : <i5> to <i4>
    %487 = cmpi ult, %483#1, %462 {handshake.bb = 13 : ui32, handshake.name = "cmpi6"} : <i5>
    %488:4 = fork [4] %487 {handshake.bb = 13 : ui32, handshake.name = "fork50"} : <i1>
    %trueResult_88, %falseResult_89 = cond_br %488#0, %485 {handshake.bb = 13 : ui32, handshake.name = "cond_br29"} : <i1>, <i4>
    sink %falseResult_89 {handshake.name = "sink12"} : <i4>
    %trueResult_90, %falseResult_91 = cond_br %488#1, %428#0 {handshake.bb = 13 : ui32, handshake.name = "cond_br30"} : <i1>, <i4>
    %trueResult_92, %falseResult_93 = cond_br %488#2, %439#3 {handshake.bb = 13 : ui32, handshake.name = "cond_br31"} : <i1>, <i4>
    %494 = buffer %449#1 {handshake.bb = 13 : ui32, handshake.name = "buffer206", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %trueResult_94, %falseResult_95 = cond_br %488#3, %494 {handshake.bb = 13 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br32"} : <i1>, <>
    %496 = buffer %falseResult_93 {handshake.bb = 14 : ui32, handshake.name = "buffer221", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %497 = buffer %496 {handshake.bb = 14 : ui32, handshake.name = "buffer222", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %498 = extsi %497 {handshake.bb = 14 : ui32, handshake.name = "extsi108"} : <i4> to <i5>
    %499 = source {handshake.bb = 14 : ui32, handshake.name = "source17"} : <>
    %500 = constant %499 {handshake.bb = 14 : ui32, handshake.name = "constant59", value = 7 : i4} : <>, <i4>
    %501 = extsi %500 {handshake.bb = 14 : ui32, handshake.name = "extsi109"} : <i4> to <i5>
    %502 = source {handshake.bb = 14 : ui32, handshake.name = "source18"} : <>
    %503 = constant %502 {handshake.bb = 14 : ui32, handshake.name = "constant60", value = 1 : i2} : <>, <i2>
    %504 = extsi %503 {handshake.bb = 14 : ui32, handshake.name = "extsi110"} : <i2> to <i5>
    %505 = addi %498, %504 {handshake.bb = 14 : ui32, handshake.name = "addi25"} : <i5>
    %506:2 = fork [2] %505 {handshake.bb = 14 : ui32, handshake.name = "fork51"} : <i5>
    %508 = trunci %506#0 {handshake.bb = 14 : ui32, handshake.name = "trunci22"} : <i5> to <i4>
    %510 = cmpi ult, %506#1, %501 {handshake.bb = 14 : ui32, handshake.name = "cmpi7"} : <i5>
    %511:3 = fork [3] %510 {handshake.bb = 14 : ui32, handshake.name = "fork52"} : <i1>
    %trueResult_96, %falseResult_97 = cond_br %511#0, %508 {handshake.bb = 14 : ui32, handshake.name = "cond_br33"} : <i1>, <i4>
    sink %falseResult_97 {handshake.name = "sink14"} : <i4>
    %513 = buffer %falseResult_91 {handshake.bb = 14 : ui32, handshake.name = "buffer219", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %514 = buffer %513 {handshake.bb = 14 : ui32, handshake.name = "buffer220", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %trueResult_98, %falseResult_99 = cond_br %511#1, %514 {handshake.bb = 14 : ui32, handshake.name = "cond_br34"} : <i1>, <i4>
    %516 = buffer %falseResult_95 {handshake.bb = 14 : ui32, handshake.name = "buffer223", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %517 = buffer %516 {handshake.bb = 14 : ui32, handshake.name = "buffer224", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_100, %falseResult_101 = cond_br %511#2, %517 {handshake.bb = 14 : ui32, handshake.name = "cond_br35"} : <i1>, <>
    %519 = buffer %falseResult_99 {handshake.bb = 15 : ui32, handshake.name = "buffer230", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %520 = buffer %519 {handshake.bb = 15 : ui32, handshake.name = "buffer231", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %521 = extsi %520 {handshake.bb = 15 : ui32, handshake.name = "extsi111"} : <i4> to <i5>
    %522 = source {handshake.bb = 15 : ui32, handshake.name = "source19"} : <>
    %523 = constant %522 {handshake.bb = 15 : ui32, handshake.name = "constant61", value = 7 : i4} : <>, <i4>
    %524 = extsi %523 {handshake.bb = 15 : ui32, handshake.name = "extsi112"} : <i4> to <i5>
    %525 = source {handshake.bb = 15 : ui32, handshake.name = "source20"} : <>
    %526 = constant %525 {handshake.bb = 15 : ui32, handshake.name = "constant62", value = 1 : i2} : <>, <i2>
    %527 = extsi %526 {handshake.bb = 15 : ui32, handshake.name = "extsi113"} : <i2> to <i5>
    %528 = addi %521, %527 {handshake.bb = 15 : ui32, handshake.name = "addi26"} : <i5>
    %529:2 = fork [2] %528 {handshake.bb = 15 : ui32, handshake.name = "fork53"} : <i5>
    %531 = trunci %529#0 {handshake.bb = 15 : ui32, handshake.name = "trunci23"} : <i5> to <i4>
    %533 = cmpi ult, %529#1, %524 {handshake.bb = 15 : ui32, handshake.name = "cmpi8"} : <i5>
    %534:2 = fork [2] %533 {handshake.bb = 15 : ui32, handshake.name = "fork54"} : <i1>
    %trueResult_102, %falseResult_103 = cond_br %534#0, %531 {handshake.bb = 15 : ui32, handshake.name = "cond_br36"} : <i1>, <i4>
    sink %falseResult_103 {handshake.name = "sink16"} : <i4>
    %536 = buffer %falseResult_101 {handshake.bb = 15 : ui32, handshake.name = "buffer232", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %537 = buffer %536 {handshake.bb = 15 : ui32, handshake.name = "buffer233", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_104, %falseResult_105 = cond_br %534#1, %537 {handshake.bb = 15 : ui32, handshake.name = "cond_br37"} : <i1>, <>
    %539 = buffer %falseResult_105 {handshake.bb = 16 : ui32, handshake.name = "buffer238", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %540 = buffer %539 {handshake.bb = 16 : ui32, handshake.name = "buffer239", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %541:7 = fork [7] %540 {handshake.bb = 16 : ui32, handshake.name = "fork55"} : <>
    end {handshake.bb = 16 : ui32, handshake.name = "end0"} %memEnd_5, %memEnd_3, %memEnd_1, %memEnd, %6#2, %4#2, %2#1, %0#1 : <>, <>, <>, <>, <>, <>, <>, <>
  }
}


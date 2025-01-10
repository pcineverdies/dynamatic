module {
  handshake.func @kernel_2mm(%arg0: !handshake.channel<i32>, %arg1: !handshake.channel<i32>, %arg2: memref<49xi32>, %arg3: memref<49xi32>, %arg4: memref<49xi32>, %arg5: memref<49xi32>, %arg6: memref<49xi32>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, %arg12: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["alpha", "beta", "tmp", "A", "B", "C", "D", "tmp_start", "A_start", "B_start", "C_start", "D_start", "start"], resNames = ["out0", "tmp_end", "A_end", "B_end", "C_end", "D_end", "end"]} {
    %0:3 = fork [3] %arg12 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1 = buffer %474#5 {handshake.name = "buffer221", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %2:4 = lsq[%arg6 : memref<49xi32>] (%arg11, %300#0, %addressResult_54, %addressResult_56, %dataResult_57, %368#0, %addressResult_64, %addressResult_66, %dataResult_67, %474#4, %addressResult_98, %1)  {groupSizes = [2 : i32, 2 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "10": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "11": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "7": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "8": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "9": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %3 = buffer %474#3 {handshake.name = "buffer220", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs, %memEnd = mem_controller[%arg5 : memref<49xi32>] %arg10 (%addressResult_62) %3 {connectedBlocks = [8 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %4 = buffer %474#2 {handshake.name = "buffer219", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs_0, %memEnd_1 = mem_controller[%arg4 : memref<49xi32>] %arg9 (%addressResult_10) %4 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller4"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %5 = buffer %474#1 {handshake.name = "buffer218", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs_2, %memEnd_3 = mem_controller[%arg3 : memref<49xi32>] %arg8 (%addressResult_8) %5 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %6 = buffer %474#0 {handshake.name = "buffer217", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %7:3 = lsq[%arg2 : memref<49xi32>] (%arg7, %62#0, %addressResult, %dataResult, %134#0, %addressResult_12, %addressResult_14, %dataResult_15, %370, %addressResult_60, %6)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "10": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "7": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "8": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "9": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %8 = buffer %0#0 {handshake.bb = 0 : ui32, handshake.name = "buffer0", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %9 = constant %8 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %10 = br %9 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <i1>
    %11 = extsi %10 {handshake.bb = 0 : ui32, handshake.name = "extsi27"} : <i1> to <i4>
    %12 = br %arg0 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "br6"} : <i32>
    %13 = br %arg1 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "br7"} : <i32>
    %14 = buffer %0#2 {handshake.bb = 0 : ui32, handshake.name = "buffer2", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %15 = br %14 {handshake.bb = 0 : ui32, handshake.name = "br8"} : <>
    %16 = buffer %22#0 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %17 = mux %16 [%11, %trueResult_40] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i4>
    %18 = buffer %22#1 {handshake.bb = 1 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %19 = mux %18 [%12, %trueResult_42] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %20 = buffer %22#2 {handshake.bb = 1 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %21 = mux %20 [%13, %trueResult_44] {handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %result, %index = control_merge %15, %trueResult_46  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %22:3 = fork [3] %index {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %23 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %24 = buffer %23 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %25:2 = fork [2] %24 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <>
    %26 = buffer %25#0 {handshake.bb = 1 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %27 = constant %26 {handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %28 = br %27 {handshake.bb = 1 : ui32, handshake.name = "br9"} : <i1>
    %29 = extsi %28 {handshake.bb = 1 : ui32, handshake.name = "extsi26"} : <i1> to <i4>
    %30 = buffer %19 {handshake.bb = 1 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %31 = buffer %30 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %32 = br %31 {handshake.bb = 1 : ui32, handshake.name = "br10"} : <i32>
    %33 = buffer %21 {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %34 = buffer %33 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %35 = br %34 {handshake.bb = 1 : ui32, handshake.name = "br11"} : <i32>
    %36 = buffer %17 {handshake.bb = 1 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %37 = buffer %36 {handshake.bb = 1 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %38 = br %37 {handshake.bb = 1 : ui32, handshake.name = "br12"} : <i4>
    %39 = buffer %25#1 {handshake.bb = 1 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %40 = br %39 {handshake.bb = 1 : ui32, handshake.name = "br13"} : <>
    %41 = buffer %59#1 {handshake.bb = 2 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %42 = mux %41 [%29, %trueResult_28] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i4>
    %43 = buffer %42 {handshake.bb = 2 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %44 = buffer %43 {handshake.bb = 2 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %45:2 = fork [2] %44 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i4>
    %46 = buffer %45#0 {handshake.bb = 2 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %47 = extsi %46 {handshake.bb = 2 : ui32, handshake.name = "extsi28"} : <i4> to <i6>
    %48 = buffer %59#2 {handshake.bb = 2 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %49 = mux %48 [%32, %trueResult_30] {handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %50 = buffer %59#3 {handshake.bb = 2 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %51 = mux %50 [%35, %trueResult_32] {handshake.bb = 2 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %52 = buffer %59#0 {handshake.bb = 2 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %53 = mux %52 [%38, %trueResult_34] {handshake.bb = 2 : ui32, handshake.name = "mux6"} : <i1>, <i4>
    %54 = buffer %53 {handshake.bb = 2 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %55 = buffer %54 {handshake.bb = 2 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %56:2 = fork [2] %55 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i4>
    %57 = buffer %56#1 {handshake.bb = 2 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %58 = extsi %57 {handshake.bb = 2 : ui32, handshake.name = "extsi29"} : <i4> to <i8>
    %result_4, %index_5 = control_merge %40, %trueResult_36  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %59:4 = fork [4] %index_5 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i1>
    %60 = buffer %result_4 {handshake.bb = 2 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %61 = buffer %60 {handshake.bb = 2 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %62:3 = lazy_fork [3] %61 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork0"} : <>
    %63 = buffer %62#2 {handshake.bb = 2 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %64 = fork [1] %63 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork6"} : <>
    %65 = buffer %64 {handshake.bb = 2 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %66 = constant %65 {handshake.bb = 2 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %67:2 = fork [2] %66 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i1>
    %68 = buffer %67#1 {handshake.bb = 2 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %69 = extsi %68 {handshake.bb = 2 : ui32, handshake.name = "extsi3"} : <i1> to <i32>
    %70 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %71 = constant %70 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = 7 : i4} : <>, <i4>
    %72 = extsi %71 {handshake.bb = 2 : ui32, handshake.name = "extsi30"} : <i4> to <i8>
    %73 = muli %58, %72 {handshake.bb = 2 : ui32, handshake.name = "muli4"} : <i8>
    %74 = trunci %73 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i8> to <i6>
    %75 = addi %47, %74 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i6>
    %addressResult, %dataResult = store[%75] %69 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0]]>, <"store1" (3) [[0, 0], [0, 0]]>, <"load4" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i6>, <i32>
    %76 = buffer %67#0 {handshake.bb = 2 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %77 = br %76 {handshake.bb = 2 : ui32, handshake.name = "br14"} : <i1>
    %78 = extsi %77 {handshake.bb = 2 : ui32, handshake.name = "extsi25"} : <i1> to <i4>
    %79 = buffer %49 {handshake.bb = 2 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %80 = buffer %79 {handshake.bb = 2 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %81 = br %80 {handshake.bb = 2 : ui32, handshake.name = "br15"} : <i32>
    %82 = buffer %51 {handshake.bb = 2 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %83 = buffer %82 {handshake.bb = 2 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %84 = br %83 {handshake.bb = 2 : ui32, handshake.name = "br16"} : <i32>
    %85 = buffer %56#0 {handshake.bb = 2 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %86 = br %85 {handshake.bb = 2 : ui32, handshake.name = "br17"} : <i4>
    %87 = buffer %45#1 {handshake.bb = 2 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %88 = br %87 {handshake.bb = 2 : ui32, handshake.name = "br18"} : <i4>
    %89 = buffer %62#1 {handshake.bb = 2 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %90 = br %89 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "br19"} : <>
    %91 = buffer %131#2 {handshake.bb = 3 : ui32, handshake.name = "buffer66", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %92 = mux %91 [%78, %trueResult] {handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <i4>
    %93 = buffer %92 {handshake.bb = 3 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %94 = buffer %93 {handshake.bb = 3 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %95:3 = fork [3] %94 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i4>
    %96 = buffer %95#0 {handshake.bb = 3 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %97 = extsi %96 {handshake.bb = 3 : ui32, handshake.name = "extsi31"} : <i4> to <i6>
    %98 = buffer %95#1 {handshake.bb = 3 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %99 = extsi %98 {handshake.bb = 3 : ui32, handshake.name = "extsi32"} : <i4> to <i5>
    %100 = buffer %95#2 {handshake.bb = 3 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %101 = extsi %100 {handshake.bb = 3 : ui32, handshake.name = "extsi33"} : <i4> to <i8>
    %102 = buffer %131#3 {handshake.bb = 3 : ui32, handshake.name = "buffer67", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %103 = mux %102 [%81, %trueResult_16] {handshake.bb = 3 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %104 = buffer %103 {handshake.bb = 3 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %105 = buffer %104 {handshake.bb = 3 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %106:2 = fork [2] %105 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i32>
    %107 = buffer %131#4 {handshake.bb = 3 : ui32, handshake.name = "buffer68", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %108 = mux %107 [%84, %trueResult_18] {handshake.bb = 3 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %109 = buffer %131#0 {handshake.bb = 3 : ui32, handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %110 = mux %109 [%86, %trueResult_20] {handshake.bb = 3 : ui32, handshake.name = "mux10"} : <i1>, <i4>
    %111 = buffer %110 {handshake.bb = 3 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %112 = buffer %111 {handshake.bb = 3 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %113:4 = fork [4] %112 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i4>
    %114 = buffer %113#1 {handshake.bb = 3 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %115 = extsi %114 {handshake.bb = 3 : ui32, handshake.name = "extsi34"} : <i4> to <i8>
    %116 = buffer %113#2 {handshake.bb = 3 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %117 = extsi %116 {handshake.bb = 3 : ui32, handshake.name = "extsi35"} : <i4> to <i8>
    %118 = buffer %113#3 {handshake.bb = 3 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %119 = extsi %118 {handshake.bb = 3 : ui32, handshake.name = "extsi36"} : <i4> to <i8>
    %120 = buffer %131#1 {handshake.bb = 3 : ui32, handshake.name = "buffer65", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %121 = mux %120 [%88, %trueResult_22] {handshake.bb = 3 : ui32, handshake.name = "mux11"} : <i1>, <i4>
    %122 = buffer %121 {handshake.bb = 3 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %123 = buffer %122 {handshake.bb = 3 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %124:4 = fork [4] %123 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i4>
    %125 = buffer %124#0 {handshake.bb = 3 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %126 = extsi %125 {handshake.bb = 3 : ui32, handshake.name = "extsi37"} : <i4> to <i6>
    %127 = buffer %124#1 {handshake.bb = 3 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %128 = extsi %127 {handshake.bb = 3 : ui32, handshake.name = "extsi38"} : <i4> to <i6>
    %129 = buffer %124#2 {handshake.bb = 3 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %130 = extsi %129 {handshake.bb = 3 : ui32, handshake.name = "extsi39"} : <i4> to <i6>
    %result_6, %index_7 = control_merge %90, %trueResult_24  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %131:5 = fork [5] %index_7 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i1>
    %132 = buffer %result_6 {handshake.bb = 3 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %133 = buffer %132 {handshake.bb = 3 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %134:2 = lazy_fork [2] %133 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork1"} : <>
    %135 = source {handshake.bb = 3 : ui32, handshake.name = "source1"} : <>
    %136 = constant %135 {handshake.bb = 3 : ui32, handshake.name = "constant26", value = 7 : i4} : <>, <i4>
    %137:5 = fork [5] %136 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i4>
    %138 = buffer %137#0 {handshake.bb = 3 : ui32, handshake.name = "buffer70", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %139 = extsi %138 {handshake.bb = 3 : ui32, handshake.name = "extsi40"} : <i4> to <i8>
    %140 = buffer %137#1 {handshake.bb = 3 : ui32, handshake.name = "buffer71", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %141 = extsi %140 {handshake.bb = 3 : ui32, handshake.name = "extsi41"} : <i4> to <i8>
    %142 = buffer %137#2 {handshake.bb = 3 : ui32, handshake.name = "buffer72", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %143 = extsi %142 {handshake.bb = 3 : ui32, handshake.name = "extsi42"} : <i4> to <i8>
    %144 = buffer %137#3 {handshake.bb = 3 : ui32, handshake.name = "buffer73", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %145 = extsi %144 {handshake.bb = 3 : ui32, handshake.name = "extsi43"} : <i4> to <i5>
    %146 = buffer %137#4 {handshake.bb = 3 : ui32, handshake.name = "buffer74", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %147 = extsi %146 {handshake.bb = 3 : ui32, handshake.name = "extsi44"} : <i4> to <i8>
    %148 = source {handshake.bb = 3 : ui32, handshake.name = "source2"} : <>
    %149 = constant %148 {handshake.bb = 3 : ui32, handshake.name = "constant27", value = 1 : i2} : <>, <i2>
    %150 = extsi %149 {handshake.bb = 3 : ui32, handshake.name = "extsi45"} : <i2> to <i5>
    %151 = muli %119, %143 {handshake.bb = 3 : ui32, handshake.name = "muli5"} : <i8>
    %152 = trunci %151 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i8> to <i6>
    %153 = addi %97, %152 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i6>
    %addressResult_8, %dataResult_9 = load[%153] %outputs_2 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i6>, <i32>
    %154 = buffer %106#1 {handshake.bb = 3 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %155 = muli %154, %dataResult_9 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %156 = muli %101, %147 {handshake.bb = 3 : ui32, handshake.name = "muli6"} : <i8>
    %157 = trunci %156 {handshake.bb = 3 : ui32, handshake.name = "trunci2"} : <i8> to <i6>
    %158 = addi %126, %157 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i6>
    %addressResult_10, %dataResult_11 = load[%158] %outputs_0 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i6>, <i32>
    %159 = muli %155, %dataResult_11 {handshake.bb = 3 : ui32, handshake.name = "muli1"} : <i32>
    %160 = muli %117, %141 {handshake.bb = 3 : ui32, handshake.name = "muli7"} : <i8>
    %161 = trunci %160 {handshake.bb = 3 : ui32, handshake.name = "trunci3"} : <i8> to <i6>
    %162 = addi %128, %161 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i6>
    %addressResult_12, %dataResult_13 = load[%162] %7#0 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load2"} : <i6>, <i32>
    %163 = addi %dataResult_13, %159 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %164 = muli %115, %139 {handshake.bb = 3 : ui32, handshake.name = "muli8"} : <i8>
    %165 = trunci %164 {handshake.bb = 3 : ui32, handshake.name = "trunci4"} : <i8> to <i6>
    %166 = addi %130, %165 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i6>
    %addressResult_14, %dataResult_15 = store[%166] %163 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"load4" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i6>, <i32>
    %167 = addi %99, %150 {handshake.bb = 3 : ui32, handshake.name = "addi14"} : <i5>
    %168:2 = fork [2] %167 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i5>
    %169 = buffer %168#0 {handshake.bb = 3 : ui32, handshake.name = "buffer75", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %170 = trunci %169 {handshake.bb = 3 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %171 = buffer %168#1 {handshake.bb = 3 : ui32, handshake.name = "buffer76", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %172 = cmpi ult, %171, %145 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i5>
    %173:6 = fork [6] %172 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <i1>
    %174 = buffer %173#0 {handshake.bb = 3 : ui32, handshake.name = "buffer77", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult, %falseResult = cond_br %174, %170 {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <i4>
    sink %falseResult {handshake.name = "sink0"} : <i4>
    %175 = buffer %106#0 {handshake.bb = 3 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %176 = buffer %173#3 {handshake.bb = 3 : ui32, handshake.name = "buffer80", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_16, %falseResult_17 = cond_br %176, %175 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <i32>
    %177 = buffer %108 {handshake.bb = 3 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %178 = buffer %177 {handshake.bb = 3 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %179 = buffer %173#4 {handshake.bb = 3 : ui32, handshake.name = "buffer81", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_18, %falseResult_19 = cond_br %179, %178 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    %180 = buffer %113#0 {handshake.bb = 3 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %181 = buffer %173#1 {handshake.bb = 3 : ui32, handshake.name = "buffer78", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_20, %falseResult_21 = cond_br %181, %180 {handshake.bb = 3 : ui32, handshake.name = "cond_br9"} : <i1>, <i4>
    %182 = buffer %124#3 {handshake.bb = 3 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %183 = buffer %173#2 {handshake.bb = 3 : ui32, handshake.name = "buffer79", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_22, %falseResult_23 = cond_br %183, %182 {handshake.bb = 3 : ui32, handshake.name = "cond_br10"} : <i1>, <i4>
    %184 = buffer %134#1 {handshake.bb = 3 : ui32, handshake.name = "buffer69", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %185 = buffer %173#5 {handshake.bb = 3 : ui32, handshake.name = "buffer82", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_24, %falseResult_25 = cond_br %185, %184 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br11"} : <i1>, <>
    %186 = merge %falseResult_17 {handshake.bb = 4 : ui32, handshake.name = "merge0"} : <i32>
    %187 = merge %falseResult_19 {handshake.bb = 4 : ui32, handshake.name = "merge1"} : <i32>
    %188 = merge %falseResult_21 {handshake.bb = 4 : ui32, handshake.name = "merge2"} : <i4>
    %189 = merge %falseResult_23 {handshake.bb = 4 : ui32, handshake.name = "merge3"} : <i4>
    %190 = buffer %189 {handshake.bb = 4 : ui32, handshake.name = "buffer89", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %191 = buffer %190 {handshake.bb = 4 : ui32, handshake.name = "buffer90", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %192 = extsi %191 {handshake.bb = 4 : ui32, handshake.name = "extsi46"} : <i4> to <i5>
    %result_26, %index_27 = control_merge %falseResult_25  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_27 {handshake.name = "sink1"} : <i1>
    %193 = source {handshake.bb = 4 : ui32, handshake.name = "source3"} : <>
    %194 = constant %193 {handshake.bb = 4 : ui32, handshake.name = "constant28", value = 7 : i4} : <>, <i4>
    %195 = extsi %194 {handshake.bb = 4 : ui32, handshake.name = "extsi47"} : <i4> to <i5>
    %196 = source {handshake.bb = 4 : ui32, handshake.name = "source4"} : <>
    %197 = constant %196 {handshake.bb = 4 : ui32, handshake.name = "constant29", value = 1 : i2} : <>, <i2>
    %198 = extsi %197 {handshake.bb = 4 : ui32, handshake.name = "extsi48"} : <i2> to <i5>
    %199 = addi %192, %198 {handshake.bb = 4 : ui32, handshake.name = "addi15"} : <i5>
    %200:2 = fork [2] %199 {handshake.bb = 4 : ui32, handshake.name = "fork16"} : <i5>
    %201 = buffer %200#0 {handshake.bb = 4 : ui32, handshake.name = "buffer93", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %202 = trunci %201 {handshake.bb = 4 : ui32, handshake.name = "trunci6"} : <i5> to <i4>
    %203 = buffer %200#1 {handshake.bb = 4 : ui32, handshake.name = "buffer94", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %204 = cmpi ult, %203, %195 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i5>
    %205:5 = fork [5] %204 {handshake.bb = 4 : ui32, handshake.name = "fork17"} : <i1>
    %206 = buffer %205#0 {handshake.bb = 4 : ui32, handshake.name = "buffer95", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_28, %falseResult_29 = cond_br %206, %202 {handshake.bb = 4 : ui32, handshake.name = "cond_br12"} : <i1>, <i4>
    sink %falseResult_29 {handshake.name = "sink2"} : <i4>
    %207 = buffer %186 {handshake.bb = 4 : ui32, handshake.name = "buffer83", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %208 = buffer %207 {handshake.bb = 4 : ui32, handshake.name = "buffer84", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %209 = buffer %205#2 {handshake.bb = 4 : ui32, handshake.name = "buffer97", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_30, %falseResult_31 = cond_br %209, %208 {handshake.bb = 4 : ui32, handshake.name = "cond_br13"} : <i1>, <i32>
    %210 = buffer %187 {handshake.bb = 4 : ui32, handshake.name = "buffer85", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %211 = buffer %210 {handshake.bb = 4 : ui32, handshake.name = "buffer86", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %212 = buffer %205#3 {handshake.bb = 4 : ui32, handshake.name = "buffer98", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_32, %falseResult_33 = cond_br %212, %211 {handshake.bb = 4 : ui32, handshake.name = "cond_br14"} : <i1>, <i32>
    %213 = buffer %188 {handshake.bb = 4 : ui32, handshake.name = "buffer87", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %214 = buffer %213 {handshake.bb = 4 : ui32, handshake.name = "buffer88", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %215 = buffer %205#1 {handshake.bb = 4 : ui32, handshake.name = "buffer96", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_34, %falseResult_35 = cond_br %215, %214 {handshake.bb = 4 : ui32, handshake.name = "cond_br15"} : <i1>, <i4>
    %216 = buffer %result_26 {handshake.bb = 4 : ui32, handshake.name = "buffer91", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %217 = buffer %216 {handshake.bb = 4 : ui32, handshake.name = "buffer92", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %218 = buffer %205#4 {handshake.bb = 4 : ui32, handshake.name = "buffer99", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_36, %falseResult_37 = cond_br %218, %217 {handshake.bb = 4 : ui32, handshake.name = "cond_br16"} : <i1>, <>
    %219 = merge %falseResult_31 {handshake.bb = 5 : ui32, handshake.name = "merge4"} : <i32>
    %220 = merge %falseResult_33 {handshake.bb = 5 : ui32, handshake.name = "merge5"} : <i32>
    %221 = merge %falseResult_35 {handshake.bb = 5 : ui32, handshake.name = "merge6"} : <i4>
    %222 = buffer %221 {handshake.bb = 5 : ui32, handshake.name = "buffer104", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %223 = buffer %222 {handshake.bb = 5 : ui32, handshake.name = "buffer105", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %224 = extsi %223 {handshake.bb = 5 : ui32, handshake.name = "extsi49"} : <i4> to <i5>
    %result_38, %index_39 = control_merge %falseResult_37  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    sink %index_39 {handshake.name = "sink3"} : <i1>
    %225 = buffer %result_38 {handshake.bb = 5 : ui32, handshake.name = "buffer106", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %226 = buffer %225 {handshake.bb = 5 : ui32, handshake.name = "buffer107", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %227:2 = fork [2] %226 {handshake.bb = 5 : ui32, handshake.name = "fork18"} : <>
    %228 = buffer %227#0 {handshake.bb = 5 : ui32, handshake.name = "buffer108", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %229 = constant %228 {handshake.bb = 5 : ui32, handshake.name = "constant30", value = false} : <>, <i1>
    %230 = source {handshake.bb = 5 : ui32, handshake.name = "source5"} : <>
    %231 = constant %230 {handshake.bb = 5 : ui32, handshake.name = "constant31", value = 7 : i4} : <>, <i4>
    %232 = extsi %231 {handshake.bb = 5 : ui32, handshake.name = "extsi50"} : <i4> to <i5>
    %233 = source {handshake.bb = 5 : ui32, handshake.name = "source6"} : <>
    %234 = constant %233 {handshake.bb = 5 : ui32, handshake.name = "constant32", value = 1 : i2} : <>, <i2>
    %235 = extsi %234 {handshake.bb = 5 : ui32, handshake.name = "extsi51"} : <i2> to <i5>
    %236 = addi %224, %235 {handshake.bb = 5 : ui32, handshake.name = "addi16"} : <i5>
    %237:2 = fork [2] %236 {handshake.bb = 5 : ui32, handshake.name = "fork19"} : <i5>
    %238 = buffer %237#0 {handshake.bb = 5 : ui32, handshake.name = "buffer110", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %239 = trunci %238 {handshake.bb = 5 : ui32, handshake.name = "trunci7"} : <i5> to <i4>
    %240 = buffer %237#1 {handshake.bb = 5 : ui32, handshake.name = "buffer111", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %241 = cmpi ult, %240, %232 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i5>
    %242:5 = fork [5] %241 {handshake.bb = 5 : ui32, handshake.name = "fork20"} : <i1>
    %243 = buffer %242#0 {handshake.bb = 5 : ui32, handshake.name = "buffer112", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_40, %falseResult_41 = cond_br %243, %239 {handshake.bb = 5 : ui32, handshake.name = "cond_br17"} : <i1>, <i4>
    sink %falseResult_41 {handshake.name = "sink4"} : <i4>
    %244 = buffer %219 {handshake.bb = 5 : ui32, handshake.name = "buffer100", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %245 = buffer %244 {handshake.bb = 5 : ui32, handshake.name = "buffer101", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %246 = buffer %242#1 {handshake.bb = 5 : ui32, handshake.name = "buffer113", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_42, %falseResult_43 = cond_br %246, %245 {handshake.bb = 5 : ui32, handshake.name = "cond_br18"} : <i1>, <i32>
    sink %falseResult_43 {handshake.name = "sink5"} : <i32>
    %247 = buffer %220 {handshake.bb = 5 : ui32, handshake.name = "buffer102", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %248 = buffer %247 {handshake.bb = 5 : ui32, handshake.name = "buffer103", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %249 = buffer %242#2 {handshake.bb = 5 : ui32, handshake.name = "buffer114", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_44, %falseResult_45 = cond_br %249, %248 {handshake.bb = 5 : ui32, handshake.name = "cond_br19"} : <i1>, <i32>
    %250 = buffer %227#1 {handshake.bb = 5 : ui32, handshake.name = "buffer109", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %251 = buffer %242#3 {handshake.bb = 5 : ui32, handshake.name = "buffer115", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_46, %falseResult_47 = cond_br %251, %250 {handshake.bb = 5 : ui32, handshake.name = "cond_br20"} : <i1>, <>
    %252 = buffer %242#4 {handshake.bb = 5 : ui32, handshake.name = "buffer116", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_48, %falseResult_49 = cond_br %252, %229 {handshake.bb = 5 : ui32, handshake.name = "cond_br21"} : <i1>, <i1>
    sink %trueResult_48 {handshake.name = "sink6"} : <i1>
    %253 = extsi %falseResult_49 {handshake.bb = 5 : ui32, handshake.name = "extsi24"} : <i1> to <i4>
    %254 = buffer %258#0 {handshake.bb = 6 : ui32, handshake.name = "buffer123", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %255 = mux %254 [%253, %trueResult_90] {handshake.bb = 6 : ui32, handshake.name = "mux12"} : <i1>, <i4>
    %256 = buffer %258#1 {handshake.bb = 6 : ui32, handshake.name = "buffer124", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %257 = mux %256 [%falseResult_45, %trueResult_92] {handshake.bb = 6 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %result_50, %index_51 = control_merge %falseResult_47, %trueResult_94  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    %258:2 = fork [2] %index_51 {handshake.bb = 6 : ui32, handshake.name = "fork21"} : <i1>
    %259 = buffer %result_50 {handshake.bb = 6 : ui32, handshake.name = "buffer121", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %260 = buffer %259 {handshake.bb = 6 : ui32, handshake.name = "buffer122", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %261:2 = fork [2] %260 {handshake.bb = 6 : ui32, handshake.name = "fork22"} : <>
    %262 = buffer %261#0 {handshake.bb = 6 : ui32, handshake.name = "buffer125", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %263 = constant %262 {handshake.bb = 6 : ui32, handshake.name = "constant33", value = false} : <>, <i1>
    %264 = br %263 {handshake.bb = 6 : ui32, handshake.name = "br20"} : <i1>
    %265 = extsi %264 {handshake.bb = 6 : ui32, handshake.name = "extsi23"} : <i1> to <i4>
    %266 = buffer %257 {handshake.bb = 6 : ui32, handshake.name = "buffer119", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %267 = buffer %266 {handshake.bb = 6 : ui32, handshake.name = "buffer120", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %268 = br %267 {handshake.bb = 6 : ui32, handshake.name = "br21"} : <i32>
    %269 = buffer %255 {handshake.bb = 6 : ui32, handshake.name = "buffer117", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %270 = buffer %269 {handshake.bb = 6 : ui32, handshake.name = "buffer118", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %271 = br %270 {handshake.bb = 6 : ui32, handshake.name = "br22"} : <i4>
    %272 = buffer %261#1 {handshake.bb = 6 : ui32, handshake.name = "buffer126", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %273 = br %272 {handshake.bb = 6 : ui32, handshake.name = "br23"} : <>
    %274 = buffer %297#1 {handshake.bb = 7 : ui32, handshake.name = "buffer144", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %275 = mux %274 [%265, %trueResult_80] {handshake.bb = 7 : ui32, handshake.name = "mux14"} : <i1>, <i4>
    %276 = buffer %275 {handshake.bb = 7 : ui32, handshake.name = "buffer127", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %277 = buffer %276 {handshake.bb = 7 : ui32, handshake.name = "buffer128", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %278:3 = fork [3] %277 {handshake.bb = 7 : ui32, handshake.name = "fork23"} : <i4>
    %279 = buffer %278#0 {handshake.bb = 7 : ui32, handshake.name = "buffer129", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %280 = extsi %279 {handshake.bb = 7 : ui32, handshake.name = "extsi52"} : <i4> to <i6>
    %281 = buffer %278#1 {handshake.bb = 7 : ui32, handshake.name = "buffer130", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %282 = extsi %281 {handshake.bb = 7 : ui32, handshake.name = "extsi53"} : <i4> to <i6>
    %283 = buffer %297#2 {handshake.bb = 7 : ui32, handshake.name = "buffer145", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %284 = mux %283 [%268, %trueResult_82] {handshake.bb = 7 : ui32, handshake.name = "mux15"} : <i1>, <i32>
    %285 = buffer %284 {handshake.bb = 7 : ui32, handshake.name = "buffer132", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %286 = buffer %285 {handshake.bb = 7 : ui32, handshake.name = "buffer133", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %287:2 = fork [2] %286 {handshake.bb = 7 : ui32, handshake.name = "fork24"} : <i32>
    %288 = buffer %297#0 {handshake.bb = 7 : ui32, handshake.name = "buffer143", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %289 = mux %288 [%271, %trueResult_84] {handshake.bb = 7 : ui32, handshake.name = "mux16"} : <i1>, <i4>
    %290 = buffer %289 {handshake.bb = 7 : ui32, handshake.name = "buffer136", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %291 = buffer %290 {handshake.bb = 7 : ui32, handshake.name = "buffer137", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %292:3 = fork [3] %291 {handshake.bb = 7 : ui32, handshake.name = "fork25"} : <i4>
    %293 = buffer %292#1 {handshake.bb = 7 : ui32, handshake.name = "buffer139", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %294 = extsi %293 {handshake.bb = 7 : ui32, handshake.name = "extsi54"} : <i4> to <i8>
    %295 = buffer %292#2 {handshake.bb = 7 : ui32, handshake.name = "buffer140", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %296 = extsi %295 {handshake.bb = 7 : ui32, handshake.name = "extsi55"} : <i4> to <i8>
    %result_52, %index_53 = control_merge %273, %trueResult_86  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %297:3 = fork [3] %index_53 {handshake.bb = 7 : ui32, handshake.name = "fork26"} : <i1>
    %298 = buffer %result_52 {handshake.bb = 7 : ui32, handshake.name = "buffer141", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %299 = buffer %298 {handshake.bb = 7 : ui32, handshake.name = "buffer142", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %300:3 = lazy_fork [3] %299 {handshake.bb = 7 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork2"} : <>
    %301 = buffer %300#2 {handshake.bb = 7 : ui32, handshake.name = "buffer147", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %302 = fork [1] %301 {handshake.bb = 7 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork27"} : <>
    %303 = buffer %302 {handshake.bb = 7 : ui32, handshake.name = "buffer148", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %304 = constant %303 {handshake.bb = 7 : ui32, handshake.name = "constant34", value = false} : <>, <i1>
    %305 = source {handshake.bb = 7 : ui32, handshake.name = "source7"} : <>
    %306 = constant %305 {handshake.bb = 7 : ui32, handshake.name = "constant35", value = 7 : i4} : <>, <i4>
    %307:2 = fork [2] %306 {handshake.bb = 7 : ui32, handshake.name = "fork28"} : <i4>
    %308 = buffer %307#0 {handshake.bb = 7 : ui32, handshake.name = "buffer149", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %309 = extsi %308 {handshake.bb = 7 : ui32, handshake.name = "extsi56"} : <i4> to <i8>
    %310 = buffer %307#1 {handshake.bb = 7 : ui32, handshake.name = "buffer150", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %311 = extsi %310 {handshake.bb = 7 : ui32, handshake.name = "extsi57"} : <i4> to <i8>
    %312 = muli %296, %311 {handshake.bb = 7 : ui32, handshake.name = "muli9"} : <i8>
    %313 = trunci %312 {handshake.bb = 7 : ui32, handshake.name = "trunci8"} : <i8> to <i6>
    %314 = addi %280, %313 {handshake.bb = 7 : ui32, handshake.name = "addi7"} : <i6>
    %addressResult_54, %dataResult_55 = load[%314] %2#0 {handshake.bb = 7 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store2" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i6>, <i32>
    %315 = buffer %287#1 {handshake.bb = 7 : ui32, handshake.name = "buffer135", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %316 = muli %dataResult_55, %315 {handshake.bb = 7 : ui32, handshake.name = "muli2"} : <i32>
    %317 = muli %294, %309 {handshake.bb = 7 : ui32, handshake.name = "muli10"} : <i8>
    %318 = trunci %317 {handshake.bb = 7 : ui32, handshake.name = "trunci9"} : <i8> to <i6>
    %319 = addi %282, %318 {handshake.bb = 7 : ui32, handshake.name = "addi8"} : <i6>
    %addressResult_56, %dataResult_57 = store[%319] %316 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"load6" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store2"} : <i6>, <i32>
    %320 = br %304 {handshake.bb = 7 : ui32, handshake.name = "br24"} : <i1>
    %321 = extsi %320 {handshake.bb = 7 : ui32, handshake.name = "extsi22"} : <i1> to <i4>
    %322 = buffer %287#0 {handshake.bb = 7 : ui32, handshake.name = "buffer134", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %323 = br %322 {handshake.bb = 7 : ui32, handshake.name = "br25"} : <i32>
    %324 = buffer %292#0 {handshake.bb = 7 : ui32, handshake.name = "buffer138", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %325 = br %324 {handshake.bb = 7 : ui32, handshake.name = "br26"} : <i4>
    %326 = buffer %278#2 {handshake.bb = 7 : ui32, handshake.name = "buffer131", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %327 = br %326 {handshake.bb = 7 : ui32, handshake.name = "br27"} : <i4>
    %328 = buffer %300#1 {handshake.bb = 7 : ui32, handshake.name = "buffer146", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %329 = br %328 {handshake.bb = 7 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "br28"} : <>
    %330 = buffer %365#2 {handshake.bb = 8 : ui32, handshake.name = "buffer174", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %331 = mux %330 [%321, %trueResult_68] {handshake.bb = 8 : ui32, handshake.name = "mux17"} : <i1>, <i4>
    %332 = buffer %331 {handshake.bb = 8 : ui32, handshake.name = "buffer151", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %333 = buffer %332 {handshake.bb = 8 : ui32, handshake.name = "buffer152", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %334:3 = fork [3] %333 {handshake.bb = 8 : ui32, handshake.name = "fork29"} : <i4>
    %335 = buffer %334#0 {handshake.bb = 8 : ui32, handshake.name = "buffer153", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %336 = extsi %335 {handshake.bb = 8 : ui32, handshake.name = "extsi58"} : <i4> to <i6>
    %337 = buffer %334#1 {handshake.bb = 8 : ui32, handshake.name = "buffer154", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %338 = extsi %337 {handshake.bb = 8 : ui32, handshake.name = "extsi59"} : <i4> to <i5>
    %339 = buffer %334#2 {handshake.bb = 8 : ui32, handshake.name = "buffer155", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %340 = extsi %339 {handshake.bb = 8 : ui32, handshake.name = "extsi60"} : <i4> to <i8>
    %341 = buffer %365#3 {handshake.bb = 8 : ui32, handshake.name = "buffer175", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %342 = mux %341 [%323, %trueResult_70] {handshake.bb = 8 : ui32, handshake.name = "mux18"} : <i1>, <i32>
    %343 = buffer %365#0 {handshake.bb = 8 : ui32, handshake.name = "buffer172", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %344 = mux %343 [%325, %trueResult_72] {handshake.bb = 8 : ui32, handshake.name = "mux19"} : <i1>, <i4>
    %345 = buffer %344 {handshake.bb = 8 : ui32, handshake.name = "buffer158", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %346 = buffer %345 {handshake.bb = 8 : ui32, handshake.name = "buffer159", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %347:4 = fork [4] %346 {handshake.bb = 8 : ui32, handshake.name = "fork30"} : <i4>
    %348 = buffer %347#1 {handshake.bb = 8 : ui32, handshake.name = "buffer161", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %349 = extsi %348 {handshake.bb = 8 : ui32, handshake.name = "extsi61"} : <i4> to <i8>
    %350 = buffer %347#2 {handshake.bb = 8 : ui32, handshake.name = "buffer162", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %351 = extsi %350 {handshake.bb = 8 : ui32, handshake.name = "extsi62"} : <i4> to <i8>
    %352 = buffer %347#3 {handshake.bb = 8 : ui32, handshake.name = "buffer163", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %353 = extsi %352 {handshake.bb = 8 : ui32, handshake.name = "extsi63"} : <i4> to <i8>
    %354 = buffer %365#1 {handshake.bb = 8 : ui32, handshake.name = "buffer173", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %355 = mux %354 [%327, %trueResult_74] {handshake.bb = 8 : ui32, handshake.name = "mux20"} : <i1>, <i4>
    %356 = buffer %355 {handshake.bb = 8 : ui32, handshake.name = "buffer164", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %357 = buffer %356 {handshake.bb = 8 : ui32, handshake.name = "buffer165", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %358:4 = fork [4] %357 {handshake.bb = 8 : ui32, handshake.name = "fork31"} : <i4>
    %359 = buffer %358#0 {handshake.bb = 8 : ui32, handshake.name = "buffer166", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %360 = extsi %359 {handshake.bb = 8 : ui32, handshake.name = "extsi64"} : <i4> to <i6>
    %361 = buffer %358#1 {handshake.bb = 8 : ui32, handshake.name = "buffer167", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %362 = extsi %361 {handshake.bb = 8 : ui32, handshake.name = "extsi65"} : <i4> to <i6>
    %363 = buffer %358#2 {handshake.bb = 8 : ui32, handshake.name = "buffer168", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %364 = extsi %363 {handshake.bb = 8 : ui32, handshake.name = "extsi66"} : <i4> to <i6>
    %result_58, %index_59 = control_merge %329, %trueResult_76  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    %365:4 = fork [4] %index_59 {handshake.bb = 8 : ui32, handshake.name = "fork32"} : <i1>
    %366 = buffer %result_58 {handshake.bb = 8 : ui32, handshake.name = "buffer170", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %367 = buffer %366 {handshake.bb = 8 : ui32, handshake.name = "buffer171", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %368:3 = lazy_fork [3] %367 {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork3"} : <>
    %369 = buffer %368#2 {handshake.bb = 8 : ui32, handshake.name = "buffer177", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %370 = fork [1] %369 {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork33"} : <>
    %371 = source {handshake.bb = 8 : ui32, handshake.name = "source8"} : <>
    %372 = constant %371 {handshake.bb = 8 : ui32, handshake.name = "constant36", value = 7 : i4} : <>, <i4>
    %373:5 = fork [5] %372 {handshake.bb = 8 : ui32, handshake.name = "fork34"} : <i4>
    %374 = buffer %373#0 {handshake.bb = 8 : ui32, handshake.name = "buffer178", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %375 = extsi %374 {handshake.bb = 8 : ui32, handshake.name = "extsi67"} : <i4> to <i8>
    %376 = buffer %373#1 {handshake.bb = 8 : ui32, handshake.name = "buffer179", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %377 = extsi %376 {handshake.bb = 8 : ui32, handshake.name = "extsi68"} : <i4> to <i8>
    %378 = buffer %373#2 {handshake.bb = 8 : ui32, handshake.name = "buffer180", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %379 = extsi %378 {handshake.bb = 8 : ui32, handshake.name = "extsi69"} : <i4> to <i8>
    %380 = buffer %373#3 {handshake.bb = 8 : ui32, handshake.name = "buffer181", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %381 = extsi %380 {handshake.bb = 8 : ui32, handshake.name = "extsi70"} : <i4> to <i5>
    %382 = buffer %373#4 {handshake.bb = 8 : ui32, handshake.name = "buffer182", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %383 = extsi %382 {handshake.bb = 8 : ui32, handshake.name = "extsi71"} : <i4> to <i8>
    %384 = source {handshake.bb = 8 : ui32, handshake.name = "source9"} : <>
    %385 = constant %384 {handshake.bb = 8 : ui32, handshake.name = "constant37", value = 1 : i2} : <>, <i2>
    %386 = extsi %385 {handshake.bb = 8 : ui32, handshake.name = "extsi72"} : <i2> to <i5>
    %387 = muli %353, %379 {handshake.bb = 8 : ui32, handshake.name = "muli11"} : <i8>
    %388 = trunci %387 {handshake.bb = 8 : ui32, handshake.name = "trunci10"} : <i8> to <i6>
    %389 = addi %336, %388 {handshake.bb = 8 : ui32, handshake.name = "addi9"} : <i6>
    %addressResult_60, %dataResult_61 = load[%389] %7#1 {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load4"} : <i6>, <i32>
    %390 = muli %340, %383 {handshake.bb = 8 : ui32, handshake.name = "muli12"} : <i8>
    %391 = trunci %390 {handshake.bb = 8 : ui32, handshake.name = "trunci11"} : <i8> to <i6>
    %392 = addi %360, %391 {handshake.bb = 8 : ui32, handshake.name = "addi10"} : <i6>
    %addressResult_62, %dataResult_63 = load[%392] %outputs {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load5"} : <i6>, <i32>
    %393 = muli %dataResult_61, %dataResult_63 {handshake.bb = 8 : ui32, handshake.name = "muli3"} : <i32>
    %394 = muli %351, %377 {handshake.bb = 8 : ui32, handshake.name = "muli13"} : <i8>
    %395 = trunci %394 {handshake.bb = 8 : ui32, handshake.name = "trunci12"} : <i8> to <i6>
    %396 = addi %362, %395 {handshake.bb = 8 : ui32, handshake.name = "addi11"} : <i6>
    %addressResult_64, %dataResult_65 = load[%396] %2#1 {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load6"} : <i6>, <i32>
    %397 = addi %dataResult_65, %393 {handshake.bb = 8 : ui32, handshake.name = "addi1"} : <i32>
    %398 = muli %349, %375 {handshake.bb = 8 : ui32, handshake.name = "muli14"} : <i8>
    %399 = trunci %398 {handshake.bb = 8 : ui32, handshake.name = "trunci13"} : <i8> to <i6>
    %400 = addi %364, %399 {handshake.bb = 8 : ui32, handshake.name = "addi12"} : <i6>
    %addressResult_66, %dataResult_67 = store[%400] %397 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"load6" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store3"} : <i6>, <i32>
    %401 = addi %338, %386 {handshake.bb = 8 : ui32, handshake.name = "addi17"} : <i5>
    %402:2 = fork [2] %401 {handshake.bb = 8 : ui32, handshake.name = "fork35"} : <i5>
    %403 = buffer %402#0 {handshake.bb = 8 : ui32, handshake.name = "buffer183", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %404 = trunci %403 {handshake.bb = 8 : ui32, handshake.name = "trunci14"} : <i5> to <i4>
    %405 = buffer %402#1 {handshake.bb = 8 : ui32, handshake.name = "buffer184", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %406 = cmpi ult, %405, %381 {handshake.bb = 8 : ui32, handshake.name = "cmpi3"} : <i5>
    %407:5 = fork [5] %406 {handshake.bb = 8 : ui32, handshake.name = "fork36"} : <i1>
    %408 = buffer %407#0 {handshake.bb = 8 : ui32, handshake.name = "buffer185", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_68, %falseResult_69 = cond_br %408, %404 {handshake.bb = 8 : ui32, handshake.name = "cond_br22"} : <i1>, <i4>
    sink %falseResult_69 {handshake.name = "sink7"} : <i4>
    %409 = buffer %342 {handshake.bb = 8 : ui32, handshake.name = "buffer156", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %410 = buffer %409 {handshake.bb = 8 : ui32, handshake.name = "buffer157", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %411 = buffer %407#3 {handshake.bb = 8 : ui32, handshake.name = "buffer188", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_70, %falseResult_71 = cond_br %411, %410 {handshake.bb = 8 : ui32, handshake.name = "cond_br23"} : <i1>, <i32>
    %412 = buffer %347#0 {handshake.bb = 8 : ui32, handshake.name = "buffer160", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %413 = buffer %407#1 {handshake.bb = 8 : ui32, handshake.name = "buffer186", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_72, %falseResult_73 = cond_br %413, %412 {handshake.bb = 8 : ui32, handshake.name = "cond_br24"} : <i1>, <i4>
    %414 = buffer %358#3 {handshake.bb = 8 : ui32, handshake.name = "buffer169", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %415 = buffer %407#2 {handshake.bb = 8 : ui32, handshake.name = "buffer187", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_74, %falseResult_75 = cond_br %415, %414 {handshake.bb = 8 : ui32, handshake.name = "cond_br25"} : <i1>, <i4>
    %416 = buffer %368#1 {handshake.bb = 8 : ui32, handshake.name = "buffer176", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %417 = buffer %407#4 {handshake.bb = 8 : ui32, handshake.name = "buffer189", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_76, %falseResult_77 = cond_br %417, %416 {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br26"} : <i1>, <>
    %418 = merge %falseResult_71 {handshake.bb = 9 : ui32, handshake.name = "merge7"} : <i32>
    %419 = merge %falseResult_73 {handshake.bb = 9 : ui32, handshake.name = "merge8"} : <i4>
    %420 = merge %falseResult_75 {handshake.bb = 9 : ui32, handshake.name = "merge9"} : <i4>
    %421 = buffer %420 {handshake.bb = 9 : ui32, handshake.name = "buffer194", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %422 = buffer %421 {handshake.bb = 9 : ui32, handshake.name = "buffer195", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %423 = extsi %422 {handshake.bb = 9 : ui32, handshake.name = "extsi73"} : <i4> to <i5>
    %result_78, %index_79 = control_merge %falseResult_77  {handshake.bb = 9 : ui32, handshake.name = "control_merge8"} : <>, <i1>
    sink %index_79 {handshake.name = "sink8"} : <i1>
    %424 = source {handshake.bb = 9 : ui32, handshake.name = "source10"} : <>
    %425 = constant %424 {handshake.bb = 9 : ui32, handshake.name = "constant38", value = 7 : i4} : <>, <i4>
    %426 = extsi %425 {handshake.bb = 9 : ui32, handshake.name = "extsi74"} : <i4> to <i5>
    %427 = source {handshake.bb = 9 : ui32, handshake.name = "source11"} : <>
    %428 = constant %427 {handshake.bb = 9 : ui32, handshake.name = "constant39", value = 1 : i2} : <>, <i2>
    %429 = extsi %428 {handshake.bb = 9 : ui32, handshake.name = "extsi75"} : <i2> to <i5>
    %430 = addi %423, %429 {handshake.bb = 9 : ui32, handshake.name = "addi18"} : <i5>
    %431:2 = fork [2] %430 {handshake.bb = 9 : ui32, handshake.name = "fork37"} : <i5>
    %432 = buffer %431#0 {handshake.bb = 9 : ui32, handshake.name = "buffer198", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %433 = trunci %432 {handshake.bb = 9 : ui32, handshake.name = "trunci15"} : <i5> to <i4>
    %434 = buffer %431#1 {handshake.bb = 9 : ui32, handshake.name = "buffer199", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %435 = cmpi ult, %434, %426 {handshake.bb = 9 : ui32, handshake.name = "cmpi4"} : <i5>
    %436:4 = fork [4] %435 {handshake.bb = 9 : ui32, handshake.name = "fork38"} : <i1>
    %437 = buffer %436#0 {handshake.bb = 9 : ui32, handshake.name = "buffer200", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_80, %falseResult_81 = cond_br %437, %433 {handshake.bb = 9 : ui32, handshake.name = "cond_br27"} : <i1>, <i4>
    sink %falseResult_81 {handshake.name = "sink9"} : <i4>
    %438 = buffer %418 {handshake.bb = 9 : ui32, handshake.name = "buffer190", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %439 = buffer %438 {handshake.bb = 9 : ui32, handshake.name = "buffer191", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %440 = buffer %436#2 {handshake.bb = 9 : ui32, handshake.name = "buffer202", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_82, %falseResult_83 = cond_br %440, %439 {handshake.bb = 9 : ui32, handshake.name = "cond_br28"} : <i1>, <i32>
    %441 = buffer %419 {handshake.bb = 9 : ui32, handshake.name = "buffer192", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %442 = buffer %441 {handshake.bb = 9 : ui32, handshake.name = "buffer193", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %443 = buffer %436#1 {handshake.bb = 9 : ui32, handshake.name = "buffer201", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_84, %falseResult_85 = cond_br %443, %442 {handshake.bb = 9 : ui32, handshake.name = "cond_br29"} : <i1>, <i4>
    %444 = buffer %result_78 {handshake.bb = 9 : ui32, handshake.name = "buffer196", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %445 = buffer %444 {handshake.bb = 9 : ui32, handshake.name = "buffer197", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %446 = buffer %436#3 {handshake.bb = 9 : ui32, handshake.name = "buffer203", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_86, %falseResult_87 = cond_br %446, %445 {handshake.bb = 9 : ui32, handshake.name = "cond_br30"} : <i1>, <>
    %447 = merge %falseResult_83 {handshake.bb = 10 : ui32, handshake.name = "merge10"} : <i32>
    %448 = merge %falseResult_85 {handshake.bb = 10 : ui32, handshake.name = "merge11"} : <i4>
    %449 = buffer %448 {handshake.bb = 10 : ui32, handshake.name = "buffer206", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %450 = buffer %449 {handshake.bb = 10 : ui32, handshake.name = "buffer207", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %451 = extsi %450 {handshake.bb = 10 : ui32, handshake.name = "extsi76"} : <i4> to <i5>
    %result_88, %index_89 = control_merge %falseResult_87  {handshake.bb = 10 : ui32, handshake.name = "control_merge9"} : <>, <i1>
    sink %index_89 {handshake.name = "sink10"} : <i1>
    %452 = source {handshake.bb = 10 : ui32, handshake.name = "source12"} : <>
    %453 = constant %452 {handshake.bb = 10 : ui32, handshake.name = "constant40", value = 7 : i4} : <>, <i4>
    %454 = extsi %453 {handshake.bb = 10 : ui32, handshake.name = "extsi77"} : <i4> to <i5>
    %455 = source {handshake.bb = 10 : ui32, handshake.name = "source13"} : <>
    %456 = constant %455 {handshake.bb = 10 : ui32, handshake.name = "constant41", value = 1 : i2} : <>, <i2>
    %457 = extsi %456 {handshake.bb = 10 : ui32, handshake.name = "extsi78"} : <i2> to <i5>
    %458 = addi %451, %457 {handshake.bb = 10 : ui32, handshake.name = "addi19"} : <i5>
    %459:2 = fork [2] %458 {handshake.bb = 10 : ui32, handshake.name = "fork39"} : <i5>
    %460 = buffer %459#0 {handshake.bb = 10 : ui32, handshake.name = "buffer210", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %461 = trunci %460 {handshake.bb = 10 : ui32, handshake.name = "trunci16"} : <i5> to <i4>
    %462 = buffer %459#1 {handshake.bb = 10 : ui32, handshake.name = "buffer211", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %463 = cmpi ult, %462, %454 {handshake.bb = 10 : ui32, handshake.name = "cmpi5"} : <i5>
    %464:3 = fork [3] %463 {handshake.bb = 10 : ui32, handshake.name = "fork40"} : <i1>
    %465 = buffer %464#0 {handshake.bb = 10 : ui32, handshake.name = "buffer212", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_90, %falseResult_91 = cond_br %465, %461 {handshake.bb = 10 : ui32, handshake.name = "cond_br31"} : <i1>, <i4>
    sink %falseResult_91 {handshake.name = "sink11"} : <i4>
    %466 = buffer %447 {handshake.bb = 10 : ui32, handshake.name = "buffer204", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %467 = buffer %466 {handshake.bb = 10 : ui32, handshake.name = "buffer205", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %468 = buffer %464#1 {handshake.bb = 10 : ui32, handshake.name = "buffer213", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_92, %falseResult_93 = cond_br %468, %467 {handshake.bb = 10 : ui32, handshake.name = "cond_br32"} : <i1>, <i32>
    sink %falseResult_93 {handshake.name = "sink12"} : <i32>
    %469 = buffer %result_88 {handshake.bb = 10 : ui32, handshake.name = "buffer208", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %470 = buffer %469 {handshake.bb = 10 : ui32, handshake.name = "buffer209", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %471 = buffer %464#2 {handshake.bb = 10 : ui32, handshake.name = "buffer214", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_94, %falseResult_95 = cond_br %471, %470 {handshake.bb = 10 : ui32, handshake.name = "cond_br33"} : <i1>, <>
    %result_96, %index_97 = control_merge %falseResult_95  {handshake.bb = 11 : ui32, handshake.name = "control_merge10"} : <>, <i1>
    sink %index_97 {handshake.name = "sink13"} : <i1>
    %472 = buffer %result_96 {handshake.bb = 11 : ui32, handshake.name = "buffer215", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %473 = buffer %472 {handshake.bb = 11 : ui32, handshake.name = "buffer216", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %474:7 = fork [7] %473 {handshake.bb = 11 : ui32, handshake.name = "fork41"} : <>
    %475 = buffer %474#6 {handshake.bb = 11 : ui32, handshake.name = "buffer222", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %476 = constant %475 {handshake.bb = 11 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "constant42", value = 48 : i7} : <>, <i7>
    %477 = trunci %476 {handshake.bb = 11 : ui32, handshake.name = "trunci17"} : <i7> to <i6>
    %addressResult_98, %dataResult_99 = load[%477] %2#2 {handshake.bb = 11 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load7"} : <i6>, <i32>
    %478 = buffer %0#1 {handshake.bb = 11 : ui32, handshake.name = "buffer1", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    end {handshake.bb = 11 : ui32, handshake.name = "end0"} %dataResult_99, %7#2, %memEnd_3, %memEnd_1, %memEnd, %2#3, %478 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


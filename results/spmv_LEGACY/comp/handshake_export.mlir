module {
  handshake.func @spmv(%arg0: !handshake.channel<i32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: memref<10xi32>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["n", "row", "col", "val", "vec", "out", "row_start", "col_start", "val_start", "vec_start", "out_start", "start"], resNames = ["out0", "row_end", "col_end", "val_end", "vec_end", "out_end", "end"]} {
    %0:3 = fork [3] %arg11 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %memEnd = mem_controller[%arg5 : memref<10xi32>] %arg10 (%144, %addressResult_37, %dataResult_38) %159#4 {connectedBlocks = [5 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i32>, !handshake.channel<i4>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_35) %159#3 {connectedBlocks = [4 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller6"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_33) %159#2 {connectedBlocks = [4 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller7"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_3, %memEnd_4 = mem_controller[%arg2 : memref<10xi32>] %arg7 (%addressResult_31) %159#1 {connectedBlocks = [4 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller8"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_5:2, %memEnd_6 = mem_controller[%arg1 : memref<10xi32>] %arg6 (%addressResult, %addressResult_13) %159#0 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller9"} :    (!handshake.channel<i4>, !handshake.channel<i4>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %7 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant8", value = false} : <>, <i1>
    %8:2 = fork [2] %7 {handshake.bb = 0 : ui32, handshake.name = "fork1"} : <i1>
    %10 = extsi %8#0 {handshake.bb = 0 : ui32, handshake.name = "extsi7"} : <i1> to <i32>
    %12 = extsi %8#1 {handshake.bb = 0 : ui32, handshake.name = "extsi8"} : <i1> to <i32>
    %15 = mux %26#0 [%10, %151] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %16 = buffer %15 {handshake.bb = 1 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %17 = buffer %16 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %18:2 = fork [2] %17 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i32>
    %20 = mux %26#1 [%12, %153] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %22 = mux %26#2 [%arg0, %155] {handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %23 = buffer %22 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %24 = buffer %23 {handshake.bb = 1 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %25:2 = fork [2] %24 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <i32>
    %result, %index = control_merge %0#2, %141#1  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %26:3 = fork [3] %index {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i1>
    %29 = cmpi ult, %18#1, %25#1 {handshake.bb = 1 : ui32, handshake.name = "cmpi0"} : <i32>
    %30:4 = fork [4] %29 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i1>
    %trueResult, %falseResult = cond_br %30#3, %25#0 {handshake.bb = 1 : ui32, handshake.name = "cond_br2"} : <i1>, <i32>
    sink %falseResult {handshake.name = "sink0"} : <i32>
    %trueResult_7, %falseResult_8 = cond_br %30#2, %18#0 {handshake.bb = 1 : ui32, handshake.name = "cond_br3"} : <i1>, <i32>
    sink %falseResult_8 {handshake.name = "sink1"} : <i32>
    %35 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %36 = buffer %35 {handshake.bb = 1 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_9, %falseResult_10 = cond_br %30#1, %36 {handshake.bb = 1 : ui32, handshake.name = "cond_br4"} : <i1>, <>
    %38 = buffer %20 {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %39 = buffer %38 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_11, %falseResult_12 = cond_br %30#0, %39 {handshake.bb = 1 : ui32, handshake.name = "cond_br5"} : <i1>, <i32>
    sink %trueResult_11 {handshake.name = "sink2"} : <i32>
    %41 = buffer %trueResult_7 {handshake.bb = 2 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %42 = buffer %41 {handshake.bb = 2 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %43:3 = fork [3] %42 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i32>
    %45 = trunci %43#0 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i32> to <i4>
    %47 = trunci %43#1 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i32> to <i4>
    %48 = buffer %trueResult_9 {handshake.bb = 2 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %49 = buffer %48 {handshake.bb = 2 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %50:2 = fork [2] %49 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <>
    %51 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %52 = constant %51 {handshake.bb = 2 : ui32, handshake.name = "constant9", value = 1 : i2} : <>, <i2>
    %53 = extsi %52 {handshake.bb = 2 : ui32, handshake.name = "extsi9"} : <i2> to <i4>
    %55 = constant %50#0 {handshake.bb = 2 : ui32, handshake.name = "constant10", value = false} : <>, <i1>
    %addressResult, %dataResult = load[%47] %outputs_5#0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i4>, <i32>
    %56:2 = fork [2] %dataResult {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i32>
    %57 = addi %45, %53 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i4>
    %addressResult_13, %dataResult_14 = load[%57] %outputs_5#1 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i4>, <i32>
    %59 = extsi %55 {handshake.bb = 2 : ui32, handshake.name = "extsi10"} : <i1> to <i32>
    %60 = buffer %trueResult {handshake.bb = 2 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %61 = buffer %60 {handshake.bb = 2 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %66 = mux %83#0 [%56#1, %123] {handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %67 = buffer %66 {handshake.bb = 3 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %68 = buffer %67 {handshake.bb = 3 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %69:2 = fork [2] %68 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i32>
    %70 = buffer %83#1 {handshake.bb = 3 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %71 = mux %70 [%59, %121] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %73 = mux %83#2 [%61, %125] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %75 = mux %83#3 [%43#2, %127] {handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %77 = mux %83#4 [%56#0, %129] {handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %79 = mux %83#5 [%dataResult_14, %131] {handshake.bb = 3 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %80 = buffer %79 {handshake.bb = 3 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %81 = buffer %80 {handshake.bb = 3 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %82:2 = fork [2] %81 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i32>
    %result_15, %index_16 = control_merge %50#1, %133  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %83:6 = fork [6] %index_16 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i1>
    %86 = cmpi slt, %69#1, %82#1 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %87:7 = fork [7] %86 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i1>
    %88 = buffer %73 {handshake.bb = 3 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %89 = buffer %88 {handshake.bb = 3 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_17, %falseResult_18 = cond_br %87#6, %89 {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <i32>
    %91 = buffer %75 {handshake.bb = 3 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %92 = buffer %91 {handshake.bb = 3 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_19, %falseResult_20 = cond_br %87#5, %92 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <i32>
    %94 = buffer %77 {handshake.bb = 3 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %95 = buffer %94 {handshake.bb = 3 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_21, %falseResult_22 = cond_br %87#4, %95 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    %trueResult_23, %falseResult_24 = cond_br %87#3, %82#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br9"} : <i1>, <i32>
    sink %falseResult_24 {handshake.name = "sink4"} : <i32>
    %trueResult_25, %falseResult_26 = cond_br %87#2, %69#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br10"} : <i1>, <i32>
    sink %falseResult_26 {handshake.name = "sink5"} : <i32>
    %101 = buffer %71 {handshake.bb = 3 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %102 = buffer %101 {handshake.bb = 3 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %103 = buffer %87#1 {handshake.bb = 3 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_27, %falseResult_28 = cond_br %103, %102 {handshake.bb = 3 : ui32, handshake.name = "cond_br11"} : <i1>, <i32>
    %104 = buffer %result_15 {handshake.bb = 3 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %105 = buffer %104 {handshake.bb = 3 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_29, %falseResult_30 = cond_br %87#0, %105 {handshake.bb = 3 : ui32, handshake.name = "cond_br12"} : <i1>, <>
    %107 = buffer %trueResult_25 {handshake.bb = 4 : ui32, handshake.name = "buffer76", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %108 = buffer %107 {handshake.bb = 4 : ui32, handshake.name = "buffer77", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %109:3 = fork [3] %108 {handshake.bb = 4 : ui32, handshake.name = "fork13"} : <i32>
    %111 = trunci %109#0 {handshake.bb = 4 : ui32, handshake.name = "trunci2"} : <i32> to <i4>
    %113 = trunci %109#1 {handshake.bb = 4 : ui32, handshake.name = "trunci3"} : <i32> to <i4>
    %114 = source {handshake.bb = 4 : ui32, handshake.name = "source1"} : <>
    %115 = constant %114 {handshake.bb = 4 : ui32, handshake.name = "constant11", value = 1 : i2} : <>, <i2>
    %116 = extsi %115 {handshake.bb = 4 : ui32, handshake.name = "extsi4"} : <i2> to <i32>
    %addressResult_31, %dataResult_32 = load[%113] %outputs_3 {handshake.bb = 4 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load7"} : <i4>, <i32>
    %117 = trunci %dataResult_32 {handshake.bb = 4 : ui32, handshake.name = "trunci4"} : <i32> to <i4>
    %addressResult_33, %dataResult_34 = load[%111] %outputs_1 {handshake.bb = 4 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load8"} : <i4>, <i32>
    %addressResult_35, %dataResult_36 = load[%117] %outputs {handshake.bb = 4 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load9"} : <i4>, <i32>
    %118 = muli %dataResult_34, %dataResult_36 {handshake.bb = 4 : ui32, handshake.name = "muli0"} : <i32>
    %119 = buffer %trueResult_27 {handshake.bb = 4 : ui32, handshake.name = "buffer81", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %120 = buffer %119 {handshake.bb = 4 : ui32, handshake.name = "buffer82", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %121 = addi %120, %118 {handshake.bb = 4 : ui32, handshake.name = "addi0"} : <i32>
    %123 = addi %109#2, %116 {handshake.bb = 4 : ui32, handshake.name = "addi2"} : <i32>
    %124 = buffer %trueResult_17 {handshake.bb = 4 : ui32, handshake.name = "buffer68", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %125 = buffer %124 {handshake.bb = 4 : ui32, handshake.name = "buffer69", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %126 = buffer %trueResult_19 {handshake.bb = 4 : ui32, handshake.name = "buffer70", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %127 = buffer %126 {handshake.bb = 4 : ui32, handshake.name = "buffer71", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %128 = buffer %trueResult_21 {handshake.bb = 4 : ui32, handshake.name = "buffer72", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %129 = buffer %128 {handshake.bb = 4 : ui32, handshake.name = "buffer73", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %130 = buffer %trueResult_23 {handshake.bb = 4 : ui32, handshake.name = "buffer74", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %131 = buffer %130 {handshake.bb = 4 : ui32, handshake.name = "buffer75", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %132 = buffer %trueResult_29 {handshake.bb = 4 : ui32, handshake.name = "buffer83", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %133 = buffer %132 {handshake.bb = 4 : ui32, handshake.name = "buffer84", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %134 = buffer %falseResult_20 {handshake.bb = 5 : ui32, handshake.name = "buffer87", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %135 = buffer %134 {handshake.bb = 5 : ui32, handshake.name = "buffer88", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %136:2 = fork [2] %135 {handshake.bb = 5 : ui32, handshake.name = "fork14"} : <i32>
    %137 = buffer %136#0 {handshake.bb = 5 : ui32, handshake.name = "buffer89", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %138 = trunci %137 {handshake.bb = 5 : ui32, handshake.name = "trunci5"} : <i32> to <i4>
    %139 = buffer %falseResult_30 {handshake.bb = 5 : ui32, handshake.name = "buffer95", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %140 = buffer %139 {handshake.bb = 5 : ui32, handshake.name = "buffer96", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %141:2 = fork [2] %140 {handshake.bb = 5 : ui32, handshake.name = "fork15"} : <>
    %143 = constant %141#0 {handshake.bb = 5 : ui32, handshake.name = "constant12", value = 1 : i2} : <>, <i2>
    %144 = extsi %143 {handshake.bb = 5 : ui32, handshake.name = "extsi5"} : <i2> to <i32>
    %145 = source {handshake.bb = 5 : ui32, handshake.name = "source2"} : <>
    %146 = constant %145 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = 1 : i2} : <>, <i2>
    %147 = extsi %146 {handshake.bb = 5 : ui32, handshake.name = "extsi6"} : <i2> to <i32>
    %148 = buffer %falseResult_28 {handshake.bb = 5 : ui32, handshake.name = "buffer93", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %149 = buffer %148 {handshake.bb = 5 : ui32, handshake.name = "buffer94", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %addressResult_37, %dataResult_38 = store[%138] %149 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i4>, <i32>
    %151 = addi %136#1, %147 {handshake.bb = 5 : ui32, handshake.name = "addi3"} : <i32>
    %152 = buffer %falseResult_22 {handshake.bb = 5 : ui32, handshake.name = "buffer91", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %153 = buffer %152 {handshake.bb = 5 : ui32, handshake.name = "buffer92", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %154 = buffer %falseResult_18 {handshake.bb = 5 : ui32, handshake.name = "buffer85", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %155 = buffer %154 {handshake.bb = 5 : ui32, handshake.name = "buffer86", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %157 = buffer %falseResult_10 {handshake.bb = 6 : ui32, handshake.name = "buffer101", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %158 = buffer %157 {handshake.bb = 6 : ui32, handshake.name = "buffer102", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %159:5 = fork [5] %158 {handshake.bb = 6 : ui32, handshake.name = "fork16"} : <>
    %161 = buffer %falseResult_12 {handshake.bb = 6 : ui32, handshake.name = "buffer99", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %162 = buffer %161 {handshake.bb = 6 : ui32, handshake.name = "buffer100", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %162, %memEnd_6, %memEnd_4, %memEnd_2, %memEnd_0, %memEnd, %0#1 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


module {
  handshake.func @spmv(%arg0: !handshake.channel<i32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: memref<10xi32>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["n", "row", "col", "val", "vec", "out", "row_start", "col_start", "val_start", "vec_start", "out_start", "start"], cfg.edges = "[0,1][2,3][4,3][1,2,6,cmpi0][3,4,5,cmpi1][5,1]", resNames = ["out0", "row_end", "col_end", "val_end", "vec_end", "out_end", "end"]} {
    %0:9 = fork [9] %arg11 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %memEnd = mem_controller[%arg5 : memref<10xi32>] %arg10 (%103, %addressResult_25, %dataResult_26) %0#4 {connectedBlocks = [5 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i32>, !handshake.channel<i4>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_21) %0#3 {connectedBlocks = [4 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller6"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_19) %0#2 {connectedBlocks = [4 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller7"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_3, %memEnd_4 = mem_controller[%arg2 : memref<10xi32>] %arg7 (%addressResult_17) %0#1 {connectedBlocks = [4 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller8"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_5:2, %memEnd_6 = mem_controller[%arg1 : memref<10xi32>] %arg6 (%addressResult, %addressResult_9) %0#0 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller9"} :    (!handshake.channel<i4>, !handshake.channel<i4>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %6 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %7 = constant %6 {handshake.bb = 0 : ui32, handshake.name = "constant8", value = false} : <>, <i1>
    %8:2 = fork [2] %7 {handshake.bb = 0 : ui32, handshake.name = "fork1"} : <i1>
    %10 = extsi %8#0 {handshake.bb = 0 : ui32, handshake.name = "extsi0"} : <i1> to <i32>
    %12 = extsi %8#1 {handshake.bb = 0 : ui32, handshake.name = "extsi1"} : <i1> to <i32>
    %13 = buffer %31 {handshake.bb = 1 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %14 = buffer %13 {handshake.bb = 1 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult, %falseResult = cond_br %40#1, %14 {handshake.bb = 1 : ui32, handshake.name = "cond_br16"} : <i1>, <i32>
    sink %trueResult {handshake.name = "sink0"} : <i32>
    %trueResult_7, %falseResult_8 = cond_br %40#2, %28#1 {handshake.bb = 1 : ui32, handshake.name = "cond_br17"} : <i1>, <i32>
    sink %falseResult_8 {handshake.name = "sink1"} : <i32>
    %19 = constant %0#8 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %21 = merge %19, %40#3 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %22 = buffer %21 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %23:3 = fork [3] %22 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <i1>
    %25 = mux %23#2 [%arg0, %trueResult_7] {ftd.regen, handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mux0"} : <i1>, <i32>
    %26 = buffer %25 {handshake.bb = 1 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %27 = buffer %26 {handshake.bb = 1 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %28:2 = fork [2] %27 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <i32>
    %31 = mux %23#1 [%12, %47#0] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %33 = mux %23#0 [%10, %108] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %34 = buffer %33 {handshake.bb = 1 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %35 = buffer %34 {handshake.bb = 1 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %36:2 = fork [2] %35 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i32>
    %39 = cmpi ult, %36#1, %28#0 {handshake.bb = 1 : ui32, handshake.name = "cmpi0"} : <i32>
    %40:4 = fork [4] %39 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i1>
    %41 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %42 = constant %41 {handshake.bb = 2 : ui32, handshake.name = "constant10", value = 1 : i2} : <>, <i2>
    %43 = extsi %42 {handshake.bb = 2 : ui32, handshake.name = "extsi7"} : <i2> to <i4>
    %44 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %45 = constant %44 {handshake.bb = 2 : ui32, handshake.name = "constant11", value = false} : <>, <i1>
    %46 = extsi %45 {handshake.bb = 2 : ui32, handshake.name = "extsi3"} : <i1> to <i32>
    %addressResult, %dataResult = load[%100] %outputs_5#0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i4>, <i32>
    %47:2 = fork [2] %dataResult {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i32>
    %48 = addi %96, %43 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i4>
    %addressResult_9, %dataResult_10 = load[%48] %outputs_5#1 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i4>, <i32>
    %trueResult_11, %falseResult_12 = cond_br %73#2, %61#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br18"} : <i1>, <i32>
    sink %falseResult_12 {handshake.name = "sink2"} : <i32>
    %52 = constant %0#7 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant9", value = false} : <>, <i1>
    %54 = merge %52, %73#3 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge3"} : <i1>
    %55 = buffer %54 {handshake.bb = 3 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %56:3 = fork [3] %55 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork7"} : <i1>
    %58 = mux %56#2 [%dataResult_10, %trueResult_11] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %59 = buffer %58 {handshake.bb = 3 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %60 = buffer %59 {handshake.bb = 3 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %61:2 = fork [2] %60 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i32>
    %62 = buffer %56#1 {handshake.bb = 3 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %63 = mux %62 [%46, %89] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %64 = buffer %47#1 {handshake.bb = 3 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %66 = mux %56#0 [%64, %91] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %67 = buffer %66 {handshake.bb = 3 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %68 = buffer %67 {handshake.bb = 3 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %69:2 = fork [2] %68 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i32>
    %72 = cmpi slt, %69#1, %61#0 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %73:4 = fork [4] %72 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i1>
    %74 = buffer %63 {handshake.bb = 4 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %75 = buffer %74 {handshake.bb = 4 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %76 = buffer %73#1 {handshake.bb = 4 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_13, %falseResult_14 = cond_br %76, %75 {handshake.bb = 4 : ui32, handshake.name = "cond_br19"} : <i1>, <i32>
    %trueResult_15, %falseResult_16 = cond_br %73#0, %69#0 {handshake.bb = 4 : ui32, handshake.name = "cond_br20"} : <i1>, <i32>
    sink %falseResult_16 {handshake.name = "sink3"} : <i32>
    %79:3 = fork [3] %trueResult_15 {handshake.bb = 4 : ui32, handshake.name = "fork11"} : <i32>
    %81 = trunci %79#0 {handshake.bb = 4 : ui32, handshake.name = "trunci0"} : <i32> to <i4>
    %83 = trunci %79#1 {handshake.bb = 4 : ui32, handshake.name = "trunci1"} : <i32> to <i4>
    %84 = source {handshake.bb = 4 : ui32, handshake.name = "source4"} : <>
    %85 = constant %84 {handshake.bb = 4 : ui32, handshake.name = "constant12", value = 1 : i2} : <>, <i2>
    %86 = extsi %85 {handshake.bb = 4 : ui32, handshake.name = "extsi4"} : <i2> to <i32>
    %addressResult_17, %dataResult_18 = load[%83] %outputs_3 {handshake.bb = 4 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load7"} : <i4>, <i32>
    %87 = trunci %dataResult_18 {handshake.bb = 4 : ui32, handshake.name = "trunci2"} : <i32> to <i4>
    %addressResult_19, %dataResult_20 = load[%81] %outputs_1 {handshake.bb = 4 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load8"} : <i4>, <i32>
    %addressResult_21, %dataResult_22 = load[%87] %outputs {handshake.bb = 4 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load9"} : <i4>, <i32>
    %88 = muli %dataResult_20, %dataResult_22 {handshake.bb = 4 : ui32, handshake.name = "muli0"} : <i32>
    %89 = addi %trueResult_13, %88 {handshake.bb = 4 : ui32, handshake.name = "addi0"} : <i32>
    %91 = addi %79#2, %86 {handshake.bb = 4 : ui32, handshake.name = "addi2"} : <i32>
    %trueResult_23, %falseResult_24 = cond_br %40#0, %36#0 {handshake.bb = 5 : ui32, handshake.name = "cond_br21"} : <i1>, <i32>
    sink %falseResult_24 {handshake.name = "sink4"} : <i32>
    %94:4 = fork [4] %trueResult_23 {handshake.bb = 5 : ui32, handshake.name = "fork12"} : <i32>
    %95 = buffer %94#0 {handshake.bb = 5 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %96 = trunci %95 {handshake.bb = 5 : ui32, handshake.name = "trunci3"} : <i32> to <i4>
    %97 = buffer %94#1 {handshake.bb = 5 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %98 = trunci %97 {handshake.bb = 5 : ui32, handshake.name = "trunci4"} : <i32> to <i4>
    %100 = trunci %94#2 {handshake.bb = 5 : ui32, handshake.name = "trunci5"} : <i32> to <i4>
    %102 = constant %0#5 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = 1 : i2} : <>, <i2>
    %103 = extsi %102 {handshake.bb = 5 : ui32, handshake.name = "extsi5"} : <i2> to <i32>
    %104 = source {handshake.bb = 5 : ui32, handshake.name = "source5"} : <>
    %105 = constant %104 {handshake.bb = 5 : ui32, handshake.name = "constant14", value = 1 : i2} : <>, <i2>
    %106 = extsi %105 {handshake.bb = 5 : ui32, handshake.name = "extsi6"} : <i2> to <i32>
    %addressResult_25, %dataResult_26 = store[%98] %falseResult_14 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i4>, <i32>
    %108 = addi %94#3, %106 {handshake.bb = 5 : ui32, handshake.name = "addi3"} : <i32>
    %109 = buffer %0#6 {handshake.bb = 6 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %falseResult, %memEnd_6, %memEnd_4, %memEnd_2, %memEnd_0, %memEnd, %109 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


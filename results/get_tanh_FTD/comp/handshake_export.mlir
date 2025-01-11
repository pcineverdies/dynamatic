module {
  handshake.func @get_tanh(%arg0: memref<1000xf32>, %arg1: memref<1000xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "addr", "A_start", "addr_start", "start"], cfg.edges = "[0,1][2,3][1,3,2,cmpf0][3,1,4,cmpi0]", resNames = ["A_end", "addr_end", "end"]} {
    %0:4 = fork [4] %arg4 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %outputs, %memEnd = mem_controller[%arg1 : memref<1000xi32>] %arg3 (%addressResult) %97#1 {connectedBlocks = [1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller1"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %3:2 = lsq[%arg0 : memref<1000xf32>] (%arg2, %19#1, %addressResult_0, %70#1, %addressResult_10, %dataResult_11, %97#0)  {groupSizes = [1 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq1"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i10>, !handshake.control<>, !handshake.channel<i10>, !handshake.channel<f32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.control<>)
    %4 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %5 = constant %4 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %6 = extsi %5 {handshake.bb = 0 : ui32, handshake.name = "extsi3"} : <i1> to <i11>
    %9 = constant %0#2 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %12 = mux %16#1 [%0#1, %trueResult_4] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <>
    %14 = merge %9, %91#2 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge2"} : <i1>
    %15 = buffer %14 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %16:2 = fork [2] %15 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork1"} : <i1>
    %17 = buffer %12 {handshake.bb = 1 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %18 = buffer %17 {handshake.bb = 1 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %19:2 = lazy_fork [2] %18 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork0"} : <>
    %20 = merge %0#3, %trueResult_12 {handshake.bb = 1 : ui32, handshake.name = "merge0"} : <>
    %22 = mux %16#0 [%6, %trueResult_8] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i11>
    %23 = buffer %22 {handshake.bb = 1 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i11>
    %24 = buffer %23 {handshake.bb = 1 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i11>
    %25:2 = fork [2] %24 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i11>
    %27 = extsi %25#1 {handshake.bb = 1 : ui32, handshake.name = "extsi4"} : <i11> to <i12>
    %29 = trunci %25#0 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i11> to <i10>
    %30 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %31 = constant %30 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 1.000000e+00 : f32} : <>, <f32>
    %32:2 = fork [2] %31 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <f32>
    %addressResult, %dataResult = load[%29] %outputs {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i10>, <i32>
    %33:2 = fork [2] %dataResult {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i32>
    %34 = buffer %33#0 {handshake.bb = 1 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %35 = trunci %34 {handshake.bb = 1 : ui32, handshake.name = "trunci1"} : <i32> to <i10>
    %37 = trunci %33#1 {handshake.bb = 1 : ui32, handshake.name = "trunci2"} : <i32> to <i10>
    %addressResult_0, %dataResult_1 = load[%37] %3#0 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (0)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i10>, <f32>
    %38:2 = fork [2] %dataResult_1 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <f32>
    %41 = cmpf oge, %38#0, %32#1 {handshake.bb = 1 : ui32, handshake.name = "cmpf0"} : <f32>
    %42:4 = fork [4] %41 {handshake.bb = 1 : ui32, handshake.name = "fork6"} : <i1>
    %43 = buffer %20 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %44 = buffer %43 {handshake.bb = 1 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult, %falseResult = cond_br %42#3, %44 {handshake.bb = 1 : ui32, handshake.name = "cond_br2"} : <i1>, <>
    %trueResult_2, %falseResult_3 = cond_br %42#2, %38#1 {handshake.bb = 2 : ui32, handshake.name = "cond_br3"} : <i1>, <f32>
    %48:5 = fork [5] %falseResult_3 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <f32>
    sink %trueResult_2 {handshake.name = "sink1"} : <f32>
    %49 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %50 = constant %49 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 3.70476198 : f32} : <>, <f32>
    %51 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %52 = constant %51 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 19.5238094 : f32} : <>, <f32>
    %55 = mulf %48#3, %48#4 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf0"} : <f32>
    %56 = addf %55, %52 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf0"} : <f32>
    %58 = mulf %56, %48#2 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf1"} : <f32>
    %60 = mulf %58, %48#1 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf2"} : <f32>
    %61 = addf %60, %50 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf1"} : <f32>
    %63 = mulf %61, %48#0 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf3"} : <f32>
    %64 = buffer %falseResult {handshake.bb = 2 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %65 = buffer %64 {handshake.bb = 2 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %66 = buffer %70#0 {handshake.bb = 3 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %trueResult_4, %falseResult_5 = cond_br %91#1, %66 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br4"} : <i1>, <>
    sink %falseResult_5 {handshake.name = "sink3"} : <>
    %68 = buffer %19#0 {handshake.bb = 3 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %69 = buffer %68 {handshake.bb = 3 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %70:2 = lazy_fork [2] %69 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork1"} : <>
    %trueResult_6, %falseResult_7 = cond_br %42#1, %32#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br11"} : <i1>, <f32>
    sink %falseResult_7 {handshake.name = "sink4"} : <f32>
    %trueResult_8, %falseResult_9 = cond_br %91#0, %88 {handshake.bb = 3 : ui32, handshake.name = "cond_br12"} : <i1>, <i11>
    sink %falseResult_9 {handshake.name = "sink5"} : <i11>
    %74 = merge %trueResult, %65 {handshake.bb = 3 : ui32, handshake.name = "merge1"} : <>
    %76 = mux %42#0 [%63, %trueResult_6] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux1"} : <i1>, <f32>
    %77 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %78 = constant %77 {handshake.bb = 3 : ui32, handshake.name = "constant3", value = 1000 : i11} : <>, <i11>
    %79 = extsi %78 {handshake.bb = 3 : ui32, handshake.name = "extsi5"} : <i11> to <i12>
    %80 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %81 = constant %80 {handshake.bb = 3 : ui32, handshake.name = "constant4", value = 1 : i2} : <>, <i2>
    %82 = extsi %81 {handshake.bb = 3 : ui32, handshake.name = "extsi6"} : <i2> to <i12>
    %83 = buffer %76 {handshake.bb = 3 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <f32>
    %84 = buffer %83 {handshake.bb = 3 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %addressResult_10, %dataResult_11 = store[%35] %84 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load3" (0)>, <"store1" (0)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i10>, <f32>
    %85 = addi %27, %82 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i12>
    %86:2 = fork [2] %85 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i12>
    %88 = trunci %86#0 {handshake.bb = 3 : ui32, handshake.name = "trunci3"} : <i12> to <i11>
    %90 = cmpi ult, %86#1, %79 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i12>
    %91:4 = fork [4] %90 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i1>
    %92 = buffer %74 {handshake.bb = 3 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %93 = buffer %92 {handshake.bb = 3 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %94 = buffer %91#3 {handshake.bb = 3 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_12, %falseResult_13 = cond_br %94, %93 {handshake.bb = 3 : ui32, handshake.name = "cond_br10"} : <i1>, <>
    %95 = buffer %falseResult_13 {handshake.bb = 4 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %96 = buffer %95 {handshake.bb = 4 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %97:2 = fork [2] %96 {handshake.bb = 4 : ui32, handshake.name = "fork10"} : <>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %3#1, %memEnd, %0#0 : <>, <>, <>
  }
}


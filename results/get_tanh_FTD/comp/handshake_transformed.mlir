module {
  handshake.func @get_tanh(%arg0: memref<1000xf32>, %arg1: memref<1000xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "addr", "A_start", "addr_start", "start"], cfg.edges = "[0,1][2,3][1,3,2,cmpf0][3,1,4,cmpi0]", resNames = ["A_end", "addr_end", "end"]} {
    %0:5 = fork [5] %arg4 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %outputs, %memEnd = mem_controller[%arg1 : memref<1000xi32>] %arg3 (%addressResult) %46#1 {connectedBlocks = [1 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %1:2 = lsq[%arg0 : memref<1000xf32>] (%arg2, %9#1, %addressResult_0, %35#1, %addressResult_18, %dataResult_19, %46#0)  {groupSizes = [1 : i32, 1 : i32], handshake.name = "lsq1"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i10>, !handshake.control<>, !handshake.channel<i10>, !handshake.channel<f32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.control<>)
    %2 = br %0#4 {handshake.bb = 0 : ui32, handshake.name = "br1"} : <>
    %3 = constant %0#3 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %4:2 = fork [2] %3 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %5 = extsi %4#0 {handshake.bb = 1 : ui32, handshake.name = "extsi3"} : <i1> to <i11>
    %6 = mux %8#2 [%0#2, %trueResult_8] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <>
    %7 = merge %4#1, %45#3 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge2"} : <i1>
    %8:3 = fork [3] %7 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %9:2 = lazy_fork [2] %6 {handshake.bb = 1 : ui32, handshake.name = "lazy_fork0"} : <>
    %10 = mux %8#1 [%0#1, %trueResult_14] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %11:5 = fork [5] %10 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %result, %index = control_merge %2, %trueResult_20  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    sink %index {handshake.name = "sink0"} : <i1>
    %12 = mux %8#0 [%5, %trueResult_12] {handshake.bb = 1 : ui32, handshake.name = "mux5"} : <i1>, <i11>
    %13:2 = fork [2] %12 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i11>
    %14 = extsi %13#1 {handshake.bb = 1 : ui32, handshake.name = "extsi4"} : <i11> to <i12>
    %15 = trunci %13#0 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i11> to <i10>
    %16 = constant %11#4 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 1.000000e+00 : f32} : <>, <f32>
    %17:2 = fork [2] %16 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <f32>
    %addressResult, %dataResult = load[%15] %outputs {handshake.bb = 1 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i10>, <i32>
    %18:2 = fork [2] %dataResult {handshake.bb = 1 : ui32, handshake.name = "fork6"} : <i32>
    %19 = trunci %18#0 {handshake.bb = 1 : ui32, handshake.name = "trunci1"} : <i32> to <i10>
    %20 = trunci %18#1 {handshake.bb = 1 : ui32, handshake.name = "trunci2"} : <i32> to <i10>
    %addressResult_0, %dataResult_1 = load[%20] %1#0 {handshake.bb = 1 : ui32, handshake.deps = #handshake<deps[<"store1" (0)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i10>, <f32>
    %21:2 = fork [2] %dataResult_1 {handshake.bb = 1 : ui32, handshake.name = "fork7"} : <f32>
    %22 = cmpf oge, %21#0, %17#1 {handshake.bb = 1 : ui32, handshake.name = "cmpf0"} : <f32>
    %23:5 = fork [5] %22 {handshake.bb = 1 : ui32, handshake.name = "fork8"} : <i1>
    %trueResult, %falseResult = cond_br %23#4, %result {handshake.bb = 1 : ui32, handshake.name = "cond_br2"} : <i1>, <>
    %trueResult_2, %falseResult_3 = cond_br %23#3, %21#1 {handshake.bb = 2 : ui32, handshake.name = "cond_br3"} : <i1>, <f32>
    %24:5 = fork [5] %falseResult_3 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <f32>
    sink %trueResult_2 {handshake.name = "sink1"} : <f32>
    %trueResult_4, %falseResult_5 = cond_br %23#2, %11#3 {handshake.bb = 2 : ui32, handshake.name = "cond_br8"} : <i1>, <>
    %25:2 = fork [2] %falseResult_5 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <>
    sink %trueResult_4 {handshake.name = "sink2"} : <>
    %result_6, %index_7 = control_merge %falseResult  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    sink %index_7 {handshake.name = "sink3"} : <i1>
    %26 = constant %25#1 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 3.70476198 : f32} : <>, <f32>
    %27 = constant %25#0 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 19.5238094 : f32} : <>, <f32>
    %28 = mulf %24#3, %24#4 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf0"} : <f32>
    %29 = addf %28, %27 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf0"} : <f32>
    %30 = mulf %29, %24#2 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf1"} : <f32>
    %31 = mulf %30, %24#1 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf2"} : <f32>
    %32 = addf %31, %26 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf1"} : <f32>
    %33 = mulf %32, %24#0 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf3"} : <f32>
    %34 = br %result_6 {handshake.bb = 2 : ui32, handshake.name = "br3"} : <>
    %trueResult_8, %falseResult_9 = cond_br %45#2, %35#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br4"} : <i1>, <>
    sink %falseResult_9 {handshake.name = "sink4"} : <>
    %35:2 = lazy_fork [2] %9#0 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_10, %falseResult_11 = cond_br %23#1, %17#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br18"} : <i1>, <f32>
    sink %falseResult_11 {handshake.name = "sink5"} : <f32>
    %trueResult_12, %falseResult_13 = cond_br %45#0, %43 {handshake.bb = 3 : ui32, handshake.name = "cond_br19"} : <i1>, <i11>
    sink %falseResult_13 {handshake.name = "sink6"} : <i11>
    %trueResult_14, %falseResult_15 = cond_br %45#1, %11#2 {handshake.bb = 3 : ui32, handshake.name = "cond_br20"} : <i1>, <>
    sink %falseResult_15 {handshake.name = "sink7"} : <>
    %result_16, %index_17 = control_merge %trueResult, %34  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    sink %index_17 {handshake.name = "sink8"} : <i1>
    %36 = mux %23#0 [%33, %trueResult_10] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <f32>
    %37 = constant %11#1 {handshake.bb = 3 : ui32, handshake.name = "constant0", value = 1000 : i11} : <>, <i11>
    %38 = extsi %37 {handshake.bb = 3 : ui32, handshake.name = "extsi5"} : <i11> to <i12>
    %39 = constant %11#0 {handshake.bb = 3 : ui32, handshake.name = "constant3", value = 1 : i2} : <>, <i2>
    %40 = extsi %39 {handshake.bb = 3 : ui32, handshake.name = "extsi6"} : <i2> to <i12>
    %addressResult_18, %dataResult_19 = store[%19] %36 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load3" (0)>, <"store1" (0)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i10>, <f32>
    %41 = addi %14, %40 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i12>
    %42:2 = fork [2] %41 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i12>
    %43 = trunci %42#0 {handshake.bb = 3 : ui32, handshake.name = "trunci3"} : <i12> to <i11>
    %44 = cmpi ult, %42#1, %38 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i12>
    %45:5 = fork [5] %44 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i1>
    %trueResult_20, %falseResult_21 = cond_br %45#4, %result_16 {handshake.bb = 3 : ui32, handshake.name = "cond_br17"} : <i1>, <>
    %result_22, %index_23 = control_merge %falseResult_21  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_23 {handshake.name = "sink9"} : <i1>
    %46:2 = fork [2] %result_22 {handshake.bb = 4 : ui32, handshake.name = "fork13"} : <>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %1#1, %memEnd, %0#0 : <>, <>, <>
  }
}


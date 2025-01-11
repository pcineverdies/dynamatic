module {
  handshake.func @get_tanh(%arg0: memref<1000xf32>, %arg1: memref<1000xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "addr", "A_start", "addr_start", "start"], cfg.edges = "[0,1][2,3][1,3,2,cmpf0][3,1,4,cmpi0]", resNames = ["A_end", "addr_end", "end"]} {
    %0:4 = fork [4] %arg4 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %outputs, %memEnd = mem_controller[%arg1 : memref<1000xi32>] %arg3 (%addressResult) %49#1 {connectedBlocks = [1 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %1:2 = lsq[%arg0 : memref<1000xf32>] (%arg2, %10#1, %addressResult_0, %36#1, %addressResult_14, %dataResult_15, %49#0)  {groupSizes = [1 : i32, 1 : i32], handshake.name = "lsq1"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i10>, !handshake.control<>, !handshake.channel<i10>, !handshake.channel<f32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.control<>)
    %2 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %3 = constant %2 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %4 = extsi %3 {handshake.bb = 0 : ui32, handshake.name = "extsi3"} : <i1> to <i11>
    %5 = br %0#3 {handshake.bb = 0 : ui32, handshake.name = "br1"} : <>
    %6 = constant %0#2 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %7 = mux %9#1 [%0#1, %trueResult_6] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <>
    %8 = merge %6, %48#2 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge2"} : <i1>
    %9:2 = fork [2] %8 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %10:2 = lazy_fork [2] %7 {handshake.bb = 1 : ui32, handshake.name = "lazy_fork0"} : <>
    %result, %index = control_merge %5, %trueResult_16  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    sink %index {handshake.name = "sink0"} : <i1>
    %11 = mux %9#0 [%4, %trueResult_10] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i11>
    %12:2 = fork [2] %11 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i11>
    %13 = extsi %12#1 {handshake.bb = 1 : ui32, handshake.name = "extsi4"} : <i11> to <i12>
    %14 = trunci %12#0 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i11> to <i10>
    %15 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %16 = constant %15 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 1.000000e+00 : f32} : <>, <f32>
    %17:2 = fork [2] %16 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <f32>
    %addressResult, %dataResult = load[%14] %outputs {handshake.bb = 1 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i10>, <i32>
    %18:2 = fork [2] %dataResult {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i32>
    %19 = trunci %18#0 {handshake.bb = 1 : ui32, handshake.name = "trunci1"} : <i32> to <i10>
    %20 = trunci %18#1 {handshake.bb = 1 : ui32, handshake.name = "trunci2"} : <i32> to <i10>
    %addressResult_0, %dataResult_1 = load[%20] %1#0 {handshake.bb = 1 : ui32, handshake.deps = #handshake<deps[<"store1" (0)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i10>, <f32>
    %21:2 = fork [2] %dataResult_1 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <f32>
    %22 = cmpf oge, %21#0, %17#1 {handshake.bb = 1 : ui32, handshake.name = "cmpf0"} : <f32>
    %23:4 = fork [4] %22 {handshake.bb = 1 : ui32, handshake.name = "fork6"} : <i1>
    %trueResult, %falseResult = cond_br %23#3, %result {handshake.bb = 1 : ui32, handshake.name = "cond_br2"} : <i1>, <>
    %trueResult_2, %falseResult_3 = cond_br %23#2, %21#1 {handshake.bb = 2 : ui32, handshake.name = "cond_br3"} : <i1>, <f32>
    %24:5 = fork [5] %falseResult_3 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <f32>
    sink %trueResult_2 {handshake.name = "sink1"} : <f32>
    %result_4, %index_5 = control_merge %falseResult  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    sink %index_5 {handshake.name = "sink2"} : <i1>
    %25 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %26 = constant %25 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 3.70476198 : f32} : <>, <f32>
    %27 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %28 = constant %27 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 19.5238094 : f32} : <>, <f32>
    %29 = mulf %24#3, %24#4 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf0"} : <f32>
    %30 = addf %29, %28 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf0"} : <f32>
    %31 = mulf %30, %24#2 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf1"} : <f32>
    %32 = mulf %31, %24#1 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf2"} : <f32>
    %33 = addf %32, %26 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf1"} : <f32>
    %34 = mulf %33, %24#0 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf3"} : <f32>
    %35 = br %result_4 {handshake.bb = 2 : ui32, handshake.name = "br3"} : <>
    %trueResult_6, %falseResult_7 = cond_br %48#1, %36#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br4"} : <i1>, <>
    sink %falseResult_7 {handshake.name = "sink3"} : <>
    %36:2 = lazy_fork [2] %10#0 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_8, %falseResult_9 = cond_br %23#1, %17#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br11"} : <i1>, <f32>
    sink %falseResult_9 {handshake.name = "sink4"} : <f32>
    %trueResult_10, %falseResult_11 = cond_br %48#0, %46 {handshake.bb = 3 : ui32, handshake.name = "cond_br12"} : <i1>, <i11>
    sink %falseResult_11 {handshake.name = "sink5"} : <i11>
    %result_12, %index_13 = control_merge %trueResult, %35  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    sink %index_13 {handshake.name = "sink6"} : <i1>
    %37 = mux %23#0 [%34, %trueResult_8] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux1"} : <i1>, <f32>
    %38 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %39 = constant %38 {handshake.bb = 3 : ui32, handshake.name = "constant3", value = 1000 : i11} : <>, <i11>
    %40 = extsi %39 {handshake.bb = 3 : ui32, handshake.name = "extsi5"} : <i11> to <i12>
    %41 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %42 = constant %41 {handshake.bb = 3 : ui32, handshake.name = "constant4", value = 1 : i2} : <>, <i2>
    %43 = extsi %42 {handshake.bb = 3 : ui32, handshake.name = "extsi6"} : <i2> to <i12>
    %addressResult_14, %dataResult_15 = store[%19] %37 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load3" (0)>, <"store1" (0)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i10>, <f32>
    %44 = addi %13, %43 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i12>
    %45:2 = fork [2] %44 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i12>
    %46 = trunci %45#0 {handshake.bb = 3 : ui32, handshake.name = "trunci3"} : <i12> to <i11>
    %47 = cmpi ult, %45#1, %40 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i12>
    %48:4 = fork [4] %47 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i1>
    %trueResult_16, %falseResult_17 = cond_br %48#3, %result_12 {handshake.bb = 3 : ui32, handshake.name = "cond_br10"} : <i1>, <>
    %result_18, %index_19 = control_merge %falseResult_17  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_19 {handshake.name = "sink7"} : <i1>
    %49:2 = fork [2] %result_18 {handshake.bb = 4 : ui32, handshake.name = "fork10"} : <>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %1#1, %memEnd, %0#0 : <>, <>, <>
  }
}


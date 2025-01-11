module {
  handshake.func @get_tanh(%arg0: memref<1000xf32>, %arg1: memref<1000xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "addr", "A_start", "addr_start", "start"], cfg.edges = "[0,1][2,3][1,3,2,cmpf0][3,1,4,cmpi0]", resNames = ["A_end", "addr_end", "end"]} {
    %outputs, %memEnd = mem_controller[%arg1 : memref<1000xi32>] %arg3 (%addressResult) %result_18 {connectedBlocks = [1 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0:2 = lsq[%arg0 : memref<1000xf32>] (%arg2, %7#1, %addressResult_0, %23#1, %addressResult_14, %dataResult_15, %result_18)  {groupSizes = [1 : i32, 1 : i32], handshake.name = "lsq1"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<f32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.control<>)
    %1 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %2 = constant %1 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %3 = br %arg4 {handshake.bb = 0 : ui32, handshake.name = "br1"} : <>
    %4 = constant %arg4 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %5 = mux %6 [%arg4, %trueResult_6] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <>
    %6 = merge %4, %30 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge2"} : <i1>
    %7:2 = lazy_fork [2] %5 {handshake.bb = 1 : ui32, handshake.name = "lazy_fork0"} : <>
    %result, %index = control_merge %3, %trueResult_16  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %8 = mux %6 [%2, %trueResult_10] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %9 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %10 = constant %9 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 1.000000e+00 : f32} : <>, <f32>
    %addressResult, %dataResult = load[%8] %outputs {handshake.bb = 1 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i32>, <i32>
    %addressResult_0, %dataResult_1 = load[%dataResult] %0#0 {handshake.bb = 1 : ui32, handshake.deps = #handshake<deps[<"store1" (0)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i32>, <f32>
    %11 = cmpf oge, %dataResult_1, %10 {handshake.bb = 1 : ui32, handshake.name = "cmpf0"} : <f32>
    %trueResult, %falseResult = cond_br %11, %result {handshake.bb = 1 : ui32, handshake.name = "cond_br2"} : <i1>, <>
    %trueResult_2, %falseResult_3 = cond_br %11, %dataResult_1 {handshake.bb = 2 : ui32, handshake.name = "cond_br3"} : <i1>, <f32>
    %result_4, %index_5 = control_merge %falseResult  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %12 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %13 = constant %12 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 3.70476198 : f32} : <>, <f32>
    %14 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %15 = constant %14 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 19.5238094 : f32} : <>, <f32>
    %16 = mulf %falseResult_3, %falseResult_3 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf0"} : <f32>
    %17 = addf %16, %15 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf0"} : <f32>
    %18 = mulf %17, %falseResult_3 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf1"} : <f32>
    %19 = mulf %18, %falseResult_3 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf2"} : <f32>
    %20 = addf %19, %13 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf1"} : <f32>
    %21 = mulf %20, %falseResult_3 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf3"} : <f32>
    %22 = br %result_4 {handshake.bb = 2 : ui32, handshake.name = "br3"} : <>
    %trueResult_6, %falseResult_7 = cond_br %30, %23#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br4"} : <i1>, <>
    %23:2 = lazy_fork [2] %7#0 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_8, %falseResult_9 = cond_br %11, %10 {handshake.bb = 3 : ui32, handshake.name = "cond_br11"} : <i1>, <f32>
    %trueResult_10, %falseResult_11 = cond_br %30, %29 {handshake.bb = 3 : ui32, handshake.name = "cond_br12"} : <i1>, <i32>
    %result_12, %index_13 = control_merge %trueResult, %22  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %24 = mux %11 [%21, %trueResult_8] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux1"} : <i1>, <f32>
    %25 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %26 = constant %25 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 1000 : i32} : <>, <i32>
    %27 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %28 = constant %27 {handshake.bb = 3 : ui32, handshake.name = "constant10", value = 1 : i32} : <>, <i32>
    %addressResult_14, %dataResult_15 = store[%dataResult] %24 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load3" (0)>, <"store1" (0)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i32>, <f32>
    %29 = addi %8, %28 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %30 = cmpi ult, %29, %26 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_16, %falseResult_17 = cond_br %30, %result_12 {handshake.bb = 3 : ui32, handshake.name = "cond_br10"} : <i1>, <>
    %result_18, %index_19 = control_merge %falseResult_17  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %0#1, %memEnd, %arg4 : <>, <>, <>
  }
}


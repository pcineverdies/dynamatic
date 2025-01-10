module {
  handshake.func @get_tanh(%arg0: memref<1000xf32>, %arg1: memref<1000xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "addr", "A_start", "addr_start", "start"], cfg.edges = "[0,1][2,3][1,3,2,cmpf0][3,1,4,cmpi0]", resNames = ["A_end", "addr_end", "end"]} {
    %outputs, %memEnd = mem_controller[%arg1 : memref<1000xi32>] %arg3 (%addressResult) %result_22 {connectedBlocks = [1 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0:2 = lsq[%arg0 : memref<1000xf32>] (%arg2, %6#1, %addressResult_0, %20#1, %addressResult_18, %dataResult_19, %result_22)  {groupSizes = [1 : i32, 1 : i32], handshake.name = "lsq1"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<f32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.control<>)
    %1 = constant %arg4 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %2 = br %arg4 {handshake.bb = 0 : ui32, handshake.name = "br1"} : <>
    %3 = constant %arg4 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %4 = mux %5 [%arg4, %trueResult_8] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <>
    %5 = merge %3, %25 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge2"} : <i1>
    %6:2 = lazy_fork [2] %4 {handshake.bb = 1 : ui32, handshake.name = "lazy_fork0"} : <>
    %7 = mux %5 [%arg4, %trueResult_14] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %result, %index = control_merge %2, %trueResult_20  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %8 = mux %5 [%1, %trueResult_12] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %9 = constant %7 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 1.000000e+00 : f32} : <>, <f32>
    %addressResult, %dataResult = load[%8] %outputs {handshake.bb = 1 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i32>, <i32>
    %addressResult_0, %dataResult_1 = load[%dataResult] %0#0 {handshake.bb = 1 : ui32, handshake.deps = #handshake<deps[<"store1" (0)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i32>, <f32>
    %10 = cmpf oge, %dataResult_1, %9 {handshake.bb = 1 : ui32, handshake.name = "cmpf0"} : <f32>
    %trueResult, %falseResult = cond_br %10, %result {handshake.bb = 1 : ui32, handshake.name = "cond_br2"} : <i1>, <>
    %trueResult_2, %falseResult_3 = cond_br %10, %dataResult_1 {handshake.bb = 2 : ui32, handshake.name = "cond_br3"} : <i1>, <f32>
    %trueResult_4, %falseResult_5 = cond_br %10, %7 {handshake.bb = 2 : ui32, handshake.name = "cond_br8"} : <i1>, <>
    %result_6, %index_7 = control_merge %falseResult  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %11 = constant %falseResult_5 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 3.70476198 : f32} : <>, <f32>
    %12 = constant %falseResult_5 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 19.5238094 : f32} : <>, <f32>
    %13 = mulf %falseResult_3, %falseResult_3 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf0"} : <f32>
    %14 = addf %13, %12 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf0"} : <f32>
    %15 = mulf %14, %falseResult_3 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf1"} : <f32>
    %16 = mulf %15, %falseResult_3 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf2"} : <f32>
    %17 = addf %16, %11 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf1"} : <f32>
    %18 = mulf %17, %falseResult_3 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf3"} : <f32>
    %19 = br %result_6 {handshake.bb = 2 : ui32, handshake.name = "br3"} : <>
    %trueResult_8, %falseResult_9 = cond_br %25, %20#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br4"} : <i1>, <>
    %20:2 = lazy_fork [2] %6#0 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_10, %falseResult_11 = cond_br %10, %9 {handshake.bb = 3 : ui32, handshake.name = "cond_br18"} : <i1>, <f32>
    %trueResult_12, %falseResult_13 = cond_br %25, %24 {handshake.bb = 3 : ui32, handshake.name = "cond_br19"} : <i1>, <i32>
    %trueResult_14, %falseResult_15 = cond_br %25, %7 {handshake.bb = 3 : ui32, handshake.name = "cond_br20"} : <i1>, <>
    %result_16, %index_17 = control_merge %trueResult, %19  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %21 = mux %10 [%18, %trueResult_10] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <f32>
    %22 = constant %7 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 1000 : i32} : <>, <i32>
    %23 = constant %7 {handshake.bb = 3 : ui32, handshake.name = "constant10", value = 1 : i32} : <>, <i32>
    %addressResult_18, %dataResult_19 = store[%dataResult] %21 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load3" (0)>, <"store1" (0)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i32>, <f32>
    %24 = addi %8, %23 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %25 = cmpi ult, %24, %22 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_20, %falseResult_21 = cond_br %25, %result_16 {handshake.bb = 3 : ui32, handshake.name = "cond_br17"} : <i1>, <>
    %result_22, %index_23 = control_merge %falseResult_21  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %0#1, %memEnd, %arg4 : <>, <>, <>
  }
}


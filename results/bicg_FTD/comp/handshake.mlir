module {
  handshake.func @bicg(%arg0: memref<100xi32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["a", "s", "q", "p", "r", "a_start", "s_start", "q_start", "p_start", "r_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][1,2][3,1,4,cmpi1]", resNames = ["out0", "a_end", "s_end", "q_end", "p_end", "r_end", "end"]} {
    %outputs, %memEnd = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_14) %result_32 {connectedBlocks = [2 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_18) %result_32 {connectedBlocks = [2 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0:2 = lsq[%arg2 : memref<10xi32>] (%arg7, %result, %addressResult, %result_26, %addressResult_28, %dataResult_29, %result_32)  {groupSizes = [1 : i32, 1 : i32], handshake.name = "lsq0"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %1:2 = lsq[%arg1 : memref<10xi32>] (%arg6, %result_8, %addressResult_12, %addressResult_16, %dataResult_17, %result_32)  {groupSizes = [2 : i32], handshake.name = "lsq1"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %outputs_2, %memEnd_3 = mem_controller[%arg0 : memref<100xi32>] %arg5 (%addressResult_10) %result_32 {connectedBlocks = [2 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %2 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %3 = constant %2 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %4 = br %arg10 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <>
    %result, %index = control_merge %4, %trueResult_30  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %5 = constant %arg10 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %6 = mux %7 [%3, %trueResult_24] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %7 = merge %5, %37 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %8 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %9 = constant %8 {handshake.bb = 1 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%6] %0#0 {handshake.bb = 1 : ui32, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.name = "load0"} : <i32>, <i32>
    %10 = br %result {handshake.bb = 1 : ui32, handshake.name = "br3"} : <>
    %trueResult, %falseResult = cond_br %31, %29 {handshake.bb = 2 : ui32, handshake.name = "cond_br14"} : <i1>, <i32>
    %trueResult_4, %falseResult_5 = cond_br %31, %30 {handshake.bb = 2 : ui32, handshake.name = "cond_br15"} : <i1>, <i32>
    %trueResult_6, %falseResult_7 = cond_br %31, %13 {handshake.bb = 2 : ui32, handshake.name = "cond_br16"} : <i1>, <i32>
    %11 = constant %arg10 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %12 = merge %11, %31 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i1>
    %13 = mux %12 [%6, %trueResult_6] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %result_8, %index_9 = control_merge %10, %trueResult_20  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %14 = mux %12 [%dataResult, %trueResult] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %15 = mux %12 [%9, %trueResult_4] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %16 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %17 = constant %16 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = 10 : i32} : <>, <i32>
    %18 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %19 = constant %18 {handshake.bb = 2 : ui32, handshake.name = "constant6", value = 1 : i32} : <>, <i32>
    %20 = source {handshake.bb = 2 : ui32, handshake.name = "source4"} : <>
    %21 = constant %20 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 3 : i32} : <>, <i32>
    %22 = shli %13, %19 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %23 = shli %13, %21 {handshake.bb = 2 : ui32, handshake.name = "shli1"} : <i32>
    %24 = addi %22, %23 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i32>
    %25 = addi %15, %24 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i32>
    %addressResult_10, %dataResult_11 = load[%25] %outputs_2 {handshake.bb = 2 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %addressResult_12, %dataResult_13 = load[%15] %1#0 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.name = "load2"} : <i32>, <i32>
    %addressResult_14, %dataResult_15 = load[%13] %outputs {handshake.bb = 2 : ui32, handshake.name = "load3"} : <i32>, <i32>
    %26 = muli %dataResult_15, %dataResult_11 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %27 = addi %dataResult_13, %26 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %addressResult_16, %dataResult_17 = store[%15] %27 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.name = "store0"} : <i32>, <i32>
    %addressResult_18, %dataResult_19 = load[%15] %outputs_0 {handshake.bb = 2 : ui32, handshake.name = "load4"} : <i32>, <i32>
    %28 = muli %dataResult_11, %dataResult_19 {handshake.bb = 2 : ui32, handshake.name = "muli1"} : <i32>
    %29 = addi %14, %28 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %30 = addi %15, %19 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i32>
    %31 = cmpi ult, %30, %17 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_20, %falseResult_21 = cond_br %31, %result_8 {handshake.bb = 2 : ui32, handshake.name = "cond_br10"} : <i1>, <>
    %trueResult_22, %falseResult_23 = cond_br %37, %falseResult {handshake.bb = 3 : ui32, handshake.name = "cond_br17"} : <i1>, <i32>
    %trueResult_24, %falseResult_25 = cond_br %37, %36 {handshake.bb = 3 : ui32, handshake.name = "cond_br18"} : <i1>, <i32>
    %result_26, %index_27 = control_merge %falseResult_21  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %32 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %33 = constant %32 {handshake.bb = 3 : ui32, handshake.name = "constant8", value = 10 : i32} : <>, <i32>
    %34 = source {handshake.bb = 3 : ui32, handshake.name = "source6"} : <>
    %35 = constant %34 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 1 : i32} : <>, <i32>
    %addressResult_28, %dataResult_29 = store[%6] %falseResult {handshake.bb = 3 : ui32, handshake.name = "store1"} : <i32>, <i32>
    %36 = addi %6, %35 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i32>
    %37 = cmpi ult, %36, %33 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_30, %falseResult_31 = cond_br %37, %result_26 {handshake.bb = 3 : ui32, handshake.name = "cond_br13"} : <i1>, <>
    %result_32, %index_33 = control_merge %falseResult_31  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %falseResult_23, %memEnd_3, %1#1, %0#1, %memEnd_1, %memEnd, %arg10 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


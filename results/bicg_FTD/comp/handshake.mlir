module {
  handshake.func @bicg(%arg0: memref<100xi32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["a", "s", "q", "p", "r", "a_start", "s_start", "q_start", "p_start", "r_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][1,2][3,1,4,cmpi1]", resNames = ["out0", "a_end", "s_end", "q_end", "p_end", "r_end", "end"]} {
    %outputs, %memEnd = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_16) %result_36 {connectedBlocks = [2 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_20) %result_36 {connectedBlocks = [2 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0:2 = lsq[%arg2 : memref<10xi32>] (%arg7, %result, %addressResult, %result_30, %addressResult_32, %dataResult_33, %result_36)  {groupSizes = [1 : i32, 1 : i32], handshake.name = "lsq0"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %1:2 = lsq[%arg1 : memref<10xi32>] (%arg6, %result_10, %addressResult_14, %addressResult_18, %dataResult_19, %result_36)  {groupSizes = [2 : i32], handshake.name = "lsq1"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %outputs_2, %memEnd_3 = mem_controller[%arg0 : memref<100xi32>] %arg5 (%addressResult_12) %result_36 {connectedBlocks = [2 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %2 = constant %arg10 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %3 = br %arg10 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <>
    %4 = constant %arg10 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %5 = merge %4, %32 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %6 = mux %5 [%arg10, %trueResult_28] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %result, %index = control_merge %3, %trueResult_34  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %7 = mux %5 [%2, %trueResult_26] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %8 = constant %6 {handshake.bb = 1 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%7] %0#0 {handshake.bb = 1 : ui32, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.name = "load0"} : <i32>, <i32>
    %9 = br %result {handshake.bb = 1 : ui32, handshake.name = "br3"} : <>
    %trueResult, %falseResult = cond_br %28, %26 {handshake.bb = 2 : ui32, handshake.name = "cond_br23"} : <i1>, <i32>
    %trueResult_4, %falseResult_5 = cond_br %28, %27 {handshake.bb = 2 : ui32, handshake.name = "cond_br24"} : <i1>, <i32>
    %trueResult_6, %falseResult_7 = cond_br %28, %13 {handshake.bb = 2 : ui32, handshake.name = "cond_br25"} : <i1>, <>
    %trueResult_8, %falseResult_9 = cond_br %28, %12 {handshake.bb = 2 : ui32, handshake.name = "cond_br26"} : <i1>, <i32>
    %10 = constant %arg10 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant14", value = false} : <>, <i1>
    %11 = merge %10, %28 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge7"} : <i1>
    %12 = mux %11 [%7, %trueResult_8] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %13 = mux %11 [%6, %trueResult_6] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux12"} : <i1>, <>
    %result_10, %index_11 = control_merge %9, %trueResult_22  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %14 = mux %11 [%dataResult, %trueResult] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux14"} : <i1>, <i32>
    %15 = mux %11 [%8, %trueResult_4] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux15"} : <i1>, <i32>
    %16 = constant %13 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = 10 : i32} : <>, <i32>
    %17 = constant %13 {handshake.bb = 2 : ui32, handshake.name = "constant6", value = 1 : i32} : <>, <i32>
    %18 = constant %13 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 3 : i32} : <>, <i32>
    %19 = shli %12, %17 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %20 = shli %12, %18 {handshake.bb = 2 : ui32, handshake.name = "shli1"} : <i32>
    %21 = addi %19, %20 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i32>
    %22 = addi %15, %21 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i32>
    %addressResult_12, %dataResult_13 = load[%22] %outputs_2 {handshake.bb = 2 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %addressResult_14, %dataResult_15 = load[%15] %1#0 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.name = "load2"} : <i32>, <i32>
    %addressResult_16, %dataResult_17 = load[%12] %outputs {handshake.bb = 2 : ui32, handshake.name = "load3"} : <i32>, <i32>
    %23 = muli %dataResult_17, %dataResult_13 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %24 = addi %dataResult_15, %23 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %addressResult_18, %dataResult_19 = store[%15] %24 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.name = "store0"} : <i32>, <i32>
    %addressResult_20, %dataResult_21 = load[%15] %outputs_0 {handshake.bb = 2 : ui32, handshake.name = "load4"} : <i32>, <i32>
    %25 = muli %dataResult_13, %dataResult_21 {handshake.bb = 2 : ui32, handshake.name = "muli1"} : <i32>
    %26 = addi %14, %25 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %27 = addi %15, %17 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i32>
    %28 = cmpi ult, %27, %16 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_22, %falseResult_23 = cond_br %28, %result_10 {handshake.bb = 2 : ui32, handshake.name = "cond_br13"} : <i1>, <>
    %trueResult_24, %falseResult_25 = cond_br %32, %falseResult {handshake.bb = 3 : ui32, handshake.name = "cond_br27"} : <i1>, <i32>
    %trueResult_26, %falseResult_27 = cond_br %32, %31 {handshake.bb = 3 : ui32, handshake.name = "cond_br28"} : <i1>, <i32>
    %trueResult_28, %falseResult_29 = cond_br %32, %6 {handshake.bb = 3 : ui32, handshake.name = "cond_br29"} : <i1>, <>
    %result_30, %index_31 = control_merge %falseResult_23  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %29 = constant %6 {handshake.bb = 3 : ui32, handshake.name = "constant8", value = 10 : i32} : <>, <i32>
    %30 = constant %6 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 1 : i32} : <>, <i32>
    %addressResult_32, %dataResult_33 = store[%7] %falseResult {handshake.bb = 3 : ui32, handshake.name = "store1"} : <i32>, <i32>
    %31 = addi %7, %30 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i32>
    %32 = cmpi ult, %31, %29 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_34, %falseResult_35 = cond_br %32, %result_30 {handshake.bb = 3 : ui32, handshake.name = "cond_br22"} : <i1>, <>
    %result_36, %index_37 = control_merge %falseResult_35  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %falseResult_25, %memEnd_3, %1#1, %0#1, %memEnd_1, %memEnd, %arg10 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


module {
  handshake.func @bicg(%arg0: memref<100xi32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["a", "s", "q", "p", "r", "a_start", "s_start", "q_start", "p_start", "r_start", "start"], resNames = ["out0", "a_end", "s_end", "q_end", "p_end", "r_end", "end"]} {
    %outputs, %memEnd = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_10) %result_32 {connectedBlocks = [2 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_14) %result_32 {connectedBlocks = [2 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0:2 = lsq[%arg2 : memref<10xi32>] (%arg7, %result, %addressResult, %result_22, %addressResult_24, %dataResult_25, %result_32)  {groupSizes = [1 : i32, 1 : i32], handshake.name = "lsq0"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %1:2 = lsq[%arg1 : memref<10xi32>] (%arg6, %result_4, %addressResult_8, %addressResult_12, %dataResult_13, %result_32)  {groupSizes = [2 : i32], handshake.name = "lsq1"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %outputs_2, %memEnd_3 = mem_controller[%arg0 : memref<100xi32>] %arg5 (%addressResult_6) %result_32 {connectedBlocks = [2 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %2 = constant %arg10 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %3 = br %2 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <i32>
    %4 = br %arg10 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %5 = mux %index [%3, %trueResult_26] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %result, %index = control_merge %4, %trueResult_28  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %6 = constant %result {handshake.bb = 1 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%5] %0#0 {handshake.bb = 1 : ui32, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.name = "load0"} : <i32>, <i32>
    %7 = br %6 {handshake.bb = 1 : ui32, handshake.name = "br4"} : <i32>
    %8 = br %dataResult {handshake.bb = 1 : ui32, handshake.name = "br5"} : <i32>
    %9 = br %5 {handshake.bb = 1 : ui32, handshake.name = "br6"} : <i32>
    %10 = br %result {handshake.bb = 1 : ui32, handshake.name = "br7"} : <>
    %11 = mux %index_5 [%7, %trueResult] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %12 = mux %index_5 [%8, %trueResult_16] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %13 = mux %index_5 [%9, %trueResult_18] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %result_4, %index_5 = control_merge %10, %trueResult_20  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %14 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %15 = constant %14 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = 10 : i32} : <>, <i32>
    %16 = source {handshake.bb = 2 : ui32, handshake.name = "source1"} : <>
    %17 = constant %16 {handshake.bb = 2 : ui32, handshake.name = "constant6", value = 1 : i32} : <>, <i32>
    %18 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %19 = constant %18 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 3 : i32} : <>, <i32>
    %20 = shli %13, %17 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %21 = shli %13, %19 {handshake.bb = 2 : ui32, handshake.name = "shli1"} : <i32>
    %22 = addi %20, %21 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i32>
    %23 = addi %11, %22 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i32>
    %addressResult_6, %dataResult_7 = load[%23] %outputs_2 {handshake.bb = 2 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %addressResult_8, %dataResult_9 = load[%11] %1#0 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.name = "load2"} : <i32>, <i32>
    %addressResult_10, %dataResult_11 = load[%13] %outputs {handshake.bb = 2 : ui32, handshake.name = "load3"} : <i32>, <i32>
    %24 = muli %dataResult_11, %dataResult_7 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %25 = addi %dataResult_9, %24 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %addressResult_12, %dataResult_13 = store[%11] %25 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.name = "store0"} : <i32>, <i32>
    %addressResult_14, %dataResult_15 = load[%11] %outputs_0 {handshake.bb = 2 : ui32, handshake.name = "load4"} : <i32>, <i32>
    %26 = muli %dataResult_7, %dataResult_15 {handshake.bb = 2 : ui32, handshake.name = "muli1"} : <i32>
    %27 = addi %12, %26 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %28 = addi %11, %17 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i32>
    %29 = cmpi ult, %28, %15 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult, %falseResult = cond_br %29, %28 {handshake.bb = 2 : ui32, handshake.name = "cond_br2"} : <i1>, <i32>
    %trueResult_16, %falseResult_17 = cond_br %29, %27 {handshake.bb = 2 : ui32, handshake.name = "cond_br3"} : <i1>, <i32>
    %trueResult_18, %falseResult_19 = cond_br %29, %13 {handshake.bb = 2 : ui32, handshake.name = "cond_br4"} : <i1>, <i32>
    %trueResult_20, %falseResult_21 = cond_br %29, %result_4 {handshake.bb = 2 : ui32, handshake.name = "cond_br5"} : <i1>, <>
    %30 = merge %falseResult_19 {handshake.bb = 3 : ui32, handshake.name = "merge0"} : <i32>
    %31 = merge %falseResult_17 {handshake.bb = 3 : ui32, handshake.name = "merge1"} : <i32>
    %result_22, %index_23 = control_merge %falseResult_21  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %32 = source {handshake.bb = 3 : ui32, handshake.name = "source3"} : <>
    %33 = constant %32 {handshake.bb = 3 : ui32, handshake.name = "constant8", value = 10 : i32} : <>, <i32>
    %34 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %35 = constant %34 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 1 : i32} : <>, <i32>
    %addressResult_24, %dataResult_25 = store[%30] %31 {handshake.bb = 3 : ui32, handshake.name = "store1"} : <i32>, <i32>
    %36 = addi %30, %35 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i32>
    %37 = cmpi ult, %36, %33 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_26, %falseResult_27 = cond_br %37, %36 {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <i32>
    %trueResult_28, %falseResult_29 = cond_br %37, %result_22 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %trueResult_30, %falseResult_31 = cond_br %37, %31 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    %38 = merge %falseResult_31 {handshake.bb = 4 : ui32, handshake.name = "merge2"} : <i32>
    %result_32, %index_33 = control_merge %falseResult_29  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %38, %memEnd_3, %1#1, %0#1, %memEnd_1, %memEnd, %arg10 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


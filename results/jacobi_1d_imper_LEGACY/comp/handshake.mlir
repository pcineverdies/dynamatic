module {
  handshake.func @jacobi_1d_imper(%arg0: memref<50xi32>, %arg1: memref<50xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "B", "A_start", "B_start", "start"], resNames = ["out0", "A_end", "B_end", "end"]} {
    %0:2 = lsq[%arg1 : memref<50xi32>] (%arg3, %result_0, %addressResult_6, %dataResult_7, %result_14, %addressResult_16, %result_32)  {groupSizes = [1 : i32, 1 : i32], handshake.name = "lsq0"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %outputs:2, %memEnd = mem_controller[%arg0 : memref<50xi32>] %arg2 (%addressResult_34, %27, %1#3, %1#4, %1#5) %result_32 {connectedBlocks = [5 : i32, 3 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %1:6 = lsq[MC] (%result_0, %addressResult, %addressResult_2, %addressResult_4, %result_14, %addressResult_18, %dataResult_19, %outputs#1)  {groupSizes = [3 : i32, 1 : i32], handshake.name = "lsq1"} : (!handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>)
    %2 = constant %arg4 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %3 = br %2 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <i32>
    %4 = br %arg4 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %5 = mux %index [%3, %trueResult_28] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %result, %index = control_merge %4, %trueResult_30  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %6 = constant %result {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 1 : i32} : <>, <i32>
    %7 = br %6 {handshake.bb = 1 : ui32, handshake.name = "br4"} : <i32>
    %8 = br %5 {handshake.bb = 1 : ui32, handshake.name = "br5"} : <i32>
    %9 = br %result {handshake.bb = 1 : ui32, handshake.name = "br6"} : <>
    %10 = mux %index_1 [%7, %trueResult] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %11 = mux %index_1 [%8, %trueResult_8] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %result_0, %index_1 = control_merge %9, %trueResult_10  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %12 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %13 = constant %12 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = -1 : i32} : <>, <i32>
    %14 = source {handshake.bb = 2 : ui32, handshake.name = "source1"} : <>
    %15 = constant %14 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 49 : i32} : <>, <i32>
    %16 = constant %result_0 {handshake.bb = 2 : ui32, handshake.name = "constant9", value = 1 : i32} : <>, <i32>
    %17 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %18 = constant %17 {handshake.bb = 2 : ui32, handshake.name = "constant10", value = 1 : i32} : <>, <i32>
    %19 = addi %10, %13 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i32>
    %addressResult, %dataResult = load[%19] %1#0 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.name = "load0"} : <i32>, <i32>
    %addressResult_2, %dataResult_3 = load[%10] %1#1 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.name = "load1"} : <i32>, <i32>
    %20 = addi %dataResult, %dataResult_3 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %21 = addi %10, %16 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i32>
    %addressResult_4, %dataResult_5 = load[%21] %1#2 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.name = "load2"} : <i32>, <i32>
    %22 = addi %20, %dataResult_5 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %23 = shli %22, %18 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %24 = addi %22, %23 {handshake.bb = 2 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_6, %dataResult_7 = store[%10] %24 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1], [0, 0]]>, <"load3" (1) [[1, 1]]>, <"load3" (2) [[0, 0]]>]>, handshake.name = "store0"} : <i32>, <i32>
    %25 = addi %10, %16 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i32>
    %26 = cmpi ult, %25, %15 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult, %falseResult = cond_br %26, %25 {handshake.bb = 2 : ui32, handshake.name = "cond_br3"} : <i1>, <i32>
    %trueResult_8, %falseResult_9 = cond_br %26, %11 {handshake.bb = 2 : ui32, handshake.name = "cond_br4"} : <i1>, <i32>
    %trueResult_10, %falseResult_11 = cond_br %26, %result_0 {handshake.bb = 2 : ui32, handshake.name = "cond_br5"} : <i1>, <>
    %trueResult_12, %falseResult_13 = cond_br %26, %16 {handshake.bb = 2 : ui32, handshake.name = "cond_br6"} : <i1>, <i32>
    %27 = constant %result_14 {handshake.bb = 3 : ui32, handshake.name = "constant0", value = 1 : i32} : <>, <i32>
    %28 = mux %index_15 [%falseResult_13, %trueResult_20] {handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %29 = mux %index_15 [%falseResult_9, %trueResult_22] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %result_14, %index_15 = control_merge %falseResult_11, %trueResult_24  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %30 = source {handshake.bb = 3 : ui32, handshake.name = "source3"} : <>
    %31 = constant %30 {handshake.bb = 3 : ui32, handshake.name = "constant11", value = 49 : i32} : <>, <i32>
    %32 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %33 = constant %32 {handshake.bb = 3 : ui32, handshake.name = "constant12", value = 1 : i32} : <>, <i32>
    %addressResult_16, %dataResult_17 = load[%28] %0#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1]]>]>, handshake.name = "load3"} : <i32>, <i32>
    %addressResult_18, %dataResult_19 = store[%28] %dataResult_17 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load0" (1) [[1, 1]]>, <"load1" (1) [[1, 1]]>, <"load2" (1) [[1, 1]]>, <"store1" (1) [[1, 1], [0, 0]]>]>, handshake.name = "store1"} : <i32>, <i32>
    %34 = addi %28, %33 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i32>
    %35 = cmpi ult, %34, %31 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_20, %falseResult_21 = cond_br %35, %34 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <i32>
    %trueResult_22, %falseResult_23 = cond_br %35, %29 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    %trueResult_24, %falseResult_25 = cond_br %35, %result_14 {handshake.bb = 3 : ui32, handshake.name = "cond_br9"} : <i1>, <>
    %36 = merge %falseResult_23 {handshake.bb = 4 : ui32, handshake.name = "merge0"} : <i32>
    %result_26, %index_27 = control_merge %falseResult_25  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %37 = source {handshake.bb = 4 : ui32, handshake.name = "source5"} : <>
    %38 = constant %37 {handshake.bb = 4 : ui32, handshake.name = "constant13", value = 2 : i32} : <>, <i32>
    %39 = source {handshake.bb = 4 : ui32, handshake.name = "source6"} : <>
    %40 = constant %39 {handshake.bb = 4 : ui32, handshake.name = "constant14", value = 1 : i32} : <>, <i32>
    %41 = addi %36, %40 {handshake.bb = 4 : ui32, handshake.name = "addi6"} : <i32>
    %42 = cmpi ult, %41, %38 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i32>
    %trueResult_28, %falseResult_29 = cond_br %42, %41 {handshake.bb = 4 : ui32, handshake.name = "cond_br10"} : <i1>, <i32>
    %trueResult_30, %falseResult_31 = cond_br %42, %result_26 {handshake.bb = 4 : ui32, handshake.name = "cond_br11"} : <i1>, <>
    %result_32, %index_33 = control_merge %falseResult_31  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %43 = constant %result_32 {handshake.bb = 5 : ui32, handshake.name = "constant15", value = 49 : i32} : <>, <i32>
    %addressResult_34, %dataResult_35 = load[%43] %outputs#0 {handshake.bb = 5 : ui32, handshake.name = "load4"} : <i32>, <i32>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %dataResult_35, %memEnd, %0#1, %arg4 : <i32>, <>, <>, <>
  }
}


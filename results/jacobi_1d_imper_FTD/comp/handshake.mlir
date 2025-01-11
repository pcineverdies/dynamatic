module {
  handshake.func @jacobi_1d_imper(%arg0: memref<50xi32>, %arg1: memref<50xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "B", "A_start", "B_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][4,1,5,cmpi2][1,2][3,3,4,cmpi1]", resNames = ["out0", "A_end", "B_end", "end"]} {
    %0:2 = lsq[%arg1 : memref<50xi32>] (%arg3, %result_2, %addressResult_8, %dataResult_9, %result_14, %addressResult_16, %result_28)  {groupSizes = [1 : i32, 1 : i32], handshake.name = "lsq0"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %outputs:2, %memEnd = mem_controller[%arg0 : memref<50xi32>] %arg2 (%addressResult_30, %30, %1#3, %1#4, %1#5) %result_28 {connectedBlocks = [5 : i32, 3 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %1:6 = lsq[MC] (%result_2, %addressResult, %addressResult_4, %addressResult_6, %result_14, %addressResult_18, %dataResult_19, %outputs#1)  {groupSizes = [3 : i32, 1 : i32], handshake.name = "lsq1"} : (!handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>)
    %2 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %3 = constant %2 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %4 = br %arg4 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <>
    %result, %index = control_merge %4, %trueResult_26  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %5 = constant %arg4 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %6 = mux %7 [%3, %trueResult_22] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %7 = merge %5, %45 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %8 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %9 = constant %8 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 1 : i32} : <>, <i32>
    %10 = br %result {handshake.bb = 1 : ui32, handshake.name = "br3"} : <>
    %trueResult, %falseResult = cond_br %29, %19 {handshake.bb = 2 : ui32, handshake.name = "cond_br10"} : <i1>, <i32>
    %trueResult_0, %falseResult_1 = cond_br %29, %28 {handshake.bb = 2 : ui32, handshake.name = "cond_br11"} : <i1>, <i32>
    %result_2, %index_3 = control_merge %10, %trueResult_10  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %11 = constant %arg4 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %12 = mux %13 [%9, %trueResult_0] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %13 = merge %11, %29 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i1>
    %14 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %15 = constant %14 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = -1 : i32} : <>, <i32>
    %16 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %17 = constant %16 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 49 : i32} : <>, <i32>
    %18 = source {handshake.bb = 2 : ui32, handshake.name = "source4"} : <>
    %19 = constant %18 {handshake.bb = 2 : ui32, handshake.name = "constant9", value = 1 : i32} : <>, <i32>
    %20 = source {handshake.bb = 2 : ui32, handshake.name = "source5"} : <>
    %21 = constant %20 {handshake.bb = 2 : ui32, handshake.name = "constant10", value = 1 : i32} : <>, <i32>
    %22 = addi %12, %15 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i32>
    %addressResult, %dataResult = load[%22] %1#0 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.name = "load0"} : <i32>, <i32>
    %addressResult_4, %dataResult_5 = load[%12] %1#1 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.name = "load1"} : <i32>, <i32>
    %23 = addi %dataResult, %dataResult_5 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %24 = addi %12, %19 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i32>
    %addressResult_6, %dataResult_7 = load[%24] %1#2 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.name = "load2"} : <i32>, <i32>
    %25 = addi %23, %dataResult_7 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %26 = shli %25, %21 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %27 = addi %25, %26 {handshake.bb = 2 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_8, %dataResult_9 = store[%12] %27 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1], [0, 0]]>, <"load3" (1) [[1, 1]]>, <"load3" (2) [[0, 0]]>]>, handshake.name = "store0"} : <i32>, <i32>
    %28 = addi %12, %19 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i32>
    %29 = cmpi ult, %28, %17 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_10, %falseResult_11 = cond_br %29, %result_2 {handshake.bb = 2 : ui32, handshake.name = "cond_br5"} : <i1>, <>
    %trueResult_12, %falseResult_13 = cond_br %39, %38 {handshake.bb = 3 : ui32, handshake.name = "cond_br12"} : <i1>, <i32>
    %30 = constant %result_14 {handshake.bb = 3 : ui32, handshake.name = "constant2", value = 1 : i32} : <>, <i32>
    %result_14, %index_15 = control_merge %falseResult_11, %trueResult_20  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %31 = constant %arg4 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant4", value = false} : <>, <i1>
    %32 = mux %33 [%falseResult, %trueResult_12] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %33 = merge %31, %39 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge2"} : <i1>
    %34 = source {handshake.bb = 3 : ui32, handshake.name = "source6"} : <>
    %35 = constant %34 {handshake.bb = 3 : ui32, handshake.name = "constant11", value = 49 : i32} : <>, <i32>
    %36 = source {handshake.bb = 3 : ui32, handshake.name = "source7"} : <>
    %37 = constant %36 {handshake.bb = 3 : ui32, handshake.name = "constant12", value = 1 : i32} : <>, <i32>
    %addressResult_16, %dataResult_17 = load[%32] %0#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1]]>]>, handshake.name = "load3"} : <i32>, <i32>
    %addressResult_18, %dataResult_19 = store[%32] %dataResult_17 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load0" (1) [[1, 1]]>, <"load1" (1) [[1, 1]]>, <"load2" (1) [[1, 1]]>, <"store1" (1) [[1, 1], [0, 0]]>]>, handshake.name = "store1"} : <i32>, <i32>
    %38 = addi %32, %37 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i32>
    %39 = cmpi ult, %38, %35 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_20, %falseResult_21 = cond_br %39, %result_14 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %trueResult_22, %falseResult_23 = cond_br %45, %44 {handshake.bb = 4 : ui32, handshake.name = "cond_br13"} : <i1>, <i32>
    %result_24, %index_25 = control_merge %falseResult_21  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %40 = source {handshake.bb = 4 : ui32, handshake.name = "source8"} : <>
    %41 = constant %40 {handshake.bb = 4 : ui32, handshake.name = "constant13", value = 2 : i32} : <>, <i32>
    %42 = source {handshake.bb = 4 : ui32, handshake.name = "source9"} : <>
    %43 = constant %42 {handshake.bb = 4 : ui32, handshake.name = "constant14", value = 1 : i32} : <>, <i32>
    %44 = addi %6, %43 {handshake.bb = 4 : ui32, handshake.name = "addi6"} : <i32>
    %45 = cmpi ult, %44, %41 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i32>
    %trueResult_26, %falseResult_27 = cond_br %45, %result_24 {handshake.bb = 4 : ui32, handshake.name = "cond_br9"} : <i1>, <>
    %result_28, %index_29 = control_merge %falseResult_27  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %46 = constant %arg4 {handshake.bb = 5 : ui32, handshake.name = "constant15", value = 49 : i32} : <>, <i32>
    %addressResult_30, %dataResult_31 = load[%46] %outputs#0 {handshake.bb = 5 : ui32, handshake.name = "load4"} : <i32>, <i32>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %dataResult_31, %memEnd, %0#1, %arg4 : <i32>, <>, <>, <>
  }
}


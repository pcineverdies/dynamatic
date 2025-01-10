module {
  handshake.func @jacobi_1d_imper(%arg0: memref<50xi32>, %arg1: memref<50xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "B", "A_start", "B_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][4,1,5,cmpi2][1,2][3,3,4,cmpi1]", resNames = ["out0", "A_end", "B_end", "end"]} {
    %0:2 = lsq[%arg1 : memref<50xi32>] (%arg3, %result_4, %addressResult_10, %dataResult_11, %result_18, %addressResult_20, %result_34)  {groupSizes = [1 : i32, 1 : i32], handshake.name = "lsq0"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %outputs:2, %memEnd = mem_controller[%arg0 : memref<50xi32>] %arg2 (%addressResult_36, %29, %1#3, %1#4, %1#5) %result_34 {connectedBlocks = [5 : i32, 3 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %1:6 = lsq[MC] (%result_4, %addressResult, %addressResult_6, %addressResult_8, %result_18, %addressResult_22, %dataResult_23, %outputs#1)  {groupSizes = [3 : i32, 1 : i32], handshake.name = "lsq1"} : (!handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>)
    %2 = constant %arg4 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %3 = br %arg4 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <>
    %4 = constant %arg4 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %5 = merge %4, %38 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %6 = mux %5 [%arg4, %trueResult_28] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %result, %index = control_merge %3, %trueResult_32  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %7 = mux %5 [%2, %trueResult_26] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %8 = constant %6 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 1 : i32} : <>, <i32>
    %9 = br %result {handshake.bb = 1 : ui32, handshake.name = "br3"} : <>
    %trueResult, %falseResult = cond_br %25, %16 {handshake.bb = 2 : ui32, handshake.name = "cond_br25"} : <i1>, <i32>
    %trueResult_0, %falseResult_1 = cond_br %25, %24 {handshake.bb = 2 : ui32, handshake.name = "cond_br26"} : <i1>, <i32>
    %trueResult_2, %falseResult_3 = cond_br %25, %12 {handshake.bb = 2 : ui32, handshake.name = "cond_br27"} : <i1>, <>
    %10 = constant %arg4 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant21", value = false} : <>, <i1>
    %11 = merge %10, %25 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge10"} : <i1>
    %12 = mux %11 [%6, %trueResult_2] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux12"} : <i1>, <>
    %result_4, %index_5 = control_merge %9, %trueResult_12  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %13 = mux %11 [%8, %trueResult_0] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux14"} : <i1>, <i32>
    %14 = constant %12 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = -1 : i32} : <>, <i32>
    %15 = constant %12 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 49 : i32} : <>, <i32>
    %16 = constant %12 {handshake.bb = 2 : ui32, handshake.name = "constant9", value = 1 : i32} : <>, <i32>
    %17 = constant %12 {handshake.bb = 2 : ui32, handshake.name = "constant10", value = 1 : i32} : <>, <i32>
    %18 = addi %13, %14 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i32>
    %addressResult, %dataResult = load[%18] %1#0 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.name = "load0"} : <i32>, <i32>
    %addressResult_6, %dataResult_7 = load[%13] %1#1 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.name = "load1"} : <i32>, <i32>
    %19 = addi %dataResult, %dataResult_7 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %20 = addi %13, %16 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i32>
    %addressResult_8, %dataResult_9 = load[%20] %1#2 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.name = "load2"} : <i32>, <i32>
    %21 = addi %19, %dataResult_9 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %22 = shli %21, %17 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %23 = addi %21, %22 {handshake.bb = 2 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_10, %dataResult_11 = store[%13] %23 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1], [0, 0]]>, <"load3" (1) [[1, 1]]>, <"load3" (2) [[0, 0]]>]>, handshake.name = "store0"} : <i32>, <i32>
    %24 = addi %13, %16 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i32>
    %25 = cmpi ult, %24, %15 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_12, %falseResult_13 = cond_br %25, %result_4 {handshake.bb = 2 : ui32, handshake.name = "cond_br9"} : <i1>, <>
    %trueResult_14, %falseResult_15 = cond_br %34, %33 {handshake.bb = 3 : ui32, handshake.name = "cond_br28"} : <i1>, <i32>
    %trueResult_16, %falseResult_17 = cond_br %34, %28 {handshake.bb = 3 : ui32, handshake.name = "cond_br29"} : <i1>, <>
    %26 = constant %arg4 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant26", value = false} : <>, <i1>
    %27 = merge %26, %34 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge15"} : <i1>
    %28 = mux %27 [%6, %trueResult_16] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux15"} : <i1>, <>
    %29 = constant %result_18 {handshake.bb = 3 : ui32, handshake.name = "constant28", value = 1 : i32} : <>, <i32>
    %result_18, %index_19 = control_merge %falseResult_13, %trueResult_24  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %30 = mux %27 [%falseResult, %trueResult_14] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux17"} : <i1>, <i32>
    %31 = constant %28 {handshake.bb = 3 : ui32, handshake.name = "constant11", value = 49 : i32} : <>, <i32>
    %32 = constant %28 {handshake.bb = 3 : ui32, handshake.name = "constant12", value = 1 : i32} : <>, <i32>
    %addressResult_20, %dataResult_21 = load[%30] %0#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1]]>]>, handshake.name = "load3"} : <i32>, <i32>
    %addressResult_22, %dataResult_23 = store[%30] %dataResult_21 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load0" (1) [[1, 1]]>, <"load1" (1) [[1, 1]]>, <"load2" (1) [[1, 1]]>, <"store1" (1) [[1, 1], [0, 0]]>]>, handshake.name = "store1"} : <i32>, <i32>
    %33 = addi %30, %32 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i32>
    %34 = cmpi ult, %33, %31 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_24, %falseResult_25 = cond_br %34, %result_18 {handshake.bb = 3 : ui32, handshake.name = "cond_br13"} : <i1>, <>
    %trueResult_26, %falseResult_27 = cond_br %38, %37 {handshake.bb = 4 : ui32, handshake.name = "cond_br30"} : <i1>, <i32>
    %trueResult_28, %falseResult_29 = cond_br %38, %6 {handshake.bb = 4 : ui32, handshake.name = "cond_br31"} : <i1>, <>
    %result_30, %index_31 = control_merge %falseResult_25  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %35 = constant %6 {handshake.bb = 4 : ui32, handshake.name = "constant13", value = 2 : i32} : <>, <i32>
    %36 = constant %6 {handshake.bb = 4 : ui32, handshake.name = "constant14", value = 1 : i32} : <>, <i32>
    %37 = addi %7, %36 {handshake.bb = 4 : ui32, handshake.name = "addi6"} : <i32>
    %38 = cmpi ult, %37, %35 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i32>
    %trueResult_32, %falseResult_33 = cond_br %38, %result_30 {handshake.bb = 4 : ui32, handshake.name = "cond_br24"} : <i1>, <>
    %result_34, %index_35 = control_merge %falseResult_33  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %39 = constant %arg4 {handshake.bb = 5 : ui32, handshake.name = "constant15", value = 49 : i32} : <>, <i32>
    %addressResult_36, %dataResult_37 = load[%39] %outputs#0 {handshake.bb = 5 : ui32, handshake.name = "load4"} : <i32>, <i32>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %dataResult_37, %memEnd, %0#1, %arg4 : <i32>, <>, <>, <>
  }
}


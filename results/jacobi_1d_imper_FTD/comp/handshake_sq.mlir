module {
  handshake.func @jacobi_1d_imper(%arg0: memref<50xi32>, %arg1: memref<50xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "B", "A_start", "B_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][4,1,5,cmpi2][1,2][3,3,4,cmpi1]", resNames = ["out0", "A_end", "B_end", "end"]} {
    %0:2 = lsq[%arg1 : memref<50xi32>] (%arg3, %13#1, %addressResult_12, %dataResult_13, %32#1, %addressResult_24, %arg4)  {groupSizes = [1 : i32, 1 : i32], handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %outputs:2, %memEnd = mem_controller[%arg0 : memref<50xi32>] %arg2 (%addressResult_34, %34, %1#3, %1#4, %1#5) %arg4 {connectedBlocks = [5 : i32, 3 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %1:6 = lsq[MC] (%12#1, %addressResult, %addressResult_8, %addressResult_10, %31#1, %addressResult_26, %dataResult_27, %outputs#1)  {groupSizes = [3 : i32, 1 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>)
    %2 = constant %arg4 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %3 = mux %5 [%arg4, %trueResult_28] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <>
    %4 = constant %arg4 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant16", value = false} : <>, <i1>
    %5 = merge %4, %43 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge1"} : <i1>
    %6 = mux %5 [%arg4, %trueResult_32] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %7 = mux %5 [%2, %trueResult_30] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %8 = constant %6 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 1 : i32} : <>, <i32>
    %trueResult, %falseResult = cond_br %26, %12#0 {handshake.bb = 2 : ui32, handshake.name = "cond_br20"} : <i1>, <>
    %trueResult_0, %falseResult_1 = cond_br %26, %13#0 {handshake.bb = 2 : ui32, handshake.name = "cond_br21"} : <i1>, <>
    %trueResult_2, %falseResult_3 = cond_br %26, %11 {handshake.bb = 2 : ui32, handshake.name = "cond_br22"} : <i1>, <>
    %9 = constant %arg4 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant17", value = false} : <>, <i1>
    %10 = merge %9, %26 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge5"} : <i1>
    %11 = mux %10 [%3, %trueResult_2] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux5"} : <i1>, <>
    %12:2 = lazy_fork [2] %11 {handshake.bb = 2 : ui32, handshake.name = "lazy_fork0"} : <>
    %13:2 = lazy_fork [2] %11 {handshake.bb = 2 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_4, %falseResult_5 = cond_br %26, %17 {handshake.bb = 2 : ui32, handshake.name = "cond_br25"} : <i1>, <i32>
    %trueResult_6, %falseResult_7 = cond_br %26, %25 {handshake.bb = 2 : ui32, handshake.name = "cond_br26"} : <i1>, <i32>
    %14 = mux %10 [%8, %trueResult_6] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux14"} : <i1>, <i32>
    %15 = constant %11 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = -1 : i32} : <>, <i32>
    %16 = constant %11 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 49 : i32} : <>, <i32>
    %17 = constant %11 {handshake.bb = 2 : ui32, handshake.name = "constant9", value = 1 : i32} : <>, <i32>
    %18 = constant %11 {handshake.bb = 2 : ui32, handshake.name = "constant10", value = 1 : i32} : <>, <i32>
    %19 = addi %14, %15 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i32>
    %addressResult, %dataResult = load[%19] %1#0 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i32>, <i32>
    %addressResult_8, %dataResult_9 = load[%14] %1#1 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load1"} : <i32>, <i32>
    %20 = addi %dataResult, %dataResult_9 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %21 = addi %14, %17 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i32>
    %addressResult_10, %dataResult_11 = load[%21] %1#2 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load2"} : <i32>, <i32>
    %22 = addi %20, %dataResult_11 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %23 = shli %22, %18 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %24 = addi %22, %23 {handshake.bb = 2 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_12, %dataResult_13 = store[%14] %24 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1], [0, 0]]>, <"load3" (1) [[1, 1]]>, <"load3" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i32>, <i32>
    %25 = addi %14, %17 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i32>
    %26 = cmpi ult, %25, %16 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_14, %falseResult_15 = cond_br %39, %30 {handshake.bb = 3 : ui32, handshake.name = "cond_br23"} : <i1>, <>
    %trueResult_16, %falseResult_17 = cond_br %39, %29 {handshake.bb = 3 : ui32, handshake.name = "cond_br32"} : <i1>, <>
    %trueResult_18, %falseResult_19 = cond_br %39, %32#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br33"} : <i1>, <>
    %27 = constant %arg4 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant22", value = false} : <>, <i1>
    %28 = merge %27, %39 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge9"} : <i1>
    %29 = mux %28 [%falseResult_1, %trueResult_16] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux10"} : <i1>, <>
    %30 = mux %28 [%falseResult, %trueResult_14] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux11"} : <i1>, <>
    %31:2 = lazy_fork [2] %30 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork2"} : <>
    %32:2 = lazy_fork [2] %29 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork3"} : <>
    %trueResult_20, %falseResult_21 = cond_br %39, %38 {handshake.bb = 3 : ui32, handshake.name = "cond_br28"} : <i1>, <i32>
    %trueResult_22, %falseResult_23 = cond_br %39, %33 {handshake.bb = 3 : ui32, handshake.name = "cond_br29"} : <i1>, <>
    %33 = mux %28 [%6, %trueResult_22] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux15"} : <i1>, <>
    %34 = constant %arg4 {handshake.bb = 3 : ui32, handshake.name = "constant1", value = 1 : i32} : <>, <i32>
    %35 = mux %28 [%falseResult_5, %trueResult_20] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux17"} : <i1>, <i32>
    %36 = constant %33 {handshake.bb = 3 : ui32, handshake.name = "constant11", value = 49 : i32} : <>, <i32>
    %37 = constant %33 {handshake.bb = 3 : ui32, handshake.name = "constant12", value = 1 : i32} : <>, <i32>
    %addressResult_24, %dataResult_25 = load[%35] %0#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load3"} : <i32>, <i32>
    %addressResult_26, %dataResult_27 = store[%35] %dataResult_25 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load0" (1) [[1, 1]]>, <"load1" (1) [[1, 1]]>, <"load2" (1) [[1, 1]]>, <"store1" (1) [[1, 1], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i32>, <i32>
    %38 = addi %35, %37 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i32>
    %39 = cmpi ult, %38, %36 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_28, %falseResult_29 = cond_br %43, %falseResult_19 {handshake.bb = 4 : ui32, handshake.name = "cond_br34"} : <i1>, <>
    %trueResult_30, %falseResult_31 = cond_br %43, %42 {handshake.bb = 4 : ui32, handshake.name = "cond_br30"} : <i1>, <i32>
    %trueResult_32, %falseResult_33 = cond_br %43, %6 {handshake.bb = 4 : ui32, handshake.name = "cond_br31"} : <i1>, <>
    %40 = constant %6 {handshake.bb = 4 : ui32, handshake.name = "constant13", value = 2 : i32} : <>, <i32>
    %41 = constant %6 {handshake.bb = 4 : ui32, handshake.name = "constant14", value = 1 : i32} : <>, <i32>
    %42 = addi %7, %41 {handshake.bb = 4 : ui32, handshake.name = "addi6"} : <i32>
    %43 = cmpi ult, %42, %40 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i32>
    %44 = constant %arg4 {handshake.bb = 5 : ui32, handshake.name = "constant15", value = 49 : i32} : <>, <i32>
    %addressResult_34, %dataResult_35 = load[%44] %outputs#0 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i32>, <i32>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %dataResult_35, %memEnd, %0#1, %arg4 : <i32>, <>, <>, <>
  }
}


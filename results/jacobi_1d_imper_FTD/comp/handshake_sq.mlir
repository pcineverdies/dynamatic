module {
  handshake.func @jacobi_1d_imper(%arg0: memref<50xi32>, %arg1: memref<50xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "B", "A_start", "B_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][4,1,5,cmpi2][1,2][3,3,4,cmpi1]", resNames = ["out0", "A_end", "B_end", "end"]} {
    %0:2 = lsq[%arg1 : memref<50xi32>] (%arg3, %14#1, %addressResult_12, %dataResult_13, %37#1, %addressResult_22, %arg4)  {groupSizes = [1 : i32, 1 : i32], handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %outputs:2, %memEnd = mem_controller[%arg0 : memref<50xi32>] %arg2 (%addressResult_30, %38, %1#3, %1#4, %1#5) %arg4 {connectedBlocks = [5 : i32, 3 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %1:6 = lsq[MC] (%13#1, %addressResult, %addressResult_8, %addressResult_10, %36#1, %addressResult_24, %dataResult_25, %outputs#1)  {groupSizes = [3 : i32, 1 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>)
    %2 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %3 = constant %2 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %4 = mux %6 [%arg4, %trueResult_26] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <>
    %5 = constant %arg4 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant19", value = false} : <>, <i1>
    %6 = merge %5, %51 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge3"} : <i1>
    %7 = mux %6 [%3, %trueResult_28] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %8 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %9 = constant %8 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 1 : i32} : <>, <i32>
    %trueResult, %falseResult = cond_br %31, %13#0 {handshake.bb = 2 : ui32, handshake.name = "cond_br25"} : <i1>, <>
    %trueResult_0, %falseResult_1 = cond_br %31, %14#0 {handshake.bb = 2 : ui32, handshake.name = "cond_br26"} : <i1>, <>
    %trueResult_2, %falseResult_3 = cond_br %31, %12 {handshake.bb = 2 : ui32, handshake.name = "cond_br27"} : <i1>, <>
    %10 = constant %arg4 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant20", value = false} : <>, <i1>
    %11 = merge %10, %31 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge7"} : <i1>
    %12 = mux %11 [%4, %trueResult_2] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux7"} : <i1>, <>
    %13:2 = lazy_fork [2] %12 {handshake.bb = 2 : ui32, handshake.name = "lazy_fork0"} : <>
    %14:2 = lazy_fork [2] %12 {handshake.bb = 2 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_4, %falseResult_5 = cond_br %31, %21 {handshake.bb = 2 : ui32, handshake.name = "cond_br10"} : <i1>, <i32>
    %trueResult_6, %falseResult_7 = cond_br %31, %30 {handshake.bb = 2 : ui32, handshake.name = "cond_br11"} : <i1>, <i32>
    %15 = mux %11 [%9, %trueResult_6] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %16 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %17 = constant %16 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = -1 : i32} : <>, <i32>
    %18 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %19 = constant %18 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 49 : i32} : <>, <i32>
    %20 = source {handshake.bb = 2 : ui32, handshake.name = "source4"} : <>
    %21 = constant %20 {handshake.bb = 2 : ui32, handshake.name = "constant9", value = 1 : i32} : <>, <i32>
    %22 = source {handshake.bb = 2 : ui32, handshake.name = "source5"} : <>
    %23 = constant %22 {handshake.bb = 2 : ui32, handshake.name = "constant10", value = 1 : i32} : <>, <i32>
    %24 = addi %15, %17 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i32>
    %addressResult, %dataResult = load[%24] %1#0 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i32>, <i32>
    %addressResult_8, %dataResult_9 = load[%15] %1#1 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load1"} : <i32>, <i32>
    %25 = addi %dataResult, %dataResult_9 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %26 = addi %15, %21 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i32>
    %addressResult_10, %dataResult_11 = load[%26] %1#2 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load2"} : <i32>, <i32>
    %27 = addi %25, %dataResult_11 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %28 = shli %27, %23 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %29 = addi %27, %28 {handshake.bb = 2 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_12, %dataResult_13 = store[%15] %29 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1], [0, 0]]>, <"load3" (1) [[1, 1]]>, <"load3" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i32>, <i32>
    %30 = addi %15, %21 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i32>
    %31 = cmpi ult, %30, %19 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_14, %falseResult_15 = cond_br %45, %35 {handshake.bb = 3 : ui32, handshake.name = "cond_br28"} : <i1>, <>
    %trueResult_16, %falseResult_17 = cond_br %45, %34 {handshake.bb = 3 : ui32, handshake.name = "cond_br29"} : <i1>, <>
    %trueResult_18, %falseResult_19 = cond_br %45, %37#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br30"} : <i1>, <>
    %32 = constant %arg4 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant24", value = false} : <>, <i1>
    %33 = merge %32, %45 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge11"} : <i1>
    %34 = mux %33 [%falseResult_1, %trueResult_16] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux11"} : <i1>, <>
    %35 = mux %33 [%falseResult, %trueResult_14] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux12"} : <i1>, <>
    %36:2 = lazy_fork [2] %35 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork2"} : <>
    %37:2 = lazy_fork [2] %34 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork3"} : <>
    %trueResult_20, %falseResult_21 = cond_br %45, %44 {handshake.bb = 3 : ui32, handshake.name = "cond_br12"} : <i1>, <i32>
    %38 = constant %arg4 {handshake.bb = 3 : ui32, handshake.name = "constant5", value = 1 : i32} : <>, <i32>
    %39 = mux %33 [%falseResult_5, %trueResult_20] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %40 = source {handshake.bb = 3 : ui32, handshake.name = "source6"} : <>
    %41 = constant %40 {handshake.bb = 3 : ui32, handshake.name = "constant11", value = 49 : i32} : <>, <i32>
    %42 = source {handshake.bb = 3 : ui32, handshake.name = "source7"} : <>
    %43 = constant %42 {handshake.bb = 3 : ui32, handshake.name = "constant12", value = 1 : i32} : <>, <i32>
    %addressResult_22, %dataResult_23 = load[%39] %0#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load3"} : <i32>, <i32>
    %addressResult_24, %dataResult_25 = store[%39] %dataResult_23 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load0" (1) [[1, 1]]>, <"load1" (1) [[1, 1]]>, <"load2" (1) [[1, 1]]>, <"store1" (1) [[1, 1], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i32>, <i32>
    %44 = addi %39, %43 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i32>
    %45 = cmpi ult, %44, %41 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_26, %falseResult_27 = cond_br %51, %falseResult_19 {handshake.bb = 4 : ui32, handshake.name = "cond_br31"} : <i1>, <>
    %trueResult_28, %falseResult_29 = cond_br %51, %50 {handshake.bb = 4 : ui32, handshake.name = "cond_br13"} : <i1>, <i32>
    %46 = source {handshake.bb = 4 : ui32, handshake.name = "source8"} : <>
    %47 = constant %46 {handshake.bb = 4 : ui32, handshake.name = "constant13", value = 2 : i32} : <>, <i32>
    %48 = source {handshake.bb = 4 : ui32, handshake.name = "source9"} : <>
    %49 = constant %48 {handshake.bb = 4 : ui32, handshake.name = "constant14", value = 1 : i32} : <>, <i32>
    %50 = addi %7, %49 {handshake.bb = 4 : ui32, handshake.name = "addi6"} : <i32>
    %51 = cmpi ult, %50, %47 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i32>
    %52 = constant %arg4 {handshake.bb = 5 : ui32, handshake.name = "constant15", value = 49 : i32} : <>, <i32>
    %addressResult_30, %dataResult_31 = load[%52] %outputs#0 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i32>, <i32>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %dataResult_31, %memEnd, %0#1, %arg4 : <i32>, <>, <>, <>
  }
}


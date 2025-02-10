module {
  handshake.func @bicg(%arg0: memref<100xi32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["a", "s", "q", "p", "r", "a_start", "s_start", "q_start", "p_start", "r_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][1,2][3,1,4,cmpi1]", resNames = ["out0", "a_end", "s_end", "q_end", "p_end", "r_end", "end"]} {
    %outputs, %memEnd = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_14) %arg10 {connectedBlocks = [2 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_18) %arg10 {connectedBlocks = [2 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0:2 = lsq[%arg2 : memref<10xi32>] (%arg7, %8#1, %addressResult, %35#1, %addressResult_28, %dataResult_29, %arg10)  {groupSizes = [1 : i32, 1 : i32], handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %1:2 = lsq[%arg1 : memref<10xi32>] (%arg6, %15#1, %addressResult_12, %addressResult_16, %dataResult_17, %arg10)  {groupSizes = [2 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %outputs_2, %memEnd_3 = mem_controller[%arg0 : memref<100xi32>] %arg5 (%addressResult_10) %arg10 {connectedBlocks = [2 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %2 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %3 = constant %2 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %4 = mux %7 [%arg10, %trueResult_22] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <>
    %5 = constant %arg10 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant11", value = false} : <>, <i1>
    %6 = mux %7 [%arg10, %trueResult_20] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <>
    %7 = merge %5, %41 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge2"} : <i1>
    %8:2 = lazy_fork [2] %4 {handshake.bb = 1 : ui32, handshake.name = "lazy_fork0"} : <>
    %9 = mux %7 [%3, %trueResult_26] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %10 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %11 = constant %10 {handshake.bb = 1 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%9] %0#0 {handshake.bb = 1 : ui32, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i32>, <i32>
    %trueResult, %falseResult = cond_br %34, %15#0 {handshake.bb = 2 : ui32, handshake.name = "cond_br5"} : <i1>, <>
    %12 = constant %arg10 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant12", value = false} : <>, <i1>
    %13 = mux %14 [%6, %trueResult] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux7"} : <i1>, <>
    %14 = merge %12, %34 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge5"} : <i1>
    %15:2 = lazy_fork [2] %13 {handshake.bb = 2 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_4, %falseResult_5 = cond_br %34, %32 {handshake.bb = 2 : ui32, handshake.name = "cond_br14"} : <i1>, <i32>
    %trueResult_6, %falseResult_7 = cond_br %34, %33 {handshake.bb = 2 : ui32, handshake.name = "cond_br15"} : <i1>, <i32>
    %trueResult_8, %falseResult_9 = cond_br %34, %16 {handshake.bb = 2 : ui32, handshake.name = "cond_br16"} : <i1>, <i32>
    %16 = mux %14 [%9, %trueResult_8] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %17 = mux %14 [%dataResult, %trueResult_4] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %18 = mux %14 [%11, %trueResult_6] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %19 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %20 = constant %19 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = 10 : i32} : <>, <i32>
    %21 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %22 = constant %21 {handshake.bb = 2 : ui32, handshake.name = "constant6", value = 1 : i32} : <>, <i32>
    %23 = source {handshake.bb = 2 : ui32, handshake.name = "source4"} : <>
    %24 = constant %23 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 3 : i32} : <>, <i32>
    %25 = shli %16, %22 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %26 = shli %16, %24 {handshake.bb = 2 : ui32, handshake.name = "shli1"} : <i32>
    %27 = addi %25, %26 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i32>
    %28 = addi %18, %27 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i32>
    %addressResult_10, %dataResult_11 = load[%28] %outputs_2 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i32>, <i32>
    %addressResult_12, %dataResult_13 = load[%18] %1#0 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load2"} : <i32>, <i32>
    %addressResult_14, %dataResult_15 = load[%16] %outputs {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load3"} : <i32>, <i32>
    %29 = muli %dataResult_15, %dataResult_11 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %30 = addi %dataResult_13, %29 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %addressResult_16, %dataResult_17 = store[%18] %30 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i32>, <i32>
    %addressResult_18, %dataResult_19 = load[%18] %outputs_0 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i32>, <i32>
    %31 = muli %dataResult_11, %dataResult_19 {handshake.bb = 2 : ui32, handshake.name = "muli1"} : <i32>
    %32 = addi %17, %31 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %33 = addi %18, %22 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i32>
    %34 = cmpi ult, %33, %20 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_20, %falseResult_21 = cond_br %41, %falseResult {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <>
    %trueResult_22, %falseResult_23 = cond_br %41, %35#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %35:2 = lazy_fork [2] %8#0 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork2"} : <>
    %trueResult_24, %falseResult_25 = cond_br %41, %falseResult_5 {handshake.bb = 3 : ui32, handshake.name = "cond_br17"} : <i1>, <i32>
    %trueResult_26, %falseResult_27 = cond_br %41, %40 {handshake.bb = 3 : ui32, handshake.name = "cond_br18"} : <i1>, <i32>
    %36 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %37 = constant %36 {handshake.bb = 3 : ui32, handshake.name = "constant8", value = 10 : i32} : <>, <i32>
    %38 = source {handshake.bb = 3 : ui32, handshake.name = "source6"} : <>
    %39 = constant %38 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 1 : i32} : <>, <i32>
    %addressResult_28, %dataResult_29 = store[%9] %falseResult_5 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i32>, <i32>
    %40 = addi %9, %39 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i32>
    %41 = cmpi ult, %40, %37 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %falseResult_25, %memEnd_3, %1#1, %0#1, %memEnd_1, %memEnd, %arg10 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


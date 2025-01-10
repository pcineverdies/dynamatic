module {
  handshake.func @bicg(%arg0: memref<100xi32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["a", "s", "q", "p", "r", "a_start", "s_start", "q_start", "p_start", "r_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][1,2][3,1,4,cmpi1]", resNames = ["out0", "a_end", "s_end", "q_end", "p_end", "r_end", "end"]} {
    %outputs, %memEnd = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_16) %arg10 {connectedBlocks = [2 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_20) %arg10 {connectedBlocks = [2 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0:2 = lsq[%arg2 : memref<10xi32>] (%arg7, %7#1, %addressResult, %32#1, %addressResult_32, %dataResult_33, %arg10)  {groupSizes = [1 : i32, 1 : i32], handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %1:2 = lsq[%arg1 : memref<10xi32>] (%arg6, %14#1, %addressResult_14, %addressResult_18, %dataResult_19, %arg10)  {groupSizes = [2 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %outputs_2, %memEnd_3 = mem_controller[%arg0 : memref<100xi32>] %arg5 (%addressResult_12) %arg10 {connectedBlocks = [2 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %2 = constant %arg10 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %3 = mux %6 [%arg10, %trueResult_24] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <>
    %4 = constant %arg10 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant10", value = false} : <>, <i1>
    %5 = mux %6 [%arg10, %trueResult_22] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <>
    %6 = merge %4, %36 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge1"} : <i1>
    %7:2 = lazy_fork [2] %3 {handshake.bb = 1 : ui32, handshake.name = "lazy_fork0"} : <>
    %8 = mux %6 [%arg10, %trueResult_30] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %9 = mux %6 [%2, %trueResult_28] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %10 = constant %8 {handshake.bb = 1 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%9] %0#0 {handshake.bb = 1 : ui32, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i32>, <i32>
    %trueResult, %falseResult = cond_br %31, %14#0 {handshake.bb = 2 : ui32, handshake.name = "cond_br5"} : <i1>, <>
    %11 = constant %arg10 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant11", value = false} : <>, <i1>
    %12 = mux %13 [%5, %trueResult] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <>
    %13 = merge %11, %31 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge4"} : <i1>
    %14:2 = lazy_fork [2] %12 {handshake.bb = 2 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_4, %falseResult_5 = cond_br %31, %29 {handshake.bb = 2 : ui32, handshake.name = "cond_br23"} : <i1>, <i32>
    %trueResult_6, %falseResult_7 = cond_br %31, %30 {handshake.bb = 2 : ui32, handshake.name = "cond_br24"} : <i1>, <i32>
    %trueResult_8, %falseResult_9 = cond_br %31, %16 {handshake.bb = 2 : ui32, handshake.name = "cond_br25"} : <i1>, <>
    %trueResult_10, %falseResult_11 = cond_br %31, %15 {handshake.bb = 2 : ui32, handshake.name = "cond_br26"} : <i1>, <i32>
    %15 = mux %13 [%9, %trueResult_10] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %16 = mux %13 [%8, %trueResult_8] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux12"} : <i1>, <>
    %17 = mux %13 [%dataResult, %trueResult_4] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux14"} : <i1>, <i32>
    %18 = mux %13 [%10, %trueResult_6] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux15"} : <i1>, <i32>
    %19 = constant %16 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = 10 : i32} : <>, <i32>
    %20 = constant %16 {handshake.bb = 2 : ui32, handshake.name = "constant6", value = 1 : i32} : <>, <i32>
    %21 = constant %16 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 3 : i32} : <>, <i32>
    %22 = shli %15, %20 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %23 = shli %15, %21 {handshake.bb = 2 : ui32, handshake.name = "shli1"} : <i32>
    %24 = addi %22, %23 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i32>
    %25 = addi %18, %24 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i32>
    %addressResult_12, %dataResult_13 = load[%25] %outputs_2 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i32>, <i32>
    %addressResult_14, %dataResult_15 = load[%18] %1#0 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load2"} : <i32>, <i32>
    %addressResult_16, %dataResult_17 = load[%15] %outputs {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load3"} : <i32>, <i32>
    %26 = muli %dataResult_17, %dataResult_13 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %27 = addi %dataResult_15, %26 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %addressResult_18, %dataResult_19 = store[%18] %27 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i32>, <i32>
    %addressResult_20, %dataResult_21 = load[%18] %outputs_0 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i32>, <i32>
    %28 = muli %dataResult_13, %dataResult_21 {handshake.bb = 2 : ui32, handshake.name = "muli1"} : <i32>
    %29 = addi %17, %28 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %30 = addi %18, %20 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i32>
    %31 = cmpi ult, %30, %19 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_22, %falseResult_23 = cond_br %36, %falseResult {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <>
    %trueResult_24, %falseResult_25 = cond_br %36, %32#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %32:2 = lazy_fork [2] %7#0 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork2"} : <>
    %trueResult_26, %falseResult_27 = cond_br %36, %falseResult_5 {handshake.bb = 3 : ui32, handshake.name = "cond_br27"} : <i1>, <i32>
    %trueResult_28, %falseResult_29 = cond_br %36, %35 {handshake.bb = 3 : ui32, handshake.name = "cond_br28"} : <i1>, <i32>
    %trueResult_30, %falseResult_31 = cond_br %36, %8 {handshake.bb = 3 : ui32, handshake.name = "cond_br29"} : <i1>, <>
    %33 = constant %8 {handshake.bb = 3 : ui32, handshake.name = "constant8", value = 10 : i32} : <>, <i32>
    %34 = constant %8 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 1 : i32} : <>, <i32>
    %addressResult_32, %dataResult_33 = store[%9] %falseResult_5 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i32>, <i32>
    %35 = addi %9, %34 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i32>
    %36 = cmpi ult, %35, %33 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %falseResult_27, %memEnd_3, %1#1, %0#1, %memEnd_1, %memEnd, %arg10 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


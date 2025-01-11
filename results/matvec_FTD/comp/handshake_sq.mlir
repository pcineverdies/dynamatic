module {
  handshake.func @matvec(%arg0: memref<400xi32>, %arg1: memref<20xi32>, %arg2: memref<20xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["m", "v", "out", "m_start", "v_start", "out_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][1,2][3,1,4,cmpi1]", resNames = ["out0", "m_end", "v_end", "out_end", "end"]} {
    %memEnd = mem_controller[%arg2 : memref<20xi32>] %arg5 (%30, %addressResult_13, %dataResult_14) %arg6 {connectedBlocks = [3 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<20xi32>] %arg4 (%addressResult) %arg6 {connectedBlocks = [2 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<400xi32>] %arg3 (%addressResult_7) %arg6 {connectedBlocks = [2 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %1 = constant %0 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %2 = constant %arg6 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %3 = mux %4 [%1, %trueResult_11] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %4 = merge %2, %36 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %5 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %6 = constant %5 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %7 = source {handshake.bb = 1 : ui32, handshake.name = "source2"} : <>
    %8 = constant %7 {handshake.bb = 1 : ui32, handshake.name = "constant7", value = 0 : i32} : <>, <i32>
    %trueResult, %falseResult = cond_br %29, %27 {handshake.bb = 2 : ui32, handshake.name = "cond_br12"} : <i1>, <i32>
    %trueResult_3, %falseResult_4 = cond_br %29, %28 {handshake.bb = 2 : ui32, handshake.name = "cond_br13"} : <i1>, <i32>
    %trueResult_5, %falseResult_6 = cond_br %29, %11 {handshake.bb = 2 : ui32, handshake.name = "cond_br14"} : <i1>, <i32>
    %9 = constant %arg6 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %10 = merge %9, %29 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i1>
    %11 = mux %10 [%3, %trueResult_5] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %12 = mux %10 [%6, %trueResult] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %13 = mux %10 [%8, %trueResult_3] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %14 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %15 = constant %14 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 20 : i32} : <>, <i32>
    %16 = source {handshake.bb = 2 : ui32, handshake.name = "source4"} : <>
    %17 = constant %16 {handshake.bb = 2 : ui32, handshake.name = "constant9", value = 1 : i32} : <>, <i32>
    %18 = source {handshake.bb = 2 : ui32, handshake.name = "source5"} : <>
    %19 = constant %18 {handshake.bb = 2 : ui32, handshake.name = "constant10", value = 4 : i32} : <>, <i32>
    %20 = source {handshake.bb = 2 : ui32, handshake.name = "source6"} : <>
    %21 = constant %20 {handshake.bb = 2 : ui32, handshake.name = "constant11", value = 2 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%13] %outputs {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i32>, <i32>
    %22 = shli %11, %21 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %23 = shli %11, %19 {handshake.bb = 2 : ui32, handshake.name = "shli1"} : <i32>
    %24 = addi %22, %23 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i32>
    %25 = addi %13, %24 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %addressResult_7, %dataResult_8 = load[%25] %outputs_1 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i32>, <i32>
    %26 = muli %dataResult, %dataResult_8 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %27 = addi %12, %26 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %28 = addi %13, %17 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i32>
    %29 = cmpi ult, %28, %15 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_9, %falseResult_10 = cond_br %36, %falseResult {handshake.bb = 3 : ui32, handshake.name = "cond_br15"} : <i1>, <i32>
    %trueResult_11, %falseResult_12 = cond_br %36, %35 {handshake.bb = 3 : ui32, handshake.name = "cond_br16"} : <i1>, <i32>
    %30 = constant %arg6 {handshake.bb = 3 : ui32, handshake.name = "constant2", value = 1 : i32} : <>, <i32>
    %31 = source {handshake.bb = 3 : ui32, handshake.name = "source7"} : <>
    %32 = constant %31 {handshake.bb = 3 : ui32, handshake.name = "constant12", value = 20 : i32} : <>, <i32>
    %33 = source {handshake.bb = 3 : ui32, handshake.name = "source8"} : <>
    %34 = constant %33 {handshake.bb = 3 : ui32, handshake.name = "constant13", value = 1 : i32} : <>, <i32>
    %addressResult_13, %dataResult_14 = store[%3] %falseResult {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i32>, <i32>
    %35 = addi %3, %34 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i32>
    %36 = cmpi ult, %35, %32 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %falseResult_10, %memEnd_2, %memEnd_0, %memEnd, %arg6 : <i32>, <>, <>, <>, <>
  }
}


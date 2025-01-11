module {
  handshake.func @matvec(%arg0: memref<400xi32>, %arg1: memref<20xi32>, %arg2: memref<20xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["m", "v", "out", "m_start", "v_start", "out_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][1,2][3,1,4,cmpi1]", resNames = ["out0", "m_end", "v_end", "out_end", "end"]} {
    %memEnd = mem_controller[%arg2 : memref<20xi32>] %arg5 (%32, %addressResult_19, %dataResult_20) %result_23 {connectedBlocks = [3 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<20xi32>] %arg4 (%addressResult) %result_23 {connectedBlocks = [2 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<400xi32>] %arg3 (%addressResult_9) %result_23 {connectedBlocks = [2 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %1 = constant %0 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %2 = br %arg6 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <>
    %result, %index = control_merge %2, %trueResult_21  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %3 = constant %arg6 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %4 = mux %5 [%1, %trueResult_15] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %5 = merge %3, %38 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %6 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %7 = constant %6 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %8 = source {handshake.bb = 1 : ui32, handshake.name = "source2"} : <>
    %9 = constant %8 {handshake.bb = 1 : ui32, handshake.name = "constant7", value = 0 : i32} : <>, <i32>
    %10 = br %result {handshake.bb = 1 : ui32, handshake.name = "br3"} : <>
    %trueResult, %falseResult = cond_br %31, %29 {handshake.bb = 2 : ui32, handshake.name = "cond_br12"} : <i1>, <i32>
    %trueResult_3, %falseResult_4 = cond_br %31, %30 {handshake.bb = 2 : ui32, handshake.name = "cond_br13"} : <i1>, <i32>
    %trueResult_5, %falseResult_6 = cond_br %31, %13 {handshake.bb = 2 : ui32, handshake.name = "cond_br14"} : <i1>, <i32>
    %11 = constant %arg6 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %12 = merge %11, %31 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i1>
    %13 = mux %12 [%4, %trueResult_5] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %result_7, %index_8 = control_merge %10, %trueResult_11  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %14 = mux %12 [%7, %trueResult] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %15 = mux %12 [%9, %trueResult_3] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %16 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %17 = constant %16 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 20 : i32} : <>, <i32>
    %18 = source {handshake.bb = 2 : ui32, handshake.name = "source4"} : <>
    %19 = constant %18 {handshake.bb = 2 : ui32, handshake.name = "constant9", value = 1 : i32} : <>, <i32>
    %20 = source {handshake.bb = 2 : ui32, handshake.name = "source5"} : <>
    %21 = constant %20 {handshake.bb = 2 : ui32, handshake.name = "constant10", value = 4 : i32} : <>, <i32>
    %22 = source {handshake.bb = 2 : ui32, handshake.name = "source6"} : <>
    %23 = constant %22 {handshake.bb = 2 : ui32, handshake.name = "constant11", value = 2 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%15] %outputs {handshake.bb = 2 : ui32, handshake.name = "load0"} : <i32>, <i32>
    %24 = shli %13, %23 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %25 = shli %13, %21 {handshake.bb = 2 : ui32, handshake.name = "shli1"} : <i32>
    %26 = addi %24, %25 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i32>
    %27 = addi %15, %26 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %addressResult_9, %dataResult_10 = load[%27] %outputs_1 {handshake.bb = 2 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %28 = muli %dataResult, %dataResult_10 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %29 = addi %14, %28 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %30 = addi %15, %19 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i32>
    %31 = cmpi ult, %30, %17 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_11, %falseResult_12 = cond_br %31, %result_7 {handshake.bb = 2 : ui32, handshake.name = "cond_br8"} : <i1>, <>
    %trueResult_13, %falseResult_14 = cond_br %38, %falseResult {handshake.bb = 3 : ui32, handshake.name = "cond_br15"} : <i1>, <i32>
    %trueResult_15, %falseResult_16 = cond_br %38, %37 {handshake.bb = 3 : ui32, handshake.name = "cond_br16"} : <i1>, <i32>
    %32 = constant %result_17 {handshake.bb = 3 : ui32, handshake.name = "constant14", value = 1 : i32} : <>, <i32>
    %result_17, %index_18 = control_merge %falseResult_12  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %33 = source {handshake.bb = 3 : ui32, handshake.name = "source7"} : <>
    %34 = constant %33 {handshake.bb = 3 : ui32, handshake.name = "constant12", value = 20 : i32} : <>, <i32>
    %35 = source {handshake.bb = 3 : ui32, handshake.name = "source8"} : <>
    %36 = constant %35 {handshake.bb = 3 : ui32, handshake.name = "constant13", value = 1 : i32} : <>, <i32>
    %addressResult_19, %dataResult_20 = store[%4] %falseResult {handshake.bb = 3 : ui32, handshake.name = "store0"} : <i32>, <i32>
    %37 = addi %4, %36 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i32>
    %38 = cmpi ult, %37, %34 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_21, %falseResult_22 = cond_br %38, %result_17 {handshake.bb = 3 : ui32, handshake.name = "cond_br11"} : <i1>, <>
    %result_23, %index_24 = control_merge %falseResult_22  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %falseResult_14, %memEnd_2, %memEnd_0, %memEnd, %arg6 : <i32>, <>, <>, <>, <>
  }
}


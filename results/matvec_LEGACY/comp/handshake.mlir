module {
  handshake.func @matvec(%arg0: memref<400xi32>, %arg1: memref<20xi32>, %arg2: memref<20xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["m", "v", "out", "m_start", "v_start", "out_start", "start"], resNames = ["out0", "m_end", "v_end", "out_end", "end"]} {
    %memEnd = mem_controller[%arg2 : memref<20xi32>] %arg5 (%29, %addressResult_15, %dataResult_16) %result_23 {connectedBlocks = [3 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<20xi32>] %arg4 (%addressResult) %result_23 {connectedBlocks = [2 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<400xi32>] %arg3 (%addressResult_5) %result_23 {connectedBlocks = [2 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0 = constant %arg6 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %1 = br %0 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <i32>
    %2 = br %arg6 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %3 = mux %index [%1, %trueResult_17] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %result, %index = control_merge %2, %trueResult_19  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %4 = constant %result {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %5 = constant %result {handshake.bb = 1 : ui32, handshake.name = "constant7", value = 0 : i32} : <>, <i32>
    %6 = br %5 {handshake.bb = 1 : ui32, handshake.name = "br4"} : <i32>
    %7 = br %4 {handshake.bb = 1 : ui32, handshake.name = "br5"} : <i32>
    %8 = br %3 {handshake.bb = 1 : ui32, handshake.name = "br6"} : <i32>
    %9 = br %result {handshake.bb = 1 : ui32, handshake.name = "br7"} : <>
    %10 = mux %index_4 [%6, %trueResult] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %11 = mux %index_4 [%7, %trueResult_7] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %12 = mux %index_4 [%8, %trueResult_9] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %result_3, %index_4 = control_merge %9, %trueResult_11  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %13 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %14 = constant %13 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 20 : i32} : <>, <i32>
    %15 = source {handshake.bb = 2 : ui32, handshake.name = "source1"} : <>
    %16 = constant %15 {handshake.bb = 2 : ui32, handshake.name = "constant9", value = 1 : i32} : <>, <i32>
    %17 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %18 = constant %17 {handshake.bb = 2 : ui32, handshake.name = "constant10", value = 4 : i32} : <>, <i32>
    %19 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %20 = constant %19 {handshake.bb = 2 : ui32, handshake.name = "constant11", value = 2 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%10] %outputs {handshake.bb = 2 : ui32, handshake.name = "load0"} : <i32>, <i32>
    %21 = shli %12, %20 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %22 = shli %12, %18 {handshake.bb = 2 : ui32, handshake.name = "shli1"} : <i32>
    %23 = addi %21, %22 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i32>
    %24 = addi %10, %23 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %addressResult_5, %dataResult_6 = load[%24] %outputs_1 {handshake.bb = 2 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %25 = muli %dataResult, %dataResult_6 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %26 = addi %11, %25 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %27 = addi %10, %16 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i32>
    %28 = cmpi ult, %27, %14 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult, %falseResult = cond_br %28, %27 {handshake.bb = 2 : ui32, handshake.name = "cond_br2"} : <i1>, <i32>
    %trueResult_7, %falseResult_8 = cond_br %28, %26 {handshake.bb = 2 : ui32, handshake.name = "cond_br3"} : <i1>, <i32>
    %trueResult_9, %falseResult_10 = cond_br %28, %12 {handshake.bb = 2 : ui32, handshake.name = "cond_br4"} : <i1>, <i32>
    %trueResult_11, %falseResult_12 = cond_br %28, %result_3 {handshake.bb = 2 : ui32, handshake.name = "cond_br5"} : <i1>, <>
    %29 = constant %result_13 {handshake.bb = 3 : ui32, handshake.name = "constant0", value = 1 : i32} : <>, <i32>
    %30 = merge %falseResult_10 {handshake.bb = 3 : ui32, handshake.name = "merge0"} : <i32>
    %31 = merge %falseResult_8 {handshake.bb = 3 : ui32, handshake.name = "merge1"} : <i32>
    %result_13, %index_14 = control_merge %falseResult_12  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %32 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %33 = constant %32 {handshake.bb = 3 : ui32, handshake.name = "constant12", value = 20 : i32} : <>, <i32>
    %34 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %35 = constant %34 {handshake.bb = 3 : ui32, handshake.name = "constant13", value = 1 : i32} : <>, <i32>
    %addressResult_15, %dataResult_16 = store[%30] %31 {handshake.bb = 3 : ui32, handshake.name = "store0"} : <i32>, <i32>
    %36 = addi %30, %35 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i32>
    %37 = cmpi ult, %36, %33 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_17, %falseResult_18 = cond_br %37, %36 {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <i32>
    %trueResult_19, %falseResult_20 = cond_br %37, %result_13 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %trueResult_21, %falseResult_22 = cond_br %37, %31 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    %38 = merge %falseResult_22 {handshake.bb = 4 : ui32, handshake.name = "merge2"} : <i32>
    %result_23, %index_24 = control_merge %falseResult_20  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %38, %memEnd_2, %memEnd_0, %memEnd, %arg6 : <i32>, <>, <>, <>, <>
  }
}


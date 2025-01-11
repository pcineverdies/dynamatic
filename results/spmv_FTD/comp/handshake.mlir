module {
  handshake.func @spmv(%arg0: !handshake.channel<i32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: memref<10xi32>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["n", "row", "col", "val", "vec", "out", "row_start", "col_start", "val_start", "vec_start", "out_start", "start"], cfg.edges = "[0,1][2,3][4,3][1,2,6,cmpi0][3,4,5,cmpi1][5,1]", resNames = ["out0", "row_end", "col_end", "val_end", "vec_end", "out_end", "end"]} {
    %memEnd = mem_controller[%arg5 : memref<10xi32>] %arg10 (%29, %addressResult_37, %dataResult_38) %result_39 {connectedBlocks = [5 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_31) %result_39 {connectedBlocks = [4 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_29) %result_39 {connectedBlocks = [4 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_3, %memEnd_4 = mem_controller[%arg2 : memref<10xi32>] %arg7 (%addressResult_27) %result_39 {connectedBlocks = [4 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_5:2, %memEnd_6 = mem_controller[%arg1 : memref<10xi32>] %arg6 (%addressResult, %addressResult_13) %result_39 {connectedBlocks = [2 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %0 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %1 = constant %0 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = 0 : i32} : <>, <i32>
    %2 = source {handshake.bb = 0 : ui32, handshake.name = "source1"} : <>
    %3 = constant %2 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %4 = br %arg11 {handshake.bb = 0 : ui32, handshake.name = "br4"} : <>
    %trueResult, %falseResult = cond_br %10, %8 {handshake.bb = 1 : ui32, handshake.name = "cond_br16"} : <i1>, <i32>
    %trueResult_7, %falseResult_8 = cond_br %10, %7 {handshake.bb = 1 : ui32, handshake.name = "cond_br17"} : <i1>, <i32>
    %5 = constant %arg11 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %6 = merge %5, %10 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %7 = mux %6 [%arg0, %trueResult_7] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %result, %index = control_merge %4, %33  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %8 = mux %6 [%1, %dataResult] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %9 = mux %6 [%3, %32] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %10 = cmpi ult, %9, %7 {handshake.bb = 1 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_9, %falseResult_10 = cond_br %10, %result {handshake.bb = 1 : ui32, handshake.name = "cond_br4"} : <i1>, <>
    %result_11, %index_12 = control_merge %trueResult_9  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %11 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %12 = constant %11 {handshake.bb = 2 : ui32, handshake.name = "constant3", value = 1 : i32} : <>, <i32>
    %13 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %14 = constant %13 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%trueResult_33] %outputs_5#0 {handshake.bb = 2 : ui32, handshake.name = "load0"} : <i32>, <i32>
    %15 = addi %trueResult_33, %12 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %addressResult_13, %dataResult_14 = load[%15] %outputs_5#1 {handshake.bb = 2 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %16 = br %result_11 {handshake.bb = 2 : ui32, handshake.name = "br5"} : <>
    %trueResult_15, %falseResult_16 = cond_br %22, %19 {handshake.bb = 3 : ui32, handshake.name = "cond_br18"} : <i1>, <i32>
    %17 = constant %arg11 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant9", value = false} : <>, <i1>
    %18 = merge %17, %22 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge3"} : <i1>
    %19 = mux %18 [%dataResult_14, %trueResult_15] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %result_17, %index_18 = control_merge %16, %28  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %20 = mux %18 [%14, %26] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %21 = mux %18 [%dataResult, %27] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %22 = cmpi slt, %21, %19 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_19, %falseResult_20 = cond_br %22, %result_17 {handshake.bb = 3 : ui32, handshake.name = "cond_br9"} : <i1>, <>
    %trueResult_21, %falseResult_22 = cond_br %22, %20 {handshake.bb = 4 : ui32, handshake.name = "cond_br19"} : <i1>, <i32>
    %trueResult_23, %falseResult_24 = cond_br %22, %21 {handshake.bb = 4 : ui32, handshake.name = "cond_br20"} : <i1>, <i32>
    %result_25, %index_26 = control_merge %trueResult_19  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %23 = source {handshake.bb = 4 : ui32, handshake.name = "source4"} : <>
    %24 = constant %23 {handshake.bb = 4 : ui32, handshake.name = "constant5", value = 1 : i32} : <>, <i32>
    %addressResult_27, %dataResult_28 = load[%trueResult_23] %outputs_3 {handshake.bb = 4 : ui32, handshake.name = "load7"} : <i32>, <i32>
    %addressResult_29, %dataResult_30 = load[%trueResult_23] %outputs_1 {handshake.bb = 4 : ui32, handshake.name = "load8"} : <i32>, <i32>
    %addressResult_31, %dataResult_32 = load[%dataResult_28] %outputs {handshake.bb = 4 : ui32, handshake.name = "load9"} : <i32>, <i32>
    %25 = muli %dataResult_30, %dataResult_32 {handshake.bb = 4 : ui32, handshake.name = "muli0"} : <i32>
    %26 = addi %trueResult_21, %25 {handshake.bb = 4 : ui32, handshake.name = "addi0"} : <i32>
    %27 = addi %trueResult_23, %24 {handshake.bb = 4 : ui32, handshake.name = "addi2"} : <i32>
    %28 = br %result_25 {handshake.bb = 4 : ui32, handshake.name = "br6"} : <>
    %trueResult_33, %falseResult_34 = cond_br %10, %9 {handshake.bb = 5 : ui32, handshake.name = "cond_br21"} : <i1>, <i32>
    %29 = constant %result_35 {handshake.bb = 5 : ui32, handshake.name = "constant12", value = 1 : i32} : <>, <i32>
    %result_35, %index_36 = control_merge %falseResult_20  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %30 = source {handshake.bb = 5 : ui32, handshake.name = "source5"} : <>
    %31 = constant %30 {handshake.bb = 5 : ui32, handshake.name = "constant6", value = 1 : i32} : <>, <i32>
    %addressResult_37, %dataResult_38 = store[%trueResult_33] %falseResult_22 {handshake.bb = 5 : ui32, handshake.name = "store0"} : <i32>, <i32>
    %32 = addi %trueResult_33, %31 {handshake.bb = 5 : ui32, handshake.name = "addi3"} : <i32>
    %33 = br %result_35 {handshake.bb = 5 : ui32, handshake.name = "br7"} : <>
    %result_39, %index_40 = control_merge %falseResult_10  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %falseResult, %memEnd_6, %memEnd_4, %memEnd_2, %memEnd_0, %memEnd, %arg11 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


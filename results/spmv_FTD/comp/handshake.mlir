module {
  handshake.func @spmv(%arg0: !handshake.channel<i32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: memref<10xi32>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["n", "row", "col", "val", "vec", "out", "row_start", "col_start", "val_start", "vec_start", "out_start", "start"], cfg.edges = "[0,1][2,3][4,3][1,2,6,cmpi0][3,4,5,cmpi1][5,1]", resNames = ["out0", "row_end", "col_end", "val_end", "vec_end", "out_end", "end"]} {
    %memEnd = mem_controller[%arg5 : memref<10xi32>] %arg10 (%26, %addressResult_41, %dataResult_42) %result_43 {connectedBlocks = [5 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_35) %result_43 {connectedBlocks = [4 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_33) %result_43 {connectedBlocks = [4 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_3, %memEnd_4 = mem_controller[%arg2 : memref<10xi32>] %arg7 (%addressResult_31) %result_43 {connectedBlocks = [4 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_5:2, %memEnd_6 = mem_controller[%arg1 : memref<10xi32>] %arg6 (%addressResult, %addressResult_15) %result_43 {connectedBlocks = [2 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %0 = constant %arg11 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = 0 : i32} : <>, <i32>
    %1 = constant %arg11 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %2 = br %arg11 {handshake.bb = 0 : ui32, handshake.name = "br4"} : <>
    %trueResult, %falseResult = cond_br %9, %7 {handshake.bb = 1 : ui32, handshake.name = "cond_br26"} : <i1>, <i32>
    %trueResult_7, %falseResult_8 = cond_br %9, %6 {handshake.bb = 1 : ui32, handshake.name = "cond_br27"} : <i1>, <i32>
    %3 = constant %arg11 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %4 = merge %3, %9 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %5 = mux %4 [%arg11, %trueResult_11] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %6 = mux %4 [%arg0, %trueResult_7] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %result, %index = control_merge %2, %29  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %7 = mux %4 [%0, %dataResult] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %8 = mux %4 [%1, %28] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %9 = cmpi ult, %8, %6 {handshake.bb = 1 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_9, %falseResult_10 = cond_br %9, %result {handshake.bb = 1 : ui32, handshake.name = "cond_br8"} : <i1>, <>
    %trueResult_11, %falseResult_12 = cond_br %9, %5 {handshake.bb = 2 : ui32, handshake.name = "cond_br28"} : <i1>, <>
    %result_13, %index_14 = control_merge %trueResult_9  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %10 = constant %trueResult_11 {handshake.bb = 2 : ui32, handshake.name = "constant3", value = 1 : i32} : <>, <i32>
    %11 = constant %trueResult_11 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%trueResult_37] %outputs_5#0 {handshake.bb = 2 : ui32, handshake.name = "load0"} : <i32>, <i32>
    %12 = addi %trueResult_37, %10 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %addressResult_15, %dataResult_16 = load[%12] %outputs_5#1 {handshake.bb = 2 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %13 = br %result_13 {handshake.bb = 2 : ui32, handshake.name = "br5"} : <>
    %trueResult_17, %falseResult_18 = cond_br %20, %17 {handshake.bb = 3 : ui32, handshake.name = "cond_br29"} : <i1>, <i32>
    %14 = constant %arg11 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant13", value = false} : <>, <i1>
    %15 = merge %14, %20 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge7"} : <i1>
    %16 = mux %15 [%trueResult_11, %trueResult_27] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <>
    %17 = mux %15 [%dataResult_16, %trueResult_17] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %result_19, %index_20 = control_merge %13, %25  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %18 = mux %15 [%11, %23] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %19 = mux %15 [%dataResult, %24] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %20 = cmpi slt, %19, %17 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_21, %falseResult_22 = cond_br %20, %result_19 {handshake.bb = 3 : ui32, handshake.name = "cond_br17"} : <i1>, <>
    %trueResult_23, %falseResult_24 = cond_br %20, %18 {handshake.bb = 4 : ui32, handshake.name = "cond_br30"} : <i1>, <i32>
    %trueResult_25, %falseResult_26 = cond_br %20, %19 {handshake.bb = 4 : ui32, handshake.name = "cond_br31"} : <i1>, <i32>
    %trueResult_27, %falseResult_28 = cond_br %20, %16 {handshake.bb = 4 : ui32, handshake.name = "cond_br32"} : <i1>, <>
    %result_29, %index_30 = control_merge %trueResult_21  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %21 = constant %trueResult_27 {handshake.bb = 4 : ui32, handshake.name = "constant5", value = 1 : i32} : <>, <i32>
    %addressResult_31, %dataResult_32 = load[%trueResult_25] %outputs_3 {handshake.bb = 4 : ui32, handshake.name = "load7"} : <i32>, <i32>
    %addressResult_33, %dataResult_34 = load[%trueResult_25] %outputs_1 {handshake.bb = 4 : ui32, handshake.name = "load8"} : <i32>, <i32>
    %addressResult_35, %dataResult_36 = load[%dataResult_32] %outputs {handshake.bb = 4 : ui32, handshake.name = "load9"} : <i32>, <i32>
    %22 = muli %dataResult_34, %dataResult_36 {handshake.bb = 4 : ui32, handshake.name = "muli0"} : <i32>
    %23 = addi %trueResult_23, %22 {handshake.bb = 4 : ui32, handshake.name = "addi0"} : <i32>
    %24 = addi %trueResult_25, %21 {handshake.bb = 4 : ui32, handshake.name = "addi2"} : <i32>
    %25 = br %result_29 {handshake.bb = 4 : ui32, handshake.name = "br6"} : <>
    %trueResult_37, %falseResult_38 = cond_br %9, %8 {handshake.bb = 5 : ui32, handshake.name = "cond_br33"} : <i1>, <i32>
    %26 = constant %result_39 {handshake.bb = 5 : ui32, handshake.name = "constant17", value = 1 : i32} : <>, <i32>
    %result_39, %index_40 = control_merge %falseResult_22  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %27 = constant %trueResult_11 {handshake.bb = 5 : ui32, handshake.name = "constant6", value = 1 : i32} : <>, <i32>
    %addressResult_41, %dataResult_42 = store[%trueResult_37] %falseResult_24 {handshake.bb = 5 : ui32, handshake.name = "store0"} : <i32>, <i32>
    %28 = addi %trueResult_37, %27 {handshake.bb = 5 : ui32, handshake.name = "addi3"} : <i32>
    %29 = br %result_39 {handshake.bb = 5 : ui32, handshake.name = "br7"} : <>
    %result_43, %index_44 = control_merge %falseResult_10  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %falseResult, %memEnd_6, %memEnd_4, %memEnd_2, %memEnd_0, %memEnd, %arg11 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


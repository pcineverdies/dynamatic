module {
  handshake.func @spmv(%arg0: !handshake.channel<i32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: memref<10xi32>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["n", "row", "col", "val", "vec", "out", "row_start", "col_start", "val_start", "vec_start", "out_start", "start"], cfg.edges = "[0,1][2,3][4,3][1,2,6,cmpi0][3,4,5,cmpi1][5,1]", resNames = ["out0", "row_end", "col_end", "val_end", "vec_end", "out_end", "end"]} {
    %memEnd = mem_controller[%arg5 : memref<10xi32>] %arg10 (%23, %addressResult_29, %dataResult_30) %arg11 {connectedBlocks = [5 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_25) %arg11 {connectedBlocks = [4 : i32], handshake.name = "mem_controller6"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_23) %arg11 {connectedBlocks = [4 : i32], handshake.name = "mem_controller7"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_3, %memEnd_4 = mem_controller[%arg2 : memref<10xi32>] %arg7 (%addressResult_21) %arg11 {connectedBlocks = [4 : i32], handshake.name = "mem_controller8"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_5:2, %memEnd_6 = mem_controller[%arg1 : memref<10xi32>] %arg6 (%addressResult, %addressResult_11) %arg11 {connectedBlocks = [2 : i32], handshake.name = "mem_controller9"} :    (!handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %0 = constant %arg11 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = 0 : i32} : <>, <i32>
    %1 = constant %arg11 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %trueResult, %falseResult = cond_br %8, %6 {handshake.bb = 1 : ui32, handshake.name = "cond_br26"} : <i1>, <i32>
    %trueResult_7, %falseResult_8 = cond_br %8, %5 {handshake.bb = 1 : ui32, handshake.name = "cond_br27"} : <i1>, <i32>
    %2 = constant %arg11 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %3 = merge %2, %8 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %4 = mux %3 [%arg11, %trueResult_9] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %5 = mux %3 [%arg0, %trueResult_7] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %6 = mux %3 [%0, %dataResult] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %7 = mux %3 [%1, %25] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %8 = cmpi ult, %7, %5 {handshake.bb = 1 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_9, %falseResult_10 = cond_br %8, %4 {handshake.bb = 2 : ui32, handshake.name = "cond_br28"} : <i1>, <>
    %9 = constant %trueResult_9 {handshake.bb = 2 : ui32, handshake.name = "constant3", value = 1 : i32} : <>, <i32>
    %10 = constant %trueResult_9 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%trueResult_27] %outputs_5#0 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i32>, <i32>
    %11 = addi %trueResult_27, %9 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %addressResult_11, %dataResult_12 = load[%11] %outputs_5#1 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i32>, <i32>
    %trueResult_13, %falseResult_14 = cond_br %18, %15 {handshake.bb = 3 : ui32, handshake.name = "cond_br29"} : <i1>, <i32>
    %12 = constant %arg11 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant13", value = false} : <>, <i1>
    %13 = merge %12, %18 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge7"} : <i1>
    %14 = mux %13 [%trueResult_9, %trueResult_19] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <>
    %15 = mux %13 [%dataResult_12, %trueResult_13] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %16 = mux %13 [%10, %21] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %17 = mux %13 [%dataResult, %22] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %18 = cmpi slt, %17, %15 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_15, %falseResult_16 = cond_br %18, %16 {handshake.bb = 4 : ui32, handshake.name = "cond_br30"} : <i1>, <i32>
    %trueResult_17, %falseResult_18 = cond_br %18, %17 {handshake.bb = 4 : ui32, handshake.name = "cond_br31"} : <i1>, <i32>
    %trueResult_19, %falseResult_20 = cond_br %18, %14 {handshake.bb = 4 : ui32, handshake.name = "cond_br32"} : <i1>, <>
    %19 = constant %trueResult_19 {handshake.bb = 4 : ui32, handshake.name = "constant5", value = 1 : i32} : <>, <i32>
    %addressResult_21, %dataResult_22 = load[%trueResult_17] %outputs_3 {handshake.bb = 4 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load7"} : <i32>, <i32>
    %addressResult_23, %dataResult_24 = load[%trueResult_17] %outputs_1 {handshake.bb = 4 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load8"} : <i32>, <i32>
    %addressResult_25, %dataResult_26 = load[%dataResult_22] %outputs {handshake.bb = 4 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load9"} : <i32>, <i32>
    %20 = muli %dataResult_24, %dataResult_26 {handshake.bb = 4 : ui32, handshake.name = "muli0"} : <i32>
    %21 = addi %trueResult_15, %20 {handshake.bb = 4 : ui32, handshake.name = "addi0"} : <i32>
    %22 = addi %trueResult_17, %19 {handshake.bb = 4 : ui32, handshake.name = "addi2"} : <i32>
    %trueResult_27, %falseResult_28 = cond_br %8, %7 {handshake.bb = 5 : ui32, handshake.name = "cond_br33"} : <i1>, <i32>
    %23 = constant %arg11 {handshake.bb = 5 : ui32, handshake.name = "constant7", value = 1 : i32} : <>, <i32>
    %24 = constant %trueResult_9 {handshake.bb = 5 : ui32, handshake.name = "constant6", value = 1 : i32} : <>, <i32>
    %addressResult_29, %dataResult_30 = store[%trueResult_27] %falseResult_16 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i32>, <i32>
    %25 = addi %trueResult_27, %24 {handshake.bb = 5 : ui32, handshake.name = "addi3"} : <i32>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %falseResult, %memEnd_6, %memEnd_4, %memEnd_2, %memEnd_0, %memEnd, %arg11 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


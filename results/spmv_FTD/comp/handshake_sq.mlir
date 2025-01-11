module {
  handshake.func @spmv(%arg0: !handshake.channel<i32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: memref<10xi32>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["n", "row", "col", "val", "vec", "out", "row_start", "col_start", "val_start", "vec_start", "out_start", "start"], cfg.edges = "[0,1][2,3][4,3][1,2,6,cmpi0][3,4,5,cmpi1][5,1]", resNames = ["out0", "row_end", "col_end", "val_end", "vec_end", "out_end", "end"]} {
    %memEnd = mem_controller[%arg5 : memref<10xi32>] %arg10 (%26, %addressResult_25, %dataResult_26) %arg11 {connectedBlocks = [5 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_21) %arg11 {connectedBlocks = [4 : i32], handshake.name = "mem_controller6"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_19) %arg11 {connectedBlocks = [4 : i32], handshake.name = "mem_controller7"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_3, %memEnd_4 = mem_controller[%arg2 : memref<10xi32>] %arg7 (%addressResult_17) %arg11 {connectedBlocks = [4 : i32], handshake.name = "mem_controller8"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_5:2, %memEnd_6 = mem_controller[%arg1 : memref<10xi32>] %arg6 (%addressResult, %addressResult_9) %arg11 {connectedBlocks = [2 : i32], handshake.name = "mem_controller9"} :    (!handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %0 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %1 = constant %0 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = 0 : i32} : <>, <i32>
    %2 = source {handshake.bb = 0 : ui32, handshake.name = "source1"} : <>
    %3 = constant %2 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %trueResult, %falseResult = cond_br %9, %7 {handshake.bb = 1 : ui32, handshake.name = "cond_br16"} : <i1>, <i32>
    %trueResult_7, %falseResult_8 = cond_br %9, %6 {handshake.bb = 1 : ui32, handshake.name = "cond_br17"} : <i1>, <i32>
    %4 = constant %arg11 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %5 = merge %4, %9 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %6 = mux %5 [%arg0, %trueResult_7] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %7 = mux %5 [%1, %dataResult] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %8 = mux %5 [%3, %29] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %9 = cmpi ult, %8, %6 {handshake.bb = 1 : ui32, handshake.name = "cmpi0"} : <i32>
    %10 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %11 = constant %10 {handshake.bb = 2 : ui32, handshake.name = "constant3", value = 1 : i32} : <>, <i32>
    %12 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %13 = constant %12 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%trueResult_23] %outputs_5#0 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i32>, <i32>
    %14 = addi %trueResult_23, %11 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %addressResult_9, %dataResult_10 = load[%14] %outputs_5#1 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i32>, <i32>
    %trueResult_11, %falseResult_12 = cond_br %20, %17 {handshake.bb = 3 : ui32, handshake.name = "cond_br18"} : <i1>, <i32>
    %15 = constant %arg11 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant9", value = false} : <>, <i1>
    %16 = merge %15, %20 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge3"} : <i1>
    %17 = mux %16 [%dataResult_10, %trueResult_11] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %18 = mux %16 [%13, %24] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %19 = mux %16 [%dataResult, %25] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %20 = cmpi slt, %19, %17 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_13, %falseResult_14 = cond_br %20, %18 {handshake.bb = 4 : ui32, handshake.name = "cond_br19"} : <i1>, <i32>
    %trueResult_15, %falseResult_16 = cond_br %20, %19 {handshake.bb = 4 : ui32, handshake.name = "cond_br20"} : <i1>, <i32>
    %21 = source {handshake.bb = 4 : ui32, handshake.name = "source4"} : <>
    %22 = constant %21 {handshake.bb = 4 : ui32, handshake.name = "constant5", value = 1 : i32} : <>, <i32>
    %addressResult_17, %dataResult_18 = load[%trueResult_15] %outputs_3 {handshake.bb = 4 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load7"} : <i32>, <i32>
    %addressResult_19, %dataResult_20 = load[%trueResult_15] %outputs_1 {handshake.bb = 4 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load8"} : <i32>, <i32>
    %addressResult_21, %dataResult_22 = load[%dataResult_18] %outputs {handshake.bb = 4 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load9"} : <i32>, <i32>
    %23 = muli %dataResult_20, %dataResult_22 {handshake.bb = 4 : ui32, handshake.name = "muli0"} : <i32>
    %24 = addi %trueResult_13, %23 {handshake.bb = 4 : ui32, handshake.name = "addi0"} : <i32>
    %25 = addi %trueResult_15, %22 {handshake.bb = 4 : ui32, handshake.name = "addi2"} : <i32>
    %trueResult_23, %falseResult_24 = cond_br %9, %8 {handshake.bb = 5 : ui32, handshake.name = "cond_br21"} : <i1>, <i32>
    %26 = constant %arg11 {handshake.bb = 5 : ui32, handshake.name = "constant7", value = 1 : i32} : <>, <i32>
    %27 = source {handshake.bb = 5 : ui32, handshake.name = "source5"} : <>
    %28 = constant %27 {handshake.bb = 5 : ui32, handshake.name = "constant6", value = 1 : i32} : <>, <i32>
    %addressResult_25, %dataResult_26 = store[%trueResult_23] %falseResult_14 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i32>, <i32>
    %29 = addi %trueResult_23, %28 {handshake.bb = 5 : ui32, handshake.name = "addi3"} : <i32>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %falseResult, %memEnd_6, %memEnd_4, %memEnd_2, %memEnd_0, %memEnd, %arg11 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


module {
  handshake.func @spmv(%arg0: !handshake.channel<i32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: memref<10xi32>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["n", "row", "col", "val", "vec", "out", "row_start", "col_start", "val_start", "vec_start", "out_start", "start"], resNames = ["out0", "row_end", "col_end", "val_end", "vec_end", "out_end", "end"]} {
    %memEnd = mem_controller[%arg5 : memref<10xi32>] %arg10 (%52, %addressResult_43, %dataResult_44) %result_45 {connectedBlocks = [5 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_39) %result_45 {connectedBlocks = [4 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_37) %result_45 {connectedBlocks = [4 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_3, %memEnd_4 = mem_controller[%arg2 : memref<10xi32>] %arg7 (%addressResult_35) %result_45 {connectedBlocks = [4 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_5:2, %memEnd_6 = mem_controller[%arg1 : memref<10xi32>] %arg6 (%addressResult, %addressResult_15) %result_45 {connectedBlocks = [2 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %0 = constant %arg11 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = 0 : i32} : <>, <i32>
    %1 = constant %arg11 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %2 = trunci %arg0 {handshake.bb = 0 : ui32, handshake.name = "index_cast0"} : <i32> to <i32>
    %3 = br %1 {handshake.bb = 0 : ui32, handshake.name = "br4"} : <i32>
    %4 = br %0 {handshake.bb = 0 : ui32, handshake.name = "br5"} : <i32>
    %5 = br %2 {handshake.bb = 0 : ui32, handshake.name = "br6"} : <i32>
    %6 = br %arg11 {handshake.bb = 0 : ui32, handshake.name = "br7"} : <>
    %7 = mux %index [%3, %60] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %8 = mux %index [%4, %61] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %9 = mux %index [%5, %62] {handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %result, %index = control_merge %6, %63  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %10 = cmpi ult, %7, %9 {handshake.bb = 1 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult, %falseResult = cond_br %10, %9 {handshake.bb = 1 : ui32, handshake.name = "cond_br2"} : <i1>, <i32>
    %trueResult_7, %falseResult_8 = cond_br %10, %7 {handshake.bb = 1 : ui32, handshake.name = "cond_br3"} : <i1>, <i32>
    %trueResult_9, %falseResult_10 = cond_br %10, %result {handshake.bb = 1 : ui32, handshake.name = "cond_br4"} : <i1>, <>
    %trueResult_11, %falseResult_12 = cond_br %10, %8 {handshake.bb = 1 : ui32, handshake.name = "cond_br5"} : <i1>, <i32>
    %11 = merge %trueResult {handshake.bb = 2 : ui32, handshake.name = "merge0"} : <i32>
    %12 = merge %trueResult_7 {handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i32>
    %result_13, %index_14 = control_merge %trueResult_9  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %13 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %14 = constant %13 {handshake.bb = 2 : ui32, handshake.name = "constant3", value = 1 : i32} : <>, <i32>
    %15 = constant %result_13 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%12] %outputs_5#0 {handshake.bb = 2 : ui32, handshake.name = "load0"} : <i32>, <i32>
    %16 = addi %12, %14 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %addressResult_15, %dataResult_16 = load[%16] %outputs_5#1 {handshake.bb = 2 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %17 = trunci %dataResult_16 {handshake.bb = 2 : ui32, handshake.name = "index_cast1"} : <i32> to <i32>
    %18 = trunci %dataResult {handshake.bb = 2 : ui32, handshake.name = "index_cast2"} : <i32> to <i32>
    %19 = br %18 {handshake.bb = 2 : ui32, handshake.name = "br8"} : <i32>
    %20 = br %15 {handshake.bb = 2 : ui32, handshake.name = "br9"} : <i32>
    %21 = br %11 {handshake.bb = 2 : ui32, handshake.name = "br10"} : <i32>
    %22 = br %12 {handshake.bb = 2 : ui32, handshake.name = "br11"} : <i32>
    %23 = br %dataResult {handshake.bb = 2 : ui32, handshake.name = "br12"} : <i32>
    %24 = br %17 {handshake.bb = 2 : ui32, handshake.name = "br13"} : <i32>
    %25 = br %result_13 {handshake.bb = 2 : ui32, handshake.name = "br14"} : <>
    %26 = mux %index_18 [%19, %45] {handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %27 = mux %index_18 [%20, %46] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %28 = mux %index_18 [%21, %47] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %29 = mux %index_18 [%22, %48] {handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %30 = mux %index_18 [%23, %49] {handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %31 = mux %index_18 [%24, %50] {handshake.bb = 3 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %result_17, %index_18 = control_merge %25, %51  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %32 = cmpi slt, %26, %31 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_19, %falseResult_20 = cond_br %32, %28 {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <i32>
    %trueResult_21, %falseResult_22 = cond_br %32, %29 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <i32>
    %trueResult_23, %falseResult_24 = cond_br %32, %30 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    %trueResult_25, %falseResult_26 = cond_br %32, %31 {handshake.bb = 3 : ui32, handshake.name = "cond_br9"} : <i1>, <i32>
    %trueResult_27, %falseResult_28 = cond_br %32, %26 {handshake.bb = 3 : ui32, handshake.name = "cond_br10"} : <i1>, <i32>
    %trueResult_29, %falseResult_30 = cond_br %32, %27 {handshake.bb = 3 : ui32, handshake.name = "cond_br11"} : <i1>, <i32>
    %trueResult_31, %falseResult_32 = cond_br %32, %result_17 {handshake.bb = 3 : ui32, handshake.name = "cond_br12"} : <i1>, <>
    %33 = merge %trueResult_19 {handshake.bb = 4 : ui32, handshake.name = "merge2"} : <i32>
    %34 = merge %trueResult_21 {handshake.bb = 4 : ui32, handshake.name = "merge3"} : <i32>
    %35 = merge %trueResult_23 {handshake.bb = 4 : ui32, handshake.name = "merge4"} : <i32>
    %36 = merge %trueResult_25 {handshake.bb = 4 : ui32, handshake.name = "merge5"} : <i32>
    %37 = merge %trueResult_27 {handshake.bb = 4 : ui32, handshake.name = "merge6"} : <i32>
    %38 = merge %trueResult_29 {handshake.bb = 4 : ui32, handshake.name = "merge7"} : <i32>
    %result_33, %index_34 = control_merge %trueResult_31  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %39 = source {handshake.bb = 4 : ui32, handshake.name = "source1"} : <>
    %40 = constant %39 {handshake.bb = 4 : ui32, handshake.name = "constant5", value = 1 : i32} : <>, <i32>
    %addressResult_35, %dataResult_36 = load[%37] %outputs_3 {handshake.bb = 4 : ui32, handshake.name = "load7"} : <i32>, <i32>
    %addressResult_37, %dataResult_38 = load[%37] %outputs_1 {handshake.bb = 4 : ui32, handshake.name = "load8"} : <i32>, <i32>
    %41 = trunci %dataResult_36 {handshake.bb = 4 : ui32, handshake.name = "index_cast3"} : <i32> to <i32>
    %addressResult_39, %dataResult_40 = load[%41] %outputs {handshake.bb = 4 : ui32, handshake.name = "load9"} : <i32>, <i32>
    %42 = muli %dataResult_38, %dataResult_40 {handshake.bb = 4 : ui32, handshake.name = "muli0"} : <i32>
    %43 = addi %38, %42 {handshake.bb = 4 : ui32, handshake.name = "addi0"} : <i32>
    %44 = addi %37, %40 {handshake.bb = 4 : ui32, handshake.name = "addi2"} : <i32>
    %45 = br %44 {handshake.bb = 4 : ui32, handshake.name = "br15"} : <i32>
    %46 = br %43 {handshake.bb = 4 : ui32, handshake.name = "br16"} : <i32>
    %47 = br %33 {handshake.bb = 4 : ui32, handshake.name = "br17"} : <i32>
    %48 = br %34 {handshake.bb = 4 : ui32, handshake.name = "br18"} : <i32>
    %49 = br %35 {handshake.bb = 4 : ui32, handshake.name = "br19"} : <i32>
    %50 = br %36 {handshake.bb = 4 : ui32, handshake.name = "br20"} : <i32>
    %51 = br %result_33 {handshake.bb = 4 : ui32, handshake.name = "br21"} : <>
    %52 = constant %result_41 {handshake.bb = 5 : ui32, handshake.name = "constant1", value = 1 : i32} : <>, <i32>
    %53 = merge %falseResult_20 {handshake.bb = 5 : ui32, handshake.name = "merge8"} : <i32>
    %54 = merge %falseResult_22 {handshake.bb = 5 : ui32, handshake.name = "merge9"} : <i32>
    %55 = merge %falseResult_24 {handshake.bb = 5 : ui32, handshake.name = "merge10"} : <i32>
    %56 = merge %falseResult_30 {handshake.bb = 5 : ui32, handshake.name = "merge11"} : <i32>
    %result_41, %index_42 = control_merge %falseResult_32  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %57 = source {handshake.bb = 5 : ui32, handshake.name = "source2"} : <>
    %58 = constant %57 {handshake.bb = 5 : ui32, handshake.name = "constant6", value = 1 : i32} : <>, <i32>
    %addressResult_43, %dataResult_44 = store[%54] %56 {handshake.bb = 5 : ui32, handshake.name = "store0"} : <i32>, <i32>
    %59 = addi %54, %58 {handshake.bb = 5 : ui32, handshake.name = "addi3"} : <i32>
    %60 = br %59 {handshake.bb = 5 : ui32, handshake.name = "br22"} : <i32>
    %61 = br %55 {handshake.bb = 5 : ui32, handshake.name = "br23"} : <i32>
    %62 = br %53 {handshake.bb = 5 : ui32, handshake.name = "br24"} : <i32>
    %63 = br %result_41 {handshake.bb = 5 : ui32, handshake.name = "br25"} : <>
    %64 = merge %falseResult_12 {handshake.bb = 6 : ui32, handshake.name = "merge12"} : <i32>
    %result_45, %index_46 = control_merge %falseResult_10  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %64, %memEnd_6, %memEnd_4, %memEnd_2, %memEnd_0, %memEnd, %arg11 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


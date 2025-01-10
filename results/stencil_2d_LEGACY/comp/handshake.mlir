module {
  handshake.func @stencil_2d(%arg0: memref<900xi32>, %arg1: memref<10xi32>, %arg2: memref<900xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["orig", "filter", "sol", "orig_start", "filter_start", "sol_start", "start"], resNames = ["out0", "orig_end", "filter_end", "sol_end", "end"]} {
    %memEnd = mem_controller[%arg2 : memref<900xi32>] %arg5 (%48, %addressResult_29, %dataResult_30) %result_37 {connectedBlocks = [5 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<10xi32>] %arg4 (%addressResult) %result_37 {connectedBlocks = [3 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<900xi32>] %arg3 (%addressResult_7) %result_37 {connectedBlocks = [3 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0 = constant %arg6 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %1 = br %0 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <i32>
    %2 = br %arg6 {handshake.bb = 0 : ui32, handshake.name = "br4"} : <>
    %3 = mux %index [%1, %trueResult_31] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %result, %index = control_merge %2, %trueResult_33  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %4 = constant %result {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %5 = constant %result {handshake.bb = 1 : ui32, handshake.name = "constant7", value = 0 : i32} : <>, <i32>
    %6 = br %5 {handshake.bb = 1 : ui32, handshake.name = "br5"} : <i32>
    %7 = br %4 {handshake.bb = 1 : ui32, handshake.name = "br6"} : <i32>
    %8 = br %3 {handshake.bb = 1 : ui32, handshake.name = "br7"} : <i32>
    %9 = br %result {handshake.bb = 1 : ui32, handshake.name = "br8"} : <>
    %10 = mux %index_4 [%6, %trueResult_19] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %11 = mux %index_4 [%7, %trueResult_21] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %12 = mux %index_4 [%8, %trueResult_23] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %result_3, %index_4 = control_merge %9, %trueResult_25  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %13 = constant %result_3 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 0 : i32} : <>, <i32>
    %14 = br %13 {handshake.bb = 2 : ui32, handshake.name = "br9"} : <i32>
    %15 = br %11 {handshake.bb = 2 : ui32, handshake.name = "br10"} : <i32>
    %16 = br %12 {handshake.bb = 2 : ui32, handshake.name = "br11"} : <i32>
    %17 = br %10 {handshake.bb = 2 : ui32, handshake.name = "br12"} : <i32>
    %18 = br %result_3 {handshake.bb = 2 : ui32, handshake.name = "br13"} : <>
    %19 = mux %index_6 [%14, %trueResult] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %20 = mux %index_6 [%15, %trueResult_9] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %21 = mux %index_6 [%16, %trueResult_11] {handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %22 = mux %index_6 [%17, %trueResult_13] {handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %result_5, %index_6 = control_merge %18, %trueResult_15  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %23 = source {handshake.bb = 3 : ui32, handshake.name = "source0"} : <>
    %24 = constant %23 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 30 : i32} : <>, <i32>
    %25 = source {handshake.bb = 3 : ui32, handshake.name = "source1"} : <>
    %26 = constant %25 {handshake.bb = 3 : ui32, handshake.name = "constant10", value = 3 : i32} : <>, <i32>
    %27 = source {handshake.bb = 3 : ui32, handshake.name = "source2"} : <>
    %28 = constant %27 {handshake.bb = 3 : ui32, handshake.name = "constant11", value = 1 : i32} : <>, <i32>
    %29 = shli %22, %28 {handshake.bb = 3 : ui32, handshake.name = "shli0"} : <i32>
    %30 = addi %22, %29 {handshake.bb = 3 : ui32, handshake.name = "addi7"} : <i32>
    %31 = addi %19, %30 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i32>
    %addressResult, %dataResult = load[%31] %outputs {handshake.bb = 3 : ui32, handshake.name = "load0"} : <i32>, <i32>
    %32 = addi %19, %21 {handshake.bb = 3 : ui32, handshake.name = "addi2"} : <i32>
    %33 = muli %22, %24 {handshake.bb = 3 : ui32, handshake.name = "muli2"} : <i32>
    %34 = addi %32, %33 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i32>
    %addressResult_7, %dataResult_8 = load[%34] %outputs_1 {handshake.bb = 3 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %35 = muli %dataResult, %dataResult_8 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %36 = addi %20, %35 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %37 = addi %19, %28 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i32>
    %38 = cmpi ult, %37, %26 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult, %falseResult = cond_br %38, %37 {handshake.bb = 3 : ui32, handshake.name = "cond_br3"} : <i1>, <i32>
    %trueResult_9, %falseResult_10 = cond_br %38, %36 {handshake.bb = 3 : ui32, handshake.name = "cond_br4"} : <i1>, <i32>
    %trueResult_11, %falseResult_12 = cond_br %38, %21 {handshake.bb = 3 : ui32, handshake.name = "cond_br5"} : <i1>, <i32>
    %trueResult_13, %falseResult_14 = cond_br %38, %22 {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <i32>
    %trueResult_15, %falseResult_16 = cond_br %38, %result_5 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %39 = merge %falseResult_12 {handshake.bb = 4 : ui32, handshake.name = "merge0"} : <i32>
    %40 = merge %falseResult_14 {handshake.bb = 4 : ui32, handshake.name = "merge1"} : <i32>
    %41 = merge %falseResult_10 {handshake.bb = 4 : ui32, handshake.name = "merge2"} : <i32>
    %result_17, %index_18 = control_merge %falseResult_16  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %42 = source {handshake.bb = 4 : ui32, handshake.name = "source3"} : <>
    %43 = constant %42 {handshake.bb = 4 : ui32, handshake.name = "constant12", value = 3 : i32} : <>, <i32>
    %44 = source {handshake.bb = 4 : ui32, handshake.name = "source4"} : <>
    %45 = constant %44 {handshake.bb = 4 : ui32, handshake.name = "constant13", value = 1 : i32} : <>, <i32>
    %46 = addi %40, %45 {handshake.bb = 4 : ui32, handshake.name = "addi5"} : <i32>
    %47 = cmpi ult, %46, %43 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_19, %falseResult_20 = cond_br %47, %46 {handshake.bb = 4 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    %trueResult_21, %falseResult_22 = cond_br %47, %41 {handshake.bb = 4 : ui32, handshake.name = "cond_br9"} : <i1>, <i32>
    %trueResult_23, %falseResult_24 = cond_br %47, %39 {handshake.bb = 4 : ui32, handshake.name = "cond_br10"} : <i1>, <i32>
    %trueResult_25, %falseResult_26 = cond_br %47, %result_17 {handshake.bb = 4 : ui32, handshake.name = "cond_br11"} : <i1>, <>
    %48 = constant %result_27 {handshake.bb = 5 : ui32, handshake.name = "constant0", value = 1 : i32} : <>, <i32>
    %49 = merge %falseResult_24 {handshake.bb = 5 : ui32, handshake.name = "merge3"} : <i32>
    %50 = merge %falseResult_22 {handshake.bb = 5 : ui32, handshake.name = "merge4"} : <i32>
    %result_27, %index_28 = control_merge %falseResult_26  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %51 = source {handshake.bb = 5 : ui32, handshake.name = "source5"} : <>
    %52 = constant %51 {handshake.bb = 5 : ui32, handshake.name = "constant14", value = 28 : i32} : <>, <i32>
    %53 = source {handshake.bb = 5 : ui32, handshake.name = "source6"} : <>
    %54 = constant %53 {handshake.bb = 5 : ui32, handshake.name = "constant15", value = 1 : i32} : <>, <i32>
    %addressResult_29, %dataResult_30 = store[%49] %50 {handshake.bb = 5 : ui32, handshake.name = "store0"} : <i32>, <i32>
    %55 = addi %49, %54 {handshake.bb = 5 : ui32, handshake.name = "addi6"} : <i32>
    %56 = cmpi ult, %55, %52 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i32>
    %trueResult_31, %falseResult_32 = cond_br %56, %55 {handshake.bb = 5 : ui32, handshake.name = "cond_br12"} : <i1>, <i32>
    %trueResult_33, %falseResult_34 = cond_br %56, %result_27 {handshake.bb = 5 : ui32, handshake.name = "cond_br13"} : <i1>, <>
    %trueResult_35, %falseResult_36 = cond_br %56, %50 {handshake.bb = 5 : ui32, handshake.name = "cond_br14"} : <i1>, <i32>
    %57 = merge %falseResult_36 {handshake.bb = 6 : ui32, handshake.name = "merge5"} : <i32>
    %result_37, %index_38 = control_merge %falseResult_34  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %57, %memEnd_2, %memEnd_0, %memEnd, %arg6 : <i32>, <>, <>, <>, <>
  }
}


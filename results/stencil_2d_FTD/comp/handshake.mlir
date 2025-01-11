module {
  handshake.func @stencil_2d(%arg0: memref<900xi32>, %arg1: memref<10xi32>, %arg2: memref<900xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["orig", "filter", "sol", "orig_start", "filter_start", "sol_start", "start"], cfg.edges = "[0,1][2,3][4,2,5,cmpi1][1,2][3,3,4,cmpi0][5,1,6,cmpi2]", resNames = ["out0", "orig_end", "filter_end", "sol_end", "end"]} {
    %memEnd = mem_controller[%arg2 : memref<900xi32>] %arg5 (%47, %addressResult_33, %dataResult_34) %result_37 {connectedBlocks = [5 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<10xi32>] %arg4 (%addressResult) %result_37 {connectedBlocks = [3 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<900xi32>] %arg3 (%addressResult_13) %result_37 {connectedBlocks = [3 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %1 = constant %0 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %2 = br %arg6 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %result, %index = control_merge %2, %trueResult_35  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %3 = constant %arg6 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %4 = mux %5 [%1, %trueResult_29] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %5 = merge %3, %53 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %6 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %7 = constant %6 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %8 = source {handshake.bb = 1 : ui32, handshake.name = "source2"} : <>
    %9 = constant %8 {handshake.bb = 1 : ui32, handshake.name = "constant7", value = 0 : i32} : <>, <i32>
    %10 = br %result {handshake.bb = 1 : ui32, handshake.name = "br4"} : <>
    %11 = constant %arg6 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %12 = merge %11, %46 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i1>
    %13 = mux %12 [%4, %trueResult_21] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %result_3, %index_4 = control_merge %10, %trueResult_25  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %14 = mux %12 [%7, %trueResult_17] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %15 = mux %12 [%9, %trueResult_19] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %16 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %17 = constant %16 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 0 : i32} : <>, <i32>
    %18 = br %result_3 {handshake.bb = 2 : ui32, handshake.name = "br5"} : <>
    %trueResult, %falseResult = cond_br %40, %39 {handshake.bb = 3 : ui32, handshake.name = "cond_br22"} : <i1>, <i32>
    %trueResult_5, %falseResult_6 = cond_br %40, %22 {handshake.bb = 3 : ui32, handshake.name = "cond_br23"} : <i1>, <i32>
    %trueResult_7, %falseResult_8 = cond_br %40, %21 {handshake.bb = 3 : ui32, handshake.name = "cond_br24"} : <i1>, <i32>
    %trueResult_9, %falseResult_10 = cond_br %40, %38 {handshake.bb = 3 : ui32, handshake.name = "cond_br25"} : <i1>, <i32>
    %19 = constant %arg6 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant5", value = false} : <>, <i1>
    %20 = merge %19, %40 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge4"} : <i1>
    %21 = mux %20 [%13, %trueResult_7] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %22 = mux %20 [%15, %trueResult_5] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %result_11, %index_12 = control_merge %18, %trueResult_15  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %23 = mux %20 [%14, %trueResult_9] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %24 = mux %20 [%17, %trueResult] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %25 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %26 = constant %25 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 30 : i32} : <>, <i32>
    %27 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %28 = constant %27 {handshake.bb = 3 : ui32, handshake.name = "constant10", value = 3 : i32} : <>, <i32>
    %29 = source {handshake.bb = 3 : ui32, handshake.name = "source6"} : <>
    %30 = constant %29 {handshake.bb = 3 : ui32, handshake.name = "constant11", value = 1 : i32} : <>, <i32>
    %31 = shli %22, %30 {handshake.bb = 3 : ui32, handshake.name = "shli0"} : <i32>
    %32 = addi %22, %31 {handshake.bb = 3 : ui32, handshake.name = "addi7"} : <i32>
    %33 = addi %24, %32 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i32>
    %addressResult, %dataResult = load[%33] %outputs {handshake.bb = 3 : ui32, handshake.name = "load0"} : <i32>, <i32>
    %34 = addi %24, %21 {handshake.bb = 3 : ui32, handshake.name = "addi2"} : <i32>
    %35 = muli %22, %26 {handshake.bb = 3 : ui32, handshake.name = "muli2"} : <i32>
    %36 = addi %34, %35 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i32>
    %addressResult_13, %dataResult_14 = load[%36] %outputs_1 {handshake.bb = 3 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %37 = muli %dataResult, %dataResult_14 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %38 = addi %23, %37 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %39 = addi %24, %30 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i32>
    %40 = cmpi ult, %39, %28 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_15, %falseResult_16 = cond_br %40, %result_11 {handshake.bb = 3 : ui32, handshake.name = "cond_br12"} : <i1>, <>
    %trueResult_17, %falseResult_18 = cond_br %46, %falseResult_10 {handshake.bb = 4 : ui32, handshake.name = "cond_br26"} : <i1>, <i32>
    %trueResult_19, %falseResult_20 = cond_br %46, %45 {handshake.bb = 4 : ui32, handshake.name = "cond_br27"} : <i1>, <i32>
    %trueResult_21, %falseResult_22 = cond_br %46, %13 {handshake.bb = 4 : ui32, handshake.name = "cond_br28"} : <i1>, <i32>
    %result_23, %index_24 = control_merge %falseResult_16  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %41 = source {handshake.bb = 4 : ui32, handshake.name = "source7"} : <>
    %42 = constant %41 {handshake.bb = 4 : ui32, handshake.name = "constant12", value = 3 : i32} : <>, <i32>
    %43 = source {handshake.bb = 4 : ui32, handshake.name = "source8"} : <>
    %44 = constant %43 {handshake.bb = 4 : ui32, handshake.name = "constant13", value = 1 : i32} : <>, <i32>
    %45 = addi %15, %44 {handshake.bb = 4 : ui32, handshake.name = "addi5"} : <i32>
    %46 = cmpi ult, %45, %42 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_25, %falseResult_26 = cond_br %46, %result_23 {handshake.bb = 4 : ui32, handshake.name = "cond_br18"} : <i1>, <>
    %trueResult_27, %falseResult_28 = cond_br %53, %falseResult_18 {handshake.bb = 5 : ui32, handshake.name = "cond_br29"} : <i1>, <i32>
    %trueResult_29, %falseResult_30 = cond_br %53, %52 {handshake.bb = 5 : ui32, handshake.name = "cond_br30"} : <i1>, <i32>
    %47 = constant %result_31 {handshake.bb = 5 : ui32, handshake.name = "constant21", value = 1 : i32} : <>, <i32>
    %result_31, %index_32 = control_merge %falseResult_26  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %48 = source {handshake.bb = 5 : ui32, handshake.name = "source9"} : <>
    %49 = constant %48 {handshake.bb = 5 : ui32, handshake.name = "constant14", value = 28 : i32} : <>, <i32>
    %50 = source {handshake.bb = 5 : ui32, handshake.name = "source10"} : <>
    %51 = constant %50 {handshake.bb = 5 : ui32, handshake.name = "constant15", value = 1 : i32} : <>, <i32>
    %addressResult_33, %dataResult_34 = store[%4] %falseResult_18 {handshake.bb = 5 : ui32, handshake.name = "store0"} : <i32>, <i32>
    %52 = addi %4, %51 {handshake.bb = 5 : ui32, handshake.name = "addi6"} : <i32>
    %53 = cmpi ult, %52, %49 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i32>
    %trueResult_35, %falseResult_36 = cond_br %53, %result_31 {handshake.bb = 5 : ui32, handshake.name = "cond_br21"} : <i1>, <>
    %result_37, %index_38 = control_merge %falseResult_36  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %falseResult_28, %memEnd_2, %memEnd_0, %memEnd, %arg6 : <i32>, <>, <>, <>, <>
  }
}


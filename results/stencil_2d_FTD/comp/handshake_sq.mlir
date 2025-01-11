module {
  handshake.func @stencil_2d(%arg0: memref<900xi32>, %arg1: memref<10xi32>, %arg2: memref<900xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["orig", "filter", "sol", "orig_start", "filter_start", "sol_start", "start"], cfg.edges = "[0,1][2,3][4,2,5,cmpi1][1,2][3,3,4,cmpi0][5,1,6,cmpi2]", resNames = ["out0", "orig_end", "filter_end", "sol_end", "end"]} {
    %memEnd = mem_controller[%arg2 : memref<900xi32>] %arg5 (%44, %addressResult_21, %dataResult_22) %arg6 {connectedBlocks = [5 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<10xi32>] %arg4 (%addressResult) %arg6 {connectedBlocks = [3 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<900xi32>] %arg3 (%addressResult_9) %arg6 {connectedBlocks = [3 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %1 = constant %0 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %2 = constant %arg6 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %3 = mux %4 [%1, %trueResult_19] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %4 = merge %2, %50 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %5 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %6 = constant %5 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %7 = source {handshake.bb = 1 : ui32, handshake.name = "source2"} : <>
    %8 = constant %7 {handshake.bb = 1 : ui32, handshake.name = "constant7", value = 0 : i32} : <>, <i32>
    %9 = constant %arg6 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %10 = merge %9, %43 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i1>
    %11 = mux %10 [%3, %trueResult_15] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %12 = mux %10 [%6, %trueResult_11] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %13 = mux %10 [%8, %trueResult_13] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %14 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %15 = constant %14 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 0 : i32} : <>, <i32>
    %trueResult, %falseResult = cond_br %37, %36 {handshake.bb = 3 : ui32, handshake.name = "cond_br22"} : <i1>, <i32>
    %trueResult_3, %falseResult_4 = cond_br %37, %19 {handshake.bb = 3 : ui32, handshake.name = "cond_br23"} : <i1>, <i32>
    %trueResult_5, %falseResult_6 = cond_br %37, %18 {handshake.bb = 3 : ui32, handshake.name = "cond_br24"} : <i1>, <i32>
    %trueResult_7, %falseResult_8 = cond_br %37, %35 {handshake.bb = 3 : ui32, handshake.name = "cond_br25"} : <i1>, <i32>
    %16 = constant %arg6 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant5", value = false} : <>, <i1>
    %17 = merge %16, %37 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge4"} : <i1>
    %18 = mux %17 [%11, %trueResult_5] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %19 = mux %17 [%13, %trueResult_3] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %20 = mux %17 [%12, %trueResult_7] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %21 = mux %17 [%15, %trueResult] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %22 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %23 = constant %22 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 30 : i32} : <>, <i32>
    %24 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %25 = constant %24 {handshake.bb = 3 : ui32, handshake.name = "constant10", value = 3 : i32} : <>, <i32>
    %26 = source {handshake.bb = 3 : ui32, handshake.name = "source6"} : <>
    %27 = constant %26 {handshake.bb = 3 : ui32, handshake.name = "constant11", value = 1 : i32} : <>, <i32>
    %28 = shli %19, %27 {handshake.bb = 3 : ui32, handshake.name = "shli0"} : <i32>
    %29 = addi %19, %28 {handshake.bb = 3 : ui32, handshake.name = "addi7"} : <i32>
    %30 = addi %21, %29 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i32>
    %addressResult, %dataResult = load[%30] %outputs {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i32>, <i32>
    %31 = addi %21, %18 {handshake.bb = 3 : ui32, handshake.name = "addi2"} : <i32>
    %32 = muli %19, %23 {handshake.bb = 3 : ui32, handshake.name = "muli2"} : <i32>
    %33 = addi %31, %32 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i32>
    %addressResult_9, %dataResult_10 = load[%33] %outputs_1 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i32>, <i32>
    %34 = muli %dataResult, %dataResult_10 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %35 = addi %20, %34 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %36 = addi %21, %27 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i32>
    %37 = cmpi ult, %36, %25 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_11, %falseResult_12 = cond_br %43, %falseResult_8 {handshake.bb = 4 : ui32, handshake.name = "cond_br26"} : <i1>, <i32>
    %trueResult_13, %falseResult_14 = cond_br %43, %42 {handshake.bb = 4 : ui32, handshake.name = "cond_br27"} : <i1>, <i32>
    %trueResult_15, %falseResult_16 = cond_br %43, %11 {handshake.bb = 4 : ui32, handshake.name = "cond_br28"} : <i1>, <i32>
    %38 = source {handshake.bb = 4 : ui32, handshake.name = "source7"} : <>
    %39 = constant %38 {handshake.bb = 4 : ui32, handshake.name = "constant12", value = 3 : i32} : <>, <i32>
    %40 = source {handshake.bb = 4 : ui32, handshake.name = "source8"} : <>
    %41 = constant %40 {handshake.bb = 4 : ui32, handshake.name = "constant13", value = 1 : i32} : <>, <i32>
    %42 = addi %13, %41 {handshake.bb = 4 : ui32, handshake.name = "addi5"} : <i32>
    %43 = cmpi ult, %42, %39 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_17, %falseResult_18 = cond_br %50, %falseResult_12 {handshake.bb = 5 : ui32, handshake.name = "cond_br29"} : <i1>, <i32>
    %trueResult_19, %falseResult_20 = cond_br %50, %49 {handshake.bb = 5 : ui32, handshake.name = "cond_br30"} : <i1>, <i32>
    %44 = constant %arg6 {handshake.bb = 5 : ui32, handshake.name = "constant3", value = 1 : i32} : <>, <i32>
    %45 = source {handshake.bb = 5 : ui32, handshake.name = "source9"} : <>
    %46 = constant %45 {handshake.bb = 5 : ui32, handshake.name = "constant14", value = 28 : i32} : <>, <i32>
    %47 = source {handshake.bb = 5 : ui32, handshake.name = "source10"} : <>
    %48 = constant %47 {handshake.bb = 5 : ui32, handshake.name = "constant15", value = 1 : i32} : <>, <i32>
    %addressResult_21, %dataResult_22 = store[%3] %falseResult_12 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i32>, <i32>
    %49 = addi %3, %48 {handshake.bb = 5 : ui32, handshake.name = "addi6"} : <i32>
    %50 = cmpi ult, %49, %46 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i32>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %falseResult_18, %memEnd_2, %memEnd_0, %memEnd, %arg6 : <i32>, <>, <>, <>, <>
  }
}


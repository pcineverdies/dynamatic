module {
  handshake.func @stencil_2d(%arg0: memref<900xi32>, %arg1: memref<10xi32>, %arg2: memref<900xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["orig", "filter", "sol", "orig_start", "filter_start", "sol_start", "start"], cfg.edges = "[0,1][2,3][4,2,5,cmpi1][1,2][3,3,4,cmpi0][5,1,6,cmpi2]", resNames = ["out0", "orig_end", "filter_end", "sol_end", "end"]} {
    %memEnd = mem_controller[%arg2 : memref<900xi32>] %arg5 (%41, %addressResult_39, %dataResult_40) %result_43 {connectedBlocks = [5 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<10xi32>] %arg4 (%addressResult) %result_43 {connectedBlocks = [3 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<900xi32>] %arg3 (%addressResult_15) %result_43 {connectedBlocks = [3 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0 = constant %arg6 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %1 = br %arg6 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %2 = constant %arg6 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %3 = merge %2, %45 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %4 = mux %3 [%arg6, %trueResult_35] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %result, %index = control_merge %1, %trueResult_41  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %5 = mux %3 [%0, %trueResult_33] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %6 = constant %4 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %7 = constant %4 {handshake.bb = 1 : ui32, handshake.name = "constant7", value = 0 : i32} : <>, <i32>
    %8 = br %result {handshake.bb = 1 : ui32, handshake.name = "br4"} : <>
    %9 = constant %arg6 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant22", value = false} : <>, <i1>
    %10 = merge %9, %40 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge11"} : <i1>
    %11 = mux %10 [%5, %trueResult_25] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %12 = mux %10 [%4, %trueResult_23] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux17"} : <i1>, <>
    %result_3, %index_4 = control_merge %8, %trueResult_29  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %13 = mux %10 [%6, %trueResult_19] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux18"} : <i1>, <i32>
    %14 = mux %10 [%7, %trueResult_21] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux19"} : <i1>, <i32>
    %15 = constant %12 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 0 : i32} : <>, <i32>
    %16 = br %result_3 {handshake.bb = 2 : ui32, handshake.name = "br5"} : <>
    %trueResult, %falseResult = cond_br %36, %35 {handshake.bb = 3 : ui32, handshake.name = "cond_br41"} : <i1>, <i32>
    %trueResult_5, %falseResult_6 = cond_br %36, %21 {handshake.bb = 3 : ui32, handshake.name = "cond_br42"} : <i1>, <>
    %trueResult_7, %falseResult_8 = cond_br %36, %20 {handshake.bb = 3 : ui32, handshake.name = "cond_br43"} : <i1>, <i32>
    %trueResult_9, %falseResult_10 = cond_br %36, %19 {handshake.bb = 3 : ui32, handshake.name = "cond_br44"} : <i1>, <i32>
    %trueResult_11, %falseResult_12 = cond_br %36, %34 {handshake.bb = 3 : ui32, handshake.name = "cond_br45"} : <i1>, <i32>
    %17 = constant %arg6 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant31", value = false} : <>, <i1>
    %18 = merge %17, %36 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge20"} : <i1>
    %19 = mux %18 [%11, %trueResult_9] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux21"} : <i1>, <i32>
    %20 = mux %18 [%14, %trueResult_7] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux23"} : <i1>, <i32>
    %21 = mux %18 [%12, %trueResult_5] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux26"} : <i1>, <>
    %result_13, %index_14 = control_merge %16, %trueResult_17  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %22 = mux %18 [%13, %trueResult_11] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux27"} : <i1>, <i32>
    %23 = mux %18 [%15, %trueResult] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux28"} : <i1>, <i32>
    %24 = constant %21 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 30 : i32} : <>, <i32>
    %25 = constant %21 {handshake.bb = 3 : ui32, handshake.name = "constant10", value = 3 : i32} : <>, <i32>
    %26 = constant %21 {handshake.bb = 3 : ui32, handshake.name = "constant11", value = 1 : i32} : <>, <i32>
    %27 = shli %20, %26 {handshake.bb = 3 : ui32, handshake.name = "shli0"} : <i32>
    %28 = addi %20, %27 {handshake.bb = 3 : ui32, handshake.name = "addi7"} : <i32>
    %29 = addi %23, %28 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i32>
    %addressResult, %dataResult = load[%29] %outputs {handshake.bb = 3 : ui32, handshake.name = "load0"} : <i32>, <i32>
    %30 = addi %23, %19 {handshake.bb = 3 : ui32, handshake.name = "addi2"} : <i32>
    %31 = muli %20, %24 {handshake.bb = 3 : ui32, handshake.name = "muli2"} : <i32>
    %32 = addi %30, %31 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i32>
    %addressResult_15, %dataResult_16 = load[%32] %outputs_1 {handshake.bb = 3 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %33 = muli %dataResult, %dataResult_16 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %34 = addi %22, %33 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %35 = addi %23, %26 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i32>
    %36 = cmpi ult, %35, %25 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_17, %falseResult_18 = cond_br %36, %result_13 {handshake.bb = 3 : ui32, handshake.name = "cond_br15"} : <i1>, <>
    %trueResult_19, %falseResult_20 = cond_br %40, %falseResult_12 {handshake.bb = 4 : ui32, handshake.name = "cond_br46"} : <i1>, <i32>
    %trueResult_21, %falseResult_22 = cond_br %40, %39 {handshake.bb = 4 : ui32, handshake.name = "cond_br47"} : <i1>, <i32>
    %trueResult_23, %falseResult_24 = cond_br %40, %12 {handshake.bb = 4 : ui32, handshake.name = "cond_br48"} : <i1>, <>
    %trueResult_25, %falseResult_26 = cond_br %40, %11 {handshake.bb = 4 : ui32, handshake.name = "cond_br49"} : <i1>, <i32>
    %result_27, %index_28 = control_merge %falseResult_18  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %37 = constant %12 {handshake.bb = 4 : ui32, handshake.name = "constant12", value = 3 : i32} : <>, <i32>
    %38 = constant %12 {handshake.bb = 4 : ui32, handshake.name = "constant13", value = 1 : i32} : <>, <i32>
    %39 = addi %14, %38 {handshake.bb = 4 : ui32, handshake.name = "addi5"} : <i32>
    %40 = cmpi ult, %39, %37 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_29, %falseResult_30 = cond_br %40, %result_27 {handshake.bb = 4 : ui32, handshake.name = "cond_br27"} : <i1>, <>
    %trueResult_31, %falseResult_32 = cond_br %45, %falseResult_20 {handshake.bb = 5 : ui32, handshake.name = "cond_br50"} : <i1>, <i32>
    %trueResult_33, %falseResult_34 = cond_br %45, %44 {handshake.bb = 5 : ui32, handshake.name = "cond_br51"} : <i1>, <i32>
    %trueResult_35, %falseResult_36 = cond_br %45, %4 {handshake.bb = 5 : ui32, handshake.name = "cond_br52"} : <i1>, <>
    %41 = constant %result_37 {handshake.bb = 5 : ui32, handshake.name = "constant40", value = 1 : i32} : <>, <i32>
    %result_37, %index_38 = control_merge %falseResult_30  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %42 = constant %4 {handshake.bb = 5 : ui32, handshake.name = "constant14", value = 28 : i32} : <>, <i32>
    %43 = constant %4 {handshake.bb = 5 : ui32, handshake.name = "constant15", value = 1 : i32} : <>, <i32>
    %addressResult_39, %dataResult_40 = store[%5] %falseResult_20 {handshake.bb = 5 : ui32, handshake.name = "store0"} : <i32>, <i32>
    %44 = addi %5, %43 {handshake.bb = 5 : ui32, handshake.name = "addi6"} : <i32>
    %45 = cmpi ult, %44, %42 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i32>
    %trueResult_41, %falseResult_42 = cond_br %45, %result_37 {handshake.bb = 5 : ui32, handshake.name = "cond_br40"} : <i1>, <>
    %result_43, %index_44 = control_merge %falseResult_42  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %falseResult_32, %memEnd_2, %memEnd_0, %memEnd, %arg6 : <i32>, <>, <>, <>, <>
  }
}


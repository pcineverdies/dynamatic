module {
  handshake.func @binary_search(%arg0: !handshake.channel<i32>, %arg1: memref<101xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["search", "a", "a_start", "start"], cfg.edges = "[0,1][7,5,8,cmpi6][2,3][4,5][6,7][1,2,3,mux0][3,1,4,cmpi5][5,6,7,mux1]", resNames = ["out0", "a_end", "end"]} {
    %outputs:2, %memEnd = mem_controller[%arg1 : memref<101xi32>] %arg2 (%addressResult, %addressResult_38) %result_56 {connectedBlocks = [2 : i32, 6 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %0 = constant %arg3 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %1 = constant %arg3 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = true} : <>, <i1>
    %2 = constant %arg3 {handshake.bb = 0 : ui32, handshake.name = "constant5", value = -1 : i32} : <>, <i32>
    %3 = br %arg3 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <>
    %4 = constant %arg3 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %5 = merge %4, %21 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %6 = mux %5 [%arg3, %trueResult_18] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <>
    %7 = mux %5 [%arg0, %trueResult_16] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %result, %index = control_merge %3, %trueResult_22  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %8 = mux %5 [%1, %trueResult_14] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i1>
    %9 = mux %5 [%2, %trueResult_8] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %10 = mux %5 [%0, %trueResult_12] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %11 = constant %6 {handshake.bb = 1 : ui32, handshake.name = "constant7", value = false} : <>, <i1>
    %trueResult, %falseResult = cond_br %8, %result {handshake.bb = 1 : ui32, handshake.name = "cond_br4"} : <i1>, <>
    %trueResult_0, %falseResult_1 = cond_br %8, %9 {handshake.bb = 2 : ui32, handshake.name = "cond_br41"} : <i1>, <i32>
    %trueResult_2, %falseResult_3 = cond_br %8, %7 {handshake.bb = 2 : ui32, handshake.name = "cond_br42"} : <i1>, <i32>
    %trueResult_4, %falseResult_5 = cond_br %8, %10 {handshake.bb = 2 : ui32, handshake.name = "cond_br43"} : <i1>, <i32>
    %result_6, %index_7 = control_merge %trueResult  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %addressResult, %dataResult = load[%trueResult_4] %outputs#0 {handshake.bb = 2 : ui32, handshake.name = "load0"} : <i32>, <i32>
    %12 = cmpi eq, %dataResult, %trueResult_2 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %13 = select %12[%trueResult_4, %trueResult_0] {handshake.bb = 2 : ui32, handshake.name = "select0"} : <i1>, <i32>
    %14 = cmpi ne, %dataResult, %trueResult_2 {handshake.bb = 2 : ui32, handshake.name = "cmpi1"} : <i32>
    %15 = br %result_6 {handshake.bb = 2 : ui32, handshake.name = "br3"} : <>
    %trueResult_8, %falseResult_9 = cond_br %21, %17 {handshake.bb = 3 : ui32, handshake.name = "cond_br44"} : <i1>, <i32>
    %trueResult_10, %falseResult_11 = cond_br %8, %11 {handshake.bb = 3 : ui32, handshake.name = "cond_br13"} : <i1>, <i1>
    %trueResult_12, %falseResult_13 = cond_br %21, %20 {handshake.bb = 3 : ui32, handshake.name = "cond_br45"} : <i1>, <i32>
    %trueResult_14, %falseResult_15 = cond_br %21, %16 {handshake.bb = 3 : ui32, handshake.name = "cond_br46"} : <i1>, <i1>
    %trueResult_16, %falseResult_17 = cond_br %21, %7 {handshake.bb = 3 : ui32, handshake.name = "cond_br47"} : <i1>, <i32>
    %trueResult_18, %falseResult_19 = cond_br %21, %6 {handshake.bb = 3 : ui32, handshake.name = "cond_br48"} : <i1>, <>
    %result_20, %index_21 = control_merge %falseResult, %15  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %16 = mux %8 [%falseResult_11, %14] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux9"} : <i1>, <i1>
    %17 = mux %8 [%falseResult_1, %13] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %18 = constant %6 {handshake.bb = 3 : ui32, handshake.name = "constant8", value = 101 : i32} : <>, <i32>
    %19 = constant %6 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 2 : i32} : <>, <i32>
    %20 = addi %10, %19 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %21 = cmpi ult, %20, %18 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i32>
    %trueResult_22, %falseResult_23 = cond_br %21, %result_20 {handshake.bb = 3 : ui32, handshake.name = "cond_br22"} : <i1>, <>
    %result_24, %index_25 = control_merge %falseResult_23  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %22 = constant %arg3 {handshake.bb = 4 : ui32, handshake.name = "constant10", value = 1 : i32} : <>, <i32>
    %23 = constant %arg3 {handshake.bb = 4 : ui32, handshake.name = "constant11", value = -1 : i32} : <>, <i32>
    %24 = constant %arg3 {handshake.bb = 4 : ui32, handshake.name = "constant12", value = true} : <>, <i1>
    %25 = cmpi ne, %falseResult_9, %23 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i32>
    %26 = br %result_24 {handshake.bb = 4 : ui32, handshake.name = "br6"} : <>
    %27 = constant %arg3 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant20", value = false} : <>, <i1>
    %28 = merge %27, %44 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge8"} : <i1>
    %29 = mux %28 [%arg3, %trueResult_50] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux11"} : <i1>, <>
    %30 = mux %28 [%arg0, %trueResult_48] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %result_26, %index_27 = control_merge %26, %trueResult_54  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %31 = mux %28 [%24, %trueResult_46] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux1"} : <i1>, <i1>
    %32 = mux %28 [%23, %trueResult_44] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux16"} : <i1>, <i32>
    %33 = mux %28 [%22, %trueResult_42] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux17"} : <i1>, <i32>
    %34 = constant %29 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = false} : <>, <i1>
    %trueResult_28, %falseResult_29 = cond_br %31, %result_26 {handshake.bb = 5 : ui32, handshake.name = "cond_br23"} : <i1>, <>
    %trueResult_30, %falseResult_31 = cond_br %31, %32 {handshake.bb = 6 : ui32, handshake.name = "cond_br49"} : <i1>, <i32>
    %trueResult_32, %falseResult_33 = cond_br %31, %30 {handshake.bb = 6 : ui32, handshake.name = "cond_br50"} : <i1>, <i32>
    %trueResult_34, %falseResult_35 = cond_br %31, %33 {handshake.bb = 6 : ui32, handshake.name = "cond_br51"} : <i1>, <i32>
    %result_36, %index_37 = control_merge %trueResult_28  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    %addressResult_38, %dataResult_39 = load[%trueResult_34] %outputs#1 {handshake.bb = 6 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %35 = cmpi eq, %dataResult_39, %trueResult_32 {handshake.bb = 6 : ui32, handshake.name = "cmpi3"} : <i32>
    %36 = select %35[%trueResult_34, %trueResult_30] {handshake.bb = 6 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %37 = cmpi ne, %dataResult_39, %trueResult_32 {handshake.bb = 6 : ui32, handshake.name = "cmpi4"} : <i32>
    %38 = br %result_36 {handshake.bb = 6 : ui32, handshake.name = "br7"} : <>
    %trueResult_40, %falseResult_41 = cond_br %31, %34 {handshake.bb = 7 : ui32, handshake.name = "cond_br31"} : <i1>, <i1>
    %trueResult_42, %falseResult_43 = cond_br %44, %43 {handshake.bb = 7 : ui32, handshake.name = "cond_br52"} : <i1>, <i32>
    %trueResult_44, %falseResult_45 = cond_br %44, %40 {handshake.bb = 7 : ui32, handshake.name = "cond_br53"} : <i1>, <i32>
    %trueResult_46, %falseResult_47 = cond_br %44, %39 {handshake.bb = 7 : ui32, handshake.name = "cond_br54"} : <i1>, <i1>
    %trueResult_48, %falseResult_49 = cond_br %44, %30 {handshake.bb = 7 : ui32, handshake.name = "cond_br55"} : <i1>, <i32>
    %trueResult_50, %falseResult_51 = cond_br %44, %29 {handshake.bb = 7 : ui32, handshake.name = "cond_br56"} : <i1>, <>
    %result_52, %index_53 = control_merge %falseResult_29, %38  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %39 = mux %31 [%falseResult_41, %37] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux18"} : <i1>, <i1>
    %40 = mux %31 [%falseResult_31, %36] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux19"} : <i1>, <i32>
    %41 = constant %29 {handshake.bb = 7 : ui32, handshake.name = "constant14", value = 101 : i32} : <>, <i32>
    %42 = constant %29 {handshake.bb = 7 : ui32, handshake.name = "constant15", value = 2 : i32} : <>, <i32>
    %43 = addi %33, %42 {handshake.bb = 7 : ui32, handshake.name = "addi1"} : <i32>
    %44 = cmpi ult, %43, %41 {handshake.bb = 7 : ui32, handshake.name = "cmpi6"} : <i32>
    %trueResult_54, %falseResult_55 = cond_br %44, %result_52 {handshake.bb = 7 : ui32, handshake.name = "cond_br40"} : <i1>, <>
    %result_56, %index_57 = control_merge %falseResult_55  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    %45 = select %25[%falseResult_9, %falseResult_45] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    end {handshake.bb = 8 : ui32, handshake.name = "end0"} %45, %memEnd, %arg3 : <i32>, <>, <>
  }
}


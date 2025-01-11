module {
  handshake.func @binary_search(%arg0: !handshake.channel<i32>, %arg1: memref<101xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["search", "a", "a_start", "start"], cfg.edges = "[0,1][7,5,8,cmpi6][2,3][4,5][6,7][1,2,3,mux0][3,1,4,cmpi5][5,6,7,mux1]", resNames = ["out0", "a_end", "end"]} {
    %outputs:2, %memEnd = mem_controller[%arg1 : memref<101xi32>] %arg2 (%addressResult, %addressResult_36) %result_52 {connectedBlocks = [2 : i32, 6 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %0 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %1 = constant %0 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %2 = source {handshake.bb = 0 : ui32, handshake.name = "source1"} : <>
    %3 = constant %2 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = true} : <>, <i1>
    %4 = source {handshake.bb = 0 : ui32, handshake.name = "source2"} : <>
    %5 = constant %4 {handshake.bb = 0 : ui32, handshake.name = "constant5", value = -1 : i32} : <>, <i32>
    %6 = br %arg3 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <>
    %7 = constant %arg3 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %8 = merge %7, %26 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %9 = mux %8 [%arg0, %trueResult_16] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %result, %index = control_merge %6, %trueResult_20  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %10 = mux %8 [%3, %trueResult_14] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i1>
    %11 = mux %8 [%5, %trueResult_8] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %12 = mux %8 [%1, %trueResult_12] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %13 = source {handshake.bb = 1 : ui32, handshake.name = "source3"} : <>
    %14 = constant %13 {handshake.bb = 1 : ui32, handshake.name = "constant7", value = false} : <>, <i1>
    %trueResult, %falseResult = cond_br %10, %result {handshake.bb = 1 : ui32, handshake.name = "cond_br4"} : <i1>, <>
    %trueResult_0, %falseResult_1 = cond_br %10, %11 {handshake.bb = 2 : ui32, handshake.name = "cond_br35"} : <i1>, <i32>
    %trueResult_2, %falseResult_3 = cond_br %10, %9 {handshake.bb = 2 : ui32, handshake.name = "cond_br36"} : <i1>, <i32>
    %trueResult_4, %falseResult_5 = cond_br %10, %12 {handshake.bb = 2 : ui32, handshake.name = "cond_br37"} : <i1>, <i32>
    %result_6, %index_7 = control_merge %trueResult  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %addressResult, %dataResult = load[%trueResult_4] %outputs#0 {handshake.bb = 2 : ui32, handshake.name = "load0"} : <i32>, <i32>
    %15 = cmpi eq, %dataResult, %trueResult_2 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %16 = select %15[%trueResult_4, %trueResult_0] {handshake.bb = 2 : ui32, handshake.name = "select0"} : <i1>, <i32>
    %17 = cmpi ne, %dataResult, %trueResult_2 {handshake.bb = 2 : ui32, handshake.name = "cmpi1"} : <i32>
    %18 = br %result_6 {handshake.bb = 2 : ui32, handshake.name = "br3"} : <>
    %trueResult_8, %falseResult_9 = cond_br %26, %20 {handshake.bb = 3 : ui32, handshake.name = "cond_br38"} : <i1>, <i32>
    %trueResult_10, %falseResult_11 = cond_br %10, %14 {handshake.bb = 3 : ui32, handshake.name = "cond_br13"} : <i1>, <i1>
    %trueResult_12, %falseResult_13 = cond_br %26, %25 {handshake.bb = 3 : ui32, handshake.name = "cond_br39"} : <i1>, <i32>
    %trueResult_14, %falseResult_15 = cond_br %26, %19 {handshake.bb = 3 : ui32, handshake.name = "cond_br40"} : <i1>, <i1>
    %trueResult_16, %falseResult_17 = cond_br %26, %9 {handshake.bb = 3 : ui32, handshake.name = "cond_br41"} : <i1>, <i32>
    %result_18, %index_19 = control_merge %falseResult, %18  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %19 = mux %10 [%falseResult_11, %17] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <i1>
    %20 = mux %10 [%falseResult_1, %16] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %21 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %22 = constant %21 {handshake.bb = 3 : ui32, handshake.name = "constant8", value = 101 : i32} : <>, <i32>
    %23 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %24 = constant %23 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 2 : i32} : <>, <i32>
    %25 = addi %12, %24 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %26 = cmpi ult, %25, %22 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i32>
    %trueResult_20, %falseResult_21 = cond_br %26, %result_18 {handshake.bb = 3 : ui32, handshake.name = "cond_br19"} : <i1>, <>
    %result_22, %index_23 = control_merge %falseResult_21  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %27 = source {handshake.bb = 4 : ui32, handshake.name = "source6"} : <>
    %28 = constant %27 {handshake.bb = 4 : ui32, handshake.name = "constant10", value = 1 : i32} : <>, <i32>
    %29 = source {handshake.bb = 4 : ui32, handshake.name = "source7"} : <>
    %30 = constant %29 {handshake.bb = 4 : ui32, handshake.name = "constant11", value = -1 : i32} : <>, <i32>
    %31 = source {handshake.bb = 4 : ui32, handshake.name = "source8"} : <>
    %32 = constant %31 {handshake.bb = 4 : ui32, handshake.name = "constant12", value = true} : <>, <i1>
    %33 = cmpi ne, %falseResult_9, %30 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i32>
    %34 = br %result_22 {handshake.bb = 4 : ui32, handshake.name = "br6"} : <>
    %35 = constant %arg3 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant17", value = false} : <>, <i1>
    %36 = merge %35, %54 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge5"} : <i1>
    %37 = mux %36 [%arg0, %trueResult_46] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %result_24, %index_25 = control_merge %34, %trueResult_50  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %38 = mux %36 [%32, %trueResult_44] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux1"} : <i1>, <i1>
    %39 = mux %36 [%30, %trueResult_42] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %40 = mux %36 [%28, %trueResult_40] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux11"} : <i1>, <i32>
    %41 = source {handshake.bb = 5 : ui32, handshake.name = "source9"} : <>
    %42 = constant %41 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = false} : <>, <i1>
    %trueResult_26, %falseResult_27 = cond_br %38, %result_24 {handshake.bb = 5 : ui32, handshake.name = "cond_br20"} : <i1>, <>
    %trueResult_28, %falseResult_29 = cond_br %38, %39 {handshake.bb = 6 : ui32, handshake.name = "cond_br42"} : <i1>, <i32>
    %trueResult_30, %falseResult_31 = cond_br %38, %37 {handshake.bb = 6 : ui32, handshake.name = "cond_br43"} : <i1>, <i32>
    %trueResult_32, %falseResult_33 = cond_br %38, %40 {handshake.bb = 6 : ui32, handshake.name = "cond_br44"} : <i1>, <i32>
    %result_34, %index_35 = control_merge %trueResult_26  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    %addressResult_36, %dataResult_37 = load[%trueResult_32] %outputs#1 {handshake.bb = 6 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %43 = cmpi eq, %dataResult_37, %trueResult_30 {handshake.bb = 6 : ui32, handshake.name = "cmpi3"} : <i32>
    %44 = select %43[%trueResult_32, %trueResult_28] {handshake.bb = 6 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %45 = cmpi ne, %dataResult_37, %trueResult_30 {handshake.bb = 6 : ui32, handshake.name = "cmpi4"} : <i32>
    %46 = br %result_34 {handshake.bb = 6 : ui32, handshake.name = "br7"} : <>
    %trueResult_38, %falseResult_39 = cond_br %38, %42 {handshake.bb = 7 : ui32, handshake.name = "cond_br28"} : <i1>, <i1>
    %trueResult_40, %falseResult_41 = cond_br %54, %53 {handshake.bb = 7 : ui32, handshake.name = "cond_br45"} : <i1>, <i32>
    %trueResult_42, %falseResult_43 = cond_br %54, %48 {handshake.bb = 7 : ui32, handshake.name = "cond_br46"} : <i1>, <i32>
    %trueResult_44, %falseResult_45 = cond_br %54, %47 {handshake.bb = 7 : ui32, handshake.name = "cond_br47"} : <i1>, <i1>
    %trueResult_46, %falseResult_47 = cond_br %54, %37 {handshake.bb = 7 : ui32, handshake.name = "cond_br48"} : <i1>, <i32>
    %result_48, %index_49 = control_merge %falseResult_27, %46  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %47 = mux %38 [%falseResult_39, %45] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux12"} : <i1>, <i1>
    %48 = mux %38 [%falseResult_29, %44] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %49 = source {handshake.bb = 7 : ui32, handshake.name = "source10"} : <>
    %50 = constant %49 {handshake.bb = 7 : ui32, handshake.name = "constant14", value = 101 : i32} : <>, <i32>
    %51 = source {handshake.bb = 7 : ui32, handshake.name = "source11"} : <>
    %52 = constant %51 {handshake.bb = 7 : ui32, handshake.name = "constant15", value = 2 : i32} : <>, <i32>
    %53 = addi %40, %52 {handshake.bb = 7 : ui32, handshake.name = "addi1"} : <i32>
    %54 = cmpi ult, %53, %50 {handshake.bb = 7 : ui32, handshake.name = "cmpi6"} : <i32>
    %trueResult_50, %falseResult_51 = cond_br %54, %result_48 {handshake.bb = 7 : ui32, handshake.name = "cond_br34"} : <i1>, <>
    %result_52, %index_53 = control_merge %falseResult_51  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    %55 = select %33[%falseResult_9, %falseResult_43] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    end {handshake.bb = 8 : ui32, handshake.name = "end0"} %55, %memEnd, %arg3 : <i32>, <>, <>
  }
}


module {
  handshake.func @sobel(%arg0: memref<256xi32>, %arg1: memref<9xi32>, %arg2: memref<9xi32>, %arg3: memref<256xi32>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["in", "gX", "gY", "out", "in_start", "gX_start", "gY_start", "out_start", "start"], cfg.edges = "[0,1][7,9,8,cmpi4][2,3,12,cmpi3][9,11,10,cmpi6][4,5][11,12][6,4,7,cmpi9][13,1,14,cmpi11][1,2][8,9][3,4][10,11][5,5,6,cmpi8][12,2,13,cmpi10]", resNames = ["out0", "in_end", "gX_end", "gY_end", "out_end", "end"]} {
    %memEnd = mem_controller[%arg3 : memref<256xi32>] %arg7 (%96, %addressResult_87, %dataResult_88) %result_101 {connectedBlocks = [12 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg2 : memref<9xi32>] %arg6 (%addressResult_29) %result_101 {connectedBlocks = [5 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg1 : memref<9xi32>] %arg5 (%addressResult_27) %result_101 {connectedBlocks = [5 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_3, %memEnd_4 = mem_controller[%arg0 : memref<256xi32>] %arg4 (%addressResult) %result_101 {connectedBlocks = [3 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0 = constant %arg8 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = 0 : i32} : <>, <i32>
    %1 = constant %arg8 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %2 = br %arg8 {handshake.bb = 0 : ui32, handshake.name = "br4"} : <>
    %3 = constant %arg8 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %4 = merge %3, %110 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %5 = mux %4 [%arg8, %trueResult_95] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %result, %index = control_merge %2, %trueResult_99  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %6 = mux %4 [%0, %trueResult_91] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux24"} : <i1>, <i32>
    %7 = mux %4 [%1, %trueResult_93] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux25"} : <i1>, <i32>
    %8 = constant %5 {handshake.bb = 1 : ui32, handshake.name = "constant10", value = 0 : i32} : <>, <i32>
    %9 = br %result {handshake.bb = 1 : ui32, handshake.name = "br6"} : <>
    %10 = constant %arg8 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant52", value = false} : <>, <i1>
    %11 = merge %10, %106 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge26"} : <i1>
    %12 = mux %11 [%7, %trueResult_83] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux26"} : <i1>, <i32>
    %13 = mux %11 [%5, %trueResult_81] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux43"} : <i1>, <>
    %result_5, %index_6 = control_merge %9, %trueResult_89  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %14 = mux %11 [%6, %trueResult_79] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux48"} : <i1>, <i32>
    %15 = mux %11 [%8, %trueResult_77] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux49"} : <i1>, <i32>
    %16 = constant %13 {handshake.bb = 2 : ui32, handshake.name = "constant11", value = 5 : i32} : <>, <i32>
    %17 = constant %13 {handshake.bb = 2 : ui32, handshake.name = "constant12", value = 0 : i32} : <>, <i32>
    %18 = cmpi eq, %15, %17 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %19 = extui %18 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i1> to <i32>
    %20 = cmpi eq, %15, %16 {handshake.bb = 2 : ui32, handshake.name = "cmpi1"} : <i32>
    %21 = cmpi eq, %19, %17 {handshake.bb = 2 : ui32, handshake.name = "cmpi2"} : <i32>
    %22 = andi %21, %20 {handshake.bb = 2 : ui32, handshake.name = "andi0"} : <i1>
    %23 = ori %18, %22 {handshake.bb = 2 : ui32, handshake.name = "ori0"} : <i1>
    %24 = extsi %23 {handshake.bb = 2 : ui32, handshake.name = "extsi0"} : <i1> to <i32>
    %25 = cmpi eq, %24, %17 {handshake.bb = 2 : ui32, handshake.name = "cmpi3"} : <i32>
    %trueResult, %falseResult = cond_br %25, %result_5 {handshake.bb = 2 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %trueResult_7, %falseResult_8 = cond_br %25, %15 {handshake.bb = 3 : ui32, handshake.name = "cond_br129"} : <i1>, <i32>
    %result_9, %index_10 = control_merge %trueResult  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %26 = constant %trueResult_47 {handshake.bb = 3 : ui32, handshake.name = "constant13", value = -1 : i32} : <>, <i32>
    %27 = constant %trueResult_47 {handshake.bb = 3 : ui32, handshake.name = "constant14", value = 0 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%trueResult_7] %outputs_3 {handshake.bb = 3 : ui32, handshake.name = "load0"} : <i32>, <i32>
    %28 = br %result_9 {handshake.bb = 3 : ui32, handshake.name = "br7"} : <>
    %29 = constant %arg8 {ftd.imerge, handshake.bb = 4 : ui32, handshake.name = "constant76", value = false} : <>, <i1>
    %30 = merge %29, %66 {ftd.imerge, handshake.bb = 4 : ui32, handshake.name = "merge50"} : <i1>
    %31 = mux %30 [%trueResult_47, %trueResult_41] {ftd.regen, handshake.bb = 4 : ui32, handshake.name = "mux50"} : <i1>, <>
    %32 = mux %30 [%dataResult, %trueResult_39] {ftd.regen, handshake.bb = 4 : ui32, handshake.name = "mux52"} : <i1>, <i32>
    %result_11, %index_12 = control_merge %28, %trueResult_45  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %33 = mux %30 [%27, %trueResult_35] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux58"} : <i1>, <i32>
    %34 = mux %30 [%27, %trueResult_33] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux59"} : <i1>, <i32>
    %35 = mux %30 [%26, %trueResult_37] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux60"} : <i1>, <i32>
    %36 = constant %31 {handshake.bb = 4 : ui32, handshake.name = "constant15", value = -1 : i32} : <>, <i32>
    %37 = br %result_11 {handshake.bb = 4 : ui32, handshake.name = "br9"} : <>
    %trueResult_13, %falseResult_14 = cond_br %62, %60 {handshake.bb = 5 : ui32, handshake.name = "cond_br130"} : <i1>, <i32>
    %trueResult_15, %falseResult_16 = cond_br %62, %54 {handshake.bb = 5 : ui32, handshake.name = "cond_br131"} : <i1>, <i32>
    %trueResult_17, %falseResult_18 = cond_br %62, %61 {handshake.bb = 5 : ui32, handshake.name = "cond_br132"} : <i1>, <i32>
    %trueResult_19, %falseResult_20 = cond_br %62, %42 {handshake.bb = 5 : ui32, handshake.name = "cond_br133"} : <i1>, <>
    %trueResult_21, %falseResult_22 = cond_br %62, %41 {handshake.bb = 5 : ui32, handshake.name = "cond_br134"} : <i1>, <i32>
    %trueResult_23, %falseResult_24 = cond_br %62, %40 {handshake.bb = 5 : ui32, handshake.name = "cond_br135"} : <i1>, <i32>
    %38 = constant %arg8 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant87", value = false} : <>, <i1>
    %39 = merge %38, %62 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge61"} : <i1>
    %40 = mux %39 [%32, %trueResult_23] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux61"} : <i1>, <i32>
    %41 = mux %39 [%35, %trueResult_21] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux66"} : <i1>, <i32>
    %42 = mux %39 [%31, %trueResult_19] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux67"} : <i1>, <>
    %result_25, %index_26 = control_merge %37, %trueResult_31  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %43 = mux %39 [%33, %trueResult_15] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux70"} : <i1>, <i32>
    %44 = mux %39 [%34, %trueResult_13] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux71"} : <i1>, <i32>
    %45 = mux %39 [%36, %trueResult_17] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux72"} : <i1>, <i32>
    %46 = constant %42 {handshake.bb = 5 : ui32, handshake.name = "constant16", value = 4 : i32} : <>, <i32>
    %47 = constant %42 {handshake.bb = 5 : ui32, handshake.name = "constant17", value = 2 : i32} : <>, <i32>
    %48 = constant %42 {handshake.bb = 5 : ui32, handshake.name = "constant18", value = 1 : i32} : <>, <i32>
    %49 = shli %41, %48 {handshake.bb = 5 : ui32, handshake.name = "shli0"} : <i32>
    %50 = addi %41, %49 {handshake.bb = 5 : ui32, handshake.name = "addi13"} : <i32>
    %51 = addi %45, %50 {handshake.bb = 5 : ui32, handshake.name = "addi4"} : <i32>
    %52 = addi %51, %46 {handshake.bb = 5 : ui32, handshake.name = "addi5"} : <i32>
    %addressResult_27, %dataResult_28 = load[%52] %outputs_1 {handshake.bb = 5 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %53 = muli %40, %dataResult_28 {handshake.bb = 5 : ui32, handshake.name = "muli0"} : <i32>
    %54 = addi %43, %53 {handshake.bb = 5 : ui32, handshake.name = "addi0"} : <i32>
    %55 = shli %41, %48 {handshake.bb = 5 : ui32, handshake.name = "shli1"} : <i32>
    %56 = addi %41, %55 {handshake.bb = 5 : ui32, handshake.name = "addi14"} : <i32>
    %57 = addi %45, %56 {handshake.bb = 5 : ui32, handshake.name = "addi6"} : <i32>
    %58 = addi %57, %46 {handshake.bb = 5 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_29, %dataResult_30 = load[%58] %outputs {handshake.bb = 5 : ui32, handshake.name = "load2"} : <i32>, <i32>
    %59 = muli %40, %dataResult_30 {handshake.bb = 5 : ui32, handshake.name = "muli1"} : <i32>
    %60 = addi %44, %59 {handshake.bb = 5 : ui32, handshake.name = "addi1"} : <i32>
    %61 = addi %45, %48 {handshake.bb = 5 : ui32, handshake.name = "addi9"} : <i32>
    %62 = cmpi ult, %61, %47 {handshake.bb = 5 : ui32, handshake.name = "cmpi8"} : <i32>
    %trueResult_31, %falseResult_32 = cond_br %62, %result_25 {handshake.bb = 5 : ui32, handshake.name = "cond_br37"} : <i1>, <>
    %trueResult_33, %falseResult_34 = cond_br %66, %falseResult_14 {handshake.bb = 6 : ui32, handshake.name = "cond_br136"} : <i1>, <i32>
    %trueResult_35, %falseResult_36 = cond_br %66, %falseResult_16 {handshake.bb = 6 : ui32, handshake.name = "cond_br137"} : <i1>, <i32>
    %trueResult_37, %falseResult_38 = cond_br %66, %65 {handshake.bb = 6 : ui32, handshake.name = "cond_br138"} : <i1>, <i32>
    %trueResult_39, %falseResult_40 = cond_br %66, %32 {handshake.bb = 6 : ui32, handshake.name = "cond_br139"} : <i1>, <i32>
    %trueResult_41, %falseResult_42 = cond_br %66, %31 {handshake.bb = 6 : ui32, handshake.name = "cond_br140"} : <i1>, <>
    %result_43, %index_44 = control_merge %falseResult_32  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    %63 = constant %31 {handshake.bb = 6 : ui32, handshake.name = "constant19", value = 2 : i32} : <>, <i32>
    %64 = constant %31 {handshake.bb = 6 : ui32, handshake.name = "constant20", value = 1 : i32} : <>, <i32>
    %65 = addi %35, %64 {handshake.bb = 6 : ui32, handshake.name = "addi10"} : <i32>
    %66 = cmpi ult, %65, %63 {handshake.bb = 6 : ui32, handshake.name = "cmpi9"} : <i32>
    %trueResult_45, %falseResult_46 = cond_br %66, %result_43 {handshake.bb = 6 : ui32, handshake.name = "cond_br55"} : <i1>, <>
    %trueResult_47, %falseResult_48 = cond_br %25, %13 {handshake.bb = 7 : ui32, handshake.name = "cond_br141"} : <i1>, <>
    %result_49, %index_50 = control_merge %falseResult_46  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %67 = constant %trueResult_47 {handshake.bb = 7 : ui32, handshake.name = "constant21", value = false} : <>, <i1>
    %68 = constant %trueResult_47 {handshake.bb = 7 : ui32, handshake.name = "constant22", value = 255 : i32} : <>, <i32>
    %69 = cmpi sgt, %falseResult_36, %68 {handshake.bb = 7 : ui32, handshake.name = "cmpi4"} : <i32>
    %70 = select %69[%68, %falseResult_36] {handshake.bb = 7 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %trueResult_51, %falseResult_52 = cond_br %69, %result_49 {handshake.bb = 7 : ui32, handshake.name = "cond_br58"} : <i1>, <>
    %trueResult_53, %falseResult_54 = cond_br %69, %falseResult_36 {handshake.bb = 8 : ui32, handshake.name = "cond_br59"} : <i1>, <i32>
    %trueResult_55, %falseResult_56 = cond_br %73, %13 {handshake.bb = 8 : ui32, handshake.name = "cond_br61"} : <i1>, <>
    %71 = source {handshake.bb = 8 : ui32, handshake.name = "source0"} : <>
    %72 = constant %71 {ftd.skip, handshake.bb = 8 : ui32, handshake.name = "constant99", value = true} : <>, <i1>
    %73 = mux %25 [%72, %69] {ftd.skip, handshake.bb = 8 : ui32, handshake.name = "mux73"} : <i1>, <i1>
    %result_57, %index_58 = control_merge %falseResult_52  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    %74 = constant %falseResult_56 {handshake.bb = 8 : ui32, handshake.name = "constant23", value = 0 : i32} : <>, <i32>
    %75 = cmpi slt, %falseResult_54, %74 {handshake.bb = 8 : ui32, handshake.name = "cmpi5"} : <i32>
    %76 = br %result_57 {handshake.bb = 8 : ui32, handshake.name = "br11"} : <>
    %trueResult_59, %falseResult_60 = cond_br %69, %67 {handshake.bb = 9 : ui32, handshake.name = "cond_br142"} : <i1>, <i1>
    %result_61, %index_62 = control_merge %trueResult_51, %76  {handshake.bb = 9 : ui32, handshake.name = "control_merge8"} : <>, <i1>
    %77 = mux %69 [%75, %trueResult_59] {ftd.phi, handshake.bb = 9 : ui32, handshake.name = "mux74"} : <i1>, <i1>
    %78 = constant %trueResult_47 {handshake.bb = 9 : ui32, handshake.name = "constant24", value = false} : <>, <i1>
    %79 = constant %trueResult_47 {handshake.bb = 9 : ui32, handshake.name = "constant25", value = 255 : i32} : <>, <i32>
    %80 = constant %trueResult_47 {handshake.bb = 9 : ui32, handshake.name = "constant26", value = 0 : i32} : <>, <i32>
    %81 = select %77[%80, %70] {handshake.bb = 9 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %82 = cmpi sgt, %falseResult_34, %79 {handshake.bb = 9 : ui32, handshake.name = "cmpi6"} : <i32>
    %83 = select %82[%79, %falseResult_34] {handshake.bb = 9 : ui32, handshake.name = "select3"} : <i1>, <i32>
    %trueResult_63, %falseResult_64 = cond_br %82, %result_61 {handshake.bb = 9 : ui32, handshake.name = "cond_br66"} : <i1>, <>
    %trueResult_65, %falseResult_66 = cond_br %82, %falseResult_34 {handshake.bb = 10 : ui32, handshake.name = "cond_br67"} : <i1>, <i32>
    %trueResult_67, %falseResult_68 = cond_br %86, %13 {handshake.bb = 10 : ui32, handshake.name = "cond_br69"} : <i1>, <>
    %84 = source {handshake.bb = 10 : ui32, handshake.name = "source1"} : <>
    %85 = constant %84 {ftd.skip, handshake.bb = 10 : ui32, handshake.name = "constant100", value = true} : <>, <i1>
    %86 = mux %25 [%85, %82] {ftd.skip, handshake.bb = 10 : ui32, handshake.name = "mux75"} : <i1>, <i1>
    %result_69, %index_70 = control_merge %falseResult_64  {handshake.bb = 10 : ui32, handshake.name = "control_merge9"} : <>, <i1>
    %87 = constant %falseResult_68 {handshake.bb = 10 : ui32, handshake.name = "constant27", value = 0 : i32} : <>, <i32>
    %88 = cmpi slt, %falseResult_66, %87 {handshake.bb = 10 : ui32, handshake.name = "cmpi7"} : <i32>
    %89 = br %result_69 {handshake.bb = 10 : ui32, handshake.name = "br12"} : <>
    %trueResult_71, %falseResult_72 = cond_br %25, %14 {handshake.bb = 11 : ui32, handshake.name = "cond_br143"} : <i1>, <i32>
    %trueResult_73, %falseResult_74 = cond_br %82, %78 {handshake.bb = 11 : ui32, handshake.name = "cond_br144"} : <i1>, <i1>
    %result_75, %index_76 = control_merge %trueResult_63, %89  {handshake.bb = 11 : ui32, handshake.name = "control_merge10"} : <>, <i1>
    %90 = mux %82 [%88, %trueResult_73] {ftd.phi, handshake.bb = 11 : ui32, handshake.name = "mux76"} : <i1>, <i1>
    %91 = constant %trueResult_47 {handshake.bb = 11 : ui32, handshake.name = "constant28", value = 0 : i32} : <>, <i32>
    %92 = select %90[%91, %83] {handshake.bb = 11 : ui32, handshake.name = "select4"} : <i1>, <i32>
    %93 = addi %81, %92 {handshake.bb = 11 : ui32, handshake.name = "addi2"} : <i32>
    %94 = addi %trueResult_71, %93 {handshake.bb = 11 : ui32, handshake.name = "addi3"} : <i32>
    %95 = br %result_75 {handshake.bb = 11 : ui32, handshake.name = "br13"} : <>
    %trueResult_77, %falseResult_78 = cond_br %106, %105 {handshake.bb = 12 : ui32, handshake.name = "cond_br145"} : <i1>, <i32>
    %trueResult_79, %falseResult_80 = cond_br %106, %97 {handshake.bb = 12 : ui32, handshake.name = "cond_br146"} : <i1>, <i32>
    %trueResult_81, %falseResult_82 = cond_br %106, %13 {handshake.bb = 12 : ui32, handshake.name = "cond_br147"} : <i1>, <>
    %trueResult_83, %falseResult_84 = cond_br %106, %12 {handshake.bb = 12 : ui32, handshake.name = "cond_br148"} : <i1>, <i32>
    %96 = constant %result_85 {handshake.bb = 12 : ui32, handshake.name = "constant101", value = 1 : i32} : <>, <i32>
    %result_85, %index_86 = control_merge %falseResult, %95  {handshake.bb = 12 : ui32, handshake.name = "control_merge11"} : <>, <i1>
    %97 = mux %25 [%falseResult_72, %94] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux77"} : <i1>, <i32>
    %98 = constant %13 {handshake.bb = 12 : ui32, handshake.name = "constant29", value = 1 : i32} : <>, <i32>
    %99 = constant %13 {handshake.bb = 12 : ui32, handshake.name = "constant30", value = 15 : i32} : <>, <i32>
    %100 = constant %13 {handshake.bb = 12 : ui32, handshake.name = "constant31", value = 255 : i32} : <>, <i32>
    %101 = trunci %97 {handshake.bb = 12 : ui32, handshake.name = "trunci0"} : <i32> to <i8>
    %102 = extui %101 {handshake.bb = 12 : ui32, handshake.name = "extui1"} : <i8> to <i32>
    %103 = subi %100, %102 {handshake.bb = 12 : ui32, handshake.name = "subi0"} : <i32>
    %104 = addi %15, %12 {handshake.bb = 12 : ui32, handshake.name = "addi8"} : <i32>
    %addressResult_87, %dataResult_88 = store[%104] %103 {handshake.bb = 12 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 14], [-14, -1]]>]>, handshake.name = "store0"} : <i32>, <i32>
    %105 = addi %15, %98 {handshake.bb = 12 : ui32, handshake.name = "addi11"} : <i32>
    %106 = cmpi ult, %105, %99 {handshake.bb = 12 : ui32, handshake.name = "cmpi10"} : <i32>
    %trueResult_89, %falseResult_90 = cond_br %106, %result_85 {handshake.bb = 12 : ui32, handshake.name = "cond_br100"} : <i1>, <>
    %trueResult_91, %falseResult_92 = cond_br %110, %falseResult_80 {handshake.bb = 13 : ui32, handshake.name = "cond_br149"} : <i1>, <i32>
    %trueResult_93, %falseResult_94 = cond_br %110, %109 {handshake.bb = 13 : ui32, handshake.name = "cond_br150"} : <i1>, <i32>
    %trueResult_95, %falseResult_96 = cond_br %110, %5 {handshake.bb = 13 : ui32, handshake.name = "cond_br151"} : <i1>, <>
    %result_97, %index_98 = control_merge %falseResult_90  {handshake.bb = 13 : ui32, handshake.name = "control_merge12"} : <>, <i1>
    %107 = constant %5 {handshake.bb = 13 : ui32, handshake.name = "constant32", value = 1 : i32} : <>, <i32>
    %108 = constant %5 {handshake.bb = 13 : ui32, handshake.name = "constant33", value = 15 : i32} : <>, <i32>
    %109 = addi %7, %107 {handshake.bb = 13 : ui32, handshake.name = "addi12"} : <i32>
    %110 = cmpi ult, %109, %108 {handshake.bb = 13 : ui32, handshake.name = "cmpi11"} : <i32>
    %trueResult_99, %falseResult_100 = cond_br %110, %result_97 {handshake.bb = 13 : ui32, handshake.name = "cond_br128"} : <i1>, <>
    %result_101, %index_102 = control_merge %falseResult_100  {handshake.bb = 14 : ui32, handshake.name = "control_merge13"} : <>, <i1>
    end {handshake.bb = 14 : ui32, handshake.name = "end0"} %falseResult_92, %memEnd_4, %memEnd_2, %memEnd_0, %memEnd, %arg8 : <i32>, <>, <>, <>, <>, <>
  }
}


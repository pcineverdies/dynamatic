module {
  handshake.func @kernel_3mm(%arg0: memref<49xi32>, %arg1: memref<49xi32>, %arg2: memref<49xi32>, %arg3: memref<49xi32>, %arg4: memref<49xi32>, %arg5: memref<49xi32>, %arg6: memref<49xi32>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, %arg12: !handshake.control<>, %arg13: !handshake.control<>, %arg14: !handshake.control<>, ...) -> (!handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "B", "C", "D", "E", "F", "G", "A_start", "B_start", "C_start", "D_start", "E_start", "F_start", "G_start", "start"], cfg.edges = "[0,1][7,8][14,12,15,cmpi7][2,3][9,7,10,cmpi4][4,2,5,cmpi1][11,12][6,7][13,13,14,cmpi6][1,2][8,8,9,cmpi3][15,11,16,cmpi8][3,3,4,cmpi0][10,6,11,cmpi5][5,1,6,cmpi2][12,13]", resNames = ["A_end", "B_end", "C_end", "D_end", "E_end", "F_end", "G_end", "end"]} {
    %0:2 = lsq[%arg6 : memref<49xi32>] (%arg13, %result_94, %addressResult_96, %dataResult_97, %result_106, %addressResult_112, %addressResult_114, %dataResult_115, %result_136)  {groupSizes = [1 : i32, 2 : i32], handshake.name = "lsq0"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %1:3 = lsq[%arg5 : memref<49xi32>] (%arg12, %result_48, %addressResult_50, %dataResult_51, %result_60, %addressResult_66, %addressResult_68, %dataResult_69, %result_106, %addressResult_110, %result_136)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.name = "lsq1"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %2:3 = lsq[%arg4 : memref<49xi32>] (%arg11, %result_6, %addressResult, %dataResult, %result_14, %addressResult_20, %addressResult_22, %dataResult_23, %result_106, %addressResult_108, %result_136)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg3 : memref<49xi32>] %arg10 (%addressResult_64) %result_136 {connectedBlocks = [8 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg2 : memref<49xi32>] %arg9 (%addressResult_62) %result_136 {connectedBlocks = [8 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_2, %memEnd_3 = mem_controller[%arg1 : memref<49xi32>] %arg8 (%addressResult_18) %result_136 {connectedBlocks = [3 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_4, %memEnd_5 = mem_controller[%arg0 : memref<49xi32>] %arg7 (%addressResult_16) %result_136 {connectedBlocks = [3 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %3 = constant %arg14 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %4 = br %arg14 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %5 = constant %arg14 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %6 = merge %5, %50 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %7 = mux %6 [%arg14, %trueResult_40] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %result, %index = control_merge %4, %trueResult_44  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %8 = mux %6 [%3, %trueResult_38] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux11"} : <i1>, <i32>
    %9 = constant %7 {handshake.bb = 1 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %10 = br %result {handshake.bb = 1 : ui32, handshake.name = "br6"} : <>
    %11 = constant %arg14 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant45", value = false} : <>, <i1>
    %12 = merge %11, %45 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge12"} : <i1>
    %13 = mux %12 [%8, %trueResult_30] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux19"} : <i1>, <i32>
    %14 = mux %12 [%7, %trueResult_28] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux21"} : <i1>, <>
    %result_6, %index_7 = control_merge %10, %trueResult_34  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %15 = mux %12 [%9, %trueResult_26] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux23"} : <i1>, <i32>
    %16 = constant %14 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = 0 : i32} : <>, <i32>
    %17 = constant %14 {handshake.bb = 2 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %18 = constant %14 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 7 : i32} : <>, <i32>
    %19 = muli %13, %18 {handshake.bb = 2 : ui32, handshake.name = "muli3"} : <i32>
    %20 = addi %15, %19 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i32>
    %addressResult, %dataResult = store[%20] %16 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0]]>, <"store1" (3) [[0, 0], [0, 0]]>, <"load6" (1)>]>, handshake.name = "store0"} : <i32>, <i32>
    %21 = br %result_6 {handshake.bb = 2 : ui32, handshake.name = "br9"} : <>
    %trueResult, %falseResult = cond_br %41, %40 {handshake.bb = 3 : ui32, handshake.name = "cond_br118"} : <i1>, <i32>
    %trueResult_8, %falseResult_9 = cond_br %41, %26 {handshake.bb = 3 : ui32, handshake.name = "cond_br119"} : <i1>, <>
    %trueResult_10, %falseResult_11 = cond_br %41, %25 {handshake.bb = 3 : ui32, handshake.name = "cond_br120"} : <i1>, <i32>
    %trueResult_12, %falseResult_13 = cond_br %41, %24 {handshake.bb = 3 : ui32, handshake.name = "cond_br121"} : <i1>, <i32>
    %22 = constant %arg14 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant57", value = false} : <>, <i1>
    %23 = merge %22, %41 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge24"} : <i1>
    %24 = mux %23 [%13, %trueResult_12] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux27"} : <i1>, <i32>
    %25 = mux %23 [%15, %trueResult_10] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux28"} : <i1>, <i32>
    %26 = mux %23 [%14, %trueResult_8] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux30"} : <i1>, <>
    %result_14, %index_15 = control_merge %21, %trueResult_24  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %27 = mux %23 [%17, %trueResult] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux32"} : <i1>, <i32>
    %28 = constant %26 {handshake.bb = 3 : ui32, handshake.name = "constant8", value = 7 : i32} : <>, <i32>
    %29 = constant %26 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 1 : i32} : <>, <i32>
    %30 = muli %24, %28 {handshake.bb = 3 : ui32, handshake.name = "muli4"} : <i32>
    %31 = addi %27, %30 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i32>
    %addressResult_16, %dataResult_17 = load[%31] %outputs_4 {handshake.bb = 3 : ui32, handshake.name = "load0"} : <i32>, <i32>
    %32 = muli %27, %28 {handshake.bb = 3 : ui32, handshake.name = "muli5"} : <i32>
    %33 = addi %25, %32 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i32>
    %addressResult_18, %dataResult_19 = load[%33] %outputs_2 {handshake.bb = 3 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %34 = muli %dataResult_17, %dataResult_19 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %35 = muli %24, %28 {handshake.bb = 3 : ui32, handshake.name = "muli6"} : <i32>
    %36 = addi %25, %35 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i32>
    %addressResult_20, %dataResult_21 = load[%36] %2#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.name = "load2"} : <i32>, <i32>
    %37 = addi %dataResult_21, %34 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %38 = muli %24, %28 {handshake.bb = 3 : ui32, handshake.name = "muli7"} : <i32>
    %39 = addi %25, %38 {handshake.bb = 3 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_22, %dataResult_23 = store[%39] %37 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"load6" (1)>]>, handshake.name = "store1"} : <i32>, <i32>
    %40 = addi %27, %29 {handshake.bb = 3 : ui32, handshake.name = "addi18"} : <i32>
    %41 = cmpi ult, %40, %28 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_24, %falseResult_25 = cond_br %41, %result_14 {handshake.bb = 3 : ui32, handshake.name = "cond_br18"} : <i1>, <>
    %trueResult_26, %falseResult_27 = cond_br %45, %44 {handshake.bb = 4 : ui32, handshake.name = "cond_br122"} : <i1>, <i32>
    %trueResult_28, %falseResult_29 = cond_br %45, %14 {handshake.bb = 4 : ui32, handshake.name = "cond_br123"} : <i1>, <>
    %trueResult_30, %falseResult_31 = cond_br %45, %13 {handshake.bb = 4 : ui32, handshake.name = "cond_br124"} : <i1>, <i32>
    %result_32, %index_33 = control_merge %falseResult_25  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %42 = constant %14 {handshake.bb = 4 : ui32, handshake.name = "constant10", value = 7 : i32} : <>, <i32>
    %43 = constant %14 {handshake.bb = 4 : ui32, handshake.name = "constant11", value = 1 : i32} : <>, <i32>
    %44 = addi %15, %43 {handshake.bb = 4 : ui32, handshake.name = "addi19"} : <i32>
    %45 = cmpi ult, %44, %42 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_34, %falseResult_35 = cond_br %45, %result_32 {handshake.bb = 4 : ui32, handshake.name = "cond_br31"} : <i1>, <>
    %trueResult_36, %falseResult_37 = cond_br %50, %46 {handshake.bb = 5 : ui32, handshake.name = "cond_br125"} : <i1>, <i32>
    %trueResult_38, %falseResult_39 = cond_br %50, %49 {handshake.bb = 5 : ui32, handshake.name = "cond_br126"} : <i1>, <i32>
    %trueResult_40, %falseResult_41 = cond_br %50, %7 {handshake.bb = 5 : ui32, handshake.name = "cond_br127"} : <i1>, <>
    %result_42, %index_43 = control_merge %falseResult_35  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %46 = constant %7 {handshake.bb = 5 : ui32, handshake.name = "constant12", value = 0 : i32} : <>, <i32>
    %47 = constant %7 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = 7 : i32} : <>, <i32>
    %48 = constant %7 {handshake.bb = 5 : ui32, handshake.name = "constant14", value = 1 : i32} : <>, <i32>
    %49 = addi %8, %48 {handshake.bb = 5 : ui32, handshake.name = "addi20"} : <i32>
    %50 = cmpi ult, %49, %47 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i32>
    %trueResult_44, %falseResult_45 = cond_br %50, %result_42 {handshake.bb = 5 : ui32, handshake.name = "cond_br45"} : <i1>, <>
    %51 = constant %arg14 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "constant66", value = false} : <>, <i1>
    %52 = merge %51, %96 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "merge33"} : <i1>
    %53 = mux %52 [%arg14, %trueResult_86] {ftd.regen, handshake.bb = 6 : ui32, handshake.name = "mux33"} : <i1>, <>
    %result_46, %index_47 = control_merge %falseResult_45, %trueResult_90  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    %54 = mux %52 [%falseResult_37, %trueResult_84] {ftd.phi, handshake.bb = 6 : ui32, handshake.name = "mux44"} : <i1>, <i32>
    %55 = constant %53 {handshake.bb = 6 : ui32, handshake.name = "constant15", value = 0 : i32} : <>, <i32>
    %56 = br %result_46 {handshake.bb = 6 : ui32, handshake.name = "br10"} : <>
    %57 = constant %arg14 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "constant78", value = false} : <>, <i1>
    %58 = merge %57, %91 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "merge45"} : <i1>
    %59 = mux %58 [%54, %trueResult_76] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux52"} : <i1>, <i32>
    %60 = mux %58 [%53, %trueResult_74] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux55"} : <i1>, <>
    %result_48, %index_49 = control_merge %56, %trueResult_80  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %61 = mux %58 [%55, %trueResult_72] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux56"} : <i1>, <i32>
    %62 = constant %60 {handshake.bb = 7 : ui32, handshake.name = "constant16", value = 0 : i32} : <>, <i32>
    %63 = constant %60 {handshake.bb = 7 : ui32, handshake.name = "constant17", value = 0 : i32} : <>, <i32>
    %64 = constant %60 {handshake.bb = 7 : ui32, handshake.name = "constant18", value = 7 : i32} : <>, <i32>
    %65 = muli %59, %64 {handshake.bb = 7 : ui32, handshake.name = "muli8"} : <i32>
    %66 = addi %61, %65 {handshake.bb = 7 : ui32, handshake.name = "addi8"} : <i32>
    %addressResult_50, %dataResult_51 = store[%66] %62 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"load5" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>, <"load7" (1)>]>, handshake.name = "store2"} : <i32>, <i32>
    %67 = br %result_48 {handshake.bb = 7 : ui32, handshake.name = "br11"} : <>
    %trueResult_52, %falseResult_53 = cond_br %87, %86 {handshake.bb = 8 : ui32, handshake.name = "cond_br128"} : <i1>, <i32>
    %trueResult_54, %falseResult_55 = cond_br %87, %72 {handshake.bb = 8 : ui32, handshake.name = "cond_br129"} : <i1>, <>
    %trueResult_56, %falseResult_57 = cond_br %87, %71 {handshake.bb = 8 : ui32, handshake.name = "cond_br130"} : <i1>, <i32>
    %trueResult_58, %falseResult_59 = cond_br %87, %70 {handshake.bb = 8 : ui32, handshake.name = "cond_br131"} : <i1>, <i32>
    %68 = constant %arg14 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "constant90", value = false} : <>, <i1>
    %69 = merge %68, %87 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "merge57"} : <i1>
    %70 = mux %69 [%59, %trueResult_58] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux60"} : <i1>, <i32>
    %71 = mux %69 [%61, %trueResult_56] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux61"} : <i1>, <i32>
    %72 = mux %69 [%60, %trueResult_54] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux63"} : <i1>, <>
    %result_60, %index_61 = control_merge %67, %trueResult_70  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    %73 = mux %69 [%63, %trueResult_52] {ftd.phi, handshake.bb = 8 : ui32, handshake.name = "mux65"} : <i1>, <i32>
    %74 = constant %72 {handshake.bb = 8 : ui32, handshake.name = "constant19", value = 7 : i32} : <>, <i32>
    %75 = constant %72 {handshake.bb = 8 : ui32, handshake.name = "constant20", value = 1 : i32} : <>, <i32>
    %76 = muli %70, %74 {handshake.bb = 8 : ui32, handshake.name = "muli9"} : <i32>
    %77 = addi %73, %76 {handshake.bb = 8 : ui32, handshake.name = "addi9"} : <i32>
    %addressResult_62, %dataResult_63 = load[%77] %outputs_0 {handshake.bb = 8 : ui32, handshake.name = "load3"} : <i32>, <i32>
    %78 = muli %73, %74 {handshake.bb = 8 : ui32, handshake.name = "muli10"} : <i32>
    %79 = addi %71, %78 {handshake.bb = 8 : ui32, handshake.name = "addi10"} : <i32>
    %addressResult_64, %dataResult_65 = load[%79] %outputs {handshake.bb = 8 : ui32, handshake.name = "load4"} : <i32>, <i32>
    %80 = muli %dataResult_63, %dataResult_65 {handshake.bb = 8 : ui32, handshake.name = "muli1"} : <i32>
    %81 = muli %70, %74 {handshake.bb = 8 : ui32, handshake.name = "muli11"} : <i32>
    %82 = addi %71, %81 {handshake.bb = 8 : ui32, handshake.name = "addi11"} : <i32>
    %addressResult_66, %dataResult_67 = load[%82] %1#0 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.name = "load5"} : <i32>, <i32>
    %83 = addi %dataResult_67, %80 {handshake.bb = 8 : ui32, handshake.name = "addi1"} : <i32>
    %84 = muli %70, %74 {handshake.bb = 8 : ui32, handshake.name = "muli12"} : <i32>
    %85 = addi %71, %84 {handshake.bb = 8 : ui32, handshake.name = "addi12"} : <i32>
    %addressResult_68, %dataResult_69 = store[%85] %83 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"load5" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"load7" (1)>]>, handshake.name = "store3"} : <i32>, <i32>
    %86 = addi %73, %75 {handshake.bb = 8 : ui32, handshake.name = "addi21"} : <i32>
    %87 = cmpi ult, %86, %74 {handshake.bb = 8 : ui32, handshake.name = "cmpi3"} : <i32>
    %trueResult_70, %falseResult_71 = cond_br %87, %result_60 {handshake.bb = 8 : ui32, handshake.name = "cond_br55"} : <i1>, <>
    %trueResult_72, %falseResult_73 = cond_br %91, %90 {handshake.bb = 9 : ui32, handshake.name = "cond_br132"} : <i1>, <i32>
    %trueResult_74, %falseResult_75 = cond_br %91, %60 {handshake.bb = 9 : ui32, handshake.name = "cond_br133"} : <i1>, <>
    %trueResult_76, %falseResult_77 = cond_br %91, %59 {handshake.bb = 9 : ui32, handshake.name = "cond_br134"} : <i1>, <i32>
    %result_78, %index_79 = control_merge %falseResult_71  {handshake.bb = 9 : ui32, handshake.name = "control_merge8"} : <>, <i1>
    %88 = constant %60 {handshake.bb = 9 : ui32, handshake.name = "constant21", value = 7 : i32} : <>, <i32>
    %89 = constant %60 {handshake.bb = 9 : ui32, handshake.name = "constant22", value = 1 : i32} : <>, <i32>
    %90 = addi %61, %89 {handshake.bb = 9 : ui32, handshake.name = "addi22"} : <i32>
    %91 = cmpi ult, %90, %88 {handshake.bb = 9 : ui32, handshake.name = "cmpi4"} : <i32>
    %trueResult_80, %falseResult_81 = cond_br %91, %result_78 {handshake.bb = 9 : ui32, handshake.name = "cond_br68"} : <i1>, <>
    %trueResult_82, %falseResult_83 = cond_br %96, %92 {handshake.bb = 10 : ui32, handshake.name = "cond_br135"} : <i1>, <i32>
    %trueResult_84, %falseResult_85 = cond_br %96, %95 {handshake.bb = 10 : ui32, handshake.name = "cond_br136"} : <i1>, <i32>
    %trueResult_86, %falseResult_87 = cond_br %96, %53 {handshake.bb = 10 : ui32, handshake.name = "cond_br137"} : <i1>, <>
    %result_88, %index_89 = control_merge %falseResult_81  {handshake.bb = 10 : ui32, handshake.name = "control_merge9"} : <>, <i1>
    %92 = constant %53 {handshake.bb = 10 : ui32, handshake.name = "constant23", value = 0 : i32} : <>, <i32>
    %93 = constant %53 {handshake.bb = 10 : ui32, handshake.name = "constant24", value = 7 : i32} : <>, <i32>
    %94 = constant %53 {handshake.bb = 10 : ui32, handshake.name = "constant25", value = 1 : i32} : <>, <i32>
    %95 = addi %54, %94 {handshake.bb = 10 : ui32, handshake.name = "addi23"} : <i32>
    %96 = cmpi ult, %95, %93 {handshake.bb = 10 : ui32, handshake.name = "cmpi5"} : <i32>
    %trueResult_90, %falseResult_91 = cond_br %96, %result_88 {handshake.bb = 10 : ui32, handshake.name = "cond_br82"} : <i1>, <>
    %97 = constant %arg14 {ftd.imerge, handshake.bb = 11 : ui32, handshake.name = "constant99", value = false} : <>, <i1>
    %98 = merge %97, %141 {ftd.imerge, handshake.bb = 11 : ui32, handshake.name = "merge66"} : <i1>
    %99 = mux %98 [%arg14, %trueResult_130] {ftd.regen, handshake.bb = 11 : ui32, handshake.name = "mux66"} : <i1>, <>
    %result_92, %index_93 = control_merge %falseResult_91, %trueResult_134  {handshake.bb = 11 : ui32, handshake.name = "control_merge10"} : <>, <i1>
    %100 = mux %98 [%falseResult_83, %trueResult_128] {ftd.phi, handshake.bb = 11 : ui32, handshake.name = "mux76"} : <i1>, <i32>
    %101 = constant %99 {handshake.bb = 11 : ui32, handshake.name = "constant26", value = 0 : i32} : <>, <i32>
    %102 = br %result_92 {handshake.bb = 11 : ui32, handshake.name = "br12"} : <>
    %103 = constant %arg14 {ftd.imerge, handshake.bb = 12 : ui32, handshake.name = "constant110", value = false} : <>, <i1>
    %104 = merge %103, %137 {ftd.imerge, handshake.bb = 12 : ui32, handshake.name = "merge77"} : <i1>
    %105 = mux %104 [%100, %trueResult_122] {ftd.regen, handshake.bb = 12 : ui32, handshake.name = "mux84"} : <i1>, <i32>
    %106 = mux %104 [%99, %trueResult_120] {ftd.regen, handshake.bb = 12 : ui32, handshake.name = "mux87"} : <i1>, <>
    %result_94, %index_95 = control_merge %102, %trueResult_126  {handshake.bb = 12 : ui32, handshake.name = "control_merge11"} : <>, <i1>
    %107 = mux %104 [%101, %trueResult_118] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux88"} : <i1>, <i32>
    %108 = constant %106 {handshake.bb = 12 : ui32, handshake.name = "constant27", value = 0 : i32} : <>, <i32>
    %109 = constant %106 {handshake.bb = 12 : ui32, handshake.name = "constant28", value = 0 : i32} : <>, <i32>
    %110 = constant %106 {handshake.bb = 12 : ui32, handshake.name = "constant29", value = 7 : i32} : <>, <i32>
    %111 = muli %105, %110 {handshake.bb = 12 : ui32, handshake.name = "muli13"} : <i32>
    %112 = addi %107, %111 {handshake.bb = 12 : ui32, handshake.name = "addi13"} : <i32>
    %addressResult_96, %dataResult_97 = store[%112] %108 {handshake.bb = 12 : ui32, handshake.deps = #handshake<deps[<"load8" (3) [[0, 0], [0, 0]]>, <"store5" (3) [[0, 0], [0, 0]]>]>, handshake.name = "store4"} : <i32>, <i32>
    %113 = br %result_94 {handshake.bb = 12 : ui32, handshake.name = "br13"} : <>
    %trueResult_98, %falseResult_99 = cond_br %133, %132 {handshake.bb = 13 : ui32, handshake.name = "cond_br138"} : <i1>, <i32>
    %trueResult_100, %falseResult_101 = cond_br %133, %118 {handshake.bb = 13 : ui32, handshake.name = "cond_br139"} : <i1>, <>
    %trueResult_102, %falseResult_103 = cond_br %133, %117 {handshake.bb = 13 : ui32, handshake.name = "cond_br140"} : <i1>, <i32>
    %trueResult_104, %falseResult_105 = cond_br %133, %116 {handshake.bb = 13 : ui32, handshake.name = "cond_br141"} : <i1>, <i32>
    %114 = constant %arg14 {ftd.imerge, handshake.bb = 13 : ui32, handshake.name = "constant122", value = false} : <>, <i1>
    %115 = merge %114, %133 {ftd.imerge, handshake.bb = 13 : ui32, handshake.name = "merge89"} : <i1>
    %116 = mux %115 [%105, %trueResult_104] {ftd.regen, handshake.bb = 13 : ui32, handshake.name = "mux92"} : <i1>, <i32>
    %117 = mux %115 [%107, %trueResult_102] {ftd.regen, handshake.bb = 13 : ui32, handshake.name = "mux93"} : <i1>, <i32>
    %118 = mux %115 [%106, %trueResult_100] {ftd.regen, handshake.bb = 13 : ui32, handshake.name = "mux95"} : <i1>, <>
    %result_106, %index_107 = control_merge %113, %trueResult_116  {handshake.bb = 13 : ui32, handshake.name = "control_merge12"} : <>, <i1>
    %119 = mux %115 [%109, %trueResult_98] {ftd.phi, handshake.bb = 13 : ui32, handshake.name = "mux97"} : <i1>, <i32>
    %120 = constant %118 {handshake.bb = 13 : ui32, handshake.name = "constant30", value = 7 : i32} : <>, <i32>
    %121 = constant %118 {handshake.bb = 13 : ui32, handshake.name = "constant31", value = 1 : i32} : <>, <i32>
    %122 = muli %116, %120 {handshake.bb = 13 : ui32, handshake.name = "muli14"} : <i32>
    %123 = addi %119, %122 {handshake.bb = 13 : ui32, handshake.name = "addi14"} : <i32>
    %addressResult_108, %dataResult_109 = load[%123] %2#1 {handshake.bb = 13 : ui32, handshake.name = "load6"} : <i32>, <i32>
    %124 = muli %119, %120 {handshake.bb = 13 : ui32, handshake.name = "muli15"} : <i32>
    %125 = addi %117, %124 {handshake.bb = 13 : ui32, handshake.name = "addi15"} : <i32>
    %addressResult_110, %dataResult_111 = load[%125] %1#1 {handshake.bb = 13 : ui32, handshake.name = "load7"} : <i32>, <i32>
    %126 = muli %dataResult_109, %dataResult_111 {handshake.bb = 13 : ui32, handshake.name = "muli2"} : <i32>
    %127 = muli %116, %120 {handshake.bb = 13 : ui32, handshake.name = "muli16"} : <i32>
    %128 = addi %117, %127 {handshake.bb = 13 : ui32, handshake.name = "addi16"} : <i32>
    %addressResult_112, %dataResult_113 = load[%128] %0#0 {handshake.bb = 13 : ui32, handshake.deps = #handshake<deps[<"store5" (3) [[0, 0], [0, 0], [1, 6]]>, <"store5" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.name = "load8"} : <i32>, <i32>
    %129 = addi %dataResult_113, %126 {handshake.bb = 13 : ui32, handshake.name = "addi2"} : <i32>
    %130 = muli %116, %120 {handshake.bb = 13 : ui32, handshake.name = "muli17"} : <i32>
    %131 = addi %117, %130 {handshake.bb = 13 : ui32, handshake.name = "addi17"} : <i32>
    %addressResult_114, %dataResult_115 = store[%131] %129 {handshake.bb = 13 : ui32, handshake.deps = #handshake<deps[<"load8" (3) [[0, 0], [0, 0], [1, 6]]>, <"store5" (3) [[0, 0], [0, 0], [1, 6]]>]>, handshake.name = "store5"} : <i32>, <i32>
    %132 = addi %119, %121 {handshake.bb = 13 : ui32, handshake.name = "addi24"} : <i32>
    %133 = cmpi ult, %132, %120 {handshake.bb = 13 : ui32, handshake.name = "cmpi6"} : <i32>
    %trueResult_116, %falseResult_117 = cond_br %133, %result_106 {handshake.bb = 13 : ui32, handshake.name = "cond_br92"} : <i1>, <>
    %trueResult_118, %falseResult_119 = cond_br %137, %136 {handshake.bb = 14 : ui32, handshake.name = "cond_br142"} : <i1>, <i32>
    %trueResult_120, %falseResult_121 = cond_br %137, %106 {handshake.bb = 14 : ui32, handshake.name = "cond_br143"} : <i1>, <>
    %trueResult_122, %falseResult_123 = cond_br %137, %105 {handshake.bb = 14 : ui32, handshake.name = "cond_br144"} : <i1>, <i32>
    %result_124, %index_125 = control_merge %falseResult_117  {handshake.bb = 14 : ui32, handshake.name = "control_merge13"} : <>, <i1>
    %134 = constant %106 {handshake.bb = 14 : ui32, handshake.name = "constant32", value = 7 : i32} : <>, <i32>
    %135 = constant %106 {handshake.bb = 14 : ui32, handshake.name = "constant33", value = 1 : i32} : <>, <i32>
    %136 = addi %107, %135 {handshake.bb = 14 : ui32, handshake.name = "addi25"} : <i32>
    %137 = cmpi ult, %136, %134 {handshake.bb = 14 : ui32, handshake.name = "cmpi7"} : <i32>
    %trueResult_126, %falseResult_127 = cond_br %137, %result_124 {handshake.bb = 14 : ui32, handshake.name = "cond_br105"} : <i1>, <>
    %trueResult_128, %falseResult_129 = cond_br %141, %140 {handshake.bb = 15 : ui32, handshake.name = "cond_br145"} : <i1>, <i32>
    %trueResult_130, %falseResult_131 = cond_br %141, %99 {handshake.bb = 15 : ui32, handshake.name = "cond_br146"} : <i1>, <>
    %result_132, %index_133 = control_merge %falseResult_127  {handshake.bb = 15 : ui32, handshake.name = "control_merge14"} : <>, <i1>
    %138 = constant %99 {handshake.bb = 15 : ui32, handshake.name = "constant34", value = 7 : i32} : <>, <i32>
    %139 = constant %99 {handshake.bb = 15 : ui32, handshake.name = "constant35", value = 1 : i32} : <>, <i32>
    %140 = addi %100, %139 {handshake.bb = 15 : ui32, handshake.name = "addi26"} : <i32>
    %141 = cmpi ult, %140, %138 {handshake.bb = 15 : ui32, handshake.name = "cmpi8"} : <i32>
    %trueResult_134, %falseResult_135 = cond_br %141, %result_132 {handshake.bb = 15 : ui32, handshake.name = "cond_br117"} : <i1>, <>
    %result_136, %index_137 = control_merge %falseResult_135  {handshake.bb = 16 : ui32, handshake.name = "control_merge15"} : <>, <i1>
    end {handshake.bb = 16 : ui32, handshake.name = "end0"} %memEnd_5, %memEnd_3, %memEnd_1, %memEnd, %2#2, %1#2, %0#1, %arg14 : <>, <>, <>, <>, <>, <>, <>, <>
  }
}


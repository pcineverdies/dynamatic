module {
  handshake.func @kernel_3mm(%arg0: memref<49xi32>, %arg1: memref<49xi32>, %arg2: memref<49xi32>, %arg3: memref<49xi32>, %arg4: memref<49xi32>, %arg5: memref<49xi32>, %arg6: memref<49xi32>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, %arg12: !handshake.control<>, %arg13: !handshake.control<>, %arg14: !handshake.control<>, ...) -> (!handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "B", "C", "D", "E", "F", "G", "A_start", "B_start", "C_start", "D_start", "E_start", "F_start", "G_start", "start"], cfg.edges = "[0,1][7,8][14,12,15,cmpi7][2,3][9,7,10,cmpi4][4,2,5,cmpi1][11,12][6,7][13,13,14,cmpi6][1,2][8,8,9,cmpi3][15,11,16,cmpi8][3,3,4,cmpi0][10,6,11,cmpi5][5,1,6,cmpi2][12,13]", resNames = ["A_end", "B_end", "C_end", "D_end", "E_end", "F_end", "G_end", "end"]} {
    %0:2 = lsq[%arg6 : memref<49xi32>] (%arg13, %121#1, %addressResult_112, %dataResult_113, %138#1, %addressResult_136, %addressResult_138, %dataResult_139, %result_172)  {groupSizes = [1 : i32, 2 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %1:3 = lsq[%arg5 : memref<49xi32>] (%arg12, %66#1, %addressResult_58, %dataResult_59, %79#1, %addressResult_78, %addressResult_80, %dataResult_81, %137#1, %addressResult_134, %result_172)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.name = "lsq4"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %2:3 = lsq[%arg4 : memref<49xi32>] (%arg11, %15#1, %addressResult, %dataResult, %28#1, %addressResult_24, %addressResult_26, %dataResult_27, %136#1, %addressResult_132, %result_172)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.name = "lsq5"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg3 : memref<49xi32>] %arg10 (%addressResult_76) %result_172 {connectedBlocks = [8 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg2 : memref<49xi32>] %arg9 (%addressResult_74) %result_172 {connectedBlocks = [8 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_2, %memEnd_3 = mem_controller[%arg1 : memref<49xi32>] %arg8 (%addressResult_22) %result_172 {connectedBlocks = [3 : i32], handshake.name = "mem_controller6"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_4, %memEnd_5 = mem_controller[%arg0 : memref<49xi32>] %arg7 (%addressResult_20) %result_172 {connectedBlocks = [3 : i32], handshake.name = "mem_controller7"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %3 = constant %arg14 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %4 = br %arg14 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %5 = mux %7 [%arg14, %trueResult_42] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <>
    %6 = constant %arg14 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant36", value = false} : <>, <i1>
    %7 = merge %6, %55 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge1"} : <i1>
    %8 = mux %7 [%arg14, %trueResult_48] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %result, %index = control_merge %4, %trueResult_52  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %9 = mux %7 [%3, %trueResult_46] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux11"} : <i1>, <i32>
    %10 = constant %8 {handshake.bb = 1 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %11 = br %result {handshake.bb = 1 : ui32, handshake.name = "br6"} : <>
    %12 = mux %14 [%5, %trueResult_30] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux5"} : <i1>, <>
    %13 = constant %arg14 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant39", value = false} : <>, <i1>
    %14 = merge %13, %50 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge4"} : <i1>
    %15:2 = lazy_fork [2] %12 {handshake.bb = 2 : ui32, handshake.name = "lazy_fork0"} : <>
    %16 = mux %14 [%9, %trueResult_36] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux19"} : <i1>, <i32>
    %17 = mux %14 [%8, %trueResult_34] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux21"} : <i1>, <>
    %result_6, %index_7 = control_merge %11, %trueResult_40  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %18 = mux %14 [%10, %trueResult_32] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux23"} : <i1>, <i32>
    %19 = constant %17 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = 0 : i32} : <>, <i32>
    %20 = constant %17 {handshake.bb = 2 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %21 = constant %17 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 7 : i32} : <>, <i32>
    %22 = muli %16, %21 {handshake.bb = 2 : ui32, handshake.name = "muli3"} : <i32>
    %23 = addi %18, %22 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i32>
    %addressResult, %dataResult = store[%23] %19 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0]]>, <"store1" (3) [[0, 0], [0, 0]]>, <"load6" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i32>, <i32>
    %24 = br %result_6 {handshake.bb = 2 : ui32, handshake.name = "br9"} : <>
    %trueResult, %falseResult = cond_br %46, %27 {handshake.bb = 3 : ui32, handshake.name = "cond_br63"} : <i1>, <>
    %trueResult_8, %falseResult_9 = cond_br %46, %28#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br64"} : <i1>, <>
    %25 = constant %arg14 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant40", value = false} : <>, <i1>
    %26 = merge %25, %46 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge7"} : <i1>
    %27 = mux %26 [%15#0, %trueResult] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <>
    %28:2 = lazy_fork [2] %27 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_10, %falseResult_11 = cond_br %46, %45 {handshake.bb = 3 : ui32, handshake.name = "cond_br118"} : <i1>, <i32>
    %trueResult_12, %falseResult_13 = cond_br %46, %31 {handshake.bb = 3 : ui32, handshake.name = "cond_br119"} : <i1>, <>
    %trueResult_14, %falseResult_15 = cond_br %46, %30 {handshake.bb = 3 : ui32, handshake.name = "cond_br120"} : <i1>, <i32>
    %trueResult_16, %falseResult_17 = cond_br %46, %29 {handshake.bb = 3 : ui32, handshake.name = "cond_br121"} : <i1>, <i32>
    %29 = mux %26 [%16, %trueResult_16] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux27"} : <i1>, <i32>
    %30 = mux %26 [%18, %trueResult_14] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux28"} : <i1>, <i32>
    %31 = mux %26 [%17, %trueResult_12] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux30"} : <i1>, <>
    %result_18, %index_19 = control_merge %24, %trueResult_28  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %32 = mux %26 [%20, %trueResult_10] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux32"} : <i1>, <i32>
    %33 = constant %31 {handshake.bb = 3 : ui32, handshake.name = "constant8", value = 7 : i32} : <>, <i32>
    %34 = constant %31 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 1 : i32} : <>, <i32>
    %35 = muli %29, %33 {handshake.bb = 3 : ui32, handshake.name = "muli4"} : <i32>
    %36 = addi %32, %35 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i32>
    %addressResult_20, %dataResult_21 = load[%36] %outputs_4 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i32>, <i32>
    %37 = muli %32, %33 {handshake.bb = 3 : ui32, handshake.name = "muli5"} : <i32>
    %38 = addi %30, %37 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i32>
    %addressResult_22, %dataResult_23 = load[%38] %outputs_2 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i32>, <i32>
    %39 = muli %dataResult_21, %dataResult_23 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %40 = muli %29, %33 {handshake.bb = 3 : ui32, handshake.name = "muli6"} : <i32>
    %41 = addi %30, %40 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i32>
    %addressResult_24, %dataResult_25 = load[%41] %2#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load2"} : <i32>, <i32>
    %42 = addi %dataResult_25, %39 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %43 = muli %29, %33 {handshake.bb = 3 : ui32, handshake.name = "muli7"} : <i32>
    %44 = addi %30, %43 {handshake.bb = 3 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_26, %dataResult_27 = store[%44] %42 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"load6" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i32>, <i32>
    %45 = addi %32, %34 {handshake.bb = 3 : ui32, handshake.name = "addi18"} : <i32>
    %46 = cmpi ult, %45, %33 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_28, %falseResult_29 = cond_br %46, %result_18 {handshake.bb = 3 : ui32, handshake.name = "cond_br18"} : <i1>, <>
    %trueResult_30, %falseResult_31 = cond_br %50, %falseResult_9 {handshake.bb = 4 : ui32, handshake.name = "cond_br65"} : <i1>, <>
    %trueResult_32, %falseResult_33 = cond_br %50, %49 {handshake.bb = 4 : ui32, handshake.name = "cond_br122"} : <i1>, <i32>
    %trueResult_34, %falseResult_35 = cond_br %50, %17 {handshake.bb = 4 : ui32, handshake.name = "cond_br123"} : <i1>, <>
    %trueResult_36, %falseResult_37 = cond_br %50, %16 {handshake.bb = 4 : ui32, handshake.name = "cond_br124"} : <i1>, <i32>
    %result_38, %index_39 = control_merge %falseResult_29  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %47 = constant %17 {handshake.bb = 4 : ui32, handshake.name = "constant10", value = 7 : i32} : <>, <i32>
    %48 = constant %17 {handshake.bb = 4 : ui32, handshake.name = "constant11", value = 1 : i32} : <>, <i32>
    %49 = addi %18, %48 {handshake.bb = 4 : ui32, handshake.name = "addi19"} : <i32>
    %50 = cmpi ult, %49, %47 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_40, %falseResult_41 = cond_br %50, %result_38 {handshake.bb = 4 : ui32, handshake.name = "cond_br31"} : <i1>, <>
    %trueResult_42, %falseResult_43 = cond_br %55, %falseResult_31 {handshake.bb = 5 : ui32, handshake.name = "cond_br66"} : <i1>, <>
    %trueResult_44, %falseResult_45 = cond_br %55, %51 {handshake.bb = 5 : ui32, handshake.name = "cond_br125"} : <i1>, <i32>
    %trueResult_46, %falseResult_47 = cond_br %55, %54 {handshake.bb = 5 : ui32, handshake.name = "cond_br126"} : <i1>, <i32>
    %trueResult_48, %falseResult_49 = cond_br %55, %8 {handshake.bb = 5 : ui32, handshake.name = "cond_br127"} : <i1>, <>
    %result_50, %index_51 = control_merge %falseResult_41  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %51 = constant %8 {handshake.bb = 5 : ui32, handshake.name = "constant12", value = 0 : i32} : <>, <i32>
    %52 = constant %8 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = 7 : i32} : <>, <i32>
    %53 = constant %8 {handshake.bb = 5 : ui32, handshake.name = "constant14", value = 1 : i32} : <>, <i32>
    %54 = addi %9, %53 {handshake.bb = 5 : ui32, handshake.name = "addi20"} : <i32>
    %55 = cmpi ult, %54, %52 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i32>
    %trueResult_52, %falseResult_53 = cond_br %55, %result_50 {handshake.bb = 5 : ui32, handshake.name = "cond_br45"} : <i1>, <>
    %56 = constant %arg14 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "constant46", value = false} : <>, <i1>
    %57 = mux %58 [%arg14, %trueResult_96] {ftd.phi, handshake.bb = 6 : ui32, handshake.name = "mux13"} : <i1>, <>
    %58 = merge %56, %106 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "merge10"} : <i1>
    %59 = mux %58 [%arg14, %trueResult_102] {ftd.regen, handshake.bb = 6 : ui32, handshake.name = "mux33"} : <i1>, <>
    %result_54, %index_55 = control_merge %falseResult_53, %trueResult_106  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    %60 = mux %58 [%falseResult_45, %trueResult_100] {ftd.phi, handshake.bb = 6 : ui32, handshake.name = "mux44"} : <i1>, <i32>
    %61 = constant %59 {handshake.bb = 6 : ui32, handshake.name = "constant15", value = 0 : i32} : <>, <i32>
    %62 = br %result_54 {handshake.bb = 6 : ui32, handshake.name = "br10"} : <>
    %63 = constant %arg14 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "constant49", value = false} : <>, <i1>
    %64 = mux %65 [%57, %trueResult_84] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux16"} : <i1>, <>
    %65 = merge %63, %101 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "merge14"} : <i1>
    %66:2 = lazy_fork [2] %64 {handshake.bb = 7 : ui32, handshake.name = "lazy_fork2"} : <>
    %67 = mux %65 [%60, %trueResult_90] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux52"} : <i1>, <i32>
    %68 = mux %65 [%59, %trueResult_88] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux55"} : <i1>, <>
    %result_56, %index_57 = control_merge %62, %trueResult_94  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %69 = mux %65 [%61, %trueResult_86] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux56"} : <i1>, <i32>
    %70 = constant %68 {handshake.bb = 7 : ui32, handshake.name = "constant16", value = 0 : i32} : <>, <i32>
    %71 = constant %68 {handshake.bb = 7 : ui32, handshake.name = "constant17", value = 0 : i32} : <>, <i32>
    %72 = constant %68 {handshake.bb = 7 : ui32, handshake.name = "constant18", value = 7 : i32} : <>, <i32>
    %73 = muli %67, %72 {handshake.bb = 7 : ui32, handshake.name = "muli8"} : <i32>
    %74 = addi %69, %73 {handshake.bb = 7 : ui32, handshake.name = "addi8"} : <i32>
    %addressResult_58, %dataResult_59 = store[%74] %70 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"load5" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store2"} : <i32>, <i32>
    %75 = br %result_56 {handshake.bb = 7 : ui32, handshake.name = "br11"} : <>
    %trueResult_60, %falseResult_61 = cond_br %97, %78 {handshake.bb = 8 : ui32, handshake.name = "cond_br67"} : <i1>, <>
    %trueResult_62, %falseResult_63 = cond_br %97, %79#0 {handshake.bb = 8 : ui32, handshake.name = "cond_br69"} : <i1>, <>
    %76 = constant %arg14 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "constant50", value = false} : <>, <i1>
    %77 = merge %76, %97 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "merge17"} : <i1>
    %78 = mux %77 [%66#0, %trueResult_60] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux17"} : <i1>, <>
    %79:2 = lazy_fork [2] %78 {handshake.bb = 8 : ui32, handshake.name = "lazy_fork3"} : <>
    %trueResult_64, %falseResult_65 = cond_br %97, %96 {handshake.bb = 8 : ui32, handshake.name = "cond_br128"} : <i1>, <i32>
    %trueResult_66, %falseResult_67 = cond_br %97, %82 {handshake.bb = 8 : ui32, handshake.name = "cond_br129"} : <i1>, <>
    %trueResult_68, %falseResult_69 = cond_br %97, %81 {handshake.bb = 8 : ui32, handshake.name = "cond_br130"} : <i1>, <i32>
    %trueResult_70, %falseResult_71 = cond_br %97, %80 {handshake.bb = 8 : ui32, handshake.name = "cond_br131"} : <i1>, <i32>
    %80 = mux %77 [%67, %trueResult_70] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux60"} : <i1>, <i32>
    %81 = mux %77 [%69, %trueResult_68] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux61"} : <i1>, <i32>
    %82 = mux %77 [%68, %trueResult_66] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux63"} : <i1>, <>
    %result_72, %index_73 = control_merge %75, %trueResult_82  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    %83 = mux %77 [%71, %trueResult_64] {ftd.phi, handshake.bb = 8 : ui32, handshake.name = "mux65"} : <i1>, <i32>
    %84 = constant %82 {handshake.bb = 8 : ui32, handshake.name = "constant19", value = 7 : i32} : <>, <i32>
    %85 = constant %82 {handshake.bb = 8 : ui32, handshake.name = "constant20", value = 1 : i32} : <>, <i32>
    %86 = muli %80, %84 {handshake.bb = 8 : ui32, handshake.name = "muli9"} : <i32>
    %87 = addi %83, %86 {handshake.bb = 8 : ui32, handshake.name = "addi9"} : <i32>
    %addressResult_74, %dataResult_75 = load[%87] %outputs_0 {handshake.bb = 8 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load3"} : <i32>, <i32>
    %88 = muli %83, %84 {handshake.bb = 8 : ui32, handshake.name = "muli10"} : <i32>
    %89 = addi %81, %88 {handshake.bb = 8 : ui32, handshake.name = "addi10"} : <i32>
    %addressResult_76, %dataResult_77 = load[%89] %outputs {handshake.bb = 8 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i32>, <i32>
    %90 = muli %dataResult_75, %dataResult_77 {handshake.bb = 8 : ui32, handshake.name = "muli1"} : <i32>
    %91 = muli %80, %84 {handshake.bb = 8 : ui32, handshake.name = "muli11"} : <i32>
    %92 = addi %81, %91 {handshake.bb = 8 : ui32, handshake.name = "addi11"} : <i32>
    %addressResult_78, %dataResult_79 = load[%92] %1#0 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load5"} : <i32>, <i32>
    %93 = addi %dataResult_79, %90 {handshake.bb = 8 : ui32, handshake.name = "addi1"} : <i32>
    %94 = muli %80, %84 {handshake.bb = 8 : ui32, handshake.name = "muli12"} : <i32>
    %95 = addi %81, %94 {handshake.bb = 8 : ui32, handshake.name = "addi12"} : <i32>
    %addressResult_80, %dataResult_81 = store[%95] %93 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"load5" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store3"} : <i32>, <i32>
    %96 = addi %83, %85 {handshake.bb = 8 : ui32, handshake.name = "addi21"} : <i32>
    %97 = cmpi ult, %96, %84 {handshake.bb = 8 : ui32, handshake.name = "cmpi3"} : <i32>
    %trueResult_82, %falseResult_83 = cond_br %97, %result_72 {handshake.bb = 8 : ui32, handshake.name = "cond_br55"} : <i1>, <>
    %trueResult_84, %falseResult_85 = cond_br %101, %falseResult_63 {handshake.bb = 9 : ui32, handshake.name = "cond_br70"} : <i1>, <>
    %trueResult_86, %falseResult_87 = cond_br %101, %100 {handshake.bb = 9 : ui32, handshake.name = "cond_br132"} : <i1>, <i32>
    %trueResult_88, %falseResult_89 = cond_br %101, %68 {handshake.bb = 9 : ui32, handshake.name = "cond_br133"} : <i1>, <>
    %trueResult_90, %falseResult_91 = cond_br %101, %67 {handshake.bb = 9 : ui32, handshake.name = "cond_br134"} : <i1>, <i32>
    %result_92, %index_93 = control_merge %falseResult_83  {handshake.bb = 9 : ui32, handshake.name = "control_merge8"} : <>, <i1>
    %98 = constant %68 {handshake.bb = 9 : ui32, handshake.name = "constant21", value = 7 : i32} : <>, <i32>
    %99 = constant %68 {handshake.bb = 9 : ui32, handshake.name = "constant22", value = 1 : i32} : <>, <i32>
    %100 = addi %69, %99 {handshake.bb = 9 : ui32, handshake.name = "addi22"} : <i32>
    %101 = cmpi ult, %100, %98 {handshake.bb = 9 : ui32, handshake.name = "cmpi4"} : <i32>
    %trueResult_94, %falseResult_95 = cond_br %101, %result_92 {handshake.bb = 9 : ui32, handshake.name = "cond_br68"} : <i1>, <>
    %trueResult_96, %falseResult_97 = cond_br %106, %falseResult_85 {handshake.bb = 10 : ui32, handshake.name = "cond_br71"} : <i1>, <>
    %trueResult_98, %falseResult_99 = cond_br %106, %102 {handshake.bb = 10 : ui32, handshake.name = "cond_br135"} : <i1>, <i32>
    %trueResult_100, %falseResult_101 = cond_br %106, %105 {handshake.bb = 10 : ui32, handshake.name = "cond_br136"} : <i1>, <i32>
    %trueResult_102, %falseResult_103 = cond_br %106, %59 {handshake.bb = 10 : ui32, handshake.name = "cond_br137"} : <i1>, <>
    %result_104, %index_105 = control_merge %falseResult_95  {handshake.bb = 10 : ui32, handshake.name = "control_merge9"} : <>, <i1>
    %102 = constant %59 {handshake.bb = 10 : ui32, handshake.name = "constant23", value = 0 : i32} : <>, <i32>
    %103 = constant %59 {handshake.bb = 10 : ui32, handshake.name = "constant24", value = 7 : i32} : <>, <i32>
    %104 = constant %59 {handshake.bb = 10 : ui32, handshake.name = "constant25", value = 1 : i32} : <>, <i32>
    %105 = addi %60, %104 {handshake.bb = 10 : ui32, handshake.name = "addi23"} : <i32>
    %106 = cmpi ult, %105, %103 {handshake.bb = 10 : ui32, handshake.name = "cmpi5"} : <i32>
    %trueResult_106, %falseResult_107 = cond_br %106, %result_104 {handshake.bb = 10 : ui32, handshake.name = "cond_br82"} : <i1>, <>
    %107 = constant %arg14 {ftd.imerge, handshake.bb = 11 : ui32, handshake.name = "constant53", value = false} : <>, <i1>
    %108 = merge %107, %164 {ftd.imerge, handshake.bb = 11 : ui32, handshake.name = "merge20"} : <i1>
    %109 = mux %108 [%falseResult_97, %trueResult_162] {ftd.regen, handshake.bb = 11 : ui32, handshake.name = "mux22"} : <i1>, <>
    %110 = mux %108 [%falseResult_43, %trueResult_160] {ftd.regen, handshake.bb = 11 : ui32, handshake.name = "mux24"} : <i1>, <>
    %111 = mux %108 [%arg14, %trueResult_158] {ftd.phi, handshake.bb = 11 : ui32, handshake.name = "mux25"} : <i1>, <>
    %112 = mux %108 [%arg14, %trueResult_166] {ftd.regen, handshake.bb = 11 : ui32, handshake.name = "mux66"} : <i1>, <>
    %result_108, %index_109 = control_merge %falseResult_107, %trueResult_170  {handshake.bb = 11 : ui32, handshake.name = "control_merge10"} : <>, <i1>
    %113 = mux %108 [%falseResult_99, %trueResult_164] {ftd.phi, handshake.bb = 11 : ui32, handshake.name = "mux76"} : <i1>, <i32>
    %114 = constant %112 {handshake.bb = 11 : ui32, handshake.name = "constant26", value = 0 : i32} : <>, <i32>
    %115 = br %result_108 {handshake.bb = 11 : ui32, handshake.name = "br12"} : <>
    %116 = constant %arg14 {ftd.imerge, handshake.bb = 12 : ui32, handshake.name = "constant58", value = false} : <>, <i1>
    %117 = merge %116, %160 {ftd.imerge, handshake.bb = 12 : ui32, handshake.name = "merge25"} : <i1>
    %118 = mux %117 [%109, %trueResult_144] {ftd.regen, handshake.bb = 12 : ui32, handshake.name = "mux29"} : <i1>, <>
    %119 = mux %117 [%110, %trueResult_142] {ftd.regen, handshake.bb = 12 : ui32, handshake.name = "mux31"} : <i1>, <>
    %120 = mux %117 [%111, %trueResult_146] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux34"} : <i1>, <>
    %121:2 = lazy_fork [2] %120 {handshake.bb = 12 : ui32, handshake.name = "lazy_fork4"} : <>
    %122 = mux %117 [%113, %trueResult_152] {ftd.regen, handshake.bb = 12 : ui32, handshake.name = "mux84"} : <i1>, <i32>
    %123 = mux %117 [%112, %trueResult_150] {ftd.regen, handshake.bb = 12 : ui32, handshake.name = "mux87"} : <i1>, <>
    %result_110, %index_111 = control_merge %115, %trueResult_156  {handshake.bb = 12 : ui32, handshake.name = "control_merge11"} : <>, <i1>
    %124 = mux %117 [%114, %trueResult_148] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux88"} : <i1>, <i32>
    %125 = constant %123 {handshake.bb = 12 : ui32, handshake.name = "constant27", value = 0 : i32} : <>, <i32>
    %126 = constant %123 {handshake.bb = 12 : ui32, handshake.name = "constant28", value = 0 : i32} : <>, <i32>
    %127 = constant %123 {handshake.bb = 12 : ui32, handshake.name = "constant29", value = 7 : i32} : <>, <i32>
    %128 = muli %122, %127 {handshake.bb = 12 : ui32, handshake.name = "muli13"} : <i32>
    %129 = addi %124, %128 {handshake.bb = 12 : ui32, handshake.name = "addi13"} : <i32>
    %addressResult_112, %dataResult_113 = store[%129] %125 {handshake.bb = 12 : ui32, handshake.deps = #handshake<deps[<"load8" (3) [[0, 0], [0, 0]]>, <"store5" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store4"} : <i32>, <i32>
    %130 = br %result_110 {handshake.bb = 12 : ui32, handshake.name = "br13"} : <>
    %trueResult_114, %falseResult_115 = cond_br %156, %135 {handshake.bb = 13 : ui32, handshake.name = "cond_br72"} : <i1>, <>
    %trueResult_116, %falseResult_117 = cond_br %156, %134 {handshake.bb = 13 : ui32, handshake.name = "cond_br73"} : <i1>, <>
    %trueResult_118, %falseResult_119 = cond_br %156, %133 {handshake.bb = 13 : ui32, handshake.name = "cond_br74"} : <i1>, <>
    %trueResult_120, %falseResult_121 = cond_br %156, %138#0 {handshake.bb = 13 : ui32, handshake.name = "cond_br75"} : <i1>, <>
    %131 = constant %arg14 {ftd.imerge, handshake.bb = 13 : ui32, handshake.name = "constant62", value = false} : <>, <i1>
    %132 = merge %131, %156 {ftd.imerge, handshake.bb = 13 : ui32, handshake.name = "merge29"} : <i1>
    %133 = mux %132 [%121#0, %trueResult_118] {ftd.regen, handshake.bb = 13 : ui32, handshake.name = "mux36"} : <i1>, <>
    %134 = mux %132 [%118, %trueResult_116] {ftd.regen, handshake.bb = 13 : ui32, handshake.name = "mux37"} : <i1>, <>
    %135 = mux %132 [%119, %trueResult_114] {ftd.regen, handshake.bb = 13 : ui32, handshake.name = "mux38"} : <i1>, <>
    %136:2 = lazy_fork [2] %135 {handshake.bb = 13 : ui32, handshake.name = "lazy_fork5"} : <>
    %137:2 = lazy_fork [2] %134 {handshake.bb = 13 : ui32, handshake.name = "lazy_fork6"} : <>
    %138:2 = lazy_fork [2] %133 {handshake.bb = 13 : ui32, handshake.name = "lazy_fork7"} : <>
    %trueResult_122, %falseResult_123 = cond_br %156, %155 {handshake.bb = 13 : ui32, handshake.name = "cond_br138"} : <i1>, <i32>
    %trueResult_124, %falseResult_125 = cond_br %156, %141 {handshake.bb = 13 : ui32, handshake.name = "cond_br139"} : <i1>, <>
    %trueResult_126, %falseResult_127 = cond_br %156, %140 {handshake.bb = 13 : ui32, handshake.name = "cond_br140"} : <i1>, <i32>
    %trueResult_128, %falseResult_129 = cond_br %156, %139 {handshake.bb = 13 : ui32, handshake.name = "cond_br141"} : <i1>, <i32>
    %139 = mux %132 [%122, %trueResult_128] {ftd.regen, handshake.bb = 13 : ui32, handshake.name = "mux92"} : <i1>, <i32>
    %140 = mux %132 [%124, %trueResult_126] {ftd.regen, handshake.bb = 13 : ui32, handshake.name = "mux93"} : <i1>, <i32>
    %141 = mux %132 [%123, %trueResult_124] {ftd.regen, handshake.bb = 13 : ui32, handshake.name = "mux95"} : <i1>, <>
    %result_130, %index_131 = control_merge %130, %trueResult_140  {handshake.bb = 13 : ui32, handshake.name = "control_merge12"} : <>, <i1>
    %142 = mux %132 [%126, %trueResult_122] {ftd.phi, handshake.bb = 13 : ui32, handshake.name = "mux97"} : <i1>, <i32>
    %143 = constant %141 {handshake.bb = 13 : ui32, handshake.name = "constant30", value = 7 : i32} : <>, <i32>
    %144 = constant %141 {handshake.bb = 13 : ui32, handshake.name = "constant31", value = 1 : i32} : <>, <i32>
    %145 = muli %139, %143 {handshake.bb = 13 : ui32, handshake.name = "muli14"} : <i32>
    %146 = addi %142, %145 {handshake.bb = 13 : ui32, handshake.name = "addi14"} : <i32>
    %addressResult_132, %dataResult_133 = load[%146] %2#1 {handshake.bb = 13 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load6"} : <i32>, <i32>
    %147 = muli %142, %143 {handshake.bb = 13 : ui32, handshake.name = "muli15"} : <i32>
    %148 = addi %140, %147 {handshake.bb = 13 : ui32, handshake.name = "addi15"} : <i32>
    %addressResult_134, %dataResult_135 = load[%148] %1#1 {handshake.bb = 13 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load7"} : <i32>, <i32>
    %149 = muli %dataResult_133, %dataResult_135 {handshake.bb = 13 : ui32, handshake.name = "muli2"} : <i32>
    %150 = muli %139, %143 {handshake.bb = 13 : ui32, handshake.name = "muli16"} : <i32>
    %151 = addi %140, %150 {handshake.bb = 13 : ui32, handshake.name = "addi16"} : <i32>
    %addressResult_136, %dataResult_137 = load[%151] %0#0 {handshake.bb = 13 : ui32, handshake.deps = #handshake<deps[<"store5" (3) [[0, 0], [0, 0], [1, 6]]>, <"store5" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load8"} : <i32>, <i32>
    %152 = addi %dataResult_137, %149 {handshake.bb = 13 : ui32, handshake.name = "addi2"} : <i32>
    %153 = muli %139, %143 {handshake.bb = 13 : ui32, handshake.name = "muli17"} : <i32>
    %154 = addi %140, %153 {handshake.bb = 13 : ui32, handshake.name = "addi17"} : <i32>
    %addressResult_138, %dataResult_139 = store[%154] %152 {handshake.bb = 13 : ui32, handshake.deps = #handshake<deps[<"load8" (3) [[0, 0], [0, 0], [1, 6]]>, <"store5" (3) [[0, 0], [0, 0], [1, 6]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store5"} : <i32>, <i32>
    %155 = addi %142, %144 {handshake.bb = 13 : ui32, handshake.name = "addi24"} : <i32>
    %156 = cmpi ult, %155, %143 {handshake.bb = 13 : ui32, handshake.name = "cmpi6"} : <i32>
    %trueResult_140, %falseResult_141 = cond_br %156, %result_130 {handshake.bb = 13 : ui32, handshake.name = "cond_br92"} : <i1>, <>
    %trueResult_142, %falseResult_143 = cond_br %160, %119 {handshake.bb = 14 : ui32, handshake.name = "cond_br76"} : <i1>, <>
    %trueResult_144, %falseResult_145 = cond_br %160, %118 {handshake.bb = 14 : ui32, handshake.name = "cond_br77"} : <i1>, <>
    %trueResult_146, %falseResult_147 = cond_br %160, %falseResult_121 {handshake.bb = 14 : ui32, handshake.name = "cond_br78"} : <i1>, <>
    %trueResult_148, %falseResult_149 = cond_br %160, %159 {handshake.bb = 14 : ui32, handshake.name = "cond_br142"} : <i1>, <i32>
    %trueResult_150, %falseResult_151 = cond_br %160, %123 {handshake.bb = 14 : ui32, handshake.name = "cond_br143"} : <i1>, <>
    %trueResult_152, %falseResult_153 = cond_br %160, %122 {handshake.bb = 14 : ui32, handshake.name = "cond_br144"} : <i1>, <i32>
    %result_154, %index_155 = control_merge %falseResult_141  {handshake.bb = 14 : ui32, handshake.name = "control_merge13"} : <>, <i1>
    %157 = constant %123 {handshake.bb = 14 : ui32, handshake.name = "constant32", value = 7 : i32} : <>, <i32>
    %158 = constant %123 {handshake.bb = 14 : ui32, handshake.name = "constant33", value = 1 : i32} : <>, <i32>
    %159 = addi %124, %158 {handshake.bb = 14 : ui32, handshake.name = "addi25"} : <i32>
    %160 = cmpi ult, %159, %157 {handshake.bb = 14 : ui32, handshake.name = "cmpi7"} : <i32>
    %trueResult_156, %falseResult_157 = cond_br %160, %result_154 {handshake.bb = 14 : ui32, handshake.name = "cond_br105"} : <i1>, <>
    %trueResult_158, %falseResult_159 = cond_br %164, %falseResult_147 {handshake.bb = 15 : ui32, handshake.name = "cond_br79"} : <i1>, <>
    %trueResult_160, %falseResult_161 = cond_br %164, %110 {handshake.bb = 15 : ui32, handshake.name = "cond_br80"} : <i1>, <>
    %trueResult_162, %falseResult_163 = cond_br %164, %109 {handshake.bb = 15 : ui32, handshake.name = "cond_br81"} : <i1>, <>
    %trueResult_164, %falseResult_165 = cond_br %164, %163 {handshake.bb = 15 : ui32, handshake.name = "cond_br145"} : <i1>, <i32>
    %trueResult_166, %falseResult_167 = cond_br %164, %112 {handshake.bb = 15 : ui32, handshake.name = "cond_br146"} : <i1>, <>
    %result_168, %index_169 = control_merge %falseResult_157  {handshake.bb = 15 : ui32, handshake.name = "control_merge14"} : <>, <i1>
    %161 = constant %112 {handshake.bb = 15 : ui32, handshake.name = "constant34", value = 7 : i32} : <>, <i32>
    %162 = constant %112 {handshake.bb = 15 : ui32, handshake.name = "constant35", value = 1 : i32} : <>, <i32>
    %163 = addi %113, %162 {handshake.bb = 15 : ui32, handshake.name = "addi26"} : <i32>
    %164 = cmpi ult, %163, %161 {handshake.bb = 15 : ui32, handshake.name = "cmpi8"} : <i32>
    %trueResult_170, %falseResult_171 = cond_br %164, %result_168 {handshake.bb = 15 : ui32, handshake.name = "cond_br117"} : <i1>, <>
    %result_172, %index_173 = control_merge %falseResult_171  {handshake.bb = 16 : ui32, handshake.name = "control_merge15"} : <>, <i1>
    end {handshake.bb = 16 : ui32, handshake.name = "end0"} %memEnd_5, %memEnd_3, %memEnd_1, %memEnd, %2#2, %1#2, %0#1, %arg14 : <>, <>, <>, <>, <>, <>, <>, <>
  }
}


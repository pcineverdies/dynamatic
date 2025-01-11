module {
  handshake.func @kernel_3mm(%arg0: memref<49xi32>, %arg1: memref<49xi32>, %arg2: memref<49xi32>, %arg3: memref<49xi32>, %arg4: memref<49xi32>, %arg5: memref<49xi32>, %arg6: memref<49xi32>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, %arg12: !handshake.control<>, %arg13: !handshake.control<>, %arg14: !handshake.control<>, ...) -> (!handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "B", "C", "D", "E", "F", "G", "A_start", "B_start", "C_start", "D_start", "E_start", "F_start", "G_start", "start"], cfg.edges = "[0,1][7,8][14,12,15,cmpi7][2,3][9,7,10,cmpi4][4,2,5,cmpi1][11,12][6,7][13,13,14,cmpi6][1,2][8,8,9,cmpi3][15,11,16,cmpi8][3,3,4,cmpi0][10,6,11,cmpi5][5,1,6,cmpi2][12,13]", resNames = ["A_end", "B_end", "C_end", "D_end", "E_end", "F_end", "G_end", "end"]} {
    %0:2 = lsq[%arg6 : memref<49xi32>] (%arg13, %result_90, %addressResult_92, %dataResult_93, %result_100, %addressResult_106, %addressResult_108, %dataResult_109, %result_130)  {groupSizes = [1 : i32, 2 : i32], handshake.name = "lsq0"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %1:3 = lsq[%arg5 : memref<49xi32>] (%arg12, %result_46, %addressResult_48, %dataResult_49, %result_56, %addressResult_62, %addressResult_64, %dataResult_65, %result_100, %addressResult_104, %result_130)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.name = "lsq1"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %2:3 = lsq[%arg4 : memref<49xi32>] (%arg11, %result_6, %addressResult, %dataResult, %result_12, %addressResult_18, %addressResult_20, %dataResult_21, %result_100, %addressResult_102, %result_130)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg3 : memref<49xi32>] %arg10 (%addressResult_60) %result_130 {connectedBlocks = [8 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg2 : memref<49xi32>] %arg9 (%addressResult_58) %result_130 {connectedBlocks = [8 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_2, %memEnd_3 = mem_controller[%arg1 : memref<49xi32>] %arg8 (%addressResult_16) %result_130 {connectedBlocks = [3 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_4, %memEnd_5 = mem_controller[%arg0 : memref<49xi32>] %arg7 (%addressResult_14) %result_130 {connectedBlocks = [3 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %3 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %4 = constant %3 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %5 = br %arg14 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %6 = constant %arg14 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %7 = merge %6, %60 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %8 = mux %7 [%arg14, %trueResult_38] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %result, %index = control_merge %5, %trueResult_42  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %9 = mux %7 [%4, %trueResult_36] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %10 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %11 = constant %10 {handshake.bb = 1 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %12 = br %result {handshake.bb = 1 : ui32, handshake.name = "br6"} : <>
    %13 = constant %arg14 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %14 = merge %13, %52 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge2"} : <i1>
    %15 = mux %14 [%9, %trueResult_28] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %16 = mux %14 [%8, %trueResult_26] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux6"} : <i1>, <>
    %result_6, %index_7 = control_merge %12, %trueResult_32  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %17 = mux %14 [%11, %trueResult_24] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %18 = constant %16 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = 0 : i32} : <>, <i32>
    %19 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %20 = constant %19 {handshake.bb = 2 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %21 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %22 = constant %21 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 7 : i32} : <>, <i32>
    %23 = muli %15, %22 {handshake.bb = 2 : ui32, handshake.name = "muli3"} : <i32>
    %24 = addi %17, %23 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i32>
    %addressResult, %dataResult = store[%24] %18 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0]]>, <"store1" (3) [[0, 0], [0, 0]]>, <"load6" (1)>]>, handshake.name = "store0"} : <i32>, <i32>
    %25 = br %result_6 {handshake.bb = 2 : ui32, handshake.name = "br9"} : <>
    %trueResult, %falseResult = cond_br %46, %45 {handshake.bb = 3 : ui32, handshake.name = "cond_br65"} : <i1>, <i32>
    %trueResult_8, %falseResult_9 = cond_br %46, %29 {handshake.bb = 3 : ui32, handshake.name = "cond_br66"} : <i1>, <i32>
    %trueResult_10, %falseResult_11 = cond_br %46, %28 {handshake.bb = 3 : ui32, handshake.name = "cond_br67"} : <i1>, <i32>
    %26 = constant %arg14 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant41", value = false} : <>, <i1>
    %27 = merge %26, %46 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge8"} : <i1>
    %28 = mux %27 [%15, %trueResult_10] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux11"} : <i1>, <i32>
    %29 = mux %27 [%17, %trueResult_8] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux12"} : <i1>, <i32>
    %result_12, %index_13 = control_merge %25, %trueResult_22  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %30 = mux %27 [%20, %trueResult] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux14"} : <i1>, <i32>
    %31 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %32 = constant %31 {handshake.bb = 3 : ui32, handshake.name = "constant8", value = 7 : i32} : <>, <i32>
    %33 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %34 = constant %33 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 1 : i32} : <>, <i32>
    %35 = muli %28, %32 {handshake.bb = 3 : ui32, handshake.name = "muli4"} : <i32>
    %36 = addi %30, %35 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i32>
    %addressResult_14, %dataResult_15 = load[%36] %outputs_4 {handshake.bb = 3 : ui32, handshake.name = "load0"} : <i32>, <i32>
    %37 = muli %30, %32 {handshake.bb = 3 : ui32, handshake.name = "muli5"} : <i32>
    %38 = addi %29, %37 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i32>
    %addressResult_16, %dataResult_17 = load[%38] %outputs_2 {handshake.bb = 3 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %39 = muli %dataResult_15, %dataResult_17 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %40 = muli %28, %32 {handshake.bb = 3 : ui32, handshake.name = "muli6"} : <i32>
    %41 = addi %29, %40 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i32>
    %addressResult_18, %dataResult_19 = load[%41] %2#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.name = "load2"} : <i32>, <i32>
    %42 = addi %dataResult_19, %39 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %43 = muli %28, %32 {handshake.bb = 3 : ui32, handshake.name = "muli7"} : <i32>
    %44 = addi %29, %43 {handshake.bb = 3 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_20, %dataResult_21 = store[%44] %42 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"load6" (1)>]>, handshake.name = "store1"} : <i32>, <i32>
    %45 = addi %30, %34 {handshake.bb = 3 : ui32, handshake.name = "addi18"} : <i32>
    %46 = cmpi ult, %45, %32 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_22, %falseResult_23 = cond_br %46, %result_12 {handshake.bb = 3 : ui32, handshake.name = "cond_br16"} : <i1>, <>
    %trueResult_24, %falseResult_25 = cond_br %52, %51 {handshake.bb = 4 : ui32, handshake.name = "cond_br68"} : <i1>, <i32>
    %trueResult_26, %falseResult_27 = cond_br %52, %16 {handshake.bb = 4 : ui32, handshake.name = "cond_br69"} : <i1>, <>
    %trueResult_28, %falseResult_29 = cond_br %52, %15 {handshake.bb = 4 : ui32, handshake.name = "cond_br70"} : <i1>, <i32>
    %result_30, %index_31 = control_merge %falseResult_23  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %47 = source {handshake.bb = 4 : ui32, handshake.name = "source6"} : <>
    %48 = constant %47 {handshake.bb = 4 : ui32, handshake.name = "constant10", value = 7 : i32} : <>, <i32>
    %49 = source {handshake.bb = 4 : ui32, handshake.name = "source7"} : <>
    %50 = constant %49 {handshake.bb = 4 : ui32, handshake.name = "constant11", value = 1 : i32} : <>, <i32>
    %51 = addi %17, %50 {handshake.bb = 4 : ui32, handshake.name = "addi19"} : <i32>
    %52 = cmpi ult, %51, %48 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_32, %falseResult_33 = cond_br %52, %result_30 {handshake.bb = 4 : ui32, handshake.name = "cond_br23"} : <i1>, <>
    %trueResult_34, %falseResult_35 = cond_br %60, %54 {handshake.bb = 5 : ui32, handshake.name = "cond_br71"} : <i1>, <i32>
    %trueResult_36, %falseResult_37 = cond_br %60, %59 {handshake.bb = 5 : ui32, handshake.name = "cond_br72"} : <i1>, <i32>
    %trueResult_38, %falseResult_39 = cond_br %60, %8 {handshake.bb = 5 : ui32, handshake.name = "cond_br73"} : <i1>, <>
    %result_40, %index_41 = control_merge %falseResult_33  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %53 = source {handshake.bb = 5 : ui32, handshake.name = "source8"} : <>
    %54 = constant %53 {handshake.bb = 5 : ui32, handshake.name = "constant12", value = 0 : i32} : <>, <i32>
    %55 = source {handshake.bb = 5 : ui32, handshake.name = "source9"} : <>
    %56 = constant %55 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = 7 : i32} : <>, <i32>
    %57 = source {handshake.bb = 5 : ui32, handshake.name = "source10"} : <>
    %58 = constant %57 {handshake.bb = 5 : ui32, handshake.name = "constant14", value = 1 : i32} : <>, <i32>
    %59 = addi %9, %58 {handshake.bb = 5 : ui32, handshake.name = "addi20"} : <i32>
    %60 = cmpi ult, %59, %56 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i32>
    %trueResult_42, %falseResult_43 = cond_br %60, %result_40 {handshake.bb = 5 : ui32, handshake.name = "cond_br27"} : <i1>, <>
    %61 = constant %arg14 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "constant48", value = false} : <>, <i1>
    %62 = merge %61, %115 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "merge15"} : <i1>
    %63 = mux %62 [%arg14, %trueResult_82] {ftd.regen, handshake.bb = 6 : ui32, handshake.name = "mux15"} : <i1>, <>
    %result_44, %index_45 = control_merge %falseResult_43, %trueResult_86  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    %64 = mux %62 [%falseResult_35, %trueResult_80] {ftd.phi, handshake.bb = 6 : ui32, handshake.name = "mux16"} : <i1>, <i32>
    %65 = source {handshake.bb = 6 : ui32, handshake.name = "source11"} : <>
    %66 = constant %65 {handshake.bb = 6 : ui32, handshake.name = "constant15", value = 0 : i32} : <>, <i32>
    %67 = br %result_44 {handshake.bb = 6 : ui32, handshake.name = "br10"} : <>
    %68 = constant %arg14 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "constant50", value = false} : <>, <i1>
    %69 = merge %68, %107 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "merge17"} : <i1>
    %70 = mux %69 [%64, %trueResult_72] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux20"} : <i1>, <i32>
    %71 = mux %69 [%63, %trueResult_70] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux21"} : <i1>, <>
    %result_46, %index_47 = control_merge %67, %trueResult_76  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %72 = mux %69 [%66, %trueResult_68] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux22"} : <i1>, <i32>
    %73 = constant %71 {handshake.bb = 7 : ui32, handshake.name = "constant16", value = 0 : i32} : <>, <i32>
    %74 = source {handshake.bb = 7 : ui32, handshake.name = "source12"} : <>
    %75 = constant %74 {handshake.bb = 7 : ui32, handshake.name = "constant17", value = 0 : i32} : <>, <i32>
    %76 = source {handshake.bb = 7 : ui32, handshake.name = "source13"} : <>
    %77 = constant %76 {handshake.bb = 7 : ui32, handshake.name = "constant18", value = 7 : i32} : <>, <i32>
    %78 = muli %70, %77 {handshake.bb = 7 : ui32, handshake.name = "muli8"} : <i32>
    %79 = addi %72, %78 {handshake.bb = 7 : ui32, handshake.name = "addi8"} : <i32>
    %addressResult_48, %dataResult_49 = store[%79] %73 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"load5" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>, <"load7" (1)>]>, handshake.name = "store2"} : <i32>, <i32>
    %80 = br %result_46 {handshake.bb = 7 : ui32, handshake.name = "br11"} : <>
    %trueResult_50, %falseResult_51 = cond_br %101, %100 {handshake.bb = 8 : ui32, handshake.name = "cond_br74"} : <i1>, <i32>
    %trueResult_52, %falseResult_53 = cond_br %101, %84 {handshake.bb = 8 : ui32, handshake.name = "cond_br75"} : <i1>, <i32>
    %trueResult_54, %falseResult_55 = cond_br %101, %83 {handshake.bb = 8 : ui32, handshake.name = "cond_br76"} : <i1>, <i32>
    %81 = constant %arg14 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "constant56", value = false} : <>, <i1>
    %82 = merge %81, %101 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "merge23"} : <i1>
    %83 = mux %82 [%70, %trueResult_54] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux26"} : <i1>, <i32>
    %84 = mux %82 [%72, %trueResult_52] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux27"} : <i1>, <i32>
    %result_56, %index_57 = control_merge %80, %trueResult_66  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    %85 = mux %82 [%75, %trueResult_50] {ftd.phi, handshake.bb = 8 : ui32, handshake.name = "mux29"} : <i1>, <i32>
    %86 = source {handshake.bb = 8 : ui32, handshake.name = "source14"} : <>
    %87 = constant %86 {handshake.bb = 8 : ui32, handshake.name = "constant19", value = 7 : i32} : <>, <i32>
    %88 = source {handshake.bb = 8 : ui32, handshake.name = "source15"} : <>
    %89 = constant %88 {handshake.bb = 8 : ui32, handshake.name = "constant20", value = 1 : i32} : <>, <i32>
    %90 = muli %83, %87 {handshake.bb = 8 : ui32, handshake.name = "muli9"} : <i32>
    %91 = addi %85, %90 {handshake.bb = 8 : ui32, handshake.name = "addi9"} : <i32>
    %addressResult_58, %dataResult_59 = load[%91] %outputs_0 {handshake.bb = 8 : ui32, handshake.name = "load3"} : <i32>, <i32>
    %92 = muli %85, %87 {handshake.bb = 8 : ui32, handshake.name = "muli10"} : <i32>
    %93 = addi %84, %92 {handshake.bb = 8 : ui32, handshake.name = "addi10"} : <i32>
    %addressResult_60, %dataResult_61 = load[%93] %outputs {handshake.bb = 8 : ui32, handshake.name = "load4"} : <i32>, <i32>
    %94 = muli %dataResult_59, %dataResult_61 {handshake.bb = 8 : ui32, handshake.name = "muli1"} : <i32>
    %95 = muli %83, %87 {handshake.bb = 8 : ui32, handshake.name = "muli11"} : <i32>
    %96 = addi %84, %95 {handshake.bb = 8 : ui32, handshake.name = "addi11"} : <i32>
    %addressResult_62, %dataResult_63 = load[%96] %1#0 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.name = "load5"} : <i32>, <i32>
    %97 = addi %dataResult_63, %94 {handshake.bb = 8 : ui32, handshake.name = "addi1"} : <i32>
    %98 = muli %83, %87 {handshake.bb = 8 : ui32, handshake.name = "muli12"} : <i32>
    %99 = addi %84, %98 {handshake.bb = 8 : ui32, handshake.name = "addi12"} : <i32>
    %addressResult_64, %dataResult_65 = store[%99] %97 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"load5" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"load7" (1)>]>, handshake.name = "store3"} : <i32>, <i32>
    %100 = addi %85, %89 {handshake.bb = 8 : ui32, handshake.name = "addi21"} : <i32>
    %101 = cmpi ult, %100, %87 {handshake.bb = 8 : ui32, handshake.name = "cmpi3"} : <i32>
    %trueResult_66, %falseResult_67 = cond_br %101, %result_56 {handshake.bb = 8 : ui32, handshake.name = "cond_br35"} : <i1>, <>
    %trueResult_68, %falseResult_69 = cond_br %107, %106 {handshake.bb = 9 : ui32, handshake.name = "cond_br77"} : <i1>, <i32>
    %trueResult_70, %falseResult_71 = cond_br %107, %71 {handshake.bb = 9 : ui32, handshake.name = "cond_br78"} : <i1>, <>
    %trueResult_72, %falseResult_73 = cond_br %107, %70 {handshake.bb = 9 : ui32, handshake.name = "cond_br79"} : <i1>, <i32>
    %result_74, %index_75 = control_merge %falseResult_67  {handshake.bb = 9 : ui32, handshake.name = "control_merge8"} : <>, <i1>
    %102 = source {handshake.bb = 9 : ui32, handshake.name = "source16"} : <>
    %103 = constant %102 {handshake.bb = 9 : ui32, handshake.name = "constant21", value = 7 : i32} : <>, <i32>
    %104 = source {handshake.bb = 9 : ui32, handshake.name = "source17"} : <>
    %105 = constant %104 {handshake.bb = 9 : ui32, handshake.name = "constant22", value = 1 : i32} : <>, <i32>
    %106 = addi %72, %105 {handshake.bb = 9 : ui32, handshake.name = "addi22"} : <i32>
    %107 = cmpi ult, %106, %103 {handshake.bb = 9 : ui32, handshake.name = "cmpi4"} : <i32>
    %trueResult_76, %falseResult_77 = cond_br %107, %result_74 {handshake.bb = 9 : ui32, handshake.name = "cond_br42"} : <i1>, <>
    %trueResult_78, %falseResult_79 = cond_br %115, %109 {handshake.bb = 10 : ui32, handshake.name = "cond_br80"} : <i1>, <i32>
    %trueResult_80, %falseResult_81 = cond_br %115, %114 {handshake.bb = 10 : ui32, handshake.name = "cond_br81"} : <i1>, <i32>
    %trueResult_82, %falseResult_83 = cond_br %115, %63 {handshake.bb = 10 : ui32, handshake.name = "cond_br82"} : <i1>, <>
    %result_84, %index_85 = control_merge %falseResult_77  {handshake.bb = 10 : ui32, handshake.name = "control_merge9"} : <>, <i1>
    %108 = source {handshake.bb = 10 : ui32, handshake.name = "source18"} : <>
    %109 = constant %108 {handshake.bb = 10 : ui32, handshake.name = "constant23", value = 0 : i32} : <>, <i32>
    %110 = source {handshake.bb = 10 : ui32, handshake.name = "source19"} : <>
    %111 = constant %110 {handshake.bb = 10 : ui32, handshake.name = "constant24", value = 7 : i32} : <>, <i32>
    %112 = source {handshake.bb = 10 : ui32, handshake.name = "source20"} : <>
    %113 = constant %112 {handshake.bb = 10 : ui32, handshake.name = "constant25", value = 1 : i32} : <>, <i32>
    %114 = addi %64, %113 {handshake.bb = 10 : ui32, handshake.name = "addi23"} : <i32>
    %115 = cmpi ult, %114, %111 {handshake.bb = 10 : ui32, handshake.name = "cmpi5"} : <i32>
    %trueResult_86, %falseResult_87 = cond_br %115, %result_84 {handshake.bb = 10 : ui32, handshake.name = "cond_br46"} : <i1>, <>
    %116 = constant %arg14 {ftd.imerge, handshake.bb = 11 : ui32, handshake.name = "constant63", value = false} : <>, <i1>
    %117 = merge %116, %168 {ftd.imerge, handshake.bb = 11 : ui32, handshake.name = "merge30"} : <i1>
    %118 = mux %117 [%arg14, %trueResult_124] {ftd.regen, handshake.bb = 11 : ui32, handshake.name = "mux30"} : <i1>, <>
    %result_88, %index_89 = control_merge %falseResult_87, %trueResult_128  {handshake.bb = 11 : ui32, handshake.name = "control_merge10"} : <>, <i1>
    %119 = mux %117 [%falseResult_79, %trueResult_122] {ftd.phi, handshake.bb = 11 : ui32, handshake.name = "mux31"} : <i1>, <i32>
    %120 = source {handshake.bb = 11 : ui32, handshake.name = "source21"} : <>
    %121 = constant %120 {handshake.bb = 11 : ui32, handshake.name = "constant26", value = 0 : i32} : <>, <i32>
    %122 = br %result_88 {handshake.bb = 11 : ui32, handshake.name = "br12"} : <>
    %123 = constant %arg14 {ftd.imerge, handshake.bb = 12 : ui32, handshake.name = "constant65", value = false} : <>, <i1>
    %124 = merge %123, %162 {ftd.imerge, handshake.bb = 12 : ui32, handshake.name = "merge32"} : <i1>
    %125 = mux %124 [%119, %trueResult_116] {ftd.regen, handshake.bb = 12 : ui32, handshake.name = "mux35"} : <i1>, <i32>
    %126 = mux %124 [%118, %trueResult_114] {ftd.regen, handshake.bb = 12 : ui32, handshake.name = "mux36"} : <i1>, <>
    %result_90, %index_91 = control_merge %122, %trueResult_120  {handshake.bb = 12 : ui32, handshake.name = "control_merge11"} : <>, <i1>
    %127 = mux %124 [%121, %trueResult_112] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux37"} : <i1>, <i32>
    %128 = constant %126 {handshake.bb = 12 : ui32, handshake.name = "constant27", value = 0 : i32} : <>, <i32>
    %129 = source {handshake.bb = 12 : ui32, handshake.name = "source22"} : <>
    %130 = constant %129 {handshake.bb = 12 : ui32, handshake.name = "constant28", value = 0 : i32} : <>, <i32>
    %131 = source {handshake.bb = 12 : ui32, handshake.name = "source23"} : <>
    %132 = constant %131 {handshake.bb = 12 : ui32, handshake.name = "constant29", value = 7 : i32} : <>, <i32>
    %133 = muli %125, %132 {handshake.bb = 12 : ui32, handshake.name = "muli13"} : <i32>
    %134 = addi %127, %133 {handshake.bb = 12 : ui32, handshake.name = "addi13"} : <i32>
    %addressResult_92, %dataResult_93 = store[%134] %128 {handshake.bb = 12 : ui32, handshake.deps = #handshake<deps[<"load8" (3) [[0, 0], [0, 0]]>, <"store5" (3) [[0, 0], [0, 0]]>]>, handshake.name = "store4"} : <i32>, <i32>
    %135 = br %result_90 {handshake.bb = 12 : ui32, handshake.name = "br13"} : <>
    %trueResult_94, %falseResult_95 = cond_br %156, %155 {handshake.bb = 13 : ui32, handshake.name = "cond_br83"} : <i1>, <i32>
    %trueResult_96, %falseResult_97 = cond_br %156, %139 {handshake.bb = 13 : ui32, handshake.name = "cond_br84"} : <i1>, <i32>
    %trueResult_98, %falseResult_99 = cond_br %156, %138 {handshake.bb = 13 : ui32, handshake.name = "cond_br85"} : <i1>, <i32>
    %136 = constant %arg14 {ftd.imerge, handshake.bb = 13 : ui32, handshake.name = "constant71", value = false} : <>, <i1>
    %137 = merge %136, %156 {ftd.imerge, handshake.bb = 13 : ui32, handshake.name = "merge38"} : <i1>
    %138 = mux %137 [%125, %trueResult_98] {ftd.regen, handshake.bb = 13 : ui32, handshake.name = "mux41"} : <i1>, <i32>
    %139 = mux %137 [%127, %trueResult_96] {ftd.regen, handshake.bb = 13 : ui32, handshake.name = "mux42"} : <i1>, <i32>
    %result_100, %index_101 = control_merge %135, %trueResult_110  {handshake.bb = 13 : ui32, handshake.name = "control_merge12"} : <>, <i1>
    %140 = mux %137 [%130, %trueResult_94] {ftd.phi, handshake.bb = 13 : ui32, handshake.name = "mux44"} : <i1>, <i32>
    %141 = source {handshake.bb = 13 : ui32, handshake.name = "source24"} : <>
    %142 = constant %141 {handshake.bb = 13 : ui32, handshake.name = "constant30", value = 7 : i32} : <>, <i32>
    %143 = source {handshake.bb = 13 : ui32, handshake.name = "source25"} : <>
    %144 = constant %143 {handshake.bb = 13 : ui32, handshake.name = "constant31", value = 1 : i32} : <>, <i32>
    %145 = muli %138, %142 {handshake.bb = 13 : ui32, handshake.name = "muli14"} : <i32>
    %146 = addi %140, %145 {handshake.bb = 13 : ui32, handshake.name = "addi14"} : <i32>
    %addressResult_102, %dataResult_103 = load[%146] %2#1 {handshake.bb = 13 : ui32, handshake.name = "load6"} : <i32>, <i32>
    %147 = muli %140, %142 {handshake.bb = 13 : ui32, handshake.name = "muli15"} : <i32>
    %148 = addi %139, %147 {handshake.bb = 13 : ui32, handshake.name = "addi15"} : <i32>
    %addressResult_104, %dataResult_105 = load[%148] %1#1 {handshake.bb = 13 : ui32, handshake.name = "load7"} : <i32>, <i32>
    %149 = muli %dataResult_103, %dataResult_105 {handshake.bb = 13 : ui32, handshake.name = "muli2"} : <i32>
    %150 = muli %138, %142 {handshake.bb = 13 : ui32, handshake.name = "muli16"} : <i32>
    %151 = addi %139, %150 {handshake.bb = 13 : ui32, handshake.name = "addi16"} : <i32>
    %addressResult_106, %dataResult_107 = load[%151] %0#0 {handshake.bb = 13 : ui32, handshake.deps = #handshake<deps[<"store5" (3) [[0, 0], [0, 0], [1, 6]]>, <"store5" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.name = "load8"} : <i32>, <i32>
    %152 = addi %dataResult_107, %149 {handshake.bb = 13 : ui32, handshake.name = "addi2"} : <i32>
    %153 = muli %138, %142 {handshake.bb = 13 : ui32, handshake.name = "muli17"} : <i32>
    %154 = addi %139, %153 {handshake.bb = 13 : ui32, handshake.name = "addi17"} : <i32>
    %addressResult_108, %dataResult_109 = store[%154] %152 {handshake.bb = 13 : ui32, handshake.deps = #handshake<deps[<"load8" (3) [[0, 0], [0, 0], [1, 6]]>, <"store5" (3) [[0, 0], [0, 0], [1, 6]]>]>, handshake.name = "store5"} : <i32>, <i32>
    %155 = addi %140, %144 {handshake.bb = 13 : ui32, handshake.name = "addi24"} : <i32>
    %156 = cmpi ult, %155, %142 {handshake.bb = 13 : ui32, handshake.name = "cmpi6"} : <i32>
    %trueResult_110, %falseResult_111 = cond_br %156, %result_100 {handshake.bb = 13 : ui32, handshake.name = "cond_br54"} : <i1>, <>
    %trueResult_112, %falseResult_113 = cond_br %162, %161 {handshake.bb = 14 : ui32, handshake.name = "cond_br86"} : <i1>, <i32>
    %trueResult_114, %falseResult_115 = cond_br %162, %126 {handshake.bb = 14 : ui32, handshake.name = "cond_br87"} : <i1>, <>
    %trueResult_116, %falseResult_117 = cond_br %162, %125 {handshake.bb = 14 : ui32, handshake.name = "cond_br88"} : <i1>, <i32>
    %result_118, %index_119 = control_merge %falseResult_111  {handshake.bb = 14 : ui32, handshake.name = "control_merge13"} : <>, <i1>
    %157 = source {handshake.bb = 14 : ui32, handshake.name = "source26"} : <>
    %158 = constant %157 {handshake.bb = 14 : ui32, handshake.name = "constant32", value = 7 : i32} : <>, <i32>
    %159 = source {handshake.bb = 14 : ui32, handshake.name = "source27"} : <>
    %160 = constant %159 {handshake.bb = 14 : ui32, handshake.name = "constant33", value = 1 : i32} : <>, <i32>
    %161 = addi %127, %160 {handshake.bb = 14 : ui32, handshake.name = "addi25"} : <i32>
    %162 = cmpi ult, %161, %158 {handshake.bb = 14 : ui32, handshake.name = "cmpi7"} : <i32>
    %trueResult_120, %falseResult_121 = cond_br %162, %result_118 {handshake.bb = 14 : ui32, handshake.name = "cond_br61"} : <i1>, <>
    %trueResult_122, %falseResult_123 = cond_br %168, %167 {handshake.bb = 15 : ui32, handshake.name = "cond_br89"} : <i1>, <i32>
    %trueResult_124, %falseResult_125 = cond_br %168, %118 {handshake.bb = 15 : ui32, handshake.name = "cond_br90"} : <i1>, <>
    %result_126, %index_127 = control_merge %falseResult_121  {handshake.bb = 15 : ui32, handshake.name = "control_merge14"} : <>, <i1>
    %163 = source {handshake.bb = 15 : ui32, handshake.name = "source28"} : <>
    %164 = constant %163 {handshake.bb = 15 : ui32, handshake.name = "constant34", value = 7 : i32} : <>, <i32>
    %165 = source {handshake.bb = 15 : ui32, handshake.name = "source29"} : <>
    %166 = constant %165 {handshake.bb = 15 : ui32, handshake.name = "constant35", value = 1 : i32} : <>, <i32>
    %167 = addi %119, %166 {handshake.bb = 15 : ui32, handshake.name = "addi26"} : <i32>
    %168 = cmpi ult, %167, %164 {handshake.bb = 15 : ui32, handshake.name = "cmpi8"} : <i32>
    %trueResult_128, %falseResult_129 = cond_br %168, %result_126 {handshake.bb = 15 : ui32, handshake.name = "cond_br64"} : <i1>, <>
    %result_130, %index_131 = control_merge %falseResult_129  {handshake.bb = 16 : ui32, handshake.name = "control_merge15"} : <>, <i1>
    end {handshake.bb = 16 : ui32, handshake.name = "end0"} %memEnd_5, %memEnd_3, %memEnd_1, %memEnd, %2#2, %1#2, %0#1, %arg14 : <>, <>, <>, <>, <>, <>, <>, <>
  }
}


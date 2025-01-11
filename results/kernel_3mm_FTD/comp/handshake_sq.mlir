module {
  handshake.func @kernel_3mm(%arg0: memref<49xi32>, %arg1: memref<49xi32>, %arg2: memref<49xi32>, %arg3: memref<49xi32>, %arg4: memref<49xi32>, %arg5: memref<49xi32>, %arg6: memref<49xi32>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, %arg12: !handshake.control<>, %arg13: !handshake.control<>, %arg14: !handshake.control<>, ...) -> (!handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "B", "C", "D", "E", "F", "G", "A_start", "B_start", "C_start", "D_start", "E_start", "F_start", "G_start", "start"], cfg.edges = "[0,1][7,8][14,12,15,cmpi7][2,3][9,7,10,cmpi4][4,2,5,cmpi1][11,12][6,7][13,13,14,cmpi6][1,2][8,8,9,cmpi3][15,11,16,cmpi8][3,3,4,cmpi0][10,6,11,cmpi5][5,1,6,cmpi2][12,13]", resNames = ["A_end", "B_end", "C_end", "D_end", "E_end", "F_end", "G_end", "end"]} {
    %0:2 = lsq[%arg6 : memref<49xi32>] (%arg13, %141#1, %addressResult_108, %dataResult_109, %160#1, %addressResult_130, %addressResult_132, %dataResult_133, %result_166)  {groupSizes = [1 : i32, 2 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %1:3 = lsq[%arg5 : memref<49xi32>] (%arg12, %77#1, %addressResult_56, %dataResult_57, %92#1, %addressResult_74, %addressResult_76, %dataResult_77, %159#1, %addressResult_128, %result_166)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.name = "lsq4"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %2:3 = lsq[%arg4 : memref<49xi32>] (%arg11, %17#1, %addressResult, %dataResult, %32#1, %addressResult_22, %addressResult_24, %dataResult_25, %158#1, %addressResult_126, %result_166)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.name = "lsq5"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg3 : memref<49xi32>] %arg10 (%addressResult_72) %result_166 {connectedBlocks = [8 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg2 : memref<49xi32>] %arg9 (%addressResult_70) %result_166 {connectedBlocks = [8 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_2, %memEnd_3 = mem_controller[%arg1 : memref<49xi32>] %arg8 (%addressResult_20) %result_166 {connectedBlocks = [3 : i32], handshake.name = "mem_controller6"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_4, %memEnd_5 = mem_controller[%arg0 : memref<49xi32>] %arg7 (%addressResult_18) %result_166 {connectedBlocks = [3 : i32], handshake.name = "mem_controller7"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %3 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %4 = constant %3 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %5 = br %arg14 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %6 = mux %8 [%arg14, %trueResult_40] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <>
    %7 = constant %arg14 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant37", value = false} : <>, <i1>
    %8 = merge %7, %65 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge1"} : <i1>
    %9 = mux %8 [%arg14, %trueResult_46] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %result, %index = control_merge %5, %trueResult_50  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %10 = mux %8 [%4, %trueResult_44] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %11 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %12 = constant %11 {handshake.bb = 1 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %13 = br %result {handshake.bb = 1 : ui32, handshake.name = "br6"} : <>
    %14 = constant %arg14 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant39", value = false} : <>, <i1>
    %15 = mux %16 [%6, %trueResult_28] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux9"} : <i1>, <>
    %16 = merge %14, %57 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge6"} : <i1>
    %17:2 = lazy_fork [2] %15 {handshake.bb = 2 : ui32, handshake.name = "lazy_fork0"} : <>
    %18 = mux %16 [%10, %trueResult_34] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %19 = mux %16 [%9, %trueResult_32] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux6"} : <i1>, <>
    %result_6, %index_7 = control_merge %13, %trueResult_38  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %20 = mux %16 [%12, %trueResult_30] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %21 = constant %19 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = 0 : i32} : <>, <i32>
    %22 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %23 = constant %22 {handshake.bb = 2 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %24 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %25 = constant %24 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 7 : i32} : <>, <i32>
    %26 = muli %18, %25 {handshake.bb = 2 : ui32, handshake.name = "muli3"} : <i32>
    %27 = addi %20, %26 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i32>
    %addressResult, %dataResult = store[%27] %21 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0]]>, <"store1" (3) [[0, 0], [0, 0]]>, <"load6" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i32>, <i32>
    %28 = br %result_6 {handshake.bb = 2 : ui32, handshake.name = "br9"} : <>
    %trueResult, %falseResult = cond_br %51, %31 {handshake.bb = 3 : ui32, handshake.name = "cond_br94"} : <i1>, <>
    %trueResult_8, %falseResult_9 = cond_br %51, %32#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br95"} : <i1>, <>
    %29 = constant %arg14 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant42", value = false} : <>, <i1>
    %30 = merge %29, %51 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge9"} : <i1>
    %31 = mux %30 [%17#0, %trueResult] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux13"} : <i1>, <>
    %32:2 = lazy_fork [2] %31 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_10, %falseResult_11 = cond_br %51, %50 {handshake.bb = 3 : ui32, handshake.name = "cond_br65"} : <i1>, <i32>
    %trueResult_12, %falseResult_13 = cond_br %51, %34 {handshake.bb = 3 : ui32, handshake.name = "cond_br66"} : <i1>, <i32>
    %trueResult_14, %falseResult_15 = cond_br %51, %33 {handshake.bb = 3 : ui32, handshake.name = "cond_br67"} : <i1>, <i32>
    %33 = mux %30 [%18, %trueResult_14] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux11"} : <i1>, <i32>
    %34 = mux %30 [%20, %trueResult_12] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux12"} : <i1>, <i32>
    %result_16, %index_17 = control_merge %28, %trueResult_26  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %35 = mux %30 [%23, %trueResult_10] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux14"} : <i1>, <i32>
    %36 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %37 = constant %36 {handshake.bb = 3 : ui32, handshake.name = "constant8", value = 7 : i32} : <>, <i32>
    %38 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %39 = constant %38 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 1 : i32} : <>, <i32>
    %40 = muli %33, %37 {handshake.bb = 3 : ui32, handshake.name = "muli4"} : <i32>
    %41 = addi %35, %40 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i32>
    %addressResult_18, %dataResult_19 = load[%41] %outputs_4 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i32>, <i32>
    %42 = muli %35, %37 {handshake.bb = 3 : ui32, handshake.name = "muli5"} : <i32>
    %43 = addi %34, %42 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i32>
    %addressResult_20, %dataResult_21 = load[%43] %outputs_2 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i32>, <i32>
    %44 = muli %dataResult_19, %dataResult_21 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %45 = muli %33, %37 {handshake.bb = 3 : ui32, handshake.name = "muli6"} : <i32>
    %46 = addi %34, %45 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i32>
    %addressResult_22, %dataResult_23 = load[%46] %2#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load2"} : <i32>, <i32>
    %47 = addi %dataResult_23, %44 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %48 = muli %33, %37 {handshake.bb = 3 : ui32, handshake.name = "muli7"} : <i32>
    %49 = addi %34, %48 {handshake.bb = 3 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_24, %dataResult_25 = store[%49] %47 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"load6" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i32>, <i32>
    %50 = addi %35, %39 {handshake.bb = 3 : ui32, handshake.name = "addi18"} : <i32>
    %51 = cmpi ult, %50, %37 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_26, %falseResult_27 = cond_br %51, %result_16 {handshake.bb = 3 : ui32, handshake.name = "cond_br16"} : <i1>, <>
    %trueResult_28, %falseResult_29 = cond_br %57, %falseResult_9 {handshake.bb = 4 : ui32, handshake.name = "cond_br96"} : <i1>, <>
    %trueResult_30, %falseResult_31 = cond_br %57, %56 {handshake.bb = 4 : ui32, handshake.name = "cond_br68"} : <i1>, <i32>
    %trueResult_32, %falseResult_33 = cond_br %57, %19 {handshake.bb = 4 : ui32, handshake.name = "cond_br69"} : <i1>, <>
    %trueResult_34, %falseResult_35 = cond_br %57, %18 {handshake.bb = 4 : ui32, handshake.name = "cond_br70"} : <i1>, <i32>
    %result_36, %index_37 = control_merge %falseResult_27  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %52 = source {handshake.bb = 4 : ui32, handshake.name = "source6"} : <>
    %53 = constant %52 {handshake.bb = 4 : ui32, handshake.name = "constant10", value = 7 : i32} : <>, <i32>
    %54 = source {handshake.bb = 4 : ui32, handshake.name = "source7"} : <>
    %55 = constant %54 {handshake.bb = 4 : ui32, handshake.name = "constant11", value = 1 : i32} : <>, <i32>
    %56 = addi %20, %55 {handshake.bb = 4 : ui32, handshake.name = "addi19"} : <i32>
    %57 = cmpi ult, %56, %53 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_38, %falseResult_39 = cond_br %57, %result_36 {handshake.bb = 4 : ui32, handshake.name = "cond_br23"} : <i1>, <>
    %trueResult_40, %falseResult_41 = cond_br %65, %falseResult_29 {handshake.bb = 5 : ui32, handshake.name = "cond_br97"} : <i1>, <>
    %trueResult_42, %falseResult_43 = cond_br %65, %59 {handshake.bb = 5 : ui32, handshake.name = "cond_br71"} : <i1>, <i32>
    %trueResult_44, %falseResult_45 = cond_br %65, %64 {handshake.bb = 5 : ui32, handshake.name = "cond_br72"} : <i1>, <i32>
    %trueResult_46, %falseResult_47 = cond_br %65, %9 {handshake.bb = 5 : ui32, handshake.name = "cond_br73"} : <i1>, <>
    %result_48, %index_49 = control_merge %falseResult_39  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %58 = source {handshake.bb = 5 : ui32, handshake.name = "source8"} : <>
    %59 = constant %58 {handshake.bb = 5 : ui32, handshake.name = "constant12", value = 0 : i32} : <>, <i32>
    %60 = source {handshake.bb = 5 : ui32, handshake.name = "source9"} : <>
    %61 = constant %60 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = 7 : i32} : <>, <i32>
    %62 = source {handshake.bb = 5 : ui32, handshake.name = "source10"} : <>
    %63 = constant %62 {handshake.bb = 5 : ui32, handshake.name = "constant14", value = 1 : i32} : <>, <i32>
    %64 = addi %10, %63 {handshake.bb = 5 : ui32, handshake.name = "addi20"} : <i32>
    %65 = cmpi ult, %64, %61 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i32>
    %trueResult_50, %falseResult_51 = cond_br %65, %result_48 {handshake.bb = 5 : ui32, handshake.name = "cond_br27"} : <i1>, <>
    %66 = mux %68 [%arg14, %trueResult_92] {ftd.phi, handshake.bb = 6 : ui32, handshake.name = "mux23"} : <i1>, <>
    %67 = constant %arg14 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "constant47", value = false} : <>, <i1>
    %68 = merge %67, %125 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "merge12"} : <i1>
    %69 = mux %68 [%arg14, %trueResult_98] {ftd.regen, handshake.bb = 6 : ui32, handshake.name = "mux15"} : <i1>, <>
    %result_52, %index_53 = control_merge %falseResult_51, %trueResult_102  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    %70 = mux %68 [%falseResult_43, %trueResult_96] {ftd.phi, handshake.bb = 6 : ui32, handshake.name = "mux16"} : <i1>, <i32>
    %71 = source {handshake.bb = 6 : ui32, handshake.name = "source11"} : <>
    %72 = constant %71 {handshake.bb = 6 : ui32, handshake.name = "constant15", value = 0 : i32} : <>, <i32>
    %73 = br %result_52 {handshake.bb = 6 : ui32, handshake.name = "br10"} : <>
    %74 = mux %76 [%66, %trueResult_80] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux28"} : <i1>, <>
    %75 = constant %arg14 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "constant52", value = false} : <>, <i1>
    %76 = merge %75, %117 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "merge16"} : <i1>
    %77:2 = lazy_fork [2] %74 {handshake.bb = 7 : ui32, handshake.name = "lazy_fork2"} : <>
    %78 = mux %76 [%70, %trueResult_86] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux20"} : <i1>, <i32>
    %79 = mux %76 [%69, %trueResult_84] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux21"} : <i1>, <>
    %result_54, %index_55 = control_merge %73, %trueResult_90  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %80 = mux %76 [%72, %trueResult_82] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux22"} : <i1>, <i32>
    %81 = constant %79 {handshake.bb = 7 : ui32, handshake.name = "constant16", value = 0 : i32} : <>, <i32>
    %82 = source {handshake.bb = 7 : ui32, handshake.name = "source12"} : <>
    %83 = constant %82 {handshake.bb = 7 : ui32, handshake.name = "constant17", value = 0 : i32} : <>, <i32>
    %84 = source {handshake.bb = 7 : ui32, handshake.name = "source13"} : <>
    %85 = constant %84 {handshake.bb = 7 : ui32, handshake.name = "constant18", value = 7 : i32} : <>, <i32>
    %86 = muli %78, %85 {handshake.bb = 7 : ui32, handshake.name = "muli8"} : <i32>
    %87 = addi %80, %86 {handshake.bb = 7 : ui32, handshake.name = "addi8"} : <i32>
    %addressResult_56, %dataResult_57 = store[%87] %81 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"load5" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store2"} : <i32>, <i32>
    %88 = br %result_54 {handshake.bb = 7 : ui32, handshake.name = "br11"} : <>
    %trueResult_58, %falseResult_59 = cond_br %111, %91 {handshake.bb = 8 : ui32, handshake.name = "cond_br98"} : <i1>, <>
    %trueResult_60, %falseResult_61 = cond_br %111, %92#0 {handshake.bb = 8 : ui32, handshake.name = "cond_br99"} : <i1>, <>
    %89 = constant %arg14 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "constant53", value = false} : <>, <i1>
    %90 = merge %89, %111 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "merge20"} : <i1>
    %91 = mux %90 [%77#0, %trueResult_58] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux33"} : <i1>, <>
    %92:2 = lazy_fork [2] %91 {handshake.bb = 8 : ui32, handshake.name = "lazy_fork3"} : <>
    %trueResult_62, %falseResult_63 = cond_br %111, %110 {handshake.bb = 8 : ui32, handshake.name = "cond_br74"} : <i1>, <i32>
    %trueResult_64, %falseResult_65 = cond_br %111, %94 {handshake.bb = 8 : ui32, handshake.name = "cond_br75"} : <i1>, <i32>
    %trueResult_66, %falseResult_67 = cond_br %111, %93 {handshake.bb = 8 : ui32, handshake.name = "cond_br76"} : <i1>, <i32>
    %93 = mux %90 [%78, %trueResult_66] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux26"} : <i1>, <i32>
    %94 = mux %90 [%80, %trueResult_64] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux27"} : <i1>, <i32>
    %result_68, %index_69 = control_merge %88, %trueResult_78  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    %95 = mux %90 [%83, %trueResult_62] {ftd.phi, handshake.bb = 8 : ui32, handshake.name = "mux29"} : <i1>, <i32>
    %96 = source {handshake.bb = 8 : ui32, handshake.name = "source14"} : <>
    %97 = constant %96 {handshake.bb = 8 : ui32, handshake.name = "constant19", value = 7 : i32} : <>, <i32>
    %98 = source {handshake.bb = 8 : ui32, handshake.name = "source15"} : <>
    %99 = constant %98 {handshake.bb = 8 : ui32, handshake.name = "constant20", value = 1 : i32} : <>, <i32>
    %100 = muli %93, %97 {handshake.bb = 8 : ui32, handshake.name = "muli9"} : <i32>
    %101 = addi %95, %100 {handshake.bb = 8 : ui32, handshake.name = "addi9"} : <i32>
    %addressResult_70, %dataResult_71 = load[%101] %outputs_0 {handshake.bb = 8 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load3"} : <i32>, <i32>
    %102 = muli %95, %97 {handshake.bb = 8 : ui32, handshake.name = "muli10"} : <i32>
    %103 = addi %94, %102 {handshake.bb = 8 : ui32, handshake.name = "addi10"} : <i32>
    %addressResult_72, %dataResult_73 = load[%103] %outputs {handshake.bb = 8 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i32>, <i32>
    %104 = muli %dataResult_71, %dataResult_73 {handshake.bb = 8 : ui32, handshake.name = "muli1"} : <i32>
    %105 = muli %93, %97 {handshake.bb = 8 : ui32, handshake.name = "muli11"} : <i32>
    %106 = addi %94, %105 {handshake.bb = 8 : ui32, handshake.name = "addi11"} : <i32>
    %addressResult_74, %dataResult_75 = load[%106] %1#0 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load5"} : <i32>, <i32>
    %107 = addi %dataResult_75, %104 {handshake.bb = 8 : ui32, handshake.name = "addi1"} : <i32>
    %108 = muli %93, %97 {handshake.bb = 8 : ui32, handshake.name = "muli12"} : <i32>
    %109 = addi %94, %108 {handshake.bb = 8 : ui32, handshake.name = "addi12"} : <i32>
    %addressResult_76, %dataResult_77 = store[%109] %107 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"load5" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store3"} : <i32>, <i32>
    %110 = addi %95, %99 {handshake.bb = 8 : ui32, handshake.name = "addi21"} : <i32>
    %111 = cmpi ult, %110, %97 {handshake.bb = 8 : ui32, handshake.name = "cmpi3"} : <i32>
    %trueResult_78, %falseResult_79 = cond_br %111, %result_68 {handshake.bb = 8 : ui32, handshake.name = "cond_br35"} : <i1>, <>
    %trueResult_80, %falseResult_81 = cond_br %117, %falseResult_61 {handshake.bb = 9 : ui32, handshake.name = "cond_br100"} : <i1>, <>
    %trueResult_82, %falseResult_83 = cond_br %117, %116 {handshake.bb = 9 : ui32, handshake.name = "cond_br77"} : <i1>, <i32>
    %trueResult_84, %falseResult_85 = cond_br %117, %79 {handshake.bb = 9 : ui32, handshake.name = "cond_br78"} : <i1>, <>
    %trueResult_86, %falseResult_87 = cond_br %117, %78 {handshake.bb = 9 : ui32, handshake.name = "cond_br79"} : <i1>, <i32>
    %result_88, %index_89 = control_merge %falseResult_79  {handshake.bb = 9 : ui32, handshake.name = "control_merge8"} : <>, <i1>
    %112 = source {handshake.bb = 9 : ui32, handshake.name = "source16"} : <>
    %113 = constant %112 {handshake.bb = 9 : ui32, handshake.name = "constant21", value = 7 : i32} : <>, <i32>
    %114 = source {handshake.bb = 9 : ui32, handshake.name = "source17"} : <>
    %115 = constant %114 {handshake.bb = 9 : ui32, handshake.name = "constant22", value = 1 : i32} : <>, <i32>
    %116 = addi %80, %115 {handshake.bb = 9 : ui32, handshake.name = "addi22"} : <i32>
    %117 = cmpi ult, %116, %113 {handshake.bb = 9 : ui32, handshake.name = "cmpi4"} : <i32>
    %trueResult_90, %falseResult_91 = cond_br %117, %result_88 {handshake.bb = 9 : ui32, handshake.name = "cond_br42"} : <i1>, <>
    %trueResult_92, %falseResult_93 = cond_br %125, %falseResult_81 {handshake.bb = 10 : ui32, handshake.name = "cond_br101"} : <i1>, <>
    %trueResult_94, %falseResult_95 = cond_br %125, %119 {handshake.bb = 10 : ui32, handshake.name = "cond_br80"} : <i1>, <i32>
    %trueResult_96, %falseResult_97 = cond_br %125, %124 {handshake.bb = 10 : ui32, handshake.name = "cond_br81"} : <i1>, <i32>
    %trueResult_98, %falseResult_99 = cond_br %125, %69 {handshake.bb = 10 : ui32, handshake.name = "cond_br82"} : <i1>, <>
    %result_100, %index_101 = control_merge %falseResult_91  {handshake.bb = 10 : ui32, handshake.name = "control_merge9"} : <>, <i1>
    %118 = source {handshake.bb = 10 : ui32, handshake.name = "source18"} : <>
    %119 = constant %118 {handshake.bb = 10 : ui32, handshake.name = "constant23", value = 0 : i32} : <>, <i32>
    %120 = source {handshake.bb = 10 : ui32, handshake.name = "source19"} : <>
    %121 = constant %120 {handshake.bb = 10 : ui32, handshake.name = "constant24", value = 7 : i32} : <>, <i32>
    %122 = source {handshake.bb = 10 : ui32, handshake.name = "source20"} : <>
    %123 = constant %122 {handshake.bb = 10 : ui32, handshake.name = "constant25", value = 1 : i32} : <>, <i32>
    %124 = addi %70, %123 {handshake.bb = 10 : ui32, handshake.name = "addi23"} : <i32>
    %125 = cmpi ult, %124, %121 {handshake.bb = 10 : ui32, handshake.name = "cmpi5"} : <i32>
    %trueResult_102, %falseResult_103 = cond_br %125, %result_100 {handshake.bb = 10 : ui32, handshake.name = "cond_br46"} : <i1>, <>
    %126 = constant %arg14 {ftd.imerge, handshake.bb = 11 : ui32, handshake.name = "constant57", value = false} : <>, <i1>
    %127 = merge %126, %191 {ftd.imerge, handshake.bb = 11 : ui32, handshake.name = "merge24"} : <i1>
    %128 = mux %127 [%falseResult_93, %trueResult_156] {ftd.regen, handshake.bb = 11 : ui32, handshake.name = "mux39"} : <i1>, <>
    %129 = mux %127 [%falseResult_41, %trueResult_154] {ftd.regen, handshake.bb = 11 : ui32, handshake.name = "mux40"} : <i1>, <>
    %130 = mux %127 [%arg14, %trueResult_152] {ftd.phi, handshake.bb = 11 : ui32, handshake.name = "mux45"} : <i1>, <>
    %131 = mux %127 [%arg14, %trueResult_160] {ftd.regen, handshake.bb = 11 : ui32, handshake.name = "mux30"} : <i1>, <>
    %result_104, %index_105 = control_merge %falseResult_103, %trueResult_164  {handshake.bb = 11 : ui32, handshake.name = "control_merge10"} : <>, <i1>
    %132 = mux %127 [%falseResult_95, %trueResult_158] {ftd.phi, handshake.bb = 11 : ui32, handshake.name = "mux31"} : <i1>, <i32>
    %133 = source {handshake.bb = 11 : ui32, handshake.name = "source21"} : <>
    %134 = constant %133 {handshake.bb = 11 : ui32, handshake.name = "constant26", value = 0 : i32} : <>, <i32>
    %135 = br %result_104 {handshake.bb = 11 : ui32, handshake.name = "br12"} : <>
    %136 = constant %arg14 {ftd.imerge, handshake.bb = 12 : ui32, handshake.name = "constant61", value = false} : <>, <i1>
    %137 = merge %136, %185 {ftd.imerge, handshake.bb = 12 : ui32, handshake.name = "merge28"} : <i1>
    %138 = mux %137 [%128, %trueResult_138] {ftd.regen, handshake.bb = 12 : ui32, handshake.name = "mux46"} : <i1>, <>
    %139 = mux %137 [%129, %trueResult_136] {ftd.regen, handshake.bb = 12 : ui32, handshake.name = "mux47"} : <i1>, <>
    %140 = mux %137 [%130, %trueResult_140] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux49"} : <i1>, <>
    %141:2 = lazy_fork [2] %140 {handshake.bb = 12 : ui32, handshake.name = "lazy_fork4"} : <>
    %142 = mux %137 [%132, %trueResult_146] {ftd.regen, handshake.bb = 12 : ui32, handshake.name = "mux35"} : <i1>, <i32>
    %143 = mux %137 [%131, %trueResult_144] {ftd.regen, handshake.bb = 12 : ui32, handshake.name = "mux36"} : <i1>, <>
    %result_106, %index_107 = control_merge %135, %trueResult_150  {handshake.bb = 12 : ui32, handshake.name = "control_merge11"} : <>, <i1>
    %144 = mux %137 [%134, %trueResult_142] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux37"} : <i1>, <i32>
    %145 = constant %143 {handshake.bb = 12 : ui32, handshake.name = "constant27", value = 0 : i32} : <>, <i32>
    %146 = source {handshake.bb = 12 : ui32, handshake.name = "source22"} : <>
    %147 = constant %146 {handshake.bb = 12 : ui32, handshake.name = "constant28", value = 0 : i32} : <>, <i32>
    %148 = source {handshake.bb = 12 : ui32, handshake.name = "source23"} : <>
    %149 = constant %148 {handshake.bb = 12 : ui32, handshake.name = "constant29", value = 7 : i32} : <>, <i32>
    %150 = muli %142, %149 {handshake.bb = 12 : ui32, handshake.name = "muli13"} : <i32>
    %151 = addi %144, %150 {handshake.bb = 12 : ui32, handshake.name = "addi13"} : <i32>
    %addressResult_108, %dataResult_109 = store[%151] %145 {handshake.bb = 12 : ui32, handshake.deps = #handshake<deps[<"load8" (3) [[0, 0], [0, 0]]>, <"store5" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store4"} : <i32>, <i32>
    %152 = br %result_106 {handshake.bb = 12 : ui32, handshake.name = "br13"} : <>
    %trueResult_110, %falseResult_111 = cond_br %179, %157 {handshake.bb = 13 : ui32, handshake.name = "cond_br102"} : <i1>, <>
    %trueResult_112, %falseResult_113 = cond_br %179, %156 {handshake.bb = 13 : ui32, handshake.name = "cond_br103"} : <i1>, <>
    %trueResult_114, %falseResult_115 = cond_br %179, %155 {handshake.bb = 13 : ui32, handshake.name = "cond_br104"} : <i1>, <>
    %trueResult_116, %falseResult_117 = cond_br %179, %160#0 {handshake.bb = 13 : ui32, handshake.name = "cond_br105"} : <i1>, <>
    %153 = constant %arg14 {ftd.imerge, handshake.bb = 13 : ui32, handshake.name = "constant67", value = false} : <>, <i1>
    %154 = merge %153, %179 {ftd.imerge, handshake.bb = 13 : ui32, handshake.name = "merge34"} : <i1>
    %155 = mux %154 [%141#0, %trueResult_114] {ftd.regen, handshake.bb = 13 : ui32, handshake.name = "mux50"} : <i1>, <>
    %156 = mux %154 [%138, %trueResult_112] {ftd.regen, handshake.bb = 13 : ui32, handshake.name = "mux51"} : <i1>, <>
    %157 = mux %154 [%139, %trueResult_110] {ftd.regen, handshake.bb = 13 : ui32, handshake.name = "mux52"} : <i1>, <>
    %158:2 = lazy_fork [2] %157 {handshake.bb = 13 : ui32, handshake.name = "lazy_fork5"} : <>
    %159:2 = lazy_fork [2] %156 {handshake.bb = 13 : ui32, handshake.name = "lazy_fork6"} : <>
    %160:2 = lazy_fork [2] %155 {handshake.bb = 13 : ui32, handshake.name = "lazy_fork7"} : <>
    %trueResult_118, %falseResult_119 = cond_br %179, %178 {handshake.bb = 13 : ui32, handshake.name = "cond_br83"} : <i1>, <i32>
    %trueResult_120, %falseResult_121 = cond_br %179, %162 {handshake.bb = 13 : ui32, handshake.name = "cond_br84"} : <i1>, <i32>
    %trueResult_122, %falseResult_123 = cond_br %179, %161 {handshake.bb = 13 : ui32, handshake.name = "cond_br85"} : <i1>, <i32>
    %161 = mux %154 [%142, %trueResult_122] {ftd.regen, handshake.bb = 13 : ui32, handshake.name = "mux41"} : <i1>, <i32>
    %162 = mux %154 [%144, %trueResult_120] {ftd.regen, handshake.bb = 13 : ui32, handshake.name = "mux42"} : <i1>, <i32>
    %result_124, %index_125 = control_merge %152, %trueResult_134  {handshake.bb = 13 : ui32, handshake.name = "control_merge12"} : <>, <i1>
    %163 = mux %154 [%147, %trueResult_118] {ftd.phi, handshake.bb = 13 : ui32, handshake.name = "mux44"} : <i1>, <i32>
    %164 = source {handshake.bb = 13 : ui32, handshake.name = "source24"} : <>
    %165 = constant %164 {handshake.bb = 13 : ui32, handshake.name = "constant30", value = 7 : i32} : <>, <i32>
    %166 = source {handshake.bb = 13 : ui32, handshake.name = "source25"} : <>
    %167 = constant %166 {handshake.bb = 13 : ui32, handshake.name = "constant31", value = 1 : i32} : <>, <i32>
    %168 = muli %161, %165 {handshake.bb = 13 : ui32, handshake.name = "muli14"} : <i32>
    %169 = addi %163, %168 {handshake.bb = 13 : ui32, handshake.name = "addi14"} : <i32>
    %addressResult_126, %dataResult_127 = load[%169] %2#1 {handshake.bb = 13 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load6"} : <i32>, <i32>
    %170 = muli %163, %165 {handshake.bb = 13 : ui32, handshake.name = "muli15"} : <i32>
    %171 = addi %162, %170 {handshake.bb = 13 : ui32, handshake.name = "addi15"} : <i32>
    %addressResult_128, %dataResult_129 = load[%171] %1#1 {handshake.bb = 13 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load7"} : <i32>, <i32>
    %172 = muli %dataResult_127, %dataResult_129 {handshake.bb = 13 : ui32, handshake.name = "muli2"} : <i32>
    %173 = muli %161, %165 {handshake.bb = 13 : ui32, handshake.name = "muli16"} : <i32>
    %174 = addi %162, %173 {handshake.bb = 13 : ui32, handshake.name = "addi16"} : <i32>
    %addressResult_130, %dataResult_131 = load[%174] %0#0 {handshake.bb = 13 : ui32, handshake.deps = #handshake<deps[<"store5" (3) [[0, 0], [0, 0], [1, 6]]>, <"store5" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load8"} : <i32>, <i32>
    %175 = addi %dataResult_131, %172 {handshake.bb = 13 : ui32, handshake.name = "addi2"} : <i32>
    %176 = muli %161, %165 {handshake.bb = 13 : ui32, handshake.name = "muli17"} : <i32>
    %177 = addi %162, %176 {handshake.bb = 13 : ui32, handshake.name = "addi17"} : <i32>
    %addressResult_132, %dataResult_133 = store[%177] %175 {handshake.bb = 13 : ui32, handshake.deps = #handshake<deps[<"load8" (3) [[0, 0], [0, 0], [1, 6]]>, <"store5" (3) [[0, 0], [0, 0], [1, 6]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store5"} : <i32>, <i32>
    %178 = addi %163, %167 {handshake.bb = 13 : ui32, handshake.name = "addi24"} : <i32>
    %179 = cmpi ult, %178, %165 {handshake.bb = 13 : ui32, handshake.name = "cmpi6"} : <i32>
    %trueResult_134, %falseResult_135 = cond_br %179, %result_124 {handshake.bb = 13 : ui32, handshake.name = "cond_br54"} : <i1>, <>
    %trueResult_136, %falseResult_137 = cond_br %185, %139 {handshake.bb = 14 : ui32, handshake.name = "cond_br106"} : <i1>, <>
    %trueResult_138, %falseResult_139 = cond_br %185, %138 {handshake.bb = 14 : ui32, handshake.name = "cond_br107"} : <i1>, <>
    %trueResult_140, %falseResult_141 = cond_br %185, %falseResult_117 {handshake.bb = 14 : ui32, handshake.name = "cond_br108"} : <i1>, <>
    %trueResult_142, %falseResult_143 = cond_br %185, %184 {handshake.bb = 14 : ui32, handshake.name = "cond_br86"} : <i1>, <i32>
    %trueResult_144, %falseResult_145 = cond_br %185, %143 {handshake.bb = 14 : ui32, handshake.name = "cond_br87"} : <i1>, <>
    %trueResult_146, %falseResult_147 = cond_br %185, %142 {handshake.bb = 14 : ui32, handshake.name = "cond_br88"} : <i1>, <i32>
    %result_148, %index_149 = control_merge %falseResult_135  {handshake.bb = 14 : ui32, handshake.name = "control_merge13"} : <>, <i1>
    %180 = source {handshake.bb = 14 : ui32, handshake.name = "source26"} : <>
    %181 = constant %180 {handshake.bb = 14 : ui32, handshake.name = "constant32", value = 7 : i32} : <>, <i32>
    %182 = source {handshake.bb = 14 : ui32, handshake.name = "source27"} : <>
    %183 = constant %182 {handshake.bb = 14 : ui32, handshake.name = "constant33", value = 1 : i32} : <>, <i32>
    %184 = addi %144, %183 {handshake.bb = 14 : ui32, handshake.name = "addi25"} : <i32>
    %185 = cmpi ult, %184, %181 {handshake.bb = 14 : ui32, handshake.name = "cmpi7"} : <i32>
    %trueResult_150, %falseResult_151 = cond_br %185, %result_148 {handshake.bb = 14 : ui32, handshake.name = "cond_br61"} : <i1>, <>
    %trueResult_152, %falseResult_153 = cond_br %191, %falseResult_141 {handshake.bb = 15 : ui32, handshake.name = "cond_br109"} : <i1>, <>
    %trueResult_154, %falseResult_155 = cond_br %191, %129 {handshake.bb = 15 : ui32, handshake.name = "cond_br110"} : <i1>, <>
    %trueResult_156, %falseResult_157 = cond_br %191, %128 {handshake.bb = 15 : ui32, handshake.name = "cond_br111"} : <i1>, <>
    %trueResult_158, %falseResult_159 = cond_br %191, %190 {handshake.bb = 15 : ui32, handshake.name = "cond_br89"} : <i1>, <i32>
    %trueResult_160, %falseResult_161 = cond_br %191, %131 {handshake.bb = 15 : ui32, handshake.name = "cond_br90"} : <i1>, <>
    %result_162, %index_163 = control_merge %falseResult_151  {handshake.bb = 15 : ui32, handshake.name = "control_merge14"} : <>, <i1>
    %186 = source {handshake.bb = 15 : ui32, handshake.name = "source28"} : <>
    %187 = constant %186 {handshake.bb = 15 : ui32, handshake.name = "constant34", value = 7 : i32} : <>, <i32>
    %188 = source {handshake.bb = 15 : ui32, handshake.name = "source29"} : <>
    %189 = constant %188 {handshake.bb = 15 : ui32, handshake.name = "constant35", value = 1 : i32} : <>, <i32>
    %190 = addi %132, %189 {handshake.bb = 15 : ui32, handshake.name = "addi26"} : <i32>
    %191 = cmpi ult, %190, %187 {handshake.bb = 15 : ui32, handshake.name = "cmpi8"} : <i32>
    %trueResult_164, %falseResult_165 = cond_br %191, %result_162 {handshake.bb = 15 : ui32, handshake.name = "cond_br64"} : <i1>, <>
    %result_166, %index_167 = control_merge %falseResult_165  {handshake.bb = 16 : ui32, handshake.name = "control_merge15"} : <>, <i1>
    end {handshake.bb = 16 : ui32, handshake.name = "end0"} %memEnd_5, %memEnd_3, %memEnd_1, %memEnd, %2#2, %1#2, %0#1, %arg14 : <>, <>, <>, <>, <>, <>, <>, <>
  }
}


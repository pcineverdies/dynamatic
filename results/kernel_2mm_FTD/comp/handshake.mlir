module {
  handshake.func @kernel_2mm(%arg0: !handshake.channel<i32>, %arg1: !handshake.channel<i32>, %arg2: memref<49xi32>, %arg3: memref<49xi32>, %arg4: memref<49xi32>, %arg5: memref<49xi32>, %arg6: memref<49xi32>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, %arg12: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["alpha", "beta", "tmp", "A", "B", "C", "D", "tmp_start", "A_start", "B_start", "C_start", "D_start", "start"], cfg.edges = "[0,1][7,8][2,3][9,7,10,cmpi4][4,2,5,cmpi1][6,7][1,2][8,8,9,cmpi3][3,3,4,cmpi0][10,6,11,cmpi5][5,1,6,cmpi2]", resNames = ["out0", "tmp_end", "A_end", "B_end", "C_end", "D_end", "end"]} {
    %0:4 = lsq[%arg6 : memref<49xi32>] (%arg11, %result_52, %addressResult_54, %addressResult_56, %dataResult_57, %result_66, %addressResult_72, %addressResult_74, %dataResult_75, %result_100, %addressResult_102, %result_100)  {groupSizes = [2 : i32, 2 : i32, 1 : i32], handshake.name = "lsq0"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg5 : memref<49xi32>] %arg10 (%addressResult_70) %result_100 {connectedBlocks = [8 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg4 : memref<49xi32>] %arg9 (%addressResult_18) %result_100 {connectedBlocks = [3 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_2, %memEnd_3 = mem_controller[%arg3 : memref<49xi32>] %arg8 (%addressResult_16) %result_100 {connectedBlocks = [3 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %1:3 = lsq[%arg2 : memref<49xi32>] (%arg7, %result_4, %addressResult, %dataResult, %result_14, %addressResult_20, %addressResult_22, %dataResult_23, %result_66, %addressResult_68, %result_100)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.name = "lsq1"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %2 = constant %arg12 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %3 = br %arg12 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %4 = constant %arg12 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %5 = merge %4, %53 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %6 = mux %5 [%arg12, %trueResult_44] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %7 = mux %5 [%arg0, %trueResult_42] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %result, %index = control_merge %3, %trueResult_48  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %8 = mux %5 [%2, %trueResult_40] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux12"} : <i1>, <i32>
    %9 = constant %6 {handshake.bb = 1 : ui32, handshake.name = "constant5", value = 0 : i32} : <>, <i32>
    %10 = br %result {handshake.bb = 1 : ui32, handshake.name = "br6"} : <>
    %11 = constant %arg12 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant35", value = false} : <>, <i1>
    %12 = merge %11, %48 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge13"} : <i1>
    %13 = mux %12 [%7, %trueResult_32] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux17"} : <i1>, <i32>
    %14 = mux %12 [%6, %trueResult_30] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux20"} : <i1>, <>
    %15 = mux %12 [%8, %trueResult_28] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux21"} : <i1>, <i32>
    %result_4, %index_5 = control_merge %10, %trueResult_36  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %16 = mux %12 [%9, %trueResult_26] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux25"} : <i1>, <i32>
    %17 = constant %14 {handshake.bb = 2 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %18 = constant %14 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 0 : i32} : <>, <i32>
    %19 = constant %14 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 7 : i32} : <>, <i32>
    %20 = muli %15, %19 {handshake.bb = 2 : ui32, handshake.name = "muli4"} : <i32>
    %21 = addi %16, %20 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i32>
    %addressResult, %dataResult = store[%21] %17 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0]]>, <"store1" (3) [[0, 0], [0, 0]]>, <"load4" (1)>]>, handshake.name = "store0"} : <i32>, <i32>
    %22 = br %result_4 {handshake.bb = 2 : ui32, handshake.name = "br7"} : <>
    %trueResult, %falseResult = cond_br %44, %43 {handshake.bb = 3 : ui32, handshake.name = "cond_br82"} : <i1>, <i32>
    %trueResult_6, %falseResult_7 = cond_br %44, %28 {handshake.bb = 3 : ui32, handshake.name = "cond_br83"} : <i1>, <>
    %trueResult_8, %falseResult_9 = cond_br %44, %27 {handshake.bb = 3 : ui32, handshake.name = "cond_br84"} : <i1>, <i32>
    %trueResult_10, %falseResult_11 = cond_br %44, %26 {handshake.bb = 3 : ui32, handshake.name = "cond_br85"} : <i1>, <i32>
    %trueResult_12, %falseResult_13 = cond_br %44, %25 {handshake.bb = 3 : ui32, handshake.name = "cond_br86"} : <i1>, <i32>
    %23 = constant %arg12 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant48", value = false} : <>, <i1>
    %24 = merge %23, %44 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge26"} : <i1>
    %25 = mux %24 [%15, %trueResult_12] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux29"} : <i1>, <i32>
    %26 = mux %24 [%16, %trueResult_10] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux30"} : <i1>, <i32>
    %27 = mux %24 [%13, %trueResult_8] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux31"} : <i1>, <i32>
    %28 = mux %24 [%14, %trueResult_6] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux33"} : <i1>, <>
    %result_14, %index_15 = control_merge %22, %trueResult_24  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %29 = mux %24 [%18, %trueResult] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux35"} : <i1>, <i32>
    %30 = constant %28 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 7 : i32} : <>, <i32>
    %31 = constant %28 {handshake.bb = 3 : ui32, handshake.name = "constant10", value = 1 : i32} : <>, <i32>
    %32 = muli %25, %30 {handshake.bb = 3 : ui32, handshake.name = "muli5"} : <i32>
    %33 = addi %29, %32 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i32>
    %addressResult_16, %dataResult_17 = load[%33] %outputs_2 {handshake.bb = 3 : ui32, handshake.name = "load0"} : <i32>, <i32>
    %34 = muli %27, %dataResult_17 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %35 = muli %29, %30 {handshake.bb = 3 : ui32, handshake.name = "muli6"} : <i32>
    %36 = addi %26, %35 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i32>
    %addressResult_18, %dataResult_19 = load[%36] %outputs_0 {handshake.bb = 3 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %37 = muli %34, %dataResult_19 {handshake.bb = 3 : ui32, handshake.name = "muli1"} : <i32>
    %38 = muli %25, %30 {handshake.bb = 3 : ui32, handshake.name = "muli7"} : <i32>
    %39 = addi %26, %38 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i32>
    %addressResult_20, %dataResult_21 = load[%39] %1#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.name = "load2"} : <i32>, <i32>
    %40 = addi %dataResult_21, %37 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %41 = muli %25, %30 {handshake.bb = 3 : ui32, handshake.name = "muli8"} : <i32>
    %42 = addi %26, %41 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i32>
    %addressResult_22, %dataResult_23 = store[%42] %40 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"load4" (1)>]>, handshake.name = "store1"} : <i32>, <i32>
    %43 = addi %29, %31 {handshake.bb = 3 : ui32, handshake.name = "addi14"} : <i32>
    %44 = cmpi ult, %43, %30 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_24, %falseResult_25 = cond_br %44, %result_14 {handshake.bb = 3 : ui32, handshake.name = "cond_br16"} : <i1>, <>
    %trueResult_26, %falseResult_27 = cond_br %48, %47 {handshake.bb = 4 : ui32, handshake.name = "cond_br87"} : <i1>, <i32>
    %trueResult_28, %falseResult_29 = cond_br %48, %15 {handshake.bb = 4 : ui32, handshake.name = "cond_br88"} : <i1>, <i32>
    %trueResult_30, %falseResult_31 = cond_br %48, %14 {handshake.bb = 4 : ui32, handshake.name = "cond_br89"} : <i1>, <>
    %trueResult_32, %falseResult_33 = cond_br %48, %13 {handshake.bb = 4 : ui32, handshake.name = "cond_br90"} : <i1>, <i32>
    %result_34, %index_35 = control_merge %falseResult_25  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %45 = constant %14 {handshake.bb = 4 : ui32, handshake.name = "constant11", value = 7 : i32} : <>, <i32>
    %46 = constant %14 {handshake.bb = 4 : ui32, handshake.name = "constant12", value = 1 : i32} : <>, <i32>
    %47 = addi %16, %46 {handshake.bb = 4 : ui32, handshake.name = "addi15"} : <i32>
    %48 = cmpi ult, %47, %45 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_36, %falseResult_37 = cond_br %48, %result_34 {handshake.bb = 4 : ui32, handshake.name = "cond_br30"} : <i1>, <>
    %trueResult_38, %falseResult_39 = cond_br %53, %49 {handshake.bb = 5 : ui32, handshake.name = "cond_br91"} : <i1>, <i32>
    %trueResult_40, %falseResult_41 = cond_br %53, %52 {handshake.bb = 5 : ui32, handshake.name = "cond_br92"} : <i1>, <i32>
    %trueResult_42, %falseResult_43 = cond_br %53, %7 {handshake.bb = 5 : ui32, handshake.name = "cond_br93"} : <i1>, <i32>
    %trueResult_44, %falseResult_45 = cond_br %53, %6 {handshake.bb = 5 : ui32, handshake.name = "cond_br94"} : <i1>, <>
    %result_46, %index_47 = control_merge %falseResult_37  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %49 = constant %6 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = 0 : i32} : <>, <i32>
    %50 = constant %6 {handshake.bb = 5 : ui32, handshake.name = "constant14", value = 7 : i32} : <>, <i32>
    %51 = constant %6 {handshake.bb = 5 : ui32, handshake.name = "constant15", value = 1 : i32} : <>, <i32>
    %52 = addi %8, %51 {handshake.bb = 5 : ui32, handshake.name = "addi16"} : <i32>
    %53 = cmpi ult, %52, %50 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i32>
    %trueResult_48, %falseResult_49 = cond_br %53, %result_46 {handshake.bb = 5 : ui32, handshake.name = "cond_br45"} : <i1>, <>
    %54 = constant %arg12 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "constant58", value = false} : <>, <i1>
    %55 = merge %54, %102 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "merge36"} : <i1>
    %56 = mux %55 [%arg12, %trueResult_94] {ftd.regen, handshake.bb = 6 : ui32, handshake.name = "mux36"} : <i1>, <>
    %57 = mux %55 [%arg1, %trueResult_92] {ftd.regen, handshake.bb = 6 : ui32, handshake.name = "mux42"} : <i1>, <i32>
    %result_50, %index_51 = control_merge %falseResult_49, %trueResult_98  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    %58 = mux %55 [%falseResult_39, %trueResult_90] {ftd.phi, handshake.bb = 6 : ui32, handshake.name = "mux46"} : <i1>, <i32>
    %59 = constant %56 {handshake.bb = 6 : ui32, handshake.name = "constant16", value = 0 : i32} : <>, <i32>
    %60 = br %result_50 {handshake.bb = 6 : ui32, handshake.name = "br8"} : <>
    %61 = constant %arg12 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "constant69", value = false} : <>, <i1>
    %62 = merge %61, %98 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "merge47"} : <i1>
    %63 = mux %62 [%57, %trueResult_84] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux55"} : <i1>, <i32>
    %64 = mux %62 [%58, %trueResult_82] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux56"} : <i1>, <i32>
    %65 = mux %62 [%56, %trueResult_80] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux58"} : <i1>, <>
    %result_52, %index_53 = control_merge %60, %trueResult_88  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %66 = mux %62 [%59, %trueResult_78] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux59"} : <i1>, <i32>
    %67 = constant %65 {handshake.bb = 7 : ui32, handshake.name = "constant17", value = 0 : i32} : <>, <i32>
    %68 = constant %65 {handshake.bb = 7 : ui32, handshake.name = "constant18", value = 7 : i32} : <>, <i32>
    %69 = muli %64, %68 {handshake.bb = 7 : ui32, handshake.name = "muli9"} : <i32>
    %70 = addi %66, %69 {handshake.bb = 7 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_54, %dataResult_55 = load[%70] %0#0 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"store2" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>]>, handshake.name = "load3"} : <i32>, <i32>
    %71 = muli %dataResult_55, %63 {handshake.bb = 7 : ui32, handshake.name = "muli2"} : <i32>
    %72 = muli %64, %68 {handshake.bb = 7 : ui32, handshake.name = "muli10"} : <i32>
    %73 = addi %66, %72 {handshake.bb = 7 : ui32, handshake.name = "addi8"} : <i32>
    %addressResult_56, %dataResult_57 = store[%73] %71 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"load6" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>, <"load7" (1)>]>, handshake.name = "store2"} : <i32>, <i32>
    %74 = br %result_52 {handshake.bb = 7 : ui32, handshake.name = "br9"} : <>
    %trueResult_58, %falseResult_59 = cond_br %94, %93 {handshake.bb = 8 : ui32, handshake.name = "cond_br95"} : <i1>, <i32>
    %trueResult_60, %falseResult_61 = cond_br %94, %79 {handshake.bb = 8 : ui32, handshake.name = "cond_br96"} : <i1>, <>
    %trueResult_62, %falseResult_63 = cond_br %94, %78 {handshake.bb = 8 : ui32, handshake.name = "cond_br97"} : <i1>, <i32>
    %trueResult_64, %falseResult_65 = cond_br %94, %77 {handshake.bb = 8 : ui32, handshake.name = "cond_br98"} : <i1>, <i32>
    %75 = constant %arg12 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "constant82", value = false} : <>, <i1>
    %76 = merge %75, %94 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "merge60"} : <i1>
    %77 = mux %76 [%66, %trueResult_64] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux64"} : <i1>, <i32>
    %78 = mux %76 [%64, %trueResult_62] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux65"} : <i1>, <i32>
    %79 = mux %76 [%65, %trueResult_60] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux66"} : <i1>, <>
    %result_66, %index_67 = control_merge %74, %trueResult_76  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    %80 = mux %76 [%67, %trueResult_58] {ftd.phi, handshake.bb = 8 : ui32, handshake.name = "mux68"} : <i1>, <i32>
    %81 = constant %79 {handshake.bb = 8 : ui32, handshake.name = "constant19", value = 7 : i32} : <>, <i32>
    %82 = constant %79 {handshake.bb = 8 : ui32, handshake.name = "constant20", value = 1 : i32} : <>, <i32>
    %83 = muli %78, %81 {handshake.bb = 8 : ui32, handshake.name = "muli11"} : <i32>
    %84 = addi %80, %83 {handshake.bb = 8 : ui32, handshake.name = "addi9"} : <i32>
    %addressResult_68, %dataResult_69 = load[%84] %1#1 {handshake.bb = 8 : ui32, handshake.name = "load4"} : <i32>, <i32>
    %85 = muli %80, %81 {handshake.bb = 8 : ui32, handshake.name = "muli12"} : <i32>
    %86 = addi %77, %85 {handshake.bb = 8 : ui32, handshake.name = "addi10"} : <i32>
    %addressResult_70, %dataResult_71 = load[%86] %outputs {handshake.bb = 8 : ui32, handshake.name = "load5"} : <i32>, <i32>
    %87 = muli %dataResult_69, %dataResult_71 {handshake.bb = 8 : ui32, handshake.name = "muli3"} : <i32>
    %88 = muli %78, %81 {handshake.bb = 8 : ui32, handshake.name = "muli13"} : <i32>
    %89 = addi %77, %88 {handshake.bb = 8 : ui32, handshake.name = "addi11"} : <i32>
    %addressResult_72, %dataResult_73 = load[%89] %0#1 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.name = "load6"} : <i32>, <i32>
    %90 = addi %dataResult_73, %87 {handshake.bb = 8 : ui32, handshake.name = "addi1"} : <i32>
    %91 = muli %78, %81 {handshake.bb = 8 : ui32, handshake.name = "muli14"} : <i32>
    %92 = addi %77, %91 {handshake.bb = 8 : ui32, handshake.name = "addi12"} : <i32>
    %addressResult_74, %dataResult_75 = store[%92] %90 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"load6" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"load7" (1)>]>, handshake.name = "store3"} : <i32>, <i32>
    %93 = addi %80, %82 {handshake.bb = 8 : ui32, handshake.name = "addi17"} : <i32>
    %94 = cmpi ult, %93, %81 {handshake.bb = 8 : ui32, handshake.name = "cmpi3"} : <i32>
    %trueResult_76, %falseResult_77 = cond_br %94, %result_66 {handshake.bb = 8 : ui32, handshake.name = "cond_br55"} : <i1>, <>
    %trueResult_78, %falseResult_79 = cond_br %98, %97 {handshake.bb = 9 : ui32, handshake.name = "cond_br99"} : <i1>, <i32>
    %trueResult_80, %falseResult_81 = cond_br %98, %65 {handshake.bb = 9 : ui32, handshake.name = "cond_br100"} : <i1>, <>
    %trueResult_82, %falseResult_83 = cond_br %98, %64 {handshake.bb = 9 : ui32, handshake.name = "cond_br101"} : <i1>, <i32>
    %trueResult_84, %falseResult_85 = cond_br %98, %63 {handshake.bb = 9 : ui32, handshake.name = "cond_br102"} : <i1>, <i32>
    %result_86, %index_87 = control_merge %falseResult_77  {handshake.bb = 9 : ui32, handshake.name = "control_merge8"} : <>, <i1>
    %95 = constant %65 {handshake.bb = 9 : ui32, handshake.name = "constant21", value = 7 : i32} : <>, <i32>
    %96 = constant %65 {handshake.bb = 9 : ui32, handshake.name = "constant22", value = 1 : i32} : <>, <i32>
    %97 = addi %66, %96 {handshake.bb = 9 : ui32, handshake.name = "addi18"} : <i32>
    %98 = cmpi ult, %97, %95 {handshake.bb = 9 : ui32, handshake.name = "cmpi4"} : <i32>
    %trueResult_88, %falseResult_89 = cond_br %98, %result_86 {handshake.bb = 9 : ui32, handshake.name = "cond_br69"} : <i1>, <>
    %trueResult_90, %falseResult_91 = cond_br %102, %101 {handshake.bb = 10 : ui32, handshake.name = "cond_br103"} : <i1>, <i32>
    %trueResult_92, %falseResult_93 = cond_br %102, %57 {handshake.bb = 10 : ui32, handshake.name = "cond_br104"} : <i1>, <i32>
    %trueResult_94, %falseResult_95 = cond_br %102, %56 {handshake.bb = 10 : ui32, handshake.name = "cond_br105"} : <i1>, <>
    %result_96, %index_97 = control_merge %falseResult_89  {handshake.bb = 10 : ui32, handshake.name = "control_merge9"} : <>, <i1>
    %99 = constant %56 {handshake.bb = 10 : ui32, handshake.name = "constant23", value = 7 : i32} : <>, <i32>
    %100 = constant %56 {handshake.bb = 10 : ui32, handshake.name = "constant24", value = 1 : i32} : <>, <i32>
    %101 = addi %58, %100 {handshake.bb = 10 : ui32, handshake.name = "addi19"} : <i32>
    %102 = cmpi ult, %101, %99 {handshake.bb = 10 : ui32, handshake.name = "cmpi5"} : <i32>
    %trueResult_98, %falseResult_99 = cond_br %102, %result_96 {handshake.bb = 10 : ui32, handshake.name = "cond_br81"} : <i1>, <>
    %result_100, %index_101 = control_merge %falseResult_99  {handshake.bb = 11 : ui32, handshake.name = "control_merge10"} : <>, <i1>
    %103 = constant %arg12 {handshake.bb = 11 : ui32, handshake.name = "constant25", value = 48 : i32} : <>, <i32>
    %addressResult_102, %dataResult_103 = load[%103] %0#2 {handshake.bb = 11 : ui32, handshake.name = "load7"} : <i32>, <i32>
    end {handshake.bb = 11 : ui32, handshake.name = "end0"} %dataResult_103, %1#2, %memEnd_3, %memEnd_1, %memEnd, %0#3, %arg12 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


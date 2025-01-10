module {
  handshake.func @kernel_3mm(%arg0: memref<49xi32>, %arg1: memref<49xi32>, %arg2: memref<49xi32>, %arg3: memref<49xi32>, %arg4: memref<49xi32>, %arg5: memref<49xi32>, %arg6: memref<49xi32>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, %arg12: !handshake.control<>, %arg13: !handshake.control<>, %arg14: !handshake.control<>, ...) -> (!handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "B", "C", "D", "E", "F", "G", "A_start", "B_start", "C_start", "D_start", "E_start", "F_start", "G_start", "start"], resNames = ["A_end", "B_end", "C_end", "D_end", "E_end", "F_end", "G_end", "end"]} {
    %0:2 = lsq[%arg6 : memref<49xi32>] (%arg13, %result_82, %addressResult_84, %dataResult_85, %result_86, %addressResult_92, %addressResult_94, %dataResult_95, %result_118)  {groupSizes = [1 : i32, 2 : i32], handshake.name = "lsq0"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %1:3 = lsq[%arg5 : memref<49xi32>] (%arg12, %result_42, %addressResult_44, %dataResult_45, %result_46, %addressResult_52, %addressResult_54, %dataResult_55, %result_86, %addressResult_90, %result_118)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.name = "lsq1"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %2:3 = lsq[%arg4 : memref<49xi32>] (%arg11, %result_6, %addressResult, %dataResult, %result_8, %addressResult_14, %addressResult_16, %dataResult_17, %result_86, %addressResult_88, %result_118)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg3 : memref<49xi32>] %arg10 (%addressResult_50) %result_118 {connectedBlocks = [8 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg2 : memref<49xi32>] %arg9 (%addressResult_48) %result_118 {connectedBlocks = [8 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_2, %memEnd_3 = mem_controller[%arg1 : memref<49xi32>] %arg8 (%addressResult_12) %result_118 {connectedBlocks = [3 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_4, %memEnd_5 = mem_controller[%arg0 : memref<49xi32>] %arg7 (%addressResult_10) %result_118 {connectedBlocks = [3 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %3 = constant %arg14 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %4 = br %3 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <i32>
    %5 = br %arg14 {handshake.bb = 0 : ui32, handshake.name = "br6"} : <>
    %6 = mux %index [%4, %trueResult_34] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %result, %index = control_merge %5, %trueResult_36  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %7 = constant %result {handshake.bb = 1 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %8 = br %7 {handshake.bb = 1 : ui32, handshake.name = "br9"} : <i32>
    %9 = br %6 {handshake.bb = 1 : ui32, handshake.name = "br10"} : <i32>
    %10 = br %result {handshake.bb = 1 : ui32, handshake.name = "br11"} : <>
    %11 = mux %index_7 [%8, %trueResult_26] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %12 = mux %index_7 [%9, %trueResult_28] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %result_6, %index_7 = control_merge %10, %trueResult_30  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %13 = constant %result_6 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = 0 : i32} : <>, <i32>
    %14 = constant %result_6 {handshake.bb = 2 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %15 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %16 = constant %15 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 7 : i32} : <>, <i32>
    %17 = muli %12, %16 {handshake.bb = 2 : ui32, handshake.name = "muli3"} : <i32>
    %18 = addi %11, %17 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i32>
    %addressResult, %dataResult = store[%18] %13 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0]]>, <"store1" (3) [[0, 0], [0, 0]]>, <"load6" (1)>]>, handshake.name = "store0"} : <i32>, <i32>
    %19 = br %14 {handshake.bb = 2 : ui32, handshake.name = "br12"} : <i32>
    %20 = br %12 {handshake.bb = 2 : ui32, handshake.name = "br13"} : <i32>
    %21 = br %11 {handshake.bb = 2 : ui32, handshake.name = "br14"} : <i32>
    %22 = br %result_6 {handshake.bb = 2 : ui32, handshake.name = "br15"} : <>
    %23 = mux %index_9 [%19, %trueResult] {handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %24 = mux %index_9 [%20, %trueResult_18] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %25 = mux %index_9 [%21, %trueResult_20] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %result_8, %index_9 = control_merge %22, %trueResult_22  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %26 = source {handshake.bb = 3 : ui32, handshake.name = "source1"} : <>
    %27 = constant %26 {handshake.bb = 3 : ui32, handshake.name = "constant8", value = 7 : i32} : <>, <i32>
    %28 = source {handshake.bb = 3 : ui32, handshake.name = "source2"} : <>
    %29 = constant %28 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 1 : i32} : <>, <i32>
    %30 = muli %24, %27 {handshake.bb = 3 : ui32, handshake.name = "muli4"} : <i32>
    %31 = addi %23, %30 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i32>
    %addressResult_10, %dataResult_11 = load[%31] %outputs_4 {handshake.bb = 3 : ui32, handshake.name = "load0"} : <i32>, <i32>
    %32 = muli %23, %27 {handshake.bb = 3 : ui32, handshake.name = "muli5"} : <i32>
    %33 = addi %25, %32 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i32>
    %addressResult_12, %dataResult_13 = load[%33] %outputs_2 {handshake.bb = 3 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %34 = muli %dataResult_11, %dataResult_13 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %35 = muli %24, %27 {handshake.bb = 3 : ui32, handshake.name = "muli6"} : <i32>
    %36 = addi %25, %35 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i32>
    %addressResult_14, %dataResult_15 = load[%36] %2#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.name = "load2"} : <i32>, <i32>
    %37 = addi %dataResult_15, %34 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %38 = muli %24, %27 {handshake.bb = 3 : ui32, handshake.name = "muli7"} : <i32>
    %39 = addi %25, %38 {handshake.bb = 3 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_16, %dataResult_17 = store[%39] %37 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"load6" (1)>]>, handshake.name = "store1"} : <i32>, <i32>
    %40 = addi %23, %29 {handshake.bb = 3 : ui32, handshake.name = "addi18"} : <i32>
    %41 = cmpi ult, %40, %27 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult, %falseResult = cond_br %41, %40 {handshake.bb = 3 : ui32, handshake.name = "cond_br9"} : <i1>, <i32>
    %trueResult_18, %falseResult_19 = cond_br %41, %24 {handshake.bb = 3 : ui32, handshake.name = "cond_br10"} : <i1>, <i32>
    %trueResult_20, %falseResult_21 = cond_br %41, %25 {handshake.bb = 3 : ui32, handshake.name = "cond_br11"} : <i1>, <i32>
    %trueResult_22, %falseResult_23 = cond_br %41, %result_8 {handshake.bb = 3 : ui32, handshake.name = "cond_br12"} : <i1>, <>
    %42 = merge %falseResult_19 {handshake.bb = 4 : ui32, handshake.name = "merge0"} : <i32>
    %43 = merge %falseResult_21 {handshake.bb = 4 : ui32, handshake.name = "merge1"} : <i32>
    %result_24, %index_25 = control_merge %falseResult_23  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %44 = source {handshake.bb = 4 : ui32, handshake.name = "source3"} : <>
    %45 = constant %44 {handshake.bb = 4 : ui32, handshake.name = "constant10", value = 7 : i32} : <>, <i32>
    %46 = source {handshake.bb = 4 : ui32, handshake.name = "source4"} : <>
    %47 = constant %46 {handshake.bb = 4 : ui32, handshake.name = "constant11", value = 1 : i32} : <>, <i32>
    %48 = addi %43, %47 {handshake.bb = 4 : ui32, handshake.name = "addi19"} : <i32>
    %49 = cmpi ult, %48, %45 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_26, %falseResult_27 = cond_br %49, %48 {handshake.bb = 4 : ui32, handshake.name = "cond_br13"} : <i1>, <i32>
    %trueResult_28, %falseResult_29 = cond_br %49, %42 {handshake.bb = 4 : ui32, handshake.name = "cond_br14"} : <i1>, <i32>
    %trueResult_30, %falseResult_31 = cond_br %49, %result_24 {handshake.bb = 4 : ui32, handshake.name = "cond_br15"} : <i1>, <>
    %50 = merge %falseResult_29 {handshake.bb = 5 : ui32, handshake.name = "merge2"} : <i32>
    %result_32, %index_33 = control_merge %falseResult_31  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %51 = constant %result_32 {handshake.bb = 5 : ui32, handshake.name = "constant12", value = 0 : i32} : <>, <i32>
    %52 = source {handshake.bb = 5 : ui32, handshake.name = "source5"} : <>
    %53 = constant %52 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = 7 : i32} : <>, <i32>
    %54 = source {handshake.bb = 5 : ui32, handshake.name = "source6"} : <>
    %55 = constant %54 {handshake.bb = 5 : ui32, handshake.name = "constant14", value = 1 : i32} : <>, <i32>
    %56 = addi %50, %55 {handshake.bb = 5 : ui32, handshake.name = "addi20"} : <i32>
    %57 = cmpi ult, %56, %53 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i32>
    %trueResult_34, %falseResult_35 = cond_br %57, %56 {handshake.bb = 5 : ui32, handshake.name = "cond_br16"} : <i1>, <i32>
    %trueResult_36, %falseResult_37 = cond_br %57, %result_32 {handshake.bb = 5 : ui32, handshake.name = "cond_br17"} : <i1>, <>
    %trueResult_38, %falseResult_39 = cond_br %57, %51 {handshake.bb = 5 : ui32, handshake.name = "cond_br18"} : <i1>, <i32>
    %58 = mux %index_41 [%falseResult_39, %trueResult_74] {handshake.bb = 6 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %result_40, %index_41 = control_merge %falseResult_37, %trueResult_76  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    %59 = constant %result_40 {handshake.bb = 6 : ui32, handshake.name = "constant15", value = 0 : i32} : <>, <i32>
    %60 = br %59 {handshake.bb = 6 : ui32, handshake.name = "br16"} : <i32>
    %61 = br %58 {handshake.bb = 6 : ui32, handshake.name = "br17"} : <i32>
    %62 = br %result_40 {handshake.bb = 6 : ui32, handshake.name = "br18"} : <>
    %63 = mux %index_43 [%60, %trueResult_66] {handshake.bb = 7 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %64 = mux %index_43 [%61, %trueResult_68] {handshake.bb = 7 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %result_42, %index_43 = control_merge %62, %trueResult_70  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %65 = constant %result_42 {handshake.bb = 7 : ui32, handshake.name = "constant16", value = 0 : i32} : <>, <i32>
    %66 = constant %result_42 {handshake.bb = 7 : ui32, handshake.name = "constant17", value = 0 : i32} : <>, <i32>
    %67 = source {handshake.bb = 7 : ui32, handshake.name = "source7"} : <>
    %68 = constant %67 {handshake.bb = 7 : ui32, handshake.name = "constant18", value = 7 : i32} : <>, <i32>
    %69 = muli %64, %68 {handshake.bb = 7 : ui32, handshake.name = "muli8"} : <i32>
    %70 = addi %63, %69 {handshake.bb = 7 : ui32, handshake.name = "addi8"} : <i32>
    %addressResult_44, %dataResult_45 = store[%70] %65 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"load5" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>, <"load7" (1)>]>, handshake.name = "store2"} : <i32>, <i32>
    %71 = br %66 {handshake.bb = 7 : ui32, handshake.name = "br19"} : <i32>
    %72 = br %64 {handshake.bb = 7 : ui32, handshake.name = "br20"} : <i32>
    %73 = br %63 {handshake.bb = 7 : ui32, handshake.name = "br21"} : <i32>
    %74 = br %result_42 {handshake.bb = 7 : ui32, handshake.name = "br22"} : <>
    %75 = mux %index_47 [%71, %trueResult_56] {handshake.bb = 8 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %76 = mux %index_47 [%72, %trueResult_58] {handshake.bb = 8 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %77 = mux %index_47 [%73, %trueResult_60] {handshake.bb = 8 : ui32, handshake.name = "mux11"} : <i1>, <i32>
    %result_46, %index_47 = control_merge %74, %trueResult_62  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    %78 = source {handshake.bb = 8 : ui32, handshake.name = "source8"} : <>
    %79 = constant %78 {handshake.bb = 8 : ui32, handshake.name = "constant19", value = 7 : i32} : <>, <i32>
    %80 = source {handshake.bb = 8 : ui32, handshake.name = "source9"} : <>
    %81 = constant %80 {handshake.bb = 8 : ui32, handshake.name = "constant20", value = 1 : i32} : <>, <i32>
    %82 = muli %76, %79 {handshake.bb = 8 : ui32, handshake.name = "muli9"} : <i32>
    %83 = addi %75, %82 {handshake.bb = 8 : ui32, handshake.name = "addi9"} : <i32>
    %addressResult_48, %dataResult_49 = load[%83] %outputs_0 {handshake.bb = 8 : ui32, handshake.name = "load3"} : <i32>, <i32>
    %84 = muli %75, %79 {handshake.bb = 8 : ui32, handshake.name = "muli10"} : <i32>
    %85 = addi %77, %84 {handshake.bb = 8 : ui32, handshake.name = "addi10"} : <i32>
    %addressResult_50, %dataResult_51 = load[%85] %outputs {handshake.bb = 8 : ui32, handshake.name = "load4"} : <i32>, <i32>
    %86 = muli %dataResult_49, %dataResult_51 {handshake.bb = 8 : ui32, handshake.name = "muli1"} : <i32>
    %87 = muli %76, %79 {handshake.bb = 8 : ui32, handshake.name = "muli11"} : <i32>
    %88 = addi %77, %87 {handshake.bb = 8 : ui32, handshake.name = "addi11"} : <i32>
    %addressResult_52, %dataResult_53 = load[%88] %1#0 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.name = "load5"} : <i32>, <i32>
    %89 = addi %dataResult_53, %86 {handshake.bb = 8 : ui32, handshake.name = "addi1"} : <i32>
    %90 = muli %76, %79 {handshake.bb = 8 : ui32, handshake.name = "muli12"} : <i32>
    %91 = addi %77, %90 {handshake.bb = 8 : ui32, handshake.name = "addi12"} : <i32>
    %addressResult_54, %dataResult_55 = store[%91] %89 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"load5" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"load7" (1)>]>, handshake.name = "store3"} : <i32>, <i32>
    %92 = addi %75, %81 {handshake.bb = 8 : ui32, handshake.name = "addi21"} : <i32>
    %93 = cmpi ult, %92, %79 {handshake.bb = 8 : ui32, handshake.name = "cmpi3"} : <i32>
    %trueResult_56, %falseResult_57 = cond_br %93, %92 {handshake.bb = 8 : ui32, handshake.name = "cond_br19"} : <i1>, <i32>
    %trueResult_58, %falseResult_59 = cond_br %93, %76 {handshake.bb = 8 : ui32, handshake.name = "cond_br20"} : <i1>, <i32>
    %trueResult_60, %falseResult_61 = cond_br %93, %77 {handshake.bb = 8 : ui32, handshake.name = "cond_br21"} : <i1>, <i32>
    %trueResult_62, %falseResult_63 = cond_br %93, %result_46 {handshake.bb = 8 : ui32, handshake.name = "cond_br22"} : <i1>, <>
    %94 = merge %falseResult_59 {handshake.bb = 9 : ui32, handshake.name = "merge3"} : <i32>
    %95 = merge %falseResult_61 {handshake.bb = 9 : ui32, handshake.name = "merge4"} : <i32>
    %result_64, %index_65 = control_merge %falseResult_63  {handshake.bb = 9 : ui32, handshake.name = "control_merge8"} : <>, <i1>
    %96 = source {handshake.bb = 9 : ui32, handshake.name = "source10"} : <>
    %97 = constant %96 {handshake.bb = 9 : ui32, handshake.name = "constant21", value = 7 : i32} : <>, <i32>
    %98 = source {handshake.bb = 9 : ui32, handshake.name = "source11"} : <>
    %99 = constant %98 {handshake.bb = 9 : ui32, handshake.name = "constant22", value = 1 : i32} : <>, <i32>
    %100 = addi %95, %99 {handshake.bb = 9 : ui32, handshake.name = "addi22"} : <i32>
    %101 = cmpi ult, %100, %97 {handshake.bb = 9 : ui32, handshake.name = "cmpi4"} : <i32>
    %trueResult_66, %falseResult_67 = cond_br %101, %100 {handshake.bb = 9 : ui32, handshake.name = "cond_br23"} : <i1>, <i32>
    %trueResult_68, %falseResult_69 = cond_br %101, %94 {handshake.bb = 9 : ui32, handshake.name = "cond_br24"} : <i1>, <i32>
    %trueResult_70, %falseResult_71 = cond_br %101, %result_64 {handshake.bb = 9 : ui32, handshake.name = "cond_br25"} : <i1>, <>
    %102 = merge %falseResult_69 {handshake.bb = 10 : ui32, handshake.name = "merge5"} : <i32>
    %result_72, %index_73 = control_merge %falseResult_71  {handshake.bb = 10 : ui32, handshake.name = "control_merge9"} : <>, <i1>
    %103 = constant %result_72 {handshake.bb = 10 : ui32, handshake.name = "constant23", value = 0 : i32} : <>, <i32>
    %104 = source {handshake.bb = 10 : ui32, handshake.name = "source12"} : <>
    %105 = constant %104 {handshake.bb = 10 : ui32, handshake.name = "constant24", value = 7 : i32} : <>, <i32>
    %106 = source {handshake.bb = 10 : ui32, handshake.name = "source13"} : <>
    %107 = constant %106 {handshake.bb = 10 : ui32, handshake.name = "constant25", value = 1 : i32} : <>, <i32>
    %108 = addi %102, %107 {handshake.bb = 10 : ui32, handshake.name = "addi23"} : <i32>
    %109 = cmpi ult, %108, %105 {handshake.bb = 10 : ui32, handshake.name = "cmpi5"} : <i32>
    %trueResult_74, %falseResult_75 = cond_br %109, %108 {handshake.bb = 10 : ui32, handshake.name = "cond_br26"} : <i1>, <i32>
    %trueResult_76, %falseResult_77 = cond_br %109, %result_72 {handshake.bb = 10 : ui32, handshake.name = "cond_br27"} : <i1>, <>
    %trueResult_78, %falseResult_79 = cond_br %109, %103 {handshake.bb = 10 : ui32, handshake.name = "cond_br28"} : <i1>, <i32>
    %110 = mux %index_81 [%falseResult_79, %trueResult_114] {handshake.bb = 11 : ui32, handshake.name = "mux12"} : <i1>, <i32>
    %result_80, %index_81 = control_merge %falseResult_77, %trueResult_116  {handshake.bb = 11 : ui32, handshake.name = "control_merge10"} : <>, <i1>
    %111 = constant %result_80 {handshake.bb = 11 : ui32, handshake.name = "constant26", value = 0 : i32} : <>, <i32>
    %112 = br %111 {handshake.bb = 11 : ui32, handshake.name = "br23"} : <i32>
    %113 = br %110 {handshake.bb = 11 : ui32, handshake.name = "br24"} : <i32>
    %114 = br %result_80 {handshake.bb = 11 : ui32, handshake.name = "br25"} : <>
    %115 = mux %index_83 [%112, %trueResult_106] {handshake.bb = 12 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %116 = mux %index_83 [%113, %trueResult_108] {handshake.bb = 12 : ui32, handshake.name = "mux14"} : <i1>, <i32>
    %result_82, %index_83 = control_merge %114, %trueResult_110  {handshake.bb = 12 : ui32, handshake.name = "control_merge11"} : <>, <i1>
    %117 = constant %result_82 {handshake.bb = 12 : ui32, handshake.name = "constant27", value = 0 : i32} : <>, <i32>
    %118 = constant %result_82 {handshake.bb = 12 : ui32, handshake.name = "constant28", value = 0 : i32} : <>, <i32>
    %119 = source {handshake.bb = 12 : ui32, handshake.name = "source14"} : <>
    %120 = constant %119 {handshake.bb = 12 : ui32, handshake.name = "constant29", value = 7 : i32} : <>, <i32>
    %121 = muli %116, %120 {handshake.bb = 12 : ui32, handshake.name = "muli13"} : <i32>
    %122 = addi %115, %121 {handshake.bb = 12 : ui32, handshake.name = "addi13"} : <i32>
    %addressResult_84, %dataResult_85 = store[%122] %117 {handshake.bb = 12 : ui32, handshake.deps = #handshake<deps[<"load8" (3) [[0, 0], [0, 0]]>, <"store5" (3) [[0, 0], [0, 0]]>]>, handshake.name = "store4"} : <i32>, <i32>
    %123 = br %118 {handshake.bb = 12 : ui32, handshake.name = "br26"} : <i32>
    %124 = br %116 {handshake.bb = 12 : ui32, handshake.name = "br27"} : <i32>
    %125 = br %115 {handshake.bb = 12 : ui32, handshake.name = "br28"} : <i32>
    %126 = br %result_82 {handshake.bb = 12 : ui32, handshake.name = "br29"} : <>
    %127 = mux %index_87 [%123, %trueResult_96] {handshake.bb = 13 : ui32, handshake.name = "mux15"} : <i1>, <i32>
    %128 = mux %index_87 [%124, %trueResult_98] {handshake.bb = 13 : ui32, handshake.name = "mux16"} : <i1>, <i32>
    %129 = mux %index_87 [%125, %trueResult_100] {handshake.bb = 13 : ui32, handshake.name = "mux17"} : <i1>, <i32>
    %result_86, %index_87 = control_merge %126, %trueResult_102  {handshake.bb = 13 : ui32, handshake.name = "control_merge12"} : <>, <i1>
    %130 = source {handshake.bb = 13 : ui32, handshake.name = "source15"} : <>
    %131 = constant %130 {handshake.bb = 13 : ui32, handshake.name = "constant30", value = 7 : i32} : <>, <i32>
    %132 = source {handshake.bb = 13 : ui32, handshake.name = "source16"} : <>
    %133 = constant %132 {handshake.bb = 13 : ui32, handshake.name = "constant31", value = 1 : i32} : <>, <i32>
    %134 = muli %128, %131 {handshake.bb = 13 : ui32, handshake.name = "muli14"} : <i32>
    %135 = addi %127, %134 {handshake.bb = 13 : ui32, handshake.name = "addi14"} : <i32>
    %addressResult_88, %dataResult_89 = load[%135] %2#1 {handshake.bb = 13 : ui32, handshake.name = "load6"} : <i32>, <i32>
    %136 = muli %127, %131 {handshake.bb = 13 : ui32, handshake.name = "muli15"} : <i32>
    %137 = addi %129, %136 {handshake.bb = 13 : ui32, handshake.name = "addi15"} : <i32>
    %addressResult_90, %dataResult_91 = load[%137] %1#1 {handshake.bb = 13 : ui32, handshake.name = "load7"} : <i32>, <i32>
    %138 = muli %dataResult_89, %dataResult_91 {handshake.bb = 13 : ui32, handshake.name = "muli2"} : <i32>
    %139 = muli %128, %131 {handshake.bb = 13 : ui32, handshake.name = "muli16"} : <i32>
    %140 = addi %129, %139 {handshake.bb = 13 : ui32, handshake.name = "addi16"} : <i32>
    %addressResult_92, %dataResult_93 = load[%140] %0#0 {handshake.bb = 13 : ui32, handshake.deps = #handshake<deps[<"store5" (3) [[0, 0], [0, 0], [1, 6]]>, <"store5" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.name = "load8"} : <i32>, <i32>
    %141 = addi %dataResult_93, %138 {handshake.bb = 13 : ui32, handshake.name = "addi2"} : <i32>
    %142 = muli %128, %131 {handshake.bb = 13 : ui32, handshake.name = "muli17"} : <i32>
    %143 = addi %129, %142 {handshake.bb = 13 : ui32, handshake.name = "addi17"} : <i32>
    %addressResult_94, %dataResult_95 = store[%143] %141 {handshake.bb = 13 : ui32, handshake.deps = #handshake<deps[<"load8" (3) [[0, 0], [0, 0], [1, 6]]>, <"store5" (3) [[0, 0], [0, 0], [1, 6]]>]>, handshake.name = "store5"} : <i32>, <i32>
    %144 = addi %127, %133 {handshake.bb = 13 : ui32, handshake.name = "addi24"} : <i32>
    %145 = cmpi ult, %144, %131 {handshake.bb = 13 : ui32, handshake.name = "cmpi6"} : <i32>
    %trueResult_96, %falseResult_97 = cond_br %145, %144 {handshake.bb = 13 : ui32, handshake.name = "cond_br29"} : <i1>, <i32>
    %trueResult_98, %falseResult_99 = cond_br %145, %128 {handshake.bb = 13 : ui32, handshake.name = "cond_br30"} : <i1>, <i32>
    %trueResult_100, %falseResult_101 = cond_br %145, %129 {handshake.bb = 13 : ui32, handshake.name = "cond_br31"} : <i1>, <i32>
    %trueResult_102, %falseResult_103 = cond_br %145, %result_86 {handshake.bb = 13 : ui32, handshake.name = "cond_br32"} : <i1>, <>
    %146 = merge %falseResult_99 {handshake.bb = 14 : ui32, handshake.name = "merge6"} : <i32>
    %147 = merge %falseResult_101 {handshake.bb = 14 : ui32, handshake.name = "merge7"} : <i32>
    %result_104, %index_105 = control_merge %falseResult_103  {handshake.bb = 14 : ui32, handshake.name = "control_merge13"} : <>, <i1>
    %148 = source {handshake.bb = 14 : ui32, handshake.name = "source17"} : <>
    %149 = constant %148 {handshake.bb = 14 : ui32, handshake.name = "constant32", value = 7 : i32} : <>, <i32>
    %150 = source {handshake.bb = 14 : ui32, handshake.name = "source18"} : <>
    %151 = constant %150 {handshake.bb = 14 : ui32, handshake.name = "constant33", value = 1 : i32} : <>, <i32>
    %152 = addi %147, %151 {handshake.bb = 14 : ui32, handshake.name = "addi25"} : <i32>
    %153 = cmpi ult, %152, %149 {handshake.bb = 14 : ui32, handshake.name = "cmpi7"} : <i32>
    %trueResult_106, %falseResult_107 = cond_br %153, %152 {handshake.bb = 14 : ui32, handshake.name = "cond_br33"} : <i1>, <i32>
    %trueResult_108, %falseResult_109 = cond_br %153, %146 {handshake.bb = 14 : ui32, handshake.name = "cond_br34"} : <i1>, <i32>
    %trueResult_110, %falseResult_111 = cond_br %153, %result_104 {handshake.bb = 14 : ui32, handshake.name = "cond_br35"} : <i1>, <>
    %154 = merge %falseResult_109 {handshake.bb = 15 : ui32, handshake.name = "merge8"} : <i32>
    %result_112, %index_113 = control_merge %falseResult_111  {handshake.bb = 15 : ui32, handshake.name = "control_merge14"} : <>, <i1>
    %155 = source {handshake.bb = 15 : ui32, handshake.name = "source19"} : <>
    %156 = constant %155 {handshake.bb = 15 : ui32, handshake.name = "constant34", value = 7 : i32} : <>, <i32>
    %157 = source {handshake.bb = 15 : ui32, handshake.name = "source20"} : <>
    %158 = constant %157 {handshake.bb = 15 : ui32, handshake.name = "constant35", value = 1 : i32} : <>, <i32>
    %159 = addi %154, %158 {handshake.bb = 15 : ui32, handshake.name = "addi26"} : <i32>
    %160 = cmpi ult, %159, %156 {handshake.bb = 15 : ui32, handshake.name = "cmpi8"} : <i32>
    %trueResult_114, %falseResult_115 = cond_br %160, %159 {handshake.bb = 15 : ui32, handshake.name = "cond_br36"} : <i1>, <i32>
    %trueResult_116, %falseResult_117 = cond_br %160, %result_112 {handshake.bb = 15 : ui32, handshake.name = "cond_br37"} : <i1>, <>
    %result_118, %index_119 = control_merge %falseResult_117  {handshake.bb = 16 : ui32, handshake.name = "control_merge15"} : <>, <i1>
    end {handshake.bb = 16 : ui32, handshake.name = "end0"} %memEnd_5, %memEnd_3, %memEnd_1, %memEnd, %2#2, %1#2, %0#1, %arg14 : <>, <>, <>, <>, <>, <>, <>, <>
  }
}


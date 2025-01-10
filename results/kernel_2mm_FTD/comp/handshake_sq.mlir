module {
  handshake.func @kernel_2mm(%arg0: !handshake.channel<i32>, %arg1: !handshake.channel<i32>, %arg2: memref<49xi32>, %arg3: memref<49xi32>, %arg4: memref<49xi32>, %arg5: memref<49xi32>, %arg6: memref<49xi32>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, %arg12: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["alpha", "beta", "tmp", "A", "B", "C", "D", "tmp_start", "A_start", "B_start", "C_start", "D_start", "start"], cfg.edges = "[0,1][7,8][2,3][9,7,10,cmpi4][4,2,5,cmpi1][6,7][1,2][8,8,9,cmpi3][3,3,4,cmpi0][10,6,11,cmpi5][5,1,6,cmpi2]", resNames = ["out0", "tmp_end", "A_end", "B_end", "C_end", "D_end", "end"]} {
    %0:4 = lsq[%arg6 : memref<49xi32>] (%arg11, %68#1, %addressResult_44, %addressResult_46, %dataResult_47, %85#1, %addressResult_66, %addressResult_68, %dataResult_69, %112#1, %addressResult_92, %112#1)  {groupSizes = [2 : i32, 2 : i32, 1 : i32], handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg5 : memref<49xi32>] %arg10 (%addressResult_64) %arg12 {connectedBlocks = [8 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg4 : memref<49xi32>] %arg9 (%addressResult_18) %arg12 {connectedBlocks = [3 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_2, %memEnd_3 = mem_controller[%arg3 : memref<49xi32>] %arg8 (%addressResult_16) %arg12 {connectedBlocks = [3 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %1:3 = lsq[%arg2 : memref<49xi32>] (%arg7, %13#1, %addressResult, %dataResult, %26#1, %addressResult_20, %addressResult_22, %dataResult_23, %84#1, %addressResult_62, %arg12)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %2 = constant %arg12 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %3 = constant %arg12 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant4", value = false} : <>, <i1>
    %4 = mux %5 [%arg12, %trueResult_34] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <>
    %5 = merge %3, %55 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge1"} : <i1>
    %6 = mux %5 [%arg12, %trueResult_42] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %7 = mux %5 [%arg0, %trueResult_40] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %8 = mux %5 [%2, %trueResult_38] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux12"} : <i1>, <i32>
    %9 = constant %6 {handshake.bb = 1 : ui32, handshake.name = "constant5", value = 0 : i32} : <>, <i32>
    %10 = constant %arg12 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant28", value = false} : <>, <i1>
    %11 = mux %12 [%4, %trueResult_24] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux7"} : <i1>, <>
    %12 = merge %10, %50 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge4"} : <i1>
    %13:2 = lazy_fork [2] %11 {handshake.bb = 2 : ui32, handshake.name = "lazy_fork0"} : <>
    %14 = mux %12 [%7, %trueResult_32] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux17"} : <i1>, <i32>
    %15 = mux %12 [%6, %trueResult_30] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux20"} : <i1>, <>
    %16 = mux %12 [%8, %trueResult_28] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux21"} : <i1>, <i32>
    %17 = mux %12 [%9, %trueResult_26] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux25"} : <i1>, <i32>
    %18 = constant %15 {handshake.bb = 2 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %19 = constant %15 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 0 : i32} : <>, <i32>
    %20 = constant %15 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 7 : i32} : <>, <i32>
    %21 = muli %16, %20 {handshake.bb = 2 : ui32, handshake.name = "muli4"} : <i32>
    %22 = addi %17, %21 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i32>
    %addressResult, %dataResult = store[%22] %18 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0]]>, <"store1" (3) [[0, 0], [0, 0]]>, <"load4" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i32>, <i32>
    %trueResult, %falseResult = cond_br %46, %25 {handshake.bb = 3 : ui32, handshake.name = "cond_br48"} : <i1>, <>
    %trueResult_4, %falseResult_5 = cond_br %46, %26#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br49"} : <i1>, <>
    %23 = constant %arg12 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant29", value = false} : <>, <i1>
    %24 = merge %23, %46 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge7"} : <i1>
    %25 = mux %24 [%13#0, %trueResult] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux8"} : <i1>, <>
    %26:2 = lazy_fork [2] %25 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_6, %falseResult_7 = cond_br %46, %45 {handshake.bb = 3 : ui32, handshake.name = "cond_br82"} : <i1>, <i32>
    %trueResult_8, %falseResult_9 = cond_br %46, %30 {handshake.bb = 3 : ui32, handshake.name = "cond_br83"} : <i1>, <>
    %trueResult_10, %falseResult_11 = cond_br %46, %29 {handshake.bb = 3 : ui32, handshake.name = "cond_br84"} : <i1>, <i32>
    %trueResult_12, %falseResult_13 = cond_br %46, %28 {handshake.bb = 3 : ui32, handshake.name = "cond_br85"} : <i1>, <i32>
    %trueResult_14, %falseResult_15 = cond_br %46, %27 {handshake.bb = 3 : ui32, handshake.name = "cond_br86"} : <i1>, <i32>
    %27 = mux %24 [%16, %trueResult_14] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux29"} : <i1>, <i32>
    %28 = mux %24 [%17, %trueResult_12] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux30"} : <i1>, <i32>
    %29 = mux %24 [%14, %trueResult_10] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux31"} : <i1>, <i32>
    %30 = mux %24 [%15, %trueResult_8] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux33"} : <i1>, <>
    %31 = mux %24 [%19, %trueResult_6] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux35"} : <i1>, <i32>
    %32 = constant %30 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 7 : i32} : <>, <i32>
    %33 = constant %30 {handshake.bb = 3 : ui32, handshake.name = "constant10", value = 1 : i32} : <>, <i32>
    %34 = muli %27, %32 {handshake.bb = 3 : ui32, handshake.name = "muli5"} : <i32>
    %35 = addi %31, %34 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i32>
    %addressResult_16, %dataResult_17 = load[%35] %outputs_2 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i32>, <i32>
    %36 = muli %29, %dataResult_17 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %37 = muli %31, %32 {handshake.bb = 3 : ui32, handshake.name = "muli6"} : <i32>
    %38 = addi %28, %37 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i32>
    %addressResult_18, %dataResult_19 = load[%38] %outputs_0 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i32>, <i32>
    %39 = muli %36, %dataResult_19 {handshake.bb = 3 : ui32, handshake.name = "muli1"} : <i32>
    %40 = muli %27, %32 {handshake.bb = 3 : ui32, handshake.name = "muli7"} : <i32>
    %41 = addi %28, %40 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i32>
    %addressResult_20, %dataResult_21 = load[%41] %1#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load2"} : <i32>, <i32>
    %42 = addi %dataResult_21, %39 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %43 = muli %27, %32 {handshake.bb = 3 : ui32, handshake.name = "muli8"} : <i32>
    %44 = addi %28, %43 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i32>
    %addressResult_22, %dataResult_23 = store[%44] %42 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"load4" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i32>, <i32>
    %45 = addi %31, %33 {handshake.bb = 3 : ui32, handshake.name = "addi14"} : <i32>
    %46 = cmpi ult, %45, %32 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_24, %falseResult_25 = cond_br %50, %falseResult_5 {handshake.bb = 4 : ui32, handshake.name = "cond_br50"} : <i1>, <>
    %trueResult_26, %falseResult_27 = cond_br %50, %49 {handshake.bb = 4 : ui32, handshake.name = "cond_br87"} : <i1>, <i32>
    %trueResult_28, %falseResult_29 = cond_br %50, %16 {handshake.bb = 4 : ui32, handshake.name = "cond_br88"} : <i1>, <i32>
    %trueResult_30, %falseResult_31 = cond_br %50, %15 {handshake.bb = 4 : ui32, handshake.name = "cond_br89"} : <i1>, <>
    %trueResult_32, %falseResult_33 = cond_br %50, %14 {handshake.bb = 4 : ui32, handshake.name = "cond_br90"} : <i1>, <i32>
    %47 = constant %15 {handshake.bb = 4 : ui32, handshake.name = "constant11", value = 7 : i32} : <>, <i32>
    %48 = constant %15 {handshake.bb = 4 : ui32, handshake.name = "constant12", value = 1 : i32} : <>, <i32>
    %49 = addi %17, %48 {handshake.bb = 4 : ui32, handshake.name = "addi15"} : <i32>
    %50 = cmpi ult, %49, %47 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_34, %falseResult_35 = cond_br %55, %falseResult_25 {handshake.bb = 5 : ui32, handshake.name = "cond_br51"} : <i1>, <>
    %trueResult_36, %falseResult_37 = cond_br %55, %51 {handshake.bb = 5 : ui32, handshake.name = "cond_br91"} : <i1>, <i32>
    %trueResult_38, %falseResult_39 = cond_br %55, %54 {handshake.bb = 5 : ui32, handshake.name = "cond_br92"} : <i1>, <i32>
    %trueResult_40, %falseResult_41 = cond_br %55, %7 {handshake.bb = 5 : ui32, handshake.name = "cond_br93"} : <i1>, <i32>
    %trueResult_42, %falseResult_43 = cond_br %55, %6 {handshake.bb = 5 : ui32, handshake.name = "cond_br94"} : <i1>, <>
    %51 = constant %6 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = 0 : i32} : <>, <i32>
    %52 = constant %6 {handshake.bb = 5 : ui32, handshake.name = "constant14", value = 7 : i32} : <>, <i32>
    %53 = constant %6 {handshake.bb = 5 : ui32, handshake.name = "constant15", value = 1 : i32} : <>, <i32>
    %54 = addi %8, %53 {handshake.bb = 5 : ui32, handshake.name = "addi16"} : <i32>
    %55 = cmpi ult, %54, %52 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i32>
    %56 = constant %arg12 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "constant32", value = false} : <>, <i1>
    %57 = merge %56, %111 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "merge10"} : <i1>
    %58 = mux %57 [%falseResult_35, %trueResult_84] {ftd.regen, handshake.bb = 6 : ui32, handshake.name = "mux11"} : <i1>, <>
    %59 = mux %57 [%arg12, %trueResult_82] {ftd.phi, handshake.bb = 6 : ui32, handshake.name = "mux15"} : <i1>, <>
    %60 = mux %57 [%arg12, %trueResult_90] {ftd.regen, handshake.bb = 6 : ui32, handshake.name = "mux36"} : <i1>, <>
    %61 = mux %57 [%arg1, %trueResult_88] {ftd.regen, handshake.bb = 6 : ui32, handshake.name = "mux42"} : <i1>, <i32>
    %62 = mux %57 [%falseResult_37, %trueResult_86] {ftd.phi, handshake.bb = 6 : ui32, handshake.name = "mux46"} : <i1>, <i32>
    %63 = constant %60 {handshake.bb = 6 : ui32, handshake.name = "constant16", value = 0 : i32} : <>, <i32>
    %64 = constant %arg12 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "constant37", value = false} : <>, <i1>
    %65 = merge %64, %107 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "merge15"} : <i1>
    %66 = mux %65 [%58, %trueResult_72] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux16"} : <i1>, <>
    %67 = mux %65 [%59, %trueResult_70] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux22"} : <i1>, <>
    %68:2 = lazy_fork [2] %67 {handshake.bb = 7 : ui32, handshake.name = "lazy_fork2"} : <>
    %69 = mux %65 [%61, %trueResult_80] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux55"} : <i1>, <i32>
    %70 = mux %65 [%62, %trueResult_78] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux56"} : <i1>, <i32>
    %71 = mux %65 [%60, %trueResult_76] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux58"} : <i1>, <>
    %72 = mux %65 [%63, %trueResult_74] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux59"} : <i1>, <i32>
    %73 = constant %71 {handshake.bb = 7 : ui32, handshake.name = "constant17", value = 0 : i32} : <>, <i32>
    %74 = constant %71 {handshake.bb = 7 : ui32, handshake.name = "constant18", value = 7 : i32} : <>, <i32>
    %75 = muli %70, %74 {handshake.bb = 7 : ui32, handshake.name = "muli9"} : <i32>
    %76 = addi %72, %75 {handshake.bb = 7 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_44, %dataResult_45 = load[%76] %0#0 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"store2" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i32>, <i32>
    %77 = muli %dataResult_45, %69 {handshake.bb = 7 : ui32, handshake.name = "muli2"} : <i32>
    %78 = muli %70, %74 {handshake.bb = 7 : ui32, handshake.name = "muli10"} : <i32>
    %79 = addi %72, %78 {handshake.bb = 7 : ui32, handshake.name = "addi8"} : <i32>
    %addressResult_46, %dataResult_47 = store[%79] %77 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"load6" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store2"} : <i32>, <i32>
    %trueResult_48, %falseResult_49 = cond_br %103, %83 {handshake.bb = 8 : ui32, handshake.name = "cond_br52"} : <i1>, <>
    %trueResult_50, %falseResult_51 = cond_br %103, %82 {handshake.bb = 8 : ui32, handshake.name = "cond_br53"} : <i1>, <>
    %trueResult_52, %falseResult_53 = cond_br %103, %85#0 {handshake.bb = 8 : ui32, handshake.name = "cond_br54"} : <i1>, <>
    %80 = constant %arg12 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "constant41", value = false} : <>, <i1>
    %81 = merge %80, %103 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "merge19"} : <i1>
    %82 = mux %81 [%68#0, %trueResult_50] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux23"} : <i1>, <>
    %83 = mux %81 [%66, %trueResult_48] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux24"} : <i1>, <>
    %84:2 = lazy_fork [2] %83 {handshake.bb = 8 : ui32, handshake.name = "lazy_fork3"} : <>
    %85:2 = lazy_fork [2] %82 {handshake.bb = 8 : ui32, handshake.name = "lazy_fork4"} : <>
    %trueResult_54, %falseResult_55 = cond_br %103, %102 {handshake.bb = 8 : ui32, handshake.name = "cond_br95"} : <i1>, <i32>
    %trueResult_56, %falseResult_57 = cond_br %103, %88 {handshake.bb = 8 : ui32, handshake.name = "cond_br96"} : <i1>, <>
    %trueResult_58, %falseResult_59 = cond_br %103, %87 {handshake.bb = 8 : ui32, handshake.name = "cond_br97"} : <i1>, <i32>
    %trueResult_60, %falseResult_61 = cond_br %103, %86 {handshake.bb = 8 : ui32, handshake.name = "cond_br98"} : <i1>, <i32>
    %86 = mux %81 [%72, %trueResult_60] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux64"} : <i1>, <i32>
    %87 = mux %81 [%70, %trueResult_58] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux65"} : <i1>, <i32>
    %88 = mux %81 [%71, %trueResult_56] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux66"} : <i1>, <>
    %89 = mux %81 [%73, %trueResult_54] {ftd.phi, handshake.bb = 8 : ui32, handshake.name = "mux68"} : <i1>, <i32>
    %90 = constant %88 {handshake.bb = 8 : ui32, handshake.name = "constant19", value = 7 : i32} : <>, <i32>
    %91 = constant %88 {handshake.bb = 8 : ui32, handshake.name = "constant20", value = 1 : i32} : <>, <i32>
    %92 = muli %87, %90 {handshake.bb = 8 : ui32, handshake.name = "muli11"} : <i32>
    %93 = addi %89, %92 {handshake.bb = 8 : ui32, handshake.name = "addi9"} : <i32>
    %addressResult_62, %dataResult_63 = load[%93] %1#1 {handshake.bb = 8 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load4"} : <i32>, <i32>
    %94 = muli %89, %90 {handshake.bb = 8 : ui32, handshake.name = "muli12"} : <i32>
    %95 = addi %86, %94 {handshake.bb = 8 : ui32, handshake.name = "addi10"} : <i32>
    %addressResult_64, %dataResult_65 = load[%95] %outputs {handshake.bb = 8 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load5"} : <i32>, <i32>
    %96 = muli %dataResult_63, %dataResult_65 {handshake.bb = 8 : ui32, handshake.name = "muli3"} : <i32>
    %97 = muli %87, %90 {handshake.bb = 8 : ui32, handshake.name = "muli13"} : <i32>
    %98 = addi %86, %97 {handshake.bb = 8 : ui32, handshake.name = "addi11"} : <i32>
    %addressResult_66, %dataResult_67 = load[%98] %0#1 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load6"} : <i32>, <i32>
    %99 = addi %dataResult_67, %96 {handshake.bb = 8 : ui32, handshake.name = "addi1"} : <i32>
    %100 = muli %87, %90 {handshake.bb = 8 : ui32, handshake.name = "muli14"} : <i32>
    %101 = addi %86, %100 {handshake.bb = 8 : ui32, handshake.name = "addi12"} : <i32>
    %addressResult_68, %dataResult_69 = store[%101] %99 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"load6" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store3"} : <i32>, <i32>
    %102 = addi %89, %91 {handshake.bb = 8 : ui32, handshake.name = "addi17"} : <i32>
    %103 = cmpi ult, %102, %90 {handshake.bb = 8 : ui32, handshake.name = "cmpi3"} : <i32>
    %trueResult_70, %falseResult_71 = cond_br %107, %falseResult_53 {handshake.bb = 9 : ui32, handshake.name = "cond_br56"} : <i1>, <>
    %trueResult_72, %falseResult_73 = cond_br %107, %66 {handshake.bb = 9 : ui32, handshake.name = "cond_br57"} : <i1>, <>
    %trueResult_74, %falseResult_75 = cond_br %107, %106 {handshake.bb = 9 : ui32, handshake.name = "cond_br99"} : <i1>, <i32>
    %trueResult_76, %falseResult_77 = cond_br %107, %71 {handshake.bb = 9 : ui32, handshake.name = "cond_br100"} : <i1>, <>
    %trueResult_78, %falseResult_79 = cond_br %107, %70 {handshake.bb = 9 : ui32, handshake.name = "cond_br101"} : <i1>, <i32>
    %trueResult_80, %falseResult_81 = cond_br %107, %69 {handshake.bb = 9 : ui32, handshake.name = "cond_br102"} : <i1>, <i32>
    %104 = constant %71 {handshake.bb = 9 : ui32, handshake.name = "constant21", value = 7 : i32} : <>, <i32>
    %105 = constant %71 {handshake.bb = 9 : ui32, handshake.name = "constant22", value = 1 : i32} : <>, <i32>
    %106 = addi %72, %105 {handshake.bb = 9 : ui32, handshake.name = "addi18"} : <i32>
    %107 = cmpi ult, %106, %104 {handshake.bb = 9 : ui32, handshake.name = "cmpi4"} : <i32>
    %trueResult_82, %falseResult_83 = cond_br %111, %falseResult_71 {handshake.bb = 10 : ui32, handshake.name = "cond_br58"} : <i1>, <>
    %trueResult_84, %falseResult_85 = cond_br %111, %58 {handshake.bb = 10 : ui32, handshake.name = "cond_br59"} : <i1>, <>
    %trueResult_86, %falseResult_87 = cond_br %111, %110 {handshake.bb = 10 : ui32, handshake.name = "cond_br103"} : <i1>, <i32>
    %trueResult_88, %falseResult_89 = cond_br %111, %61 {handshake.bb = 10 : ui32, handshake.name = "cond_br104"} : <i1>, <i32>
    %trueResult_90, %falseResult_91 = cond_br %111, %60 {handshake.bb = 10 : ui32, handshake.name = "cond_br105"} : <i1>, <>
    %108 = constant %60 {handshake.bb = 10 : ui32, handshake.name = "constant23", value = 7 : i32} : <>, <i32>
    %109 = constant %60 {handshake.bb = 10 : ui32, handshake.name = "constant24", value = 1 : i32} : <>, <i32>
    %110 = addi %62, %109 {handshake.bb = 10 : ui32, handshake.name = "addi19"} : <i32>
    %111 = cmpi ult, %110, %108 {handshake.bb = 10 : ui32, handshake.name = "cmpi5"} : <i32>
    %112:2 = lazy_fork [2] %falseResult_83 {handshake.bb = 11 : ui32, handshake.name = "lazy_fork5"} : <>
    %113 = constant %arg12 {handshake.bb = 11 : ui32, handshake.name = "constant25", value = 48 : i32} : <>, <i32>
    %addressResult_92, %dataResult_93 = load[%113] %0#2 {handshake.bb = 11 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load7"} : <i32>, <i32>
    end {handshake.bb = 11 : ui32, handshake.name = "end0"} %dataResult_93, %1#2, %memEnd_3, %memEnd_1, %memEnd, %0#3, %arg12 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


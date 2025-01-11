module {
  handshake.func @kernel_2mm(%arg0: !handshake.channel<i32>, %arg1: !handshake.channel<i32>, %arg2: memref<49xi32>, %arg3: memref<49xi32>, %arg4: memref<49xi32>, %arg5: memref<49xi32>, %arg6: memref<49xi32>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, %arg12: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["alpha", "beta", "tmp", "A", "B", "C", "D", "tmp_start", "A_start", "B_start", "C_start", "D_start", "start"], cfg.edges = "[0,1][7,8][2,3][9,7,10,cmpi4][4,2,5,cmpi1][6,7][1,2][8,8,9,cmpi3][3,3,4,cmpi0][10,6,11,cmpi5][5,1,6,cmpi2]", resNames = ["out0", "tmp_end", "A_end", "B_end", "C_end", "D_end", "end"]} {
    %0:4 = lsq[%arg6 : memref<49xi32>] (%arg11, %78#1, %addressResult_42, %addressResult_44, %dataResult_45, %96#1, %addressResult_62, %addressResult_64, %dataResult_65, %128#1, %addressResult_84, %128#1)  {groupSizes = [2 : i32, 2 : i32, 1 : i32], handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg5 : memref<49xi32>] %arg10 (%addressResult_60) %arg12 {connectedBlocks = [8 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg4 : memref<49xi32>] %arg9 (%addressResult_16) %arg12 {connectedBlocks = [3 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_2, %memEnd_3 = mem_controller[%arg3 : memref<49xi32>] %arg8 (%addressResult_14) %arg12 {connectedBlocks = [3 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %1:3 = lsq[%arg2 : memref<49xi32>] (%arg7, %15#1, %addressResult, %dataResult, %30#1, %addressResult_18, %addressResult_20, %dataResult_21, %95#1, %addressResult_58, %arg12)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %2 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %3 = constant %2 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %4 = constant %arg12 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant26", value = false} : <>, <i1>
    %5 = mux %6 [%arg12, %trueResult_32] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux6"} : <i1>, <>
    %6 = merge %4, %65 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge1"} : <i1>
    %7 = mux %6 [%arg0, %trueResult_40] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %8 = mux %6 [%arg12, %trueResult_38] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <>
    %9 = mux %6 [%3, %trueResult_36] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %10 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %11 = constant %10 {handshake.bb = 1 : ui32, handshake.name = "constant5", value = 0 : i32} : <>, <i32>
    %12 = constant %arg12 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant29", value = false} : <>, <i1>
    %13 = mux %14 [%5, %trueResult_22] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux12"} : <i1>, <>
    %14 = merge %12, %57 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge5"} : <i1>
    %15:2 = lazy_fork [2] %13 {handshake.bb = 2 : ui32, handshake.name = "lazy_fork0"} : <>
    %16 = mux %14 [%7, %trueResult_30] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %17 = mux %14 [%9, %trueResult_28] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %18 = mux %14 [%8, %trueResult_26] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux8"} : <i1>, <>
    %19 = mux %14 [%11, %trueResult_24] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %20 = constant %18 {handshake.bb = 2 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %21 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %22 = constant %21 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 0 : i32} : <>, <i32>
    %23 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %24 = constant %23 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 7 : i32} : <>, <i32>
    %25 = muli %17, %24 {handshake.bb = 2 : ui32, handshake.name = "muli4"} : <i32>
    %26 = addi %19, %25 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i32>
    %addressResult, %dataResult = store[%26] %20 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0]]>, <"store1" (3) [[0, 0], [0, 0]]>, <"load4" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i32>, <i32>
    %trueResult, %falseResult = cond_br %51, %29 {handshake.bb = 3 : ui32, handshake.name = "cond_br71"} : <i1>, <>
    %trueResult_4, %falseResult_5 = cond_br %51, %30#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br72"} : <i1>, <>
    %27 = constant %arg12 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant30", value = false} : <>, <i1>
    %28 = merge %27, %51 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge8"} : <i1>
    %29 = mux %28 [%15#0, %trueResult] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux16"} : <i1>, <>
    %30:2 = lazy_fork [2] %29 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_6, %falseResult_7 = cond_br %51, %50 {handshake.bb = 3 : ui32, handshake.name = "cond_br47"} : <i1>, <i32>
    %trueResult_8, %falseResult_9 = cond_br %51, %33 {handshake.bb = 3 : ui32, handshake.name = "cond_br48"} : <i1>, <i32>
    %trueResult_10, %falseResult_11 = cond_br %51, %32 {handshake.bb = 3 : ui32, handshake.name = "cond_br49"} : <i1>, <i32>
    %trueResult_12, %falseResult_13 = cond_br %51, %31 {handshake.bb = 3 : ui32, handshake.name = "cond_br50"} : <i1>, <i32>
    %31 = mux %28 [%17, %trueResult_12] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %32 = mux %28 [%19, %trueResult_10] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux14"} : <i1>, <i32>
    %33 = mux %28 [%16, %trueResult_8] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux15"} : <i1>, <i32>
    %34 = mux %28 [%22, %trueResult_6] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux17"} : <i1>, <i32>
    %35 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %36 = constant %35 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 7 : i32} : <>, <i32>
    %37 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %38 = constant %37 {handshake.bb = 3 : ui32, handshake.name = "constant10", value = 1 : i32} : <>, <i32>
    %39 = muli %31, %36 {handshake.bb = 3 : ui32, handshake.name = "muli5"} : <i32>
    %40 = addi %34, %39 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i32>
    %addressResult_14, %dataResult_15 = load[%40] %outputs_2 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i32>, <i32>
    %41 = muli %33, %dataResult_15 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %42 = muli %34, %36 {handshake.bb = 3 : ui32, handshake.name = "muli6"} : <i32>
    %43 = addi %32, %42 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i32>
    %addressResult_16, %dataResult_17 = load[%43] %outputs_0 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i32>, <i32>
    %44 = muli %41, %dataResult_17 {handshake.bb = 3 : ui32, handshake.name = "muli1"} : <i32>
    %45 = muli %31, %36 {handshake.bb = 3 : ui32, handshake.name = "muli7"} : <i32>
    %46 = addi %32, %45 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i32>
    %addressResult_18, %dataResult_19 = load[%46] %1#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load2"} : <i32>, <i32>
    %47 = addi %dataResult_19, %44 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %48 = muli %31, %36 {handshake.bb = 3 : ui32, handshake.name = "muli8"} : <i32>
    %49 = addi %32, %48 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i32>
    %addressResult_20, %dataResult_21 = store[%49] %47 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"load4" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i32>, <i32>
    %50 = addi %34, %38 {handshake.bb = 3 : ui32, handshake.name = "addi14"} : <i32>
    %51 = cmpi ult, %50, %36 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_22, %falseResult_23 = cond_br %57, %falseResult_5 {handshake.bb = 4 : ui32, handshake.name = "cond_br73"} : <i1>, <>
    %trueResult_24, %falseResult_25 = cond_br %57, %56 {handshake.bb = 4 : ui32, handshake.name = "cond_br51"} : <i1>, <i32>
    %trueResult_26, %falseResult_27 = cond_br %57, %18 {handshake.bb = 4 : ui32, handshake.name = "cond_br52"} : <i1>, <>
    %trueResult_28, %falseResult_29 = cond_br %57, %17 {handshake.bb = 4 : ui32, handshake.name = "cond_br53"} : <i1>, <i32>
    %trueResult_30, %falseResult_31 = cond_br %57, %16 {handshake.bb = 4 : ui32, handshake.name = "cond_br54"} : <i1>, <i32>
    %52 = source {handshake.bb = 4 : ui32, handshake.name = "source6"} : <>
    %53 = constant %52 {handshake.bb = 4 : ui32, handshake.name = "constant11", value = 7 : i32} : <>, <i32>
    %54 = source {handshake.bb = 4 : ui32, handshake.name = "source7"} : <>
    %55 = constant %54 {handshake.bb = 4 : ui32, handshake.name = "constant12", value = 1 : i32} : <>, <i32>
    %56 = addi %19, %55 {handshake.bb = 4 : ui32, handshake.name = "addi15"} : <i32>
    %57 = cmpi ult, %56, %53 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_32, %falseResult_33 = cond_br %65, %falseResult_23 {handshake.bb = 5 : ui32, handshake.name = "cond_br74"} : <i1>, <>
    %trueResult_34, %falseResult_35 = cond_br %65, %59 {handshake.bb = 5 : ui32, handshake.name = "cond_br55"} : <i1>, <i32>
    %trueResult_36, %falseResult_37 = cond_br %65, %64 {handshake.bb = 5 : ui32, handshake.name = "cond_br56"} : <i1>, <i32>
    %trueResult_38, %falseResult_39 = cond_br %65, %8 {handshake.bb = 5 : ui32, handshake.name = "cond_br57"} : <i1>, <>
    %trueResult_40, %falseResult_41 = cond_br %65, %7 {handshake.bb = 5 : ui32, handshake.name = "cond_br58"} : <i1>, <i32>
    %58 = source {handshake.bb = 5 : ui32, handshake.name = "source8"} : <>
    %59 = constant %58 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = 0 : i32} : <>, <i32>
    %60 = source {handshake.bb = 5 : ui32, handshake.name = "source9"} : <>
    %61 = constant %60 {handshake.bb = 5 : ui32, handshake.name = "constant14", value = 7 : i32} : <>, <i32>
    %62 = source {handshake.bb = 5 : ui32, handshake.name = "source10"} : <>
    %63 = constant %62 {handshake.bb = 5 : ui32, handshake.name = "constant15", value = 1 : i32} : <>, <i32>
    %64 = addi %9, %63 {handshake.bb = 5 : ui32, handshake.name = "addi16"} : <i32>
    %65 = cmpi ult, %64, %61 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i32>
    %66 = constant %arg12 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "constant34", value = false} : <>, <i1>
    %67 = merge %66, %127 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "merge12"} : <i1>
    %68 = mux %67 [%falseResult_33, %trueResult_78] {ftd.regen, handshake.bb = 6 : ui32, handshake.name = "mux22"} : <i1>, <>
    %69 = mux %67 [%arg12, %trueResult_76] {ftd.phi, handshake.bb = 6 : ui32, handshake.name = "mux28"} : <i1>, <>
    %70 = mux %67 [%arg1, %trueResult_82] {ftd.regen, handshake.bb = 6 : ui32, handshake.name = "mux18"} : <i1>, <i32>
    %71 = mux %67 [%falseResult_35, %trueResult_80] {ftd.phi, handshake.bb = 6 : ui32, handshake.name = "mux19"} : <i1>, <i32>
    %72 = source {handshake.bb = 6 : ui32, handshake.name = "source11"} : <>
    %73 = constant %72 {handshake.bb = 6 : ui32, handshake.name = "constant16", value = 0 : i32} : <>, <i32>
    %74 = constant %arg12 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "constant38", value = false} : <>, <i1>
    %75 = merge %74, %121 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "merge16"} : <i1>
    %76 = mux %75 [%68, %trueResult_68] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux29"} : <i1>, <>
    %77 = mux %75 [%69, %trueResult_66] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux35"} : <i1>, <>
    %78:2 = lazy_fork [2] %77 {handshake.bb = 7 : ui32, handshake.name = "lazy_fork2"} : <>
    %79 = mux %75 [%70, %trueResult_74] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux24"} : <i1>, <i32>
    %80 = mux %75 [%71, %trueResult_72] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux25"} : <i1>, <i32>
    %81 = mux %75 [%73, %trueResult_70] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux26"} : <i1>, <i32>
    %82 = source {handshake.bb = 7 : ui32, handshake.name = "source12"} : <>
    %83 = constant %82 {handshake.bb = 7 : ui32, handshake.name = "constant17", value = 0 : i32} : <>, <i32>
    %84 = source {handshake.bb = 7 : ui32, handshake.name = "source13"} : <>
    %85 = constant %84 {handshake.bb = 7 : ui32, handshake.name = "constant18", value = 7 : i32} : <>, <i32>
    %86 = muli %80, %85 {handshake.bb = 7 : ui32, handshake.name = "muli9"} : <i32>
    %87 = addi %81, %86 {handshake.bb = 7 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_42, %dataResult_43 = load[%87] %0#0 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"store2" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i32>, <i32>
    %88 = muli %dataResult_43, %79 {handshake.bb = 7 : ui32, handshake.name = "muli2"} : <i32>
    %89 = muli %80, %85 {handshake.bb = 7 : ui32, handshake.name = "muli10"} : <i32>
    %90 = addi %81, %89 {handshake.bb = 7 : ui32, handshake.name = "addi8"} : <i32>
    %addressResult_44, %dataResult_45 = store[%90] %88 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"load6" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store2"} : <i32>, <i32>
    %trueResult_46, %falseResult_47 = cond_br %115, %94 {handshake.bb = 8 : ui32, handshake.name = "cond_br75"} : <i1>, <>
    %trueResult_48, %falseResult_49 = cond_br %115, %93 {handshake.bb = 8 : ui32, handshake.name = "cond_br76"} : <i1>, <>
    %trueResult_50, %falseResult_51 = cond_br %115, %96#0 {handshake.bb = 8 : ui32, handshake.name = "cond_br77"} : <i1>, <>
    %91 = constant %arg12 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "constant44", value = false} : <>, <i1>
    %92 = merge %91, %115 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "merge22"} : <i1>
    %93 = mux %92 [%78#0, %trueResult_48] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux36"} : <i1>, <>
    %94 = mux %92 [%76, %trueResult_46] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux37"} : <i1>, <>
    %95:2 = lazy_fork [2] %94 {handshake.bb = 8 : ui32, handshake.name = "lazy_fork3"} : <>
    %96:2 = lazy_fork [2] %93 {handshake.bb = 8 : ui32, handshake.name = "lazy_fork4"} : <>
    %trueResult_52, %falseResult_53 = cond_br %115, %114 {handshake.bb = 8 : ui32, handshake.name = "cond_br59"} : <i1>, <i32>
    %trueResult_54, %falseResult_55 = cond_br %115, %98 {handshake.bb = 8 : ui32, handshake.name = "cond_br60"} : <i1>, <i32>
    %trueResult_56, %falseResult_57 = cond_br %115, %97 {handshake.bb = 8 : ui32, handshake.name = "cond_br61"} : <i1>, <i32>
    %97 = mux %92 [%81, %trueResult_56] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux31"} : <i1>, <i32>
    %98 = mux %92 [%80, %trueResult_54] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux32"} : <i1>, <i32>
    %99 = mux %92 [%83, %trueResult_52] {ftd.phi, handshake.bb = 8 : ui32, handshake.name = "mux33"} : <i1>, <i32>
    %100 = source {handshake.bb = 8 : ui32, handshake.name = "source14"} : <>
    %101 = constant %100 {handshake.bb = 8 : ui32, handshake.name = "constant19", value = 7 : i32} : <>, <i32>
    %102 = source {handshake.bb = 8 : ui32, handshake.name = "source15"} : <>
    %103 = constant %102 {handshake.bb = 8 : ui32, handshake.name = "constant20", value = 1 : i32} : <>, <i32>
    %104 = muli %98, %101 {handshake.bb = 8 : ui32, handshake.name = "muli11"} : <i32>
    %105 = addi %99, %104 {handshake.bb = 8 : ui32, handshake.name = "addi9"} : <i32>
    %addressResult_58, %dataResult_59 = load[%105] %1#1 {handshake.bb = 8 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load4"} : <i32>, <i32>
    %106 = muli %99, %101 {handshake.bb = 8 : ui32, handshake.name = "muli12"} : <i32>
    %107 = addi %97, %106 {handshake.bb = 8 : ui32, handshake.name = "addi10"} : <i32>
    %addressResult_60, %dataResult_61 = load[%107] %outputs {handshake.bb = 8 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load5"} : <i32>, <i32>
    %108 = muli %dataResult_59, %dataResult_61 {handshake.bb = 8 : ui32, handshake.name = "muli3"} : <i32>
    %109 = muli %98, %101 {handshake.bb = 8 : ui32, handshake.name = "muli13"} : <i32>
    %110 = addi %97, %109 {handshake.bb = 8 : ui32, handshake.name = "addi11"} : <i32>
    %addressResult_62, %dataResult_63 = load[%110] %0#1 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load6"} : <i32>, <i32>
    %111 = addi %dataResult_63, %108 {handshake.bb = 8 : ui32, handshake.name = "addi1"} : <i32>
    %112 = muli %98, %101 {handshake.bb = 8 : ui32, handshake.name = "muli14"} : <i32>
    %113 = addi %97, %112 {handshake.bb = 8 : ui32, handshake.name = "addi12"} : <i32>
    %addressResult_64, %dataResult_65 = store[%113] %111 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"load6" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store3"} : <i32>, <i32>
    %114 = addi %99, %103 {handshake.bb = 8 : ui32, handshake.name = "addi17"} : <i32>
    %115 = cmpi ult, %114, %101 {handshake.bb = 8 : ui32, handshake.name = "cmpi3"} : <i32>
    %trueResult_66, %falseResult_67 = cond_br %121, %falseResult_51 {handshake.bb = 9 : ui32, handshake.name = "cond_br78"} : <i1>, <>
    %trueResult_68, %falseResult_69 = cond_br %121, %76 {handshake.bb = 9 : ui32, handshake.name = "cond_br79"} : <i1>, <>
    %trueResult_70, %falseResult_71 = cond_br %121, %120 {handshake.bb = 9 : ui32, handshake.name = "cond_br62"} : <i1>, <i32>
    %trueResult_72, %falseResult_73 = cond_br %121, %80 {handshake.bb = 9 : ui32, handshake.name = "cond_br63"} : <i1>, <i32>
    %trueResult_74, %falseResult_75 = cond_br %121, %79 {handshake.bb = 9 : ui32, handshake.name = "cond_br64"} : <i1>, <i32>
    %116 = source {handshake.bb = 9 : ui32, handshake.name = "source16"} : <>
    %117 = constant %116 {handshake.bb = 9 : ui32, handshake.name = "constant21", value = 7 : i32} : <>, <i32>
    %118 = source {handshake.bb = 9 : ui32, handshake.name = "source17"} : <>
    %119 = constant %118 {handshake.bb = 9 : ui32, handshake.name = "constant22", value = 1 : i32} : <>, <i32>
    %120 = addi %81, %119 {handshake.bb = 9 : ui32, handshake.name = "addi18"} : <i32>
    %121 = cmpi ult, %120, %117 {handshake.bb = 9 : ui32, handshake.name = "cmpi4"} : <i32>
    %trueResult_76, %falseResult_77 = cond_br %127, %falseResult_67 {handshake.bb = 10 : ui32, handshake.name = "cond_br80"} : <i1>, <>
    %trueResult_78, %falseResult_79 = cond_br %127, %68 {handshake.bb = 10 : ui32, handshake.name = "cond_br81"} : <i1>, <>
    %trueResult_80, %falseResult_81 = cond_br %127, %126 {handshake.bb = 10 : ui32, handshake.name = "cond_br65"} : <i1>, <i32>
    %trueResult_82, %falseResult_83 = cond_br %127, %70 {handshake.bb = 10 : ui32, handshake.name = "cond_br66"} : <i1>, <i32>
    %122 = source {handshake.bb = 10 : ui32, handshake.name = "source18"} : <>
    %123 = constant %122 {handshake.bb = 10 : ui32, handshake.name = "constant23", value = 7 : i32} : <>, <i32>
    %124 = source {handshake.bb = 10 : ui32, handshake.name = "source19"} : <>
    %125 = constant %124 {handshake.bb = 10 : ui32, handshake.name = "constant24", value = 1 : i32} : <>, <i32>
    %126 = addi %71, %125 {handshake.bb = 10 : ui32, handshake.name = "addi19"} : <i32>
    %127 = cmpi ult, %126, %123 {handshake.bb = 10 : ui32, handshake.name = "cmpi5"} : <i32>
    %128:2 = lazy_fork [2] %falseResult_77 {handshake.bb = 11 : ui32, handshake.name = "lazy_fork5"} : <>
    %129 = constant %arg12 {handshake.bb = 11 : ui32, handshake.name = "constant25", value = 48 : i32} : <>, <i32>
    %addressResult_84, %dataResult_85 = load[%129] %0#2 {handshake.bb = 11 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load7"} : <i32>, <i32>
    end {handshake.bb = 11 : ui32, handshake.name = "end0"} %dataResult_85, %1#2, %memEnd_3, %memEnd_1, %memEnd, %0#3, %arg12 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


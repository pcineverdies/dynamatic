module {
  handshake.func @kernel_3mm(%arg0: memref<49xi32>, %arg1: memref<49xi32>, %arg2: memref<49xi32>, %arg3: memref<49xi32>, %arg4: memref<49xi32>, %arg5: memref<49xi32>, %arg6: memref<49xi32>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, %arg12: !handshake.control<>, %arg13: !handshake.control<>, %arg14: !handshake.control<>, ...) -> (!handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "B", "C", "D", "E", "F", "G", "A_start", "B_start", "C_start", "D_start", "E_start", "F_start", "G_start", "start"], cfg.edges = "[0,1][7,8][14,12,15,cmpi7][2,3][9,7,10,cmpi4][4,2,5,cmpi1][11,12][6,7][13,13,14,cmpi6][1,2][8,8,9,cmpi3][15,11,16,cmpi8][3,3,4,cmpi0][10,6,11,cmpi5][5,1,6,cmpi2][12,13]", resNames = ["A_end", "B_end", "C_end", "D_end", "E_end", "F_end", "G_end", "end"]} {
    %0:17 = fork [17] %arg14 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %1:2 = lsq[%arg6 : memref<49xi32>] (%arg13, %245#1, %addressResult_112, %dataResult_113, %278#1, %addressResult_136, %addressResult_138, %dataResult_139, %340#6)  {groupSizes = [1 : i32, 2 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %2:3 = lsq[%arg5 : memref<49xi32>] (%arg12, %131#1, %addressResult_58, %dataResult_59, %158#1, %addressResult_78, %addressResult_80, %dataResult_81, %277#1, %addressResult_134, %340#5)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.name = "lsq4"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %3:3 = lsq[%arg4 : memref<49xi32>] (%arg11, %24#1, %addressResult, %dataResult, %51#1, %addressResult_24, %addressResult_26, %dataResult_27, %276#1, %addressResult_132, %340#4)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.name = "lsq5"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg3 : memref<49xi32>] %arg10 (%addressResult_76) %340#3 {connectedBlocks = [8 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg2 : memref<49xi32>] %arg9 (%addressResult_74) %340#2 {connectedBlocks = [8 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %outputs_2, %memEnd_3 = mem_controller[%arg1 : memref<49xi32>] %arg8 (%addressResult_22) %340#1 {connectedBlocks = [3 : i32], handshake.name = "mem_controller6"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %outputs_4, %memEnd_5 = mem_controller[%arg0 : memref<49xi32>] %arg7 (%addressResult_20) %340#0 {connectedBlocks = [3 : i32], handshake.name = "mem_controller7"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %4 = br %0#16 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %5 = mux %10#2 [%0#15, %trueResult_42] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <>
    %6 = constant %0#14 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant36", value = false} : <>, <i1>
    %7:2 = fork [2] %6 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %8 = extsi %7#0 {handshake.bb = 1 : ui32, handshake.name = "extsi35"} : <i1> to <i4>
    %9 = merge %7#1, %113#3 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge1"} : <i1>
    %10:3 = fork [3] %9 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %11 = mux %10#1 [%0#13, %trueResult_48] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %12:5 = fork [5] %11 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %result, %index = control_merge %4, %trueResult_52  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    sink %index {handshake.name = "sink0"} : <i1>
    %13 = mux %10#0 [%8, %trueResult_46] {handshake.bb = 1 : ui32, handshake.name = "mux11"} : <i1>, <i4>
    %14:2 = fork [2] %13 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i4>
    %15 = extsi %14#0 {handshake.bb = 1 : ui32, handshake.name = "extsi36"} : <i4> to <i5>
    %16 = constant %12#2 {handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %17:2 = fork [2] %16 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i1>
    %18 = extsi %17#0 {handshake.bb = 1 : ui32, handshake.name = "extsi37"} : <i1> to <i4>
    %19 = br %result {handshake.bb = 1 : ui32, handshake.name = "br6"} : <>
    %20 = mux %23#3 [%5, %trueResult_30] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux5"} : <i1>, <>
    %21 = constant %0#12 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant39", value = false} : <>, <i1>
    %22 = merge %21, %103#4 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge4"} : <i1>
    %23:4 = fork [4] %22 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i1>
    %24:2 = lazy_fork [2] %20 {handshake.bb = 2 : ui32, handshake.name = "lazy_fork0"} : <>
    %25 = mux %23#0 [%14#1, %trueResult_36] {handshake.bb = 2 : ui32, handshake.name = "mux19"} : <i1>, <i4>
    %26:3 = fork [3] %25 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i4>
    %27 = extsi %26#2 {handshake.bb = 2 : ui32, handshake.name = "extsi38"} : <i4> to <i8>
    %28 = mux %23#2 [%12#4, %trueResult_34] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux21"} : <i1>, <>
    %29:5 = fork [5] %28 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <>
    %result_6, %index_7 = control_merge %19, %trueResult_40  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    sink %index_7 {handshake.name = "sink1"} : <i1>
    %30 = mux %23#1 [%18, %trueResult_32] {handshake.bb = 2 : ui32, handshake.name = "mux23"} : <i1>, <i4>
    %31:3 = fork [3] %30 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i4>
    %32 = extsi %31#0 {handshake.bb = 2 : ui32, handshake.name = "extsi39"} : <i4> to <i6>
    %33 = extsi %31#1 {handshake.bb = 2 : ui32, handshake.name = "extsi40"} : <i4> to <i5>
    %34 = constant %29#2 {handshake.bb = 2 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %35:2 = fork [2] %34 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i1>
    %36 = extsi %35#0 {handshake.bb = 2 : ui32, handshake.name = "extsi41"} : <i1> to <i4>
    %37 = extsi %35#1 {handshake.bb = 2 : ui32, handshake.name = "extsi4"} : <i1> to <i32>
    %38 = constant %29#1 {handshake.bb = 2 : ui32, handshake.name = "constant3", value = 7 : i4} : <>, <i4>
    %39:2 = fork [2] %38 {handshake.bb = 2 : ui32, handshake.name = "fork11"} : <i4>
    %40 = extsi %39#0 {handshake.bb = 2 : ui32, handshake.name = "extsi42"} : <i4> to <i8>
    %41 = extsi %39#1 {handshake.bb = 2 : ui32, handshake.name = "extsi43"} : <i4> to <i5>
    %42 = muli %27, %40 {handshake.bb = 2 : ui32, handshake.name = "muli3"} : <i8>
    %43 = trunci %42 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i8> to <i6>
    %44 = addi %32, %43 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i6>
    %addressResult, %dataResult = store[%44] %37 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0]]>, <"store1" (3) [[0, 0], [0, 0]]>, <"load6" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i6>, <i32>
    %45 = br %result_6 {handshake.bb = 2 : ui32, handshake.name = "br9"} : <>
    %trueResult, %falseResult = cond_br %96#6, %50#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br63"} : <i1>, <>
    sink %falseResult {handshake.name = "sink2"} : <>
    %trueResult_8, %falseResult_9 = cond_br %96#5, %51#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br64"} : <i1>, <>
    sink %trueResult_8 {handshake.name = "sink3"} : <>
    %46 = constant %0#11 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant40", value = false} : <>, <i1>
    %47 = merge %46, %96#4 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge7"} : <i1>
    %48:5 = fork [5] %47 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i1>
    %49 = mux %48#4 [%24#0, %trueResult] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <>
    %50:2 = fork [2] %49 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <>
    %51:2 = lazy_fork [2] %50#0 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_10, %falseResult_11 = cond_br %96#0, %94 {handshake.bb = 3 : ui32, handshake.name = "cond_br118"} : <i1>, <i4>
    sink %falseResult_11 {handshake.name = "sink4"} : <i4>
    %trueResult_12, %falseResult_13 = cond_br %96#3, %63#2 {handshake.bb = 3 : ui32, handshake.name = "cond_br119"} : <i1>, <>
    sink %falseResult_13 {handshake.name = "sink5"} : <>
    %trueResult_14, %falseResult_15 = cond_br %96#2, %58#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br120"} : <i1>, <i4>
    sink %falseResult_15 {handshake.name = "sink6"} : <i4>
    %trueResult_16, %falseResult_17 = cond_br %96#1, %53#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br121"} : <i1>, <i4>
    sink %falseResult_17 {handshake.name = "sink7"} : <i4>
    %52 = mux %48#0 [%26#1, %trueResult_16] {handshake.bb = 3 : ui32, handshake.name = "mux27"} : <i1>, <i4>
    %53:4 = fork [4] %52 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i4>
    %54 = extsi %53#0 {handshake.bb = 3 : ui32, handshake.name = "extsi44"} : <i4> to <i8>
    %55 = extsi %53#1 {handshake.bb = 3 : ui32, handshake.name = "extsi45"} : <i4> to <i8>
    %56 = extsi %53#2 {handshake.bb = 3 : ui32, handshake.name = "extsi46"} : <i4> to <i8>
    %57 = mux %48#1 [%31#2, %trueResult_14] {handshake.bb = 3 : ui32, handshake.name = "mux28"} : <i1>, <i4>
    %58:4 = fork [4] %57 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <i4>
    %59 = extsi %58#0 {handshake.bb = 3 : ui32, handshake.name = "extsi47"} : <i4> to <i6>
    %60 = extsi %58#1 {handshake.bb = 3 : ui32, handshake.name = "extsi48"} : <i4> to <i6>
    %61 = extsi %58#2 {handshake.bb = 3 : ui32, handshake.name = "extsi49"} : <i4> to <i6>
    %62 = mux %48#3 [%29#4, %trueResult_12] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux30"} : <i1>, <>
    %63:3 = fork [3] %62 {handshake.bb = 3 : ui32, handshake.name = "fork16"} : <>
    %result_18, %index_19 = control_merge %45, %trueResult_28  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    sink %index_19 {handshake.name = "sink8"} : <i1>
    %64 = mux %48#2 [%36, %trueResult_10] {handshake.bb = 3 : ui32, handshake.name = "mux32"} : <i1>, <i4>
    %65:3 = fork [3] %64 {handshake.bb = 3 : ui32, handshake.name = "fork17"} : <i4>
    %66 = extsi %65#0 {handshake.bb = 3 : ui32, handshake.name = "extsi50"} : <i4> to <i6>
    %67 = extsi %65#1 {handshake.bb = 3 : ui32, handshake.name = "extsi51"} : <i4> to <i5>
    %68 = extsi %65#2 {handshake.bb = 3 : ui32, handshake.name = "extsi52"} : <i4> to <i8>
    %69 = constant %63#1 {handshake.bb = 3 : ui32, handshake.name = "constant37", value = 7 : i4} : <>, <i4>
    %70:5 = fork [5] %69 {handshake.bb = 3 : ui32, handshake.name = "fork18"} : <i4>
    %71 = extsi %70#0 {handshake.bb = 3 : ui32, handshake.name = "extsi53"} : <i4> to <i8>
    %72 = extsi %70#1 {handshake.bb = 3 : ui32, handshake.name = "extsi54"} : <i4> to <i8>
    %73 = extsi %70#2 {handshake.bb = 3 : ui32, handshake.name = "extsi55"} : <i4> to <i8>
    %74 = extsi %70#3 {handshake.bb = 3 : ui32, handshake.name = "extsi56"} : <i4> to <i5>
    %75 = extsi %70#4 {handshake.bb = 3 : ui32, handshake.name = "extsi57"} : <i4> to <i8>
    %76 = constant %63#0 {handshake.bb = 3 : ui32, handshake.name = "constant38", value = 1 : i2} : <>, <i2>
    %77 = extsi %76 {handshake.bb = 3 : ui32, handshake.name = "extsi58"} : <i2> to <i5>
    %78 = muli %56, %73 {handshake.bb = 3 : ui32, handshake.name = "muli4"} : <i8>
    %79 = trunci %78 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i8> to <i6>
    %80 = addi %66, %79 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i6>
    %addressResult_20, %dataResult_21 = load[%80] %outputs_4 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i6>, <i32>
    %81 = muli %68, %75 {handshake.bb = 3 : ui32, handshake.name = "muli5"} : <i8>
    %82 = trunci %81 {handshake.bb = 3 : ui32, handshake.name = "trunci2"} : <i8> to <i6>
    %83 = addi %59, %82 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i6>
    %addressResult_22, %dataResult_23 = load[%83] %outputs_2 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i6>, <i32>
    %84 = muli %dataResult_21, %dataResult_23 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %85 = muli %55, %72 {handshake.bb = 3 : ui32, handshake.name = "muli6"} : <i8>
    %86 = trunci %85 {handshake.bb = 3 : ui32, handshake.name = "trunci3"} : <i8> to <i6>
    %87 = addi %60, %86 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i6>
    %addressResult_24, %dataResult_25 = load[%87] %3#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load2"} : <i6>, <i32>
    %88 = addi %dataResult_25, %84 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %89 = muli %54, %71 {handshake.bb = 3 : ui32, handshake.name = "muli7"} : <i8>
    %90 = trunci %89 {handshake.bb = 3 : ui32, handshake.name = "trunci4"} : <i8> to <i6>
    %91 = addi %61, %90 {handshake.bb = 3 : ui32, handshake.name = "addi7"} : <i6>
    %addressResult_26, %dataResult_27 = store[%91] %88 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"load6" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i6>, <i32>
    %92 = addi %67, %77 {handshake.bb = 3 : ui32, handshake.name = "addi18"} : <i5>
    %93:2 = fork [2] %92 {handshake.bb = 3 : ui32, handshake.name = "fork19"} : <i5>
    %94 = trunci %93#0 {handshake.bb = 3 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %95 = cmpi ult, %93#1, %74 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i5>
    %96:8 = fork [8] %95 {handshake.bb = 3 : ui32, handshake.name = "fork20"} : <i1>
    %trueResult_28, %falseResult_29 = cond_br %96#7, %result_18 {handshake.bb = 3 : ui32, handshake.name = "cond_br18"} : <i1>, <>
    %trueResult_30, %falseResult_31 = cond_br %103#3, %falseResult_9 {handshake.bb = 4 : ui32, handshake.name = "cond_br65"} : <i1>, <>
    %trueResult_32, %falseResult_33 = cond_br %103#0, %101 {handshake.bb = 4 : ui32, handshake.name = "cond_br122"} : <i1>, <i4>
    sink %falseResult_33 {handshake.name = "sink9"} : <i4>
    %trueResult_34, %falseResult_35 = cond_br %103#2, %29#3 {handshake.bb = 4 : ui32, handshake.name = "cond_br123"} : <i1>, <>
    sink %falseResult_35 {handshake.name = "sink10"} : <>
    %trueResult_36, %falseResult_37 = cond_br %103#1, %26#0 {handshake.bb = 4 : ui32, handshake.name = "cond_br124"} : <i1>, <i4>
    sink %falseResult_37 {handshake.name = "sink11"} : <i4>
    %result_38, %index_39 = control_merge %falseResult_29  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_39 {handshake.name = "sink12"} : <i1>
    %97 = constant %29#0 {handshake.bb = 4 : ui32, handshake.name = "constant41", value = 1 : i2} : <>, <i2>
    %98 = extsi %97 {handshake.bb = 4 : ui32, handshake.name = "extsi59"} : <i2> to <i5>
    %99 = addi %33, %98 {handshake.bb = 4 : ui32, handshake.name = "addi19"} : <i5>
    %100:2 = fork [2] %99 {handshake.bb = 4 : ui32, handshake.name = "fork21"} : <i5>
    %101 = trunci %100#0 {handshake.bb = 4 : ui32, handshake.name = "trunci6"} : <i5> to <i4>
    %102 = cmpi ult, %100#1, %41 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i5>
    %103:6 = fork [6] %102 {handshake.bb = 4 : ui32, handshake.name = "fork22"} : <i1>
    %trueResult_40, %falseResult_41 = cond_br %103#5, %result_38 {handshake.bb = 4 : ui32, handshake.name = "cond_br31"} : <i1>, <>
    %trueResult_42, %falseResult_43 = cond_br %113#2, %falseResult_31 {handshake.bb = 5 : ui32, handshake.name = "cond_br66"} : <i1>, <>
    %trueResult_44, %falseResult_45 = cond_br %113#5, %17#1 {handshake.bb = 5 : ui32, handshake.name = "cond_br125"} : <i1>, <i1>
    sink %trueResult_44 {handshake.name = "sink13"} : <i1>
    %104 = extsi %falseResult_45 {handshake.bb = 5 : ui32, handshake.name = "extsi34"} : <i1> to <i4>
    %trueResult_46, %falseResult_47 = cond_br %113#0, %111 {handshake.bb = 5 : ui32, handshake.name = "cond_br126"} : <i1>, <i4>
    sink %falseResult_47 {handshake.name = "sink14"} : <i4>
    %trueResult_48, %falseResult_49 = cond_br %113#1, %12#3 {handshake.bb = 5 : ui32, handshake.name = "cond_br127"} : <i1>, <>
    sink %falseResult_49 {handshake.name = "sink15"} : <>
    %result_50, %index_51 = control_merge %falseResult_41  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    sink %index_51 {handshake.name = "sink16"} : <i1>
    %105 = constant %12#1 {handshake.bb = 5 : ui32, handshake.name = "constant42", value = 7 : i4} : <>, <i4>
    %106 = extsi %105 {handshake.bb = 5 : ui32, handshake.name = "extsi60"} : <i4> to <i5>
    %107 = constant %12#0 {handshake.bb = 5 : ui32, handshake.name = "constant43", value = 1 : i2} : <>, <i2>
    %108 = extsi %107 {handshake.bb = 5 : ui32, handshake.name = "extsi61"} : <i2> to <i5>
    %109 = addi %15, %108 {handshake.bb = 5 : ui32, handshake.name = "addi20"} : <i5>
    %110:2 = fork [2] %109 {handshake.bb = 5 : ui32, handshake.name = "fork23"} : <i5>
    %111 = trunci %110#0 {handshake.bb = 5 : ui32, handshake.name = "trunci7"} : <i5> to <i4>
    %112 = cmpi ult, %110#1, %106 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i5>
    %113:6 = fork [6] %112 {handshake.bb = 5 : ui32, handshake.name = "fork24"} : <i1>
    %trueResult_52, %falseResult_53 = cond_br %113#4, %result_50 {handshake.bb = 5 : ui32, handshake.name = "cond_br45"} : <i1>, <>
    %114 = constant %0#10 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "constant46", value = false} : <>, <i1>
    %115 = mux %117#2 [%0#9, %trueResult_96] {ftd.phi, handshake.bb = 6 : ui32, handshake.name = "mux13"} : <i1>, <>
    %116 = merge %114, %220#3 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "merge10"} : <i1>
    %117:3 = fork [3] %116 {handshake.bb = 6 : ui32, handshake.name = "fork25"} : <i1>
    %118 = mux %117#1 [%0#8, %trueResult_102] {ftd.regen, handshake.bb = 6 : ui32, handshake.name = "mux33"} : <i1>, <>
    %119:5 = fork [5] %118 {handshake.bb = 6 : ui32, handshake.name = "fork26"} : <>
    %result_54, %index_55 = control_merge %falseResult_53, %trueResult_106  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    sink %index_55 {handshake.name = "sink17"} : <i1>
    %120 = mux %117#0 [%104, %trueResult_100] {handshake.bb = 6 : ui32, handshake.name = "mux44"} : <i1>, <i4>
    %121:2 = fork [2] %120 {handshake.bb = 6 : ui32, handshake.name = "fork27"} : <i4>
    %122 = extsi %121#0 {handshake.bb = 6 : ui32, handshake.name = "extsi62"} : <i4> to <i5>
    %123 = constant %119#2 {handshake.bb = 6 : ui32, handshake.name = "constant44", value = false} : <>, <i1>
    %124:2 = fork [2] %123 {handshake.bb = 6 : ui32, handshake.name = "fork28"} : <i1>
    %125 = extsi %124#0 {handshake.bb = 6 : ui32, handshake.name = "extsi63"} : <i1> to <i4>
    %126 = br %result_54 {handshake.bb = 6 : ui32, handshake.name = "br10"} : <>
    %127 = constant %0#7 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "constant49", value = false} : <>, <i1>
    %128 = mux %130#3 [%115, %trueResult_84] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux16"} : <i1>, <>
    %129 = merge %127, %210#4 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "merge14"} : <i1>
    %130:4 = fork [4] %129 {handshake.bb = 7 : ui32, handshake.name = "fork29"} : <i1>
    %131:2 = lazy_fork [2] %128 {handshake.bb = 7 : ui32, handshake.name = "lazy_fork2"} : <>
    %132 = mux %130#0 [%121#1, %trueResult_90] {handshake.bb = 7 : ui32, handshake.name = "mux52"} : <i1>, <i4>
    %133:3 = fork [3] %132 {handshake.bb = 7 : ui32, handshake.name = "fork30"} : <i4>
    %134 = extsi %133#2 {handshake.bb = 7 : ui32, handshake.name = "extsi64"} : <i4> to <i8>
    %135 = mux %130#2 [%119#4, %trueResult_88] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux55"} : <i1>, <>
    %136:5 = fork [5] %135 {handshake.bb = 7 : ui32, handshake.name = "fork31"} : <>
    %result_56, %index_57 = control_merge %126, %trueResult_94  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    sink %index_57 {handshake.name = "sink18"} : <i1>
    %137 = mux %130#1 [%125, %trueResult_86] {handshake.bb = 7 : ui32, handshake.name = "mux56"} : <i1>, <i4>
    %138:3 = fork [3] %137 {handshake.bb = 7 : ui32, handshake.name = "fork32"} : <i4>
    %139 = extsi %138#0 {handshake.bb = 7 : ui32, handshake.name = "extsi65"} : <i4> to <i6>
    %140 = extsi %138#1 {handshake.bb = 7 : ui32, handshake.name = "extsi66"} : <i4> to <i5>
    %141 = constant %136#2 {handshake.bb = 7 : ui32, handshake.name = "constant45", value = false} : <>, <i1>
    %142:2 = fork [2] %141 {handshake.bb = 7 : ui32, handshake.name = "fork33"} : <i1>
    %143 = extsi %142#0 {handshake.bb = 7 : ui32, handshake.name = "extsi67"} : <i1> to <i4>
    %144 = extsi %142#1 {handshake.bb = 7 : ui32, handshake.name = "extsi15"} : <i1> to <i32>
    %145 = constant %136#1 {handshake.bb = 7 : ui32, handshake.name = "constant47", value = 7 : i4} : <>, <i4>
    %146:2 = fork [2] %145 {handshake.bb = 7 : ui32, handshake.name = "fork34"} : <i4>
    %147 = extsi %146#0 {handshake.bb = 7 : ui32, handshake.name = "extsi68"} : <i4> to <i8>
    %148 = extsi %146#1 {handshake.bb = 7 : ui32, handshake.name = "extsi69"} : <i4> to <i5>
    %149 = muli %134, %147 {handshake.bb = 7 : ui32, handshake.name = "muli8"} : <i8>
    %150 = trunci %149 {handshake.bb = 7 : ui32, handshake.name = "trunci8"} : <i8> to <i6>
    %151 = addi %139, %150 {handshake.bb = 7 : ui32, handshake.name = "addi8"} : <i6>
    %addressResult_58, %dataResult_59 = store[%151] %144 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"load5" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store2"} : <i6>, <i32>
    %152 = br %result_56 {handshake.bb = 7 : ui32, handshake.name = "br11"} : <>
    %trueResult_60, %falseResult_61 = cond_br %203#6, %157#1 {handshake.bb = 8 : ui32, handshake.name = "cond_br67"} : <i1>, <>
    sink %falseResult_61 {handshake.name = "sink19"} : <>
    %trueResult_62, %falseResult_63 = cond_br %203#5, %158#0 {handshake.bb = 8 : ui32, handshake.name = "cond_br69"} : <i1>, <>
    sink %trueResult_62 {handshake.name = "sink20"} : <>
    %153 = constant %0#6 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "constant50", value = false} : <>, <i1>
    %154 = merge %153, %203#4 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "merge17"} : <i1>
    %155:5 = fork [5] %154 {handshake.bb = 8 : ui32, handshake.name = "fork35"} : <i1>
    %156 = mux %155#4 [%131#0, %trueResult_60] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux17"} : <i1>, <>
    %157:2 = fork [2] %156 {handshake.bb = 8 : ui32, handshake.name = "fork36"} : <>
    %158:2 = lazy_fork [2] %157#0 {handshake.bb = 8 : ui32, handshake.name = "lazy_fork3"} : <>
    %trueResult_64, %falseResult_65 = cond_br %203#0, %201 {handshake.bb = 8 : ui32, handshake.name = "cond_br128"} : <i1>, <i4>
    sink %falseResult_65 {handshake.name = "sink21"} : <i4>
    %trueResult_66, %falseResult_67 = cond_br %203#3, %170#2 {handshake.bb = 8 : ui32, handshake.name = "cond_br129"} : <i1>, <>
    sink %falseResult_67 {handshake.name = "sink22"} : <>
    %trueResult_68, %falseResult_69 = cond_br %203#2, %165#3 {handshake.bb = 8 : ui32, handshake.name = "cond_br130"} : <i1>, <i4>
    sink %falseResult_69 {handshake.name = "sink23"} : <i4>
    %trueResult_70, %falseResult_71 = cond_br %203#1, %160#3 {handshake.bb = 8 : ui32, handshake.name = "cond_br131"} : <i1>, <i4>
    sink %falseResult_71 {handshake.name = "sink24"} : <i4>
    %159 = mux %155#0 [%133#1, %trueResult_70] {handshake.bb = 8 : ui32, handshake.name = "mux60"} : <i1>, <i4>
    %160:4 = fork [4] %159 {handshake.bb = 8 : ui32, handshake.name = "fork37"} : <i4>
    %161 = extsi %160#0 {handshake.bb = 8 : ui32, handshake.name = "extsi70"} : <i4> to <i8>
    %162 = extsi %160#1 {handshake.bb = 8 : ui32, handshake.name = "extsi71"} : <i4> to <i8>
    %163 = extsi %160#2 {handshake.bb = 8 : ui32, handshake.name = "extsi72"} : <i4> to <i8>
    %164 = mux %155#1 [%138#2, %trueResult_68] {handshake.bb = 8 : ui32, handshake.name = "mux61"} : <i1>, <i4>
    %165:4 = fork [4] %164 {handshake.bb = 8 : ui32, handshake.name = "fork38"} : <i4>
    %166 = extsi %165#0 {handshake.bb = 8 : ui32, handshake.name = "extsi73"} : <i4> to <i6>
    %167 = extsi %165#1 {handshake.bb = 8 : ui32, handshake.name = "extsi74"} : <i4> to <i6>
    %168 = extsi %165#2 {handshake.bb = 8 : ui32, handshake.name = "extsi75"} : <i4> to <i6>
    %169 = mux %155#3 [%136#4, %trueResult_66] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux63"} : <i1>, <>
    %170:3 = fork [3] %169 {handshake.bb = 8 : ui32, handshake.name = "fork39"} : <>
    %result_72, %index_73 = control_merge %152, %trueResult_82  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    sink %index_73 {handshake.name = "sink25"} : <i1>
    %171 = mux %155#2 [%143, %trueResult_64] {handshake.bb = 8 : ui32, handshake.name = "mux65"} : <i1>, <i4>
    %172:3 = fork [3] %171 {handshake.bb = 8 : ui32, handshake.name = "fork40"} : <i4>
    %173 = extsi %172#0 {handshake.bb = 8 : ui32, handshake.name = "extsi76"} : <i4> to <i6>
    %174 = extsi %172#1 {handshake.bb = 8 : ui32, handshake.name = "extsi77"} : <i4> to <i5>
    %175 = extsi %172#2 {handshake.bb = 8 : ui32, handshake.name = "extsi78"} : <i4> to <i8>
    %176 = constant %170#1 {handshake.bb = 8 : ui32, handshake.name = "constant48", value = 7 : i4} : <>, <i4>
    %177:5 = fork [5] %176 {handshake.bb = 8 : ui32, handshake.name = "fork41"} : <i4>
    %178 = extsi %177#0 {handshake.bb = 8 : ui32, handshake.name = "extsi79"} : <i4> to <i8>
    %179 = extsi %177#1 {handshake.bb = 8 : ui32, handshake.name = "extsi80"} : <i4> to <i8>
    %180 = extsi %177#2 {handshake.bb = 8 : ui32, handshake.name = "extsi81"} : <i4> to <i8>
    %181 = extsi %177#3 {handshake.bb = 8 : ui32, handshake.name = "extsi82"} : <i4> to <i5>
    %182 = extsi %177#4 {handshake.bb = 8 : ui32, handshake.name = "extsi83"} : <i4> to <i8>
    %183 = constant %170#0 {handshake.bb = 8 : ui32, handshake.name = "constant51", value = 1 : i2} : <>, <i2>
    %184 = extsi %183 {handshake.bb = 8 : ui32, handshake.name = "extsi84"} : <i2> to <i5>
    %185 = muli %163, %180 {handshake.bb = 8 : ui32, handshake.name = "muli9"} : <i8>
    %186 = trunci %185 {handshake.bb = 8 : ui32, handshake.name = "trunci9"} : <i8> to <i6>
    %187 = addi %173, %186 {handshake.bb = 8 : ui32, handshake.name = "addi9"} : <i6>
    %addressResult_74, %dataResult_75 = load[%187] %outputs_0 {handshake.bb = 8 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load3"} : <i6>, <i32>
    %188 = muli %175, %182 {handshake.bb = 8 : ui32, handshake.name = "muli10"} : <i8>
    %189 = trunci %188 {handshake.bb = 8 : ui32, handshake.name = "trunci10"} : <i8> to <i6>
    %190 = addi %166, %189 {handshake.bb = 8 : ui32, handshake.name = "addi10"} : <i6>
    %addressResult_76, %dataResult_77 = load[%190] %outputs {handshake.bb = 8 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i6>, <i32>
    %191 = muli %dataResult_75, %dataResult_77 {handshake.bb = 8 : ui32, handshake.name = "muli1"} : <i32>
    %192 = muli %162, %179 {handshake.bb = 8 : ui32, handshake.name = "muli11"} : <i8>
    %193 = trunci %192 {handshake.bb = 8 : ui32, handshake.name = "trunci11"} : <i8> to <i6>
    %194 = addi %167, %193 {handshake.bb = 8 : ui32, handshake.name = "addi11"} : <i6>
    %addressResult_78, %dataResult_79 = load[%194] %2#0 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load5"} : <i6>, <i32>
    %195 = addi %dataResult_79, %191 {handshake.bb = 8 : ui32, handshake.name = "addi1"} : <i32>
    %196 = muli %161, %178 {handshake.bb = 8 : ui32, handshake.name = "muli12"} : <i8>
    %197 = trunci %196 {handshake.bb = 8 : ui32, handshake.name = "trunci12"} : <i8> to <i6>
    %198 = addi %168, %197 {handshake.bb = 8 : ui32, handshake.name = "addi12"} : <i6>
    %addressResult_80, %dataResult_81 = store[%198] %195 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"load5" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store3"} : <i6>, <i32>
    %199 = addi %174, %184 {handshake.bb = 8 : ui32, handshake.name = "addi21"} : <i5>
    %200:2 = fork [2] %199 {handshake.bb = 8 : ui32, handshake.name = "fork42"} : <i5>
    %201 = trunci %200#0 {handshake.bb = 8 : ui32, handshake.name = "trunci13"} : <i5> to <i4>
    %202 = cmpi ult, %200#1, %181 {handshake.bb = 8 : ui32, handshake.name = "cmpi3"} : <i5>
    %203:8 = fork [8] %202 {handshake.bb = 8 : ui32, handshake.name = "fork43"} : <i1>
    %trueResult_82, %falseResult_83 = cond_br %203#7, %result_72 {handshake.bb = 8 : ui32, handshake.name = "cond_br55"} : <i1>, <>
    %trueResult_84, %falseResult_85 = cond_br %210#3, %falseResult_63 {handshake.bb = 9 : ui32, handshake.name = "cond_br70"} : <i1>, <>
    %trueResult_86, %falseResult_87 = cond_br %210#0, %208 {handshake.bb = 9 : ui32, handshake.name = "cond_br132"} : <i1>, <i4>
    sink %falseResult_87 {handshake.name = "sink26"} : <i4>
    %trueResult_88, %falseResult_89 = cond_br %210#2, %136#3 {handshake.bb = 9 : ui32, handshake.name = "cond_br133"} : <i1>, <>
    sink %falseResult_89 {handshake.name = "sink27"} : <>
    %trueResult_90, %falseResult_91 = cond_br %210#1, %133#0 {handshake.bb = 9 : ui32, handshake.name = "cond_br134"} : <i1>, <i4>
    sink %falseResult_91 {handshake.name = "sink28"} : <i4>
    %result_92, %index_93 = control_merge %falseResult_83  {handshake.bb = 9 : ui32, handshake.name = "control_merge8"} : <>, <i1>
    sink %index_93 {handshake.name = "sink29"} : <i1>
    %204 = constant %136#0 {handshake.bb = 9 : ui32, handshake.name = "constant52", value = 1 : i2} : <>, <i2>
    %205 = extsi %204 {handshake.bb = 9 : ui32, handshake.name = "extsi85"} : <i2> to <i5>
    %206 = addi %140, %205 {handshake.bb = 9 : ui32, handshake.name = "addi22"} : <i5>
    %207:2 = fork [2] %206 {handshake.bb = 9 : ui32, handshake.name = "fork44"} : <i5>
    %208 = trunci %207#0 {handshake.bb = 9 : ui32, handshake.name = "trunci14"} : <i5> to <i4>
    %209 = cmpi ult, %207#1, %148 {handshake.bb = 9 : ui32, handshake.name = "cmpi4"} : <i5>
    %210:6 = fork [6] %209 {handshake.bb = 9 : ui32, handshake.name = "fork45"} : <i1>
    %trueResult_94, %falseResult_95 = cond_br %210#5, %result_92 {handshake.bb = 9 : ui32, handshake.name = "cond_br68"} : <i1>, <>
    %trueResult_96, %falseResult_97 = cond_br %220#2, %falseResult_85 {handshake.bb = 10 : ui32, handshake.name = "cond_br71"} : <i1>, <>
    %trueResult_98, %falseResult_99 = cond_br %220#5, %124#1 {handshake.bb = 10 : ui32, handshake.name = "cond_br135"} : <i1>, <i1>
    sink %trueResult_98 {handshake.name = "sink30"} : <i1>
    %211 = extsi %falseResult_99 {handshake.bb = 10 : ui32, handshake.name = "extsi33"} : <i1> to <i4>
    %trueResult_100, %falseResult_101 = cond_br %220#0, %218 {handshake.bb = 10 : ui32, handshake.name = "cond_br136"} : <i1>, <i4>
    sink %falseResult_101 {handshake.name = "sink31"} : <i4>
    %trueResult_102, %falseResult_103 = cond_br %220#1, %119#3 {handshake.bb = 10 : ui32, handshake.name = "cond_br137"} : <i1>, <>
    sink %falseResult_103 {handshake.name = "sink32"} : <>
    %result_104, %index_105 = control_merge %falseResult_95  {handshake.bb = 10 : ui32, handshake.name = "control_merge9"} : <>, <i1>
    sink %index_105 {handshake.name = "sink33"} : <i1>
    %212 = constant %119#1 {handshake.bb = 10 : ui32, handshake.name = "constant54", value = 7 : i4} : <>, <i4>
    %213 = extsi %212 {handshake.bb = 10 : ui32, handshake.name = "extsi86"} : <i4> to <i5>
    %214 = constant %119#0 {handshake.bb = 10 : ui32, handshake.name = "constant55", value = 1 : i2} : <>, <i2>
    %215 = extsi %214 {handshake.bb = 10 : ui32, handshake.name = "extsi87"} : <i2> to <i5>
    %216 = addi %122, %215 {handshake.bb = 10 : ui32, handshake.name = "addi23"} : <i5>
    %217:2 = fork [2] %216 {handshake.bb = 10 : ui32, handshake.name = "fork46"} : <i5>
    %218 = trunci %217#0 {handshake.bb = 10 : ui32, handshake.name = "trunci15"} : <i5> to <i4>
    %219 = cmpi ult, %217#1, %213 {handshake.bb = 10 : ui32, handshake.name = "cmpi5"} : <i5>
    %220:6 = fork [6] %219 {handshake.bb = 10 : ui32, handshake.name = "fork47"} : <i1>
    %trueResult_106, %falseResult_107 = cond_br %220#4, %result_104 {handshake.bb = 10 : ui32, handshake.name = "cond_br82"} : <i1>, <>
    %221 = constant %0#5 {ftd.imerge, handshake.bb = 11 : ui32, handshake.name = "constant53", value = false} : <>, <i1>
    %222 = merge %221, %339#5 {ftd.imerge, handshake.bb = 11 : ui32, handshake.name = "merge20"} : <i1>
    %223:5 = fork [5] %222 {handshake.bb = 11 : ui32, handshake.name = "fork48"} : <i1>
    %224 = mux %223#4 [%falseResult_97, %trueResult_162] {ftd.regen, handshake.bb = 11 : ui32, handshake.name = "mux22"} : <i1>, <>
    %225:2 = fork [2] %224 {handshake.bb = 11 : ui32, handshake.name = "fork49"} : <>
    %226 = mux %223#3 [%falseResult_43, %trueResult_160] {ftd.regen, handshake.bb = 11 : ui32, handshake.name = "mux24"} : <i1>, <>
    %227:2 = fork [2] %226 {handshake.bb = 11 : ui32, handshake.name = "fork50"} : <>
    %228 = mux %223#2 [%0#4, %trueResult_158] {ftd.phi, handshake.bb = 11 : ui32, handshake.name = "mux25"} : <i1>, <>
    %229 = mux %223#1 [%0#3, %trueResult_166] {ftd.regen, handshake.bb = 11 : ui32, handshake.name = "mux66"} : <i1>, <>
    %230:5 = fork [5] %229 {handshake.bb = 11 : ui32, handshake.name = "fork51"} : <>
    %result_108, %index_109 = control_merge %falseResult_107, %trueResult_170  {handshake.bb = 11 : ui32, handshake.name = "control_merge10"} : <>, <i1>
    sink %index_109 {handshake.name = "sink34"} : <i1>
    %231 = mux %223#0 [%211, %trueResult_164] {handshake.bb = 11 : ui32, handshake.name = "mux76"} : <i1>, <i4>
    %232:2 = fork [2] %231 {handshake.bb = 11 : ui32, handshake.name = "fork52"} : <i4>
    %233 = extsi %232#0 {handshake.bb = 11 : ui32, handshake.name = "extsi88"} : <i4> to <i5>
    %234 = constant %230#2 {handshake.bb = 11 : ui32, handshake.name = "constant56", value = false} : <>, <i1>
    %235 = extsi %234 {handshake.bb = 11 : ui32, handshake.name = "extsi89"} : <i1> to <i4>
    %236 = br %result_108 {handshake.bb = 11 : ui32, handshake.name = "br12"} : <>
    %237 = constant %0#2 {ftd.imerge, handshake.bb = 12 : ui32, handshake.name = "constant58", value = false} : <>, <i1>
    %238 = merge %237, %330#6 {ftd.imerge, handshake.bb = 12 : ui32, handshake.name = "merge25"} : <i1>
    %239:6 = fork [6] %238 {handshake.bb = 12 : ui32, handshake.name = "fork53"} : <i1>
    %240 = mux %239#5 [%225#1, %trueResult_144] {ftd.regen, handshake.bb = 12 : ui32, handshake.name = "mux29"} : <i1>, <>
    %241:2 = fork [2] %240 {handshake.bb = 12 : ui32, handshake.name = "fork54"} : <>
    %242 = mux %239#4 [%227#1, %trueResult_142] {ftd.regen, handshake.bb = 12 : ui32, handshake.name = "mux31"} : <i1>, <>
    %243:2 = fork [2] %242 {handshake.bb = 12 : ui32, handshake.name = "fork55"} : <>
    %244 = mux %239#3 [%228, %trueResult_146] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux34"} : <i1>, <>
    %245:2 = lazy_fork [2] %244 {handshake.bb = 12 : ui32, handshake.name = "lazy_fork4"} : <>
    %246 = mux %239#0 [%232#1, %trueResult_152] {handshake.bb = 12 : ui32, handshake.name = "mux84"} : <i1>, <i4>
    %247:3 = fork [3] %246 {handshake.bb = 12 : ui32, handshake.name = "fork56"} : <i4>
    %248 = extsi %247#2 {handshake.bb = 12 : ui32, handshake.name = "extsi90"} : <i4> to <i8>
    %249 = mux %239#2 [%230#4, %trueResult_150] {ftd.regen, handshake.bb = 12 : ui32, handshake.name = "mux87"} : <i1>, <>
    %250:5 = fork [5] %249 {handshake.bb = 12 : ui32, handshake.name = "fork57"} : <>
    %result_110, %index_111 = control_merge %236, %trueResult_156  {handshake.bb = 12 : ui32, handshake.name = "control_merge11"} : <>, <i1>
    sink %index_111 {handshake.name = "sink35"} : <i1>
    %251 = mux %239#1 [%235, %trueResult_148] {handshake.bb = 12 : ui32, handshake.name = "mux88"} : <i1>, <i4>
    %252:3 = fork [3] %251 {handshake.bb = 12 : ui32, handshake.name = "fork58"} : <i4>
    %253 = extsi %252#0 {handshake.bb = 12 : ui32, handshake.name = "extsi91"} : <i4> to <i6>
    %254 = extsi %252#1 {handshake.bb = 12 : ui32, handshake.name = "extsi92"} : <i4> to <i5>
    %255 = constant %250#2 {handshake.bb = 12 : ui32, handshake.name = "constant57", value = false} : <>, <i1>
    %256:2 = fork [2] %255 {handshake.bb = 12 : ui32, handshake.name = "fork59"} : <i1>
    %257 = extsi %256#0 {handshake.bb = 12 : ui32, handshake.name = "extsi93"} : <i1> to <i4>
    %258 = extsi %256#1 {handshake.bb = 12 : ui32, handshake.name = "extsi25"} : <i1> to <i32>
    %259 = constant %250#1 {handshake.bb = 12 : ui32, handshake.name = "constant59", value = 7 : i4} : <>, <i4>
    %260:2 = fork [2] %259 {handshake.bb = 12 : ui32, handshake.name = "fork60"} : <i4>
    %261 = extsi %260#0 {handshake.bb = 12 : ui32, handshake.name = "extsi94"} : <i4> to <i8>
    %262 = extsi %260#1 {handshake.bb = 12 : ui32, handshake.name = "extsi95"} : <i4> to <i5>
    %263 = muli %248, %261 {handshake.bb = 12 : ui32, handshake.name = "muli13"} : <i8>
    %264 = trunci %263 {handshake.bb = 12 : ui32, handshake.name = "trunci16"} : <i8> to <i6>
    %265 = addi %253, %264 {handshake.bb = 12 : ui32, handshake.name = "addi13"} : <i6>
    %addressResult_112, %dataResult_113 = store[%265] %258 {handshake.bb = 12 : ui32, handshake.deps = #handshake<deps[<"load8" (3) [[0, 0], [0, 0]]>, <"store5" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store4"} : <i6>, <i32>
    %266 = br %result_110 {handshake.bb = 12 : ui32, handshake.name = "br13"} : <>
    %trueResult_114, %falseResult_115 = cond_br %323#8, %275#1 {handshake.bb = 13 : ui32, handshake.name = "cond_br72"} : <i1>, <>
    sink %falseResult_115 {handshake.name = "sink36"} : <>
    %trueResult_116, %falseResult_117 = cond_br %323#7, %273#1 {handshake.bb = 13 : ui32, handshake.name = "cond_br73"} : <i1>, <>
    sink %falseResult_117 {handshake.name = "sink37"} : <>
    %trueResult_118, %falseResult_119 = cond_br %323#6, %271#1 {handshake.bb = 13 : ui32, handshake.name = "cond_br74"} : <i1>, <>
    sink %falseResult_119 {handshake.name = "sink38"} : <>
    %trueResult_120, %falseResult_121 = cond_br %323#5, %278#0 {handshake.bb = 13 : ui32, handshake.name = "cond_br75"} : <i1>, <>
    sink %trueResult_120 {handshake.name = "sink39"} : <>
    %267 = constant %0#1 {ftd.imerge, handshake.bb = 13 : ui32, handshake.name = "constant62", value = false} : <>, <i1>
    %268 = merge %267, %323#4 {ftd.imerge, handshake.bb = 13 : ui32, handshake.name = "merge29"} : <i1>
    %269:7 = fork [7] %268 {handshake.bb = 13 : ui32, handshake.name = "fork61"} : <i1>
    %270 = mux %269#6 [%245#0, %trueResult_118] {ftd.regen, handshake.bb = 13 : ui32, handshake.name = "mux36"} : <i1>, <>
    %271:2 = fork [2] %270 {handshake.bb = 13 : ui32, handshake.name = "fork62"} : <>
    %272 = mux %269#5 [%241#1, %trueResult_116] {ftd.regen, handshake.bb = 13 : ui32, handshake.name = "mux37"} : <i1>, <>
    %273:2 = fork [2] %272 {handshake.bb = 13 : ui32, handshake.name = "fork63"} : <>
    %274 = mux %269#4 [%243#1, %trueResult_114] {ftd.regen, handshake.bb = 13 : ui32, handshake.name = "mux38"} : <i1>, <>
    %275:2 = fork [2] %274 {handshake.bb = 13 : ui32, handshake.name = "fork64"} : <>
    %276:2 = lazy_fork [2] %275#0 {handshake.bb = 13 : ui32, handshake.name = "lazy_fork5"} : <>
    sink %276#0 {handshake.name = "sink40"} : <>
    %277:2 = lazy_fork [2] %273#0 {handshake.bb = 13 : ui32, handshake.name = "lazy_fork6"} : <>
    sink %277#0 {handshake.name = "sink41"} : <>
    %278:2 = lazy_fork [2] %271#0 {handshake.bb = 13 : ui32, handshake.name = "lazy_fork7"} : <>
    %trueResult_122, %falseResult_123 = cond_br %323#0, %321 {handshake.bb = 13 : ui32, handshake.name = "cond_br138"} : <i1>, <i4>
    sink %falseResult_123 {handshake.name = "sink42"} : <i4>
    %trueResult_124, %falseResult_125 = cond_br %323#3, %290#2 {handshake.bb = 13 : ui32, handshake.name = "cond_br139"} : <i1>, <>
    sink %falseResult_125 {handshake.name = "sink43"} : <>
    %trueResult_126, %falseResult_127 = cond_br %323#2, %285#3 {handshake.bb = 13 : ui32, handshake.name = "cond_br140"} : <i1>, <i4>
    sink %falseResult_127 {handshake.name = "sink44"} : <i4>
    %trueResult_128, %falseResult_129 = cond_br %323#1, %280#3 {handshake.bb = 13 : ui32, handshake.name = "cond_br141"} : <i1>, <i4>
    sink %falseResult_129 {handshake.name = "sink45"} : <i4>
    %279 = mux %269#0 [%247#1, %trueResult_128] {handshake.bb = 13 : ui32, handshake.name = "mux92"} : <i1>, <i4>
    %280:4 = fork [4] %279 {handshake.bb = 13 : ui32, handshake.name = "fork65"} : <i4>
    %281 = extsi %280#0 {handshake.bb = 13 : ui32, handshake.name = "extsi96"} : <i4> to <i8>
    %282 = extsi %280#1 {handshake.bb = 13 : ui32, handshake.name = "extsi97"} : <i4> to <i8>
    %283 = extsi %280#2 {handshake.bb = 13 : ui32, handshake.name = "extsi98"} : <i4> to <i8>
    %284 = mux %269#1 [%252#2, %trueResult_126] {handshake.bb = 13 : ui32, handshake.name = "mux93"} : <i1>, <i4>
    %285:4 = fork [4] %284 {handshake.bb = 13 : ui32, handshake.name = "fork66"} : <i4>
    %286 = extsi %285#0 {handshake.bb = 13 : ui32, handshake.name = "extsi99"} : <i4> to <i6>
    %287 = extsi %285#1 {handshake.bb = 13 : ui32, handshake.name = "extsi100"} : <i4> to <i6>
    %288 = extsi %285#2 {handshake.bb = 13 : ui32, handshake.name = "extsi101"} : <i4> to <i6>
    %289 = mux %269#3 [%250#4, %trueResult_124] {ftd.regen, handshake.bb = 13 : ui32, handshake.name = "mux95"} : <i1>, <>
    %290:3 = fork [3] %289 {handshake.bb = 13 : ui32, handshake.name = "fork67"} : <>
    %result_130, %index_131 = control_merge %266, %trueResult_140  {handshake.bb = 13 : ui32, handshake.name = "control_merge12"} : <>, <i1>
    sink %index_131 {handshake.name = "sink46"} : <i1>
    %291 = mux %269#2 [%257, %trueResult_122] {handshake.bb = 13 : ui32, handshake.name = "mux97"} : <i1>, <i4>
    %292:3 = fork [3] %291 {handshake.bb = 13 : ui32, handshake.name = "fork68"} : <i4>
    %293 = extsi %292#0 {handshake.bb = 13 : ui32, handshake.name = "extsi102"} : <i4> to <i6>
    %294 = extsi %292#1 {handshake.bb = 13 : ui32, handshake.name = "extsi103"} : <i4> to <i5>
    %295 = extsi %292#2 {handshake.bb = 13 : ui32, handshake.name = "extsi104"} : <i4> to <i8>
    %296 = constant %290#1 {handshake.bb = 13 : ui32, handshake.name = "constant60", value = 7 : i4} : <>, <i4>
    %297:5 = fork [5] %296 {handshake.bb = 13 : ui32, handshake.name = "fork69"} : <i4>
    %298 = extsi %297#0 {handshake.bb = 13 : ui32, handshake.name = "extsi105"} : <i4> to <i8>
    %299 = extsi %297#1 {handshake.bb = 13 : ui32, handshake.name = "extsi106"} : <i4> to <i8>
    %300 = extsi %297#2 {handshake.bb = 13 : ui32, handshake.name = "extsi107"} : <i4> to <i8>
    %301 = extsi %297#3 {handshake.bb = 13 : ui32, handshake.name = "extsi108"} : <i4> to <i5>
    %302 = extsi %297#4 {handshake.bb = 13 : ui32, handshake.name = "extsi109"} : <i4> to <i8>
    %303 = constant %290#0 {handshake.bb = 13 : ui32, handshake.name = "constant61", value = 1 : i2} : <>, <i2>
    %304 = extsi %303 {handshake.bb = 13 : ui32, handshake.name = "extsi110"} : <i2> to <i5>
    %305 = muli %283, %300 {handshake.bb = 13 : ui32, handshake.name = "muli14"} : <i8>
    %306 = trunci %305 {handshake.bb = 13 : ui32, handshake.name = "trunci17"} : <i8> to <i6>
    %307 = addi %293, %306 {handshake.bb = 13 : ui32, handshake.name = "addi14"} : <i6>
    %addressResult_132, %dataResult_133 = load[%307] %3#1 {handshake.bb = 13 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load6"} : <i6>, <i32>
    %308 = muli %295, %302 {handshake.bb = 13 : ui32, handshake.name = "muli15"} : <i8>
    %309 = trunci %308 {handshake.bb = 13 : ui32, handshake.name = "trunci18"} : <i8> to <i6>
    %310 = addi %286, %309 {handshake.bb = 13 : ui32, handshake.name = "addi15"} : <i6>
    %addressResult_134, %dataResult_135 = load[%310] %2#1 {handshake.bb = 13 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load7"} : <i6>, <i32>
    %311 = muli %dataResult_133, %dataResult_135 {handshake.bb = 13 : ui32, handshake.name = "muli2"} : <i32>
    %312 = muli %282, %299 {handshake.bb = 13 : ui32, handshake.name = "muli16"} : <i8>
    %313 = trunci %312 {handshake.bb = 13 : ui32, handshake.name = "trunci19"} : <i8> to <i6>
    %314 = addi %287, %313 {handshake.bb = 13 : ui32, handshake.name = "addi16"} : <i6>
    %addressResult_136, %dataResult_137 = load[%314] %1#0 {handshake.bb = 13 : ui32, handshake.deps = #handshake<deps[<"store5" (3) [[0, 0], [0, 0], [1, 6]]>, <"store5" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load8"} : <i6>, <i32>
    %315 = addi %dataResult_137, %311 {handshake.bb = 13 : ui32, handshake.name = "addi2"} : <i32>
    %316 = muli %281, %298 {handshake.bb = 13 : ui32, handshake.name = "muli17"} : <i8>
    %317 = trunci %316 {handshake.bb = 13 : ui32, handshake.name = "trunci20"} : <i8> to <i6>
    %318 = addi %288, %317 {handshake.bb = 13 : ui32, handshake.name = "addi17"} : <i6>
    %addressResult_138, %dataResult_139 = store[%318] %315 {handshake.bb = 13 : ui32, handshake.deps = #handshake<deps[<"load8" (3) [[0, 0], [0, 0], [1, 6]]>, <"store5" (3) [[0, 0], [0, 0], [1, 6]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store5"} : <i6>, <i32>
    %319 = addi %294, %304 {handshake.bb = 13 : ui32, handshake.name = "addi24"} : <i5>
    %320:2 = fork [2] %319 {handshake.bb = 13 : ui32, handshake.name = "fork70"} : <i5>
    %321 = trunci %320#0 {handshake.bb = 13 : ui32, handshake.name = "trunci21"} : <i5> to <i4>
    %322 = cmpi ult, %320#1, %301 {handshake.bb = 13 : ui32, handshake.name = "cmpi6"} : <i5>
    %323:10 = fork [10] %322 {handshake.bb = 13 : ui32, handshake.name = "fork71"} : <i1>
    %trueResult_140, %falseResult_141 = cond_br %323#9, %result_130 {handshake.bb = 13 : ui32, handshake.name = "cond_br92"} : <i1>, <>
    %trueResult_142, %falseResult_143 = cond_br %330#5, %243#0 {handshake.bb = 14 : ui32, handshake.name = "cond_br76"} : <i1>, <>
    sink %falseResult_143 {handshake.name = "sink47"} : <>
    %trueResult_144, %falseResult_145 = cond_br %330#4, %241#0 {handshake.bb = 14 : ui32, handshake.name = "cond_br77"} : <i1>, <>
    sink %falseResult_145 {handshake.name = "sink48"} : <>
    %trueResult_146, %falseResult_147 = cond_br %330#3, %falseResult_121 {handshake.bb = 14 : ui32, handshake.name = "cond_br78"} : <i1>, <>
    %trueResult_148, %falseResult_149 = cond_br %330#0, %328 {handshake.bb = 14 : ui32, handshake.name = "cond_br142"} : <i1>, <i4>
    sink %falseResult_149 {handshake.name = "sink49"} : <i4>
    %trueResult_150, %falseResult_151 = cond_br %330#2, %250#3 {handshake.bb = 14 : ui32, handshake.name = "cond_br143"} : <i1>, <>
    sink %falseResult_151 {handshake.name = "sink50"} : <>
    %trueResult_152, %falseResult_153 = cond_br %330#1, %247#0 {handshake.bb = 14 : ui32, handshake.name = "cond_br144"} : <i1>, <i4>
    sink %falseResult_153 {handshake.name = "sink51"} : <i4>
    %result_154, %index_155 = control_merge %falseResult_141  {handshake.bb = 14 : ui32, handshake.name = "control_merge13"} : <>, <i1>
    sink %index_155 {handshake.name = "sink52"} : <i1>
    %324 = constant %250#0 {handshake.bb = 14 : ui32, handshake.name = "constant63", value = 1 : i2} : <>, <i2>
    %325 = extsi %324 {handshake.bb = 14 : ui32, handshake.name = "extsi111"} : <i2> to <i5>
    %326 = addi %254, %325 {handshake.bb = 14 : ui32, handshake.name = "addi25"} : <i5>
    %327:2 = fork [2] %326 {handshake.bb = 14 : ui32, handshake.name = "fork72"} : <i5>
    %328 = trunci %327#0 {handshake.bb = 14 : ui32, handshake.name = "trunci22"} : <i5> to <i4>
    %329 = cmpi ult, %327#1, %262 {handshake.bb = 14 : ui32, handshake.name = "cmpi7"} : <i5>
    %330:8 = fork [8] %329 {handshake.bb = 14 : ui32, handshake.name = "fork73"} : <i1>
    %trueResult_156, %falseResult_157 = cond_br %330#7, %result_154 {handshake.bb = 14 : ui32, handshake.name = "cond_br105"} : <i1>, <>
    %trueResult_158, %falseResult_159 = cond_br %339#4, %falseResult_147 {handshake.bb = 15 : ui32, handshake.name = "cond_br79"} : <i1>, <>
    sink %falseResult_159 {handshake.name = "sink53"} : <>
    %trueResult_160, %falseResult_161 = cond_br %339#3, %227#0 {handshake.bb = 15 : ui32, handshake.name = "cond_br80"} : <i1>, <>
    sink %falseResult_161 {handshake.name = "sink54"} : <>
    %trueResult_162, %falseResult_163 = cond_br %339#2, %225#0 {handshake.bb = 15 : ui32, handshake.name = "cond_br81"} : <i1>, <>
    sink %falseResult_163 {handshake.name = "sink55"} : <>
    %trueResult_164, %falseResult_165 = cond_br %339#0, %337 {handshake.bb = 15 : ui32, handshake.name = "cond_br145"} : <i1>, <i4>
    sink %falseResult_165 {handshake.name = "sink56"} : <i4>
    %trueResult_166, %falseResult_167 = cond_br %339#1, %230#3 {handshake.bb = 15 : ui32, handshake.name = "cond_br146"} : <i1>, <>
    sink %falseResult_167 {handshake.name = "sink57"} : <>
    %result_168, %index_169 = control_merge %falseResult_157  {handshake.bb = 15 : ui32, handshake.name = "control_merge14"} : <>, <i1>
    sink %index_169 {handshake.name = "sink58"} : <i1>
    %331 = constant %230#1 {handshake.bb = 15 : ui32, handshake.name = "constant64", value = 7 : i4} : <>, <i4>
    %332 = extsi %331 {handshake.bb = 15 : ui32, handshake.name = "extsi112"} : <i4> to <i5>
    %333 = constant %230#0 {handshake.bb = 15 : ui32, handshake.name = "constant65", value = 1 : i2} : <>, <i2>
    %334 = extsi %333 {handshake.bb = 15 : ui32, handshake.name = "extsi113"} : <i2> to <i5>
    %335 = addi %233, %334 {handshake.bb = 15 : ui32, handshake.name = "addi26"} : <i5>
    %336:2 = fork [2] %335 {handshake.bb = 15 : ui32, handshake.name = "fork74"} : <i5>
    %337 = trunci %336#0 {handshake.bb = 15 : ui32, handshake.name = "trunci23"} : <i5> to <i4>
    %338 = cmpi ult, %336#1, %332 {handshake.bb = 15 : ui32, handshake.name = "cmpi8"} : <i5>
    %339:7 = fork [7] %338 {handshake.bb = 15 : ui32, handshake.name = "fork75"} : <i1>
    %trueResult_170, %falseResult_171 = cond_br %339#6, %result_168 {handshake.bb = 15 : ui32, handshake.name = "cond_br117"} : <i1>, <>
    %result_172, %index_173 = control_merge %falseResult_171  {handshake.bb = 16 : ui32, handshake.name = "control_merge15"} : <>, <i1>
    sink %index_173 {handshake.name = "sink59"} : <i1>
    %340:7 = fork [7] %result_172 {handshake.bb = 16 : ui32, handshake.name = "fork76"} : <>
    end {handshake.bb = 16 : ui32, handshake.name = "end0"} %memEnd_5, %memEnd_3, %memEnd_1, %memEnd, %3#2, %2#2, %1#1, %0#0 : <>, <>, <>, <>, <>, <>, <>, <>
  }
}


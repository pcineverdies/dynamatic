module {
  handshake.func @kernel_2mm(%arg0: !handshake.channel<i32>, %arg1: !handshake.channel<i32>, %arg2: memref<49xi32>, %arg3: memref<49xi32>, %arg4: memref<49xi32>, %arg5: memref<49xi32>, %arg6: memref<49xi32>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, %arg12: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["alpha", "beta", "tmp", "A", "B", "C", "D", "tmp_start", "A_start", "B_start", "C_start", "D_start", "start"], cfg.edges = "[0,1][7,8][2,3][9,7,10,cmpi4][4,2,5,cmpi1][6,7][1,2][8,8,9,cmpi3][3,3,4,cmpi0][10,6,11,cmpi5][5,1,6,cmpi2]", resNames = ["out0", "tmp_end", "A_end", "B_end", "C_end", "D_end", "end"]} {
    %0:15 = fork [15] %arg12 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %1:4 = lsq[%arg6 : memref<49xi32>] (%arg11, %146#1, %addressResult_42, %addressResult_44, %dataResult_45, %181#1, %addressResult_62, %addressResult_64, %dataResult_65, %250#0, %addressResult_84, %250#1)  {groupSizes = [2 : i32, 2 : i32, 1 : i32], handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg5 : memref<49xi32>] %arg10 (%addressResult_60) %0#3 {connectedBlocks = [8 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg4 : memref<49xi32>] %arg9 (%addressResult_16) %0#2 {connectedBlocks = [3 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %outputs_2, %memEnd_3 = mem_controller[%arg3 : memref<49xi32>] %arg8 (%addressResult_14) %0#1 {connectedBlocks = [3 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %2:3 = lsq[%arg2 : memref<49xi32>] (%arg7, %24#1, %addressResult, %dataResult, %52#1, %addressResult_18, %addressResult_20, %dataResult_21, %180#1, %addressResult_58, %0#0)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %3 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %4 = constant %3 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %5 = extsi %4 {handshake.bb = 0 : ui32, handshake.name = "extsi23"} : <i1> to <i4>
    %6 = constant %0#14 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant26", value = false} : <>, <i1>
    %7 = mux %9#3 [%0#13, %trueResult_32] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux6"} : <i1>, <>
    %8 = merge %6, %125#4 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge1"} : <i1>
    %9:4 = fork [4] %8 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %10 = mux %9#2 [%arg0, %trueResult_40] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %11:2 = fork [2] %10 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i32>
    %12 = mux %9#1 [%0#12, %trueResult_38] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <>
    %13:2 = fork [2] %12 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %14 = mux %9#0 [%5, %trueResult_36] {handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i4>
    %15:2 = fork [2] %14 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i4>
    %16 = extsi %15#0 {handshake.bb = 1 : ui32, handshake.name = "extsi24"} : <i4> to <i5>
    %17 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %18 = constant %17 {handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %19 = extsi %18 {handshake.bb = 1 : ui32, handshake.name = "extsi25"} : <i1> to <i4>
    %20 = constant %0#11 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant29", value = false} : <>, <i1>
    %21 = mux %23#4 [%7, %trueResult_22] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux12"} : <i1>, <>
    %22 = merge %20, %111#5 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge5"} : <i1>
    %23:5 = fork [5] %22 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i1>
    %24:2 = lazy_fork [2] %21 {handshake.bb = 2 : ui32, handshake.name = "lazy_fork0"} : <>
    %25 = mux %23#3 [%11#1, %trueResult_30] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %26:2 = fork [2] %25 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i32>
    %27 = mux %23#0 [%15#1, %trueResult_28] {handshake.bb = 2 : ui32, handshake.name = "mux7"} : <i1>, <i4>
    %28:3 = fork [3] %27 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i4>
    %29 = extsi %28#2 {handshake.bb = 2 : ui32, handshake.name = "extsi26"} : <i4> to <i8>
    %30 = mux %23#2 [%13#1, %trueResult_26] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux8"} : <i1>, <>
    %31:2 = fork [2] %30 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <>
    %32 = mux %23#1 [%19, %trueResult_24] {handshake.bb = 2 : ui32, handshake.name = "mux9"} : <i1>, <i4>
    %33:3 = fork [3] %32 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i4>
    %34 = extsi %33#0 {handshake.bb = 2 : ui32, handshake.name = "extsi27"} : <i4> to <i6>
    %35 = extsi %33#1 {handshake.bb = 2 : ui32, handshake.name = "extsi28"} : <i4> to <i5>
    %36 = constant %31#0 {handshake.bb = 2 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %37 = extsi %36 {handshake.bb = 2 : ui32, handshake.name = "extsi2"} : <i1> to <i32>
    %38 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %39 = constant %38 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = false} : <>, <i1>
    %40 = extsi %39 {handshake.bb = 2 : ui32, handshake.name = "extsi29"} : <i1> to <i4>
    %41 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %42 = constant %41 {handshake.bb = 2 : ui32, handshake.name = "constant27", value = 7 : i4} : <>, <i4>
    %43 = extsi %42 {handshake.bb = 2 : ui32, handshake.name = "extsi30"} : <i4> to <i8>
    %44 = muli %29, %43 {handshake.bb = 2 : ui32, handshake.name = "muli4"} : <i8>
    %45 = trunci %44 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i8> to <i6>
    %46 = addi %34, %45 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i6>
    %addressResult, %dataResult = store[%46] %37 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0]]>, <"store1" (3) [[0, 0], [0, 0]]>, <"load4" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i6>, <i32>
    %trueResult, %falseResult = cond_br %100#6, %51#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br71"} : <i1>, <>
    sink %falseResult {handshake.name = "sink0"} : <>
    %trueResult_4, %falseResult_5 = cond_br %100#5, %52#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br72"} : <i1>, <>
    sink %trueResult_4 {handshake.name = "sink1"} : <>
    %47 = constant %0#10 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant30", value = false} : <>, <i1>
    %48 = merge %47, %100#4 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge8"} : <i1>
    %49:5 = fork [5] %48 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i1>
    %50 = mux %49#4 [%24#0, %trueResult] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux16"} : <i1>, <>
    %51:2 = fork [2] %50 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <>
    %52:2 = lazy_fork [2] %51#0 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_6, %falseResult_7 = cond_br %100#0, %98 {handshake.bb = 3 : ui32, handshake.name = "cond_br47"} : <i1>, <i4>
    sink %falseResult_7 {handshake.name = "sink2"} : <i4>
    %trueResult_8, %falseResult_9 = cond_br %100#3, %64#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br48"} : <i1>, <i32>
    sink %falseResult_9 {handshake.name = "sink3"} : <i32>
    %trueResult_10, %falseResult_11 = cond_br %100#2, %59#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br49"} : <i1>, <i4>
    sink %falseResult_11 {handshake.name = "sink4"} : <i4>
    %trueResult_12, %falseResult_13 = cond_br %100#1, %54#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br50"} : <i1>, <i4>
    sink %falseResult_13 {handshake.name = "sink5"} : <i4>
    %53 = mux %49#0 [%28#1, %trueResult_12] {handshake.bb = 3 : ui32, handshake.name = "mux13"} : <i1>, <i4>
    %54:4 = fork [4] %53 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i4>
    %55 = extsi %54#0 {handshake.bb = 3 : ui32, handshake.name = "extsi31"} : <i4> to <i8>
    %56 = extsi %54#1 {handshake.bb = 3 : ui32, handshake.name = "extsi32"} : <i4> to <i8>
    %57 = extsi %54#2 {handshake.bb = 3 : ui32, handshake.name = "extsi33"} : <i4> to <i8>
    %58 = mux %49#1 [%33#2, %trueResult_10] {handshake.bb = 3 : ui32, handshake.name = "mux14"} : <i1>, <i4>
    %59:4 = fork [4] %58 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i4>
    %60 = extsi %59#0 {handshake.bb = 3 : ui32, handshake.name = "extsi34"} : <i4> to <i6>
    %61 = extsi %59#1 {handshake.bb = 3 : ui32, handshake.name = "extsi35"} : <i4> to <i6>
    %62 = extsi %59#2 {handshake.bb = 3 : ui32, handshake.name = "extsi36"} : <i4> to <i6>
    %63 = mux %49#3 [%26#1, %trueResult_8] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux15"} : <i1>, <i32>
    %64:2 = fork [2] %63 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i32>
    %65 = mux %49#2 [%40, %trueResult_6] {handshake.bb = 3 : ui32, handshake.name = "mux17"} : <i1>, <i4>
    %66:3 = fork [3] %65 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <i4>
    %67 = extsi %66#0 {handshake.bb = 3 : ui32, handshake.name = "extsi37"} : <i4> to <i6>
    %68 = extsi %66#1 {handshake.bb = 3 : ui32, handshake.name = "extsi38"} : <i4> to <i5>
    %69 = extsi %66#2 {handshake.bb = 3 : ui32, handshake.name = "extsi39"} : <i4> to <i8>
    %70 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %71 = constant %70 {handshake.bb = 3 : ui32, handshake.name = "constant28", value = 7 : i4} : <>, <i4>
    %72:5 = fork [5] %71 {handshake.bb = 3 : ui32, handshake.name = "fork16"} : <i4>
    %73 = extsi %72#0 {handshake.bb = 3 : ui32, handshake.name = "extsi40"} : <i4> to <i8>
    %74 = extsi %72#1 {handshake.bb = 3 : ui32, handshake.name = "extsi41"} : <i4> to <i8>
    %75 = extsi %72#2 {handshake.bb = 3 : ui32, handshake.name = "extsi42"} : <i4> to <i8>
    %76 = extsi %72#3 {handshake.bb = 3 : ui32, handshake.name = "extsi43"} : <i4> to <i5>
    %77 = extsi %72#4 {handshake.bb = 3 : ui32, handshake.name = "extsi44"} : <i4> to <i8>
    %78 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %79 = constant %78 {handshake.bb = 3 : ui32, handshake.name = "constant31", value = 1 : i2} : <>, <i2>
    %80 = extsi %79 {handshake.bb = 3 : ui32, handshake.name = "extsi45"} : <i2> to <i5>
    %81 = muli %57, %75 {handshake.bb = 3 : ui32, handshake.name = "muli5"} : <i8>
    %82 = trunci %81 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i8> to <i6>
    %83 = addi %67, %82 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i6>
    %addressResult_14, %dataResult_15 = load[%83] %outputs_2 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i6>, <i32>
    %84 = muli %64#0, %dataResult_15 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %85 = muli %69, %77 {handshake.bb = 3 : ui32, handshake.name = "muli6"} : <i8>
    %86 = trunci %85 {handshake.bb = 3 : ui32, handshake.name = "trunci2"} : <i8> to <i6>
    %87 = addi %60, %86 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i6>
    %addressResult_16, %dataResult_17 = load[%87] %outputs_0 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i6>, <i32>
    %88 = muli %84, %dataResult_17 {handshake.bb = 3 : ui32, handshake.name = "muli1"} : <i32>
    %89 = muli %56, %74 {handshake.bb = 3 : ui32, handshake.name = "muli7"} : <i8>
    %90 = trunci %89 {handshake.bb = 3 : ui32, handshake.name = "trunci3"} : <i8> to <i6>
    %91 = addi %61, %90 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i6>
    %addressResult_18, %dataResult_19 = load[%91] %2#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load2"} : <i6>, <i32>
    %92 = addi %dataResult_19, %88 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %93 = muli %55, %73 {handshake.bb = 3 : ui32, handshake.name = "muli8"} : <i8>
    %94 = trunci %93 {handshake.bb = 3 : ui32, handshake.name = "trunci4"} : <i8> to <i6>
    %95 = addi %62, %94 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i6>
    %addressResult_20, %dataResult_21 = store[%95] %92 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"load4" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i6>, <i32>
    %96 = addi %68, %80 {handshake.bb = 3 : ui32, handshake.name = "addi14"} : <i5>
    %97:2 = fork [2] %96 {handshake.bb = 3 : ui32, handshake.name = "fork17"} : <i5>
    %98 = trunci %97#0 {handshake.bb = 3 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %99 = cmpi ult, %97#1, %76 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i5>
    %100:7 = fork [7] %99 {handshake.bb = 3 : ui32, handshake.name = "fork18"} : <i1>
    %trueResult_22, %falseResult_23 = cond_br %111#4, %falseResult_5 {handshake.bb = 4 : ui32, handshake.name = "cond_br73"} : <i1>, <>
    %trueResult_24, %falseResult_25 = cond_br %111#0, %109 {handshake.bb = 4 : ui32, handshake.name = "cond_br51"} : <i1>, <i4>
    sink %falseResult_25 {handshake.name = "sink6"} : <i4>
    %trueResult_26, %falseResult_27 = cond_br %111#3, %31#1 {handshake.bb = 4 : ui32, handshake.name = "cond_br52"} : <i1>, <>
    sink %falseResult_27 {handshake.name = "sink7"} : <>
    %trueResult_28, %falseResult_29 = cond_br %111#1, %28#0 {handshake.bb = 4 : ui32, handshake.name = "cond_br53"} : <i1>, <i4>
    sink %falseResult_29 {handshake.name = "sink8"} : <i4>
    %trueResult_30, %falseResult_31 = cond_br %111#2, %26#0 {handshake.bb = 4 : ui32, handshake.name = "cond_br54"} : <i1>, <i32>
    sink %falseResult_31 {handshake.name = "sink9"} : <i32>
    %101 = source {handshake.bb = 4 : ui32, handshake.name = "source6"} : <>
    %102 = constant %101 {handshake.bb = 4 : ui32, handshake.name = "constant32", value = 7 : i4} : <>, <i4>
    %103 = extsi %102 {handshake.bb = 4 : ui32, handshake.name = "extsi46"} : <i4> to <i5>
    %104 = source {handshake.bb = 4 : ui32, handshake.name = "source7"} : <>
    %105 = constant %104 {handshake.bb = 4 : ui32, handshake.name = "constant33", value = 1 : i2} : <>, <i2>
    %106 = extsi %105 {handshake.bb = 4 : ui32, handshake.name = "extsi47"} : <i2> to <i5>
    %107 = addi %35, %106 {handshake.bb = 4 : ui32, handshake.name = "addi15"} : <i5>
    %108:2 = fork [2] %107 {handshake.bb = 4 : ui32, handshake.name = "fork19"} : <i5>
    %109 = trunci %108#0 {handshake.bb = 4 : ui32, handshake.name = "trunci6"} : <i5> to <i4>
    %110 = cmpi ult, %108#1, %103 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i5>
    %111:6 = fork [6] %110 {handshake.bb = 4 : ui32, handshake.name = "fork20"} : <i1>
    %trueResult_32, %falseResult_33 = cond_br %125#3, %falseResult_23 {handshake.bb = 5 : ui32, handshake.name = "cond_br74"} : <i1>, <>
    %trueResult_34, %falseResult_35 = cond_br %125#5, %114 {handshake.bb = 5 : ui32, handshake.name = "cond_br55"} : <i1>, <i1>
    sink %trueResult_34 {handshake.name = "sink10"} : <i1>
    %112 = extsi %falseResult_35 {handshake.bb = 5 : ui32, handshake.name = "extsi22"} : <i1> to <i4>
    %trueResult_36, %falseResult_37 = cond_br %125#0, %123 {handshake.bb = 5 : ui32, handshake.name = "cond_br56"} : <i1>, <i4>
    sink %falseResult_37 {handshake.name = "sink11"} : <i4>
    %trueResult_38, %falseResult_39 = cond_br %125#2, %13#0 {handshake.bb = 5 : ui32, handshake.name = "cond_br57"} : <i1>, <>
    sink %falseResult_39 {handshake.name = "sink12"} : <>
    %trueResult_40, %falseResult_41 = cond_br %125#1, %11#0 {handshake.bb = 5 : ui32, handshake.name = "cond_br58"} : <i1>, <i32>
    sink %falseResult_41 {handshake.name = "sink13"} : <i32>
    %113 = source {handshake.bb = 5 : ui32, handshake.name = "source8"} : <>
    %114 = constant %113 {handshake.bb = 5 : ui32, handshake.name = "constant35", value = false} : <>, <i1>
    %115 = source {handshake.bb = 5 : ui32, handshake.name = "source9"} : <>
    %116 = constant %115 {handshake.bb = 5 : ui32, handshake.name = "constant36", value = 7 : i4} : <>, <i4>
    %117 = extsi %116 {handshake.bb = 5 : ui32, handshake.name = "extsi48"} : <i4> to <i5>
    %118 = source {handshake.bb = 5 : ui32, handshake.name = "source10"} : <>
    %119 = constant %118 {handshake.bb = 5 : ui32, handshake.name = "constant37", value = 1 : i2} : <>, <i2>
    %120 = extsi %119 {handshake.bb = 5 : ui32, handshake.name = "extsi49"} : <i2> to <i5>
    %121 = addi %16, %120 {handshake.bb = 5 : ui32, handshake.name = "addi16"} : <i5>
    %122:2 = fork [2] %121 {handshake.bb = 5 : ui32, handshake.name = "fork21"} : <i5>
    %123 = trunci %122#0 {handshake.bb = 5 : ui32, handshake.name = "trunci7"} : <i5> to <i4>
    %124 = cmpi ult, %122#1, %117 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i5>
    %125:6 = fork [6] %124 {handshake.bb = 5 : ui32, handshake.name = "fork22"} : <i1>
    %126 = constant %0#9 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "constant34", value = false} : <>, <i1>
    %127 = merge %126, %248#4 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "merge12"} : <i1>
    %128:4 = fork [4] %127 {handshake.bb = 6 : ui32, handshake.name = "fork23"} : <i1>
    %129 = mux %128#3 [%falseResult_33, %trueResult_78] {ftd.regen, handshake.bb = 6 : ui32, handshake.name = "mux22"} : <i1>, <>
    %130:2 = fork [2] %129 {handshake.bb = 6 : ui32, handshake.name = "fork24"} : <>
    %131 = mux %128#2 [%0#8, %trueResult_76] {ftd.phi, handshake.bb = 6 : ui32, handshake.name = "mux28"} : <i1>, <>
    %132 = mux %128#1 [%arg1, %trueResult_82] {ftd.regen, handshake.bb = 6 : ui32, handshake.name = "mux18"} : <i1>, <i32>
    %133:2 = fork [2] %132 {handshake.bb = 6 : ui32, handshake.name = "fork25"} : <i32>
    %134 = mux %128#0 [%112, %trueResult_80] {handshake.bb = 6 : ui32, handshake.name = "mux19"} : <i1>, <i4>
    %135:2 = fork [2] %134 {handshake.bb = 6 : ui32, handshake.name = "fork26"} : <i4>
    %136 = extsi %135#0 {handshake.bb = 6 : ui32, handshake.name = "extsi50"} : <i4> to <i5>
    %137 = source {handshake.bb = 6 : ui32, handshake.name = "source11"} : <>
    %138 = constant %137 {handshake.bb = 6 : ui32, handshake.name = "constant39", value = false} : <>, <i1>
    %139 = extsi %138 {handshake.bb = 6 : ui32, handshake.name = "extsi51"} : <i1> to <i4>
    %140 = constant %0#7 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "constant38", value = false} : <>, <i1>
    %141 = merge %140, %237#5 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "merge16"} : <i1>
    %142:5 = fork [5] %141 {handshake.bb = 7 : ui32, handshake.name = "fork27"} : <i1>
    %143 = mux %142#4 [%130#1, %trueResult_68] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux29"} : <i1>, <>
    %144:2 = fork [2] %143 {handshake.bb = 7 : ui32, handshake.name = "fork28"} : <>
    %145 = mux %142#3 [%131, %trueResult_66] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux35"} : <i1>, <>
    %146:2 = lazy_fork [2] %145 {handshake.bb = 7 : ui32, handshake.name = "lazy_fork2"} : <>
    %147 = mux %142#2 [%133#1, %trueResult_74] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux24"} : <i1>, <i32>
    %148:2 = fork [2] %147 {handshake.bb = 7 : ui32, handshake.name = "fork29"} : <i32>
    %149 = mux %142#0 [%135#1, %trueResult_72] {handshake.bb = 7 : ui32, handshake.name = "mux25"} : <i1>, <i4>
    %150:4 = fork [4] %149 {handshake.bb = 7 : ui32, handshake.name = "fork30"} : <i4>
    %151 = extsi %150#2 {handshake.bb = 7 : ui32, handshake.name = "extsi52"} : <i4> to <i8>
    %152 = extsi %150#3 {handshake.bb = 7 : ui32, handshake.name = "extsi53"} : <i4> to <i8>
    %153 = mux %142#1 [%139, %trueResult_70] {handshake.bb = 7 : ui32, handshake.name = "mux26"} : <i1>, <i4>
    %154:4 = fork [4] %153 {handshake.bb = 7 : ui32, handshake.name = "fork31"} : <i4>
    %155 = extsi %154#0 {handshake.bb = 7 : ui32, handshake.name = "extsi54"} : <i4> to <i6>
    %156 = extsi %154#1 {handshake.bb = 7 : ui32, handshake.name = "extsi55"} : <i4> to <i6>
    %157 = extsi %154#2 {handshake.bb = 7 : ui32, handshake.name = "extsi56"} : <i4> to <i5>
    %158 = source {handshake.bb = 7 : ui32, handshake.name = "source12"} : <>
    %159 = constant %158 {handshake.bb = 7 : ui32, handshake.name = "constant40", value = false} : <>, <i1>
    %160 = extsi %159 {handshake.bb = 7 : ui32, handshake.name = "extsi57"} : <i1> to <i4>
    %161 = source {handshake.bb = 7 : ui32, handshake.name = "source13"} : <>
    %162 = constant %161 {handshake.bb = 7 : ui32, handshake.name = "constant41", value = 7 : i4} : <>, <i4>
    %163:2 = fork [2] %162 {handshake.bb = 7 : ui32, handshake.name = "fork32"} : <i4>
    %164 = extsi %163#0 {handshake.bb = 7 : ui32, handshake.name = "extsi58"} : <i4> to <i8>
    %165 = extsi %163#1 {handshake.bb = 7 : ui32, handshake.name = "extsi59"} : <i4> to <i8>
    %166 = muli %152, %165 {handshake.bb = 7 : ui32, handshake.name = "muli9"} : <i8>
    %167 = trunci %166 {handshake.bb = 7 : ui32, handshake.name = "trunci8"} : <i8> to <i6>
    %168 = addi %155, %167 {handshake.bb = 7 : ui32, handshake.name = "addi7"} : <i6>
    %addressResult_42, %dataResult_43 = load[%168] %1#0 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"store2" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i6>, <i32>
    %169 = muli %dataResult_43, %148#1 {handshake.bb = 7 : ui32, handshake.name = "muli2"} : <i32>
    %170 = muli %151, %164 {handshake.bb = 7 : ui32, handshake.name = "muli10"} : <i8>
    %171 = trunci %170 {handshake.bb = 7 : ui32, handshake.name = "trunci9"} : <i8> to <i6>
    %172 = addi %156, %171 {handshake.bb = 7 : ui32, handshake.name = "addi8"} : <i6>
    %addressResult_44, %dataResult_45 = store[%172] %169 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"load6" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store2"} : <i6>, <i32>
    %trueResult_46, %falseResult_47 = cond_br %226#6, %179#1 {handshake.bb = 8 : ui32, handshake.name = "cond_br75"} : <i1>, <>
    sink %falseResult_47 {handshake.name = "sink14"} : <>
    %trueResult_48, %falseResult_49 = cond_br %226#5, %177#1 {handshake.bb = 8 : ui32, handshake.name = "cond_br76"} : <i1>, <>
    sink %falseResult_49 {handshake.name = "sink15"} : <>
    %trueResult_50, %falseResult_51 = cond_br %226#4, %181#0 {handshake.bb = 8 : ui32, handshake.name = "cond_br77"} : <i1>, <>
    sink %trueResult_50 {handshake.name = "sink16"} : <>
    %173 = constant %0#6 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "constant44", value = false} : <>, <i1>
    %174 = merge %173, %226#3 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "merge22"} : <i1>
    %175:5 = fork [5] %174 {handshake.bb = 8 : ui32, handshake.name = "fork33"} : <i1>
    %176 = mux %175#4 [%146#0, %trueResult_48] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux36"} : <i1>, <>
    %177:2 = fork [2] %176 {handshake.bb = 8 : ui32, handshake.name = "fork34"} : <>
    %178 = mux %175#3 [%144#1, %trueResult_46] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux37"} : <i1>, <>
    %179:2 = fork [2] %178 {handshake.bb = 8 : ui32, handshake.name = "fork35"} : <>
    %180:2 = lazy_fork [2] %179#0 {handshake.bb = 8 : ui32, handshake.name = "lazy_fork3"} : <>
    sink %180#0 {handshake.name = "sink17"} : <>
    %181:2 = lazy_fork [2] %177#0 {handshake.bb = 8 : ui32, handshake.name = "lazy_fork4"} : <>
    %trueResult_52, %falseResult_53 = cond_br %226#0, %224 {handshake.bb = 8 : ui32, handshake.name = "cond_br59"} : <i1>, <i4>
    sink %falseResult_53 {handshake.name = "sink18"} : <i4>
    %trueResult_54, %falseResult_55 = cond_br %226#1, %188#3 {handshake.bb = 8 : ui32, handshake.name = "cond_br60"} : <i1>, <i4>
    sink %falseResult_55 {handshake.name = "sink19"} : <i4>
    %trueResult_56, %falseResult_57 = cond_br %226#2, %183#3 {handshake.bb = 8 : ui32, handshake.name = "cond_br61"} : <i1>, <i4>
    sink %falseResult_57 {handshake.name = "sink20"} : <i4>
    %182 = mux %175#1 [%154#3, %trueResult_56] {handshake.bb = 8 : ui32, handshake.name = "mux31"} : <i1>, <i4>
    %183:4 = fork [4] %182 {handshake.bb = 8 : ui32, handshake.name = "fork36"} : <i4>
    %184 = extsi %183#0 {handshake.bb = 8 : ui32, handshake.name = "extsi60"} : <i4> to <i6>
    %185 = extsi %183#1 {handshake.bb = 8 : ui32, handshake.name = "extsi61"} : <i4> to <i6>
    %186 = extsi %183#2 {handshake.bb = 8 : ui32, handshake.name = "extsi62"} : <i4> to <i6>
    %187 = mux %175#0 [%150#1, %trueResult_54] {handshake.bb = 8 : ui32, handshake.name = "mux32"} : <i1>, <i4>
    %188:4 = fork [4] %187 {handshake.bb = 8 : ui32, handshake.name = "fork37"} : <i4>
    %189 = extsi %188#0 {handshake.bb = 8 : ui32, handshake.name = "extsi63"} : <i4> to <i8>
    %190 = extsi %188#1 {handshake.bb = 8 : ui32, handshake.name = "extsi64"} : <i4> to <i8>
    %191 = extsi %188#2 {handshake.bb = 8 : ui32, handshake.name = "extsi65"} : <i4> to <i8>
    %192 = mux %175#2 [%160, %trueResult_52] {handshake.bb = 8 : ui32, handshake.name = "mux33"} : <i1>, <i4>
    %193:3 = fork [3] %192 {handshake.bb = 8 : ui32, handshake.name = "fork38"} : <i4>
    %194 = extsi %193#0 {handshake.bb = 8 : ui32, handshake.name = "extsi66"} : <i4> to <i6>
    %195 = extsi %193#1 {handshake.bb = 8 : ui32, handshake.name = "extsi67"} : <i4> to <i5>
    %196 = extsi %193#2 {handshake.bb = 8 : ui32, handshake.name = "extsi68"} : <i4> to <i8>
    %197 = source {handshake.bb = 8 : ui32, handshake.name = "source14"} : <>
    %198 = constant %197 {handshake.bb = 8 : ui32, handshake.name = "constant42", value = 7 : i4} : <>, <i4>
    %199:5 = fork [5] %198 {handshake.bb = 8 : ui32, handshake.name = "fork39"} : <i4>
    %200 = extsi %199#0 {handshake.bb = 8 : ui32, handshake.name = "extsi69"} : <i4> to <i8>
    %201 = extsi %199#1 {handshake.bb = 8 : ui32, handshake.name = "extsi70"} : <i4> to <i8>
    %202 = extsi %199#2 {handshake.bb = 8 : ui32, handshake.name = "extsi71"} : <i4> to <i8>
    %203 = extsi %199#3 {handshake.bb = 8 : ui32, handshake.name = "extsi72"} : <i4> to <i5>
    %204 = extsi %199#4 {handshake.bb = 8 : ui32, handshake.name = "extsi73"} : <i4> to <i8>
    %205 = source {handshake.bb = 8 : ui32, handshake.name = "source15"} : <>
    %206 = constant %205 {handshake.bb = 8 : ui32, handshake.name = "constant43", value = 1 : i2} : <>, <i2>
    %207 = extsi %206 {handshake.bb = 8 : ui32, handshake.name = "extsi74"} : <i2> to <i5>
    %208 = muli %191, %202 {handshake.bb = 8 : ui32, handshake.name = "muli11"} : <i8>
    %209 = trunci %208 {handshake.bb = 8 : ui32, handshake.name = "trunci10"} : <i8> to <i6>
    %210 = addi %194, %209 {handshake.bb = 8 : ui32, handshake.name = "addi9"} : <i6>
    %addressResult_58, %dataResult_59 = load[%210] %2#1 {handshake.bb = 8 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load4"} : <i6>, <i32>
    %211 = muli %196, %204 {handshake.bb = 8 : ui32, handshake.name = "muli12"} : <i8>
    %212 = trunci %211 {handshake.bb = 8 : ui32, handshake.name = "trunci11"} : <i8> to <i6>
    %213 = addi %184, %212 {handshake.bb = 8 : ui32, handshake.name = "addi10"} : <i6>
    %addressResult_60, %dataResult_61 = load[%213] %outputs {handshake.bb = 8 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load5"} : <i6>, <i32>
    %214 = muli %dataResult_59, %dataResult_61 {handshake.bb = 8 : ui32, handshake.name = "muli3"} : <i32>
    %215 = muli %190, %201 {handshake.bb = 8 : ui32, handshake.name = "muli13"} : <i8>
    %216 = trunci %215 {handshake.bb = 8 : ui32, handshake.name = "trunci12"} : <i8> to <i6>
    %217 = addi %185, %216 {handshake.bb = 8 : ui32, handshake.name = "addi11"} : <i6>
    %addressResult_62, %dataResult_63 = load[%217] %1#1 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load6"} : <i6>, <i32>
    %218 = addi %dataResult_63, %214 {handshake.bb = 8 : ui32, handshake.name = "addi1"} : <i32>
    %219 = muli %189, %200 {handshake.bb = 8 : ui32, handshake.name = "muli14"} : <i8>
    %220 = trunci %219 {handshake.bb = 8 : ui32, handshake.name = "trunci13"} : <i8> to <i6>
    %221 = addi %186, %220 {handshake.bb = 8 : ui32, handshake.name = "addi12"} : <i6>
    %addressResult_64, %dataResult_65 = store[%221] %218 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"load6" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store3"} : <i6>, <i32>
    %222 = addi %195, %207 {handshake.bb = 8 : ui32, handshake.name = "addi17"} : <i5>
    %223:2 = fork [2] %222 {handshake.bb = 8 : ui32, handshake.name = "fork40"} : <i5>
    %224 = trunci %223#0 {handshake.bb = 8 : ui32, handshake.name = "trunci14"} : <i5> to <i4>
    %225 = cmpi ult, %223#1, %203 {handshake.bb = 8 : ui32, handshake.name = "cmpi3"} : <i5>
    %226:7 = fork [7] %225 {handshake.bb = 8 : ui32, handshake.name = "fork41"} : <i1>
    %trueResult_66, %falseResult_67 = cond_br %237#4, %falseResult_51 {handshake.bb = 9 : ui32, handshake.name = "cond_br78"} : <i1>, <>
    %trueResult_68, %falseResult_69 = cond_br %237#3, %144#0 {handshake.bb = 9 : ui32, handshake.name = "cond_br79"} : <i1>, <>
    sink %falseResult_69 {handshake.name = "sink21"} : <>
    %trueResult_70, %falseResult_71 = cond_br %237#0, %235 {handshake.bb = 9 : ui32, handshake.name = "cond_br62"} : <i1>, <i4>
    sink %falseResult_71 {handshake.name = "sink22"} : <i4>
    %trueResult_72, %falseResult_73 = cond_br %237#1, %150#0 {handshake.bb = 9 : ui32, handshake.name = "cond_br63"} : <i1>, <i4>
    sink %falseResult_73 {handshake.name = "sink23"} : <i4>
    %trueResult_74, %falseResult_75 = cond_br %237#2, %148#0 {handshake.bb = 9 : ui32, handshake.name = "cond_br64"} : <i1>, <i32>
    sink %falseResult_75 {handshake.name = "sink24"} : <i32>
    %227 = source {handshake.bb = 9 : ui32, handshake.name = "source16"} : <>
    %228 = constant %227 {handshake.bb = 9 : ui32, handshake.name = "constant45", value = 7 : i4} : <>, <i4>
    %229 = extsi %228 {handshake.bb = 9 : ui32, handshake.name = "extsi75"} : <i4> to <i5>
    %230 = source {handshake.bb = 9 : ui32, handshake.name = "source17"} : <>
    %231 = constant %230 {handshake.bb = 9 : ui32, handshake.name = "constant46", value = 1 : i2} : <>, <i2>
    %232 = extsi %231 {handshake.bb = 9 : ui32, handshake.name = "extsi76"} : <i2> to <i5>
    %233 = addi %157, %232 {handshake.bb = 9 : ui32, handshake.name = "addi18"} : <i5>
    %234:2 = fork [2] %233 {handshake.bb = 9 : ui32, handshake.name = "fork42"} : <i5>
    %235 = trunci %234#0 {handshake.bb = 9 : ui32, handshake.name = "trunci15"} : <i5> to <i4>
    %236 = cmpi ult, %234#1, %229 {handshake.bb = 9 : ui32, handshake.name = "cmpi4"} : <i5>
    %237:6 = fork [6] %236 {handshake.bb = 9 : ui32, handshake.name = "fork43"} : <i1>
    %trueResult_76, %falseResult_77 = cond_br %248#3, %falseResult_67 {handshake.bb = 10 : ui32, handshake.name = "cond_br80"} : <i1>, <>
    %trueResult_78, %falseResult_79 = cond_br %248#2, %130#0 {handshake.bb = 10 : ui32, handshake.name = "cond_br81"} : <i1>, <>
    sink %falseResult_79 {handshake.name = "sink25"} : <>
    %trueResult_80, %falseResult_81 = cond_br %248#0, %246 {handshake.bb = 10 : ui32, handshake.name = "cond_br65"} : <i1>, <i4>
    sink %falseResult_81 {handshake.name = "sink26"} : <i4>
    %trueResult_82, %falseResult_83 = cond_br %248#1, %133#0 {handshake.bb = 10 : ui32, handshake.name = "cond_br66"} : <i1>, <i32>
    sink %falseResult_83 {handshake.name = "sink27"} : <i32>
    %238 = source {handshake.bb = 10 : ui32, handshake.name = "source18"} : <>
    %239 = constant %238 {handshake.bb = 10 : ui32, handshake.name = "constant47", value = 7 : i4} : <>, <i4>
    %240 = extsi %239 {handshake.bb = 10 : ui32, handshake.name = "extsi77"} : <i4> to <i5>
    %241 = source {handshake.bb = 10 : ui32, handshake.name = "source19"} : <>
    %242 = constant %241 {handshake.bb = 10 : ui32, handshake.name = "constant48", value = 1 : i2} : <>, <i2>
    %243 = extsi %242 {handshake.bb = 10 : ui32, handshake.name = "extsi78"} : <i2> to <i5>
    %244 = addi %136, %243 {handshake.bb = 10 : ui32, handshake.name = "addi19"} : <i5>
    %245:2 = fork [2] %244 {handshake.bb = 10 : ui32, handshake.name = "fork44"} : <i5>
    %246 = trunci %245#0 {handshake.bb = 10 : ui32, handshake.name = "trunci16"} : <i5> to <i4>
    %247 = cmpi ult, %245#1, %240 {handshake.bb = 10 : ui32, handshake.name = "cmpi5"} : <i5>
    %248:5 = fork [5] %247 {handshake.bb = 10 : ui32, handshake.name = "fork45"} : <i1>
    %249:2 = lazy_fork [2] %falseResult_77 {handshake.bb = 11 : ui32, handshake.name = "lazy_fork5"} : <>
    %250:2 = fork [2] %249#1 {handshake.bb = 11 : ui32, handshake.name = "fork46"} : <>
    sink %249#0 {handshake.name = "sink28"} : <>
    %251 = constant %0#4 {handshake.bb = 11 : ui32, handshake.name = "constant49", value = 48 : i7} : <>, <i7>
    %252 = trunci %251 {handshake.bb = 11 : ui32, handshake.name = "trunci17"} : <i7> to <i6>
    %addressResult_84, %dataResult_85 = load[%252] %1#2 {handshake.bb = 11 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load7"} : <i6>, <i32>
    end {handshake.bb = 11 : ui32, handshake.name = "end0"} %dataResult_85, %2#2, %memEnd_3, %memEnd_1, %memEnd, %1#3, %0#5 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


module {
  handshake.func @kernel_2mm(%arg0: !handshake.channel<i32>, %arg1: !handshake.channel<i32>, %arg2: memref<49xi32>, %arg3: memref<49xi32>, %arg4: memref<49xi32>, %arg5: memref<49xi32>, %arg6: memref<49xi32>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, %arg12: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["alpha", "beta", "tmp", "A", "B", "C", "D", "tmp_start", "A_start", "B_start", "C_start", "D_start", "start"], cfg.edges = "[0,1][7,8][2,3][9,7,10,cmpi4][4,2,5,cmpi1][6,7][1,2][8,8,9,cmpi3][3,3,4,cmpi0][10,6,11,cmpi5][5,1,6,cmpi2]", resNames = ["out0", "tmp_end", "A_end", "B_end", "C_end", "D_end", "end"]} {
    %0:16 = fork [16] %arg12 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %1:4 = lsq[%arg6 : memref<49xi32>] (%arg11, %138#1, %addressResult_44, %addressResult_46, %dataResult_47, %174#1, %addressResult_66, %addressResult_68, %dataResult_69, %237#0, %addressResult_92, %237#1)  {groupSizes = [2 : i32, 2 : i32, 1 : i32], handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg5 : memref<49xi32>] %arg10 (%addressResult_64) %0#3 {connectedBlocks = [8 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg4 : memref<49xi32>] %arg9 (%addressResult_18) %0#2 {connectedBlocks = [3 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %outputs_2, %memEnd_3 = mem_controller[%arg3 : memref<49xi32>] %arg8 (%addressResult_16) %0#1 {connectedBlocks = [3 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %2:3 = lsq[%arg2 : memref<49xi32>] (%arg7, %23#1, %addressResult, %dataResult, %51#1, %addressResult_20, %addressResult_22, %dataResult_23, %173#1, %addressResult_62, %0#0)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %3 = constant %0#15 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant4", value = false} : <>, <i1>
    %4:2 = fork [2] %3 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %5 = extsi %4#0 {handshake.bb = 1 : ui32, handshake.name = "extsi23"} : <i1> to <i4>
    %6 = mux %8#3 [%0#14, %trueResult_34] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <>
    %7 = merge %4#1, %116#4 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge1"} : <i1>
    %8:4 = fork [4] %7 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %9 = mux %8#2 [%0#13, %trueResult_42] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %10:5 = fork [5] %9 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %11 = mux %8#1 [%arg0, %trueResult_40] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %12:2 = fork [2] %11 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i32>
    %13 = mux %8#0 [%5, %trueResult_38] {handshake.bb = 1 : ui32, handshake.name = "mux12"} : <i1>, <i4>
    %14:2 = fork [2] %13 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i4>
    %15 = extsi %14#0 {handshake.bb = 1 : ui32, handshake.name = "extsi24"} : <i4> to <i5>
    %16 = constant %10#2 {handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %17:2 = fork [2] %16 {handshake.bb = 1 : ui32, handshake.name = "fork6"} : <i1>
    %18 = extsi %17#0 {handshake.bb = 1 : ui32, handshake.name = "extsi25"} : <i1> to <i4>
    %19 = constant %0#12 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant28", value = false} : <>, <i1>
    %20 = mux %22#4 [%6, %trueResult_24] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux7"} : <i1>, <>
    %21 = merge %19, %106#5 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge4"} : <i1>
    %22:5 = fork [5] %21 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i1>
    %23:2 = lazy_fork [2] %20 {handshake.bb = 2 : ui32, handshake.name = "lazy_fork0"} : <>
    %24 = mux %22#3 [%12#1, %trueResult_32] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux17"} : <i1>, <i32>
    %25:2 = fork [2] %24 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i32>
    %26 = mux %22#2 [%10#4, %trueResult_30] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux20"} : <i1>, <>
    %27:5 = fork [5] %26 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <>
    %28 = mux %22#0 [%14#1, %trueResult_28] {handshake.bb = 2 : ui32, handshake.name = "mux21"} : <i1>, <i4>
    %29:3 = fork [3] %28 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i4>
    %30 = extsi %29#2 {handshake.bb = 2 : ui32, handshake.name = "extsi26"} : <i4> to <i8>
    %31 = mux %22#1 [%18, %trueResult_26] {handshake.bb = 2 : ui32, handshake.name = "mux25"} : <i1>, <i4>
    %32:3 = fork [3] %31 {handshake.bb = 2 : ui32, handshake.name = "fork11"} : <i4>
    %33 = extsi %32#0 {handshake.bb = 2 : ui32, handshake.name = "extsi27"} : <i4> to <i6>
    %34 = extsi %32#1 {handshake.bb = 2 : ui32, handshake.name = "extsi28"} : <i4> to <i5>
    %35 = constant %27#2 {handshake.bb = 2 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %36:2 = fork [2] %35 {handshake.bb = 2 : ui32, handshake.name = "fork12"} : <i1>
    %37 = extsi %36#0 {handshake.bb = 2 : ui32, handshake.name = "extsi29"} : <i1> to <i4>
    %38 = extsi %36#1 {handshake.bb = 2 : ui32, handshake.name = "extsi4"} : <i1> to <i32>
    %39 = constant %27#1 {handshake.bb = 2 : ui32, handshake.name = "constant3", value = 7 : i4} : <>, <i4>
    %40:2 = fork [2] %39 {handshake.bb = 2 : ui32, handshake.name = "fork13"} : <i4>
    %41 = extsi %40#0 {handshake.bb = 2 : ui32, handshake.name = "extsi30"} : <i4> to <i8>
    %42 = extsi %40#1 {handshake.bb = 2 : ui32, handshake.name = "extsi31"} : <i4> to <i5>
    %43 = muli %30, %41 {handshake.bb = 2 : ui32, handshake.name = "muli4"} : <i8>
    %44 = trunci %43 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i8> to <i6>
    %45 = addi %33, %44 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i6>
    %addressResult, %dataResult = store[%45] %38 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0]]>, <"store1" (3) [[0, 0], [0, 0]]>, <"load4" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i6>, <i32>
    %trueResult, %falseResult = cond_br %99#7, %50#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br48"} : <i1>, <>
    sink %falseResult {handshake.name = "sink0"} : <>
    %trueResult_4, %falseResult_5 = cond_br %99#6, %51#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br49"} : <i1>, <>
    sink %trueResult_4 {handshake.name = "sink1"} : <>
    %46 = constant %0#11 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant29", value = false} : <>, <i1>
    %47 = merge %46, %99#5 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge7"} : <i1>
    %48:6 = fork [6] %47 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i1>
    %49 = mux %48#5 [%23#0, %trueResult] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux8"} : <i1>, <>
    %50:2 = fork [2] %49 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <>
    %51:2 = lazy_fork [2] %50#0 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_6, %falseResult_7 = cond_br %99#0, %97 {handshake.bb = 3 : ui32, handshake.name = "cond_br82"} : <i1>, <i4>
    sink %falseResult_7 {handshake.name = "sink2"} : <i4>
    %trueResult_8, %falseResult_9 = cond_br %99#4, %65#2 {handshake.bb = 3 : ui32, handshake.name = "cond_br83"} : <i1>, <>
    sink %falseResult_9 {handshake.name = "sink3"} : <>
    %trueResult_10, %falseResult_11 = cond_br %99#3, %63#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br84"} : <i1>, <i32>
    sink %falseResult_11 {handshake.name = "sink4"} : <i32>
    %trueResult_12, %falseResult_13 = cond_br %99#2, %58#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br85"} : <i1>, <i4>
    sink %falseResult_13 {handshake.name = "sink5"} : <i4>
    %trueResult_14, %falseResult_15 = cond_br %99#1, %53#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br86"} : <i1>, <i4>
    sink %falseResult_15 {handshake.name = "sink6"} : <i4>
    %52 = mux %48#0 [%29#1, %trueResult_14] {handshake.bb = 3 : ui32, handshake.name = "mux29"} : <i1>, <i4>
    %53:4 = fork [4] %52 {handshake.bb = 3 : ui32, handshake.name = "fork16"} : <i4>
    %54 = extsi %53#0 {handshake.bb = 3 : ui32, handshake.name = "extsi32"} : <i4> to <i8>
    %55 = extsi %53#1 {handshake.bb = 3 : ui32, handshake.name = "extsi33"} : <i4> to <i8>
    %56 = extsi %53#2 {handshake.bb = 3 : ui32, handshake.name = "extsi34"} : <i4> to <i8>
    %57 = mux %48#1 [%32#2, %trueResult_12] {handshake.bb = 3 : ui32, handshake.name = "mux30"} : <i1>, <i4>
    %58:4 = fork [4] %57 {handshake.bb = 3 : ui32, handshake.name = "fork17"} : <i4>
    %59 = extsi %58#0 {handshake.bb = 3 : ui32, handshake.name = "extsi35"} : <i4> to <i6>
    %60 = extsi %58#1 {handshake.bb = 3 : ui32, handshake.name = "extsi36"} : <i4> to <i6>
    %61 = extsi %58#2 {handshake.bb = 3 : ui32, handshake.name = "extsi37"} : <i4> to <i6>
    %62 = mux %48#4 [%25#1, %trueResult_10] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux31"} : <i1>, <i32>
    %63:2 = fork [2] %62 {handshake.bb = 3 : ui32, handshake.name = "fork18"} : <i32>
    %64 = mux %48#3 [%27#4, %trueResult_8] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux33"} : <i1>, <>
    %65:3 = fork [3] %64 {handshake.bb = 3 : ui32, handshake.name = "fork19"} : <>
    %66 = mux %48#2 [%37, %trueResult_6] {handshake.bb = 3 : ui32, handshake.name = "mux35"} : <i1>, <i4>
    %67:3 = fork [3] %66 {handshake.bb = 3 : ui32, handshake.name = "fork20"} : <i4>
    %68 = extsi %67#0 {handshake.bb = 3 : ui32, handshake.name = "extsi38"} : <i4> to <i6>
    %69 = extsi %67#1 {handshake.bb = 3 : ui32, handshake.name = "extsi39"} : <i4> to <i5>
    %70 = extsi %67#2 {handshake.bb = 3 : ui32, handshake.name = "extsi40"} : <i4> to <i8>
    %71 = constant %65#1 {handshake.bb = 3 : ui32, handshake.name = "constant26", value = 7 : i4} : <>, <i4>
    %72:5 = fork [5] %71 {handshake.bb = 3 : ui32, handshake.name = "fork21"} : <i4>
    %73 = extsi %72#0 {handshake.bb = 3 : ui32, handshake.name = "extsi41"} : <i4> to <i8>
    %74 = extsi %72#1 {handshake.bb = 3 : ui32, handshake.name = "extsi42"} : <i4> to <i8>
    %75 = extsi %72#2 {handshake.bb = 3 : ui32, handshake.name = "extsi43"} : <i4> to <i8>
    %76 = extsi %72#3 {handshake.bb = 3 : ui32, handshake.name = "extsi44"} : <i4> to <i5>
    %77 = extsi %72#4 {handshake.bb = 3 : ui32, handshake.name = "extsi45"} : <i4> to <i8>
    %78 = constant %65#0 {handshake.bb = 3 : ui32, handshake.name = "constant27", value = 1 : i2} : <>, <i2>
    %79 = extsi %78 {handshake.bb = 3 : ui32, handshake.name = "extsi46"} : <i2> to <i5>
    %80 = muli %56, %75 {handshake.bb = 3 : ui32, handshake.name = "muli5"} : <i8>
    %81 = trunci %80 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i8> to <i6>
    %82 = addi %68, %81 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i6>
    %addressResult_16, %dataResult_17 = load[%82] %outputs_2 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i6>, <i32>
    %83 = muli %63#0, %dataResult_17 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %84 = muli %70, %77 {handshake.bb = 3 : ui32, handshake.name = "muli6"} : <i8>
    %85 = trunci %84 {handshake.bb = 3 : ui32, handshake.name = "trunci2"} : <i8> to <i6>
    %86 = addi %59, %85 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i6>
    %addressResult_18, %dataResult_19 = load[%86] %outputs_0 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i6>, <i32>
    %87 = muli %83, %dataResult_19 {handshake.bb = 3 : ui32, handshake.name = "muli1"} : <i32>
    %88 = muli %55, %74 {handshake.bb = 3 : ui32, handshake.name = "muli7"} : <i8>
    %89 = trunci %88 {handshake.bb = 3 : ui32, handshake.name = "trunci3"} : <i8> to <i6>
    %90 = addi %60, %89 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i6>
    %addressResult_20, %dataResult_21 = load[%90] %2#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load2"} : <i6>, <i32>
    %91 = addi %dataResult_21, %87 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %92 = muli %54, %73 {handshake.bb = 3 : ui32, handshake.name = "muli8"} : <i8>
    %93 = trunci %92 {handshake.bb = 3 : ui32, handshake.name = "trunci4"} : <i8> to <i6>
    %94 = addi %61, %93 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i6>
    %addressResult_22, %dataResult_23 = store[%94] %91 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"load4" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i6>, <i32>
    %95 = addi %69, %79 {handshake.bb = 3 : ui32, handshake.name = "addi14"} : <i5>
    %96:2 = fork [2] %95 {handshake.bb = 3 : ui32, handshake.name = "fork22"} : <i5>
    %97 = trunci %96#0 {handshake.bb = 3 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %98 = cmpi ult, %96#1, %76 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i5>
    %99:8 = fork [8] %98 {handshake.bb = 3 : ui32, handshake.name = "fork23"} : <i1>
    %trueResult_24, %falseResult_25 = cond_br %106#4, %falseResult_5 {handshake.bb = 4 : ui32, handshake.name = "cond_br50"} : <i1>, <>
    %trueResult_26, %falseResult_27 = cond_br %106#0, %104 {handshake.bb = 4 : ui32, handshake.name = "cond_br87"} : <i1>, <i4>
    sink %falseResult_27 {handshake.name = "sink7"} : <i4>
    %trueResult_28, %falseResult_29 = cond_br %106#1, %29#0 {handshake.bb = 4 : ui32, handshake.name = "cond_br88"} : <i1>, <i4>
    sink %falseResult_29 {handshake.name = "sink8"} : <i4>
    %trueResult_30, %falseResult_31 = cond_br %106#3, %27#3 {handshake.bb = 4 : ui32, handshake.name = "cond_br89"} : <i1>, <>
    sink %falseResult_31 {handshake.name = "sink9"} : <>
    %trueResult_32, %falseResult_33 = cond_br %106#2, %25#0 {handshake.bb = 4 : ui32, handshake.name = "cond_br90"} : <i1>, <i32>
    sink %falseResult_33 {handshake.name = "sink10"} : <i32>
    %100 = constant %27#0 {handshake.bb = 4 : ui32, handshake.name = "constant30", value = 1 : i2} : <>, <i2>
    %101 = extsi %100 {handshake.bb = 4 : ui32, handshake.name = "extsi47"} : <i2> to <i5>
    %102 = addi %34, %101 {handshake.bb = 4 : ui32, handshake.name = "addi15"} : <i5>
    %103:2 = fork [2] %102 {handshake.bb = 4 : ui32, handshake.name = "fork24"} : <i5>
    %104 = trunci %103#0 {handshake.bb = 4 : ui32, handshake.name = "trunci6"} : <i5> to <i4>
    %105 = cmpi ult, %103#1, %42 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i5>
    %106:6 = fork [6] %105 {handshake.bb = 4 : ui32, handshake.name = "fork25"} : <i1>
    %trueResult_34, %falseResult_35 = cond_br %116#3, %falseResult_25 {handshake.bb = 5 : ui32, handshake.name = "cond_br51"} : <i1>, <>
    %trueResult_36, %falseResult_37 = cond_br %116#5, %17#1 {handshake.bb = 5 : ui32, handshake.name = "cond_br91"} : <i1>, <i1>
    sink %trueResult_36 {handshake.name = "sink11"} : <i1>
    %107 = extsi %falseResult_37 {handshake.bb = 5 : ui32, handshake.name = "extsi22"} : <i1> to <i4>
    %trueResult_38, %falseResult_39 = cond_br %116#0, %114 {handshake.bb = 5 : ui32, handshake.name = "cond_br92"} : <i1>, <i4>
    sink %falseResult_39 {handshake.name = "sink12"} : <i4>
    %trueResult_40, %falseResult_41 = cond_br %116#2, %12#0 {handshake.bb = 5 : ui32, handshake.name = "cond_br93"} : <i1>, <i32>
    sink %falseResult_41 {handshake.name = "sink13"} : <i32>
    %trueResult_42, %falseResult_43 = cond_br %116#1, %10#3 {handshake.bb = 5 : ui32, handshake.name = "cond_br94"} : <i1>, <>
    sink %falseResult_43 {handshake.name = "sink14"} : <>
    %108 = constant %10#1 {handshake.bb = 5 : ui32, handshake.name = "constant31", value = 7 : i4} : <>, <i4>
    %109 = extsi %108 {handshake.bb = 5 : ui32, handshake.name = "extsi48"} : <i4> to <i5>
    %110 = constant %10#0 {handshake.bb = 5 : ui32, handshake.name = "constant33", value = 1 : i2} : <>, <i2>
    %111 = extsi %110 {handshake.bb = 5 : ui32, handshake.name = "extsi49"} : <i2> to <i5>
    %112 = addi %15, %111 {handshake.bb = 5 : ui32, handshake.name = "addi16"} : <i5>
    %113:2 = fork [2] %112 {handshake.bb = 5 : ui32, handshake.name = "fork26"} : <i5>
    %114 = trunci %113#0 {handshake.bb = 5 : ui32, handshake.name = "trunci7"} : <i5> to <i4>
    %115 = cmpi ult, %113#1, %109 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i5>
    %116:6 = fork [6] %115 {handshake.bb = 5 : ui32, handshake.name = "fork27"} : <i1>
    %117 = constant %0#10 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "constant32", value = false} : <>, <i1>
    %118 = merge %117, %235#5 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "merge10"} : <i1>
    %119:5 = fork [5] %118 {handshake.bb = 6 : ui32, handshake.name = "fork28"} : <i1>
    %120 = mux %119#4 [%falseResult_35, %trueResult_84] {ftd.regen, handshake.bb = 6 : ui32, handshake.name = "mux11"} : <i1>, <>
    %121:2 = fork [2] %120 {handshake.bb = 6 : ui32, handshake.name = "fork29"} : <>
    %122 = mux %119#3 [%0#9, %trueResult_82] {ftd.phi, handshake.bb = 6 : ui32, handshake.name = "mux15"} : <i1>, <>
    %123 = mux %119#2 [%0#8, %trueResult_90] {ftd.regen, handshake.bb = 6 : ui32, handshake.name = "mux36"} : <i1>, <>
    %124:5 = fork [5] %123 {handshake.bb = 6 : ui32, handshake.name = "fork30"} : <>
    %125 = mux %119#1 [%arg1, %trueResult_88] {ftd.regen, handshake.bb = 6 : ui32, handshake.name = "mux42"} : <i1>, <i32>
    %126:2 = fork [2] %125 {handshake.bb = 6 : ui32, handshake.name = "fork31"} : <i32>
    %127 = mux %119#0 [%107, %trueResult_86] {handshake.bb = 6 : ui32, handshake.name = "mux46"} : <i1>, <i4>
    %128:2 = fork [2] %127 {handshake.bb = 6 : ui32, handshake.name = "fork32"} : <i4>
    %129 = extsi %128#0 {handshake.bb = 6 : ui32, handshake.name = "extsi50"} : <i4> to <i5>
    %130 = constant %124#2 {handshake.bb = 6 : ui32, handshake.name = "constant34", value = false} : <>, <i1>
    %131 = extsi %130 {handshake.bb = 6 : ui32, handshake.name = "extsi51"} : <i1> to <i4>
    %132 = constant %0#7 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "constant37", value = false} : <>, <i1>
    %133 = merge %132, %226#6 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "merge15"} : <i1>
    %134:6 = fork [6] %133 {handshake.bb = 7 : ui32, handshake.name = "fork33"} : <i1>
    %135 = mux %134#5 [%121#1, %trueResult_72] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux16"} : <i1>, <>
    %136:2 = fork [2] %135 {handshake.bb = 7 : ui32, handshake.name = "fork34"} : <>
    %137 = mux %134#4 [%122, %trueResult_70] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux22"} : <i1>, <>
    %138:2 = lazy_fork [2] %137 {handshake.bb = 7 : ui32, handshake.name = "lazy_fork2"} : <>
    %139 = mux %134#3 [%126#1, %trueResult_80] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux55"} : <i1>, <i32>
    %140:2 = fork [2] %139 {handshake.bb = 7 : ui32, handshake.name = "fork35"} : <i32>
    %141 = mux %134#0 [%128#1, %trueResult_78] {handshake.bb = 7 : ui32, handshake.name = "mux56"} : <i1>, <i4>
    %142:4 = fork [4] %141 {handshake.bb = 7 : ui32, handshake.name = "fork36"} : <i4>
    %143 = extsi %142#2 {handshake.bb = 7 : ui32, handshake.name = "extsi52"} : <i4> to <i8>
    %144 = extsi %142#3 {handshake.bb = 7 : ui32, handshake.name = "extsi53"} : <i4> to <i8>
    %145 = mux %134#2 [%124#4, %trueResult_76] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux58"} : <i1>, <>
    %146:5 = fork [5] %145 {handshake.bb = 7 : ui32, handshake.name = "fork37"} : <>
    %147 = mux %134#1 [%131, %trueResult_74] {handshake.bb = 7 : ui32, handshake.name = "mux59"} : <i1>, <i4>
    %148:4 = fork [4] %147 {handshake.bb = 7 : ui32, handshake.name = "fork38"} : <i4>
    %149 = extsi %148#0 {handshake.bb = 7 : ui32, handshake.name = "extsi54"} : <i4> to <i6>
    %150 = extsi %148#1 {handshake.bb = 7 : ui32, handshake.name = "extsi55"} : <i4> to <i6>
    %151 = extsi %148#2 {handshake.bb = 7 : ui32, handshake.name = "extsi56"} : <i4> to <i5>
    %152 = constant %146#2 {handshake.bb = 7 : ui32, handshake.name = "constant35", value = false} : <>, <i1>
    %153 = extsi %152 {handshake.bb = 7 : ui32, handshake.name = "extsi57"} : <i1> to <i4>
    %154 = constant %146#1 {handshake.bb = 7 : ui32, handshake.name = "constant36", value = 7 : i4} : <>, <i4>
    %155:3 = fork [3] %154 {handshake.bb = 7 : ui32, handshake.name = "fork39"} : <i4>
    %156 = extsi %155#0 {handshake.bb = 7 : ui32, handshake.name = "extsi58"} : <i4> to <i8>
    %157 = extsi %155#1 {handshake.bb = 7 : ui32, handshake.name = "extsi59"} : <i4> to <i8>
    %158 = extsi %155#2 {handshake.bb = 7 : ui32, handshake.name = "extsi60"} : <i4> to <i5>
    %159 = muli %144, %157 {handshake.bb = 7 : ui32, handshake.name = "muli9"} : <i8>
    %160 = trunci %159 {handshake.bb = 7 : ui32, handshake.name = "trunci8"} : <i8> to <i6>
    %161 = addi %149, %160 {handshake.bb = 7 : ui32, handshake.name = "addi7"} : <i6>
    %addressResult_44, %dataResult_45 = load[%161] %1#0 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"store2" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i6>, <i32>
    %162 = muli %dataResult_45, %140#1 {handshake.bb = 7 : ui32, handshake.name = "muli2"} : <i32>
    %163 = muli %143, %156 {handshake.bb = 7 : ui32, handshake.name = "muli10"} : <i8>
    %164 = trunci %163 {handshake.bb = 7 : ui32, handshake.name = "trunci9"} : <i8> to <i6>
    %165 = addi %150, %164 {handshake.bb = 7 : ui32, handshake.name = "addi8"} : <i6>
    %addressResult_46, %dataResult_47 = store[%165] %162 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"load6" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store2"} : <i6>, <i32>
    %trueResult_48, %falseResult_49 = cond_br %219#7, %172#1 {handshake.bb = 8 : ui32, handshake.name = "cond_br52"} : <i1>, <>
    sink %falseResult_49 {handshake.name = "sink15"} : <>
    %trueResult_50, %falseResult_51 = cond_br %219#6, %170#1 {handshake.bb = 8 : ui32, handshake.name = "cond_br53"} : <i1>, <>
    sink %falseResult_51 {handshake.name = "sink16"} : <>
    %trueResult_52, %falseResult_53 = cond_br %219#5, %174#0 {handshake.bb = 8 : ui32, handshake.name = "cond_br54"} : <i1>, <>
    sink %trueResult_52 {handshake.name = "sink17"} : <>
    %166 = constant %0#6 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "constant41", value = false} : <>, <i1>
    %167 = merge %166, %219#4 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "merge19"} : <i1>
    %168:6 = fork [6] %167 {handshake.bb = 8 : ui32, handshake.name = "fork40"} : <i1>
    %169 = mux %168#5 [%138#0, %trueResult_50] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux23"} : <i1>, <>
    %170:2 = fork [2] %169 {handshake.bb = 8 : ui32, handshake.name = "fork41"} : <>
    %171 = mux %168#4 [%136#1, %trueResult_48] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux24"} : <i1>, <>
    %172:2 = fork [2] %171 {handshake.bb = 8 : ui32, handshake.name = "fork42"} : <>
    %173:2 = lazy_fork [2] %172#0 {handshake.bb = 8 : ui32, handshake.name = "lazy_fork3"} : <>
    sink %173#0 {handshake.name = "sink18"} : <>
    %174:2 = lazy_fork [2] %170#0 {handshake.bb = 8 : ui32, handshake.name = "lazy_fork4"} : <>
    %trueResult_54, %falseResult_55 = cond_br %219#0, %217 {handshake.bb = 8 : ui32, handshake.name = "cond_br95"} : <i1>, <i4>
    sink %falseResult_55 {handshake.name = "sink19"} : <i4>
    %trueResult_56, %falseResult_57 = cond_br %219#3, %186#2 {handshake.bb = 8 : ui32, handshake.name = "cond_br96"} : <i1>, <>
    sink %falseResult_57 {handshake.name = "sink20"} : <>
    %trueResult_58, %falseResult_59 = cond_br %219#1, %181#3 {handshake.bb = 8 : ui32, handshake.name = "cond_br97"} : <i1>, <i4>
    sink %falseResult_59 {handshake.name = "sink21"} : <i4>
    %trueResult_60, %falseResult_61 = cond_br %219#2, %176#3 {handshake.bb = 8 : ui32, handshake.name = "cond_br98"} : <i1>, <i4>
    sink %falseResult_61 {handshake.name = "sink22"} : <i4>
    %175 = mux %168#1 [%148#3, %trueResult_60] {handshake.bb = 8 : ui32, handshake.name = "mux64"} : <i1>, <i4>
    %176:4 = fork [4] %175 {handshake.bb = 8 : ui32, handshake.name = "fork43"} : <i4>
    %177 = extsi %176#0 {handshake.bb = 8 : ui32, handshake.name = "extsi61"} : <i4> to <i6>
    %178 = extsi %176#1 {handshake.bb = 8 : ui32, handshake.name = "extsi62"} : <i4> to <i6>
    %179 = extsi %176#2 {handshake.bb = 8 : ui32, handshake.name = "extsi63"} : <i4> to <i6>
    %180 = mux %168#0 [%142#1, %trueResult_58] {handshake.bb = 8 : ui32, handshake.name = "mux65"} : <i1>, <i4>
    %181:4 = fork [4] %180 {handshake.bb = 8 : ui32, handshake.name = "fork44"} : <i4>
    %182 = extsi %181#0 {handshake.bb = 8 : ui32, handshake.name = "extsi64"} : <i4> to <i8>
    %183 = extsi %181#1 {handshake.bb = 8 : ui32, handshake.name = "extsi65"} : <i4> to <i8>
    %184 = extsi %181#2 {handshake.bb = 8 : ui32, handshake.name = "extsi66"} : <i4> to <i8>
    %185 = mux %168#3 [%146#4, %trueResult_56] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux66"} : <i1>, <>
    %186:3 = fork [3] %185 {handshake.bb = 8 : ui32, handshake.name = "fork45"} : <>
    %187 = mux %168#2 [%153, %trueResult_54] {handshake.bb = 8 : ui32, handshake.name = "mux68"} : <i1>, <i4>
    %188:3 = fork [3] %187 {handshake.bb = 8 : ui32, handshake.name = "fork46"} : <i4>
    %189 = extsi %188#0 {handshake.bb = 8 : ui32, handshake.name = "extsi67"} : <i4> to <i6>
    %190 = extsi %188#1 {handshake.bb = 8 : ui32, handshake.name = "extsi68"} : <i4> to <i5>
    %191 = extsi %188#2 {handshake.bb = 8 : ui32, handshake.name = "extsi69"} : <i4> to <i8>
    %192 = constant %186#1 {handshake.bb = 8 : ui32, handshake.name = "constant38", value = 7 : i4} : <>, <i4>
    %193:5 = fork [5] %192 {handshake.bb = 8 : ui32, handshake.name = "fork47"} : <i4>
    %194 = extsi %193#0 {handshake.bb = 8 : ui32, handshake.name = "extsi70"} : <i4> to <i8>
    %195 = extsi %193#1 {handshake.bb = 8 : ui32, handshake.name = "extsi71"} : <i4> to <i8>
    %196 = extsi %193#2 {handshake.bb = 8 : ui32, handshake.name = "extsi72"} : <i4> to <i8>
    %197 = extsi %193#3 {handshake.bb = 8 : ui32, handshake.name = "extsi73"} : <i4> to <i5>
    %198 = extsi %193#4 {handshake.bb = 8 : ui32, handshake.name = "extsi74"} : <i4> to <i8>
    %199 = constant %186#0 {handshake.bb = 8 : ui32, handshake.name = "constant39", value = 1 : i2} : <>, <i2>
    %200 = extsi %199 {handshake.bb = 8 : ui32, handshake.name = "extsi75"} : <i2> to <i5>
    %201 = muli %184, %196 {handshake.bb = 8 : ui32, handshake.name = "muli11"} : <i8>
    %202 = trunci %201 {handshake.bb = 8 : ui32, handshake.name = "trunci10"} : <i8> to <i6>
    %203 = addi %189, %202 {handshake.bb = 8 : ui32, handshake.name = "addi9"} : <i6>
    %addressResult_62, %dataResult_63 = load[%203] %2#1 {handshake.bb = 8 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load4"} : <i6>, <i32>
    %204 = muli %191, %198 {handshake.bb = 8 : ui32, handshake.name = "muli12"} : <i8>
    %205 = trunci %204 {handshake.bb = 8 : ui32, handshake.name = "trunci11"} : <i8> to <i6>
    %206 = addi %177, %205 {handshake.bb = 8 : ui32, handshake.name = "addi10"} : <i6>
    %addressResult_64, %dataResult_65 = load[%206] %outputs {handshake.bb = 8 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load5"} : <i6>, <i32>
    %207 = muli %dataResult_63, %dataResult_65 {handshake.bb = 8 : ui32, handshake.name = "muli3"} : <i32>
    %208 = muli %183, %195 {handshake.bb = 8 : ui32, handshake.name = "muli13"} : <i8>
    %209 = trunci %208 {handshake.bb = 8 : ui32, handshake.name = "trunci12"} : <i8> to <i6>
    %210 = addi %178, %209 {handshake.bb = 8 : ui32, handshake.name = "addi11"} : <i6>
    %addressResult_66, %dataResult_67 = load[%210] %1#1 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load6"} : <i6>, <i32>
    %211 = addi %dataResult_67, %207 {handshake.bb = 8 : ui32, handshake.name = "addi1"} : <i32>
    %212 = muli %182, %194 {handshake.bb = 8 : ui32, handshake.name = "muli14"} : <i8>
    %213 = trunci %212 {handshake.bb = 8 : ui32, handshake.name = "trunci13"} : <i8> to <i6>
    %214 = addi %179, %213 {handshake.bb = 8 : ui32, handshake.name = "addi12"} : <i6>
    %addressResult_68, %dataResult_69 = store[%214] %211 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"load6" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store3"} : <i6>, <i32>
    %215 = addi %190, %200 {handshake.bb = 8 : ui32, handshake.name = "addi17"} : <i5>
    %216:2 = fork [2] %215 {handshake.bb = 8 : ui32, handshake.name = "fork48"} : <i5>
    %217 = trunci %216#0 {handshake.bb = 8 : ui32, handshake.name = "trunci14"} : <i5> to <i4>
    %218 = cmpi ult, %216#1, %197 {handshake.bb = 8 : ui32, handshake.name = "cmpi3"} : <i5>
    %219:8 = fork [8] %218 {handshake.bb = 8 : ui32, handshake.name = "fork49"} : <i1>
    %trueResult_70, %falseResult_71 = cond_br %226#5, %falseResult_53 {handshake.bb = 9 : ui32, handshake.name = "cond_br56"} : <i1>, <>
    %trueResult_72, %falseResult_73 = cond_br %226#4, %136#0 {handshake.bb = 9 : ui32, handshake.name = "cond_br57"} : <i1>, <>
    sink %falseResult_73 {handshake.name = "sink23"} : <>
    %trueResult_74, %falseResult_75 = cond_br %226#0, %224 {handshake.bb = 9 : ui32, handshake.name = "cond_br99"} : <i1>, <i4>
    sink %falseResult_75 {handshake.name = "sink24"} : <i4>
    %trueResult_76, %falseResult_77 = cond_br %226#3, %146#3 {handshake.bb = 9 : ui32, handshake.name = "cond_br100"} : <i1>, <>
    sink %falseResult_77 {handshake.name = "sink25"} : <>
    %trueResult_78, %falseResult_79 = cond_br %226#1, %142#0 {handshake.bb = 9 : ui32, handshake.name = "cond_br101"} : <i1>, <i4>
    sink %falseResult_79 {handshake.name = "sink26"} : <i4>
    %trueResult_80, %falseResult_81 = cond_br %226#2, %140#0 {handshake.bb = 9 : ui32, handshake.name = "cond_br102"} : <i1>, <i32>
    sink %falseResult_81 {handshake.name = "sink27"} : <i32>
    %220 = constant %146#0 {handshake.bb = 9 : ui32, handshake.name = "constant40", value = 1 : i2} : <>, <i2>
    %221 = extsi %220 {handshake.bb = 9 : ui32, handshake.name = "extsi76"} : <i2> to <i5>
    %222 = addi %151, %221 {handshake.bb = 9 : ui32, handshake.name = "addi18"} : <i5>
    %223:2 = fork [2] %222 {handshake.bb = 9 : ui32, handshake.name = "fork50"} : <i5>
    %224 = trunci %223#0 {handshake.bb = 9 : ui32, handshake.name = "trunci15"} : <i5> to <i4>
    %225 = cmpi ult, %223#1, %158 {handshake.bb = 9 : ui32, handshake.name = "cmpi4"} : <i5>
    %226:7 = fork [7] %225 {handshake.bb = 9 : ui32, handshake.name = "fork51"} : <i1>
    %trueResult_82, %falseResult_83 = cond_br %235#4, %falseResult_71 {handshake.bb = 10 : ui32, handshake.name = "cond_br58"} : <i1>, <>
    %trueResult_84, %falseResult_85 = cond_br %235#3, %121#0 {handshake.bb = 10 : ui32, handshake.name = "cond_br59"} : <i1>, <>
    sink %falseResult_85 {handshake.name = "sink28"} : <>
    %trueResult_86, %falseResult_87 = cond_br %235#0, %233 {handshake.bb = 10 : ui32, handshake.name = "cond_br103"} : <i1>, <i4>
    sink %falseResult_87 {handshake.name = "sink29"} : <i4>
    %trueResult_88, %falseResult_89 = cond_br %235#2, %126#0 {handshake.bb = 10 : ui32, handshake.name = "cond_br104"} : <i1>, <i32>
    sink %falseResult_89 {handshake.name = "sink30"} : <i32>
    %trueResult_90, %falseResult_91 = cond_br %235#1, %124#3 {handshake.bb = 10 : ui32, handshake.name = "cond_br105"} : <i1>, <>
    sink %falseResult_91 {handshake.name = "sink31"} : <>
    %227 = constant %124#1 {handshake.bb = 10 : ui32, handshake.name = "constant42", value = 7 : i4} : <>, <i4>
    %228 = extsi %227 {handshake.bb = 10 : ui32, handshake.name = "extsi77"} : <i4> to <i5>
    %229 = constant %124#0 {handshake.bb = 10 : ui32, handshake.name = "constant43", value = 1 : i2} : <>, <i2>
    %230 = extsi %229 {handshake.bb = 10 : ui32, handshake.name = "extsi78"} : <i2> to <i5>
    %231 = addi %129, %230 {handshake.bb = 10 : ui32, handshake.name = "addi19"} : <i5>
    %232:2 = fork [2] %231 {handshake.bb = 10 : ui32, handshake.name = "fork52"} : <i5>
    %233 = trunci %232#0 {handshake.bb = 10 : ui32, handshake.name = "trunci16"} : <i5> to <i4>
    %234 = cmpi ult, %232#1, %228 {handshake.bb = 10 : ui32, handshake.name = "cmpi5"} : <i5>
    %235:6 = fork [6] %234 {handshake.bb = 10 : ui32, handshake.name = "fork53"} : <i1>
    %236:2 = lazy_fork [2] %falseResult_83 {handshake.bb = 11 : ui32, handshake.name = "lazy_fork5"} : <>
    %237:2 = fork [2] %236#1 {handshake.bb = 11 : ui32, handshake.name = "fork54"} : <>
    sink %236#0 {handshake.name = "sink32"} : <>
    %238 = constant %0#4 {handshake.bb = 11 : ui32, handshake.name = "constant44", value = 48 : i7} : <>, <i7>
    %239 = trunci %238 {handshake.bb = 11 : ui32, handshake.name = "trunci17"} : <i7> to <i6>
    %addressResult_92, %dataResult_93 = load[%239] %1#2 {handshake.bb = 11 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load7"} : <i6>, <i32>
    end {handshake.bb = 11 : ui32, handshake.name = "end0"} %dataResult_93, %2#2, %memEnd_3, %memEnd_1, %memEnd, %1#3, %0#5 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


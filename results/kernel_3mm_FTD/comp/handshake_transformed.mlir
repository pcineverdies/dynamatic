module {
  handshake.func @kernel_3mm(%arg0: memref<49xi32>, %arg1: memref<49xi32>, %arg2: memref<49xi32>, %arg3: memref<49xi32>, %arg4: memref<49xi32>, %arg5: memref<49xi32>, %arg6: memref<49xi32>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, %arg12: !handshake.control<>, %arg13: !handshake.control<>, %arg14: !handshake.control<>, ...) -> (!handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "B", "C", "D", "E", "F", "G", "A_start", "B_start", "C_start", "D_start", "E_start", "F_start", "G_start", "start"], cfg.edges = "[0,1][7,8][14,12,15,cmpi7][2,3][9,7,10,cmpi4][4,2,5,cmpi1][11,12][6,7][13,13,14,cmpi6][1,2][8,8,9,cmpi3][15,11,16,cmpi8][3,3,4,cmpi0][10,6,11,cmpi5][5,1,6,cmpi2][12,13]", resNames = ["A_end", "B_end", "C_end", "D_end", "E_end", "F_end", "G_end", "end"]} {
    %0:17 = fork [17] %arg14 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %1:2 = lsq[%arg6 : memref<49xi32>] (%arg13, %263#1, %addressResult_108, %dataResult_109, %296#1, %addressResult_130, %addressResult_132, %dataResult_133, %364#6)  {groupSizes = [1 : i32, 2 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %2:3 = lsq[%arg5 : memref<49xi32>] (%arg12, %140#1, %addressResult_56, %dataResult_57, %167#1, %addressResult_74, %addressResult_76, %dataResult_77, %295#1, %addressResult_128, %364#5)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.name = "lsq4"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %3:3 = lsq[%arg4 : memref<49xi32>] (%arg11, %25#1, %addressResult, %dataResult, %52#1, %addressResult_22, %addressResult_24, %dataResult_25, %294#1, %addressResult_126, %364#4)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.name = "lsq5"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg3 : memref<49xi32>] %arg10 (%addressResult_72) %364#3 {connectedBlocks = [8 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg2 : memref<49xi32>] %arg9 (%addressResult_70) %364#2 {connectedBlocks = [8 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %outputs_2, %memEnd_3 = mem_controller[%arg1 : memref<49xi32>] %arg8 (%addressResult_20) %364#1 {connectedBlocks = [3 : i32], handshake.name = "mem_controller6"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %outputs_4, %memEnd_5 = mem_controller[%arg0 : memref<49xi32>] %arg7 (%addressResult_18) %364#0 {connectedBlocks = [3 : i32], handshake.name = "mem_controller7"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %4 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %5 = constant %4 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %6 = extsi %5 {handshake.bb = 0 : ui32, handshake.name = "extsi35"} : <i1> to <i4>
    %7 = br %0#16 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %8 = mux %11#2 [%0#15, %trueResult_40] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <>
    %9 = constant %0#14 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant37", value = false} : <>, <i1>
    %10 = merge %9, %122#3 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge1"} : <i1>
    %11:3 = fork [3] %10 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %12 = mux %11#1 [%0#13, %trueResult_46] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %13:2 = fork [2] %12 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <>
    %result, %index = control_merge %7, %trueResult_50  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    sink %index {handshake.name = "sink0"} : <i1>
    %14 = mux %11#0 [%6, %trueResult_44] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i4>
    %15:2 = fork [2] %14 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <i4>
    %16 = extsi %15#0 {handshake.bb = 1 : ui32, handshake.name = "extsi36"} : <i4> to <i5>
    %17 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %18 = constant %17 {handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %19 = extsi %18 {handshake.bb = 1 : ui32, handshake.name = "extsi37"} : <i1> to <i4>
    %20 = br %result {handshake.bb = 1 : ui32, handshake.name = "br6"} : <>
    %21 = constant %0#12 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant39", value = false} : <>, <i1>
    %22 = mux %24#3 [%8, %trueResult_28] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux9"} : <i1>, <>
    %23 = merge %21, %108#4 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge6"} : <i1>
    %24:4 = fork [4] %23 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i1>
    %25:2 = lazy_fork [2] %22 {handshake.bb = 2 : ui32, handshake.name = "lazy_fork0"} : <>
    %26 = mux %24#0 [%15#1, %trueResult_34] {handshake.bb = 2 : ui32, handshake.name = "mux5"} : <i1>, <i4>
    %27:3 = fork [3] %26 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i4>
    %28 = extsi %27#2 {handshake.bb = 2 : ui32, handshake.name = "extsi38"} : <i4> to <i8>
    %29 = mux %24#2 [%13#1, %trueResult_32] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux6"} : <i1>, <>
    %30:2 = fork [2] %29 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <>
    %result_6, %index_7 = control_merge %20, %trueResult_38  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    sink %index_7 {handshake.name = "sink1"} : <i1>
    %31 = mux %24#1 [%19, %trueResult_30] {handshake.bb = 2 : ui32, handshake.name = "mux7"} : <i1>, <i4>
    %32:3 = fork [3] %31 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i4>
    %33 = extsi %32#0 {handshake.bb = 2 : ui32, handshake.name = "extsi39"} : <i4> to <i6>
    %34 = extsi %32#1 {handshake.bb = 2 : ui32, handshake.name = "extsi40"} : <i4> to <i5>
    %35 = constant %30#0 {handshake.bb = 2 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %36 = extsi %35 {handshake.bb = 2 : ui32, handshake.name = "extsi2"} : <i1> to <i32>
    %37 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %38 = constant %37 {handshake.bb = 2 : ui32, handshake.name = "constant36", value = false} : <>, <i1>
    %39 = extsi %38 {handshake.bb = 2 : ui32, handshake.name = "extsi41"} : <i1> to <i4>
    %40 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %41 = constant %40 {handshake.bb = 2 : ui32, handshake.name = "constant38", value = 7 : i4} : <>, <i4>
    %42 = extsi %41 {handshake.bb = 2 : ui32, handshake.name = "extsi42"} : <i4> to <i8>
    %43 = muli %28, %42 {handshake.bb = 2 : ui32, handshake.name = "muli3"} : <i8>
    %44 = trunci %43 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i8> to <i6>
    %45 = addi %33, %44 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i6>
    %addressResult, %dataResult = store[%45] %36 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0]]>, <"store1" (3) [[0, 0], [0, 0]]>, <"load6" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i6>, <i32>
    %46 = br %result_6 {handshake.bb = 2 : ui32, handshake.name = "br9"} : <>
    %trueResult, %falseResult = cond_br %97#5, %51#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br94"} : <i1>, <>
    sink %falseResult {handshake.name = "sink2"} : <>
    %trueResult_8, %falseResult_9 = cond_br %97#4, %52#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br95"} : <i1>, <>
    sink %trueResult_8 {handshake.name = "sink3"} : <>
    %47 = constant %0#11 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant42", value = false} : <>, <i1>
    %48 = merge %47, %97#3 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge9"} : <i1>
    %49:4 = fork [4] %48 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i1>
    %50 = mux %49#3 [%25#0, %trueResult] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux13"} : <i1>, <>
    %51:2 = fork [2] %50 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <>
    %52:2 = lazy_fork [2] %51#0 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_10, %falseResult_11 = cond_br %97#0, %95 {handshake.bb = 3 : ui32, handshake.name = "cond_br65"} : <i1>, <i4>
    sink %falseResult_11 {handshake.name = "sink4"} : <i4>
    %trueResult_12, %falseResult_13 = cond_br %97#2, %59#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br66"} : <i1>, <i4>
    sink %falseResult_13 {handshake.name = "sink5"} : <i4>
    %trueResult_14, %falseResult_15 = cond_br %97#1, %54#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br67"} : <i1>, <i4>
    sink %falseResult_15 {handshake.name = "sink6"} : <i4>
    %53 = mux %49#0 [%27#1, %trueResult_14] {handshake.bb = 3 : ui32, handshake.name = "mux11"} : <i1>, <i4>
    %54:4 = fork [4] %53 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i4>
    %55 = extsi %54#0 {handshake.bb = 3 : ui32, handshake.name = "extsi43"} : <i4> to <i8>
    %56 = extsi %54#1 {handshake.bb = 3 : ui32, handshake.name = "extsi44"} : <i4> to <i8>
    %57 = extsi %54#2 {handshake.bb = 3 : ui32, handshake.name = "extsi45"} : <i4> to <i8>
    %58 = mux %49#1 [%32#2, %trueResult_12] {handshake.bb = 3 : ui32, handshake.name = "mux12"} : <i1>, <i4>
    %59:4 = fork [4] %58 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i4>
    %60 = extsi %59#0 {handshake.bb = 3 : ui32, handshake.name = "extsi46"} : <i4> to <i6>
    %61 = extsi %59#1 {handshake.bb = 3 : ui32, handshake.name = "extsi47"} : <i4> to <i6>
    %62 = extsi %59#2 {handshake.bb = 3 : ui32, handshake.name = "extsi48"} : <i4> to <i6>
    %result_16, %index_17 = control_merge %46, %trueResult_26  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    sink %index_17 {handshake.name = "sink7"} : <i1>
    %63 = mux %49#2 [%39, %trueResult_10] {handshake.bb = 3 : ui32, handshake.name = "mux14"} : <i1>, <i4>
    %64:3 = fork [3] %63 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i4>
    %65 = extsi %64#0 {handshake.bb = 3 : ui32, handshake.name = "extsi49"} : <i4> to <i6>
    %66 = extsi %64#1 {handshake.bb = 3 : ui32, handshake.name = "extsi50"} : <i4> to <i5>
    %67 = extsi %64#2 {handshake.bb = 3 : ui32, handshake.name = "extsi51"} : <i4> to <i8>
    %68 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %69 = constant %68 {handshake.bb = 3 : ui32, handshake.name = "constant40", value = 7 : i4} : <>, <i4>
    %70:5 = fork [5] %69 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i4>
    %71 = extsi %70#0 {handshake.bb = 3 : ui32, handshake.name = "extsi52"} : <i4> to <i8>
    %72 = extsi %70#1 {handshake.bb = 3 : ui32, handshake.name = "extsi53"} : <i4> to <i8>
    %73 = extsi %70#2 {handshake.bb = 3 : ui32, handshake.name = "extsi54"} : <i4> to <i8>
    %74 = extsi %70#3 {handshake.bb = 3 : ui32, handshake.name = "extsi55"} : <i4> to <i5>
    %75 = extsi %70#4 {handshake.bb = 3 : ui32, handshake.name = "extsi56"} : <i4> to <i8>
    %76 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %77 = constant %76 {handshake.bb = 3 : ui32, handshake.name = "constant41", value = 1 : i2} : <>, <i2>
    %78 = extsi %77 {handshake.bb = 3 : ui32, handshake.name = "extsi57"} : <i2> to <i5>
    %79 = muli %57, %73 {handshake.bb = 3 : ui32, handshake.name = "muli4"} : <i8>
    %80 = trunci %79 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i8> to <i6>
    %81 = addi %65, %80 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i6>
    %addressResult_18, %dataResult_19 = load[%81] %outputs_4 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i6>, <i32>
    %82 = muli %67, %75 {handshake.bb = 3 : ui32, handshake.name = "muli5"} : <i8>
    %83 = trunci %82 {handshake.bb = 3 : ui32, handshake.name = "trunci2"} : <i8> to <i6>
    %84 = addi %60, %83 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i6>
    %addressResult_20, %dataResult_21 = load[%84] %outputs_2 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i6>, <i32>
    %85 = muli %dataResult_19, %dataResult_21 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %86 = muli %56, %72 {handshake.bb = 3 : ui32, handshake.name = "muli6"} : <i8>
    %87 = trunci %86 {handshake.bb = 3 : ui32, handshake.name = "trunci3"} : <i8> to <i6>
    %88 = addi %61, %87 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i6>
    %addressResult_22, %dataResult_23 = load[%88] %3#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load2"} : <i6>, <i32>
    %89 = addi %dataResult_23, %85 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %90 = muli %55, %71 {handshake.bb = 3 : ui32, handshake.name = "muli7"} : <i8>
    %91 = trunci %90 {handshake.bb = 3 : ui32, handshake.name = "trunci4"} : <i8> to <i6>
    %92 = addi %62, %91 {handshake.bb = 3 : ui32, handshake.name = "addi7"} : <i6>
    %addressResult_24, %dataResult_25 = store[%92] %89 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"load6" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i6>, <i32>
    %93 = addi %66, %78 {handshake.bb = 3 : ui32, handshake.name = "addi18"} : <i5>
    %94:2 = fork [2] %93 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i5>
    %95 = trunci %94#0 {handshake.bb = 3 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %96 = cmpi ult, %94#1, %74 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i5>
    %97:7 = fork [7] %96 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <i1>
    %trueResult_26, %falseResult_27 = cond_br %97#6, %result_16 {handshake.bb = 3 : ui32, handshake.name = "cond_br16"} : <i1>, <>
    %trueResult_28, %falseResult_29 = cond_br %108#3, %falseResult_9 {handshake.bb = 4 : ui32, handshake.name = "cond_br96"} : <i1>, <>
    %trueResult_30, %falseResult_31 = cond_br %108#0, %106 {handshake.bb = 4 : ui32, handshake.name = "cond_br68"} : <i1>, <i4>
    sink %falseResult_31 {handshake.name = "sink8"} : <i4>
    %trueResult_32, %falseResult_33 = cond_br %108#2, %30#1 {handshake.bb = 4 : ui32, handshake.name = "cond_br69"} : <i1>, <>
    sink %falseResult_33 {handshake.name = "sink9"} : <>
    %trueResult_34, %falseResult_35 = cond_br %108#1, %27#0 {handshake.bb = 4 : ui32, handshake.name = "cond_br70"} : <i1>, <i4>
    sink %falseResult_35 {handshake.name = "sink10"} : <i4>
    %result_36, %index_37 = control_merge %falseResult_27  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_37 {handshake.name = "sink11"} : <i1>
    %98 = source {handshake.bb = 4 : ui32, handshake.name = "source6"} : <>
    %99 = constant %98 {handshake.bb = 4 : ui32, handshake.name = "constant43", value = 7 : i4} : <>, <i4>
    %100 = extsi %99 {handshake.bb = 4 : ui32, handshake.name = "extsi58"} : <i4> to <i5>
    %101 = source {handshake.bb = 4 : ui32, handshake.name = "source7"} : <>
    %102 = constant %101 {handshake.bb = 4 : ui32, handshake.name = "constant44", value = 1 : i2} : <>, <i2>
    %103 = extsi %102 {handshake.bb = 4 : ui32, handshake.name = "extsi59"} : <i2> to <i5>
    %104 = addi %34, %103 {handshake.bb = 4 : ui32, handshake.name = "addi19"} : <i5>
    %105:2 = fork [2] %104 {handshake.bb = 4 : ui32, handshake.name = "fork16"} : <i5>
    %106 = trunci %105#0 {handshake.bb = 4 : ui32, handshake.name = "trunci6"} : <i5> to <i4>
    %107 = cmpi ult, %105#1, %100 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i5>
    %108:6 = fork [6] %107 {handshake.bb = 4 : ui32, handshake.name = "fork17"} : <i1>
    %trueResult_38, %falseResult_39 = cond_br %108#5, %result_36 {handshake.bb = 4 : ui32, handshake.name = "cond_br23"} : <i1>, <>
    %trueResult_40, %falseResult_41 = cond_br %122#2, %falseResult_29 {handshake.bb = 5 : ui32, handshake.name = "cond_br97"} : <i1>, <>
    %trueResult_42, %falseResult_43 = cond_br %122#5, %111 {handshake.bb = 5 : ui32, handshake.name = "cond_br71"} : <i1>, <i1>
    sink %trueResult_42 {handshake.name = "sink12"} : <i1>
    %109 = extsi %falseResult_43 {handshake.bb = 5 : ui32, handshake.name = "extsi34"} : <i1> to <i4>
    %trueResult_44, %falseResult_45 = cond_br %122#0, %120 {handshake.bb = 5 : ui32, handshake.name = "cond_br72"} : <i1>, <i4>
    sink %falseResult_45 {handshake.name = "sink13"} : <i4>
    %trueResult_46, %falseResult_47 = cond_br %122#1, %13#0 {handshake.bb = 5 : ui32, handshake.name = "cond_br73"} : <i1>, <>
    sink %falseResult_47 {handshake.name = "sink14"} : <>
    %result_48, %index_49 = control_merge %falseResult_39  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    sink %index_49 {handshake.name = "sink15"} : <i1>
    %110 = source {handshake.bb = 5 : ui32, handshake.name = "source8"} : <>
    %111 = constant %110 {handshake.bb = 5 : ui32, handshake.name = "constant45", value = false} : <>, <i1>
    %112 = source {handshake.bb = 5 : ui32, handshake.name = "source9"} : <>
    %113 = constant %112 {handshake.bb = 5 : ui32, handshake.name = "constant46", value = 7 : i4} : <>, <i4>
    %114 = extsi %113 {handshake.bb = 5 : ui32, handshake.name = "extsi60"} : <i4> to <i5>
    %115 = source {handshake.bb = 5 : ui32, handshake.name = "source10"} : <>
    %116 = constant %115 {handshake.bb = 5 : ui32, handshake.name = "constant48", value = 1 : i2} : <>, <i2>
    %117 = extsi %116 {handshake.bb = 5 : ui32, handshake.name = "extsi61"} : <i2> to <i5>
    %118 = addi %16, %117 {handshake.bb = 5 : ui32, handshake.name = "addi20"} : <i5>
    %119:2 = fork [2] %118 {handshake.bb = 5 : ui32, handshake.name = "fork18"} : <i5>
    %120 = trunci %119#0 {handshake.bb = 5 : ui32, handshake.name = "trunci7"} : <i5> to <i4>
    %121 = cmpi ult, %119#1, %114 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i5>
    %122:6 = fork [6] %121 {handshake.bb = 5 : ui32, handshake.name = "fork19"} : <i1>
    %trueResult_50, %falseResult_51 = cond_br %122#4, %result_48 {handshake.bb = 5 : ui32, handshake.name = "cond_br27"} : <i1>, <>
    %123 = mux %126#2 [%0#10, %trueResult_92] {ftd.phi, handshake.bb = 6 : ui32, handshake.name = "mux23"} : <i1>, <>
    %124 = constant %0#9 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "constant47", value = false} : <>, <i1>
    %125 = merge %124, %237#3 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "merge12"} : <i1>
    %126:3 = fork [3] %125 {handshake.bb = 6 : ui32, handshake.name = "fork20"} : <i1>
    %127 = mux %126#1 [%0#8, %trueResult_98] {ftd.regen, handshake.bb = 6 : ui32, handshake.name = "mux15"} : <i1>, <>
    %128:2 = fork [2] %127 {handshake.bb = 6 : ui32, handshake.name = "fork21"} : <>
    %result_52, %index_53 = control_merge %falseResult_51, %trueResult_102  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    sink %index_53 {handshake.name = "sink16"} : <i1>
    %129 = mux %126#0 [%109, %trueResult_96] {handshake.bb = 6 : ui32, handshake.name = "mux16"} : <i1>, <i4>
    %130:2 = fork [2] %129 {handshake.bb = 6 : ui32, handshake.name = "fork22"} : <i4>
    %131 = extsi %130#0 {handshake.bb = 6 : ui32, handshake.name = "extsi62"} : <i4> to <i5>
    %132 = source {handshake.bb = 6 : ui32, handshake.name = "source11"} : <>
    %133 = constant %132 {handshake.bb = 6 : ui32, handshake.name = "constant49", value = false} : <>, <i1>
    %134 = extsi %133 {handshake.bb = 6 : ui32, handshake.name = "extsi63"} : <i1> to <i4>
    %135 = br %result_52 {handshake.bb = 6 : ui32, handshake.name = "br10"} : <>
    %136 = mux %139#3 [%123, %trueResult_80] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux28"} : <i1>, <>
    %137 = constant %0#7 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "constant52", value = false} : <>, <i1>
    %138 = merge %137, %223#4 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "merge16"} : <i1>
    %139:4 = fork [4] %138 {handshake.bb = 7 : ui32, handshake.name = "fork23"} : <i1>
    %140:2 = lazy_fork [2] %136 {handshake.bb = 7 : ui32, handshake.name = "lazy_fork2"} : <>
    %141 = mux %139#0 [%130#1, %trueResult_86] {handshake.bb = 7 : ui32, handshake.name = "mux20"} : <i1>, <i4>
    %142:3 = fork [3] %141 {handshake.bb = 7 : ui32, handshake.name = "fork24"} : <i4>
    %143 = extsi %142#2 {handshake.bb = 7 : ui32, handshake.name = "extsi64"} : <i4> to <i8>
    %144 = mux %139#2 [%128#1, %trueResult_84] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux21"} : <i1>, <>
    %145:2 = fork [2] %144 {handshake.bb = 7 : ui32, handshake.name = "fork25"} : <>
    %result_54, %index_55 = control_merge %135, %trueResult_90  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    sink %index_55 {handshake.name = "sink17"} : <i1>
    %146 = mux %139#1 [%134, %trueResult_82] {handshake.bb = 7 : ui32, handshake.name = "mux22"} : <i1>, <i4>
    %147:3 = fork [3] %146 {handshake.bb = 7 : ui32, handshake.name = "fork26"} : <i4>
    %148 = extsi %147#0 {handshake.bb = 7 : ui32, handshake.name = "extsi65"} : <i4> to <i6>
    %149 = extsi %147#1 {handshake.bb = 7 : ui32, handshake.name = "extsi66"} : <i4> to <i5>
    %150 = constant %145#0 {handshake.bb = 7 : ui32, handshake.name = "constant50", value = false} : <>, <i1>
    %151 = extsi %150 {handshake.bb = 7 : ui32, handshake.name = "extsi13"} : <i1> to <i32>
    %152 = source {handshake.bb = 7 : ui32, handshake.name = "source12"} : <>
    %153 = constant %152 {handshake.bb = 7 : ui32, handshake.name = "constant51", value = false} : <>, <i1>
    %154 = extsi %153 {handshake.bb = 7 : ui32, handshake.name = "extsi67"} : <i1> to <i4>
    %155 = source {handshake.bb = 7 : ui32, handshake.name = "source13"} : <>
    %156 = constant %155 {handshake.bb = 7 : ui32, handshake.name = "constant54", value = 7 : i4} : <>, <i4>
    %157 = extsi %156 {handshake.bb = 7 : ui32, handshake.name = "extsi68"} : <i4> to <i8>
    %158 = muli %143, %157 {handshake.bb = 7 : ui32, handshake.name = "muli8"} : <i8>
    %159 = trunci %158 {handshake.bb = 7 : ui32, handshake.name = "trunci8"} : <i8> to <i6>
    %160 = addi %148, %159 {handshake.bb = 7 : ui32, handshake.name = "addi8"} : <i6>
    %addressResult_56, %dataResult_57 = store[%160] %151 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"load5" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store2"} : <i6>, <i32>
    %161 = br %result_54 {handshake.bb = 7 : ui32, handshake.name = "br11"} : <>
    %trueResult_58, %falseResult_59 = cond_br %212#5, %166#1 {handshake.bb = 8 : ui32, handshake.name = "cond_br98"} : <i1>, <>
    sink %falseResult_59 {handshake.name = "sink18"} : <>
    %trueResult_60, %falseResult_61 = cond_br %212#4, %167#0 {handshake.bb = 8 : ui32, handshake.name = "cond_br99"} : <i1>, <>
    sink %trueResult_60 {handshake.name = "sink19"} : <>
    %162 = constant %0#6 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "constant53", value = false} : <>, <i1>
    %163 = merge %162, %212#3 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "merge20"} : <i1>
    %164:4 = fork [4] %163 {handshake.bb = 8 : ui32, handshake.name = "fork27"} : <i1>
    %165 = mux %164#3 [%140#0, %trueResult_58] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux33"} : <i1>, <>
    %166:2 = fork [2] %165 {handshake.bb = 8 : ui32, handshake.name = "fork28"} : <>
    %167:2 = lazy_fork [2] %166#0 {handshake.bb = 8 : ui32, handshake.name = "lazy_fork3"} : <>
    %trueResult_62, %falseResult_63 = cond_br %212#0, %210 {handshake.bb = 8 : ui32, handshake.name = "cond_br74"} : <i1>, <i4>
    sink %falseResult_63 {handshake.name = "sink20"} : <i4>
    %trueResult_64, %falseResult_65 = cond_br %212#2, %174#3 {handshake.bb = 8 : ui32, handshake.name = "cond_br75"} : <i1>, <i4>
    sink %falseResult_65 {handshake.name = "sink21"} : <i4>
    %trueResult_66, %falseResult_67 = cond_br %212#1, %169#3 {handshake.bb = 8 : ui32, handshake.name = "cond_br76"} : <i1>, <i4>
    sink %falseResult_67 {handshake.name = "sink22"} : <i4>
    %168 = mux %164#0 [%142#1, %trueResult_66] {handshake.bb = 8 : ui32, handshake.name = "mux26"} : <i1>, <i4>
    %169:4 = fork [4] %168 {handshake.bb = 8 : ui32, handshake.name = "fork29"} : <i4>
    %170 = extsi %169#0 {handshake.bb = 8 : ui32, handshake.name = "extsi69"} : <i4> to <i8>
    %171 = extsi %169#1 {handshake.bb = 8 : ui32, handshake.name = "extsi70"} : <i4> to <i8>
    %172 = extsi %169#2 {handshake.bb = 8 : ui32, handshake.name = "extsi71"} : <i4> to <i8>
    %173 = mux %164#1 [%147#2, %trueResult_64] {handshake.bb = 8 : ui32, handshake.name = "mux27"} : <i1>, <i4>
    %174:4 = fork [4] %173 {handshake.bb = 8 : ui32, handshake.name = "fork30"} : <i4>
    %175 = extsi %174#0 {handshake.bb = 8 : ui32, handshake.name = "extsi72"} : <i4> to <i6>
    %176 = extsi %174#1 {handshake.bb = 8 : ui32, handshake.name = "extsi73"} : <i4> to <i6>
    %177 = extsi %174#2 {handshake.bb = 8 : ui32, handshake.name = "extsi74"} : <i4> to <i6>
    %result_68, %index_69 = control_merge %161, %trueResult_78  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    sink %index_69 {handshake.name = "sink23"} : <i1>
    %178 = mux %164#2 [%154, %trueResult_62] {handshake.bb = 8 : ui32, handshake.name = "mux29"} : <i1>, <i4>
    %179:3 = fork [3] %178 {handshake.bb = 8 : ui32, handshake.name = "fork31"} : <i4>
    %180 = extsi %179#0 {handshake.bb = 8 : ui32, handshake.name = "extsi75"} : <i4> to <i6>
    %181 = extsi %179#1 {handshake.bb = 8 : ui32, handshake.name = "extsi76"} : <i4> to <i5>
    %182 = extsi %179#2 {handshake.bb = 8 : ui32, handshake.name = "extsi77"} : <i4> to <i8>
    %183 = source {handshake.bb = 8 : ui32, handshake.name = "source14"} : <>
    %184 = constant %183 {handshake.bb = 8 : ui32, handshake.name = "constant55", value = 7 : i4} : <>, <i4>
    %185:5 = fork [5] %184 {handshake.bb = 8 : ui32, handshake.name = "fork32"} : <i4>
    %186 = extsi %185#0 {handshake.bb = 8 : ui32, handshake.name = "extsi78"} : <i4> to <i8>
    %187 = extsi %185#1 {handshake.bb = 8 : ui32, handshake.name = "extsi79"} : <i4> to <i8>
    %188 = extsi %185#2 {handshake.bb = 8 : ui32, handshake.name = "extsi80"} : <i4> to <i8>
    %189 = extsi %185#3 {handshake.bb = 8 : ui32, handshake.name = "extsi81"} : <i4> to <i5>
    %190 = extsi %185#4 {handshake.bb = 8 : ui32, handshake.name = "extsi82"} : <i4> to <i8>
    %191 = source {handshake.bb = 8 : ui32, handshake.name = "source15"} : <>
    %192 = constant %191 {handshake.bb = 8 : ui32, handshake.name = "constant56", value = 1 : i2} : <>, <i2>
    %193 = extsi %192 {handshake.bb = 8 : ui32, handshake.name = "extsi83"} : <i2> to <i5>
    %194 = muli %172, %188 {handshake.bb = 8 : ui32, handshake.name = "muli9"} : <i8>
    %195 = trunci %194 {handshake.bb = 8 : ui32, handshake.name = "trunci9"} : <i8> to <i6>
    %196 = addi %180, %195 {handshake.bb = 8 : ui32, handshake.name = "addi9"} : <i6>
    %addressResult_70, %dataResult_71 = load[%196] %outputs_0 {handshake.bb = 8 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load3"} : <i6>, <i32>
    %197 = muli %182, %190 {handshake.bb = 8 : ui32, handshake.name = "muli10"} : <i8>
    %198 = trunci %197 {handshake.bb = 8 : ui32, handshake.name = "trunci10"} : <i8> to <i6>
    %199 = addi %175, %198 {handshake.bb = 8 : ui32, handshake.name = "addi10"} : <i6>
    %addressResult_72, %dataResult_73 = load[%199] %outputs {handshake.bb = 8 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i6>, <i32>
    %200 = muli %dataResult_71, %dataResult_73 {handshake.bb = 8 : ui32, handshake.name = "muli1"} : <i32>
    %201 = muli %171, %187 {handshake.bb = 8 : ui32, handshake.name = "muli11"} : <i8>
    %202 = trunci %201 {handshake.bb = 8 : ui32, handshake.name = "trunci11"} : <i8> to <i6>
    %203 = addi %176, %202 {handshake.bb = 8 : ui32, handshake.name = "addi11"} : <i6>
    %addressResult_74, %dataResult_75 = load[%203] %2#0 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load5"} : <i6>, <i32>
    %204 = addi %dataResult_75, %200 {handshake.bb = 8 : ui32, handshake.name = "addi1"} : <i32>
    %205 = muli %170, %186 {handshake.bb = 8 : ui32, handshake.name = "muli12"} : <i8>
    %206 = trunci %205 {handshake.bb = 8 : ui32, handshake.name = "trunci12"} : <i8> to <i6>
    %207 = addi %177, %206 {handshake.bb = 8 : ui32, handshake.name = "addi12"} : <i6>
    %addressResult_76, %dataResult_77 = store[%207] %204 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"load5" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store3"} : <i6>, <i32>
    %208 = addi %181, %193 {handshake.bb = 8 : ui32, handshake.name = "addi21"} : <i5>
    %209:2 = fork [2] %208 {handshake.bb = 8 : ui32, handshake.name = "fork33"} : <i5>
    %210 = trunci %209#0 {handshake.bb = 8 : ui32, handshake.name = "trunci13"} : <i5> to <i4>
    %211 = cmpi ult, %209#1, %189 {handshake.bb = 8 : ui32, handshake.name = "cmpi3"} : <i5>
    %212:7 = fork [7] %211 {handshake.bb = 8 : ui32, handshake.name = "fork34"} : <i1>
    %trueResult_78, %falseResult_79 = cond_br %212#6, %result_68 {handshake.bb = 8 : ui32, handshake.name = "cond_br35"} : <i1>, <>
    %trueResult_80, %falseResult_81 = cond_br %223#3, %falseResult_61 {handshake.bb = 9 : ui32, handshake.name = "cond_br100"} : <i1>, <>
    %trueResult_82, %falseResult_83 = cond_br %223#0, %221 {handshake.bb = 9 : ui32, handshake.name = "cond_br77"} : <i1>, <i4>
    sink %falseResult_83 {handshake.name = "sink24"} : <i4>
    %trueResult_84, %falseResult_85 = cond_br %223#2, %145#1 {handshake.bb = 9 : ui32, handshake.name = "cond_br78"} : <i1>, <>
    sink %falseResult_85 {handshake.name = "sink25"} : <>
    %trueResult_86, %falseResult_87 = cond_br %223#1, %142#0 {handshake.bb = 9 : ui32, handshake.name = "cond_br79"} : <i1>, <i4>
    sink %falseResult_87 {handshake.name = "sink26"} : <i4>
    %result_88, %index_89 = control_merge %falseResult_79  {handshake.bb = 9 : ui32, handshake.name = "control_merge8"} : <>, <i1>
    sink %index_89 {handshake.name = "sink27"} : <i1>
    %213 = source {handshake.bb = 9 : ui32, handshake.name = "source16"} : <>
    %214 = constant %213 {handshake.bb = 9 : ui32, handshake.name = "constant58", value = 7 : i4} : <>, <i4>
    %215 = extsi %214 {handshake.bb = 9 : ui32, handshake.name = "extsi84"} : <i4> to <i5>
    %216 = source {handshake.bb = 9 : ui32, handshake.name = "source17"} : <>
    %217 = constant %216 {handshake.bb = 9 : ui32, handshake.name = "constant59", value = 1 : i2} : <>, <i2>
    %218 = extsi %217 {handshake.bb = 9 : ui32, handshake.name = "extsi85"} : <i2> to <i5>
    %219 = addi %149, %218 {handshake.bb = 9 : ui32, handshake.name = "addi22"} : <i5>
    %220:2 = fork [2] %219 {handshake.bb = 9 : ui32, handshake.name = "fork35"} : <i5>
    %221 = trunci %220#0 {handshake.bb = 9 : ui32, handshake.name = "trunci14"} : <i5> to <i4>
    %222 = cmpi ult, %220#1, %215 {handshake.bb = 9 : ui32, handshake.name = "cmpi4"} : <i5>
    %223:6 = fork [6] %222 {handshake.bb = 9 : ui32, handshake.name = "fork36"} : <i1>
    %trueResult_90, %falseResult_91 = cond_br %223#5, %result_88 {handshake.bb = 9 : ui32, handshake.name = "cond_br42"} : <i1>, <>
    %trueResult_92, %falseResult_93 = cond_br %237#2, %falseResult_81 {handshake.bb = 10 : ui32, handshake.name = "cond_br101"} : <i1>, <>
    %trueResult_94, %falseResult_95 = cond_br %237#5, %226 {handshake.bb = 10 : ui32, handshake.name = "cond_br80"} : <i1>, <i1>
    sink %trueResult_94 {handshake.name = "sink28"} : <i1>
    %224 = extsi %falseResult_95 {handshake.bb = 10 : ui32, handshake.name = "extsi33"} : <i1> to <i4>
    %trueResult_96, %falseResult_97 = cond_br %237#0, %235 {handshake.bb = 10 : ui32, handshake.name = "cond_br81"} : <i1>, <i4>
    sink %falseResult_97 {handshake.name = "sink29"} : <i4>
    %trueResult_98, %falseResult_99 = cond_br %237#1, %128#0 {handshake.bb = 10 : ui32, handshake.name = "cond_br82"} : <i1>, <>
    sink %falseResult_99 {handshake.name = "sink30"} : <>
    %result_100, %index_101 = control_merge %falseResult_91  {handshake.bb = 10 : ui32, handshake.name = "control_merge9"} : <>, <i1>
    sink %index_101 {handshake.name = "sink31"} : <i1>
    %225 = source {handshake.bb = 10 : ui32, handshake.name = "source18"} : <>
    %226 = constant %225 {handshake.bb = 10 : ui32, handshake.name = "constant60", value = false} : <>, <i1>
    %227 = source {handshake.bb = 10 : ui32, handshake.name = "source19"} : <>
    %228 = constant %227 {handshake.bb = 10 : ui32, handshake.name = "constant62", value = 7 : i4} : <>, <i4>
    %229 = extsi %228 {handshake.bb = 10 : ui32, handshake.name = "extsi86"} : <i4> to <i5>
    %230 = source {handshake.bb = 10 : ui32, handshake.name = "source20"} : <>
    %231 = constant %230 {handshake.bb = 10 : ui32, handshake.name = "constant63", value = 1 : i2} : <>, <i2>
    %232 = extsi %231 {handshake.bb = 10 : ui32, handshake.name = "extsi87"} : <i2> to <i5>
    %233 = addi %131, %232 {handshake.bb = 10 : ui32, handshake.name = "addi23"} : <i5>
    %234:2 = fork [2] %233 {handshake.bb = 10 : ui32, handshake.name = "fork37"} : <i5>
    %235 = trunci %234#0 {handshake.bb = 10 : ui32, handshake.name = "trunci15"} : <i5> to <i4>
    %236 = cmpi ult, %234#1, %229 {handshake.bb = 10 : ui32, handshake.name = "cmpi5"} : <i5>
    %237:6 = fork [6] %236 {handshake.bb = 10 : ui32, handshake.name = "fork38"} : <i1>
    %trueResult_102, %falseResult_103 = cond_br %237#4, %result_100 {handshake.bb = 10 : ui32, handshake.name = "cond_br46"} : <i1>, <>
    %238 = constant %0#5 {ftd.imerge, handshake.bb = 11 : ui32, handshake.name = "constant57", value = false} : <>, <i1>
    %239 = merge %238, %363#5 {ftd.imerge, handshake.bb = 11 : ui32, handshake.name = "merge24"} : <i1>
    %240:5 = fork [5] %239 {handshake.bb = 11 : ui32, handshake.name = "fork39"} : <i1>
    %241 = mux %240#4 [%falseResult_93, %trueResult_156] {ftd.regen, handshake.bb = 11 : ui32, handshake.name = "mux39"} : <i1>, <>
    %242:2 = fork [2] %241 {handshake.bb = 11 : ui32, handshake.name = "fork40"} : <>
    %243 = mux %240#3 [%falseResult_41, %trueResult_154] {ftd.regen, handshake.bb = 11 : ui32, handshake.name = "mux40"} : <i1>, <>
    %244:2 = fork [2] %243 {handshake.bb = 11 : ui32, handshake.name = "fork41"} : <>
    %245 = mux %240#2 [%0#4, %trueResult_152] {ftd.phi, handshake.bb = 11 : ui32, handshake.name = "mux45"} : <i1>, <>
    %246 = mux %240#1 [%0#3, %trueResult_160] {ftd.regen, handshake.bb = 11 : ui32, handshake.name = "mux30"} : <i1>, <>
    %247:2 = fork [2] %246 {handshake.bb = 11 : ui32, handshake.name = "fork42"} : <>
    %result_104, %index_105 = control_merge %falseResult_103, %trueResult_164  {handshake.bb = 11 : ui32, handshake.name = "control_merge10"} : <>, <i1>
    sink %index_105 {handshake.name = "sink32"} : <i1>
    %248 = mux %240#0 [%224, %trueResult_158] {handshake.bb = 11 : ui32, handshake.name = "mux31"} : <i1>, <i4>
    %249:2 = fork [2] %248 {handshake.bb = 11 : ui32, handshake.name = "fork43"} : <i4>
    %250 = extsi %249#0 {handshake.bb = 11 : ui32, handshake.name = "extsi88"} : <i4> to <i5>
    %251 = source {handshake.bb = 11 : ui32, handshake.name = "source21"} : <>
    %252 = constant %251 {handshake.bb = 11 : ui32, handshake.name = "constant64", value = false} : <>, <i1>
    %253 = extsi %252 {handshake.bb = 11 : ui32, handshake.name = "extsi89"} : <i1> to <i4>
    %254 = br %result_104 {handshake.bb = 11 : ui32, handshake.name = "br12"} : <>
    %255 = constant %0#2 {ftd.imerge, handshake.bb = 12 : ui32, handshake.name = "constant61", value = false} : <>, <i1>
    %256 = merge %255, %352#6 {ftd.imerge, handshake.bb = 12 : ui32, handshake.name = "merge28"} : <i1>
    %257:6 = fork [6] %256 {handshake.bb = 12 : ui32, handshake.name = "fork44"} : <i1>
    %258 = mux %257#5 [%242#1, %trueResult_138] {ftd.regen, handshake.bb = 12 : ui32, handshake.name = "mux46"} : <i1>, <>
    %259:2 = fork [2] %258 {handshake.bb = 12 : ui32, handshake.name = "fork45"} : <>
    %260 = mux %257#4 [%244#1, %trueResult_136] {ftd.regen, handshake.bb = 12 : ui32, handshake.name = "mux47"} : <i1>, <>
    %261:2 = fork [2] %260 {handshake.bb = 12 : ui32, handshake.name = "fork46"} : <>
    %262 = mux %257#3 [%245, %trueResult_140] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux49"} : <i1>, <>
    %263:2 = lazy_fork [2] %262 {handshake.bb = 12 : ui32, handshake.name = "lazy_fork4"} : <>
    %264 = mux %257#0 [%249#1, %trueResult_146] {handshake.bb = 12 : ui32, handshake.name = "mux35"} : <i1>, <i4>
    %265:3 = fork [3] %264 {handshake.bb = 12 : ui32, handshake.name = "fork47"} : <i4>
    %266 = extsi %265#2 {handshake.bb = 12 : ui32, handshake.name = "extsi90"} : <i4> to <i8>
    %267 = mux %257#2 [%247#1, %trueResult_144] {ftd.regen, handshake.bb = 12 : ui32, handshake.name = "mux36"} : <i1>, <>
    %268:2 = fork [2] %267 {handshake.bb = 12 : ui32, handshake.name = "fork48"} : <>
    %result_106, %index_107 = control_merge %254, %trueResult_150  {handshake.bb = 12 : ui32, handshake.name = "control_merge11"} : <>, <i1>
    sink %index_107 {handshake.name = "sink33"} : <i1>
    %269 = mux %257#1 [%253, %trueResult_142] {handshake.bb = 12 : ui32, handshake.name = "mux37"} : <i1>, <i4>
    %270:3 = fork [3] %269 {handshake.bb = 12 : ui32, handshake.name = "fork49"} : <i4>
    %271 = extsi %270#0 {handshake.bb = 12 : ui32, handshake.name = "extsi91"} : <i4> to <i6>
    %272 = extsi %270#1 {handshake.bb = 12 : ui32, handshake.name = "extsi92"} : <i4> to <i5>
    %273 = constant %268#0 {handshake.bb = 12 : ui32, handshake.name = "constant65", value = false} : <>, <i1>
    %274 = extsi %273 {handshake.bb = 12 : ui32, handshake.name = "extsi24"} : <i1> to <i32>
    %275 = source {handshake.bb = 12 : ui32, handshake.name = "source22"} : <>
    %276 = constant %275 {handshake.bb = 12 : ui32, handshake.name = "constant66", value = false} : <>, <i1>
    %277 = extsi %276 {handshake.bb = 12 : ui32, handshake.name = "extsi93"} : <i1> to <i4>
    %278 = source {handshake.bb = 12 : ui32, handshake.name = "source23"} : <>
    %279 = constant %278 {handshake.bb = 12 : ui32, handshake.name = "constant68", value = 7 : i4} : <>, <i4>
    %280 = extsi %279 {handshake.bb = 12 : ui32, handshake.name = "extsi94"} : <i4> to <i8>
    %281 = muli %266, %280 {handshake.bb = 12 : ui32, handshake.name = "muli13"} : <i8>
    %282 = trunci %281 {handshake.bb = 12 : ui32, handshake.name = "trunci16"} : <i8> to <i6>
    %283 = addi %271, %282 {handshake.bb = 12 : ui32, handshake.name = "addi13"} : <i6>
    %addressResult_108, %dataResult_109 = store[%283] %274 {handshake.bb = 12 : ui32, handshake.deps = #handshake<deps[<"load8" (3) [[0, 0], [0, 0]]>, <"store5" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store4"} : <i6>, <i32>
    %284 = br %result_106 {handshake.bb = 12 : ui32, handshake.name = "br13"} : <>
    %trueResult_110, %falseResult_111 = cond_br %341#7, %293#1 {handshake.bb = 13 : ui32, handshake.name = "cond_br102"} : <i1>, <>
    sink %falseResult_111 {handshake.name = "sink34"} : <>
    %trueResult_112, %falseResult_113 = cond_br %341#6, %291#1 {handshake.bb = 13 : ui32, handshake.name = "cond_br103"} : <i1>, <>
    sink %falseResult_113 {handshake.name = "sink35"} : <>
    %trueResult_114, %falseResult_115 = cond_br %341#5, %289#1 {handshake.bb = 13 : ui32, handshake.name = "cond_br104"} : <i1>, <>
    sink %falseResult_115 {handshake.name = "sink36"} : <>
    %trueResult_116, %falseResult_117 = cond_br %341#4, %296#0 {handshake.bb = 13 : ui32, handshake.name = "cond_br105"} : <i1>, <>
    sink %trueResult_116 {handshake.name = "sink37"} : <>
    %285 = constant %0#1 {ftd.imerge, handshake.bb = 13 : ui32, handshake.name = "constant67", value = false} : <>, <i1>
    %286 = merge %285, %341#3 {ftd.imerge, handshake.bb = 13 : ui32, handshake.name = "merge34"} : <i1>
    %287:6 = fork [6] %286 {handshake.bb = 13 : ui32, handshake.name = "fork50"} : <i1>
    %288 = mux %287#5 [%263#0, %trueResult_114] {ftd.regen, handshake.bb = 13 : ui32, handshake.name = "mux50"} : <i1>, <>
    %289:2 = fork [2] %288 {handshake.bb = 13 : ui32, handshake.name = "fork51"} : <>
    %290 = mux %287#4 [%259#1, %trueResult_112] {ftd.regen, handshake.bb = 13 : ui32, handshake.name = "mux51"} : <i1>, <>
    %291:2 = fork [2] %290 {handshake.bb = 13 : ui32, handshake.name = "fork52"} : <>
    %292 = mux %287#3 [%261#1, %trueResult_110] {ftd.regen, handshake.bb = 13 : ui32, handshake.name = "mux52"} : <i1>, <>
    %293:2 = fork [2] %292 {handshake.bb = 13 : ui32, handshake.name = "fork53"} : <>
    %294:2 = lazy_fork [2] %293#0 {handshake.bb = 13 : ui32, handshake.name = "lazy_fork5"} : <>
    sink %294#0 {handshake.name = "sink38"} : <>
    %295:2 = lazy_fork [2] %291#0 {handshake.bb = 13 : ui32, handshake.name = "lazy_fork6"} : <>
    sink %295#0 {handshake.name = "sink39"} : <>
    %296:2 = lazy_fork [2] %289#0 {handshake.bb = 13 : ui32, handshake.name = "lazy_fork7"} : <>
    %trueResult_118, %falseResult_119 = cond_br %341#0, %339 {handshake.bb = 13 : ui32, handshake.name = "cond_br83"} : <i1>, <i4>
    sink %falseResult_119 {handshake.name = "sink40"} : <i4>
    %trueResult_120, %falseResult_121 = cond_br %341#2, %303#3 {handshake.bb = 13 : ui32, handshake.name = "cond_br84"} : <i1>, <i4>
    sink %falseResult_121 {handshake.name = "sink41"} : <i4>
    %trueResult_122, %falseResult_123 = cond_br %341#1, %298#3 {handshake.bb = 13 : ui32, handshake.name = "cond_br85"} : <i1>, <i4>
    sink %falseResult_123 {handshake.name = "sink42"} : <i4>
    %297 = mux %287#0 [%265#1, %trueResult_122] {handshake.bb = 13 : ui32, handshake.name = "mux41"} : <i1>, <i4>
    %298:4 = fork [4] %297 {handshake.bb = 13 : ui32, handshake.name = "fork54"} : <i4>
    %299 = extsi %298#0 {handshake.bb = 13 : ui32, handshake.name = "extsi95"} : <i4> to <i8>
    %300 = extsi %298#1 {handshake.bb = 13 : ui32, handshake.name = "extsi96"} : <i4> to <i8>
    %301 = extsi %298#2 {handshake.bb = 13 : ui32, handshake.name = "extsi97"} : <i4> to <i8>
    %302 = mux %287#1 [%270#2, %trueResult_120] {handshake.bb = 13 : ui32, handshake.name = "mux42"} : <i1>, <i4>
    %303:4 = fork [4] %302 {handshake.bb = 13 : ui32, handshake.name = "fork55"} : <i4>
    %304 = extsi %303#0 {handshake.bb = 13 : ui32, handshake.name = "extsi98"} : <i4> to <i6>
    %305 = extsi %303#1 {handshake.bb = 13 : ui32, handshake.name = "extsi99"} : <i4> to <i6>
    %306 = extsi %303#2 {handshake.bb = 13 : ui32, handshake.name = "extsi100"} : <i4> to <i6>
    %result_124, %index_125 = control_merge %284, %trueResult_134  {handshake.bb = 13 : ui32, handshake.name = "control_merge12"} : <>, <i1>
    sink %index_125 {handshake.name = "sink43"} : <i1>
    %307 = mux %287#2 [%277, %trueResult_118] {handshake.bb = 13 : ui32, handshake.name = "mux44"} : <i1>, <i4>
    %308:3 = fork [3] %307 {handshake.bb = 13 : ui32, handshake.name = "fork56"} : <i4>
    %309 = extsi %308#0 {handshake.bb = 13 : ui32, handshake.name = "extsi101"} : <i4> to <i6>
    %310 = extsi %308#1 {handshake.bb = 13 : ui32, handshake.name = "extsi102"} : <i4> to <i5>
    %311 = extsi %308#2 {handshake.bb = 13 : ui32, handshake.name = "extsi103"} : <i4> to <i8>
    %312 = source {handshake.bb = 13 : ui32, handshake.name = "source24"} : <>
    %313 = constant %312 {handshake.bb = 13 : ui32, handshake.name = "constant69", value = 7 : i4} : <>, <i4>
    %314:5 = fork [5] %313 {handshake.bb = 13 : ui32, handshake.name = "fork57"} : <i4>
    %315 = extsi %314#0 {handshake.bb = 13 : ui32, handshake.name = "extsi104"} : <i4> to <i8>
    %316 = extsi %314#1 {handshake.bb = 13 : ui32, handshake.name = "extsi105"} : <i4> to <i8>
    %317 = extsi %314#2 {handshake.bb = 13 : ui32, handshake.name = "extsi106"} : <i4> to <i8>
    %318 = extsi %314#3 {handshake.bb = 13 : ui32, handshake.name = "extsi107"} : <i4> to <i5>
    %319 = extsi %314#4 {handshake.bb = 13 : ui32, handshake.name = "extsi108"} : <i4> to <i8>
    %320 = source {handshake.bb = 13 : ui32, handshake.name = "source25"} : <>
    %321 = constant %320 {handshake.bb = 13 : ui32, handshake.name = "constant70", value = 1 : i2} : <>, <i2>
    %322 = extsi %321 {handshake.bb = 13 : ui32, handshake.name = "extsi109"} : <i2> to <i5>
    %323 = muli %301, %317 {handshake.bb = 13 : ui32, handshake.name = "muli14"} : <i8>
    %324 = trunci %323 {handshake.bb = 13 : ui32, handshake.name = "trunci17"} : <i8> to <i6>
    %325 = addi %309, %324 {handshake.bb = 13 : ui32, handshake.name = "addi14"} : <i6>
    %addressResult_126, %dataResult_127 = load[%325] %3#1 {handshake.bb = 13 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load6"} : <i6>, <i32>
    %326 = muli %311, %319 {handshake.bb = 13 : ui32, handshake.name = "muli15"} : <i8>
    %327 = trunci %326 {handshake.bb = 13 : ui32, handshake.name = "trunci18"} : <i8> to <i6>
    %328 = addi %304, %327 {handshake.bb = 13 : ui32, handshake.name = "addi15"} : <i6>
    %addressResult_128, %dataResult_129 = load[%328] %2#1 {handshake.bb = 13 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load7"} : <i6>, <i32>
    %329 = muli %dataResult_127, %dataResult_129 {handshake.bb = 13 : ui32, handshake.name = "muli2"} : <i32>
    %330 = muli %300, %316 {handshake.bb = 13 : ui32, handshake.name = "muli16"} : <i8>
    %331 = trunci %330 {handshake.bb = 13 : ui32, handshake.name = "trunci19"} : <i8> to <i6>
    %332 = addi %305, %331 {handshake.bb = 13 : ui32, handshake.name = "addi16"} : <i6>
    %addressResult_130, %dataResult_131 = load[%332] %1#0 {handshake.bb = 13 : ui32, handshake.deps = #handshake<deps[<"store5" (3) [[0, 0], [0, 0], [1, 6]]>, <"store5" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load8"} : <i6>, <i32>
    %333 = addi %dataResult_131, %329 {handshake.bb = 13 : ui32, handshake.name = "addi2"} : <i32>
    %334 = muli %299, %315 {handshake.bb = 13 : ui32, handshake.name = "muli17"} : <i8>
    %335 = trunci %334 {handshake.bb = 13 : ui32, handshake.name = "trunci20"} : <i8> to <i6>
    %336 = addi %306, %335 {handshake.bb = 13 : ui32, handshake.name = "addi17"} : <i6>
    %addressResult_132, %dataResult_133 = store[%336] %333 {handshake.bb = 13 : ui32, handshake.deps = #handshake<deps[<"load8" (3) [[0, 0], [0, 0], [1, 6]]>, <"store5" (3) [[0, 0], [0, 0], [1, 6]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store5"} : <i6>, <i32>
    %337 = addi %310, %322 {handshake.bb = 13 : ui32, handshake.name = "addi24"} : <i5>
    %338:2 = fork [2] %337 {handshake.bb = 13 : ui32, handshake.name = "fork58"} : <i5>
    %339 = trunci %338#0 {handshake.bb = 13 : ui32, handshake.name = "trunci21"} : <i5> to <i4>
    %340 = cmpi ult, %338#1, %318 {handshake.bb = 13 : ui32, handshake.name = "cmpi6"} : <i5>
    %341:9 = fork [9] %340 {handshake.bb = 13 : ui32, handshake.name = "fork59"} : <i1>
    %trueResult_134, %falseResult_135 = cond_br %341#8, %result_124 {handshake.bb = 13 : ui32, handshake.name = "cond_br54"} : <i1>, <>
    %trueResult_136, %falseResult_137 = cond_br %352#5, %261#0 {handshake.bb = 14 : ui32, handshake.name = "cond_br106"} : <i1>, <>
    sink %falseResult_137 {handshake.name = "sink44"} : <>
    %trueResult_138, %falseResult_139 = cond_br %352#4, %259#0 {handshake.bb = 14 : ui32, handshake.name = "cond_br107"} : <i1>, <>
    sink %falseResult_139 {handshake.name = "sink45"} : <>
    %trueResult_140, %falseResult_141 = cond_br %352#3, %falseResult_117 {handshake.bb = 14 : ui32, handshake.name = "cond_br108"} : <i1>, <>
    %trueResult_142, %falseResult_143 = cond_br %352#0, %350 {handshake.bb = 14 : ui32, handshake.name = "cond_br86"} : <i1>, <i4>
    sink %falseResult_143 {handshake.name = "sink46"} : <i4>
    %trueResult_144, %falseResult_145 = cond_br %352#2, %268#1 {handshake.bb = 14 : ui32, handshake.name = "cond_br87"} : <i1>, <>
    sink %falseResult_145 {handshake.name = "sink47"} : <>
    %trueResult_146, %falseResult_147 = cond_br %352#1, %265#0 {handshake.bb = 14 : ui32, handshake.name = "cond_br88"} : <i1>, <i4>
    sink %falseResult_147 {handshake.name = "sink48"} : <i4>
    %result_148, %index_149 = control_merge %falseResult_135  {handshake.bb = 14 : ui32, handshake.name = "control_merge13"} : <>, <i1>
    sink %index_149 {handshake.name = "sink49"} : <i1>
    %342 = source {handshake.bb = 14 : ui32, handshake.name = "source26"} : <>
    %343 = constant %342 {handshake.bb = 14 : ui32, handshake.name = "constant71", value = 7 : i4} : <>, <i4>
    %344 = extsi %343 {handshake.bb = 14 : ui32, handshake.name = "extsi110"} : <i4> to <i5>
    %345 = source {handshake.bb = 14 : ui32, handshake.name = "source27"} : <>
    %346 = constant %345 {handshake.bb = 14 : ui32, handshake.name = "constant72", value = 1 : i2} : <>, <i2>
    %347 = extsi %346 {handshake.bb = 14 : ui32, handshake.name = "extsi111"} : <i2> to <i5>
    %348 = addi %272, %347 {handshake.bb = 14 : ui32, handshake.name = "addi25"} : <i5>
    %349:2 = fork [2] %348 {handshake.bb = 14 : ui32, handshake.name = "fork60"} : <i5>
    %350 = trunci %349#0 {handshake.bb = 14 : ui32, handshake.name = "trunci22"} : <i5> to <i4>
    %351 = cmpi ult, %349#1, %344 {handshake.bb = 14 : ui32, handshake.name = "cmpi7"} : <i5>
    %352:8 = fork [8] %351 {handshake.bb = 14 : ui32, handshake.name = "fork61"} : <i1>
    %trueResult_150, %falseResult_151 = cond_br %352#7, %result_148 {handshake.bb = 14 : ui32, handshake.name = "cond_br61"} : <i1>, <>
    %trueResult_152, %falseResult_153 = cond_br %363#4, %falseResult_141 {handshake.bb = 15 : ui32, handshake.name = "cond_br109"} : <i1>, <>
    sink %falseResult_153 {handshake.name = "sink50"} : <>
    %trueResult_154, %falseResult_155 = cond_br %363#3, %244#0 {handshake.bb = 15 : ui32, handshake.name = "cond_br110"} : <i1>, <>
    sink %falseResult_155 {handshake.name = "sink51"} : <>
    %trueResult_156, %falseResult_157 = cond_br %363#2, %242#0 {handshake.bb = 15 : ui32, handshake.name = "cond_br111"} : <i1>, <>
    sink %falseResult_157 {handshake.name = "sink52"} : <>
    %trueResult_158, %falseResult_159 = cond_br %363#0, %361 {handshake.bb = 15 : ui32, handshake.name = "cond_br89"} : <i1>, <i4>
    sink %falseResult_159 {handshake.name = "sink53"} : <i4>
    %trueResult_160, %falseResult_161 = cond_br %363#1, %247#0 {handshake.bb = 15 : ui32, handshake.name = "cond_br90"} : <i1>, <>
    sink %falseResult_161 {handshake.name = "sink54"} : <>
    %result_162, %index_163 = control_merge %falseResult_151  {handshake.bb = 15 : ui32, handshake.name = "control_merge14"} : <>, <i1>
    sink %index_163 {handshake.name = "sink55"} : <i1>
    %353 = source {handshake.bb = 15 : ui32, handshake.name = "source28"} : <>
    %354 = constant %353 {handshake.bb = 15 : ui32, handshake.name = "constant73", value = 7 : i4} : <>, <i4>
    %355 = extsi %354 {handshake.bb = 15 : ui32, handshake.name = "extsi112"} : <i4> to <i5>
    %356 = source {handshake.bb = 15 : ui32, handshake.name = "source29"} : <>
    %357 = constant %356 {handshake.bb = 15 : ui32, handshake.name = "constant74", value = 1 : i2} : <>, <i2>
    %358 = extsi %357 {handshake.bb = 15 : ui32, handshake.name = "extsi113"} : <i2> to <i5>
    %359 = addi %250, %358 {handshake.bb = 15 : ui32, handshake.name = "addi26"} : <i5>
    %360:2 = fork [2] %359 {handshake.bb = 15 : ui32, handshake.name = "fork62"} : <i5>
    %361 = trunci %360#0 {handshake.bb = 15 : ui32, handshake.name = "trunci23"} : <i5> to <i4>
    %362 = cmpi ult, %360#1, %355 {handshake.bb = 15 : ui32, handshake.name = "cmpi8"} : <i5>
    %363:7 = fork [7] %362 {handshake.bb = 15 : ui32, handshake.name = "fork63"} : <i1>
    %trueResult_164, %falseResult_165 = cond_br %363#6, %result_162 {handshake.bb = 15 : ui32, handshake.name = "cond_br64"} : <i1>, <>
    %result_166, %index_167 = control_merge %falseResult_165  {handshake.bb = 16 : ui32, handshake.name = "control_merge15"} : <>, <i1>
    sink %index_167 {handshake.name = "sink56"} : <i1>
    %364:7 = fork [7] %result_166 {handshake.bb = 16 : ui32, handshake.name = "fork64"} : <>
    end {handshake.bb = 16 : ui32, handshake.name = "end0"} %memEnd_5, %memEnd_3, %memEnd_1, %memEnd, %3#2, %2#2, %1#1, %0#0 : <>, <>, <>, <>, <>, <>, <>, <>
  }
}


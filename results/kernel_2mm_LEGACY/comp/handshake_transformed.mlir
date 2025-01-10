module {
  handshake.func @kernel_2mm(%arg0: !handshake.channel<i32>, %arg1: !handshake.channel<i32>, %arg2: memref<49xi32>, %arg3: memref<49xi32>, %arg4: memref<49xi32>, %arg5: memref<49xi32>, %arg6: memref<49xi32>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, %arg12: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["alpha", "beta", "tmp", "A", "B", "C", "D", "tmp_start", "A_start", "B_start", "C_start", "D_start", "start"], resNames = ["out0", "tmp_end", "A_end", "B_end", "C_end", "D_end", "end"]} {
    %0:3 = fork [3] %arg12 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %1:4 = lsq[%arg6 : memref<49xi32>] (%arg11, %154#0, %addressResult_54, %addressResult_56, %dataResult_57, %192#0, %addressResult_64, %addressResult_66, %dataResult_67, %253#4, %addressResult_98, %253#5)  {groupSizes = [2 : i32, 2 : i32, 1 : i32], handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg5 : memref<49xi32>] %arg10 (%addressResult_62) %253#3 {connectedBlocks = [8 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg4 : memref<49xi32>] %arg9 (%addressResult_10) %253#2 {connectedBlocks = [3 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %outputs_2, %memEnd_3 = mem_controller[%arg3 : memref<49xi32>] %arg8 (%addressResult_8) %253#1 {connectedBlocks = [3 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %2:3 = lsq[%arg2 : memref<49xi32>] (%arg7, %30#0, %addressResult, %dataResult, %67#0, %addressResult_12, %addressResult_14, %dataResult_15, %193, %addressResult_60, %253#0)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %3 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %4 = br %3 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <i1>
    %5 = extsi %4 {handshake.bb = 0 : ui32, handshake.name = "extsi27"} : <i1> to <i4>
    %6 = br %arg0 {handshake.bb = 0 : ui32, handshake.name = "br6"} : <i32>
    %7 = br %arg1 {handshake.bb = 0 : ui32, handshake.name = "br7"} : <i32>
    %8 = br %0#2 {handshake.bb = 0 : ui32, handshake.name = "br8"} : <>
    %9 = mux %12#0 [%5, %trueResult_40] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i4>
    %10 = mux %12#1 [%6, %trueResult_42] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %11 = mux %12#2 [%7, %trueResult_44] {handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %result, %index = control_merge %8, %trueResult_46  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %12:3 = fork [3] %index {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %13:2 = fork [2] %result {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <>
    %14 = constant %13#0 {handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %15 = br %14 {handshake.bb = 1 : ui32, handshake.name = "br9"} : <i1>
    %16 = extsi %15 {handshake.bb = 1 : ui32, handshake.name = "extsi26"} : <i1> to <i4>
    %17 = br %10 {handshake.bb = 1 : ui32, handshake.name = "br10"} : <i32>
    %18 = br %11 {handshake.bb = 1 : ui32, handshake.name = "br11"} : <i32>
    %19 = br %9 {handshake.bb = 1 : ui32, handshake.name = "br12"} : <i4>
    %20 = br %13#1 {handshake.bb = 1 : ui32, handshake.name = "br13"} : <>
    %21 = mux %29#1 [%16, %trueResult_28] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i4>
    %22:2 = fork [2] %21 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i4>
    %23 = extsi %22#0 {handshake.bb = 2 : ui32, handshake.name = "extsi28"} : <i4> to <i6>
    %24 = mux %29#2 [%17, %trueResult_30] {handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %25 = mux %29#3 [%18, %trueResult_32] {handshake.bb = 2 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %26 = mux %29#0 [%19, %trueResult_34] {handshake.bb = 2 : ui32, handshake.name = "mux6"} : <i1>, <i4>
    %27:2 = fork [2] %26 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i4>
    %28 = extsi %27#1 {handshake.bb = 2 : ui32, handshake.name = "extsi29"} : <i4> to <i8>
    %result_4, %index_5 = control_merge %20, %trueResult_36  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %29:4 = fork [4] %index_5 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i1>
    %30:3 = lazy_fork [3] %result_4 {handshake.bb = 2 : ui32, handshake.name = "lazy_fork0"} : <>
    %31 = fork [1] %30#2 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <>
    %32 = constant %31 {handshake.bb = 2 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %33:2 = fork [2] %32 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i1>
    %34 = extsi %33#1 {handshake.bb = 2 : ui32, handshake.name = "extsi3"} : <i1> to <i32>
    %35 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %36 = constant %35 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = 7 : i4} : <>, <i4>
    %37 = extsi %36 {handshake.bb = 2 : ui32, handshake.name = "extsi30"} : <i4> to <i8>
    %38 = muli %28, %37 {handshake.bb = 2 : ui32, handshake.name = "muli4"} : <i8>
    %39 = trunci %38 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i8> to <i6>
    %40 = addi %23, %39 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i6>
    %addressResult, %dataResult = store[%40] %34 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0]]>, <"store1" (3) [[0, 0], [0, 0]]>, <"load4" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i6>, <i32>
    %41 = br %33#0 {handshake.bb = 2 : ui32, handshake.name = "br14"} : <i1>
    %42 = extsi %41 {handshake.bb = 2 : ui32, handshake.name = "extsi25"} : <i1> to <i4>
    %43 = br %24 {handshake.bb = 2 : ui32, handshake.name = "br15"} : <i32>
    %44 = br %25 {handshake.bb = 2 : ui32, handshake.name = "br16"} : <i32>
    %45 = br %27#0 {handshake.bb = 2 : ui32, handshake.name = "br17"} : <i4>
    %46 = br %22#1 {handshake.bb = 2 : ui32, handshake.name = "br18"} : <i4>
    %47 = br %30#1 {handshake.bb = 2 : ui32, handshake.name = "br19"} : <>
    %48 = mux %66#2 [%42, %trueResult] {handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <i4>
    %49:3 = fork [3] %48 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i4>
    %50 = extsi %49#0 {handshake.bb = 3 : ui32, handshake.name = "extsi31"} : <i4> to <i6>
    %51 = extsi %49#1 {handshake.bb = 3 : ui32, handshake.name = "extsi32"} : <i4> to <i5>
    %52 = extsi %49#2 {handshake.bb = 3 : ui32, handshake.name = "extsi33"} : <i4> to <i8>
    %53 = mux %66#3 [%43, %trueResult_16] {handshake.bb = 3 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %54:2 = fork [2] %53 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i32>
    %55 = mux %66#4 [%44, %trueResult_18] {handshake.bb = 3 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %56 = mux %66#0 [%45, %trueResult_20] {handshake.bb = 3 : ui32, handshake.name = "mux10"} : <i1>, <i4>
    %57:4 = fork [4] %56 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i4>
    %58 = extsi %57#1 {handshake.bb = 3 : ui32, handshake.name = "extsi34"} : <i4> to <i8>
    %59 = extsi %57#2 {handshake.bb = 3 : ui32, handshake.name = "extsi35"} : <i4> to <i8>
    %60 = extsi %57#3 {handshake.bb = 3 : ui32, handshake.name = "extsi36"} : <i4> to <i8>
    %61 = mux %66#1 [%46, %trueResult_22] {handshake.bb = 3 : ui32, handshake.name = "mux11"} : <i1>, <i4>
    %62:4 = fork [4] %61 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i4>
    %63 = extsi %62#0 {handshake.bb = 3 : ui32, handshake.name = "extsi37"} : <i4> to <i6>
    %64 = extsi %62#1 {handshake.bb = 3 : ui32, handshake.name = "extsi38"} : <i4> to <i6>
    %65 = extsi %62#2 {handshake.bb = 3 : ui32, handshake.name = "extsi39"} : <i4> to <i6>
    %result_6, %index_7 = control_merge %47, %trueResult_24  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %66:5 = fork [5] %index_7 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i1>
    %67:2 = lazy_fork [2] %result_6 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork1"} : <>
    %68 = source {handshake.bb = 3 : ui32, handshake.name = "source1"} : <>
    %69 = constant %68 {handshake.bb = 3 : ui32, handshake.name = "constant26", value = 7 : i4} : <>, <i4>
    %70:5 = fork [5] %69 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i4>
    %71 = extsi %70#0 {handshake.bb = 3 : ui32, handshake.name = "extsi40"} : <i4> to <i8>
    %72 = extsi %70#1 {handshake.bb = 3 : ui32, handshake.name = "extsi41"} : <i4> to <i8>
    %73 = extsi %70#2 {handshake.bb = 3 : ui32, handshake.name = "extsi42"} : <i4> to <i8>
    %74 = extsi %70#3 {handshake.bb = 3 : ui32, handshake.name = "extsi43"} : <i4> to <i5>
    %75 = extsi %70#4 {handshake.bb = 3 : ui32, handshake.name = "extsi44"} : <i4> to <i8>
    %76 = source {handshake.bb = 3 : ui32, handshake.name = "source2"} : <>
    %77 = constant %76 {handshake.bb = 3 : ui32, handshake.name = "constant27", value = 1 : i2} : <>, <i2>
    %78 = extsi %77 {handshake.bb = 3 : ui32, handshake.name = "extsi45"} : <i2> to <i5>
    %79 = muli %60, %73 {handshake.bb = 3 : ui32, handshake.name = "muli5"} : <i8>
    %80 = trunci %79 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i8> to <i6>
    %81 = addi %50, %80 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i6>
    %addressResult_8, %dataResult_9 = load[%81] %outputs_2 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i6>, <i32>
    %82 = muli %54#1, %dataResult_9 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %83 = muli %52, %75 {handshake.bb = 3 : ui32, handshake.name = "muli6"} : <i8>
    %84 = trunci %83 {handshake.bb = 3 : ui32, handshake.name = "trunci2"} : <i8> to <i6>
    %85 = addi %63, %84 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i6>
    %addressResult_10, %dataResult_11 = load[%85] %outputs_0 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i6>, <i32>
    %86 = muli %82, %dataResult_11 {handshake.bb = 3 : ui32, handshake.name = "muli1"} : <i32>
    %87 = muli %59, %72 {handshake.bb = 3 : ui32, handshake.name = "muli7"} : <i8>
    %88 = trunci %87 {handshake.bb = 3 : ui32, handshake.name = "trunci3"} : <i8> to <i6>
    %89 = addi %64, %88 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i6>
    %addressResult_12, %dataResult_13 = load[%89] %2#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load2"} : <i6>, <i32>
    %90 = addi %dataResult_13, %86 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %91 = muli %58, %71 {handshake.bb = 3 : ui32, handshake.name = "muli8"} : <i8>
    %92 = trunci %91 {handshake.bb = 3 : ui32, handshake.name = "trunci4"} : <i8> to <i6>
    %93 = addi %65, %92 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i6>
    %addressResult_14, %dataResult_15 = store[%93] %90 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"load4" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i6>, <i32>
    %94 = addi %51, %78 {handshake.bb = 3 : ui32, handshake.name = "addi14"} : <i5>
    %95:2 = fork [2] %94 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i5>
    %96 = trunci %95#0 {handshake.bb = 3 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %97 = cmpi ult, %95#1, %74 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i5>
    %98:6 = fork [6] %97 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <i1>
    %trueResult, %falseResult = cond_br %98#0, %96 {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <i4>
    sink %falseResult {handshake.name = "sink0"} : <i4>
    %trueResult_16, %falseResult_17 = cond_br %98#3, %54#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <i32>
    %trueResult_18, %falseResult_19 = cond_br %98#4, %55 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    %trueResult_20, %falseResult_21 = cond_br %98#1, %57#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br9"} : <i1>, <i4>
    %trueResult_22, %falseResult_23 = cond_br %98#2, %62#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br10"} : <i1>, <i4>
    %trueResult_24, %falseResult_25 = cond_br %98#5, %67#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br11"} : <i1>, <>
    %99 = merge %falseResult_17 {handshake.bb = 4 : ui32, handshake.name = "merge0"} : <i32>
    %100 = merge %falseResult_19 {handshake.bb = 4 : ui32, handshake.name = "merge1"} : <i32>
    %101 = merge %falseResult_21 {handshake.bb = 4 : ui32, handshake.name = "merge2"} : <i4>
    %102 = merge %falseResult_23 {handshake.bb = 4 : ui32, handshake.name = "merge3"} : <i4>
    %103 = extsi %102 {handshake.bb = 4 : ui32, handshake.name = "extsi46"} : <i4> to <i5>
    %result_26, %index_27 = control_merge %falseResult_25  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_27 {handshake.name = "sink1"} : <i1>
    %104 = source {handshake.bb = 4 : ui32, handshake.name = "source3"} : <>
    %105 = constant %104 {handshake.bb = 4 : ui32, handshake.name = "constant28", value = 7 : i4} : <>, <i4>
    %106 = extsi %105 {handshake.bb = 4 : ui32, handshake.name = "extsi47"} : <i4> to <i5>
    %107 = source {handshake.bb = 4 : ui32, handshake.name = "source4"} : <>
    %108 = constant %107 {handshake.bb = 4 : ui32, handshake.name = "constant29", value = 1 : i2} : <>, <i2>
    %109 = extsi %108 {handshake.bb = 4 : ui32, handshake.name = "extsi48"} : <i2> to <i5>
    %110 = addi %103, %109 {handshake.bb = 4 : ui32, handshake.name = "addi15"} : <i5>
    %111:2 = fork [2] %110 {handshake.bb = 4 : ui32, handshake.name = "fork16"} : <i5>
    %112 = trunci %111#0 {handshake.bb = 4 : ui32, handshake.name = "trunci6"} : <i5> to <i4>
    %113 = cmpi ult, %111#1, %106 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i5>
    %114:5 = fork [5] %113 {handshake.bb = 4 : ui32, handshake.name = "fork17"} : <i1>
    %trueResult_28, %falseResult_29 = cond_br %114#0, %112 {handshake.bb = 4 : ui32, handshake.name = "cond_br12"} : <i1>, <i4>
    sink %falseResult_29 {handshake.name = "sink2"} : <i4>
    %trueResult_30, %falseResult_31 = cond_br %114#2, %99 {handshake.bb = 4 : ui32, handshake.name = "cond_br13"} : <i1>, <i32>
    %trueResult_32, %falseResult_33 = cond_br %114#3, %100 {handshake.bb = 4 : ui32, handshake.name = "cond_br14"} : <i1>, <i32>
    %trueResult_34, %falseResult_35 = cond_br %114#1, %101 {handshake.bb = 4 : ui32, handshake.name = "cond_br15"} : <i1>, <i4>
    %trueResult_36, %falseResult_37 = cond_br %114#4, %result_26 {handshake.bb = 4 : ui32, handshake.name = "cond_br16"} : <i1>, <>
    %115 = merge %falseResult_31 {handshake.bb = 5 : ui32, handshake.name = "merge4"} : <i32>
    %116 = merge %falseResult_33 {handshake.bb = 5 : ui32, handshake.name = "merge5"} : <i32>
    %117 = merge %falseResult_35 {handshake.bb = 5 : ui32, handshake.name = "merge6"} : <i4>
    %118 = extsi %117 {handshake.bb = 5 : ui32, handshake.name = "extsi49"} : <i4> to <i5>
    %result_38, %index_39 = control_merge %falseResult_37  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    sink %index_39 {handshake.name = "sink3"} : <i1>
    %119:2 = fork [2] %result_38 {handshake.bb = 5 : ui32, handshake.name = "fork18"} : <>
    %120 = constant %119#0 {handshake.bb = 5 : ui32, handshake.name = "constant30", value = false} : <>, <i1>
    %121 = source {handshake.bb = 5 : ui32, handshake.name = "source5"} : <>
    %122 = constant %121 {handshake.bb = 5 : ui32, handshake.name = "constant31", value = 7 : i4} : <>, <i4>
    %123 = extsi %122 {handshake.bb = 5 : ui32, handshake.name = "extsi50"} : <i4> to <i5>
    %124 = source {handshake.bb = 5 : ui32, handshake.name = "source6"} : <>
    %125 = constant %124 {handshake.bb = 5 : ui32, handshake.name = "constant32", value = 1 : i2} : <>, <i2>
    %126 = extsi %125 {handshake.bb = 5 : ui32, handshake.name = "extsi51"} : <i2> to <i5>
    %127 = addi %118, %126 {handshake.bb = 5 : ui32, handshake.name = "addi16"} : <i5>
    %128:2 = fork [2] %127 {handshake.bb = 5 : ui32, handshake.name = "fork19"} : <i5>
    %129 = trunci %128#0 {handshake.bb = 5 : ui32, handshake.name = "trunci7"} : <i5> to <i4>
    %130 = cmpi ult, %128#1, %123 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i5>
    %131:5 = fork [5] %130 {handshake.bb = 5 : ui32, handshake.name = "fork20"} : <i1>
    %trueResult_40, %falseResult_41 = cond_br %131#0, %129 {handshake.bb = 5 : ui32, handshake.name = "cond_br17"} : <i1>, <i4>
    sink %falseResult_41 {handshake.name = "sink4"} : <i4>
    %trueResult_42, %falseResult_43 = cond_br %131#1, %115 {handshake.bb = 5 : ui32, handshake.name = "cond_br18"} : <i1>, <i32>
    sink %falseResult_43 {handshake.name = "sink5"} : <i32>
    %trueResult_44, %falseResult_45 = cond_br %131#2, %116 {handshake.bb = 5 : ui32, handshake.name = "cond_br19"} : <i1>, <i32>
    %trueResult_46, %falseResult_47 = cond_br %131#3, %119#1 {handshake.bb = 5 : ui32, handshake.name = "cond_br20"} : <i1>, <>
    %trueResult_48, %falseResult_49 = cond_br %131#4, %120 {handshake.bb = 5 : ui32, handshake.name = "cond_br21"} : <i1>, <i1>
    sink %trueResult_48 {handshake.name = "sink6"} : <i1>
    %132 = extsi %falseResult_49 {handshake.bb = 5 : ui32, handshake.name = "extsi24"} : <i1> to <i4>
    %133 = mux %135#0 [%132, %trueResult_90] {handshake.bb = 6 : ui32, handshake.name = "mux12"} : <i1>, <i4>
    %134 = mux %135#1 [%falseResult_45, %trueResult_92] {handshake.bb = 6 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %result_50, %index_51 = control_merge %falseResult_47, %trueResult_94  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    %135:2 = fork [2] %index_51 {handshake.bb = 6 : ui32, handshake.name = "fork21"} : <i1>
    %136:2 = fork [2] %result_50 {handshake.bb = 6 : ui32, handshake.name = "fork22"} : <>
    %137 = constant %136#0 {handshake.bb = 6 : ui32, handshake.name = "constant33", value = false} : <>, <i1>
    %138 = br %137 {handshake.bb = 6 : ui32, handshake.name = "br20"} : <i1>
    %139 = extsi %138 {handshake.bb = 6 : ui32, handshake.name = "extsi23"} : <i1> to <i4>
    %140 = br %134 {handshake.bb = 6 : ui32, handshake.name = "br21"} : <i32>
    %141 = br %133 {handshake.bb = 6 : ui32, handshake.name = "br22"} : <i4>
    %142 = br %136#1 {handshake.bb = 6 : ui32, handshake.name = "br23"} : <>
    %143 = mux %153#1 [%139, %trueResult_80] {handshake.bb = 7 : ui32, handshake.name = "mux14"} : <i1>, <i4>
    %144:3 = fork [3] %143 {handshake.bb = 7 : ui32, handshake.name = "fork23"} : <i4>
    %145 = extsi %144#0 {handshake.bb = 7 : ui32, handshake.name = "extsi52"} : <i4> to <i6>
    %146 = extsi %144#1 {handshake.bb = 7 : ui32, handshake.name = "extsi53"} : <i4> to <i6>
    %147 = mux %153#2 [%140, %trueResult_82] {handshake.bb = 7 : ui32, handshake.name = "mux15"} : <i1>, <i32>
    %148:2 = fork [2] %147 {handshake.bb = 7 : ui32, handshake.name = "fork24"} : <i32>
    %149 = mux %153#0 [%141, %trueResult_84] {handshake.bb = 7 : ui32, handshake.name = "mux16"} : <i1>, <i4>
    %150:3 = fork [3] %149 {handshake.bb = 7 : ui32, handshake.name = "fork25"} : <i4>
    %151 = extsi %150#1 {handshake.bb = 7 : ui32, handshake.name = "extsi54"} : <i4> to <i8>
    %152 = extsi %150#2 {handshake.bb = 7 : ui32, handshake.name = "extsi55"} : <i4> to <i8>
    %result_52, %index_53 = control_merge %142, %trueResult_86  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %153:3 = fork [3] %index_53 {handshake.bb = 7 : ui32, handshake.name = "fork26"} : <i1>
    %154:3 = lazy_fork [3] %result_52 {handshake.bb = 7 : ui32, handshake.name = "lazy_fork2"} : <>
    %155 = fork [1] %154#2 {handshake.bb = 7 : ui32, handshake.name = "fork27"} : <>
    %156 = constant %155 {handshake.bb = 7 : ui32, handshake.name = "constant34", value = false} : <>, <i1>
    %157 = source {handshake.bb = 7 : ui32, handshake.name = "source7"} : <>
    %158 = constant %157 {handshake.bb = 7 : ui32, handshake.name = "constant35", value = 7 : i4} : <>, <i4>
    %159:2 = fork [2] %158 {handshake.bb = 7 : ui32, handshake.name = "fork28"} : <i4>
    %160 = extsi %159#0 {handshake.bb = 7 : ui32, handshake.name = "extsi56"} : <i4> to <i8>
    %161 = extsi %159#1 {handshake.bb = 7 : ui32, handshake.name = "extsi57"} : <i4> to <i8>
    %162 = muli %152, %161 {handshake.bb = 7 : ui32, handshake.name = "muli9"} : <i8>
    %163 = trunci %162 {handshake.bb = 7 : ui32, handshake.name = "trunci8"} : <i8> to <i6>
    %164 = addi %145, %163 {handshake.bb = 7 : ui32, handshake.name = "addi7"} : <i6>
    %addressResult_54, %dataResult_55 = load[%164] %1#0 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"store2" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i6>, <i32>
    %165 = muli %dataResult_55, %148#1 {handshake.bb = 7 : ui32, handshake.name = "muli2"} : <i32>
    %166 = muli %151, %160 {handshake.bb = 7 : ui32, handshake.name = "muli10"} : <i8>
    %167 = trunci %166 {handshake.bb = 7 : ui32, handshake.name = "trunci9"} : <i8> to <i6>
    %168 = addi %146, %167 {handshake.bb = 7 : ui32, handshake.name = "addi8"} : <i6>
    %addressResult_56, %dataResult_57 = store[%168] %165 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"load6" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store2"} : <i6>, <i32>
    %169 = br %156 {handshake.bb = 7 : ui32, handshake.name = "br24"} : <i1>
    %170 = extsi %169 {handshake.bb = 7 : ui32, handshake.name = "extsi22"} : <i1> to <i4>
    %171 = br %148#0 {handshake.bb = 7 : ui32, handshake.name = "br25"} : <i32>
    %172 = br %150#0 {handshake.bb = 7 : ui32, handshake.name = "br26"} : <i4>
    %173 = br %144#2 {handshake.bb = 7 : ui32, handshake.name = "br27"} : <i4>
    %174 = br %154#1 {handshake.bb = 7 : ui32, handshake.name = "br28"} : <>
    %175 = mux %191#2 [%170, %trueResult_68] {handshake.bb = 8 : ui32, handshake.name = "mux17"} : <i1>, <i4>
    %176:3 = fork [3] %175 {handshake.bb = 8 : ui32, handshake.name = "fork29"} : <i4>
    %177 = extsi %176#0 {handshake.bb = 8 : ui32, handshake.name = "extsi58"} : <i4> to <i6>
    %178 = extsi %176#1 {handshake.bb = 8 : ui32, handshake.name = "extsi59"} : <i4> to <i5>
    %179 = extsi %176#2 {handshake.bb = 8 : ui32, handshake.name = "extsi60"} : <i4> to <i8>
    %180 = mux %191#3 [%171, %trueResult_70] {handshake.bb = 8 : ui32, handshake.name = "mux18"} : <i1>, <i32>
    %181 = mux %191#0 [%172, %trueResult_72] {handshake.bb = 8 : ui32, handshake.name = "mux19"} : <i1>, <i4>
    %182:4 = fork [4] %181 {handshake.bb = 8 : ui32, handshake.name = "fork30"} : <i4>
    %183 = extsi %182#1 {handshake.bb = 8 : ui32, handshake.name = "extsi61"} : <i4> to <i8>
    %184 = extsi %182#2 {handshake.bb = 8 : ui32, handshake.name = "extsi62"} : <i4> to <i8>
    %185 = extsi %182#3 {handshake.bb = 8 : ui32, handshake.name = "extsi63"} : <i4> to <i8>
    %186 = mux %191#1 [%173, %trueResult_74] {handshake.bb = 8 : ui32, handshake.name = "mux20"} : <i1>, <i4>
    %187:4 = fork [4] %186 {handshake.bb = 8 : ui32, handshake.name = "fork31"} : <i4>
    %188 = extsi %187#0 {handshake.bb = 8 : ui32, handshake.name = "extsi64"} : <i4> to <i6>
    %189 = extsi %187#1 {handshake.bb = 8 : ui32, handshake.name = "extsi65"} : <i4> to <i6>
    %190 = extsi %187#2 {handshake.bb = 8 : ui32, handshake.name = "extsi66"} : <i4> to <i6>
    %result_58, %index_59 = control_merge %174, %trueResult_76  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    %191:4 = fork [4] %index_59 {handshake.bb = 8 : ui32, handshake.name = "fork32"} : <i1>
    %192:3 = lazy_fork [3] %result_58 {handshake.bb = 8 : ui32, handshake.name = "lazy_fork3"} : <>
    %193 = fork [1] %192#2 {handshake.bb = 8 : ui32, handshake.name = "fork33"} : <>
    %194 = source {handshake.bb = 8 : ui32, handshake.name = "source8"} : <>
    %195 = constant %194 {handshake.bb = 8 : ui32, handshake.name = "constant36", value = 7 : i4} : <>, <i4>
    %196:5 = fork [5] %195 {handshake.bb = 8 : ui32, handshake.name = "fork34"} : <i4>
    %197 = extsi %196#0 {handshake.bb = 8 : ui32, handshake.name = "extsi67"} : <i4> to <i8>
    %198 = extsi %196#1 {handshake.bb = 8 : ui32, handshake.name = "extsi68"} : <i4> to <i8>
    %199 = extsi %196#2 {handshake.bb = 8 : ui32, handshake.name = "extsi69"} : <i4> to <i8>
    %200 = extsi %196#3 {handshake.bb = 8 : ui32, handshake.name = "extsi70"} : <i4> to <i5>
    %201 = extsi %196#4 {handshake.bb = 8 : ui32, handshake.name = "extsi71"} : <i4> to <i8>
    %202 = source {handshake.bb = 8 : ui32, handshake.name = "source9"} : <>
    %203 = constant %202 {handshake.bb = 8 : ui32, handshake.name = "constant37", value = 1 : i2} : <>, <i2>
    %204 = extsi %203 {handshake.bb = 8 : ui32, handshake.name = "extsi72"} : <i2> to <i5>
    %205 = muli %185, %199 {handshake.bb = 8 : ui32, handshake.name = "muli11"} : <i8>
    %206 = trunci %205 {handshake.bb = 8 : ui32, handshake.name = "trunci10"} : <i8> to <i6>
    %207 = addi %177, %206 {handshake.bb = 8 : ui32, handshake.name = "addi9"} : <i6>
    %addressResult_60, %dataResult_61 = load[%207] %2#1 {handshake.bb = 8 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load4"} : <i6>, <i32>
    %208 = muli %179, %201 {handshake.bb = 8 : ui32, handshake.name = "muli12"} : <i8>
    %209 = trunci %208 {handshake.bb = 8 : ui32, handshake.name = "trunci11"} : <i8> to <i6>
    %210 = addi %188, %209 {handshake.bb = 8 : ui32, handshake.name = "addi10"} : <i6>
    %addressResult_62, %dataResult_63 = load[%210] %outputs {handshake.bb = 8 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load5"} : <i6>, <i32>
    %211 = muli %dataResult_61, %dataResult_63 {handshake.bb = 8 : ui32, handshake.name = "muli3"} : <i32>
    %212 = muli %184, %198 {handshake.bb = 8 : ui32, handshake.name = "muli13"} : <i8>
    %213 = trunci %212 {handshake.bb = 8 : ui32, handshake.name = "trunci12"} : <i8> to <i6>
    %214 = addi %189, %213 {handshake.bb = 8 : ui32, handshake.name = "addi11"} : <i6>
    %addressResult_64, %dataResult_65 = load[%214] %1#1 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load6"} : <i6>, <i32>
    %215 = addi %dataResult_65, %211 {handshake.bb = 8 : ui32, handshake.name = "addi1"} : <i32>
    %216 = muli %183, %197 {handshake.bb = 8 : ui32, handshake.name = "muli14"} : <i8>
    %217 = trunci %216 {handshake.bb = 8 : ui32, handshake.name = "trunci13"} : <i8> to <i6>
    %218 = addi %190, %217 {handshake.bb = 8 : ui32, handshake.name = "addi12"} : <i6>
    %addressResult_66, %dataResult_67 = store[%218] %215 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"load6" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store3"} : <i6>, <i32>
    %219 = addi %178, %204 {handshake.bb = 8 : ui32, handshake.name = "addi17"} : <i5>
    %220:2 = fork [2] %219 {handshake.bb = 8 : ui32, handshake.name = "fork35"} : <i5>
    %221 = trunci %220#0 {handshake.bb = 8 : ui32, handshake.name = "trunci14"} : <i5> to <i4>
    %222 = cmpi ult, %220#1, %200 {handshake.bb = 8 : ui32, handshake.name = "cmpi3"} : <i5>
    %223:5 = fork [5] %222 {handshake.bb = 8 : ui32, handshake.name = "fork36"} : <i1>
    %trueResult_68, %falseResult_69 = cond_br %223#0, %221 {handshake.bb = 8 : ui32, handshake.name = "cond_br22"} : <i1>, <i4>
    sink %falseResult_69 {handshake.name = "sink7"} : <i4>
    %trueResult_70, %falseResult_71 = cond_br %223#3, %180 {handshake.bb = 8 : ui32, handshake.name = "cond_br23"} : <i1>, <i32>
    %trueResult_72, %falseResult_73 = cond_br %223#1, %182#0 {handshake.bb = 8 : ui32, handshake.name = "cond_br24"} : <i1>, <i4>
    %trueResult_74, %falseResult_75 = cond_br %223#2, %187#3 {handshake.bb = 8 : ui32, handshake.name = "cond_br25"} : <i1>, <i4>
    %trueResult_76, %falseResult_77 = cond_br %223#4, %192#1 {handshake.bb = 8 : ui32, handshake.name = "cond_br26"} : <i1>, <>
    %224 = merge %falseResult_71 {handshake.bb = 9 : ui32, handshake.name = "merge7"} : <i32>
    %225 = merge %falseResult_73 {handshake.bb = 9 : ui32, handshake.name = "merge8"} : <i4>
    %226 = merge %falseResult_75 {handshake.bb = 9 : ui32, handshake.name = "merge9"} : <i4>
    %227 = extsi %226 {handshake.bb = 9 : ui32, handshake.name = "extsi73"} : <i4> to <i5>
    %result_78, %index_79 = control_merge %falseResult_77  {handshake.bb = 9 : ui32, handshake.name = "control_merge8"} : <>, <i1>
    sink %index_79 {handshake.name = "sink8"} : <i1>
    %228 = source {handshake.bb = 9 : ui32, handshake.name = "source10"} : <>
    %229 = constant %228 {handshake.bb = 9 : ui32, handshake.name = "constant38", value = 7 : i4} : <>, <i4>
    %230 = extsi %229 {handshake.bb = 9 : ui32, handshake.name = "extsi74"} : <i4> to <i5>
    %231 = source {handshake.bb = 9 : ui32, handshake.name = "source11"} : <>
    %232 = constant %231 {handshake.bb = 9 : ui32, handshake.name = "constant39", value = 1 : i2} : <>, <i2>
    %233 = extsi %232 {handshake.bb = 9 : ui32, handshake.name = "extsi75"} : <i2> to <i5>
    %234 = addi %227, %233 {handshake.bb = 9 : ui32, handshake.name = "addi18"} : <i5>
    %235:2 = fork [2] %234 {handshake.bb = 9 : ui32, handshake.name = "fork37"} : <i5>
    %236 = trunci %235#0 {handshake.bb = 9 : ui32, handshake.name = "trunci15"} : <i5> to <i4>
    %237 = cmpi ult, %235#1, %230 {handshake.bb = 9 : ui32, handshake.name = "cmpi4"} : <i5>
    %238:4 = fork [4] %237 {handshake.bb = 9 : ui32, handshake.name = "fork38"} : <i1>
    %trueResult_80, %falseResult_81 = cond_br %238#0, %236 {handshake.bb = 9 : ui32, handshake.name = "cond_br27"} : <i1>, <i4>
    sink %falseResult_81 {handshake.name = "sink9"} : <i4>
    %trueResult_82, %falseResult_83 = cond_br %238#2, %224 {handshake.bb = 9 : ui32, handshake.name = "cond_br28"} : <i1>, <i32>
    %trueResult_84, %falseResult_85 = cond_br %238#1, %225 {handshake.bb = 9 : ui32, handshake.name = "cond_br29"} : <i1>, <i4>
    %trueResult_86, %falseResult_87 = cond_br %238#3, %result_78 {handshake.bb = 9 : ui32, handshake.name = "cond_br30"} : <i1>, <>
    %239 = merge %falseResult_83 {handshake.bb = 10 : ui32, handshake.name = "merge10"} : <i32>
    %240 = merge %falseResult_85 {handshake.bb = 10 : ui32, handshake.name = "merge11"} : <i4>
    %241 = extsi %240 {handshake.bb = 10 : ui32, handshake.name = "extsi76"} : <i4> to <i5>
    %result_88, %index_89 = control_merge %falseResult_87  {handshake.bb = 10 : ui32, handshake.name = "control_merge9"} : <>, <i1>
    sink %index_89 {handshake.name = "sink10"} : <i1>
    %242 = source {handshake.bb = 10 : ui32, handshake.name = "source12"} : <>
    %243 = constant %242 {handshake.bb = 10 : ui32, handshake.name = "constant40", value = 7 : i4} : <>, <i4>
    %244 = extsi %243 {handshake.bb = 10 : ui32, handshake.name = "extsi77"} : <i4> to <i5>
    %245 = source {handshake.bb = 10 : ui32, handshake.name = "source13"} : <>
    %246 = constant %245 {handshake.bb = 10 : ui32, handshake.name = "constant41", value = 1 : i2} : <>, <i2>
    %247 = extsi %246 {handshake.bb = 10 : ui32, handshake.name = "extsi78"} : <i2> to <i5>
    %248 = addi %241, %247 {handshake.bb = 10 : ui32, handshake.name = "addi19"} : <i5>
    %249:2 = fork [2] %248 {handshake.bb = 10 : ui32, handshake.name = "fork39"} : <i5>
    %250 = trunci %249#0 {handshake.bb = 10 : ui32, handshake.name = "trunci16"} : <i5> to <i4>
    %251 = cmpi ult, %249#1, %244 {handshake.bb = 10 : ui32, handshake.name = "cmpi5"} : <i5>
    %252:3 = fork [3] %251 {handshake.bb = 10 : ui32, handshake.name = "fork40"} : <i1>
    %trueResult_90, %falseResult_91 = cond_br %252#0, %250 {handshake.bb = 10 : ui32, handshake.name = "cond_br31"} : <i1>, <i4>
    sink %falseResult_91 {handshake.name = "sink11"} : <i4>
    %trueResult_92, %falseResult_93 = cond_br %252#1, %239 {handshake.bb = 10 : ui32, handshake.name = "cond_br32"} : <i1>, <i32>
    sink %falseResult_93 {handshake.name = "sink12"} : <i32>
    %trueResult_94, %falseResult_95 = cond_br %252#2, %result_88 {handshake.bb = 10 : ui32, handshake.name = "cond_br33"} : <i1>, <>
    %result_96, %index_97 = control_merge %falseResult_95  {handshake.bb = 11 : ui32, handshake.name = "control_merge10"} : <>, <i1>
    sink %index_97 {handshake.name = "sink13"} : <i1>
    %253:7 = fork [7] %result_96 {handshake.bb = 11 : ui32, handshake.name = "fork41"} : <>
    %254 = constant %253#6 {handshake.bb = 11 : ui32, handshake.name = "constant42", value = 48 : i7} : <>, <i7>
    %255 = trunci %254 {handshake.bb = 11 : ui32, handshake.name = "trunci17"} : <i7> to <i6>
    %addressResult_98, %dataResult_99 = load[%255] %1#2 {handshake.bb = 11 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load7"} : <i6>, <i32>
    end {handshake.bb = 11 : ui32, handshake.name = "end0"} %dataResult_99, %2#2, %memEnd_3, %memEnd_1, %memEnd, %1#3, %0#1 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


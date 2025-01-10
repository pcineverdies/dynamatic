module {
  handshake.func @kernel_3mm(%arg0: memref<49xi32>, %arg1: memref<49xi32>, %arg2: memref<49xi32>, %arg3: memref<49xi32>, %arg4: memref<49xi32>, %arg5: memref<49xi32>, %arg6: memref<49xi32>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, %arg12: !handshake.control<>, %arg13: !handshake.control<>, %arg14: !handshake.control<>, ...) -> (!handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "B", "C", "D", "E", "F", "G", "A_start", "B_start", "C_start", "D_start", "E_start", "F_start", "G_start", "start"], resNames = ["A_end", "B_end", "C_end", "D_end", "E_end", "F_end", "G_end", "end"]} {
    %0:3 = fork [3] %arg14 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %1:2 = lsq[%arg6 : memref<49xi32>] (%arg13, %236#0, %addressResult_84, %dataResult_85, %268#0, %addressResult_92, %addressResult_94, %dataResult_95, %327#6)  {groupSizes = [1 : i32, 2 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %2:3 = lsq[%arg5 : memref<49xi32>] (%arg12, %129#0, %addressResult_44, %dataResult_45, %161#0, %addressResult_52, %addressResult_54, %dataResult_55, %269#1, %addressResult_90, %327#5)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.name = "lsq4"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %3:3 = lsq[%arg4 : memref<49xi32>] (%arg11, %22#0, %addressResult, %dataResult, %54#0, %addressResult_14, %addressResult_16, %dataResult_17, %269#0, %addressResult_88, %327#4)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.name = "lsq5"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg3 : memref<49xi32>] %arg10 (%addressResult_50) %327#3 {connectedBlocks = [8 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg2 : memref<49xi32>] %arg9 (%addressResult_48) %327#2 {connectedBlocks = [8 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %outputs_2, %memEnd_3 = mem_controller[%arg1 : memref<49xi32>] %arg8 (%addressResult_12) %327#1 {connectedBlocks = [3 : i32], handshake.name = "mem_controller6"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %outputs_4, %memEnd_5 = mem_controller[%arg0 : memref<49xi32>] %arg7 (%addressResult_10) %327#0 {connectedBlocks = [3 : i32], handshake.name = "mem_controller7"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %4 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %5 = br %4 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <i1>
    %6 = extsi %5 {handshake.bb = 0 : ui32, handshake.name = "extsi41"} : <i1> to <i4>
    %7 = br %0#2 {handshake.bb = 0 : ui32, handshake.name = "br6"} : <>
    %8 = mux %index [%6, %trueResult_34] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i4>
    %result, %index = control_merge %7, %trueResult_36  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %9:2 = fork [2] %result {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <>
    %10 = constant %9#0 {handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %11 = br %10 {handshake.bb = 1 : ui32, handshake.name = "br9"} : <i1>
    %12 = extsi %11 {handshake.bb = 1 : ui32, handshake.name = "extsi40"} : <i1> to <i4>
    %13 = br %8 {handshake.bb = 1 : ui32, handshake.name = "br10"} : <i4>
    %14 = br %9#1 {handshake.bb = 1 : ui32, handshake.name = "br11"} : <>
    %15 = mux %21#1 [%12, %trueResult_26] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i4>
    %16:2 = fork [2] %15 {handshake.bb = 2 : ui32, handshake.name = "fork2"} : <i4>
    %17 = extsi %16#0 {handshake.bb = 2 : ui32, handshake.name = "extsi42"} : <i4> to <i6>
    %18 = mux %21#0 [%13, %trueResult_28] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i4>
    %19:2 = fork [2] %18 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i4>
    %20 = extsi %19#1 {handshake.bb = 2 : ui32, handshake.name = "extsi43"} : <i4> to <i8>
    %result_6, %index_7 = control_merge %14, %trueResult_30  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %21:2 = fork [2] %index_7 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i1>
    %22:3 = lazy_fork [3] %result_6 {handshake.bb = 2 : ui32, handshake.name = "lazy_fork0"} : <>
    %23 = fork [1] %22#2 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <>
    %24 = constant %23 {handshake.bb = 2 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %25:2 = fork [2] %24 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i1>
    %26 = extsi %25#1 {handshake.bb = 2 : ui32, handshake.name = "extsi3"} : <i1> to <i32>
    %27 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %28 = constant %27 {handshake.bb = 2 : ui32, handshake.name = "constant36", value = 7 : i4} : <>, <i4>
    %29 = extsi %28 {handshake.bb = 2 : ui32, handshake.name = "extsi44"} : <i4> to <i8>
    %30 = muli %20, %29 {handshake.bb = 2 : ui32, handshake.name = "muli3"} : <i8>
    %31 = trunci %30 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i8> to <i6>
    %32 = addi %17, %31 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i6>
    %addressResult, %dataResult = store[%32] %26 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0]]>, <"store1" (3) [[0, 0], [0, 0]]>, <"load6" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i6>, <i32>
    %33 = br %25#0 {handshake.bb = 2 : ui32, handshake.name = "br12"} : <i1>
    %34 = extsi %33 {handshake.bb = 2 : ui32, handshake.name = "extsi39"} : <i1> to <i4>
    %35 = br %19#0 {handshake.bb = 2 : ui32, handshake.name = "br13"} : <i4>
    %36 = br %16#1 {handshake.bb = 2 : ui32, handshake.name = "br14"} : <i4>
    %37 = br %22#1 {handshake.bb = 2 : ui32, handshake.name = "br15"} : <>
    %38 = mux %53#2 [%34, %trueResult] {handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i4>
    %39:3 = fork [3] %38 {handshake.bb = 3 : ui32, handshake.name = "fork7"} : <i4>
    %40 = extsi %39#0 {handshake.bb = 3 : ui32, handshake.name = "extsi45"} : <i4> to <i6>
    %41 = extsi %39#1 {handshake.bb = 3 : ui32, handshake.name = "extsi46"} : <i4> to <i5>
    %42 = extsi %39#2 {handshake.bb = 3 : ui32, handshake.name = "extsi47"} : <i4> to <i8>
    %43 = mux %53#0 [%35, %trueResult_18] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i4>
    %44:4 = fork [4] %43 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i4>
    %45 = extsi %44#1 {handshake.bb = 3 : ui32, handshake.name = "extsi48"} : <i4> to <i8>
    %46 = extsi %44#2 {handshake.bb = 3 : ui32, handshake.name = "extsi49"} : <i4> to <i8>
    %47 = extsi %44#3 {handshake.bb = 3 : ui32, handshake.name = "extsi50"} : <i4> to <i8>
    %48 = mux %53#1 [%36, %trueResult_20] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i4>
    %49:4 = fork [4] %48 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i4>
    %50 = extsi %49#0 {handshake.bb = 3 : ui32, handshake.name = "extsi51"} : <i4> to <i6>
    %51 = extsi %49#1 {handshake.bb = 3 : ui32, handshake.name = "extsi52"} : <i4> to <i6>
    %52 = extsi %49#2 {handshake.bb = 3 : ui32, handshake.name = "extsi53"} : <i4> to <i6>
    %result_8, %index_9 = control_merge %37, %trueResult_22  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %53:3 = fork [3] %index_9 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i1>
    %54:2 = lazy_fork [2] %result_8 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork1"} : <>
    %55 = source {handshake.bb = 3 : ui32, handshake.name = "source1"} : <>
    %56 = constant %55 {handshake.bb = 3 : ui32, handshake.name = "constant37", value = 7 : i4} : <>, <i4>
    %57:5 = fork [5] %56 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i4>
    %58 = extsi %57#0 {handshake.bb = 3 : ui32, handshake.name = "extsi54"} : <i4> to <i8>
    %59 = extsi %57#1 {handshake.bb = 3 : ui32, handshake.name = "extsi55"} : <i4> to <i8>
    %60 = extsi %57#2 {handshake.bb = 3 : ui32, handshake.name = "extsi56"} : <i4> to <i8>
    %61 = extsi %57#3 {handshake.bb = 3 : ui32, handshake.name = "extsi57"} : <i4> to <i5>
    %62 = extsi %57#4 {handshake.bb = 3 : ui32, handshake.name = "extsi58"} : <i4> to <i8>
    %63 = source {handshake.bb = 3 : ui32, handshake.name = "source2"} : <>
    %64 = constant %63 {handshake.bb = 3 : ui32, handshake.name = "constant38", value = 1 : i2} : <>, <i2>
    %65 = extsi %64 {handshake.bb = 3 : ui32, handshake.name = "extsi59"} : <i2> to <i5>
    %66 = muli %47, %60 {handshake.bb = 3 : ui32, handshake.name = "muli4"} : <i8>
    %67 = trunci %66 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i8> to <i6>
    %68 = addi %40, %67 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i6>
    %addressResult_10, %dataResult_11 = load[%68] %outputs_4 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i6>, <i32>
    %69 = muli %42, %62 {handshake.bb = 3 : ui32, handshake.name = "muli5"} : <i8>
    %70 = trunci %69 {handshake.bb = 3 : ui32, handshake.name = "trunci2"} : <i8> to <i6>
    %71 = addi %50, %70 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i6>
    %addressResult_12, %dataResult_13 = load[%71] %outputs_2 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i6>, <i32>
    %72 = muli %dataResult_11, %dataResult_13 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %73 = muli %46, %59 {handshake.bb = 3 : ui32, handshake.name = "muli6"} : <i8>
    %74 = trunci %73 {handshake.bb = 3 : ui32, handshake.name = "trunci3"} : <i8> to <i6>
    %75 = addi %51, %74 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i6>
    %addressResult_14, %dataResult_15 = load[%75] %3#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load2"} : <i6>, <i32>
    %76 = addi %dataResult_15, %72 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %77 = muli %45, %58 {handshake.bb = 3 : ui32, handshake.name = "muli7"} : <i8>
    %78 = trunci %77 {handshake.bb = 3 : ui32, handshake.name = "trunci4"} : <i8> to <i6>
    %79 = addi %52, %78 {handshake.bb = 3 : ui32, handshake.name = "addi7"} : <i6>
    %addressResult_16, %dataResult_17 = store[%79] %76 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"load6" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i6>, <i32>
    %80 = addi %41, %65 {handshake.bb = 3 : ui32, handshake.name = "addi18"} : <i5>
    %81:2 = fork [2] %80 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i5>
    %82 = trunci %81#0 {handshake.bb = 3 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %83 = cmpi ult, %81#1, %61 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i5>
    %84:4 = fork [4] %83 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i1>
    %trueResult, %falseResult = cond_br %84#0, %82 {handshake.bb = 3 : ui32, handshake.name = "cond_br9"} : <i1>, <i4>
    sink %falseResult {handshake.name = "sink0"} : <i4>
    %trueResult_18, %falseResult_19 = cond_br %84#1, %44#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br10"} : <i1>, <i4>
    %trueResult_20, %falseResult_21 = cond_br %84#2, %49#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br11"} : <i1>, <i4>
    %trueResult_22, %falseResult_23 = cond_br %84#3, %54#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br12"} : <i1>, <>
    %85 = merge %falseResult_19 {handshake.bb = 4 : ui32, handshake.name = "merge0"} : <i4>
    %86 = merge %falseResult_21 {handshake.bb = 4 : ui32, handshake.name = "merge1"} : <i4>
    %87 = extsi %86 {handshake.bb = 4 : ui32, handshake.name = "extsi60"} : <i4> to <i5>
    %result_24, %index_25 = control_merge %falseResult_23  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_25 {handshake.name = "sink1"} : <i1>
    %88 = source {handshake.bb = 4 : ui32, handshake.name = "source3"} : <>
    %89 = constant %88 {handshake.bb = 4 : ui32, handshake.name = "constant39", value = 7 : i4} : <>, <i4>
    %90 = extsi %89 {handshake.bb = 4 : ui32, handshake.name = "extsi61"} : <i4> to <i5>
    %91 = source {handshake.bb = 4 : ui32, handshake.name = "source4"} : <>
    %92 = constant %91 {handshake.bb = 4 : ui32, handshake.name = "constant40", value = 1 : i2} : <>, <i2>
    %93 = extsi %92 {handshake.bb = 4 : ui32, handshake.name = "extsi62"} : <i2> to <i5>
    %94 = addi %87, %93 {handshake.bb = 4 : ui32, handshake.name = "addi19"} : <i5>
    %95:2 = fork [2] %94 {handshake.bb = 4 : ui32, handshake.name = "fork14"} : <i5>
    %96 = trunci %95#0 {handshake.bb = 4 : ui32, handshake.name = "trunci6"} : <i5> to <i4>
    %97 = cmpi ult, %95#1, %90 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i5>
    %98:3 = fork [3] %97 {handshake.bb = 4 : ui32, handshake.name = "fork15"} : <i1>
    %trueResult_26, %falseResult_27 = cond_br %98#0, %96 {handshake.bb = 4 : ui32, handshake.name = "cond_br13"} : <i1>, <i4>
    sink %falseResult_27 {handshake.name = "sink2"} : <i4>
    %trueResult_28, %falseResult_29 = cond_br %98#1, %85 {handshake.bb = 4 : ui32, handshake.name = "cond_br14"} : <i1>, <i4>
    %trueResult_30, %falseResult_31 = cond_br %98#2, %result_24 {handshake.bb = 4 : ui32, handshake.name = "cond_br15"} : <i1>, <>
    %99 = merge %falseResult_29 {handshake.bb = 5 : ui32, handshake.name = "merge2"} : <i4>
    %100 = extsi %99 {handshake.bb = 5 : ui32, handshake.name = "extsi63"} : <i4> to <i5>
    %result_32, %index_33 = control_merge %falseResult_31  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    sink %index_33 {handshake.name = "sink3"} : <i1>
    %101:2 = fork [2] %result_32 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <>
    %102 = constant %101#0 {handshake.bb = 5 : ui32, handshake.name = "constant41", value = false} : <>, <i1>
    %103 = source {handshake.bb = 5 : ui32, handshake.name = "source5"} : <>
    %104 = constant %103 {handshake.bb = 5 : ui32, handshake.name = "constant42", value = 7 : i4} : <>, <i4>
    %105 = extsi %104 {handshake.bb = 5 : ui32, handshake.name = "extsi64"} : <i4> to <i5>
    %106 = source {handshake.bb = 5 : ui32, handshake.name = "source6"} : <>
    %107 = constant %106 {handshake.bb = 5 : ui32, handshake.name = "constant43", value = 1 : i2} : <>, <i2>
    %108 = extsi %107 {handshake.bb = 5 : ui32, handshake.name = "extsi65"} : <i2> to <i5>
    %109 = addi %100, %108 {handshake.bb = 5 : ui32, handshake.name = "addi20"} : <i5>
    %110:2 = fork [2] %109 {handshake.bb = 5 : ui32, handshake.name = "fork17"} : <i5>
    %111 = trunci %110#0 {handshake.bb = 5 : ui32, handshake.name = "trunci7"} : <i5> to <i4>
    %112 = cmpi ult, %110#1, %105 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i5>
    %113:3 = fork [3] %112 {handshake.bb = 5 : ui32, handshake.name = "fork18"} : <i1>
    %trueResult_34, %falseResult_35 = cond_br %113#0, %111 {handshake.bb = 5 : ui32, handshake.name = "cond_br16"} : <i1>, <i4>
    sink %falseResult_35 {handshake.name = "sink4"} : <i4>
    %trueResult_36, %falseResult_37 = cond_br %113#1, %101#1 {handshake.bb = 5 : ui32, handshake.name = "cond_br17"} : <i1>, <>
    %trueResult_38, %falseResult_39 = cond_br %113#2, %102 {handshake.bb = 5 : ui32, handshake.name = "cond_br18"} : <i1>, <i1>
    sink %trueResult_38 {handshake.name = "sink5"} : <i1>
    %114 = extsi %falseResult_39 {handshake.bb = 5 : ui32, handshake.name = "extsi38"} : <i1> to <i4>
    %115 = mux %index_41 [%114, %trueResult_74] {handshake.bb = 6 : ui32, handshake.name = "mux6"} : <i1>, <i4>
    %result_40, %index_41 = control_merge %falseResult_37, %trueResult_76  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    %116:2 = fork [2] %result_40 {handshake.bb = 6 : ui32, handshake.name = "fork19"} : <>
    %117 = constant %116#0 {handshake.bb = 6 : ui32, handshake.name = "constant44", value = false} : <>, <i1>
    %118 = br %117 {handshake.bb = 6 : ui32, handshake.name = "br16"} : <i1>
    %119 = extsi %118 {handshake.bb = 6 : ui32, handshake.name = "extsi37"} : <i1> to <i4>
    %120 = br %115 {handshake.bb = 6 : ui32, handshake.name = "br17"} : <i4>
    %121 = br %116#1 {handshake.bb = 6 : ui32, handshake.name = "br18"} : <>
    %122 = mux %128#1 [%119, %trueResult_66] {handshake.bb = 7 : ui32, handshake.name = "mux7"} : <i1>, <i4>
    %123:2 = fork [2] %122 {handshake.bb = 7 : ui32, handshake.name = "fork20"} : <i4>
    %124 = extsi %123#0 {handshake.bb = 7 : ui32, handshake.name = "extsi66"} : <i4> to <i6>
    %125 = mux %128#0 [%120, %trueResult_68] {handshake.bb = 7 : ui32, handshake.name = "mux8"} : <i1>, <i4>
    %126:2 = fork [2] %125 {handshake.bb = 7 : ui32, handshake.name = "fork21"} : <i4>
    %127 = extsi %126#1 {handshake.bb = 7 : ui32, handshake.name = "extsi67"} : <i4> to <i8>
    %result_42, %index_43 = control_merge %121, %trueResult_70  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %128:2 = fork [2] %index_43 {handshake.bb = 7 : ui32, handshake.name = "fork22"} : <i1>
    %129:3 = lazy_fork [3] %result_42 {handshake.bb = 7 : ui32, handshake.name = "lazy_fork2"} : <>
    %130 = fork [1] %129#2 {handshake.bb = 7 : ui32, handshake.name = "fork23"} : <>
    %131 = constant %130 {handshake.bb = 7 : ui32, handshake.name = "constant45", value = false} : <>, <i1>
    %132:2 = fork [2] %131 {handshake.bb = 7 : ui32, handshake.name = "fork24"} : <i1>
    %133 = extsi %132#1 {handshake.bb = 7 : ui32, handshake.name = "extsi14"} : <i1> to <i32>
    %134 = source {handshake.bb = 7 : ui32, handshake.name = "source7"} : <>
    %135 = constant %134 {handshake.bb = 7 : ui32, handshake.name = "constant46", value = 7 : i4} : <>, <i4>
    %136 = extsi %135 {handshake.bb = 7 : ui32, handshake.name = "extsi68"} : <i4> to <i8>
    %137 = muli %127, %136 {handshake.bb = 7 : ui32, handshake.name = "muli8"} : <i8>
    %138 = trunci %137 {handshake.bb = 7 : ui32, handshake.name = "trunci8"} : <i8> to <i6>
    %139 = addi %124, %138 {handshake.bb = 7 : ui32, handshake.name = "addi8"} : <i6>
    %addressResult_44, %dataResult_45 = store[%139] %133 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"load5" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store2"} : <i6>, <i32>
    %140 = br %132#0 {handshake.bb = 7 : ui32, handshake.name = "br19"} : <i1>
    %141 = extsi %140 {handshake.bb = 7 : ui32, handshake.name = "extsi36"} : <i1> to <i4>
    %142 = br %126#0 {handshake.bb = 7 : ui32, handshake.name = "br20"} : <i4>
    %143 = br %123#1 {handshake.bb = 7 : ui32, handshake.name = "br21"} : <i4>
    %144 = br %129#1 {handshake.bb = 7 : ui32, handshake.name = "br22"} : <>
    %145 = mux %160#2 [%141, %trueResult_56] {handshake.bb = 8 : ui32, handshake.name = "mux9"} : <i1>, <i4>
    %146:3 = fork [3] %145 {handshake.bb = 8 : ui32, handshake.name = "fork25"} : <i4>
    %147 = extsi %146#0 {handshake.bb = 8 : ui32, handshake.name = "extsi69"} : <i4> to <i6>
    %148 = extsi %146#1 {handshake.bb = 8 : ui32, handshake.name = "extsi70"} : <i4> to <i5>
    %149 = extsi %146#2 {handshake.bb = 8 : ui32, handshake.name = "extsi71"} : <i4> to <i8>
    %150 = mux %160#0 [%142, %trueResult_58] {handshake.bb = 8 : ui32, handshake.name = "mux10"} : <i1>, <i4>
    %151:4 = fork [4] %150 {handshake.bb = 8 : ui32, handshake.name = "fork26"} : <i4>
    %152 = extsi %151#1 {handshake.bb = 8 : ui32, handshake.name = "extsi72"} : <i4> to <i8>
    %153 = extsi %151#2 {handshake.bb = 8 : ui32, handshake.name = "extsi73"} : <i4> to <i8>
    %154 = extsi %151#3 {handshake.bb = 8 : ui32, handshake.name = "extsi74"} : <i4> to <i8>
    %155 = mux %160#1 [%143, %trueResult_60] {handshake.bb = 8 : ui32, handshake.name = "mux11"} : <i1>, <i4>
    %156:4 = fork [4] %155 {handshake.bb = 8 : ui32, handshake.name = "fork27"} : <i4>
    %157 = extsi %156#0 {handshake.bb = 8 : ui32, handshake.name = "extsi75"} : <i4> to <i6>
    %158 = extsi %156#1 {handshake.bb = 8 : ui32, handshake.name = "extsi76"} : <i4> to <i6>
    %159 = extsi %156#2 {handshake.bb = 8 : ui32, handshake.name = "extsi77"} : <i4> to <i6>
    %result_46, %index_47 = control_merge %144, %trueResult_62  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    %160:3 = fork [3] %index_47 {handshake.bb = 8 : ui32, handshake.name = "fork28"} : <i1>
    %161:2 = lazy_fork [2] %result_46 {handshake.bb = 8 : ui32, handshake.name = "lazy_fork3"} : <>
    %162 = source {handshake.bb = 8 : ui32, handshake.name = "source8"} : <>
    %163 = constant %162 {handshake.bb = 8 : ui32, handshake.name = "constant47", value = 7 : i4} : <>, <i4>
    %164:5 = fork [5] %163 {handshake.bb = 8 : ui32, handshake.name = "fork29"} : <i4>
    %165 = extsi %164#0 {handshake.bb = 8 : ui32, handshake.name = "extsi78"} : <i4> to <i8>
    %166 = extsi %164#1 {handshake.bb = 8 : ui32, handshake.name = "extsi79"} : <i4> to <i8>
    %167 = extsi %164#2 {handshake.bb = 8 : ui32, handshake.name = "extsi80"} : <i4> to <i8>
    %168 = extsi %164#3 {handshake.bb = 8 : ui32, handshake.name = "extsi81"} : <i4> to <i5>
    %169 = extsi %164#4 {handshake.bb = 8 : ui32, handshake.name = "extsi82"} : <i4> to <i8>
    %170 = source {handshake.bb = 8 : ui32, handshake.name = "source9"} : <>
    %171 = constant %170 {handshake.bb = 8 : ui32, handshake.name = "constant48", value = 1 : i2} : <>, <i2>
    %172 = extsi %171 {handshake.bb = 8 : ui32, handshake.name = "extsi83"} : <i2> to <i5>
    %173 = muli %154, %167 {handshake.bb = 8 : ui32, handshake.name = "muli9"} : <i8>
    %174 = trunci %173 {handshake.bb = 8 : ui32, handshake.name = "trunci9"} : <i8> to <i6>
    %175 = addi %147, %174 {handshake.bb = 8 : ui32, handshake.name = "addi9"} : <i6>
    %addressResult_48, %dataResult_49 = load[%175] %outputs_0 {handshake.bb = 8 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load3"} : <i6>, <i32>
    %176 = muli %149, %169 {handshake.bb = 8 : ui32, handshake.name = "muli10"} : <i8>
    %177 = trunci %176 {handshake.bb = 8 : ui32, handshake.name = "trunci10"} : <i8> to <i6>
    %178 = addi %157, %177 {handshake.bb = 8 : ui32, handshake.name = "addi10"} : <i6>
    %addressResult_50, %dataResult_51 = load[%178] %outputs {handshake.bb = 8 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i6>, <i32>
    %179 = muli %dataResult_49, %dataResult_51 {handshake.bb = 8 : ui32, handshake.name = "muli1"} : <i32>
    %180 = muli %153, %166 {handshake.bb = 8 : ui32, handshake.name = "muli11"} : <i8>
    %181 = trunci %180 {handshake.bb = 8 : ui32, handshake.name = "trunci11"} : <i8> to <i6>
    %182 = addi %158, %181 {handshake.bb = 8 : ui32, handshake.name = "addi11"} : <i6>
    %addressResult_52, %dataResult_53 = load[%182] %2#0 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load5"} : <i6>, <i32>
    %183 = addi %dataResult_53, %179 {handshake.bb = 8 : ui32, handshake.name = "addi1"} : <i32>
    %184 = muli %152, %165 {handshake.bb = 8 : ui32, handshake.name = "muli12"} : <i8>
    %185 = trunci %184 {handshake.bb = 8 : ui32, handshake.name = "trunci12"} : <i8> to <i6>
    %186 = addi %159, %185 {handshake.bb = 8 : ui32, handshake.name = "addi12"} : <i6>
    %addressResult_54, %dataResult_55 = store[%186] %183 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"load5" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store3"} : <i6>, <i32>
    %187 = addi %148, %172 {handshake.bb = 8 : ui32, handshake.name = "addi21"} : <i5>
    %188:2 = fork [2] %187 {handshake.bb = 8 : ui32, handshake.name = "fork30"} : <i5>
    %189 = trunci %188#0 {handshake.bb = 8 : ui32, handshake.name = "trunci13"} : <i5> to <i4>
    %190 = cmpi ult, %188#1, %168 {handshake.bb = 8 : ui32, handshake.name = "cmpi3"} : <i5>
    %191:4 = fork [4] %190 {handshake.bb = 8 : ui32, handshake.name = "fork31"} : <i1>
    %trueResult_56, %falseResult_57 = cond_br %191#0, %189 {handshake.bb = 8 : ui32, handshake.name = "cond_br19"} : <i1>, <i4>
    sink %falseResult_57 {handshake.name = "sink6"} : <i4>
    %trueResult_58, %falseResult_59 = cond_br %191#1, %151#0 {handshake.bb = 8 : ui32, handshake.name = "cond_br20"} : <i1>, <i4>
    %trueResult_60, %falseResult_61 = cond_br %191#2, %156#3 {handshake.bb = 8 : ui32, handshake.name = "cond_br21"} : <i1>, <i4>
    %trueResult_62, %falseResult_63 = cond_br %191#3, %161#1 {handshake.bb = 8 : ui32, handshake.name = "cond_br22"} : <i1>, <>
    %192 = merge %falseResult_59 {handshake.bb = 9 : ui32, handshake.name = "merge3"} : <i4>
    %193 = merge %falseResult_61 {handshake.bb = 9 : ui32, handshake.name = "merge4"} : <i4>
    %194 = extsi %193 {handshake.bb = 9 : ui32, handshake.name = "extsi84"} : <i4> to <i5>
    %result_64, %index_65 = control_merge %falseResult_63  {handshake.bb = 9 : ui32, handshake.name = "control_merge8"} : <>, <i1>
    sink %index_65 {handshake.name = "sink7"} : <i1>
    %195 = source {handshake.bb = 9 : ui32, handshake.name = "source10"} : <>
    %196 = constant %195 {handshake.bb = 9 : ui32, handshake.name = "constant49", value = 7 : i4} : <>, <i4>
    %197 = extsi %196 {handshake.bb = 9 : ui32, handshake.name = "extsi85"} : <i4> to <i5>
    %198 = source {handshake.bb = 9 : ui32, handshake.name = "source11"} : <>
    %199 = constant %198 {handshake.bb = 9 : ui32, handshake.name = "constant50", value = 1 : i2} : <>, <i2>
    %200 = extsi %199 {handshake.bb = 9 : ui32, handshake.name = "extsi86"} : <i2> to <i5>
    %201 = addi %194, %200 {handshake.bb = 9 : ui32, handshake.name = "addi22"} : <i5>
    %202:2 = fork [2] %201 {handshake.bb = 9 : ui32, handshake.name = "fork32"} : <i5>
    %203 = trunci %202#0 {handshake.bb = 9 : ui32, handshake.name = "trunci14"} : <i5> to <i4>
    %204 = cmpi ult, %202#1, %197 {handshake.bb = 9 : ui32, handshake.name = "cmpi4"} : <i5>
    %205:3 = fork [3] %204 {handshake.bb = 9 : ui32, handshake.name = "fork33"} : <i1>
    %trueResult_66, %falseResult_67 = cond_br %205#0, %203 {handshake.bb = 9 : ui32, handshake.name = "cond_br23"} : <i1>, <i4>
    sink %falseResult_67 {handshake.name = "sink8"} : <i4>
    %trueResult_68, %falseResult_69 = cond_br %205#1, %192 {handshake.bb = 9 : ui32, handshake.name = "cond_br24"} : <i1>, <i4>
    %trueResult_70, %falseResult_71 = cond_br %205#2, %result_64 {handshake.bb = 9 : ui32, handshake.name = "cond_br25"} : <i1>, <>
    %206 = merge %falseResult_69 {handshake.bb = 10 : ui32, handshake.name = "merge5"} : <i4>
    %207 = extsi %206 {handshake.bb = 10 : ui32, handshake.name = "extsi87"} : <i4> to <i5>
    %result_72, %index_73 = control_merge %falseResult_71  {handshake.bb = 10 : ui32, handshake.name = "control_merge9"} : <>, <i1>
    sink %index_73 {handshake.name = "sink9"} : <i1>
    %208:2 = fork [2] %result_72 {handshake.bb = 10 : ui32, handshake.name = "fork34"} : <>
    %209 = constant %208#0 {handshake.bb = 10 : ui32, handshake.name = "constant51", value = false} : <>, <i1>
    %210 = source {handshake.bb = 10 : ui32, handshake.name = "source12"} : <>
    %211 = constant %210 {handshake.bb = 10 : ui32, handshake.name = "constant52", value = 7 : i4} : <>, <i4>
    %212 = extsi %211 {handshake.bb = 10 : ui32, handshake.name = "extsi88"} : <i4> to <i5>
    %213 = source {handshake.bb = 10 : ui32, handshake.name = "source13"} : <>
    %214 = constant %213 {handshake.bb = 10 : ui32, handshake.name = "constant53", value = 1 : i2} : <>, <i2>
    %215 = extsi %214 {handshake.bb = 10 : ui32, handshake.name = "extsi89"} : <i2> to <i5>
    %216 = addi %207, %215 {handshake.bb = 10 : ui32, handshake.name = "addi23"} : <i5>
    %217:2 = fork [2] %216 {handshake.bb = 10 : ui32, handshake.name = "fork35"} : <i5>
    %218 = trunci %217#0 {handshake.bb = 10 : ui32, handshake.name = "trunci15"} : <i5> to <i4>
    %219 = cmpi ult, %217#1, %212 {handshake.bb = 10 : ui32, handshake.name = "cmpi5"} : <i5>
    %220:3 = fork [3] %219 {handshake.bb = 10 : ui32, handshake.name = "fork36"} : <i1>
    %trueResult_74, %falseResult_75 = cond_br %220#0, %218 {handshake.bb = 10 : ui32, handshake.name = "cond_br26"} : <i1>, <i4>
    sink %falseResult_75 {handshake.name = "sink10"} : <i4>
    %trueResult_76, %falseResult_77 = cond_br %220#1, %208#1 {handshake.bb = 10 : ui32, handshake.name = "cond_br27"} : <i1>, <>
    %trueResult_78, %falseResult_79 = cond_br %220#2, %209 {handshake.bb = 10 : ui32, handshake.name = "cond_br28"} : <i1>, <i1>
    sink %trueResult_78 {handshake.name = "sink11"} : <i1>
    %221 = extsi %falseResult_79 {handshake.bb = 10 : ui32, handshake.name = "extsi35"} : <i1> to <i4>
    %222 = mux %index_81 [%221, %trueResult_114] {handshake.bb = 11 : ui32, handshake.name = "mux12"} : <i1>, <i4>
    %result_80, %index_81 = control_merge %falseResult_77, %trueResult_116  {handshake.bb = 11 : ui32, handshake.name = "control_merge10"} : <>, <i1>
    %223:2 = fork [2] %result_80 {handshake.bb = 11 : ui32, handshake.name = "fork37"} : <>
    %224 = constant %223#0 {handshake.bb = 11 : ui32, handshake.name = "constant54", value = false} : <>, <i1>
    %225 = br %224 {handshake.bb = 11 : ui32, handshake.name = "br23"} : <i1>
    %226 = extsi %225 {handshake.bb = 11 : ui32, handshake.name = "extsi34"} : <i1> to <i4>
    %227 = br %222 {handshake.bb = 11 : ui32, handshake.name = "br24"} : <i4>
    %228 = br %223#1 {handshake.bb = 11 : ui32, handshake.name = "br25"} : <>
    %229 = mux %235#1 [%226, %trueResult_106] {handshake.bb = 12 : ui32, handshake.name = "mux13"} : <i1>, <i4>
    %230:2 = fork [2] %229 {handshake.bb = 12 : ui32, handshake.name = "fork38"} : <i4>
    %231 = extsi %230#0 {handshake.bb = 12 : ui32, handshake.name = "extsi90"} : <i4> to <i6>
    %232 = mux %235#0 [%227, %trueResult_108] {handshake.bb = 12 : ui32, handshake.name = "mux14"} : <i1>, <i4>
    %233:2 = fork [2] %232 {handshake.bb = 12 : ui32, handshake.name = "fork39"} : <i4>
    %234 = extsi %233#1 {handshake.bb = 12 : ui32, handshake.name = "extsi91"} : <i4> to <i8>
    %result_82, %index_83 = control_merge %228, %trueResult_110  {handshake.bb = 12 : ui32, handshake.name = "control_merge11"} : <>, <i1>
    %235:2 = fork [2] %index_83 {handshake.bb = 12 : ui32, handshake.name = "fork40"} : <i1>
    %236:3 = lazy_fork [3] %result_82 {handshake.bb = 12 : ui32, handshake.name = "lazy_fork4"} : <>
    %237 = fork [1] %236#2 {handshake.bb = 12 : ui32, handshake.name = "fork41"} : <>
    %238 = constant %237 {handshake.bb = 12 : ui32, handshake.name = "constant55", value = false} : <>, <i1>
    %239:2 = fork [2] %238 {handshake.bb = 12 : ui32, handshake.name = "fork42"} : <i1>
    %240 = extsi %239#1 {handshake.bb = 12 : ui32, handshake.name = "extsi25"} : <i1> to <i32>
    %241 = source {handshake.bb = 12 : ui32, handshake.name = "source14"} : <>
    %242 = constant %241 {handshake.bb = 12 : ui32, handshake.name = "constant56", value = 7 : i4} : <>, <i4>
    %243 = extsi %242 {handshake.bb = 12 : ui32, handshake.name = "extsi92"} : <i4> to <i8>
    %244 = muli %234, %243 {handshake.bb = 12 : ui32, handshake.name = "muli13"} : <i8>
    %245 = trunci %244 {handshake.bb = 12 : ui32, handshake.name = "trunci16"} : <i8> to <i6>
    %246 = addi %231, %245 {handshake.bb = 12 : ui32, handshake.name = "addi13"} : <i6>
    %addressResult_84, %dataResult_85 = store[%246] %240 {handshake.bb = 12 : ui32, handshake.deps = #handshake<deps[<"load8" (3) [[0, 0], [0, 0]]>, <"store5" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store4"} : <i6>, <i32>
    %247 = br %239#0 {handshake.bb = 12 : ui32, handshake.name = "br26"} : <i1>
    %248 = extsi %247 {handshake.bb = 12 : ui32, handshake.name = "extsi33"} : <i1> to <i4>
    %249 = br %233#0 {handshake.bb = 12 : ui32, handshake.name = "br27"} : <i4>
    %250 = br %230#1 {handshake.bb = 12 : ui32, handshake.name = "br28"} : <i4>
    %251 = br %236#1 {handshake.bb = 12 : ui32, handshake.name = "br29"} : <>
    %252 = mux %267#2 [%248, %trueResult_96] {handshake.bb = 13 : ui32, handshake.name = "mux15"} : <i1>, <i4>
    %253:3 = fork [3] %252 {handshake.bb = 13 : ui32, handshake.name = "fork43"} : <i4>
    %254 = extsi %253#0 {handshake.bb = 13 : ui32, handshake.name = "extsi93"} : <i4> to <i6>
    %255 = extsi %253#1 {handshake.bb = 13 : ui32, handshake.name = "extsi94"} : <i4> to <i5>
    %256 = extsi %253#2 {handshake.bb = 13 : ui32, handshake.name = "extsi95"} : <i4> to <i8>
    %257 = mux %267#0 [%249, %trueResult_98] {handshake.bb = 13 : ui32, handshake.name = "mux16"} : <i1>, <i4>
    %258:4 = fork [4] %257 {handshake.bb = 13 : ui32, handshake.name = "fork44"} : <i4>
    %259 = extsi %258#1 {handshake.bb = 13 : ui32, handshake.name = "extsi96"} : <i4> to <i8>
    %260 = extsi %258#2 {handshake.bb = 13 : ui32, handshake.name = "extsi97"} : <i4> to <i8>
    %261 = extsi %258#3 {handshake.bb = 13 : ui32, handshake.name = "extsi98"} : <i4> to <i8>
    %262 = mux %267#1 [%250, %trueResult_100] {handshake.bb = 13 : ui32, handshake.name = "mux17"} : <i1>, <i4>
    %263:4 = fork [4] %262 {handshake.bb = 13 : ui32, handshake.name = "fork45"} : <i4>
    %264 = extsi %263#0 {handshake.bb = 13 : ui32, handshake.name = "extsi99"} : <i4> to <i6>
    %265 = extsi %263#1 {handshake.bb = 13 : ui32, handshake.name = "extsi100"} : <i4> to <i6>
    %266 = extsi %263#2 {handshake.bb = 13 : ui32, handshake.name = "extsi101"} : <i4> to <i6>
    %result_86, %index_87 = control_merge %251, %trueResult_102  {handshake.bb = 13 : ui32, handshake.name = "control_merge12"} : <>, <i1>
    %267:3 = fork [3] %index_87 {handshake.bb = 13 : ui32, handshake.name = "fork46"} : <i1>
    %268:3 = lazy_fork [3] %result_86 {handshake.bb = 13 : ui32, handshake.name = "lazy_fork5"} : <>
    %269:2 = fork [2] %268#2 {handshake.bb = 13 : ui32, handshake.name = "fork47"} : <>
    %270 = source {handshake.bb = 13 : ui32, handshake.name = "source15"} : <>
    %271 = constant %270 {handshake.bb = 13 : ui32, handshake.name = "constant57", value = 7 : i4} : <>, <i4>
    %272:5 = fork [5] %271 {handshake.bb = 13 : ui32, handshake.name = "fork48"} : <i4>
    %273 = extsi %272#0 {handshake.bb = 13 : ui32, handshake.name = "extsi102"} : <i4> to <i8>
    %274 = extsi %272#1 {handshake.bb = 13 : ui32, handshake.name = "extsi103"} : <i4> to <i8>
    %275 = extsi %272#2 {handshake.bb = 13 : ui32, handshake.name = "extsi104"} : <i4> to <i8>
    %276 = extsi %272#3 {handshake.bb = 13 : ui32, handshake.name = "extsi105"} : <i4> to <i5>
    %277 = extsi %272#4 {handshake.bb = 13 : ui32, handshake.name = "extsi106"} : <i4> to <i8>
    %278 = source {handshake.bb = 13 : ui32, handshake.name = "source16"} : <>
    %279 = constant %278 {handshake.bb = 13 : ui32, handshake.name = "constant58", value = 1 : i2} : <>, <i2>
    %280 = extsi %279 {handshake.bb = 13 : ui32, handshake.name = "extsi107"} : <i2> to <i5>
    %281 = muli %261, %275 {handshake.bb = 13 : ui32, handshake.name = "muli14"} : <i8>
    %282 = trunci %281 {handshake.bb = 13 : ui32, handshake.name = "trunci17"} : <i8> to <i6>
    %283 = addi %254, %282 {handshake.bb = 13 : ui32, handshake.name = "addi14"} : <i6>
    %addressResult_88, %dataResult_89 = load[%283] %3#1 {handshake.bb = 13 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load6"} : <i6>, <i32>
    %284 = muli %256, %277 {handshake.bb = 13 : ui32, handshake.name = "muli15"} : <i8>
    %285 = trunci %284 {handshake.bb = 13 : ui32, handshake.name = "trunci18"} : <i8> to <i6>
    %286 = addi %264, %285 {handshake.bb = 13 : ui32, handshake.name = "addi15"} : <i6>
    %addressResult_90, %dataResult_91 = load[%286] %2#1 {handshake.bb = 13 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load7"} : <i6>, <i32>
    %287 = muli %dataResult_89, %dataResult_91 {handshake.bb = 13 : ui32, handshake.name = "muli2"} : <i32>
    %288 = muli %260, %274 {handshake.bb = 13 : ui32, handshake.name = "muli16"} : <i8>
    %289 = trunci %288 {handshake.bb = 13 : ui32, handshake.name = "trunci19"} : <i8> to <i6>
    %290 = addi %265, %289 {handshake.bb = 13 : ui32, handshake.name = "addi16"} : <i6>
    %addressResult_92, %dataResult_93 = load[%290] %1#0 {handshake.bb = 13 : ui32, handshake.deps = #handshake<deps[<"store5" (3) [[0, 0], [0, 0], [1, 6]]>, <"store5" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load8"} : <i6>, <i32>
    %291 = addi %dataResult_93, %287 {handshake.bb = 13 : ui32, handshake.name = "addi2"} : <i32>
    %292 = muli %259, %273 {handshake.bb = 13 : ui32, handshake.name = "muli17"} : <i8>
    %293 = trunci %292 {handshake.bb = 13 : ui32, handshake.name = "trunci20"} : <i8> to <i6>
    %294 = addi %266, %293 {handshake.bb = 13 : ui32, handshake.name = "addi17"} : <i6>
    %addressResult_94, %dataResult_95 = store[%294] %291 {handshake.bb = 13 : ui32, handshake.deps = #handshake<deps[<"load8" (3) [[0, 0], [0, 0], [1, 6]]>, <"store5" (3) [[0, 0], [0, 0], [1, 6]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store5"} : <i6>, <i32>
    %295 = addi %255, %280 {handshake.bb = 13 : ui32, handshake.name = "addi24"} : <i5>
    %296:2 = fork [2] %295 {handshake.bb = 13 : ui32, handshake.name = "fork49"} : <i5>
    %297 = trunci %296#0 {handshake.bb = 13 : ui32, handshake.name = "trunci21"} : <i5> to <i4>
    %298 = cmpi ult, %296#1, %276 {handshake.bb = 13 : ui32, handshake.name = "cmpi6"} : <i5>
    %299:4 = fork [4] %298 {handshake.bb = 13 : ui32, handshake.name = "fork50"} : <i1>
    %trueResult_96, %falseResult_97 = cond_br %299#0, %297 {handshake.bb = 13 : ui32, handshake.name = "cond_br29"} : <i1>, <i4>
    sink %falseResult_97 {handshake.name = "sink12"} : <i4>
    %trueResult_98, %falseResult_99 = cond_br %299#1, %258#0 {handshake.bb = 13 : ui32, handshake.name = "cond_br30"} : <i1>, <i4>
    %trueResult_100, %falseResult_101 = cond_br %299#2, %263#3 {handshake.bb = 13 : ui32, handshake.name = "cond_br31"} : <i1>, <i4>
    %trueResult_102, %falseResult_103 = cond_br %299#3, %268#1 {handshake.bb = 13 : ui32, handshake.name = "cond_br32"} : <i1>, <>
    %300 = merge %falseResult_99 {handshake.bb = 14 : ui32, handshake.name = "merge6"} : <i4>
    %301 = merge %falseResult_101 {handshake.bb = 14 : ui32, handshake.name = "merge7"} : <i4>
    %302 = extsi %301 {handshake.bb = 14 : ui32, handshake.name = "extsi108"} : <i4> to <i5>
    %result_104, %index_105 = control_merge %falseResult_103  {handshake.bb = 14 : ui32, handshake.name = "control_merge13"} : <>, <i1>
    sink %index_105 {handshake.name = "sink13"} : <i1>
    %303 = source {handshake.bb = 14 : ui32, handshake.name = "source17"} : <>
    %304 = constant %303 {handshake.bb = 14 : ui32, handshake.name = "constant59", value = 7 : i4} : <>, <i4>
    %305 = extsi %304 {handshake.bb = 14 : ui32, handshake.name = "extsi109"} : <i4> to <i5>
    %306 = source {handshake.bb = 14 : ui32, handshake.name = "source18"} : <>
    %307 = constant %306 {handshake.bb = 14 : ui32, handshake.name = "constant60", value = 1 : i2} : <>, <i2>
    %308 = extsi %307 {handshake.bb = 14 : ui32, handshake.name = "extsi110"} : <i2> to <i5>
    %309 = addi %302, %308 {handshake.bb = 14 : ui32, handshake.name = "addi25"} : <i5>
    %310:2 = fork [2] %309 {handshake.bb = 14 : ui32, handshake.name = "fork51"} : <i5>
    %311 = trunci %310#0 {handshake.bb = 14 : ui32, handshake.name = "trunci22"} : <i5> to <i4>
    %312 = cmpi ult, %310#1, %305 {handshake.bb = 14 : ui32, handshake.name = "cmpi7"} : <i5>
    %313:3 = fork [3] %312 {handshake.bb = 14 : ui32, handshake.name = "fork52"} : <i1>
    %trueResult_106, %falseResult_107 = cond_br %313#0, %311 {handshake.bb = 14 : ui32, handshake.name = "cond_br33"} : <i1>, <i4>
    sink %falseResult_107 {handshake.name = "sink14"} : <i4>
    %trueResult_108, %falseResult_109 = cond_br %313#1, %300 {handshake.bb = 14 : ui32, handshake.name = "cond_br34"} : <i1>, <i4>
    %trueResult_110, %falseResult_111 = cond_br %313#2, %result_104 {handshake.bb = 14 : ui32, handshake.name = "cond_br35"} : <i1>, <>
    %314 = merge %falseResult_109 {handshake.bb = 15 : ui32, handshake.name = "merge8"} : <i4>
    %315 = extsi %314 {handshake.bb = 15 : ui32, handshake.name = "extsi111"} : <i4> to <i5>
    %result_112, %index_113 = control_merge %falseResult_111  {handshake.bb = 15 : ui32, handshake.name = "control_merge14"} : <>, <i1>
    sink %index_113 {handshake.name = "sink15"} : <i1>
    %316 = source {handshake.bb = 15 : ui32, handshake.name = "source19"} : <>
    %317 = constant %316 {handshake.bb = 15 : ui32, handshake.name = "constant61", value = 7 : i4} : <>, <i4>
    %318 = extsi %317 {handshake.bb = 15 : ui32, handshake.name = "extsi112"} : <i4> to <i5>
    %319 = source {handshake.bb = 15 : ui32, handshake.name = "source20"} : <>
    %320 = constant %319 {handshake.bb = 15 : ui32, handshake.name = "constant62", value = 1 : i2} : <>, <i2>
    %321 = extsi %320 {handshake.bb = 15 : ui32, handshake.name = "extsi113"} : <i2> to <i5>
    %322 = addi %315, %321 {handshake.bb = 15 : ui32, handshake.name = "addi26"} : <i5>
    %323:2 = fork [2] %322 {handshake.bb = 15 : ui32, handshake.name = "fork53"} : <i5>
    %324 = trunci %323#0 {handshake.bb = 15 : ui32, handshake.name = "trunci23"} : <i5> to <i4>
    %325 = cmpi ult, %323#1, %318 {handshake.bb = 15 : ui32, handshake.name = "cmpi8"} : <i5>
    %326:2 = fork [2] %325 {handshake.bb = 15 : ui32, handshake.name = "fork54"} : <i1>
    %trueResult_114, %falseResult_115 = cond_br %326#0, %324 {handshake.bb = 15 : ui32, handshake.name = "cond_br36"} : <i1>, <i4>
    sink %falseResult_115 {handshake.name = "sink16"} : <i4>
    %trueResult_116, %falseResult_117 = cond_br %326#1, %result_112 {handshake.bb = 15 : ui32, handshake.name = "cond_br37"} : <i1>, <>
    %result_118, %index_119 = control_merge %falseResult_117  {handshake.bb = 16 : ui32, handshake.name = "control_merge15"} : <>, <i1>
    sink %index_119 {handshake.name = "sink17"} : <i1>
    %327:7 = fork [7] %result_118 {handshake.bb = 16 : ui32, handshake.name = "fork55"} : <>
    end {handshake.bb = 16 : ui32, handshake.name = "end0"} %memEnd_5, %memEnd_3, %memEnd_1, %memEnd, %3#2, %2#2, %1#1, %0#1 : <>, <>, <>, <>, <>, <>, <>, <>
  }
}


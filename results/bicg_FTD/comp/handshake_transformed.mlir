module {
  handshake.func @bicg(%arg0: memref<100xi32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["a", "s", "q", "p", "r", "a_start", "s_start", "q_start", "p_start", "r_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][1,2][3,1,4,cmpi1]", resNames = ["out0", "a_end", "s_end", "q_end", "p_end", "r_end", "end"]} {
    %0:10 = fork [10] %arg10 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %outputs, %memEnd = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_14) %0#4 {connectedBlocks = [2 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_18) %0#3 {connectedBlocks = [2 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %1:2 = lsq[%arg2 : memref<10xi32>] (%arg7, %11#1, %addressResult, %66#1, %addressResult_28, %dataResult_29, %0#2)  {groupSizes = [1 : i32, 1 : i32], handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %2:2 = lsq[%arg1 : memref<10xi32>] (%arg6, %24#1, %addressResult_12, %addressResult_16, %dataResult_17, %0#1)  {groupSizes = [2 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<i4>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %outputs_2, %memEnd_3 = mem_controller[%arg0 : memref<100xi32>] %arg5 (%addressResult_10) %0#0 {connectedBlocks = [2 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i7>) -> !handshake.channel<i32>
    %3 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %4 = constant %3 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %5 = extsi %4 {handshake.bb = 0 : ui32, handshake.name = "extsi7"} : <i1> to <i5>
    %6 = mux %10#1 [%0#9, %trueResult_22] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <>
    %7 = constant %0#8 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant11", value = false} : <>, <i1>
    %8 = mux %10#2 [%0#7, %trueResult_20] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <>
    %9 = merge %7, %77#4 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge2"} : <i1>
    %10:3 = fork [3] %9 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %11:2 = lazy_fork [2] %6 {handshake.bb = 1 : ui32, handshake.name = "lazy_fork0"} : <>
    %12 = mux %10#0 [%5, %trueResult_26] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i5>
    %13:4 = fork [4] %12 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i5>
    %14 = extsi %13#2 {handshake.bb = 1 : ui32, handshake.name = "extsi8"} : <i5> to <i6>
    %15 = trunci %13#0 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i5> to <i4>
    %16 = trunci %13#1 {handshake.bb = 1 : ui32, handshake.name = "trunci1"} : <i5> to <i4>
    %17 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %18 = constant %17 {handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %19 = extsi %18 {handshake.bb = 1 : ui32, handshake.name = "extsi9"} : <i1> to <i5>
    %addressResult, %dataResult = load[%16] %1#0 {handshake.bb = 1 : ui32, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i4>, <i32>
    %trueResult, %falseResult = cond_br %65#4, %24#0 {handshake.bb = 2 : ui32, handshake.name = "cond_br5"} : <i1>, <>
    %20 = constant %0#6 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant12", value = false} : <>, <i1>
    %21 = mux %23#3 [%8, %trueResult] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux7"} : <i1>, <>
    %22 = merge %20, %65#3 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge5"} : <i1>
    %23:4 = fork [4] %22 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i1>
    %24:2 = lazy_fork [2] %21 {handshake.bb = 2 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_4, %falseResult_5 = cond_br %65#2, %60 {handshake.bb = 2 : ui32, handshake.name = "cond_br14"} : <i1>, <i32>
    %25:2 = fork [2] %falseResult_5 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i32>
    %trueResult_6, %falseResult_7 = cond_br %65#0, %63 {handshake.bb = 2 : ui32, handshake.name = "cond_br15"} : <i1>, <i5>
    sink %falseResult_7 {handshake.name = "sink0"} : <i5>
    %trueResult_8, %falseResult_9 = cond_br %65#1, %27#3 {handshake.bb = 2 : ui32, handshake.name = "cond_br16"} : <i1>, <i5>
    sink %falseResult_9 {handshake.name = "sink1"} : <i5>
    %26 = mux %23#0 [%13#3, %trueResult_8] {handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <i5>
    %27:4 = fork [4] %26 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i5>
    %28 = trunci %27#0 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i5> to <i4>
    %29 = extsi %28 {handshake.bb = 2 : ui32, handshake.name = "extsi10"} : <i4> to <i7>
    %30 = extsi %27#2 {handshake.bb = 2 : ui32, handshake.name = "extsi11"} : <i5> to <i6>
    %31 = trunci %27#1 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i5> to <i4>
    %32 = mux %23#2 [%dataResult, %trueResult_4] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %33 = mux %23#1 [%19, %trueResult_6] {handshake.bb = 2 : ui32, handshake.name = "mux6"} : <i1>, <i5>
    %34:5 = fork [5] %33 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i5>
    %35 = extsi %34#0 {handshake.bb = 2 : ui32, handshake.name = "extsi12"} : <i5> to <i7>
    %36 = extsi %34#4 {handshake.bb = 2 : ui32, handshake.name = "extsi13"} : <i5> to <i6>
    %37 = trunci %34#1 {handshake.bb = 2 : ui32, handshake.name = "trunci4"} : <i5> to <i4>
    %38 = trunci %34#2 {handshake.bb = 2 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %39 = trunci %34#3 {handshake.bb = 2 : ui32, handshake.name = "trunci6"} : <i5> to <i4>
    %40 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %41 = constant %40 {handshake.bb = 2 : ui32, handshake.name = "constant2", value = 10 : i5} : <>, <i5>
    %42 = extsi %41 {handshake.bb = 2 : ui32, handshake.name = "extsi14"} : <i5> to <i6>
    %43 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %44 = constant %43 {handshake.bb = 2 : ui32, handshake.name = "constant10", value = 1 : i2} : <>, <i2>
    %45:2 = fork [2] %44 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i2>
    %46 = extui %45#0 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i2> to <i6>
    %47 = extsi %45#1 {handshake.bb = 2 : ui32, handshake.name = "extsi15"} : <i2> to <i6>
    %48 = source {handshake.bb = 2 : ui32, handshake.name = "source4"} : <>
    %49 = constant %48 {handshake.bb = 2 : ui32, handshake.name = "constant13", value = 3 : i3} : <>, <i3>
    %50 = extui %49 {handshake.bb = 2 : ui32, handshake.name = "extui1"} : <i3> to <i7>
    %51 = shli %30, %46 {handshake.bb = 2 : ui32, handshake.name = "shli3"} : <i6>
    %52 = extsi %51 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i6> to <i7>
    %53 = shli %29, %50 {handshake.bb = 2 : ui32, handshake.name = "shli2"} : <i7>
    %54 = addi %52, %53 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i7>
    %55 = addi %35, %54 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i7>
    %addressResult_10, %dataResult_11 = load[%55] %outputs_2 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i7>, <i32>
    %56:2 = fork [2] %dataResult_11 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i32>
    %addressResult_12, %dataResult_13 = load[%39] %2#0 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load2"} : <i4>, <i32>
    %addressResult_14, %dataResult_15 = load[%31] %outputs {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load3"} : <i4>, <i32>
    %57 = muli %dataResult_15, %56#0 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %58 = addi %dataResult_13, %57 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %addressResult_16, %dataResult_17 = store[%38] %58 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i4>, <i32>
    %addressResult_18, %dataResult_19 = load[%37] %outputs_0 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i4>, <i32>
    %59 = muli %56#1, %dataResult_19 {handshake.bb = 2 : ui32, handshake.name = "muli1"} : <i32>
    %60 = addi %32, %59 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %61 = addi %36, %47 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i6>
    %62:2 = fork [2] %61 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i6>
    %63 = trunci %62#0 {handshake.bb = 2 : ui32, handshake.name = "trunci7"} : <i6> to <i5>
    %64 = cmpi ult, %62#1, %42 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i6>
    %65:5 = fork [5] %64 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i1>
    %trueResult_20, %falseResult_21 = cond_br %77#3, %falseResult {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <>
    sink %falseResult_21 {handshake.name = "sink2"} : <>
    %trueResult_22, %falseResult_23 = cond_br %77#2, %66#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    sink %falseResult_23 {handshake.name = "sink3"} : <>
    %66:2 = lazy_fork [2] %11#0 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork2"} : <>
    %trueResult_24, %falseResult_25 = cond_br %77#1, %25#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br17"} : <i1>, <i32>
    sink %trueResult_24 {handshake.name = "sink4"} : <i32>
    %trueResult_26, %falseResult_27 = cond_br %77#0, %75 {handshake.bb = 3 : ui32, handshake.name = "cond_br18"} : <i1>, <i5>
    sink %falseResult_27 {handshake.name = "sink5"} : <i5>
    %67 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %68 = constant %67 {handshake.bb = 3 : ui32, handshake.name = "constant14", value = 10 : i5} : <>, <i5>
    %69 = extsi %68 {handshake.bb = 3 : ui32, handshake.name = "extsi17"} : <i5> to <i6>
    %70 = source {handshake.bb = 3 : ui32, handshake.name = "source6"} : <>
    %71 = constant %70 {handshake.bb = 3 : ui32, handshake.name = "constant15", value = 1 : i2} : <>, <i2>
    %72 = extsi %71 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i2> to <i6>
    %addressResult_28, %dataResult_29 = store[%15] %25#0 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i4>, <i32>
    %73 = addi %14, %72 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i6>
    %74:2 = fork [2] %73 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i6>
    %75 = trunci %74#0 {handshake.bb = 3 : ui32, handshake.name = "trunci8"} : <i6> to <i5>
    %76 = cmpi ult, %74#1, %69 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i6>
    %77:5 = fork [5] %76 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i1>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %falseResult_25, %memEnd_3, %2#1, %1#1, %memEnd_1, %memEnd, %0#5 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


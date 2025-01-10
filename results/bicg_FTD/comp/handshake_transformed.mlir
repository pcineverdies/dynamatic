module {
  handshake.func @bicg(%arg0: memref<100xi32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["a", "s", "q", "p", "r", "a_start", "s_start", "q_start", "p_start", "r_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][1,2][3,1,4,cmpi1]", resNames = ["out0", "a_end", "s_end", "q_end", "p_end", "r_end", "end"]} {
    %0:11 = fork [11] %arg10 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %outputs, %memEnd = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_16) %0#4 {connectedBlocks = [2 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_20) %0#3 {connectedBlocks = [2 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %1:2 = lsq[%arg2 : memref<10xi32>] (%arg7, %10#1, %addressResult, %65#1, %addressResult_32, %dataResult_33, %0#2)  {groupSizes = [1 : i32, 1 : i32], handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %2:2 = lsq[%arg1 : memref<10xi32>] (%arg6, %24#1, %addressResult_14, %addressResult_18, %dataResult_19, %0#1)  {groupSizes = [2 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<i4>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %outputs_2, %memEnd_3 = mem_controller[%arg0 : memref<100xi32>] %arg5 (%addressResult_12) %0#0 {connectedBlocks = [2 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i7>) -> !handshake.channel<i32>
    %3 = mux %9#2 [%0#10, %trueResult_24] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <>
    %4 = constant %0#9 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant10", value = false} : <>, <i1>
    %5:2 = fork [2] %4 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %6 = extsi %5#0 {handshake.bb = 1 : ui32, handshake.name = "extsi7"} : <i1> to <i5>
    %7 = mux %9#3 [%0#8, %trueResult_22] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <>
    %8 = merge %5#1, %74#5 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge1"} : <i1>
    %9:4 = fork [4] %8 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %10:2 = lazy_fork [2] %3 {handshake.bb = 1 : ui32, handshake.name = "lazy_fork0"} : <>
    %11 = mux %9#1 [%0#7, %trueResult_30] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %12:5 = fork [5] %11 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %13 = mux %9#0 [%6, %trueResult_28] {handshake.bb = 1 : ui32, handshake.name = "mux6"} : <i1>, <i5>
    %14:4 = fork [4] %13 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i5>
    %15 = extsi %14#2 {handshake.bb = 1 : ui32, handshake.name = "extsi8"} : <i5> to <i6>
    %16 = trunci %14#0 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i5> to <i4>
    %17 = trunci %14#1 {handshake.bb = 1 : ui32, handshake.name = "trunci1"} : <i5> to <i4>
    %18 = constant %12#2 {handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %19 = extsi %18 {handshake.bb = 1 : ui32, handshake.name = "extsi9"} : <i1> to <i5>
    %addressResult, %dataResult = load[%17] %1#0 {handshake.bb = 1 : ui32, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i4>, <i32>
    %trueResult, %falseResult = cond_br %64#5, %24#0 {handshake.bb = 2 : ui32, handshake.name = "cond_br5"} : <i1>, <>
    %20 = constant %0#6 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant11", value = false} : <>, <i1>
    %21 = mux %23#4 [%7, %trueResult] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <>
    %22 = merge %20, %64#4 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge4"} : <i1>
    %23:5 = fork [5] %22 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i1>
    %24:2 = lazy_fork [2] %21 {handshake.bb = 2 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_4, %falseResult_5 = cond_br %64#3, %59 {handshake.bb = 2 : ui32, handshake.name = "cond_br23"} : <i1>, <i32>
    %25:2 = fork [2] %falseResult_5 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i32>
    %trueResult_6, %falseResult_7 = cond_br %64#0, %62 {handshake.bb = 2 : ui32, handshake.name = "cond_br24"} : <i1>, <i5>
    sink %falseResult_7 {handshake.name = "sink0"} : <i5>
    %trueResult_8, %falseResult_9 = cond_br %64#2, %33#3 {handshake.bb = 2 : ui32, handshake.name = "cond_br25"} : <i1>, <>
    sink %falseResult_9 {handshake.name = "sink1"} : <>
    %trueResult_10, %falseResult_11 = cond_br %64#1, %27#3 {handshake.bb = 2 : ui32, handshake.name = "cond_br26"} : <i1>, <i5>
    sink %falseResult_11 {handshake.name = "sink2"} : <i5>
    %26 = mux %23#0 [%14#3, %trueResult_10] {handshake.bb = 2 : ui32, handshake.name = "mux10"} : <i1>, <i5>
    %27:4 = fork [4] %26 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i5>
    %28 = trunci %27#0 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i5> to <i4>
    %29 = extsi %28 {handshake.bb = 2 : ui32, handshake.name = "extsi10"} : <i4> to <i7>
    %30 = extsi %27#2 {handshake.bb = 2 : ui32, handshake.name = "extsi11"} : <i5> to <i6>
    %31 = trunci %27#1 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i5> to <i4>
    %32 = mux %23#3 [%12#4, %trueResult_8] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux12"} : <i1>, <>
    %33:4 = fork [4] %32 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <>
    %34 = mux %23#2 [%dataResult, %trueResult_4] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux14"} : <i1>, <i32>
    %35 = mux %23#1 [%19, %trueResult_6] {handshake.bb = 2 : ui32, handshake.name = "mux15"} : <i1>, <i5>
    %36:5 = fork [5] %35 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i5>
    %37 = extsi %36#0 {handshake.bb = 2 : ui32, handshake.name = "extsi12"} : <i5> to <i7>
    %38 = extsi %36#4 {handshake.bb = 2 : ui32, handshake.name = "extsi13"} : <i5> to <i6>
    %39 = trunci %36#1 {handshake.bb = 2 : ui32, handshake.name = "trunci4"} : <i5> to <i4>
    %40 = trunci %36#2 {handshake.bb = 2 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %41 = trunci %36#3 {handshake.bb = 2 : ui32, handshake.name = "trunci6"} : <i5> to <i4>
    %42 = constant %33#2 {handshake.bb = 2 : ui32, handshake.name = "constant1", value = 10 : i5} : <>, <i5>
    %43 = extsi %42 {handshake.bb = 2 : ui32, handshake.name = "extsi14"} : <i5> to <i6>
    %44 = constant %33#1 {handshake.bb = 2 : ui32, handshake.name = "constant2", value = 1 : i2} : <>, <i2>
    %45:2 = fork [2] %44 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i2>
    %46 = extui %45#0 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i2> to <i6>
    %47 = extsi %45#1 {handshake.bb = 2 : ui32, handshake.name = "extsi15"} : <i2> to <i6>
    %48 = constant %33#0 {handshake.bb = 2 : ui32, handshake.name = "constant12", value = 3 : i3} : <>, <i3>
    %49 = extui %48 {handshake.bb = 2 : ui32, handshake.name = "extui1"} : <i3> to <i7>
    %50 = shli %30, %46 {handshake.bb = 2 : ui32, handshake.name = "shli3"} : <i6>
    %51 = extsi %50 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i6> to <i7>
    %52 = shli %29, %49 {handshake.bb = 2 : ui32, handshake.name = "shli2"} : <i7>
    %53 = addi %51, %52 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i7>
    %54 = addi %37, %53 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i7>
    %addressResult_12, %dataResult_13 = load[%54] %outputs_2 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i7>, <i32>
    %55:2 = fork [2] %dataResult_13 {handshake.bb = 2 : ui32, handshake.name = "fork11"} : <i32>
    %addressResult_14, %dataResult_15 = load[%41] %2#0 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load2"} : <i4>, <i32>
    %addressResult_16, %dataResult_17 = load[%31] %outputs {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load3"} : <i4>, <i32>
    %56 = muli %dataResult_17, %55#0 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %57 = addi %dataResult_15, %56 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %addressResult_18, %dataResult_19 = store[%40] %57 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i4>, <i32>
    %addressResult_20, %dataResult_21 = load[%39] %outputs_0 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i4>, <i32>
    %58 = muli %55#1, %dataResult_21 {handshake.bb = 2 : ui32, handshake.name = "muli1"} : <i32>
    %59 = addi %34, %58 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %60 = addi %38, %47 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i6>
    %61:2 = fork [2] %60 {handshake.bb = 2 : ui32, handshake.name = "fork12"} : <i6>
    %62 = trunci %61#0 {handshake.bb = 2 : ui32, handshake.name = "trunci7"} : <i6> to <i5>
    %63 = cmpi ult, %61#1, %43 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i6>
    %64:6 = fork [6] %63 {handshake.bb = 2 : ui32, handshake.name = "fork13"} : <i1>
    %trueResult_22, %falseResult_23 = cond_br %74#4, %falseResult {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <>
    sink %falseResult_23 {handshake.name = "sink3"} : <>
    %trueResult_24, %falseResult_25 = cond_br %74#3, %65#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    sink %falseResult_25 {handshake.name = "sink4"} : <>
    %65:2 = lazy_fork [2] %10#0 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork2"} : <>
    %trueResult_26, %falseResult_27 = cond_br %74#2, %25#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br27"} : <i1>, <i32>
    sink %trueResult_26 {handshake.name = "sink5"} : <i32>
    %trueResult_28, %falseResult_29 = cond_br %74#0, %72 {handshake.bb = 3 : ui32, handshake.name = "cond_br28"} : <i1>, <i5>
    sink %falseResult_29 {handshake.name = "sink6"} : <i5>
    %trueResult_30, %falseResult_31 = cond_br %74#1, %12#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br29"} : <i1>, <>
    sink %falseResult_31 {handshake.name = "sink7"} : <>
    %66 = constant %12#1 {handshake.bb = 3 : ui32, handshake.name = "constant13", value = 10 : i5} : <>, <i5>
    %67 = extsi %66 {handshake.bb = 3 : ui32, handshake.name = "extsi17"} : <i5> to <i6>
    %68 = constant %12#0 {handshake.bb = 3 : ui32, handshake.name = "constant14", value = 1 : i2} : <>, <i2>
    %69 = extsi %68 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i2> to <i6>
    %addressResult_32, %dataResult_33 = store[%16] %25#0 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i4>, <i32>
    %70 = addi %15, %69 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i6>
    %71:2 = fork [2] %70 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i6>
    %72 = trunci %71#0 {handshake.bb = 3 : ui32, handshake.name = "trunci8"} : <i6> to <i5>
    %73 = cmpi ult, %71#1, %67 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i6>
    %74:6 = fork [6] %73 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <i1>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %falseResult_27, %memEnd_3, %2#1, %1#1, %memEnd_1, %memEnd, %0#5 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


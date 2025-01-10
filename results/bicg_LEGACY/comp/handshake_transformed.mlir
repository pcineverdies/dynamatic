module {
  handshake.func @bicg(%arg0: memref<100xi32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["a", "s", "q", "p", "r", "a_start", "s_start", "q_start", "p_start", "r_start", "start"], resNames = ["out0", "a_end", "s_end", "q_end", "p_end", "r_end", "end"]} {
    %0:3 = fork [3] %arg10 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %outputs, %memEnd = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_10) %79#4 {connectedBlocks = [2 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_14) %79#3 {connectedBlocks = [2 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %1:2 = lsq[%arg2 : memref<10xi32>] (%arg7, %10#0, %addressResult, %66#0, %addressResult_24, %dataResult_25, %79#2)  {groupSizes = [1 : i32, 1 : i32], handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %2:2 = lsq[%arg1 : memref<10xi32>] (%arg6, %33#0, %addressResult_8, %addressResult_12, %dataResult_13, %79#1)  {groupSizes = [2 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<i4>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %outputs_2, %memEnd_3 = mem_controller[%arg0 : memref<100xi32>] %arg5 (%addressResult_6) %79#0 {connectedBlocks = [2 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i7>) -> !handshake.channel<i32>
    %3 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %4 = br %3 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <i1>
    %5 = extsi %4 {handshake.bb = 0 : ui32, handshake.name = "extsi8"} : <i1> to <i5>
    %6 = br %0#2 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %7 = mux %index [%5, %trueResult_26] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i5>
    %8:2 = fork [2] %7 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i5>
    %9 = trunci %8#0 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i5> to <i4>
    %result, %index = control_merge %6, %trueResult_28  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %10:3 = lazy_fork [3] %result {handshake.bb = 1 : ui32, handshake.name = "lazy_fork0"} : <>
    %11 = fork [1] %10#2 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <>
    %12 = constant %11 {handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %addressResult, %dataResult = load[%9] %1#0 {handshake.bb = 1 : ui32, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i4>, <i32>
    %13 = br %12 {handshake.bb = 1 : ui32, handshake.name = "br4"} : <i1>
    %14 = extsi %13 {handshake.bb = 1 : ui32, handshake.name = "extsi7"} : <i1> to <i5>
    %15 = br %dataResult {handshake.bb = 1 : ui32, handshake.name = "br5"} : <i32>
    %16 = br %8#1 {handshake.bb = 1 : ui32, handshake.name = "br6"} : <i5>
    %17 = br %10#1 {handshake.bb = 1 : ui32, handshake.name = "br7"} : <>
    %18 = mux %32#1 [%14, %trueResult] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i5>
    %19:5 = fork [5] %18 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i5>
    %20 = extsi %19#0 {handshake.bb = 2 : ui32, handshake.name = "extsi9"} : <i5> to <i7>
    %21 = extsi %19#4 {handshake.bb = 2 : ui32, handshake.name = "extsi10"} : <i5> to <i6>
    %22 = trunci %19#1 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i5> to <i4>
    %23 = trunci %19#2 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i5> to <i4>
    %24 = trunci %19#3 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i5> to <i4>
    %25 = mux %32#2 [%15, %trueResult_16] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %26 = mux %32#0 [%16, %trueResult_18] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i5>
    %27:4 = fork [4] %26 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i5>
    %28 = trunci %27#0 {handshake.bb = 2 : ui32, handshake.name = "trunci4"} : <i5> to <i4>
    %29 = extsi %28 {handshake.bb = 2 : ui32, handshake.name = "extsi11"} : <i4> to <i7>
    %30 = extsi %27#3 {handshake.bb = 2 : ui32, handshake.name = "extsi12"} : <i5> to <i6>
    %31 = trunci %27#1 {handshake.bb = 2 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %result_4, %index_5 = control_merge %17, %trueResult_20  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %32:3 = fork [3] %index_5 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i1>
    %33:2 = fork [2] %result_4 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <>
    %34 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %35 = constant %34 {handshake.bb = 2 : ui32, handshake.name = "constant2", value = 10 : i5} : <>, <i5>
    %36 = extsi %35 {handshake.bb = 2 : ui32, handshake.name = "extsi13"} : <i5> to <i6>
    %37 = source {handshake.bb = 2 : ui32, handshake.name = "source1"} : <>
    %38 = constant %37 {handshake.bb = 2 : ui32, handshake.name = "constant10", value = 1 : i2} : <>, <i2>
    %39:2 = fork [2] %38 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i2>
    %40 = extui %39#0 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i2> to <i6>
    %41 = extsi %39#1 {handshake.bb = 2 : ui32, handshake.name = "extsi14"} : <i2> to <i6>
    %42 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %43 = constant %42 {handshake.bb = 2 : ui32, handshake.name = "constant11", value = 3 : i3} : <>, <i3>
    %44 = extui %43 {handshake.bb = 2 : ui32, handshake.name = "extui1"} : <i3> to <i7>
    %45 = shli %30, %40 {handshake.bb = 2 : ui32, handshake.name = "shli3"} : <i6>
    %46 = extsi %45 {handshake.bb = 2 : ui32, handshake.name = "extsi15"} : <i6> to <i7>
    %47 = shli %29, %44 {handshake.bb = 2 : ui32, handshake.name = "shli2"} : <i7>
    %48 = addi %46, %47 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i7>
    %49 = addi %20, %48 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i7>
    %addressResult_6, %dataResult_7 = load[%49] %outputs_2 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i7>, <i32>
    %50:2 = fork [2] %dataResult_7 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i32>
    %addressResult_8, %dataResult_9 = load[%24] %2#0 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load2"} : <i4>, <i32>
    %addressResult_10, %dataResult_11 = load[%31] %outputs {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load3"} : <i4>, <i32>
    %51 = muli %dataResult_11, %50#0 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %52 = addi %dataResult_9, %51 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %addressResult_12, %dataResult_13 = store[%23] %52 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i4>, <i32>
    %addressResult_14, %dataResult_15 = load[%22] %outputs_0 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i4>, <i32>
    %53 = muli %50#1, %dataResult_15 {handshake.bb = 2 : ui32, handshake.name = "muli1"} : <i32>
    %54 = addi %25, %53 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %55 = addi %21, %41 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i6>
    %56:2 = fork [2] %55 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i6>
    %57 = trunci %56#0 {handshake.bb = 2 : ui32, handshake.name = "trunci6"} : <i6> to <i5>
    %58 = cmpi ult, %56#1, %36 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i6>
    %59:4 = fork [4] %58 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i1>
    %trueResult, %falseResult = cond_br %59#0, %57 {handshake.bb = 2 : ui32, handshake.name = "cond_br2"} : <i1>, <i5>
    sink %falseResult {handshake.name = "sink0"} : <i5>
    %trueResult_16, %falseResult_17 = cond_br %59#2, %54 {handshake.bb = 2 : ui32, handshake.name = "cond_br3"} : <i1>, <i32>
    %trueResult_18, %falseResult_19 = cond_br %59#1, %27#2 {handshake.bb = 2 : ui32, handshake.name = "cond_br4"} : <i1>, <i5>
    %trueResult_20, %falseResult_21 = cond_br %59#3, %33#1 {handshake.bb = 2 : ui32, handshake.name = "cond_br5"} : <i1>, <>
    %60 = merge %falseResult_19 {handshake.bb = 3 : ui32, handshake.name = "merge0"} : <i5>
    %61:2 = fork [2] %60 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i5>
    %62 = extsi %61#1 {handshake.bb = 3 : ui32, handshake.name = "extsi16"} : <i5> to <i6>
    %63 = trunci %61#0 {handshake.bb = 3 : ui32, handshake.name = "trunci7"} : <i5> to <i4>
    %64 = merge %falseResult_17 {handshake.bb = 3 : ui32, handshake.name = "merge1"} : <i32>
    %65:2 = fork [2] %64 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i32>
    %result_22, %index_23 = control_merge %falseResult_21  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    sink %index_23 {handshake.name = "sink1"} : <i1>
    %66:2 = lazy_fork [2] %result_22 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork1"} : <>
    %67 = source {handshake.bb = 3 : ui32, handshake.name = "source3"} : <>
    %68 = constant %67 {handshake.bb = 3 : ui32, handshake.name = "constant12", value = 10 : i5} : <>, <i5>
    %69 = extsi %68 {handshake.bb = 3 : ui32, handshake.name = "extsi17"} : <i5> to <i6>
    %70 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %71 = constant %70 {handshake.bb = 3 : ui32, handshake.name = "constant13", value = 1 : i2} : <>, <i2>
    %72 = extsi %71 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i2> to <i6>
    %addressResult_24, %dataResult_25 = store[%63] %65#0 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i4>, <i32>
    %73 = addi %62, %72 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i6>
    %74:2 = fork [2] %73 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i6>
    %75 = trunci %74#0 {handshake.bb = 3 : ui32, handshake.name = "trunci8"} : <i6> to <i5>
    %76 = cmpi ult, %74#1, %69 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i6>
    %77:3 = fork [3] %76 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i1>
    %trueResult_26, %falseResult_27 = cond_br %77#0, %75 {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <i5>
    sink %falseResult_27 {handshake.name = "sink2"} : <i5>
    %trueResult_28, %falseResult_29 = cond_br %77#1, %66#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %trueResult_30, %falseResult_31 = cond_br %77#2, %65#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    sink %trueResult_30 {handshake.name = "sink3"} : <i32>
    %78 = merge %falseResult_31 {handshake.bb = 4 : ui32, handshake.name = "merge2"} : <i32>
    %result_32, %index_33 = control_merge %falseResult_29  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_33 {handshake.name = "sink4"} : <i1>
    %79:5 = fork [5] %result_32 {handshake.bb = 4 : ui32, handshake.name = "fork15"} : <>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %78, %memEnd_3, %2#1, %1#1, %memEnd_1, %memEnd, %0#1 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


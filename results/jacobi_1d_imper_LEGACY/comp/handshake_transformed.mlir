module {
  handshake.func @jacobi_1d_imper(%arg0: memref<50xi32>, %arg1: memref<50xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "B", "A_start", "B_start", "start"], resNames = ["out0", "A_end", "B_end", "end"]} {
    %0:3 = fork [3] %arg4 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %1:2 = lsq[%arg1 : memref<50xi32>] (%arg3, %23#0, %addressResult_6, %dataResult_7, %58#0, %addressResult_16, %85#1)  {groupSizes = [1 : i32, 1 : i32], handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %outputs:2, %memEnd = mem_controller[%arg0 : memref<50xi32>] %arg2 (%addressResult_34, %61, %2#3, %2#4, %2#5) %85#0 {connectedBlocks = [5 : i32, 3 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i6>, !handshake.channel<i32>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %2:6 = lsq[MC] (%23#2, %addressResult, %addressResult_2, %addressResult_4, %58#2, %addressResult_18, %dataResult_19, %outputs#1)  {groupSizes = [3 : i32, 1 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>)
    %3 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = false} : <>, <i1>
    %4 = br %3 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <i1>
    %5 = extsi %4 {handshake.bb = 0 : ui32, handshake.name = "extsi13"} : <i1> to <i2>
    %6 = br %0#2 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %7 = mux %index [%5, %trueResult_28] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i2>
    %result, %index = control_merge %6, %trueResult_30  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %8:2 = fork [2] %result {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <>
    %9 = constant %8#0 {handshake.bb = 1 : ui32, handshake.name = "constant4", value = 1 : i2} : <>, <i2>
    %10 = br %9 {handshake.bb = 1 : ui32, handshake.name = "br4"} : <i2>
    %11 = extsi %10 {handshake.bb = 1 : ui32, handshake.name = "extsi12"} : <i2> to <i7>
    %12 = br %7 {handshake.bb = 1 : ui32, handshake.name = "br5"} : <i2>
    %13 = br %8#1 {handshake.bb = 1 : ui32, handshake.name = "br6"} : <>
    %14 = mux %22#1 [%11, %trueResult] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i7>
    %15:5 = fork [5] %14 {handshake.bb = 2 : ui32, handshake.name = "fork2"} : <i7>
    %16 = trunci %15#0 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i7> to <i6>
    %17 = trunci %15#1 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i7> to <i6>
    %18 = extsi %15#4 {handshake.bb = 2 : ui32, handshake.name = "extsi14"} : <i7> to <i8>
    %19 = trunci %15#2 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i7> to <i6>
    %20 = trunci %15#3 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i7> to <i6>
    %21 = mux %22#0 [%12, %trueResult_8] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i2>
    %result_0, %index_1 = control_merge %13, %trueResult_10  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %22:2 = fork [2] %index_1 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i1>
    %23:4 = lazy_fork [4] %result_0 {handshake.bb = 2 : ui32, handshake.name = "lazy_fork0"} : <>
    %24 = fork [1] %23#3 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <>
    %25 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %26 = constant %25 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = -1 : i32} : <>, <i32>
    %27 = trunci %26 {handshake.bb = 2 : ui32, handshake.name = "trunci4"} : <i32> to <i6>
    %28 = source {handshake.bb = 2 : ui32, handshake.name = "source1"} : <>
    %29 = constant %28 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = 49 : i7} : <>, <i7>
    %30 = extsi %29 {handshake.bb = 2 : ui32, handshake.name = "extsi15"} : <i7> to <i8>
    %31 = constant %24 {handshake.bb = 2 : ui32, handshake.name = "constant16", value = 1 : i2} : <>, <i2>
    %32:3 = fork [3] %31 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i2>
    %33 = extsi %32#0 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i2> to <i6>
    %34 = extsi %32#1 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i2> to <i8>
    %35 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %36 = constant %35 {handshake.bb = 2 : ui32, handshake.name = "constant17", value = 1 : i2} : <>, <i2>
    %37 = extsi %36 {handshake.bb = 2 : ui32, handshake.name = "extsi4"} : <i2> to <i32>
    %38 = addi %16, %27 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i6>
    %addressResult, %dataResult = load[%38] %2#0 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i6>, <i32>
    %addressResult_2, %dataResult_3 = load[%20] %2#1 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load1"} : <i6>, <i32>
    %39 = addi %dataResult, %dataResult_3 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %40 = addi %17, %33 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i6>
    %addressResult_4, %dataResult_5 = load[%40] %2#2 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load2"} : <i6>, <i32>
    %41 = addi %39, %dataResult_5 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %42:2 = fork [2] %41 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i32>
    %43 = shli %42#1, %37 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %44 = addi %42#0, %43 {handshake.bb = 2 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_6, %dataResult_7 = store[%19] %44 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1], [0, 0]]>, <"load3" (1) [[1, 1]]>, <"load3" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i6>, <i32>
    %45 = addi %18, %34 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i8>
    %46:2 = fork [2] %45 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i8>
    %47 = trunci %46#0 {handshake.bb = 2 : ui32, handshake.name = "trunci5"} : <i8> to <i7>
    %48 = cmpi ult, %46#1, %30 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i8>
    %49:4 = fork [4] %48 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i1>
    %trueResult, %falseResult = cond_br %49#0, %47 {handshake.bb = 2 : ui32, handshake.name = "cond_br3"} : <i1>, <i7>
    sink %falseResult {handshake.name = "sink0"} : <i7>
    %trueResult_8, %falseResult_9 = cond_br %49#1, %21 {handshake.bb = 2 : ui32, handshake.name = "cond_br4"} : <i1>, <i2>
    %trueResult_10, %falseResult_11 = cond_br %49#2, %23#1 {handshake.bb = 2 : ui32, handshake.name = "cond_br5"} : <i1>, <>
    %trueResult_12, %falseResult_13 = cond_br %49#3, %32#2 {handshake.bb = 2 : ui32, handshake.name = "cond_br6"} : <i1>, <i2>
    sink %trueResult_12 {handshake.name = "sink1"} : <i2>
    %50 = extsi %falseResult_13 {handshake.bb = 2 : ui32, handshake.name = "extsi11"} : <i2> to <i7>
    %51 = mux %57#1 [%50, %trueResult_20] {handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i7>
    %52:3 = fork [3] %51 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i7>
    %53 = extsi %52#2 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i7> to <i8>
    %54 = trunci %52#0 {handshake.bb = 3 : ui32, handshake.name = "trunci6"} : <i7> to <i6>
    %55 = trunci %52#1 {handshake.bb = 3 : ui32, handshake.name = "trunci7"} : <i7> to <i6>
    %56 = mux %57#0 [%falseResult_9, %trueResult_22] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i2>
    %result_14, %index_15 = control_merge %falseResult_11, %trueResult_24  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %57:2 = fork [2] %index_15 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i1>
    %58:4 = lazy_fork [4] %result_14 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork1"} : <>
    %59 = fork [1] %58#3 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <>
    %60 = constant %59 {handshake.bb = 3 : ui32, handshake.name = "constant18", value = 1 : i2} : <>, <i2>
    %61 = extsi %60 {handshake.bb = 3 : ui32, handshake.name = "extsi5"} : <i2> to <i32>
    %62 = source {handshake.bb = 3 : ui32, handshake.name = "source3"} : <>
    %63 = constant %62 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 49 : i7} : <>, <i7>
    %64 = extsi %63 {handshake.bb = 3 : ui32, handshake.name = "extsi19"} : <i7> to <i8>
    %65 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %66 = constant %65 {handshake.bb = 3 : ui32, handshake.name = "constant20", value = 1 : i2} : <>, <i2>
    %67 = extsi %66 {handshake.bb = 3 : ui32, handshake.name = "extsi20"} : <i2> to <i8>
    %addressResult_16, %dataResult_17 = load[%55] %1#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load3"} : <i6>, <i32>
    %addressResult_18, %dataResult_19 = store[%54] %dataResult_17 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load0" (1) [[1, 1]]>, <"load1" (1) [[1, 1]]>, <"load2" (1) [[1, 1]]>, <"store1" (1) [[1, 1], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i6>, <i32>
    %68 = addi %53, %67 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i8>
    %69:2 = fork [2] %68 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i8>
    %70 = trunci %69#0 {handshake.bb = 3 : ui32, handshake.name = "trunci8"} : <i8> to <i7>
    %71 = cmpi ult, %69#1, %64 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i8>
    %72:3 = fork [3] %71 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i1>
    %trueResult_20, %falseResult_21 = cond_br %72#0, %70 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <i7>
    sink %falseResult_21 {handshake.name = "sink2"} : <i7>
    %trueResult_22, %falseResult_23 = cond_br %72#1, %56 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <i2>
    %trueResult_24, %falseResult_25 = cond_br %72#2, %58#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br9"} : <i1>, <>
    %73 = merge %falseResult_23 {handshake.bb = 4 : ui32, handshake.name = "merge0"} : <i2>
    %74 = extsi %73 {handshake.bb = 4 : ui32, handshake.name = "extsi21"} : <i2> to <i3>
    %result_26, %index_27 = control_merge %falseResult_25  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_27 {handshake.name = "sink3"} : <i1>
    %75 = source {handshake.bb = 4 : ui32, handshake.name = "source5"} : <>
    %76 = constant %75 {handshake.bb = 4 : ui32, handshake.name = "constant21", value = 2 : i3} : <>, <i3>
    %77 = source {handshake.bb = 4 : ui32, handshake.name = "source6"} : <>
    %78 = constant %77 {handshake.bb = 4 : ui32, handshake.name = "constant22", value = 1 : i2} : <>, <i2>
    %79 = extsi %78 {handshake.bb = 4 : ui32, handshake.name = "extsi22"} : <i2> to <i3>
    %80 = addi %74, %79 {handshake.bb = 4 : ui32, handshake.name = "addi6"} : <i3>
    %81:2 = fork [2] %80 {handshake.bb = 4 : ui32, handshake.name = "fork14"} : <i3>
    %82 = trunci %81#0 {handshake.bb = 4 : ui32, handshake.name = "trunci9"} : <i3> to <i2>
    %83 = cmpi ult, %81#1, %76 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i3>
    %84:2 = fork [2] %83 {handshake.bb = 4 : ui32, handshake.name = "fork15"} : <i1>
    %trueResult_28, %falseResult_29 = cond_br %84#0, %82 {handshake.bb = 4 : ui32, handshake.name = "cond_br10"} : <i1>, <i2>
    sink %falseResult_29 {handshake.name = "sink4"} : <i2>
    %trueResult_30, %falseResult_31 = cond_br %84#1, %result_26 {handshake.bb = 4 : ui32, handshake.name = "cond_br11"} : <i1>, <>
    %result_32, %index_33 = control_merge %falseResult_31  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    sink %index_33 {handshake.name = "sink5"} : <i1>
    %85:3 = fork [3] %result_32 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <>
    %86 = constant %85#2 {handshake.bb = 5 : ui32, handshake.name = "constant23", value = 49 : i7} : <>, <i7>
    %87 = trunci %86 {handshake.bb = 5 : ui32, handshake.name = "trunci10"} : <i7> to <i6>
    %addressResult_34, %dataResult_35 = load[%87] %outputs#0 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i6>, <i32>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %dataResult_35, %memEnd, %1#1, %0#1 : <i32>, <>, <>, <>
  }
}


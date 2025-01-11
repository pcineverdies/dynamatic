module {
  handshake.func @jacobi_1d_imper(%arg0: memref<50xi32>, %arg1: memref<50xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "B", "A_start", "B_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][4,1,5,cmpi2][1,2][3,3,4,cmpi1]", resNames = ["out0", "A_end", "B_end", "end"]} {
    %0:9 = fork [9] %arg4 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %1:2 = lsq[%arg1 : memref<50xi32>] (%arg3, %21#1, %addressResult_12, %dataResult_13, %62#1, %addressResult_22, %0#1)  {groupSizes = [1 : i32, 1 : i32], handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %outputs:2, %memEnd = mem_controller[%arg0 : memref<50xi32>] %arg2 (%addressResult_30, %64, %2#3, %2#4, %2#5) %0#0 {connectedBlocks = [5 : i32, 3 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i6>, !handshake.channel<i32>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %2:6 = lsq[MC] (%20#1, %addressResult, %addressResult_8, %addressResult_10, %61#1, %addressResult_24, %dataResult_25, %outputs#1)  {groupSizes = [3 : i32, 1 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>)
    %3 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %4 = constant %3 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %5 = extsi %4 {handshake.bb = 0 : ui32, handshake.name = "extsi12"} : <i1> to <i2>
    %6 = mux %9#1 [%0#8, %trueResult_26] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <>
    %7 = constant %0#7 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant19", value = false} : <>, <i1>
    %8 = merge %7, %90#2 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge3"} : <i1>
    %9:2 = fork [2] %8 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %10 = mux %9#0 [%5, %trueResult_28] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i2>
    %11 = extsi %10 {handshake.bb = 1 : ui32, handshake.name = "extsi13"} : <i2> to <i3>
    %12 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %13 = constant %12 {handshake.bb = 1 : ui32, handshake.name = "constant1", value = 1 : i2} : <>, <i2>
    %14 = extsi %13 {handshake.bb = 1 : ui32, handshake.name = "extsi14"} : <i2> to <i7>
    %trueResult, %falseResult = cond_br %53#5, %20#0 {handshake.bb = 2 : ui32, handshake.name = "cond_br25"} : <i1>, <>
    sink %trueResult {handshake.name = "sink0"} : <>
    %trueResult_0, %falseResult_1 = cond_br %53#4, %21#0 {handshake.bb = 2 : ui32, handshake.name = "cond_br26"} : <i1>, <>
    sink %trueResult_0 {handshake.name = "sink1"} : <>
    %trueResult_2, %falseResult_3 = cond_br %53#3, %19#2 {handshake.bb = 2 : ui32, handshake.name = "cond_br27"} : <i1>, <>
    sink %falseResult_3 {handshake.name = "sink2"} : <>
    %15 = constant %0#6 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant20", value = false} : <>, <i1>
    %16 = merge %15, %53#2 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge7"} : <i1>
    %17:2 = fork [2] %16 {handshake.bb = 2 : ui32, handshake.name = "fork2"} : <i1>
    %18 = mux %17#1 [%6, %trueResult_2] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux7"} : <i1>, <>
    %19:3 = fork [3] %18 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <>
    %20:2 = lazy_fork [2] %19#1 {handshake.bb = 2 : ui32, handshake.name = "lazy_fork0"} : <>
    %21:2 = lazy_fork [2] %19#0 {handshake.bb = 2 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_4, %falseResult_5 = cond_br %53#1, %38#1 {handshake.bb = 2 : ui32, handshake.name = "cond_br10"} : <i1>, <i2>
    sink %trueResult_4 {handshake.name = "sink3"} : <i2>
    %22 = extsi %falseResult_5 {handshake.bb = 2 : ui32, handshake.name = "extsi11"} : <i2> to <i7>
    %trueResult_6, %falseResult_7 = cond_br %53#0, %51 {handshake.bb = 2 : ui32, handshake.name = "cond_br11"} : <i1>, <i7>
    sink %falseResult_7 {handshake.name = "sink4"} : <i7>
    %23 = mux %17#0 [%14, %trueResult_6] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i7>
    %24:5 = fork [5] %23 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i7>
    %25 = trunci %24#0 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i7> to <i6>
    %26 = trunci %24#1 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i7> to <i6>
    %27 = extsi %24#4 {handshake.bb = 2 : ui32, handshake.name = "extsi15"} : <i7> to <i8>
    %28 = trunci %24#2 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i7> to <i6>
    %29 = trunci %24#3 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i7> to <i6>
    %30 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %31 = constant %30 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = -1 : i32} : <>, <i32>
    %32 = trunci %31 {handshake.bb = 2 : ui32, handshake.name = "trunci4"} : <i32> to <i6>
    %33 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %34 = constant %33 {handshake.bb = 2 : ui32, handshake.name = "constant2", value = 49 : i7} : <>, <i7>
    %35 = extsi %34 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i7> to <i8>
    %36 = source {handshake.bb = 2 : ui32, handshake.name = "source4"} : <>
    %37 = constant %36 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = 1 : i2} : <>, <i2>
    %38:4 = fork [4] %37 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i2>
    %39 = extsi %38#0 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i2> to <i6>
    %40 = extsi %38#2 {handshake.bb = 2 : ui32, handshake.name = "extsi18"} : <i2> to <i8>
    %41 = extsi %38#3 {handshake.bb = 2 : ui32, handshake.name = "extsi3"} : <i2> to <i32>
    %42 = addi %25, %32 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i6>
    %addressResult, %dataResult = load[%42] %2#0 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i6>, <i32>
    %addressResult_8, %dataResult_9 = load[%29] %2#1 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load1"} : <i6>, <i32>
    %43 = addi %dataResult, %dataResult_9 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %44 = addi %26, %39 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i6>
    %addressResult_10, %dataResult_11 = load[%44] %2#2 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load2"} : <i6>, <i32>
    %45 = addi %43, %dataResult_11 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %46:2 = fork [2] %45 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i32>
    %47 = shli %46#1, %41 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %48 = addi %46#0, %47 {handshake.bb = 2 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_12, %dataResult_13 = store[%28] %48 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1], [0, 0]]>, <"load3" (1) [[1, 1]]>, <"load3" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i6>, <i32>
    %49 = addi %27, %40 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i8>
    %50:2 = fork [2] %49 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i8>
    %51 = trunci %50#0 {handshake.bb = 2 : ui32, handshake.name = "trunci5"} : <i8> to <i7>
    %52 = cmpi ult, %50#1, %35 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i8>
    %53:6 = fork [6] %52 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i1>
    %trueResult_14, %falseResult_15 = cond_br %80#4, %60#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br28"} : <i1>, <>
    sink %falseResult_15 {handshake.name = "sink5"} : <>
    %trueResult_16, %falseResult_17 = cond_br %80#3, %58#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br29"} : <i1>, <>
    sink %falseResult_17 {handshake.name = "sink6"} : <>
    %trueResult_18, %falseResult_19 = cond_br %80#2, %62#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br30"} : <i1>, <>
    sink %trueResult_18 {handshake.name = "sink7"} : <>
    %54 = constant %0#5 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant24", value = false} : <>, <i1>
    %55 = merge %54, %80#1 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge11"} : <i1>
    %56:3 = fork [3] %55 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i1>
    %57 = mux %56#2 [%falseResult_1, %trueResult_16] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux11"} : <i1>, <>
    %58:2 = fork [2] %57 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <>
    %59 = mux %56#1 [%falseResult, %trueResult_14] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux12"} : <i1>, <>
    %60:2 = fork [2] %59 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <>
    %61:2 = lazy_fork [2] %60#0 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork2"} : <>
    sink %61#0 {handshake.name = "sink8"} : <>
    %62:2 = lazy_fork [2] %58#0 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork3"} : <>
    %trueResult_20, %falseResult_21 = cond_br %80#0, %78 {handshake.bb = 3 : ui32, handshake.name = "cond_br12"} : <i1>, <i7>
    sink %falseResult_21 {handshake.name = "sink9"} : <i7>
    %63 = constant %0#3 {handshake.bb = 3 : ui32, handshake.name = "constant16", value = 1 : i2} : <>, <i2>
    %64 = extsi %63 {handshake.bb = 3 : ui32, handshake.name = "extsi5"} : <i2> to <i32>
    %65 = mux %56#0 [%22, %trueResult_20] {handshake.bb = 3 : ui32, handshake.name = "mux2"} : <i1>, <i7>
    %66:3 = fork [3] %65 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i7>
    %67 = extsi %66#2 {handshake.bb = 3 : ui32, handshake.name = "extsi19"} : <i7> to <i8>
    %68 = trunci %66#0 {handshake.bb = 3 : ui32, handshake.name = "trunci6"} : <i7> to <i6>
    %69 = trunci %66#1 {handshake.bb = 3 : ui32, handshake.name = "trunci7"} : <i7> to <i6>
    %70 = source {handshake.bb = 3 : ui32, handshake.name = "source6"} : <>
    %71 = constant %70 {handshake.bb = 3 : ui32, handshake.name = "constant17", value = 49 : i7} : <>, <i7>
    %72 = extsi %71 {handshake.bb = 3 : ui32, handshake.name = "extsi20"} : <i7> to <i8>
    %73 = source {handshake.bb = 3 : ui32, handshake.name = "source7"} : <>
    %74 = constant %73 {handshake.bb = 3 : ui32, handshake.name = "constant18", value = 1 : i2} : <>, <i2>
    %75 = extsi %74 {handshake.bb = 3 : ui32, handshake.name = "extsi21"} : <i2> to <i8>
    %addressResult_22, %dataResult_23 = load[%69] %1#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load3"} : <i6>, <i32>
    %addressResult_24, %dataResult_25 = store[%68] %dataResult_23 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load0" (1) [[1, 1]]>, <"load1" (1) [[1, 1]]>, <"load2" (1) [[1, 1]]>, <"store1" (1) [[1, 1], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i6>, <i32>
    %76 = addi %67, %75 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i8>
    %77:2 = fork [2] %76 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i8>
    %78 = trunci %77#0 {handshake.bb = 3 : ui32, handshake.name = "trunci8"} : <i8> to <i7>
    %79 = cmpi ult, %77#1, %72 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i8>
    %80:5 = fork [5] %79 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i1>
    %trueResult_26, %falseResult_27 = cond_br %90#1, %falseResult_19 {handshake.bb = 4 : ui32, handshake.name = "cond_br31"} : <i1>, <>
    sink %falseResult_27 {handshake.name = "sink10"} : <>
    %trueResult_28, %falseResult_29 = cond_br %90#0, %88 {handshake.bb = 4 : ui32, handshake.name = "cond_br13"} : <i1>, <i2>
    sink %falseResult_29 {handshake.name = "sink11"} : <i2>
    %81 = source {handshake.bb = 4 : ui32, handshake.name = "source8"} : <>
    %82 = constant %81 {handshake.bb = 4 : ui32, handshake.name = "constant21", value = 2 : i3} : <>, <i3>
    %83 = source {handshake.bb = 4 : ui32, handshake.name = "source9"} : <>
    %84 = constant %83 {handshake.bb = 4 : ui32, handshake.name = "constant22", value = 1 : i2} : <>, <i2>
    %85 = extsi %84 {handshake.bb = 4 : ui32, handshake.name = "extsi22"} : <i2> to <i3>
    %86 = addi %11, %85 {handshake.bb = 4 : ui32, handshake.name = "addi6"} : <i3>
    %87:2 = fork [2] %86 {handshake.bb = 4 : ui32, handshake.name = "fork15"} : <i3>
    %88 = trunci %87#0 {handshake.bb = 4 : ui32, handshake.name = "trunci9"} : <i3> to <i2>
    %89 = cmpi ult, %87#1, %82 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i3>
    %90:3 = fork [3] %89 {handshake.bb = 4 : ui32, handshake.name = "fork16"} : <i1>
    %91 = constant %0#2 {handshake.bb = 5 : ui32, handshake.name = "constant23", value = 49 : i7} : <>, <i7>
    %92 = trunci %91 {handshake.bb = 5 : ui32, handshake.name = "trunci10"} : <i7> to <i6>
    %addressResult_30, %dataResult_31 = load[%92] %outputs#0 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i6>, <i32>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %dataResult_31, %memEnd, %1#1, %0#4 : <i32>, <>, <>, <>
  }
}


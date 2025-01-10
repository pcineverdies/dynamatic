module {
  handshake.func @jacobi_1d_imper(%arg0: memref<50xi32>, %arg1: memref<50xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "B", "A_start", "B_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][4,1,5,cmpi2][1,2][3,3,4,cmpi1]", resNames = ["out0", "A_end", "B_end", "end"]} {
    %0:10 = fork [10] %arg4 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %1:2 = lsq[%arg1 : memref<50xi32>] (%arg3, %23#1, %addressResult_12, %dataResult_13, %61#1, %addressResult_24, %0#1)  {groupSizes = [1 : i32, 1 : i32], handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.control<>)
    %outputs:2, %memEnd = mem_controller[%arg0 : memref<50xi32>] %arg2 (%addressResult_34, %65, %2#3, %2#4, %2#5) %0#0 {connectedBlocks = [5 : i32, 3 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i6>, !handshake.channel<i32>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %2:6 = lsq[MC] (%22#1, %addressResult, %addressResult_8, %addressResult_10, %60#1, %addressResult_26, %dataResult_27, %outputs#1)  {groupSizes = [3 : i32, 1 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>)
    %3 = mux %8#2 [%0#9, %trueResult_28] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <>
    %4 = constant %0#8 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant16", value = false} : <>, <i1>
    %5:2 = fork [2] %4 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %6 = extsi %5#0 {handshake.bb = 1 : ui32, handshake.name = "extsi12"} : <i1> to <i2>
    %7 = merge %5#1, %85#3 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge1"} : <i1>
    %8:3 = fork [3] %7 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %9 = mux %8#1 [%0#7, %trueResult_32] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %10:4 = fork [4] %9 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %11 = mux %8#0 [%6, %trueResult_30] {handshake.bb = 1 : ui32, handshake.name = "mux9"} : <i1>, <i2>
    %12 = extsi %11 {handshake.bb = 1 : ui32, handshake.name = "extsi13"} : <i2> to <i3>
    %13 = constant %10#1 {handshake.bb = 1 : ui32, handshake.name = "constant0", value = 1 : i2} : <>, <i2>
    %14:2 = fork [2] %13 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i2>
    %15 = extsi %14#0 {handshake.bb = 1 : ui32, handshake.name = "extsi14"} : <i2> to <i3>
    %16 = extsi %14#1 {handshake.bb = 1 : ui32, handshake.name = "extsi15"} : <i2> to <i7>
    %trueResult, %falseResult = cond_br %52#5, %22#0 {handshake.bb = 2 : ui32, handshake.name = "cond_br20"} : <i1>, <>
    sink %trueResult {handshake.name = "sink0"} : <>
    %trueResult_0, %falseResult_1 = cond_br %52#4, %23#0 {handshake.bb = 2 : ui32, handshake.name = "cond_br21"} : <i1>, <>
    sink %trueResult_0 {handshake.name = "sink1"} : <>
    %trueResult_2, %falseResult_3 = cond_br %52#3, %21#5 {handshake.bb = 2 : ui32, handshake.name = "cond_br22"} : <i1>, <>
    sink %falseResult_3 {handshake.name = "sink2"} : <>
    %17 = constant %0#6 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant17", value = false} : <>, <i1>
    %18 = merge %17, %52#2 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge5"} : <i1>
    %19:2 = fork [2] %18 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i1>
    %20 = mux %19#1 [%3, %trueResult_2] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux5"} : <i1>, <>
    %21:6 = fork [6] %20 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <>
    %22:2 = lazy_fork [2] %21#4 {handshake.bb = 2 : ui32, handshake.name = "lazy_fork0"} : <>
    %23:2 = lazy_fork [2] %21#3 {handshake.bb = 2 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_4, %falseResult_5 = cond_br %52#1, %37#1 {handshake.bb = 2 : ui32, handshake.name = "cond_br25"} : <i1>, <i2>
    sink %trueResult_4 {handshake.name = "sink3"} : <i2>
    %24 = extsi %falseResult_5 {handshake.bb = 2 : ui32, handshake.name = "extsi11"} : <i2> to <i7>
    %trueResult_6, %falseResult_7 = cond_br %52#0, %50 {handshake.bb = 2 : ui32, handshake.name = "cond_br26"} : <i1>, <i7>
    sink %falseResult_7 {handshake.name = "sink4"} : <i7>
    %25 = mux %19#0 [%16, %trueResult_6] {handshake.bb = 2 : ui32, handshake.name = "mux14"} : <i1>, <i7>
    %26:5 = fork [5] %25 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i7>
    %27 = trunci %26#0 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i7> to <i6>
    %28 = trunci %26#1 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i7> to <i6>
    %29 = extsi %26#4 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i7> to <i8>
    %30 = trunci %26#2 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i7> to <i6>
    %31 = trunci %26#3 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i7> to <i6>
    %32 = constant %21#2 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = -1 : i32} : <>, <i32>
    %33 = trunci %32 {handshake.bb = 2 : ui32, handshake.name = "trunci4"} : <i32> to <i6>
    %34 = constant %21#1 {handshake.bb = 2 : ui32, handshake.name = "constant2", value = 49 : i7} : <>, <i7>
    %35 = extsi %34 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i7> to <i8>
    %36 = constant %21#0 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = 1 : i2} : <>, <i2>
    %37:4 = fork [4] %36 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i2>
    %38 = extsi %37#0 {handshake.bb = 2 : ui32, handshake.name = "extsi18"} : <i2> to <i6>
    %39 = extsi %37#2 {handshake.bb = 2 : ui32, handshake.name = "extsi19"} : <i2> to <i8>
    %40 = extsi %37#3 {handshake.bb = 2 : ui32, handshake.name = "extsi4"} : <i2> to <i32>
    %41 = addi %27, %33 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i6>
    %addressResult, %dataResult = load[%41] %2#0 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i6>, <i32>
    %addressResult_8, %dataResult_9 = load[%31] %2#1 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load1"} : <i6>, <i32>
    %42 = addi %dataResult, %dataResult_9 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %43 = addi %28, %38 {handshake.bb = 2 : ui32, handshake.name = "addi3"} : <i6>
    %addressResult_10, %dataResult_11 = load[%43] %2#2 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load2"} : <i6>, <i32>
    %44 = addi %42, %dataResult_11 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i32>
    %45:2 = fork [2] %44 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i32>
    %46 = shli %45#1, %40 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %47 = addi %45#0, %46 {handshake.bb = 2 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_12, %dataResult_13 = store[%30] %47 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1], [0, 0]]>, <"load3" (1) [[1, 1]]>, <"load3" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i6>, <i32>
    %48 = addi %29, %39 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i8>
    %49:2 = fork [2] %48 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i8>
    %50 = trunci %49#0 {handshake.bb = 2 : ui32, handshake.name = "trunci5"} : <i8> to <i7>
    %51 = cmpi ult, %49#1, %35 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i8>
    %52:6 = fork [6] %51 {handshake.bb = 2 : ui32, handshake.name = "fork11"} : <i1>
    %trueResult_14, %falseResult_15 = cond_br %79#5, %59#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br23"} : <i1>, <>
    sink %falseResult_15 {handshake.name = "sink5"} : <>
    %trueResult_16, %falseResult_17 = cond_br %79#4, %57#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br32"} : <i1>, <>
    sink %falseResult_17 {handshake.name = "sink6"} : <>
    %trueResult_18, %falseResult_19 = cond_br %79#3, %61#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br33"} : <i1>, <>
    sink %trueResult_18 {handshake.name = "sink7"} : <>
    %53 = constant %0#5 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant22", value = false} : <>, <i1>
    %54 = merge %53, %79#2 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge9"} : <i1>
    %55:4 = fork [4] %54 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i1>
    %56 = mux %55#3 [%falseResult_1, %trueResult_16] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux10"} : <i1>, <>
    %57:2 = fork [2] %56 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <>
    %58 = mux %55#2 [%falseResult, %trueResult_14] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux11"} : <i1>, <>
    %59:2 = fork [2] %58 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <>
    %60:2 = lazy_fork [2] %59#0 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork2"} : <>
    sink %60#0 {handshake.name = "sink8"} : <>
    %61:2 = lazy_fork [2] %57#0 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork3"} : <>
    %trueResult_20, %falseResult_21 = cond_br %79#0, %77 {handshake.bb = 3 : ui32, handshake.name = "cond_br28"} : <i1>, <i7>
    sink %falseResult_21 {handshake.name = "sink9"} : <i7>
    %trueResult_22, %falseResult_23 = cond_br %79#1, %63#2 {handshake.bb = 3 : ui32, handshake.name = "cond_br29"} : <i1>, <>
    sink %falseResult_23 {handshake.name = "sink10"} : <>
    %62 = mux %55#1 [%10#3, %trueResult_22] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux15"} : <i1>, <>
    %63:3 = fork [3] %62 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <>
    %64 = constant %0#3 {handshake.bb = 3 : ui32, handshake.name = "constant5", value = 1 : i2} : <>, <i2>
    %65 = extsi %64 {handshake.bb = 3 : ui32, handshake.name = "extsi6"} : <i2> to <i32>
    %66 = mux %55#0 [%24, %trueResult_20] {handshake.bb = 3 : ui32, handshake.name = "mux17"} : <i1>, <i7>
    %67:3 = fork [3] %66 {handshake.bb = 3 : ui32, handshake.name = "fork16"} : <i7>
    %68 = extsi %67#2 {handshake.bb = 3 : ui32, handshake.name = "extsi20"} : <i7> to <i8>
    %69 = trunci %67#0 {handshake.bb = 3 : ui32, handshake.name = "trunci6"} : <i7> to <i6>
    %70 = trunci %67#1 {handshake.bb = 3 : ui32, handshake.name = "trunci7"} : <i7> to <i6>
    %71 = constant %63#1 {handshake.bb = 3 : ui32, handshake.name = "constant18", value = 49 : i7} : <>, <i7>
    %72 = extsi %71 {handshake.bb = 3 : ui32, handshake.name = "extsi21"} : <i7> to <i8>
    %73 = constant %63#0 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 1 : i2} : <>, <i2>
    %74 = extsi %73 {handshake.bb = 3 : ui32, handshake.name = "extsi22"} : <i2> to <i8>
    %addressResult_24, %dataResult_25 = load[%70] %1#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 1]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load3"} : <i6>, <i32>
    %addressResult_26, %dataResult_27 = store[%69] %dataResult_25 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load0" (1) [[1, 1]]>, <"load1" (1) [[1, 1]]>, <"load2" (1) [[1, 1]]>, <"store1" (1) [[1, 1], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i6>, <i32>
    %75 = addi %68, %74 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i8>
    %76:2 = fork [2] %75 {handshake.bb = 3 : ui32, handshake.name = "fork17"} : <i8>
    %77 = trunci %76#0 {handshake.bb = 3 : ui32, handshake.name = "trunci8"} : <i8> to <i7>
    %78 = cmpi ult, %76#1, %72 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i8>
    %79:6 = fork [6] %78 {handshake.bb = 3 : ui32, handshake.name = "fork18"} : <i1>
    %trueResult_28, %falseResult_29 = cond_br %85#2, %falseResult_19 {handshake.bb = 4 : ui32, handshake.name = "cond_br34"} : <i1>, <>
    sink %falseResult_29 {handshake.name = "sink11"} : <>
    %trueResult_30, %falseResult_31 = cond_br %85#0, %83 {handshake.bb = 4 : ui32, handshake.name = "cond_br30"} : <i1>, <i2>
    sink %falseResult_31 {handshake.name = "sink12"} : <i2>
    %trueResult_32, %falseResult_33 = cond_br %85#1, %10#2 {handshake.bb = 4 : ui32, handshake.name = "cond_br31"} : <i1>, <>
    sink %falseResult_33 {handshake.name = "sink13"} : <>
    %80 = constant %10#0 {handshake.bb = 4 : ui32, handshake.name = "constant20", value = 2 : i3} : <>, <i3>
    %81 = addi %12, %15 {handshake.bb = 4 : ui32, handshake.name = "addi6"} : <i3>
    %82:2 = fork [2] %81 {handshake.bb = 4 : ui32, handshake.name = "fork19"} : <i3>
    %83 = trunci %82#0 {handshake.bb = 4 : ui32, handshake.name = "trunci9"} : <i3> to <i2>
    %84 = cmpi ult, %82#1, %80 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i3>
    %85:4 = fork [4] %84 {handshake.bb = 4 : ui32, handshake.name = "fork20"} : <i1>
    %86 = constant %0#2 {handshake.bb = 5 : ui32, handshake.name = "constant21", value = 49 : i7} : <>, <i7>
    %87 = trunci %86 {handshake.bb = 5 : ui32, handshake.name = "trunci10"} : <i7> to <i6>
    %addressResult_34, %dataResult_35 = load[%87] %outputs#0 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i6>, <i32>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %dataResult_35, %memEnd, %1#1, %0#4 : <i32>, <>, <>, <>
  }
}


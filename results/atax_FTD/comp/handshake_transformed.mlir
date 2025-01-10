module {
  handshake.func @atax(%arg0: memref<100xf32>, %arg1: memref<10xf32>, %arg2: memref<10xf32>, %arg3: memref<10xf32>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "x", "y", "tmp", "A_start", "x_start", "y_start", "tmp_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][4,1,5,cmpi2][1,2][3,3,4,cmpi1]", resNames = ["out0", "A_end", "x_end", "y_end", "tmp_end", "end"]} {
    %0:11 = fork [11] %arg8 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %1:3 = lsq[%arg3 : memref<10xf32>] (%arg7, %10#1, %addressResult, %99#1, %addressResult_38, %dataResult_39, %110#0, %addressResult_40, %110#1)  {groupSizes = [1 : i32, 1 : i32, 1 : i32], handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<f32>, !handshake.control<>, !handshake.channel<i4>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.channel<f32>, !handshake.control<>)
    %2:2 = lsq[%arg2 : memref<10xf32>] (%arg6, %63#1, %addressResult_24, %addressResult_28, %dataResult_29, %0#2)  {groupSizes = [2 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<i4>, !handshake.channel<f32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg1 : memref<10xf32>] %arg5 (%addressResult_12) %0#1 {connectedBlocks = [2 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i4>) -> !handshake.channel<f32>
    %outputs_0:2, %memEnd_1 = mem_controller[%arg0 : memref<100xf32>] %arg4 (%addressResult_10, %addressResult_26) %0#0 {connectedBlocks = [2 : i32, 3 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i7>, !handshake.channel<i7>) -> (!handshake.channel<f32>, !handshake.channel<f32>)
    %3 = mux %9#2 [%0#10, %trueResult_32] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <>
    %4 = constant %0#9 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant16", value = false} : <>, <i1>
    %5:2 = fork [2] %4 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %6 = extsi %5#0 {handshake.bb = 1 : ui32, handshake.name = "extsi13"} : <i1> to <i5>
    %7 = mux %9#3 [%0#8, %trueResult_30] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <>
    %8 = merge %5#1, %108#4 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge1"} : <i1>
    %9:4 = fork [4] %8 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %10:2 = lazy_fork [2] %3 {handshake.bb = 1 : ui32, handshake.name = "lazy_fork0"} : <>
    %11 = mux %9#1 [%0#7, %trueResult_36] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %12:6 = fork [6] %11 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %13 = mux %9#0 [%6, %trueResult_34] {handshake.bb = 1 : ui32, handshake.name = "mux10"} : <i1>, <i5>
    %14:5 = fork [5] %13 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i5>
    %15 = extsi %14#2 {handshake.bb = 1 : ui32, handshake.name = "extsi14"} : <i5> to <i6>
    %16 = trunci %14#0 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i5> to <i4>
    %17 = trunci %14#1 {handshake.bb = 1 : ui32, handshake.name = "trunci1"} : <i5> to <i4>
    %18 = constant %12#2 {handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %19 = extsi %18 {handshake.bb = 1 : ui32, handshake.name = "extsi15"} : <i1> to <i5>
    %addressResult, %dataResult = load[%17] %1#0 {handshake.bb = 1 : ui32, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i4>, <f32>
    %trueResult, %falseResult = cond_br %58#2, %38 {handshake.bb = 2 : ui32, handshake.name = "cond_br35"} : <i1>, <i1>
    sink %trueResult {handshake.name = "sink0"} : <i1>
    %20 = extsi %falseResult {handshake.bb = 2 : ui32, handshake.name = "extsi12"} : <i1> to <i5>
    %trueResult_2, %falseResult_3 = cond_br %58#5, %53 {handshake.bb = 2 : ui32, handshake.name = "cond_br36"} : <i1>, <f32>
    %21:2 = fork [2] %falseResult_3 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <f32>
    %trueResult_4, %falseResult_5 = cond_br %58#0, %56 {handshake.bb = 2 : ui32, handshake.name = "cond_br37"} : <i1>, <i5>
    sink %falseResult_5 {handshake.name = "sink1"} : <i5>
    %trueResult_6, %falseResult_7 = cond_br %58#4, %31#4 {handshake.bb = 2 : ui32, handshake.name = "cond_br38"} : <i1>, <>
    sink %falseResult_7 {handshake.name = "sink2"} : <>
    %trueResult_8, %falseResult_9 = cond_br %58#1, %26#2 {handshake.bb = 2 : ui32, handshake.name = "cond_br39"} : <i1>, <i5>
    sink %falseResult_9 {handshake.name = "sink3"} : <i5>
    %22 = constant %0#6 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant23", value = false} : <>, <i1>
    %23 = merge %22, %58#3 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge11"} : <i1>
    %24:4 = fork [4] %23 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i1>
    %25 = mux %24#0 [%14#4, %trueResult_8] {handshake.bb = 2 : ui32, handshake.name = "mux11"} : <i1>, <i5>
    %26:3 = fork [3] %25 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i5>
    %27 = trunci %26#0 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i5> to <i4>
    %28 = extsi %27 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i4> to <i7>
    %29 = extsi %26#1 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i5> to <i6>
    %30 = mux %24#3 [%12#5, %trueResult_6] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux13"} : <i1>, <>
    %31:5 = fork [5] %30 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <>
    %32 = mux %24#2 [%dataResult, %trueResult_2] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux17"} : <i1>, <f32>
    %33 = mux %24#1 [%19, %trueResult_4] {handshake.bb = 2 : ui32, handshake.name = "mux18"} : <i1>, <i5>
    %34:3 = fork [3] %33 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i5>
    %35 = extsi %34#0 {handshake.bb = 2 : ui32, handshake.name = "extsi18"} : <i5> to <i7>
    %36 = extsi %34#2 {handshake.bb = 2 : ui32, handshake.name = "extsi19"} : <i5> to <i6>
    %37 = trunci %34#1 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i5> to <i4>
    %38 = constant %31#3 {handshake.bb = 2 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %39 = constant %31#2 {handshake.bb = 2 : ui32, handshake.name = "constant2", value = 10 : i5} : <>, <i5>
    %40 = extsi %39 {handshake.bb = 2 : ui32, handshake.name = "extsi20"} : <i5> to <i6>
    %41 = constant %31#1 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = 1 : i2} : <>, <i2>
    %42:2 = fork [2] %41 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i2>
    %43 = extui %42#0 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i2> to <i6>
    %44 = extsi %42#1 {handshake.bb = 2 : ui32, handshake.name = "extsi21"} : <i2> to <i6>
    %45 = constant %31#0 {handshake.bb = 2 : ui32, handshake.name = "constant18", value = 3 : i3} : <>, <i3>
    %46 = extui %45 {handshake.bb = 2 : ui32, handshake.name = "extui1"} : <i3> to <i7>
    %47 = shli %29, %43 {handshake.bb = 2 : ui32, handshake.name = "shli6"} : <i6>
    %48 = extsi %47 {handshake.bb = 2 : ui32, handshake.name = "extsi22"} : <i6> to <i7>
    %49 = shli %28, %46 {handshake.bb = 2 : ui32, handshake.name = "shli5"} : <i7>
    %50 = addi %48, %49 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i7>
    %51 = addi %35, %50 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i7>
    %addressResult_10, %dataResult_11 = load[%51] %outputs_0#0 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i7>, <f32>
    %addressResult_12, %dataResult_13 = load[%37] %outputs {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load2"} : <i4>, <f32>
    %52 = mulf %dataResult_11, %dataResult_13 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf0"} : <f32>
    %53 = addf %32, %52 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf0"} : <f32>
    %54 = addi %36, %44 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i6>
    %55:2 = fork [2] %54 {handshake.bb = 2 : ui32, handshake.name = "fork11"} : <i6>
    %56 = trunci %55#0 {handshake.bb = 2 : ui32, handshake.name = "trunci4"} : <i6> to <i5>
    %57 = cmpi ult, %55#1, %40 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i6>
    %58:6 = fork [6] %57 {handshake.bb = 2 : ui32, handshake.name = "fork12"} : <i1>
    %trueResult_14, %falseResult_15 = cond_br %98#5, %63#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %59 = constant %0#5 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant17", value = false} : <>, <i1>
    %60 = mux %62#4 [%7, %trueResult_14] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <>
    %61 = merge %59, %98#4 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge5"} : <i1>
    %62:5 = fork [5] %61 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i1>
    %63:2 = lazy_fork [2] %60 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_16, %falseResult_17 = cond_br %98#0, %96 {handshake.bb = 3 : ui32, handshake.name = "cond_br40"} : <i1>, <i5>
    sink %falseResult_17 {handshake.name = "sink4"} : <i5>
    %trueResult_18, %falseResult_19 = cond_br %98#3, %72#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br41"} : <i1>, <>
    sink %falseResult_19 {handshake.name = "sink5"} : <>
    %trueResult_20, %falseResult_21 = cond_br %98#1, %67#2 {handshake.bb = 3 : ui32, handshake.name = "cond_br42"} : <i1>, <i5>
    sink %falseResult_21 {handshake.name = "sink6"} : <i5>
    %trueResult_22, %falseResult_23 = cond_br %98#2, %65#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br43"} : <i1>, <f32>
    sink %falseResult_23 {handshake.name = "sink7"} : <f32>
    %64 = mux %62#3 [%21#1, %trueResult_22] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux19"} : <i1>, <f32>
    %65:2 = fork [2] %64 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <f32>
    %66 = mux %62#0 [%14#3, %trueResult_20] {handshake.bb = 3 : ui32, handshake.name = "mux20"} : <i1>, <i5>
    %67:3 = fork [3] %66 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <i5>
    %68 = trunci %67#0 {handshake.bb = 3 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %69 = extsi %68 {handshake.bb = 3 : ui32, handshake.name = "extsi23"} : <i4> to <i7>
    %70 = extsi %67#1 {handshake.bb = 3 : ui32, handshake.name = "extsi24"} : <i5> to <i6>
    %71 = mux %62#2 [%12#4, %trueResult_18] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux24"} : <i1>, <>
    %72:4 = fork [4] %71 {handshake.bb = 3 : ui32, handshake.name = "fork16"} : <>
    %73 = mux %62#1 [%20, %trueResult_16] {handshake.bb = 3 : ui32, handshake.name = "mux25"} : <i1>, <i5>
    %74:4 = fork [4] %73 {handshake.bb = 3 : ui32, handshake.name = "fork17"} : <i5>
    %75 = extsi %74#0 {handshake.bb = 3 : ui32, handshake.name = "extsi25"} : <i5> to <i7>
    %76 = extsi %74#3 {handshake.bb = 3 : ui32, handshake.name = "extsi26"} : <i5> to <i6>
    %77 = trunci %74#1 {handshake.bb = 3 : ui32, handshake.name = "trunci6"} : <i5> to <i4>
    %78 = trunci %74#2 {handshake.bb = 3 : ui32, handshake.name = "trunci7"} : <i5> to <i4>
    %79 = constant %72#2 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 10 : i5} : <>, <i5>
    %80 = extsi %79 {handshake.bb = 3 : ui32, handshake.name = "extsi27"} : <i5> to <i6>
    %81 = constant %72#1 {handshake.bb = 3 : ui32, handshake.name = "constant20", value = 1 : i2} : <>, <i2>
    %82:2 = fork [2] %81 {handshake.bb = 3 : ui32, handshake.name = "fork18"} : <i2>
    %83 = extui %82#0 {handshake.bb = 3 : ui32, handshake.name = "extui2"} : <i2> to <i6>
    %84 = extsi %82#1 {handshake.bb = 3 : ui32, handshake.name = "extsi28"} : <i2> to <i6>
    %85 = constant %72#0 {handshake.bb = 3 : ui32, handshake.name = "constant21", value = 3 : i3} : <>, <i3>
    %86 = extui %85 {handshake.bb = 3 : ui32, handshake.name = "extui3"} : <i3> to <i7>
    %addressResult_24, %dataResult_25 = load[%78] %2#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i4>, <f32>
    %87 = shli %70, %83 {handshake.bb = 3 : ui32, handshake.name = "shli7"} : <i6>
    %88 = extsi %87 {handshake.bb = 3 : ui32, handshake.name = "extsi29"} : <i6> to <i7>
    %89 = shli %69, %86 {handshake.bb = 3 : ui32, handshake.name = "shli4"} : <i7>
    %90 = addi %88, %89 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i7>
    %91 = addi %75, %90 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i7>
    %addressResult_26, %dataResult_27 = load[%91] %outputs_0#1 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i7>, <f32>
    %92 = mulf %dataResult_27, %65#0 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "mulf1"} : <f32>
    %93 = addf %dataResult_25, %92 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "addf1"} : <f32>
    %addressResult_28, %dataResult_29 = store[%77] %93 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load3" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i4>, <f32>
    %94 = addi %76, %84 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i6>
    %95:2 = fork [2] %94 {handshake.bb = 3 : ui32, handshake.name = "fork19"} : <i6>
    %96 = trunci %95#0 {handshake.bb = 3 : ui32, handshake.name = "trunci8"} : <i6> to <i5>
    %97 = cmpi ult, %95#1, %80 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i6>
    %98:6 = fork [6] %97 {handshake.bb = 3 : ui32, handshake.name = "fork20"} : <i1>
    %trueResult_30, %falseResult_31 = cond_br %108#3, %falseResult_15 {handshake.bb = 4 : ui32, handshake.name = "cond_br8"} : <i1>, <>
    sink %falseResult_31 {handshake.name = "sink8"} : <>
    %trueResult_32, %falseResult_33 = cond_br %108#2, %99#0 {handshake.bb = 4 : ui32, handshake.name = "cond_br9"} : <i1>, <>
    %99:2 = lazy_fork [2] %10#0 {handshake.bb = 4 : ui32, handshake.name = "lazy_fork2"} : <>
    %trueResult_34, %falseResult_35 = cond_br %108#0, %106 {handshake.bb = 4 : ui32, handshake.name = "cond_br44"} : <i1>, <i5>
    sink %falseResult_35 {handshake.name = "sink9"} : <i5>
    %trueResult_36, %falseResult_37 = cond_br %108#1, %12#3 {handshake.bb = 4 : ui32, handshake.name = "cond_br45"} : <i1>, <>
    sink %falseResult_37 {handshake.name = "sink10"} : <>
    %100 = constant %12#1 {handshake.bb = 4 : ui32, handshake.name = "constant22", value = 10 : i5} : <>, <i5>
    %101 = extsi %100 {handshake.bb = 4 : ui32, handshake.name = "extsi30"} : <i5> to <i6>
    %102 = constant %12#0 {handshake.bb = 4 : ui32, handshake.name = "constant24", value = 1 : i2} : <>, <i2>
    %103 = extsi %102 {handshake.bb = 4 : ui32, handshake.name = "extsi31"} : <i2> to <i6>
    %addressResult_38, %dataResult_39 = store[%16] %21#0 {handshake.bb = 4 : ui32, handshake.deps = #handshake<deps[<"load5" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i4>, <f32>
    %104 = addi %15, %103 {handshake.bb = 4 : ui32, handshake.name = "addi4"} : <i6>
    %105:2 = fork [2] %104 {handshake.bb = 4 : ui32, handshake.name = "fork21"} : <i6>
    %106 = trunci %105#0 {handshake.bb = 4 : ui32, handshake.name = "trunci9"} : <i6> to <i5>
    %107 = cmpi ult, %105#1, %101 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i6>
    %108:5 = fork [5] %107 {handshake.bb = 4 : ui32, handshake.name = "fork22"} : <i1>
    %109:2 = lazy_fork [2] %falseResult_33 {handshake.bb = 5 : ui32, handshake.name = "lazy_fork3"} : <>
    %110:2 = fork [2] %109#1 {handshake.bb = 5 : ui32, handshake.name = "fork23"} : <>
    sink %109#0 {handshake.name = "sink11"} : <>
    %111 = constant %0#3 {handshake.bb = 5 : ui32, handshake.name = "constant25", value = 9 : i5} : <>, <i5>
    %112 = trunci %111 {handshake.bb = 5 : ui32, handshake.name = "trunci10"} : <i5> to <i4>
    %addressResult_40, %dataResult_41 = load[%112] %1#1 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load5"} : <i4>, <f32>
    %113 = fptosi %dataResult_41 {handshake.bb = 5 : ui32, handshake.name = "fptosi0"} : <f32> to <i32>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %113, %memEnd_1, %memEnd, %2#1, %1#2, %0#4 : <i32>, <>, <>, <>, <>, <>
  }
}


module {
  handshake.func @atax(%arg0: memref<100xf32>, %arg1: memref<10xf32>, %arg2: memref<10xf32>, %arg3: memref<10xf32>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "x", "y", "tmp", "A_start", "x_start", "y_start", "tmp_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][4,1,5,cmpi2][1,2][3,3,4,cmpi1]", resNames = ["out0", "A_end", "x_end", "y_end", "tmp_end", "end"]} {
    %0:10 = fork [10] %arg8 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %1:3 = lsq[%arg3 : memref<10xf32>] (%arg7, %11#1, %addressResult, %102#1, %addressResult_32, %dataResult_33, %115#0, %addressResult_34, %115#1)  {groupSizes = [1 : i32, 1 : i32, 1 : i32], handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<f32>, !handshake.control<>, !handshake.channel<i4>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.channel<f32>, !handshake.control<>)
    %2:2 = lsq[%arg2 : memref<10xf32>] (%arg6, %65#1, %addressResult_20, %addressResult_24, %dataResult_25, %0#2)  {groupSizes = [2 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<i4>, !handshake.channel<f32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg1 : memref<10xf32>] %arg5 (%addressResult_10) %0#1 {connectedBlocks = [2 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i4>) -> !handshake.channel<f32>
    %outputs_0:2, %memEnd_1 = mem_controller[%arg0 : memref<100xf32>] %arg4 (%addressResult_8, %addressResult_22) %0#0 {connectedBlocks = [2 : i32, 3 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i7>, !handshake.channel<i7>) -> (!handshake.channel<f32>, !handshake.channel<f32>)
    %3 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %4 = constant %3 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %5 = extsi %4 {handshake.bb = 0 : ui32, handshake.name = "extsi13"} : <i1> to <i5>
    %6 = mux %10#1 [%0#9, %trueResult_28] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux9"} : <i1>, <>
    %7 = constant %0#8 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant18", value = false} : <>, <i1>
    %8 = mux %10#2 [%0#7, %trueResult_26] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux10"} : <i1>, <>
    %9 = merge %7, %113#3 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge2"} : <i1>
    %10:3 = fork [3] %9 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %11:2 = lazy_fork [2] %6 {handshake.bb = 1 : ui32, handshake.name = "lazy_fork0"} : <>
    %12 = mux %10#0 [%5, %trueResult_30] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i5>
    %13:5 = fork [5] %12 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i5>
    %14 = extsi %13#2 {handshake.bb = 1 : ui32, handshake.name = "extsi14"} : <i5> to <i6>
    %15 = trunci %13#0 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i5> to <i4>
    %16 = trunci %13#1 {handshake.bb = 1 : ui32, handshake.name = "trunci1"} : <i5> to <i4>
    %17 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %18 = constant %17 {handshake.bb = 1 : ui32, handshake.name = "constant2", value = false} : <>, <i1>
    %19 = extsi %18 {handshake.bb = 1 : ui32, handshake.name = "extsi15"} : <i1> to <i5>
    %addressResult, %dataResult = load[%16] %1#0 {handshake.bb = 1 : ui32, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i4>, <f32>
    %trueResult, %falseResult = cond_br %60#2, %37 {handshake.bb = 2 : ui32, handshake.name = "cond_br18"} : <i1>, <i1>
    sink %trueResult {handshake.name = "sink0"} : <i1>
    %20 = extsi %falseResult {handshake.bb = 2 : ui32, handshake.name = "extsi12"} : <i1> to <i5>
    %trueResult_2, %falseResult_3 = cond_br %60#4, %55 {handshake.bb = 2 : ui32, handshake.name = "cond_br19"} : <i1>, <f32>
    %21:2 = fork [2] %falseResult_3 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <f32>
    %trueResult_4, %falseResult_5 = cond_br %60#0, %58 {handshake.bb = 2 : ui32, handshake.name = "cond_br20"} : <i1>, <i5>
    sink %falseResult_5 {handshake.name = "sink1"} : <i5>
    %trueResult_6, %falseResult_7 = cond_br %60#1, %26#2 {handshake.bb = 2 : ui32, handshake.name = "cond_br21"} : <i1>, <i5>
    sink %falseResult_7 {handshake.name = "sink2"} : <i5>
    %22 = constant %0#6 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %23 = merge %22, %60#3 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i1>
    %24:3 = fork [3] %23 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i1>
    %25 = mux %24#0 [%13#4, %trueResult_6] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i5>
    %26:3 = fork [3] %25 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i5>
    %27 = trunci %26#0 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i5> to <i4>
    %28 = extsi %27 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i4> to <i7>
    %29 = extsi %26#1 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i5> to <i6>
    %30 = mux %24#2 [%dataResult, %trueResult_2] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <f32>
    %31 = mux %24#1 [%19, %trueResult_4] {handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <i5>
    %32:3 = fork [3] %31 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i5>
    %33 = extsi %32#0 {handshake.bb = 2 : ui32, handshake.name = "extsi18"} : <i5> to <i7>
    %34 = extsi %32#2 {handshake.bb = 2 : ui32, handshake.name = "extsi19"} : <i5> to <i6>
    %35 = trunci %32#1 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i5> to <i4>
    %36 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %37 = constant %36 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = false} : <>, <i1>
    %38 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %39 = constant %38 {handshake.bb = 2 : ui32, handshake.name = "constant16", value = 10 : i5} : <>, <i5>
    %40 = extsi %39 {handshake.bb = 2 : ui32, handshake.name = "extsi20"} : <i5> to <i6>
    %41 = source {handshake.bb = 2 : ui32, handshake.name = "source4"} : <>
    %42 = constant %41 {handshake.bb = 2 : ui32, handshake.name = "constant17", value = 1 : i2} : <>, <i2>
    %43:2 = fork [2] %42 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i2>
    %44 = extui %43#0 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i2> to <i6>
    %45 = extsi %43#1 {handshake.bb = 2 : ui32, handshake.name = "extsi21"} : <i2> to <i6>
    %46 = source {handshake.bb = 2 : ui32, handshake.name = "source5"} : <>
    %47 = constant %46 {handshake.bb = 2 : ui32, handshake.name = "constant20", value = 3 : i3} : <>, <i3>
    %48 = extui %47 {handshake.bb = 2 : ui32, handshake.name = "extui1"} : <i3> to <i7>
    %49 = shli %29, %44 {handshake.bb = 2 : ui32, handshake.name = "shli6"} : <i6>
    %50 = extsi %49 {handshake.bb = 2 : ui32, handshake.name = "extsi22"} : <i6> to <i7>
    %51 = shli %28, %48 {handshake.bb = 2 : ui32, handshake.name = "shli5"} : <i7>
    %52 = addi %50, %51 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i7>
    %53 = addi %33, %52 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i7>
    %addressResult_8, %dataResult_9 = load[%53] %outputs_0#0 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i7>, <f32>
    %addressResult_10, %dataResult_11 = load[%35] %outputs {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load2"} : <i4>, <f32>
    %54 = mulf %dataResult_9, %dataResult_11 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf0"} : <f32>
    %55 = addf %30, %54 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf0"} : <f32>
    %56 = addi %34, %45 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i6>
    %57:2 = fork [2] %56 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i6>
    %58 = trunci %57#0 {handshake.bb = 2 : ui32, handshake.name = "trunci4"} : <i6> to <i5>
    %59 = cmpi ult, %57#1, %40 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i6>
    %60:5 = fork [5] %59 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i1>
    %trueResult_12, %falseResult_13 = cond_br %101#4, %65#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %61 = constant %0#5 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant19", value = false} : <>, <i1>
    %62 = mux %64#3 [%8, %trueResult_12] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux11"} : <i1>, <>
    %63 = merge %61, %101#3 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge7"} : <i1>
    %64:4 = fork [4] %63 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i1>
    %65:2 = lazy_fork [2] %62 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_14, %falseResult_15 = cond_br %101#0, %99 {handshake.bb = 3 : ui32, handshake.name = "cond_br22"} : <i1>, <i5>
    sink %falseResult_15 {handshake.name = "sink3"} : <i5>
    %trueResult_16, %falseResult_17 = cond_br %101#1, %69#2 {handshake.bb = 3 : ui32, handshake.name = "cond_br23"} : <i1>, <i5>
    sink %falseResult_17 {handshake.name = "sink4"} : <i5>
    %trueResult_18, %falseResult_19 = cond_br %101#2, %67#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br24"} : <i1>, <f32>
    sink %falseResult_19 {handshake.name = "sink5"} : <f32>
    %66 = mux %64#2 [%21#1, %trueResult_18] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <f32>
    %67:2 = fork [2] %66 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <f32>
    %68 = mux %64#0 [%13#3, %trueResult_16] {handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <i5>
    %69:3 = fork [3] %68 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i5>
    %70 = trunci %69#0 {handshake.bb = 3 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %71 = extsi %70 {handshake.bb = 3 : ui32, handshake.name = "extsi23"} : <i4> to <i7>
    %72 = extsi %69#1 {handshake.bb = 3 : ui32, handshake.name = "extsi24"} : <i5> to <i6>
    %73 = mux %64#1 [%20, %trueResult_14] {handshake.bb = 3 : ui32, handshake.name = "mux8"} : <i1>, <i5>
    %74:4 = fork [4] %73 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i5>
    %75 = extsi %74#0 {handshake.bb = 3 : ui32, handshake.name = "extsi25"} : <i5> to <i7>
    %76 = extsi %74#3 {handshake.bb = 3 : ui32, handshake.name = "extsi26"} : <i5> to <i6>
    %77 = trunci %74#1 {handshake.bb = 3 : ui32, handshake.name = "trunci6"} : <i5> to <i4>
    %78 = trunci %74#2 {handshake.bb = 3 : ui32, handshake.name = "trunci7"} : <i5> to <i4>
    %79 = source {handshake.bb = 3 : ui32, handshake.name = "source6"} : <>
    %80 = constant %79 {handshake.bb = 3 : ui32, handshake.name = "constant21", value = 10 : i5} : <>, <i5>
    %81 = extsi %80 {handshake.bb = 3 : ui32, handshake.name = "extsi27"} : <i5> to <i6>
    %82 = source {handshake.bb = 3 : ui32, handshake.name = "source7"} : <>
    %83 = constant %82 {handshake.bb = 3 : ui32, handshake.name = "constant22", value = 1 : i2} : <>, <i2>
    %84:2 = fork [2] %83 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i2>
    %85 = extui %84#0 {handshake.bb = 3 : ui32, handshake.name = "extui2"} : <i2> to <i6>
    %86 = extsi %84#1 {handshake.bb = 3 : ui32, handshake.name = "extsi28"} : <i2> to <i6>
    %87 = source {handshake.bb = 3 : ui32, handshake.name = "source8"} : <>
    %88 = constant %87 {handshake.bb = 3 : ui32, handshake.name = "constant23", value = 3 : i3} : <>, <i3>
    %89 = extui %88 {handshake.bb = 3 : ui32, handshake.name = "extui3"} : <i3> to <i7>
    %addressResult_20, %dataResult_21 = load[%78] %2#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i4>, <f32>
    %90 = shli %72, %85 {handshake.bb = 3 : ui32, handshake.name = "shli7"} : <i6>
    %91 = extsi %90 {handshake.bb = 3 : ui32, handshake.name = "extsi29"} : <i6> to <i7>
    %92 = shli %71, %89 {handshake.bb = 3 : ui32, handshake.name = "shli4"} : <i7>
    %93 = addi %91, %92 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i7>
    %94 = addi %75, %93 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i7>
    %addressResult_22, %dataResult_23 = load[%94] %outputs_0#1 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i7>, <f32>
    %95 = mulf %dataResult_23, %67#0 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "mulf1"} : <f32>
    %96 = addf %dataResult_21, %95 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "addf1"} : <f32>
    %addressResult_24, %dataResult_25 = store[%77] %96 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load3" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i4>, <f32>
    %97 = addi %76, %86 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i6>
    %98:2 = fork [2] %97 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <i6>
    %99 = trunci %98#0 {handshake.bb = 3 : ui32, handshake.name = "trunci8"} : <i6> to <i5>
    %100 = cmpi ult, %98#1, %81 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i6>
    %101:5 = fork [5] %100 {handshake.bb = 3 : ui32, handshake.name = "fork16"} : <i1>
    %trueResult_26, %falseResult_27 = cond_br %113#2, %falseResult_13 {handshake.bb = 4 : ui32, handshake.name = "cond_br8"} : <i1>, <>
    sink %falseResult_27 {handshake.name = "sink6"} : <>
    %trueResult_28, %falseResult_29 = cond_br %113#1, %102#0 {handshake.bb = 4 : ui32, handshake.name = "cond_br9"} : <i1>, <>
    %102:2 = lazy_fork [2] %11#0 {handshake.bb = 4 : ui32, handshake.name = "lazy_fork2"} : <>
    %trueResult_30, %falseResult_31 = cond_br %113#0, %111 {handshake.bb = 4 : ui32, handshake.name = "cond_br25"} : <i1>, <i5>
    sink %falseResult_31 {handshake.name = "sink7"} : <i5>
    %103 = source {handshake.bb = 4 : ui32, handshake.name = "source9"} : <>
    %104 = constant %103 {handshake.bb = 4 : ui32, handshake.name = "constant24", value = 10 : i5} : <>, <i5>
    %105 = extsi %104 {handshake.bb = 4 : ui32, handshake.name = "extsi30"} : <i5> to <i6>
    %106 = source {handshake.bb = 4 : ui32, handshake.name = "source10"} : <>
    %107 = constant %106 {handshake.bb = 4 : ui32, handshake.name = "constant25", value = 1 : i2} : <>, <i2>
    %108 = extsi %107 {handshake.bb = 4 : ui32, handshake.name = "extsi31"} : <i2> to <i6>
    %addressResult_32, %dataResult_33 = store[%15] %21#0 {handshake.bb = 4 : ui32, handshake.deps = #handshake<deps[<"load5" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i4>, <f32>
    %109 = addi %14, %108 {handshake.bb = 4 : ui32, handshake.name = "addi4"} : <i6>
    %110:2 = fork [2] %109 {handshake.bb = 4 : ui32, handshake.name = "fork17"} : <i6>
    %111 = trunci %110#0 {handshake.bb = 4 : ui32, handshake.name = "trunci9"} : <i6> to <i5>
    %112 = cmpi ult, %110#1, %105 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i6>
    %113:4 = fork [4] %112 {handshake.bb = 4 : ui32, handshake.name = "fork18"} : <i1>
    %114:2 = lazy_fork [2] %falseResult_29 {handshake.bb = 5 : ui32, handshake.name = "lazy_fork3"} : <>
    %115:2 = fork [2] %114#1 {handshake.bb = 5 : ui32, handshake.name = "fork19"} : <>
    sink %114#0 {handshake.name = "sink8"} : <>
    %116 = constant %0#3 {handshake.bb = 5 : ui32, handshake.name = "constant26", value = 9 : i5} : <>, <i5>
    %117 = trunci %116 {handshake.bb = 5 : ui32, handshake.name = "trunci10"} : <i5> to <i4>
    %addressResult_34, %dataResult_35 = load[%117] %1#1 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load5"} : <i4>, <f32>
    %118 = fptosi %dataResult_35 {handshake.bb = 5 : ui32, handshake.name = "fptosi0"} : <f32> to <i32>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %118, %memEnd_1, %memEnd, %2#1, %1#2, %0#4 : <i32>, <>, <>, <>, <>, <>
  }
}


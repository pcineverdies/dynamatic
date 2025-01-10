module {
  handshake.func @atax(%arg0: memref<100xf32>, %arg1: memref<10xf32>, %arg2: memref<10xf32>, %arg3: memref<10xf32>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "x", "y", "tmp", "A_start", "x_start", "y_start", "tmp_start", "start"], resNames = ["out0", "A_end", "x_end", "y_end", "tmp_end", "end"]} {
    %0:3 = fork [3] %arg8 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %1:3 = lsq[%arg3 : memref<10xf32>] (%arg7, %10#0, %addressResult, %99#0, %addressResult_34, %dataResult_35, %111#3, %addressResult_42, %111#4)  {groupSizes = [1 : i32, 1 : i32, 1 : i32], handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<f32>, !handshake.control<>, !handshake.channel<i4>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.channel<f32>, !handshake.control<>)
    %2:2 = lsq[%arg2 : memref<10xf32>] (%arg6, %70#0, %addressResult_18, %addressResult_22, %dataResult_23, %111#2)  {groupSizes = [2 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<i4>, !handshake.channel<f32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg1 : memref<10xf32>] %arg5 (%addressResult_6) %111#1 {connectedBlocks = [2 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i4>) -> !handshake.channel<f32>
    %outputs_0:2, %memEnd_1 = mem_controller[%arg0 : memref<100xf32>] %arg4 (%addressResult_4, %addressResult_20) %111#0 {connectedBlocks = [2 : i32, 3 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i7>, !handshake.channel<i7>) -> (!handshake.channel<f32>, !handshake.channel<f32>)
    %3 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %4 = br %3 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <i1>
    %5 = extsi %4 {handshake.bb = 0 : ui32, handshake.name = "extsi14"} : <i1> to <i5>
    %6 = br %0#2 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %7 = mux %index [%5, %trueResult_36] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i5>
    %8:2 = fork [2] %7 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i5>
    %9 = trunci %8#0 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i5> to <i4>
    %result, %index = control_merge %6, %trueResult_38  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %10:3 = lazy_fork [3] %result {handshake.bb = 1 : ui32, handshake.name = "lazy_fork0"} : <>
    %11 = fork [1] %10#2 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <>
    %12 = constant %11 {handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %addressResult, %dataResult = load[%9] %1#0 {handshake.bb = 1 : ui32, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i4>, <f32>
    %13 = br %12 {handshake.bb = 1 : ui32, handshake.name = "br4"} : <i1>
    %14 = extsi %13 {handshake.bb = 1 : ui32, handshake.name = "extsi13"} : <i1> to <i5>
    %15 = br %dataResult {handshake.bb = 1 : ui32, handshake.name = "br5"} : <f32>
    %16 = br %8#1 {handshake.bb = 1 : ui32, handshake.name = "br6"} : <i5>
    %17 = br %10#1 {handshake.bb = 1 : ui32, handshake.name = "br7"} : <>
    %18 = mux %29#1 [%14, %trueResult] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i5>
    %19:3 = fork [3] %18 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i5>
    %20 = extsi %19#0 {handshake.bb = 2 : ui32, handshake.name = "extsi15"} : <i5> to <i7>
    %21 = extsi %19#2 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i5> to <i6>
    %22 = trunci %19#1 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i5> to <i4>
    %23 = mux %29#2 [%15, %trueResult_8] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <f32>
    %24 = mux %29#0 [%16, %trueResult_10] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i5>
    %25:3 = fork [3] %24 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i5>
    %26 = trunci %25#0 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i5> to <i4>
    %27 = extsi %26 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i4> to <i7>
    %28 = extsi %25#2 {handshake.bb = 2 : ui32, handshake.name = "extsi18"} : <i5> to <i6>
    %result_2, %index_3 = control_merge %17, %trueResult_12  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %29:3 = fork [3] %index_3 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i1>
    %30:2 = fork [2] %result_2 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <>
    %31 = constant %30#0 {handshake.bb = 2 : ui32, handshake.name = "constant2", value = false} : <>, <i1>
    %32 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %33 = constant %32 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = 10 : i5} : <>, <i5>
    %34 = extsi %33 {handshake.bb = 2 : ui32, handshake.name = "extsi19"} : <i5> to <i6>
    %35 = source {handshake.bb = 2 : ui32, handshake.name = "source1"} : <>
    %36 = constant %35 {handshake.bb = 2 : ui32, handshake.name = "constant16", value = 1 : i2} : <>, <i2>
    %37:2 = fork [2] %36 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i2>
    %38 = extui %37#0 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i2> to <i6>
    %39 = extsi %37#1 {handshake.bb = 2 : ui32, handshake.name = "extsi20"} : <i2> to <i6>
    %40 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %41 = constant %40 {handshake.bb = 2 : ui32, handshake.name = "constant17", value = 3 : i3} : <>, <i3>
    %42 = extui %41 {handshake.bb = 2 : ui32, handshake.name = "extui1"} : <i3> to <i7>
    %43 = shli %28, %38 {handshake.bb = 2 : ui32, handshake.name = "shli6"} : <i6>
    %44 = extsi %43 {handshake.bb = 2 : ui32, handshake.name = "extsi21"} : <i6> to <i7>
    %45 = shli %27, %42 {handshake.bb = 2 : ui32, handshake.name = "shli5"} : <i7>
    %46 = addi %44, %45 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i7>
    %47 = addi %20, %46 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i7>
    %addressResult_4, %dataResult_5 = load[%47] %outputs_0#0 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i7>, <f32>
    %addressResult_6, %dataResult_7 = load[%22] %outputs {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load2"} : <i4>, <f32>
    %48 = mulf %dataResult_5, %dataResult_7 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf0"} : <f32>
    %49 = addf %23, %48 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf0"} : <f32>
    %50 = addi %21, %39 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i6>
    %51:2 = fork [2] %50 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i6>
    %52 = trunci %51#0 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i6> to <i5>
    %53 = cmpi ult, %51#1, %34 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i6>
    %54:5 = fork [5] %53 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i1>
    %trueResult, %falseResult = cond_br %54#0, %52 {handshake.bb = 2 : ui32, handshake.name = "cond_br3"} : <i1>, <i5>
    sink %falseResult {handshake.name = "sink0"} : <i5>
    %trueResult_8, %falseResult_9 = cond_br %54#2, %49 {handshake.bb = 2 : ui32, handshake.name = "cond_br4"} : <i1>, <f32>
    %trueResult_10, %falseResult_11 = cond_br %54#1, %25#1 {handshake.bb = 2 : ui32, handshake.name = "cond_br5"} : <i1>, <i5>
    %trueResult_12, %falseResult_13 = cond_br %54#3, %30#1 {handshake.bb = 2 : ui32, handshake.name = "cond_br6"} : <i1>, <>
    %trueResult_14, %falseResult_15 = cond_br %54#4, %31 {handshake.bb = 2 : ui32, handshake.name = "cond_br7"} : <i1>, <i1>
    sink %trueResult_14 {handshake.name = "sink1"} : <i1>
    %55 = extsi %falseResult_15 {handshake.bb = 2 : ui32, handshake.name = "extsi12"} : <i1> to <i5>
    %56 = mux %69#1 [%55, %trueResult_24] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i5>
    %57:4 = fork [4] %56 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i5>
    %58 = extsi %57#0 {handshake.bb = 3 : ui32, handshake.name = "extsi22"} : <i5> to <i7>
    %59 = extsi %57#3 {handshake.bb = 3 : ui32, handshake.name = "extsi23"} : <i5> to <i6>
    %60 = trunci %57#1 {handshake.bb = 3 : ui32, handshake.name = "trunci4"} : <i5> to <i4>
    %61 = trunci %57#2 {handshake.bb = 3 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %62 = mux %69#0 [%falseResult_11, %trueResult_26] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i5>
    %63:3 = fork [3] %62 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i5>
    %64 = trunci %63#0 {handshake.bb = 3 : ui32, handshake.name = "trunci6"} : <i5> to <i4>
    %65 = extsi %64 {handshake.bb = 3 : ui32, handshake.name = "extsi24"} : <i4> to <i7>
    %66 = extsi %63#2 {handshake.bb = 3 : ui32, handshake.name = "extsi25"} : <i5> to <i6>
    %67 = mux %69#2 [%falseResult_9, %trueResult_28] {handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <f32>
    %68:2 = fork [2] %67 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <f32>
    %result_16, %index_17 = control_merge %falseResult_13, %trueResult_30  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %69:3 = fork [3] %index_17 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i1>
    %70:2 = fork [2] %result_16 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <>
    %71 = source {handshake.bb = 3 : ui32, handshake.name = "source3"} : <>
    %72 = constant %71 {handshake.bb = 3 : ui32, handshake.name = "constant18", value = 10 : i5} : <>, <i5>
    %73 = extsi %72 {handshake.bb = 3 : ui32, handshake.name = "extsi26"} : <i5> to <i6>
    %74 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %75 = constant %74 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 1 : i2} : <>, <i2>
    %76:2 = fork [2] %75 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <i2>
    %77 = extui %76#0 {handshake.bb = 3 : ui32, handshake.name = "extui2"} : <i2> to <i6>
    %78 = extsi %76#1 {handshake.bb = 3 : ui32, handshake.name = "extsi27"} : <i2> to <i6>
    %79 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %80 = constant %79 {handshake.bb = 3 : ui32, handshake.name = "constant20", value = 3 : i3} : <>, <i3>
    %81 = extui %80 {handshake.bb = 3 : ui32, handshake.name = "extui3"} : <i3> to <i7>
    %addressResult_18, %dataResult_19 = load[%61] %2#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i4>, <f32>
    %82 = shli %66, %77 {handshake.bb = 3 : ui32, handshake.name = "shli7"} : <i6>
    %83 = extsi %82 {handshake.bb = 3 : ui32, handshake.name = "extsi28"} : <i6> to <i7>
    %84 = shli %65, %81 {handshake.bb = 3 : ui32, handshake.name = "shli4"} : <i7>
    %85 = addi %83, %84 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i7>
    %86 = addi %58, %85 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i7>
    %addressResult_20, %dataResult_21 = load[%86] %outputs_0#1 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i7>, <f32>
    %87 = mulf %dataResult_21, %68#1 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "mulf1"} : <f32>
    %88 = addf %dataResult_19, %87 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "addf1"} : <f32>
    %addressResult_22, %dataResult_23 = store[%60] %88 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load3" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i4>, <f32>
    %89 = addi %59, %78 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i6>
    %90:2 = fork [2] %89 {handshake.bb = 3 : ui32, handshake.name = "fork16"} : <i6>
    %91 = trunci %90#0 {handshake.bb = 3 : ui32, handshake.name = "trunci7"} : <i6> to <i5>
    %92 = cmpi ult, %90#1, %73 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i6>
    %93:4 = fork [4] %92 {handshake.bb = 3 : ui32, handshake.name = "fork17"} : <i1>
    %trueResult_24, %falseResult_25 = cond_br %93#0, %91 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <i5>
    sink %falseResult_25 {handshake.name = "sink2"} : <i5>
    %trueResult_26, %falseResult_27 = cond_br %93#1, %63#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br9"} : <i1>, <i5>
    %trueResult_28, %falseResult_29 = cond_br %93#2, %68#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br10"} : <i1>, <f32>
    %trueResult_30, %falseResult_31 = cond_br %93#3, %70#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br11"} : <i1>, <>
    %94 = merge %falseResult_27 {handshake.bb = 4 : ui32, handshake.name = "merge0"} : <i5>
    %95:2 = fork [2] %94 {handshake.bb = 4 : ui32, handshake.name = "fork18"} : <i5>
    %96 = extsi %95#1 {handshake.bb = 4 : ui32, handshake.name = "extsi29"} : <i5> to <i6>
    %97 = trunci %95#0 {handshake.bb = 4 : ui32, handshake.name = "trunci8"} : <i5> to <i4>
    %98 = merge %falseResult_29 {handshake.bb = 4 : ui32, handshake.name = "merge1"} : <f32>
    %result_32, %index_33 = control_merge %falseResult_31  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_33 {handshake.name = "sink3"} : <i1>
    %99:2 = lazy_fork [2] %result_32 {handshake.bb = 4 : ui32, handshake.name = "lazy_fork1"} : <>
    %100 = source {handshake.bb = 4 : ui32, handshake.name = "source6"} : <>
    %101 = constant %100 {handshake.bb = 4 : ui32, handshake.name = "constant21", value = 10 : i5} : <>, <i5>
    %102 = extsi %101 {handshake.bb = 4 : ui32, handshake.name = "extsi30"} : <i5> to <i6>
    %103 = source {handshake.bb = 4 : ui32, handshake.name = "source7"} : <>
    %104 = constant %103 {handshake.bb = 4 : ui32, handshake.name = "constant22", value = 1 : i2} : <>, <i2>
    %105 = extsi %104 {handshake.bb = 4 : ui32, handshake.name = "extsi31"} : <i2> to <i6>
    %addressResult_34, %dataResult_35 = store[%97] %98 {handshake.bb = 4 : ui32, handshake.deps = #handshake<deps[<"load5" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i4>, <f32>
    %106 = addi %96, %105 {handshake.bb = 4 : ui32, handshake.name = "addi4"} : <i6>
    %107:2 = fork [2] %106 {handshake.bb = 4 : ui32, handshake.name = "fork19"} : <i6>
    %108 = trunci %107#0 {handshake.bb = 4 : ui32, handshake.name = "trunci9"} : <i6> to <i5>
    %109 = cmpi ult, %107#1, %102 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i6>
    %110:2 = fork [2] %109 {handshake.bb = 4 : ui32, handshake.name = "fork20"} : <i1>
    %trueResult_36, %falseResult_37 = cond_br %110#0, %108 {handshake.bb = 4 : ui32, handshake.name = "cond_br12"} : <i1>, <i5>
    sink %falseResult_37 {handshake.name = "sink4"} : <i5>
    %trueResult_38, %falseResult_39 = cond_br %110#1, %99#1 {handshake.bb = 4 : ui32, handshake.name = "cond_br13"} : <i1>, <>
    %result_40, %index_41 = control_merge %falseResult_39  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    sink %index_41 {handshake.name = "sink5"} : <i1>
    %111:6 = fork [6] %result_40 {handshake.bb = 5 : ui32, handshake.name = "fork21"} : <>
    %112 = constant %111#5 {handshake.bb = 5 : ui32, handshake.name = "constant23", value = 9 : i5} : <>, <i5>
    %113 = trunci %112 {handshake.bb = 5 : ui32, handshake.name = "trunci10"} : <i5> to <i4>
    %addressResult_42, %dataResult_43 = load[%113] %1#1 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load5"} : <i4>, <f32>
    %114 = fptosi %dataResult_43 {handshake.bb = 5 : ui32, handshake.name = "fptosi0"} : <f32> to <i32>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %114, %memEnd_1, %memEnd, %2#1, %1#2, %0#1 : <i32>, <>, <>, <>, <>, <>
  }
}


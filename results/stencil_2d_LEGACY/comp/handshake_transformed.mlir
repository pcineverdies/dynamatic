module {
  handshake.func @stencil_2d(%arg0: memref<900xi32>, %arg1: memref<10xi32>, %arg2: memref<900xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["orig", "filter", "sol", "orig_start", "filter_start", "sol_start", "start"], resNames = ["out0", "orig_end", "filter_end", "sol_end", "end"]} {
    %0:3 = fork [3] %arg6 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %memEnd = mem_controller[%arg2 : memref<900xi32>] %arg5 (%91, %addressResult_29, %dataResult_30) %104#2 {connectedBlocks = [5 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>, !handshake.channel<i10>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<10xi32>] %arg4 (%addressResult) %104#1 {connectedBlocks = [3 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<900xi32>] %arg3 (%addressResult_7) %104#0 {connectedBlocks = [3 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %1 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %2 = br %1 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <i1>
    %3 = extsi %2 {handshake.bb = 0 : ui32, handshake.name = "extsi15"} : <i1> to <i6>
    %4 = br %0#2 {handshake.bb = 0 : ui32, handshake.name = "br4"} : <>
    %5 = mux %index [%3, %trueResult_31] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i6>
    %result, %index = control_merge %4, %trueResult_33  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %6:2 = fork [2] %result {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <>
    %7 = constant %6#0 {handshake.bb = 1 : ui32, handshake.name = "constant4", value = false} : <>, <i1>
    %8:2 = fork [2] %7 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %9 = br %8#0 {handshake.bb = 1 : ui32, handshake.name = "br5"} : <i1>
    %10 = extsi %9 {handshake.bb = 1 : ui32, handshake.name = "extsi13"} : <i1> to <i3>
    %11 = br %8#1 {handshake.bb = 1 : ui32, handshake.name = "br6"} : <i1>
    %12 = extsi %11 {handshake.bb = 1 : ui32, handshake.name = "extsi16"} : <i1> to <i32>
    %13 = br %5 {handshake.bb = 1 : ui32, handshake.name = "br7"} : <i6>
    %14 = br %6#1 {handshake.bb = 1 : ui32, handshake.name = "br8"} : <>
    %15 = mux %18#1 [%10, %trueResult_19] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i3>
    %16 = mux %18#2 [%12, %trueResult_21] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %17 = mux %18#0 [%13, %trueResult_23] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i6>
    %result_3, %index_4 = control_merge %14, %trueResult_25  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %18:3 = fork [3] %index_4 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i1>
    %19:2 = fork [2] %result_3 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <>
    %20 = constant %19#0 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = false} : <>, <i1>
    %21 = br %20 {handshake.bb = 2 : ui32, handshake.name = "br9"} : <i1>
    %22 = extsi %21 {handshake.bb = 2 : ui32, handshake.name = "extsi12"} : <i1> to <i3>
    %23 = br %16 {handshake.bb = 2 : ui32, handshake.name = "br10"} : <i32>
    %24 = br %17 {handshake.bb = 2 : ui32, handshake.name = "br11"} : <i6>
    %25 = br %15 {handshake.bb = 2 : ui32, handshake.name = "br12"} : <i3>
    %26 = br %19#1 {handshake.bb = 2 : ui32, handshake.name = "br13"} : <>
    %27 = mux %41#2 [%22, %trueResult] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i3>
    %28:3 = fork [3] %27 {handshake.bb = 3 : ui32, handshake.name = "fork5"} : <i3>
    %29 = extsi %28#0 {handshake.bb = 3 : ui32, handshake.name = "extsi17"} : <i3> to <i4>
    %30 = extsi %28#1 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i3> to <i7>
    %31 = extsi %28#2 {handshake.bb = 3 : ui32, handshake.name = "extsi19"} : <i3> to <i4>
    %32 = mux %41#3 [%23, %trueResult_9] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %33 = mux %41#0 [%24, %trueResult_11] {handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <i6>
    %34:2 = fork [2] %33 {handshake.bb = 3 : ui32, handshake.name = "fork6"} : <i6>
    %35 = extsi %34#1 {handshake.bb = 3 : ui32, handshake.name = "extsi20"} : <i6> to <i7>
    %36 = mux %41#1 [%25, %trueResult_13] {handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <i3>
    %37:4 = fork [4] %36 {handshake.bb = 3 : ui32, handshake.name = "fork7"} : <i3>
    %38 = extsi %37#0 {handshake.bb = 3 : ui32, handshake.name = "extsi21"} : <i3> to <i4>
    %39 = extsi %37#2 {handshake.bb = 3 : ui32, handshake.name = "extsi22"} : <i3> to <i9>
    %40 = extsi %37#3 {handshake.bb = 3 : ui32, handshake.name = "extsi23"} : <i3> to <i4>
    %result_5, %index_6 = control_merge %26, %trueResult_15  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %41:4 = fork [4] %index_6 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i1>
    %42 = source {handshake.bb = 3 : ui32, handshake.name = "source0"} : <>
    %43 = constant %42 {handshake.bb = 3 : ui32, handshake.name = "constant16", value = 30 : i6} : <>, <i6>
    %44 = extsi %43 {handshake.bb = 3 : ui32, handshake.name = "extsi24"} : <i6> to <i9>
    %45 = source {handshake.bb = 3 : ui32, handshake.name = "source1"} : <>
    %46 = constant %45 {handshake.bb = 3 : ui32, handshake.name = "constant17", value = 3 : i3} : <>, <i3>
    %47 = extsi %46 {handshake.bb = 3 : ui32, handshake.name = "extsi25"} : <i3> to <i4>
    %48 = source {handshake.bb = 3 : ui32, handshake.name = "source2"} : <>
    %49 = constant %48 {handshake.bb = 3 : ui32, handshake.name = "constant18", value = 1 : i2} : <>, <i2>
    %50:2 = fork [2] %49 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i2>
    %51 = extui %50#0 {handshake.bb = 3 : ui32, handshake.name = "extui0"} : <i2> to <i4>
    %52 = extsi %50#1 {handshake.bb = 3 : ui32, handshake.name = "extsi26"} : <i2> to <i4>
    %53 = shli %40, %51 {handshake.bb = 3 : ui32, handshake.name = "shli1"} : <i4>
    %54 = addi %38, %53 {handshake.bb = 3 : ui32, handshake.name = "addi7"} : <i4>
    %55 = addi %29, %54 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i4>
    %addressResult, %dataResult = load[%55] %outputs {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i4>, <i32>
    %56 = addi %30, %35 {handshake.bb = 3 : ui32, handshake.name = "addi2"} : <i7>
    %57 = extsi %56 {handshake.bb = 3 : ui32, handshake.name = "extsi27"} : <i7> to <i10>
    %58 = muli %39, %44 {handshake.bb = 3 : ui32, handshake.name = "muli2"} : <i9>
    %59 = extsi %58 {handshake.bb = 3 : ui32, handshake.name = "extsi28"} : <i9> to <i10>
    %60 = addi %57, %59 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i10>
    %addressResult_7, %dataResult_8 = load[%60] %outputs_1 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i10>, <i32>
    %61 = muli %dataResult, %dataResult_8 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %62 = addi %32, %61 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %63 = addi %31, %52 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i4>
    %64:2 = fork [2] %63 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i4>
    %65 = trunci %64#0 {handshake.bb = 3 : ui32, handshake.name = "trunci0"} : <i4> to <i3>
    %66 = cmpi ult, %64#1, %47 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i4>
    %67:5 = fork [5] %66 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i1>
    %trueResult, %falseResult = cond_br %67#0, %65 {handshake.bb = 3 : ui32, handshake.name = "cond_br3"} : <i1>, <i3>
    sink %falseResult {handshake.name = "sink0"} : <i3>
    %trueResult_9, %falseResult_10 = cond_br %67#3, %62 {handshake.bb = 3 : ui32, handshake.name = "cond_br4"} : <i1>, <i32>
    %trueResult_11, %falseResult_12 = cond_br %67#1, %34#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br5"} : <i1>, <i6>
    %trueResult_13, %falseResult_14 = cond_br %67#2, %37#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <i3>
    %trueResult_15, %falseResult_16 = cond_br %67#4, %result_5 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %68 = merge %falseResult_12 {handshake.bb = 4 : ui32, handshake.name = "merge0"} : <i6>
    %69 = merge %falseResult_14 {handshake.bb = 4 : ui32, handshake.name = "merge1"} : <i3>
    %70 = extsi %69 {handshake.bb = 4 : ui32, handshake.name = "extsi29"} : <i3> to <i4>
    %71 = merge %falseResult_10 {handshake.bb = 4 : ui32, handshake.name = "merge2"} : <i32>
    %result_17, %index_18 = control_merge %falseResult_16  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_18 {handshake.name = "sink1"} : <i1>
    %72 = source {handshake.bb = 4 : ui32, handshake.name = "source3"} : <>
    %73 = constant %72 {handshake.bb = 4 : ui32, handshake.name = "constant19", value = 3 : i3} : <>, <i3>
    %74 = extsi %73 {handshake.bb = 4 : ui32, handshake.name = "extsi30"} : <i3> to <i4>
    %75 = source {handshake.bb = 4 : ui32, handshake.name = "source4"} : <>
    %76 = constant %75 {handshake.bb = 4 : ui32, handshake.name = "constant20", value = 1 : i2} : <>, <i2>
    %77 = extsi %76 {handshake.bb = 4 : ui32, handshake.name = "extsi31"} : <i2> to <i4>
    %78 = addi %70, %77 {handshake.bb = 4 : ui32, handshake.name = "addi5"} : <i4>
    %79:2 = fork [2] %78 {handshake.bb = 4 : ui32, handshake.name = "fork12"} : <i4>
    %80 = trunci %79#0 {handshake.bb = 4 : ui32, handshake.name = "trunci1"} : <i4> to <i3>
    %81 = cmpi ult, %79#1, %74 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i4>
    %82:4 = fork [4] %81 {handshake.bb = 4 : ui32, handshake.name = "fork13"} : <i1>
    %trueResult_19, %falseResult_20 = cond_br %82#0, %80 {handshake.bb = 4 : ui32, handshake.name = "cond_br8"} : <i1>, <i3>
    sink %falseResult_20 {handshake.name = "sink2"} : <i3>
    %trueResult_21, %falseResult_22 = cond_br %82#2, %71 {handshake.bb = 4 : ui32, handshake.name = "cond_br9"} : <i1>, <i32>
    %trueResult_23, %falseResult_24 = cond_br %82#1, %68 {handshake.bb = 4 : ui32, handshake.name = "cond_br10"} : <i1>, <i6>
    %trueResult_25, %falseResult_26 = cond_br %82#3, %result_17 {handshake.bb = 4 : ui32, handshake.name = "cond_br11"} : <i1>, <>
    %83 = merge %falseResult_24 {handshake.bb = 5 : ui32, handshake.name = "merge3"} : <i6>
    %84:2 = fork [2] %83 {handshake.bb = 5 : ui32, handshake.name = "fork14"} : <i6>
    %85 = extsi %84#0 {handshake.bb = 5 : ui32, handshake.name = "extsi14"} : <i6> to <i10>
    %86 = extsi %84#1 {handshake.bb = 5 : ui32, handshake.name = "extsi32"} : <i6> to <i7>
    %87 = merge %falseResult_22 {handshake.bb = 5 : ui32, handshake.name = "merge4"} : <i32>
    %88:2 = fork [2] %87 {handshake.bb = 5 : ui32, handshake.name = "fork15"} : <i32>
    %result_27, %index_28 = control_merge %falseResult_26  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    sink %index_28 {handshake.name = "sink3"} : <i1>
    %89:2 = fork [2] %result_27 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <>
    %90 = constant %89#0 {handshake.bb = 5 : ui32, handshake.name = "constant21", value = 1 : i2} : <>, <i2>
    %91 = extsi %90 {handshake.bb = 5 : ui32, handshake.name = "extsi9"} : <i2> to <i32>
    %92 = source {handshake.bb = 5 : ui32, handshake.name = "source5"} : <>
    %93 = constant %92 {handshake.bb = 5 : ui32, handshake.name = "constant22", value = 28 : i6} : <>, <i6>
    %94 = extsi %93 {handshake.bb = 5 : ui32, handshake.name = "extsi33"} : <i6> to <i7>
    %95 = source {handshake.bb = 5 : ui32, handshake.name = "source6"} : <>
    %96 = constant %95 {handshake.bb = 5 : ui32, handshake.name = "constant23", value = 1 : i2} : <>, <i2>
    %97 = extsi %96 {handshake.bb = 5 : ui32, handshake.name = "extsi34"} : <i2> to <i7>
    %addressResult_29, %dataResult_30 = store[%85] %88#0 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i10>, <i32>
    %98 = addi %86, %97 {handshake.bb = 5 : ui32, handshake.name = "addi6"} : <i7>
    %99:2 = fork [2] %98 {handshake.bb = 5 : ui32, handshake.name = "fork17"} : <i7>
    %100 = trunci %99#0 {handshake.bb = 5 : ui32, handshake.name = "trunci2"} : <i7> to <i6>
    %101 = cmpi ult, %99#1, %94 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i7>
    %102:3 = fork [3] %101 {handshake.bb = 5 : ui32, handshake.name = "fork18"} : <i1>
    %trueResult_31, %falseResult_32 = cond_br %102#0, %100 {handshake.bb = 5 : ui32, handshake.name = "cond_br12"} : <i1>, <i6>
    sink %falseResult_32 {handshake.name = "sink4"} : <i6>
    %trueResult_33, %falseResult_34 = cond_br %102#1, %89#1 {handshake.bb = 5 : ui32, handshake.name = "cond_br13"} : <i1>, <>
    %trueResult_35, %falseResult_36 = cond_br %102#2, %88#1 {handshake.bb = 5 : ui32, handshake.name = "cond_br14"} : <i1>, <i32>
    sink %trueResult_35 {handshake.name = "sink5"} : <i32>
    %103 = merge %falseResult_36 {handshake.bb = 6 : ui32, handshake.name = "merge5"} : <i32>
    %result_37, %index_38 = control_merge %falseResult_34  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    sink %index_38 {handshake.name = "sink6"} : <i1>
    %104:3 = fork [3] %result_37 {handshake.bb = 6 : ui32, handshake.name = "fork19"} : <>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %103, %memEnd_2, %memEnd_0, %memEnd, %0#1 : <i32>, <>, <>, <>, <>
  }
}


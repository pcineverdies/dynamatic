module {
  handshake.func @stencil_2d(%arg0: memref<900xi32>, %arg1: memref<10xi32>, %arg2: memref<900xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["orig", "filter", "sol", "orig_start", "filter_start", "sol_start", "start"], cfg.edges = "[0,1][2,3][4,2,5,cmpi1][1,2][3,3,4,cmpi0][5,1,6,cmpi2]", resNames = ["out0", "orig_end", "filter_end", "sol_end", "end"]} {
    %0:9 = fork [9] %arg6 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %memEnd = mem_controller[%arg2 : memref<900xi32>] %arg5 (%82, %addressResult_27, %dataResult_28) %0#2 {connectedBlocks = [5 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>, !handshake.channel<i10>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<10xi32>] %arg4 (%addressResult) %0#1 {connectedBlocks = [3 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<900xi32>] %arg3 (%addressResult_11) %0#0 {connectedBlocks = [3 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %1 = constant %0#8 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %2:2 = fork [2] %1 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %3 = extsi %2#0 {handshake.bb = 1 : ui32, handshake.name = "extsi13"} : <i1> to <i6>
    %4 = merge %2#1, %91#3 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %5:2 = fork [2] %4 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %6 = mux %5#1 [%0#7, %trueResult_25] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %7:5 = fork [5] %6 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %8 = mux %5#0 [%3, %trueResult_23] {handshake.bb = 1 : ui32, handshake.name = "mux10"} : <i1>, <i6>
    %9:3 = fork [3] %8 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i6>
    %10 = extsi %9#0 {handshake.bb = 1 : ui32, handshake.name = "extsi12"} : <i6> to <i10>
    %11 = extsi %9#1 {handshake.bb = 1 : ui32, handshake.name = "extsi14"} : <i6> to <i7>
    %12 = constant %7#2 {handshake.bb = 1 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %13:2 = fork [2] %12 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i1>
    %14 = extsi %13#0 {handshake.bb = 1 : ui32, handshake.name = "extsi15"} : <i1> to <i3>
    %15 = extsi %13#1 {handshake.bb = 1 : ui32, handshake.name = "extsi2"} : <i1> to <i32>
    %16 = constant %0#6 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant22", value = false} : <>, <i1>
    %17 = merge %16, %80#4 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge11"} : <i1>
    %18:4 = fork [4] %17 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i1>
    %19 = mux %18#0 [%9#2, %trueResult_19] {handshake.bb = 2 : ui32, handshake.name = "mux13"} : <i1>, <i6>
    %20:2 = fork [2] %19 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i6>
    %21 = mux %18#3 [%7#4, %trueResult_17] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux17"} : <i1>, <>
    %22:5 = fork [5] %21 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <>
    %23 = mux %18#2 [%15, %trueResult_13] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux18"} : <i1>, <i32>
    %24 = mux %18#1 [%14, %trueResult_15] {handshake.bb = 2 : ui32, handshake.name = "mux19"} : <i1>, <i3>
    %25:2 = fork [2] %24 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i3>
    %26 = extsi %25#0 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i3> to <i4>
    %27 = constant %22#2 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = false} : <>, <i1>
    %28 = extsi %27 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i1> to <i3>
    %trueResult, %falseResult = cond_br %70#0, %68 {handshake.bb = 3 : ui32, handshake.name = "cond_br41"} : <i1>, <i3>
    sink %falseResult {handshake.name = "sink0"} : <i3>
    %trueResult_3, %falseResult_4 = cond_br %70#5, %41#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br42"} : <i1>, <>
    sink %falseResult_4 {handshake.name = "sink1"} : <>
    %trueResult_5, %falseResult_6 = cond_br %70#2, %36#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br43"} : <i1>, <i3>
    sink %falseResult_6 {handshake.name = "sink2"} : <i3>
    %trueResult_7, %falseResult_8 = cond_br %70#1, %33#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br44"} : <i1>, <i6>
    sink %falseResult_8 {handshake.name = "sink3"} : <i6>
    %trueResult_9, %falseResult_10 = cond_br %70#4, %65 {handshake.bb = 3 : ui32, handshake.name = "cond_br45"} : <i1>, <i32>
    %29 = constant %0#5 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant31", value = false} : <>, <i1>
    %30 = merge %29, %70#3 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge20"} : <i1>
    %31:5 = fork [5] %30 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i1>
    %32 = mux %31#0 [%20#1, %trueResult_7] {handshake.bb = 3 : ui32, handshake.name = "mux21"} : <i1>, <i6>
    %33:2 = fork [2] %32 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i6>
    %34 = extsi %33#0 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i6> to <i7>
    %35 = mux %31#1 [%25#1, %trueResult_5] {handshake.bb = 3 : ui32, handshake.name = "mux23"} : <i1>, <i3>
    %36:4 = fork [4] %35 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i3>
    %37 = extsi %36#0 {handshake.bb = 3 : ui32, handshake.name = "extsi19"} : <i3> to <i4>
    %38 = extsi %36#1 {handshake.bb = 3 : ui32, handshake.name = "extsi20"} : <i3> to <i9>
    %39 = extsi %36#2 {handshake.bb = 3 : ui32, handshake.name = "extsi21"} : <i3> to <i4>
    %40 = mux %31#4 [%22#4, %trueResult_3] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux26"} : <i1>, <>
    %41:4 = fork [4] %40 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <>
    %42 = mux %31#3 [%23, %trueResult_9] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux27"} : <i1>, <i32>
    %43 = mux %31#2 [%28, %trueResult] {handshake.bb = 3 : ui32, handshake.name = "mux28"} : <i1>, <i3>
    %44:3 = fork [3] %43 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i3>
    %45 = extsi %44#0 {handshake.bb = 3 : ui32, handshake.name = "extsi22"} : <i3> to <i4>
    %46 = extsi %44#1 {handshake.bb = 3 : ui32, handshake.name = "extsi23"} : <i3> to <i7>
    %47 = extsi %44#2 {handshake.bb = 3 : ui32, handshake.name = "extsi24"} : <i3> to <i4>
    %48 = constant %41#2 {handshake.bb = 3 : ui32, handshake.name = "constant5", value = 30 : i6} : <>, <i6>
    %49 = extsi %48 {handshake.bb = 3 : ui32, handshake.name = "extsi25"} : <i6> to <i9>
    %50 = constant %41#1 {handshake.bb = 3 : ui32, handshake.name = "constant16", value = 3 : i3} : <>, <i3>
    %51 = extsi %50 {handshake.bb = 3 : ui32, handshake.name = "extsi26"} : <i3> to <i4>
    %52 = constant %41#0 {handshake.bb = 3 : ui32, handshake.name = "constant17", value = 1 : i2} : <>, <i2>
    %53:2 = fork [2] %52 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <i2>
    %54 = extui %53#0 {handshake.bb = 3 : ui32, handshake.name = "extui0"} : <i2> to <i4>
    %55 = extsi %53#1 {handshake.bb = 3 : ui32, handshake.name = "extsi27"} : <i2> to <i4>
    %56 = shli %39, %54 {handshake.bb = 3 : ui32, handshake.name = "shli1"} : <i4>
    %57 = addi %37, %56 {handshake.bb = 3 : ui32, handshake.name = "addi7"} : <i4>
    %58 = addi %45, %57 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i4>
    %addressResult, %dataResult = load[%58] %outputs {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i4>, <i32>
    %59 = addi %46, %34 {handshake.bb = 3 : ui32, handshake.name = "addi2"} : <i7>
    %60 = extsi %59 {handshake.bb = 3 : ui32, handshake.name = "extsi28"} : <i7> to <i10>
    %61 = muli %38, %49 {handshake.bb = 3 : ui32, handshake.name = "muli2"} : <i9>
    %62 = extsi %61 {handshake.bb = 3 : ui32, handshake.name = "extsi29"} : <i9> to <i10>
    %63 = addi %60, %62 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i10>
    %addressResult_11, %dataResult_12 = load[%63] %outputs_1 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i10>, <i32>
    %64 = muli %dataResult, %dataResult_12 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %65 = addi %42, %64 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %66 = addi %47, %55 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i4>
    %67:2 = fork [2] %66 {handshake.bb = 3 : ui32, handshake.name = "fork16"} : <i4>
    %68 = trunci %67#0 {handshake.bb = 3 : ui32, handshake.name = "trunci0"} : <i4> to <i3>
    %69 = cmpi ult, %67#1, %51 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i4>
    %70:6 = fork [6] %69 {handshake.bb = 3 : ui32, handshake.name = "fork17"} : <i1>
    %trueResult_13, %falseResult_14 = cond_br %80#3, %falseResult_10 {handshake.bb = 4 : ui32, handshake.name = "cond_br46"} : <i1>, <i32>
    %71:2 = fork [2] %falseResult_14 {handshake.bb = 4 : ui32, handshake.name = "fork18"} : <i32>
    %trueResult_15, %falseResult_16 = cond_br %80#0, %78 {handshake.bb = 4 : ui32, handshake.name = "cond_br47"} : <i1>, <i3>
    sink %falseResult_16 {handshake.name = "sink4"} : <i3>
    %trueResult_17, %falseResult_18 = cond_br %80#2, %22#3 {handshake.bb = 4 : ui32, handshake.name = "cond_br48"} : <i1>, <>
    sink %falseResult_18 {handshake.name = "sink5"} : <>
    %trueResult_19, %falseResult_20 = cond_br %80#1, %20#0 {handshake.bb = 4 : ui32, handshake.name = "cond_br49"} : <i1>, <i6>
    sink %falseResult_20 {handshake.name = "sink6"} : <i6>
    %72 = constant %22#1 {handshake.bb = 4 : ui32, handshake.name = "constant18", value = 3 : i3} : <>, <i3>
    %73 = extsi %72 {handshake.bb = 4 : ui32, handshake.name = "extsi30"} : <i3> to <i4>
    %74 = constant %22#0 {handshake.bb = 4 : ui32, handshake.name = "constant19", value = 1 : i2} : <>, <i2>
    %75 = extsi %74 {handshake.bb = 4 : ui32, handshake.name = "extsi31"} : <i2> to <i4>
    %76 = addi %26, %75 {handshake.bb = 4 : ui32, handshake.name = "addi5"} : <i4>
    %77:2 = fork [2] %76 {handshake.bb = 4 : ui32, handshake.name = "fork19"} : <i4>
    %78 = trunci %77#0 {handshake.bb = 4 : ui32, handshake.name = "trunci1"} : <i4> to <i3>
    %79 = cmpi ult, %77#1, %73 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i4>
    %80:5 = fork [5] %79 {handshake.bb = 4 : ui32, handshake.name = "fork20"} : <i1>
    %trueResult_21, %falseResult_22 = cond_br %91#2, %71#1 {handshake.bb = 5 : ui32, handshake.name = "cond_br50"} : <i1>, <i32>
    sink %trueResult_21 {handshake.name = "sink7"} : <i32>
    %trueResult_23, %falseResult_24 = cond_br %91#0, %89 {handshake.bb = 5 : ui32, handshake.name = "cond_br51"} : <i1>, <i6>
    sink %falseResult_24 {handshake.name = "sink8"} : <i6>
    %trueResult_25, %falseResult_26 = cond_br %91#1, %7#3 {handshake.bb = 5 : ui32, handshake.name = "cond_br52"} : <i1>, <>
    sink %falseResult_26 {handshake.name = "sink9"} : <>
    %81 = constant %0#3 {handshake.bb = 5 : ui32, handshake.name = "constant20", value = 1 : i2} : <>, <i2>
    %82 = extsi %81 {handshake.bb = 5 : ui32, handshake.name = "extsi9"} : <i2> to <i32>
    %83 = constant %7#1 {handshake.bb = 5 : ui32, handshake.name = "constant21", value = 28 : i6} : <>, <i6>
    %84 = extsi %83 {handshake.bb = 5 : ui32, handshake.name = "extsi32"} : <i6> to <i7>
    %85 = constant %7#0 {handshake.bb = 5 : ui32, handshake.name = "constant23", value = 1 : i2} : <>, <i2>
    %86 = extsi %85 {handshake.bb = 5 : ui32, handshake.name = "extsi33"} : <i2> to <i7>
    %addressResult_27, %dataResult_28 = store[%10] %71#0 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i10>, <i32>
    %87 = addi %11, %86 {handshake.bb = 5 : ui32, handshake.name = "addi6"} : <i7>
    %88:2 = fork [2] %87 {handshake.bb = 5 : ui32, handshake.name = "fork21"} : <i7>
    %89 = trunci %88#0 {handshake.bb = 5 : ui32, handshake.name = "trunci2"} : <i7> to <i6>
    %90 = cmpi ult, %88#1, %84 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i7>
    %91:4 = fork [4] %90 {handshake.bb = 5 : ui32, handshake.name = "fork22"} : <i1>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %falseResult_22, %memEnd_2, %memEnd_0, %memEnd, %0#4 : <i32>, <>, <>, <>, <>
  }
}


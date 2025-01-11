module {
  handshake.func @stencil_2d(%arg0: memref<900xi32>, %arg1: memref<10xi32>, %arg2: memref<900xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["orig", "filter", "sol", "orig_start", "filter_start", "sol_start", "start"], cfg.edges = "[0,1][2,3][4,2,5,cmpi1][1,2][3,3,4,cmpi0][5,1,6,cmpi2]", resNames = ["out0", "orig_end", "filter_end", "sol_end", "end"]} {
    %0:8 = fork [8] %arg6 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %memEnd = mem_controller[%arg2 : memref<900xi32>] %arg5 (%83, %addressResult_21, %dataResult_22) %0#2 {connectedBlocks = [5 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>, !handshake.channel<i10>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<10xi32>] %arg4 (%addressResult) %0#1 {connectedBlocks = [3 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<900xi32>] %arg3 (%addressResult_9) %0#0 {connectedBlocks = [3 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %1 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %2 = constant %1 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = false} : <>, <i1>
    %3 = extsi %2 {handshake.bb = 0 : ui32, handshake.name = "extsi13"} : <i1> to <i6>
    %4 = constant %0#7 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %5 = mux %9 [%3, %trueResult_19] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i6>
    %6:3 = fork [3] %5 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i6>
    %7 = extsi %6#0 {handshake.bb = 1 : ui32, handshake.name = "extsi12"} : <i6> to <i10>
    %8 = extsi %6#1 {handshake.bb = 1 : ui32, handshake.name = "extsi14"} : <i6> to <i7>
    %9 = merge %4, %94#2 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %10 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %11 = constant %10 {handshake.bb = 1 : ui32, handshake.name = "constant16", value = false} : <>, <i1>
    %12:2 = fork [2] %11 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %13 = extsi %12#0 {handshake.bb = 1 : ui32, handshake.name = "extsi15"} : <i1> to <i3>
    %14 = extsi %12#1 {handshake.bb = 1 : ui32, handshake.name = "extsi2"} : <i1> to <i32>
    %15 = constant %0#6 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %16 = merge %15, %81#3 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i1>
    %17:3 = fork [3] %16 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i1>
    %18 = mux %17#0 [%6#2, %trueResult_15] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i6>
    %19:2 = fork [2] %18 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i6>
    %20 = mux %17#2 [%14, %trueResult_11] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %21 = mux %17#1 [%13, %trueResult_13] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i3>
    %22:2 = fork [2] %21 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i3>
    %23 = extsi %22#0 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i3> to <i4>
    %24 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %25 = constant %24 {handshake.bb = 2 : ui32, handshake.name = "constant17", value = false} : <>, <i1>
    %26 = extsi %25 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i1> to <i3>
    %trueResult, %falseResult = cond_br %69#0, %67 {handshake.bb = 3 : ui32, handshake.name = "cond_br22"} : <i1>, <i3>
    sink %falseResult {handshake.name = "sink0"} : <i3>
    %trueResult_3, %falseResult_4 = cond_br %69#2, %34#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br23"} : <i1>, <i3>
    sink %falseResult_4 {handshake.name = "sink1"} : <i3>
    %trueResult_5, %falseResult_6 = cond_br %69#1, %31#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br24"} : <i1>, <i6>
    sink %falseResult_6 {handshake.name = "sink2"} : <i6>
    %trueResult_7, %falseResult_8 = cond_br %69#4, %64 {handshake.bb = 3 : ui32, handshake.name = "cond_br25"} : <i1>, <i32>
    %27 = constant %0#5 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant5", value = false} : <>, <i1>
    %28 = merge %27, %69#3 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge4"} : <i1>
    %29:4 = fork [4] %28 {handshake.bb = 3 : ui32, handshake.name = "fork6"} : <i1>
    %30 = mux %29#0 [%19#1, %trueResult_5] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i6>
    %31:2 = fork [2] %30 {handshake.bb = 3 : ui32, handshake.name = "fork7"} : <i6>
    %32 = extsi %31#0 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i6> to <i7>
    %33 = mux %29#1 [%22#1, %trueResult_3] {handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <i3>
    %34:4 = fork [4] %33 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i3>
    %35 = extsi %34#0 {handshake.bb = 3 : ui32, handshake.name = "extsi19"} : <i3> to <i4>
    %36 = extsi %34#1 {handshake.bb = 3 : ui32, handshake.name = "extsi20"} : <i3> to <i9>
    %37 = extsi %34#2 {handshake.bb = 3 : ui32, handshake.name = "extsi21"} : <i3> to <i4>
    %38 = mux %29#3 [%20, %trueResult_7] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %39 = mux %29#2 [%26, %trueResult] {handshake.bb = 3 : ui32, handshake.name = "mux9"} : <i1>, <i3>
    %40:3 = fork [3] %39 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i3>
    %41 = extsi %40#0 {handshake.bb = 3 : ui32, handshake.name = "extsi22"} : <i3> to <i4>
    %42 = extsi %40#1 {handshake.bb = 3 : ui32, handshake.name = "extsi23"} : <i3> to <i7>
    %43 = extsi %40#2 {handshake.bb = 3 : ui32, handshake.name = "extsi24"} : <i3> to <i4>
    %44 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %45 = constant %44 {handshake.bb = 3 : ui32, handshake.name = "constant18", value = 30 : i6} : <>, <i6>
    %46 = extsi %45 {handshake.bb = 3 : ui32, handshake.name = "extsi25"} : <i6> to <i9>
    %47 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %48 = constant %47 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 3 : i3} : <>, <i3>
    %49 = extsi %48 {handshake.bb = 3 : ui32, handshake.name = "extsi26"} : <i3> to <i4>
    %50 = source {handshake.bb = 3 : ui32, handshake.name = "source6"} : <>
    %51 = constant %50 {handshake.bb = 3 : ui32, handshake.name = "constant20", value = 1 : i2} : <>, <i2>
    %52:2 = fork [2] %51 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i2>
    %53 = extui %52#0 {handshake.bb = 3 : ui32, handshake.name = "extui0"} : <i2> to <i4>
    %54 = extsi %52#1 {handshake.bb = 3 : ui32, handshake.name = "extsi27"} : <i2> to <i4>
    %55 = shli %37, %53 {handshake.bb = 3 : ui32, handshake.name = "shli1"} : <i4>
    %56 = addi %35, %55 {handshake.bb = 3 : ui32, handshake.name = "addi7"} : <i4>
    %57 = addi %41, %56 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i4>
    %addressResult, %dataResult = load[%57] %outputs {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i4>, <i32>
    %58 = addi %42, %32 {handshake.bb = 3 : ui32, handshake.name = "addi2"} : <i7>
    %59 = extsi %58 {handshake.bb = 3 : ui32, handshake.name = "extsi28"} : <i7> to <i10>
    %60 = muli %36, %46 {handshake.bb = 3 : ui32, handshake.name = "muli2"} : <i9>
    %61 = extsi %60 {handshake.bb = 3 : ui32, handshake.name = "extsi29"} : <i9> to <i10>
    %62 = addi %59, %61 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i10>
    %addressResult_9, %dataResult_10 = load[%62] %outputs_1 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i10>, <i32>
    %63 = muli %dataResult, %dataResult_10 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %64 = addi %38, %63 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %65 = addi %43, %54 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i4>
    %66:2 = fork [2] %65 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i4>
    %67 = trunci %66#0 {handshake.bb = 3 : ui32, handshake.name = "trunci0"} : <i4> to <i3>
    %68 = cmpi ult, %66#1, %49 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i4>
    %69:5 = fork [5] %68 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i1>
    %trueResult_11, %falseResult_12 = cond_br %81#2, %falseResult_8 {handshake.bb = 4 : ui32, handshake.name = "cond_br26"} : <i1>, <i32>
    %70:2 = fork [2] %falseResult_12 {handshake.bb = 4 : ui32, handshake.name = "fork13"} : <i32>
    %trueResult_13, %falseResult_14 = cond_br %81#0, %79 {handshake.bb = 4 : ui32, handshake.name = "cond_br27"} : <i1>, <i3>
    sink %falseResult_14 {handshake.name = "sink3"} : <i3>
    %trueResult_15, %falseResult_16 = cond_br %81#1, %19#0 {handshake.bb = 4 : ui32, handshake.name = "cond_br28"} : <i1>, <i6>
    sink %falseResult_16 {handshake.name = "sink4"} : <i6>
    %71 = source {handshake.bb = 4 : ui32, handshake.name = "source7"} : <>
    %72 = constant %71 {handshake.bb = 4 : ui32, handshake.name = "constant21", value = 3 : i3} : <>, <i3>
    %73 = extsi %72 {handshake.bb = 4 : ui32, handshake.name = "extsi30"} : <i3> to <i4>
    %74 = source {handshake.bb = 4 : ui32, handshake.name = "source8"} : <>
    %75 = constant %74 {handshake.bb = 4 : ui32, handshake.name = "constant22", value = 1 : i2} : <>, <i2>
    %76 = extsi %75 {handshake.bb = 4 : ui32, handshake.name = "extsi31"} : <i2> to <i4>
    %77 = addi %23, %76 {handshake.bb = 4 : ui32, handshake.name = "addi5"} : <i4>
    %78:2 = fork [2] %77 {handshake.bb = 4 : ui32, handshake.name = "fork14"} : <i4>
    %79 = trunci %78#0 {handshake.bb = 4 : ui32, handshake.name = "trunci1"} : <i4> to <i3>
    %80 = cmpi ult, %78#1, %73 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i4>
    %81:4 = fork [4] %80 {handshake.bb = 4 : ui32, handshake.name = "fork15"} : <i1>
    %trueResult_17, %falseResult_18 = cond_br %94#1, %70#1 {handshake.bb = 5 : ui32, handshake.name = "cond_br29"} : <i1>, <i32>
    sink %trueResult_17 {handshake.name = "sink5"} : <i32>
    %trueResult_19, %falseResult_20 = cond_br %94#0, %92 {handshake.bb = 5 : ui32, handshake.name = "cond_br30"} : <i1>, <i6>
    sink %falseResult_20 {handshake.name = "sink6"} : <i6>
    %82 = constant %0#3 {handshake.bb = 5 : ui32, handshake.name = "constant23", value = 1 : i2} : <>, <i2>
    %83 = extsi %82 {handshake.bb = 5 : ui32, handshake.name = "extsi9"} : <i2> to <i32>
    %84 = source {handshake.bb = 5 : ui32, handshake.name = "source9"} : <>
    %85 = constant %84 {handshake.bb = 5 : ui32, handshake.name = "constant24", value = 28 : i6} : <>, <i6>
    %86 = extsi %85 {handshake.bb = 5 : ui32, handshake.name = "extsi32"} : <i6> to <i7>
    %87 = source {handshake.bb = 5 : ui32, handshake.name = "source10"} : <>
    %88 = constant %87 {handshake.bb = 5 : ui32, handshake.name = "constant25", value = 1 : i2} : <>, <i2>
    %89 = extsi %88 {handshake.bb = 5 : ui32, handshake.name = "extsi33"} : <i2> to <i7>
    %addressResult_21, %dataResult_22 = store[%7] %70#0 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i10>, <i32>
    %90 = addi %8, %89 {handshake.bb = 5 : ui32, handshake.name = "addi6"} : <i7>
    %91:2 = fork [2] %90 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <i7>
    %92 = trunci %91#0 {handshake.bb = 5 : ui32, handshake.name = "trunci2"} : <i7> to <i6>
    %93 = cmpi ult, %91#1, %86 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i7>
    %94:3 = fork [3] %93 {handshake.bb = 5 : ui32, handshake.name = "fork17"} : <i1>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %falseResult_18, %memEnd_2, %memEnd_0, %memEnd, %0#4 : <i32>, <>, <>, <>, <>
  }
}


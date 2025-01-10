module {
  handshake.func @matvec(%arg0: memref<400xi32>, %arg1: memref<20xi32>, %arg2: memref<20xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["m", "v", "out", "m_start", "v_start", "out_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][1,2][3,1,4,cmpi1]", resNames = ["out0", "m_end", "v_end", "out_end", "end"]} {
    %0:8 = fork [8] %arg6 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %memEnd = mem_controller[%arg2 : memref<20xi32>] %arg5 (%54, %addressResult_17, %dataResult_18) %0#2 {connectedBlocks = [3 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>, !handshake.channel<i5>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<20xi32>] %arg4 (%addressResult) %0#1 {connectedBlocks = [2 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i5>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<400xi32>] %arg3 (%addressResult_9) %0#0 {connectedBlocks = [2 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i9>) -> !handshake.channel<i32>
    %1 = constant %0#7 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %2:2 = fork [2] %1 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %3 = extsi %2#0 {handshake.bb = 1 : ui32, handshake.name = "extsi10"} : <i1> to <i6>
    %4 = merge %2#1, %63#3 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %5:2 = fork [2] %4 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %6 = mux %5#1 [%0#6, %trueResult_15] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %7:5 = fork [5] %6 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %8 = mux %5#0 [%3, %trueResult_13] {handshake.bb = 1 : ui32, handshake.name = "mux8"} : <i1>, <i6>
    %9:3 = fork [3] %8 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i6>
    %10 = extsi %9#1 {handshake.bb = 1 : ui32, handshake.name = "extsi11"} : <i6> to <i7>
    %11 = trunci %9#0 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i6> to <i5>
    %12 = constant %7#2 {handshake.bb = 1 : ui32, handshake.name = "constant2", value = false} : <>, <i1>
    %13:2 = fork [2] %12 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i1>
    %14 = extsi %13#0 {handshake.bb = 1 : ui32, handshake.name = "extsi12"} : <i1> to <i6>
    %15 = extsi %13#1 {handshake.bb = 1 : ui32, handshake.name = "extsi2"} : <i1> to <i32>
    %trueResult, %falseResult = cond_br %52#4, %47 {handshake.bb = 2 : ui32, handshake.name = "cond_br24"} : <i1>, <i32>
    %16:2 = fork [2] %falseResult {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i32>
    %trueResult_3, %falseResult_4 = cond_br %52#0, %50 {handshake.bb = 2 : ui32, handshake.name = "cond_br25"} : <i1>, <i6>
    sink %falseResult_4 {handshake.name = "sink0"} : <i6>
    %trueResult_5, %falseResult_6 = cond_br %52#3, %26#4 {handshake.bb = 2 : ui32, handshake.name = "cond_br26"} : <i1>, <>
    sink %falseResult_6 {handshake.name = "sink1"} : <>
    %trueResult_7, %falseResult_8 = cond_br %52#1, %21#2 {handshake.bb = 2 : ui32, handshake.name = "cond_br27"} : <i1>, <i6>
    sink %falseResult_8 {handshake.name = "sink2"} : <i6>
    %17 = constant %0#5 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant18", value = false} : <>, <i1>
    %18 = merge %17, %52#2 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge9"} : <i1>
    %19:4 = fork [4] %18 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i1>
    %20 = mux %19#0 [%9#2, %trueResult_7] {handshake.bb = 2 : ui32, handshake.name = "mux9"} : <i1>, <i6>
    %21:3 = fork [3] %20 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i6>
    %22 = trunci %21#0 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i6> to <i5>
    %23 = extsi %22 {handshake.bb = 2 : ui32, handshake.name = "extsi13"} : <i5> to <i9>
    %24 = extsi %21#1 {handshake.bb = 2 : ui32, handshake.name = "extsi14"} : <i6> to <i8>
    %25 = mux %19#3 [%7#4, %trueResult_5] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux14"} : <i1>, <>
    %26:5 = fork [5] %25 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <>
    %27 = mux %19#2 [%15, %trueResult] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux15"} : <i1>, <i32>
    %28 = mux %19#1 [%14, %trueResult_3] {handshake.bb = 2 : ui32, handshake.name = "mux16"} : <i1>, <i6>
    %29:3 = fork [3] %28 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i6>
    %30 = extsi %29#0 {handshake.bb = 2 : ui32, handshake.name = "extsi15"} : <i6> to <i9>
    %31 = extsi %29#2 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i6> to <i7>
    %32 = trunci %29#1 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i6> to <i5>
    %33 = constant %26#3 {handshake.bb = 2 : ui32, handshake.name = "constant3", value = 20 : i6} : <>, <i6>
    %34 = extsi %33 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i6> to <i7>
    %35 = constant %26#2 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = 1 : i2} : <>, <i2>
    %36 = extsi %35 {handshake.bb = 2 : ui32, handshake.name = "extsi18"} : <i2> to <i7>
    %37 = constant %26#1 {handshake.bb = 2 : ui32, handshake.name = "constant14", value = 4 : i4} : <>, <i4>
    %38 = extui %37 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i4> to <i9>
    %39 = constant %26#0 {handshake.bb = 2 : ui32, handshake.name = "constant15", value = 2 : i3} : <>, <i3>
    %40 = extui %39 {handshake.bb = 2 : ui32, handshake.name = "extui1"} : <i3> to <i8>
    %addressResult, %dataResult = load[%32] %outputs {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i5>, <i32>
    %41 = shli %24, %40 {handshake.bb = 2 : ui32, handshake.name = "shli3"} : <i8>
    %42 = extsi %41 {handshake.bb = 2 : ui32, handshake.name = "extsi19"} : <i8> to <i9>
    %43 = shli %23, %38 {handshake.bb = 2 : ui32, handshake.name = "shli2"} : <i9>
    %44 = addi %42, %43 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i9>
    %45 = addi %30, %44 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i9>
    %addressResult_9, %dataResult_10 = load[%45] %outputs_1 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i9>, <i32>
    %46 = muli %dataResult, %dataResult_10 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %47 = addi %27, %46 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %48 = addi %31, %36 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i7>
    %49:2 = fork [2] %48 {handshake.bb = 2 : ui32, handshake.name = "fork11"} : <i7>
    %50 = trunci %49#0 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i7> to <i6>
    %51 = cmpi ult, %49#1, %34 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i7>
    %52:5 = fork [5] %51 {handshake.bb = 2 : ui32, handshake.name = "fork12"} : <i1>
    %trueResult_11, %falseResult_12 = cond_br %63#2, %16#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br28"} : <i1>, <i32>
    sink %trueResult_11 {handshake.name = "sink3"} : <i32>
    %trueResult_13, %falseResult_14 = cond_br %63#0, %61 {handshake.bb = 3 : ui32, handshake.name = "cond_br29"} : <i1>, <i6>
    sink %falseResult_14 {handshake.name = "sink4"} : <i6>
    %trueResult_15, %falseResult_16 = cond_br %63#1, %7#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br30"} : <i1>, <>
    sink %falseResult_16 {handshake.name = "sink5"} : <>
    %53 = constant %0#3 {handshake.bb = 3 : ui32, handshake.name = "constant16", value = 1 : i2} : <>, <i2>
    %54 = extsi %53 {handshake.bb = 3 : ui32, handshake.name = "extsi7"} : <i2> to <i32>
    %55 = constant %7#1 {handshake.bb = 3 : ui32, handshake.name = "constant17", value = 20 : i6} : <>, <i6>
    %56 = extsi %55 {handshake.bb = 3 : ui32, handshake.name = "extsi20"} : <i6> to <i7>
    %57 = constant %7#0 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 1 : i2} : <>, <i2>
    %58 = extsi %57 {handshake.bb = 3 : ui32, handshake.name = "extsi21"} : <i2> to <i7>
    %addressResult_17, %dataResult_18 = store[%11] %16#0 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i5>, <i32>
    %59 = addi %10, %58 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i7>
    %60:2 = fork [2] %59 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i7>
    %61 = trunci %60#0 {handshake.bb = 3 : ui32, handshake.name = "trunci4"} : <i7> to <i6>
    %62 = cmpi ult, %60#1, %56 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i7>
    %63:4 = fork [4] %62 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i1>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %falseResult_12, %memEnd_2, %memEnd_0, %memEnd, %0#4 : <i32>, <>, <>, <>, <>
  }
}


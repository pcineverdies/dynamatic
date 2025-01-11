module {
  handshake.func @matvec(%arg0: memref<400xi32>, %arg1: memref<20xi32>, %arg2: memref<20xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["m", "v", "out", "m_start", "v_start", "out_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][1,2][3,1,4,cmpi1]", resNames = ["out0", "m_end", "v_end", "out_end", "end"]} {
    %0:7 = fork [7] %arg6 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %memEnd = mem_controller[%arg2 : memref<20xi32>] %arg5 (%55, %addressResult_13, %dataResult_14) %0#2 {connectedBlocks = [3 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>, !handshake.channel<i5>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<20xi32>] %arg4 (%addressResult) %0#1 {connectedBlocks = [2 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i5>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<400xi32>] %arg3 (%addressResult_7) %0#0 {connectedBlocks = [2 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i9>) -> !handshake.channel<i32>
    %1 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %2 = constant %1 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %3 = extsi %2 {handshake.bb = 0 : ui32, handshake.name = "extsi10"} : <i1> to <i6>
    %4 = constant %0#6 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %5 = mux %9 [%3, %trueResult_11] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i6>
    %6:3 = fork [3] %5 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i6>
    %7 = extsi %6#1 {handshake.bb = 1 : ui32, handshake.name = "extsi11"} : <i6> to <i7>
    %8 = trunci %6#0 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i6> to <i5>
    %9 = merge %4, %66#2 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %10 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %11 = constant %10 {handshake.bb = 1 : ui32, handshake.name = "constant5", value = false} : <>, <i1>
    %12:2 = fork [2] %11 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %13 = extsi %12#0 {handshake.bb = 1 : ui32, handshake.name = "extsi12"} : <i1> to <i6>
    %14 = extsi %12#1 {handshake.bb = 1 : ui32, handshake.name = "extsi2"} : <i1> to <i32>
    %trueResult, %falseResult = cond_br %53#3, %48 {handshake.bb = 2 : ui32, handshake.name = "cond_br12"} : <i1>, <i32>
    %15:2 = fork [2] %falseResult {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i32>
    %trueResult_3, %falseResult_4 = cond_br %53#0, %51 {handshake.bb = 2 : ui32, handshake.name = "cond_br13"} : <i1>, <i6>
    sink %falseResult_4 {handshake.name = "sink0"} : <i6>
    %trueResult_5, %falseResult_6 = cond_br %53#1, %20#2 {handshake.bb = 2 : ui32, handshake.name = "cond_br14"} : <i1>, <i6>
    sink %falseResult_6 {handshake.name = "sink1"} : <i6>
    %16 = constant %0#5 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %17 = merge %16, %53#2 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i1>
    %18:3 = fork [3] %17 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i1>
    %19 = mux %18#0 [%6#2, %trueResult_5] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i6>
    %20:3 = fork [3] %19 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i6>
    %21 = trunci %20#0 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i6> to <i5>
    %22 = extsi %21 {handshake.bb = 2 : ui32, handshake.name = "extsi13"} : <i5> to <i9>
    %23 = extsi %20#1 {handshake.bb = 2 : ui32, handshake.name = "extsi14"} : <i6> to <i8>
    %24 = mux %18#2 [%14, %trueResult] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %25 = mux %18#1 [%13, %trueResult_3] {handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <i6>
    %26:3 = fork [3] %25 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i6>
    %27 = extsi %26#0 {handshake.bb = 2 : ui32, handshake.name = "extsi15"} : <i6> to <i9>
    %28 = extsi %26#2 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i6> to <i7>
    %29 = trunci %26#1 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i6> to <i5>
    %30 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %31 = constant %30 {handshake.bb = 2 : ui32, handshake.name = "constant14", value = 20 : i6} : <>, <i6>
    %32 = extsi %31 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i6> to <i7>
    %33 = source {handshake.bb = 2 : ui32, handshake.name = "source4"} : <>
    %34 = constant %33 {handshake.bb = 2 : ui32, handshake.name = "constant15", value = 1 : i2} : <>, <i2>
    %35 = extsi %34 {handshake.bb = 2 : ui32, handshake.name = "extsi18"} : <i2> to <i7>
    %36 = source {handshake.bb = 2 : ui32, handshake.name = "source5"} : <>
    %37 = constant %36 {handshake.bb = 2 : ui32, handshake.name = "constant16", value = 4 : i4} : <>, <i4>
    %38 = extui %37 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i4> to <i9>
    %39 = source {handshake.bb = 2 : ui32, handshake.name = "source6"} : <>
    %40 = constant %39 {handshake.bb = 2 : ui32, handshake.name = "constant17", value = 2 : i3} : <>, <i3>
    %41 = extui %40 {handshake.bb = 2 : ui32, handshake.name = "extui1"} : <i3> to <i8>
    %addressResult, %dataResult = load[%29] %outputs {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i5>, <i32>
    %42 = shli %23, %41 {handshake.bb = 2 : ui32, handshake.name = "shli3"} : <i8>
    %43 = extsi %42 {handshake.bb = 2 : ui32, handshake.name = "extsi19"} : <i8> to <i9>
    %44 = shli %22, %38 {handshake.bb = 2 : ui32, handshake.name = "shli2"} : <i9>
    %45 = addi %43, %44 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i9>
    %46 = addi %27, %45 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i9>
    %addressResult_7, %dataResult_8 = load[%46] %outputs_1 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i9>, <i32>
    %47 = muli %dataResult, %dataResult_8 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %48 = addi %24, %47 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %49 = addi %28, %35 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i7>
    %50:2 = fork [2] %49 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i7>
    %51 = trunci %50#0 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i7> to <i6>
    %52 = cmpi ult, %50#1, %32 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i7>
    %53:4 = fork [4] %52 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i1>
    %trueResult_9, %falseResult_10 = cond_br %66#1, %15#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br15"} : <i1>, <i32>
    sink %trueResult_9 {handshake.name = "sink2"} : <i32>
    %trueResult_11, %falseResult_12 = cond_br %66#0, %64 {handshake.bb = 3 : ui32, handshake.name = "cond_br16"} : <i1>, <i6>
    sink %falseResult_12 {handshake.name = "sink3"} : <i6>
    %54 = constant %0#3 {handshake.bb = 3 : ui32, handshake.name = "constant18", value = 1 : i2} : <>, <i2>
    %55 = extsi %54 {handshake.bb = 3 : ui32, handshake.name = "extsi7"} : <i2> to <i32>
    %56 = source {handshake.bb = 3 : ui32, handshake.name = "source7"} : <>
    %57 = constant %56 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 20 : i6} : <>, <i6>
    %58 = extsi %57 {handshake.bb = 3 : ui32, handshake.name = "extsi20"} : <i6> to <i7>
    %59 = source {handshake.bb = 3 : ui32, handshake.name = "source8"} : <>
    %60 = constant %59 {handshake.bb = 3 : ui32, handshake.name = "constant20", value = 1 : i2} : <>, <i2>
    %61 = extsi %60 {handshake.bb = 3 : ui32, handshake.name = "extsi21"} : <i2> to <i7>
    %addressResult_13, %dataResult_14 = store[%8] %15#0 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i5>, <i32>
    %62 = addi %7, %61 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i7>
    %63:2 = fork [2] %62 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i7>
    %64 = trunci %63#0 {handshake.bb = 3 : ui32, handshake.name = "trunci4"} : <i7> to <i6>
    %65 = cmpi ult, %63#1, %58 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i7>
    %66:3 = fork [3] %65 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i1>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %falseResult_10, %memEnd_2, %memEnd_0, %memEnd, %0#4 : <i32>, <>, <>, <>, <>
  }
}


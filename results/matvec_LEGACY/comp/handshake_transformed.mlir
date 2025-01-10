module {
  handshake.func @matvec(%arg0: memref<400xi32>, %arg1: memref<20xi32>, %arg2: memref<20xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["m", "v", "out", "m_start", "v_start", "out_start", "start"], resNames = ["out0", "m_end", "v_end", "out_end", "end"]} {
    %0:3 = fork [3] %arg6 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %memEnd = mem_controller[%arg2 : memref<20xi32>] %arg5 (%59, %addressResult_15, %dataResult_16) %72#2 {connectedBlocks = [3 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>, !handshake.channel<i5>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<20xi32>] %arg4 (%addressResult) %72#1 {connectedBlocks = [2 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i5>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<400xi32>] %arg3 (%addressResult_5) %72#0 {connectedBlocks = [2 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i9>) -> !handshake.channel<i32>
    %1 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = false} : <>, <i1>
    %2 = br %1 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <i1>
    %3 = extsi %2 {handshake.bb = 0 : ui32, handshake.name = "extsi11"} : <i1> to <i6>
    %4 = br %0#2 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %5 = mux %index [%3, %trueResult_17] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i6>
    %result, %index = control_merge %4, %trueResult_19  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %6:2 = fork [2] %result {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <>
    %7 = constant %6#0 {handshake.bb = 1 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %8:2 = fork [2] %7 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %9 = br %8#0 {handshake.bb = 1 : ui32, handshake.name = "br4"} : <i1>
    %10 = extsi %9 {handshake.bb = 1 : ui32, handshake.name = "extsi10"} : <i1> to <i6>
    %11 = br %8#1 {handshake.bb = 1 : ui32, handshake.name = "br5"} : <i1>
    %12 = extsi %11 {handshake.bb = 1 : ui32, handshake.name = "extsi12"} : <i1> to <i32>
    %13 = br %5 {handshake.bb = 1 : ui32, handshake.name = "br6"} : <i6>
    %14 = br %6#1 {handshake.bb = 1 : ui32, handshake.name = "br7"} : <>
    %15 = mux %26#1 [%10, %trueResult] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i6>
    %16:3 = fork [3] %15 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i6>
    %17 = extsi %16#0 {handshake.bb = 2 : ui32, handshake.name = "extsi13"} : <i6> to <i9>
    %18 = extsi %16#2 {handshake.bb = 2 : ui32, handshake.name = "extsi14"} : <i6> to <i7>
    %19 = trunci %16#1 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i6> to <i5>
    %20 = mux %26#2 [%12, %trueResult_7] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %21 = mux %26#0 [%13, %trueResult_9] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i6>
    %22:3 = fork [3] %21 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i6>
    %23 = trunci %22#0 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i6> to <i5>
    %24 = extsi %23 {handshake.bb = 2 : ui32, handshake.name = "extsi15"} : <i5> to <i9>
    %25 = extsi %22#2 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i6> to <i8>
    %result_3, %index_4 = control_merge %14, %trueResult_11  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %26:3 = fork [3] %index_4 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i1>
    %27 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %28 = constant %27 {handshake.bb = 2 : ui32, handshake.name = "constant5", value = 20 : i6} : <>, <i6>
    %29 = extsi %28 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i6> to <i7>
    %30 = source {handshake.bb = 2 : ui32, handshake.name = "source1"} : <>
    %31 = constant %30 {handshake.bb = 2 : ui32, handshake.name = "constant14", value = 1 : i2} : <>, <i2>
    %32 = extsi %31 {handshake.bb = 2 : ui32, handshake.name = "extsi18"} : <i2> to <i7>
    %33 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %34 = constant %33 {handshake.bb = 2 : ui32, handshake.name = "constant15", value = 4 : i4} : <>, <i4>
    %35 = extui %34 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i4> to <i9>
    %36 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %37 = constant %36 {handshake.bb = 2 : ui32, handshake.name = "constant16", value = 2 : i3} : <>, <i3>
    %38 = extui %37 {handshake.bb = 2 : ui32, handshake.name = "extui1"} : <i3> to <i8>
    %addressResult, %dataResult = load[%19] %outputs {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i5>, <i32>
    %39 = shli %25, %38 {handshake.bb = 2 : ui32, handshake.name = "shli3"} : <i8>
    %40 = extsi %39 {handshake.bb = 2 : ui32, handshake.name = "extsi19"} : <i8> to <i9>
    %41 = shli %24, %35 {handshake.bb = 2 : ui32, handshake.name = "shli2"} : <i9>
    %42 = addi %40, %41 {handshake.bb = 2 : ui32, handshake.name = "addi4"} : <i9>
    %43 = addi %17, %42 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i9>
    %addressResult_5, %dataResult_6 = load[%43] %outputs_1 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i9>, <i32>
    %44 = muli %dataResult, %dataResult_6 {handshake.bb = 2 : ui32, handshake.name = "muli0"} : <i32>
    %45 = addi %20, %44 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %46 = addi %18, %32 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i7>
    %47:2 = fork [2] %46 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i7>
    %48 = trunci %47#0 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i7> to <i6>
    %49 = cmpi ult, %47#1, %29 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i7>
    %50:4 = fork [4] %49 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i1>
    %trueResult, %falseResult = cond_br %50#0, %48 {handshake.bb = 2 : ui32, handshake.name = "cond_br2"} : <i1>, <i6>
    sink %falseResult {handshake.name = "sink0"} : <i6>
    %trueResult_7, %falseResult_8 = cond_br %50#2, %45 {handshake.bb = 2 : ui32, handshake.name = "cond_br3"} : <i1>, <i32>
    %trueResult_9, %falseResult_10 = cond_br %50#1, %22#1 {handshake.bb = 2 : ui32, handshake.name = "cond_br4"} : <i1>, <i6>
    %trueResult_11, %falseResult_12 = cond_br %50#3, %result_3 {handshake.bb = 2 : ui32, handshake.name = "cond_br5"} : <i1>, <>
    %51 = merge %falseResult_10 {handshake.bb = 3 : ui32, handshake.name = "merge0"} : <i6>
    %52:2 = fork [2] %51 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i6>
    %53 = extsi %52#1 {handshake.bb = 3 : ui32, handshake.name = "extsi20"} : <i6> to <i7>
    %54 = trunci %52#0 {handshake.bb = 3 : ui32, handshake.name = "trunci3"} : <i6> to <i5>
    %55 = merge %falseResult_8 {handshake.bb = 3 : ui32, handshake.name = "merge1"} : <i32>
    %56:2 = fork [2] %55 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i32>
    %result_13, %index_14 = control_merge %falseResult_12  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    sink %index_14 {handshake.name = "sink1"} : <i1>
    %57:2 = fork [2] %result_13 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <>
    %58 = constant %57#0 {handshake.bb = 3 : ui32, handshake.name = "constant17", value = 1 : i2} : <>, <i2>
    %59 = extsi %58 {handshake.bb = 3 : ui32, handshake.name = "extsi7"} : <i2> to <i32>
    %60 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %61 = constant %60 {handshake.bb = 3 : ui32, handshake.name = "constant18", value = 20 : i6} : <>, <i6>
    %62 = extsi %61 {handshake.bb = 3 : ui32, handshake.name = "extsi21"} : <i6> to <i7>
    %63 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %64 = constant %63 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 1 : i2} : <>, <i2>
    %65 = extsi %64 {handshake.bb = 3 : ui32, handshake.name = "extsi22"} : <i2> to <i7>
    %addressResult_15, %dataResult_16 = store[%54] %56#0 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i5>, <i32>
    %66 = addi %53, %65 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i7>
    %67:2 = fork [2] %66 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i7>
    %68 = trunci %67#0 {handshake.bb = 3 : ui32, handshake.name = "trunci4"} : <i7> to <i6>
    %69 = cmpi ult, %67#1, %62 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i7>
    %70:3 = fork [3] %69 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i1>
    %trueResult_17, %falseResult_18 = cond_br %70#0, %68 {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <i6>
    sink %falseResult_18 {handshake.name = "sink2"} : <i6>
    %trueResult_19, %falseResult_20 = cond_br %70#1, %57#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %trueResult_21, %falseResult_22 = cond_br %70#2, %56#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    sink %trueResult_21 {handshake.name = "sink3"} : <i32>
    %71 = merge %falseResult_22 {handshake.bb = 4 : ui32, handshake.name = "merge2"} : <i32>
    %result_23, %index_24 = control_merge %falseResult_20  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_24 {handshake.name = "sink4"} : <i1>
    %72:3 = fork [3] %result_23 {handshake.bb = 4 : ui32, handshake.name = "fork13"} : <>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %71, %memEnd_2, %memEnd_0, %memEnd, %0#1 : <i32>, <>, <>, <>, <>
  }
}


module {
  handshake.func @spmv(%arg0: !handshake.channel<i32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: memref<10xi32>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["n", "row", "col", "val", "vec", "out", "row_start", "col_start", "val_start", "vec_start", "out_start", "start"], cfg.edges = "[0,1][2,3][4,3][1,2,6,cmpi0][3,4,5,cmpi1][5,1]", resNames = ["out0", "row_end", "col_end", "val_end", "vec_end", "out_end", "end"]} {
    %0:9 = fork [9] %arg11 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %memEnd = mem_controller[%arg5 : memref<10xi32>] %arg10 (%49, %addressResult_25, %dataResult_26) %0#4 {connectedBlocks = [5 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i32>, !handshake.channel<i4>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_21) %0#3 {connectedBlocks = [4 : i32], handshake.name = "mem_controller6"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_19) %0#2 {connectedBlocks = [4 : i32], handshake.name = "mem_controller7"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_3, %memEnd_4 = mem_controller[%arg2 : memref<10xi32>] %arg7 (%addressResult_17) %0#1 {connectedBlocks = [4 : i32], handshake.name = "mem_controller8"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_5:2, %memEnd_6 = mem_controller[%arg1 : memref<10xi32>] %arg6 (%addressResult, %addressResult_9) %0#0 {connectedBlocks = [2 : i32], handshake.name = "mem_controller9"} :    (!handshake.channel<i4>, !handshake.channel<i4>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %1 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %2 = constant %1 {handshake.bb = 0 : ui32, handshake.name = "constant8", value = false} : <>, <i1>
    %3:2 = fork [2] %2 {handshake.bb = 0 : ui32, handshake.name = "fork1"} : <i1>
    %4 = extsi %3#0 {handshake.bb = 0 : ui32, handshake.name = "extsi0"} : <i1> to <i32>
    %5 = extsi %3#1 {handshake.bb = 0 : ui32, handshake.name = "extsi1"} : <i1> to <i32>
    %trueResult, %falseResult = cond_br %15#1, %11 {handshake.bb = 1 : ui32, handshake.name = "cond_br16"} : <i1>, <i32>
    sink %trueResult {handshake.name = "sink0"} : <i32>
    %trueResult_7, %falseResult_8 = cond_br %15#2, %10#1 {handshake.bb = 1 : ui32, handshake.name = "cond_br17"} : <i1>, <i32>
    sink %falseResult_8 {handshake.name = "sink1"} : <i32>
    %6 = constant %0#8 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %7 = merge %6, %15#3 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %8:3 = fork [3] %7 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %9 = mux %8#2 [%arg0, %trueResult_7] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %10:2 = fork [2] %9 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <i32>
    %11 = mux %8#1 [%5, %22#0] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %12 = mux %8#0 [%4, %53] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %13:2 = fork [2] %12 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i32>
    %14 = cmpi ult, %13#1, %10#0 {handshake.bb = 1 : ui32, handshake.name = "cmpi0"} : <i32>
    %15:4 = fork [4] %14 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i1>
    %16 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %17 = constant %16 {handshake.bb = 2 : ui32, handshake.name = "constant10", value = 1 : i2} : <>, <i2>
    %18 = extsi %17 {handshake.bb = 2 : ui32, handshake.name = "extsi7"} : <i2> to <i4>
    %19 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %20 = constant %19 {handshake.bb = 2 : ui32, handshake.name = "constant11", value = false} : <>, <i1>
    %21 = extsi %20 {handshake.bb = 2 : ui32, handshake.name = "extsi3"} : <i1> to <i32>
    %addressResult, %dataResult = load[%47] %outputs_5#0 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i4>, <i32>
    %22:2 = fork [2] %dataResult {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i32>
    %23 = addi %45, %18 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i4>
    %addressResult_9, %dataResult_10 = load[%23] %outputs_5#1 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i4>, <i32>
    %trueResult_11, %falseResult_12 = cond_br %33#2, %28#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br18"} : <i1>, <i32>
    sink %falseResult_12 {handshake.name = "sink2"} : <i32>
    %24 = constant %0#7 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant9", value = false} : <>, <i1>
    %25 = merge %24, %33#3 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge3"} : <i1>
    %26:3 = fork [3] %25 {handshake.bb = 3 : ui32, handshake.name = "fork7"} : <i1>
    %27 = mux %26#2 [%dataResult_10, %trueResult_11] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %28:2 = fork [2] %27 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i32>
    %29 = mux %26#1 [%21, %42] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %30 = mux %26#0 [%22#1, %43] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %31:2 = fork [2] %30 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i32>
    %32 = cmpi slt, %31#1, %28#0 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %33:4 = fork [4] %32 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i1>
    %trueResult_13, %falseResult_14 = cond_br %33#1, %29 {handshake.bb = 4 : ui32, handshake.name = "cond_br19"} : <i1>, <i32>
    %trueResult_15, %falseResult_16 = cond_br %33#0, %31#0 {handshake.bb = 4 : ui32, handshake.name = "cond_br20"} : <i1>, <i32>
    sink %falseResult_16 {handshake.name = "sink3"} : <i32>
    %34:3 = fork [3] %trueResult_15 {handshake.bb = 4 : ui32, handshake.name = "fork11"} : <i32>
    %35 = trunci %34#0 {handshake.bb = 4 : ui32, handshake.name = "trunci0"} : <i32> to <i4>
    %36 = trunci %34#1 {handshake.bb = 4 : ui32, handshake.name = "trunci1"} : <i32> to <i4>
    %37 = source {handshake.bb = 4 : ui32, handshake.name = "source4"} : <>
    %38 = constant %37 {handshake.bb = 4 : ui32, handshake.name = "constant12", value = 1 : i2} : <>, <i2>
    %39 = extsi %38 {handshake.bb = 4 : ui32, handshake.name = "extsi4"} : <i2> to <i32>
    %addressResult_17, %dataResult_18 = load[%36] %outputs_3 {handshake.bb = 4 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load7"} : <i4>, <i32>
    %40 = trunci %dataResult_18 {handshake.bb = 4 : ui32, handshake.name = "trunci2"} : <i32> to <i4>
    %addressResult_19, %dataResult_20 = load[%35] %outputs_1 {handshake.bb = 4 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load8"} : <i4>, <i32>
    %addressResult_21, %dataResult_22 = load[%40] %outputs {handshake.bb = 4 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load9"} : <i4>, <i32>
    %41 = muli %dataResult_20, %dataResult_22 {handshake.bb = 4 : ui32, handshake.name = "muli0"} : <i32>
    %42 = addi %trueResult_13, %41 {handshake.bb = 4 : ui32, handshake.name = "addi0"} : <i32>
    %43 = addi %34#2, %39 {handshake.bb = 4 : ui32, handshake.name = "addi2"} : <i32>
    %trueResult_23, %falseResult_24 = cond_br %15#0, %13#0 {handshake.bb = 5 : ui32, handshake.name = "cond_br21"} : <i1>, <i32>
    sink %falseResult_24 {handshake.name = "sink4"} : <i32>
    %44:4 = fork [4] %trueResult_23 {handshake.bb = 5 : ui32, handshake.name = "fork12"} : <i32>
    %45 = trunci %44#0 {handshake.bb = 5 : ui32, handshake.name = "trunci3"} : <i32> to <i4>
    %46 = trunci %44#1 {handshake.bb = 5 : ui32, handshake.name = "trunci4"} : <i32> to <i4>
    %47 = trunci %44#2 {handshake.bb = 5 : ui32, handshake.name = "trunci5"} : <i32> to <i4>
    %48 = constant %0#5 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = 1 : i2} : <>, <i2>
    %49 = extsi %48 {handshake.bb = 5 : ui32, handshake.name = "extsi5"} : <i2> to <i32>
    %50 = source {handshake.bb = 5 : ui32, handshake.name = "source5"} : <>
    %51 = constant %50 {handshake.bb = 5 : ui32, handshake.name = "constant14", value = 1 : i2} : <>, <i2>
    %52 = extsi %51 {handshake.bb = 5 : ui32, handshake.name = "extsi6"} : <i2> to <i32>
    %addressResult_25, %dataResult_26 = store[%46] %falseResult_14 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i4>, <i32>
    %53 = addi %44#3, %52 {handshake.bb = 5 : ui32, handshake.name = "addi3"} : <i32>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %falseResult, %memEnd_6, %memEnd_4, %memEnd_2, %memEnd_0, %memEnd, %0#6 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


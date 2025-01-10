module {
  handshake.func @spmv(%arg0: !handshake.channel<i32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: memref<10xi32>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["n", "row", "col", "val", "vec", "out", "row_start", "col_start", "val_start", "vec_start", "out_start", "start"], cfg.edges = "[0,1][2,3][4,3][1,2,6,cmpi0][3,4,5,cmpi1][5,1]", resNames = ["out0", "row_end", "col_end", "val_end", "vec_end", "out_end", "end"]} {
    %0:10 = fork [10] %arg11 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %memEnd = mem_controller[%arg5 : memref<10xi32>] %arg10 (%50, %addressResult_29, %dataResult_30) %0#4 {connectedBlocks = [5 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i32>, !handshake.channel<i4>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_25) %0#3 {connectedBlocks = [4 : i32], handshake.name = "mem_controller6"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_23) %0#2 {connectedBlocks = [4 : i32], handshake.name = "mem_controller7"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_3, %memEnd_4 = mem_controller[%arg2 : memref<10xi32>] %arg7 (%addressResult_21) %0#1 {connectedBlocks = [4 : i32], handshake.name = "mem_controller8"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_5:2, %memEnd_6 = mem_controller[%arg1 : memref<10xi32>] %arg6 (%addressResult, %addressResult_11) %0#0 {connectedBlocks = [2 : i32], handshake.name = "mem_controller9"} :    (!handshake.channel<i4>, !handshake.channel<i4>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %trueResult, %falseResult = cond_br %14#2, %10 {handshake.bb = 1 : ui32, handshake.name = "cond_br26"} : <i1>, <i32>
    sink %trueResult {handshake.name = "sink0"} : <i32>
    %trueResult_7, %falseResult_8 = cond_br %14#3, %9#1 {handshake.bb = 1 : ui32, handshake.name = "cond_br27"} : <i1>, <i32>
    sink %falseResult_8 {handshake.name = "sink1"} : <i32>
    %1 = constant %0#9 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %2:3 = fork [3] %1 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %3 = extsi %2#0 {handshake.bb = 1 : ui32, handshake.name = "extsi0"} : <i1> to <i32>
    %4 = extsi %2#1 {handshake.bb = 1 : ui32, handshake.name = "extsi1"} : <i1> to <i32>
    %5 = merge %2#2, %14#4 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %6:4 = fork [4] %5 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %7 = mux %6#3 [%0#8, %15#3] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %8 = mux %6#2 [%arg0, %trueResult_7] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %9:2 = fork [2] %8 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <i32>
    %10 = mux %6#1 [%4, %22#0] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %11 = mux %6#0 [%3, %51] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %12:2 = fork [2] %11 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i32>
    %13 = cmpi ult, %12#1, %9#0 {handshake.bb = 1 : ui32, handshake.name = "cmpi0"} : <i32>
    %14:5 = fork [5] %13 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i1>
    %trueResult_9, %falseResult_10 = cond_br %14#1, %7 {handshake.bb = 2 : ui32, handshake.name = "cond_br28"} : <i1>, <>
    sink %falseResult_10 {handshake.name = "sink2"} : <>
    %15:4 = fork [4] %trueResult_9 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <>
    %16 = constant %15#1 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 1 : i2} : <>, <i2>
    %17:2 = fork [2] %16 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i2>
    %18 = extsi %17#0 {handshake.bb = 2 : ui32, handshake.name = "extsi7"} : <i2> to <i4>
    %19 = extsi %17#1 {handshake.bb = 2 : ui32, handshake.name = "extsi2"} : <i2> to <i32>
    %20 = constant %15#0 {handshake.bb = 2 : ui32, handshake.name = "constant9", value = false} : <>, <i1>
    %21 = extsi %20 {handshake.bb = 2 : ui32, handshake.name = "extsi4"} : <i1> to <i32>
    %addressResult, %dataResult = load[%48] %outputs_5#0 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i4>, <i32>
    %22:2 = fork [2] %dataResult {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i32>
    %23 = addi %46, %18 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i4>
    %addressResult_11, %dataResult_12 = load[%23] %outputs_5#1 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i4>, <i32>
    %trueResult_13, %falseResult_14 = cond_br %34#3, %29#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br29"} : <i1>, <i32>
    sink %falseResult_14 {handshake.name = "sink3"} : <i32>
    %24 = constant %0#7 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant13", value = false} : <>, <i1>
    %25 = merge %24, %34#4 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge7"} : <i1>
    %26:4 = fork [4] %25 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i1>
    %27 = mux %26#3 [%15#2, %38#1] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <>
    %28 = mux %26#2 [%dataResult_12, %trueResult_13] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %29:2 = fork [2] %28 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i32>
    %30 = mux %26#1 [%21, %43] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %31 = mux %26#0 [%22#1, %44] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %32:2 = fork [2] %31 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i32>
    %33 = cmpi slt, %32#1, %29#0 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %34:5 = fork [5] %33 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i1>
    %trueResult_15, %falseResult_16 = cond_br %34#2, %30 {handshake.bb = 4 : ui32, handshake.name = "cond_br30"} : <i1>, <i32>
    %trueResult_17, %falseResult_18 = cond_br %34#1, %32#0 {handshake.bb = 4 : ui32, handshake.name = "cond_br31"} : <i1>, <i32>
    sink %falseResult_18 {handshake.name = "sink4"} : <i32>
    %35:3 = fork [3] %trueResult_17 {handshake.bb = 4 : ui32, handshake.name = "fork13"} : <i32>
    %36 = trunci %35#0 {handshake.bb = 4 : ui32, handshake.name = "trunci0"} : <i32> to <i4>
    %37 = trunci %35#1 {handshake.bb = 4 : ui32, handshake.name = "trunci1"} : <i32> to <i4>
    %trueResult_19, %falseResult_20 = cond_br %34#0, %27 {handshake.bb = 4 : ui32, handshake.name = "cond_br32"} : <i1>, <>
    sink %falseResult_20 {handshake.name = "sink5"} : <>
    %38:2 = fork [2] %trueResult_19 {handshake.bb = 4 : ui32, handshake.name = "fork14"} : <>
    %39 = constant %38#0 {handshake.bb = 4 : ui32, handshake.name = "constant10", value = 1 : i2} : <>, <i2>
    %40 = extsi %39 {handshake.bb = 4 : ui32, handshake.name = "extsi5"} : <i2> to <i32>
    %addressResult_21, %dataResult_22 = load[%37] %outputs_3 {handshake.bb = 4 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load7"} : <i4>, <i32>
    %41 = trunci %dataResult_22 {handshake.bb = 4 : ui32, handshake.name = "trunci2"} : <i32> to <i4>
    %addressResult_23, %dataResult_24 = load[%36] %outputs_1 {handshake.bb = 4 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load8"} : <i4>, <i32>
    %addressResult_25, %dataResult_26 = load[%41] %outputs {handshake.bb = 4 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load9"} : <i4>, <i32>
    %42 = muli %dataResult_24, %dataResult_26 {handshake.bb = 4 : ui32, handshake.name = "muli0"} : <i32>
    %43 = addi %trueResult_15, %42 {handshake.bb = 4 : ui32, handshake.name = "addi0"} : <i32>
    %44 = addi %35#2, %40 {handshake.bb = 4 : ui32, handshake.name = "addi2"} : <i32>
    %trueResult_27, %falseResult_28 = cond_br %14#0, %12#0 {handshake.bb = 5 : ui32, handshake.name = "cond_br33"} : <i1>, <i32>
    sink %falseResult_28 {handshake.name = "sink6"} : <i32>
    %45:4 = fork [4] %trueResult_27 {handshake.bb = 5 : ui32, handshake.name = "fork15"} : <i32>
    %46 = trunci %45#0 {handshake.bb = 5 : ui32, handshake.name = "trunci3"} : <i32> to <i4>
    %47 = trunci %45#1 {handshake.bb = 5 : ui32, handshake.name = "trunci4"} : <i32> to <i4>
    %48 = trunci %45#2 {handshake.bb = 5 : ui32, handshake.name = "trunci5"} : <i32> to <i4>
    %49 = constant %0#5 {handshake.bb = 5 : ui32, handshake.name = "constant11", value = 1 : i2} : <>, <i2>
    %50 = extsi %49 {handshake.bb = 5 : ui32, handshake.name = "extsi6"} : <i2> to <i32>
    %addressResult_29, %dataResult_30 = store[%47] %falseResult_16 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i4>, <i32>
    %51 = addi %45#3, %19 {handshake.bb = 5 : ui32, handshake.name = "addi3"} : <i32>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %falseResult, %memEnd_6, %memEnd_4, %memEnd_2, %memEnd_0, %memEnd, %0#6 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


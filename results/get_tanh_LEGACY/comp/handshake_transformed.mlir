module {
  handshake.func @get_tanh(%arg0: memref<1000xf32>, %arg1: memref<1000xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, ...) -> (!handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "addr", "A_start", "addr_start", "start"], resNames = ["A_end", "addr_end", "end"]} {
    %0:3 = fork [3] %arg4 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %outputs, %memEnd = mem_controller[%arg1 : memref<1000xi32>] %arg3 (%addressResult) %54#1 {connectedBlocks = [1 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %1:2 = lsq[%arg0 : memref<1000xf32>] (%arg2, %9#0, %addressResult_0, %42#0, %addressResult_14, %dataResult_15, %54#0)  {groupSizes = [1 : i32, 1 : i32], handshake.name = "lsq1"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i10>, !handshake.control<>, !handshake.channel<i10>, !handshake.channel<f32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.control<>)
    %2 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %3 = br %2 {handshake.bb = 0 : ui32, handshake.name = "br1"} : <i1>
    %4 = extsi %3 {handshake.bb = 0 : ui32, handshake.name = "extsi3"} : <i1> to <i11>
    %5 = br %0#2 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %6 = mux %index [%4, %trueResult_16] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i11>
    %7:2 = fork [2] %6 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i11>
    %8 = trunci %7#0 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i11> to <i10>
    %result, %index = control_merge %5, %trueResult_18  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %9:3 = lazy_fork [3] %result {handshake.bb = 1 : ui32, handshake.name = "lazy_fork0"} : <>
    %10 = fork [1] %9#2 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <>
    %11 = constant %10 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = 1.000000e+00 : f32} : <>, <f32>
    %12:2 = fork [2] %11 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <f32>
    %addressResult, %dataResult = load[%8] %outputs {handshake.bb = 1 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i10>, <i32>
    %13:2 = fork [2] %dataResult {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i32>
    %14 = trunci %13#0 {handshake.bb = 1 : ui32, handshake.name = "trunci1"} : <i32> to <i10>
    %15 = trunci %13#1 {handshake.bb = 1 : ui32, handshake.name = "trunci2"} : <i32> to <i10>
    %addressResult_0, %dataResult_1 = load[%15] %1#0 {handshake.bb = 1 : ui32, handshake.deps = #handshake<deps[<"store1" (0)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i10>, <f32>
    %16:2 = fork [2] %dataResult_1 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <f32>
    %17 = cmpf oge, %16#0, %12#1 {handshake.bb = 1 : ui32, handshake.name = "cmpf0"} : <f32>
    %18:5 = fork [5] %17 {handshake.bb = 1 : ui32, handshake.name = "fork6"} : <i1>
    %trueResult, %falseResult = cond_br %18#4, %12#0 {handshake.bb = 1 : ui32, handshake.name = "cond_br2"} : <i1>, <f32>
    sink %falseResult {handshake.name = "sink0"} : <f32>
    %trueResult_2, %falseResult_3 = cond_br %18#1, %7#1 {handshake.bb = 1 : ui32, handshake.name = "cond_br3"} : <i1>, <i11>
    %trueResult_4, %falseResult_5 = cond_br %18#0, %14 {handshake.bb = 1 : ui32, handshake.name = "cond_br4"} : <i1>, <i10>
    %trueResult_6, %falseResult_7 = cond_br %18#3, %9#1 {handshake.bb = 1 : ui32, handshake.name = "cond_br5"} : <i1>, <>
    %trueResult_8, %falseResult_9 = cond_br %18#2, %16#1 {handshake.bb = 1 : ui32, handshake.name = "cond_br6"} : <i1>, <f32>
    sink %trueResult_8 {handshake.name = "sink1"} : <f32>
    %19 = merge %falseResult_3 {handshake.bb = 2 : ui32, handshake.name = "merge0"} : <i11>
    %20 = merge %falseResult_5 {handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i10>
    %21 = merge %falseResult_9 {handshake.bb = 2 : ui32, handshake.name = "merge2"} : <f32>
    %22:5 = fork [5] %21 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <f32>
    %result_10, %index_11 = control_merge %falseResult_7  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    sink %index_11 {handshake.name = "sink2"} : <i1>
    %23 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %24 = constant %23 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 3.70476198 : f32} : <>, <f32>
    %25 = source {handshake.bb = 2 : ui32, handshake.name = "source1"} : <>
    %26 = constant %25 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 19.5238094 : f32} : <>, <f32>
    %27 = mulf %22#3, %22#4 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf0"} : <f32>
    %28 = addf %27, %26 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf0"} : <f32>
    %29 = mulf %28, %22#2 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf1"} : <f32>
    %30 = mulf %29, %22#1 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf2"} : <f32>
    %31 = addf %30, %24 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf1"} : <f32>
    %32 = mulf %31, %22#0 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf3"} : <f32>
    %33 = br %32 {handshake.bb = 2 : ui32, handshake.name = "br4"} : <f32>
    %34 = br %19 {handshake.bb = 2 : ui32, handshake.name = "br5"} : <i11>
    %35 = br %20 {handshake.bb = 2 : ui32, handshake.name = "br6"} : <i10>
    %36 = br %result_10 {handshake.bb = 2 : ui32, handshake.name = "br7"} : <>
    %37 = mux %41#2 [%trueResult, %33] {handshake.bb = 3 : ui32, handshake.name = "mux1"} : <i1>, <f32>
    %38 = mux %41#1 [%trueResult_2, %34] {handshake.bb = 3 : ui32, handshake.name = "mux2"} : <i1>, <i11>
    %39 = extsi %38 {handshake.bb = 3 : ui32, handshake.name = "extsi4"} : <i11> to <i12>
    %40 = mux %41#0 [%trueResult_4, %35] {handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i10>
    %result_12, %index_13 = control_merge %trueResult_6, %36  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %41:3 = fork [3] %index_13 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i1>
    %42:2 = lazy_fork [2] %result_12 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork1"} : <>
    %43 = source {handshake.bb = 3 : ui32, handshake.name = "source2"} : <>
    %44 = constant %43 {handshake.bb = 3 : ui32, handshake.name = "constant1", value = 1000 : i11} : <>, <i11>
    %45 = extsi %44 {handshake.bb = 3 : ui32, handshake.name = "extsi5"} : <i11> to <i12>
    %46 = source {handshake.bb = 3 : ui32, handshake.name = "source3"} : <>
    %47 = constant %46 {handshake.bb = 3 : ui32, handshake.name = "constant3", value = 1 : i2} : <>, <i2>
    %48 = extsi %47 {handshake.bb = 3 : ui32, handshake.name = "extsi6"} : <i2> to <i12>
    %addressResult_14, %dataResult_15 = store[%40] %37 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load3" (0)>, <"store1" (0)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i10>, <f32>
    %49 = addi %39, %48 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i12>
    %50:2 = fork [2] %49 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i12>
    %51 = trunci %50#0 {handshake.bb = 3 : ui32, handshake.name = "trunci3"} : <i12> to <i11>
    %52 = cmpi ult, %50#1, %45 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i12>
    %53:2 = fork [2] %52 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i1>
    %trueResult_16, %falseResult_17 = cond_br %53#0, %51 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <i11>
    sink %falseResult_17 {handshake.name = "sink3"} : <i11>
    %trueResult_18, %falseResult_19 = cond_br %53#1, %42#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <>
    %result_20, %index_21 = control_merge %falseResult_19  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_21 {handshake.name = "sink4"} : <i1>
    %54:2 = fork [2] %result_20 {handshake.bb = 4 : ui32, handshake.name = "fork11"} : <>
    end {handshake.bb = 4 : ui32, handshake.name = "end0"} %1#1, %memEnd, %0#1 : <>, <>, <>
  }
}


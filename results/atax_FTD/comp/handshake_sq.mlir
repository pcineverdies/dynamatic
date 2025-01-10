module {
  handshake.func @atax(%arg0: memref<100xf32>, %arg1: memref<10xf32>, %arg2: memref<10xf32>, %arg3: memref<10xf32>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "x", "y", "tmp", "A_start", "x_start", "y_start", "tmp_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][4,1,5,cmpi2][1,2][3,3,4,cmpi1]", resNames = ["out0", "A_end", "x_end", "y_end", "tmp_end", "end"]} {
    %0:3 = lsq[%arg3 : memref<10xf32>] (%arg7, %7#1, %addressResult, %48#1, %addressResult_38, %dataResult_39, %53#1, %addressResult_40, %53#1)  {groupSizes = [1 : i32, 1 : i32, 1 : i32], handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<f32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.channel<f32>, !handshake.control<>)
    %1:2 = lsq[%arg2 : memref<10xf32>] (%arg6, %32#1, %addressResult_24, %addressResult_28, %dataResult_29, %arg8)  {groupSizes = [2 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<f32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg1 : memref<10xf32>] %arg5 (%addressResult_12) %arg8 {connectedBlocks = [2 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i32>) -> !handshake.channel<f32>
    %outputs_0:2, %memEnd_1 = mem_controller[%arg0 : memref<100xf32>] %arg4 (%addressResult_10, %addressResult_26) %arg8 {connectedBlocks = [2 : i32, 3 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<f32>, !handshake.channel<f32>)
    %2 = constant %arg8 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %3 = mux %6 [%arg8, %trueResult_32] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <>
    %4 = constant %arg8 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant16", value = false} : <>, <i1>
    %5 = mux %6 [%arg8, %trueResult_30] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <>
    %6 = merge %4, %52 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge1"} : <i1>
    %7:2 = lazy_fork [2] %3 {handshake.bb = 1 : ui32, handshake.name = "lazy_fork0"} : <>
    %8 = mux %6 [%arg8, %trueResult_36] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %9 = mux %6 [%2, %trueResult_34] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %10 = constant %8 {handshake.bb = 1 : ui32, handshake.name = "constant5", value = 0 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%9] %0#0 {handshake.bb = 1 : ui32, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i32>, <f32>
    %trueResult, %falseResult = cond_br %28, %17 {handshake.bb = 2 : ui32, handshake.name = "cond_br35"} : <i1>, <i32>
    %trueResult_2, %falseResult_3 = cond_br %28, %26 {handshake.bb = 2 : ui32, handshake.name = "cond_br36"} : <i1>, <f32>
    %trueResult_4, %falseResult_5 = cond_br %28, %27 {handshake.bb = 2 : ui32, handshake.name = "cond_br37"} : <i1>, <i32>
    %trueResult_6, %falseResult_7 = cond_br %28, %14 {handshake.bb = 2 : ui32, handshake.name = "cond_br38"} : <i1>, <>
    %trueResult_8, %falseResult_9 = cond_br %28, %13 {handshake.bb = 2 : ui32, handshake.name = "cond_br39"} : <i1>, <i32>
    %11 = constant %arg8 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant23", value = false} : <>, <i1>
    %12 = merge %11, %28 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge11"} : <i1>
    %13 = mux %12 [%9, %trueResult_8] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux11"} : <i1>, <i32>
    %14 = mux %12 [%8, %trueResult_6] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux13"} : <i1>, <>
    %15 = mux %12 [%dataResult, %trueResult_2] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux17"} : <i1>, <f32>
    %16 = mux %12 [%10, %trueResult_4] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux18"} : <i1>, <i32>
    %17 = constant %14 {handshake.bb = 2 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %18 = constant %14 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 10 : i32} : <>, <i32>
    %19 = constant %14 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 1 : i32} : <>, <i32>
    %20 = constant %14 {handshake.bb = 2 : ui32, handshake.name = "constant9", value = 3 : i32} : <>, <i32>
    %21 = shli %13, %19 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %22 = shli %13, %20 {handshake.bb = 2 : ui32, handshake.name = "shli1"} : <i32>
    %23 = addi %21, %22 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i32>
    %24 = addi %16, %23 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %addressResult_10, %dataResult_11 = load[%24] %outputs_0#0 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i32>, <f32>
    %addressResult_12, %dataResult_13 = load[%16] %outputs {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load2"} : <i32>, <f32>
    %25 = mulf %dataResult_11, %dataResult_13 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf0"} : <f32>
    %26 = addf %15, %25 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf0"} : <f32>
    %27 = addi %16, %19 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i32>
    %28 = cmpi ult, %27, %18 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_14, %falseResult_15 = cond_br %47, %32#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %29 = constant %arg8 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant17", value = false} : <>, <i1>
    %30 = mux %31 [%5, %trueResult_14] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <>
    %31 = merge %29, %47 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge5"} : <i1>
    %32:2 = lazy_fork [2] %30 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_16, %falseResult_17 = cond_br %47, %46 {handshake.bb = 3 : ui32, handshake.name = "cond_br40"} : <i1>, <i32>
    %trueResult_18, %falseResult_19 = cond_br %47, %35 {handshake.bb = 3 : ui32, handshake.name = "cond_br41"} : <i1>, <>
    %trueResult_20, %falseResult_21 = cond_br %47, %34 {handshake.bb = 3 : ui32, handshake.name = "cond_br42"} : <i1>, <i32>
    %trueResult_22, %falseResult_23 = cond_br %47, %33 {handshake.bb = 3 : ui32, handshake.name = "cond_br43"} : <i1>, <f32>
    %33 = mux %31 [%falseResult_3, %trueResult_22] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux19"} : <i1>, <f32>
    %34 = mux %31 [%9, %trueResult_20] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux20"} : <i1>, <i32>
    %35 = mux %31 [%8, %trueResult_18] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux24"} : <i1>, <>
    %36 = mux %31 [%falseResult, %trueResult_16] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux25"} : <i1>, <i32>
    %37 = constant %35 {handshake.bb = 3 : ui32, handshake.name = "constant10", value = 10 : i32} : <>, <i32>
    %38 = constant %35 {handshake.bb = 3 : ui32, handshake.name = "constant11", value = 1 : i32} : <>, <i32>
    %39 = constant %35 {handshake.bb = 3 : ui32, handshake.name = "constant12", value = 3 : i32} : <>, <i32>
    %addressResult_24, %dataResult_25 = load[%36] %1#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i32>, <f32>
    %40 = shli %34, %38 {handshake.bb = 3 : ui32, handshake.name = "shli2"} : <i32>
    %41 = shli %34, %39 {handshake.bb = 3 : ui32, handshake.name = "shli3"} : <i32>
    %42 = addi %40, %41 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i32>
    %43 = addi %36, %42 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i32>
    %addressResult_26, %dataResult_27 = load[%43] %outputs_0#1 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i32>, <f32>
    %44 = mulf %dataResult_27, %33 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "mulf1"} : <f32>
    %45 = addf %dataResult_25, %44 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "addf1"} : <f32>
    %addressResult_28, %dataResult_29 = store[%36] %45 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load3" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i32>, <f32>
    %46 = addi %36, %38 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i32>
    %47 = cmpi ult, %46, %37 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_30, %falseResult_31 = cond_br %52, %falseResult_15 {handshake.bb = 4 : ui32, handshake.name = "cond_br8"} : <i1>, <>
    %trueResult_32, %falseResult_33 = cond_br %52, %48#0 {handshake.bb = 4 : ui32, handshake.name = "cond_br9"} : <i1>, <>
    %48:2 = lazy_fork [2] %7#0 {handshake.bb = 4 : ui32, handshake.name = "lazy_fork2"} : <>
    %trueResult_34, %falseResult_35 = cond_br %52, %51 {handshake.bb = 4 : ui32, handshake.name = "cond_br44"} : <i1>, <i32>
    %trueResult_36, %falseResult_37 = cond_br %52, %8 {handshake.bb = 4 : ui32, handshake.name = "cond_br45"} : <i1>, <>
    %49 = constant %8 {handshake.bb = 4 : ui32, handshake.name = "constant13", value = 10 : i32} : <>, <i32>
    %50 = constant %8 {handshake.bb = 4 : ui32, handshake.name = "constant14", value = 1 : i32} : <>, <i32>
    %addressResult_38, %dataResult_39 = store[%9] %falseResult_3 {handshake.bb = 4 : ui32, handshake.deps = #handshake<deps[<"load5" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i32>, <f32>
    %51 = addi %9, %50 {handshake.bb = 4 : ui32, handshake.name = "addi4"} : <i32>
    %52 = cmpi ult, %51, %49 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i32>
    %53:2 = lazy_fork [2] %falseResult_33 {handshake.bb = 5 : ui32, handshake.name = "lazy_fork3"} : <>
    %54 = constant %arg8 {handshake.bb = 5 : ui32, handshake.name = "constant15", value = 9 : i32} : <>, <i32>
    %addressResult_40, %dataResult_41 = load[%54] %0#1 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load5"} : <i32>, <f32>
    %55 = fptosi %dataResult_41 {handshake.bb = 5 : ui32, handshake.name = "fptosi0"} : <f32> to <i32>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %55, %memEnd_1, %memEnd, %1#1, %0#2, %arg8 : <i32>, <>, <>, <>, <>, <>
  }
}


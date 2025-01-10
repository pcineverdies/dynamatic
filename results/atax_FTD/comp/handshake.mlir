module {
  handshake.func @atax(%arg0: memref<100xf32>, %arg1: memref<10xf32>, %arg2: memref<10xf32>, %arg3: memref<10xf32>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "x", "y", "tmp", "A_start", "x_start", "y_start", "tmp_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][4,1,5,cmpi2][1,2][3,3,4,cmpi1]", resNames = ["out0", "A_end", "x_end", "y_end", "tmp_end", "end"]} {
    %0:3 = lsq[%arg3 : memref<10xf32>] (%arg7, %result, %addressResult, %result_40, %addressResult_42, %dataResult_43, %result_46, %addressResult_48, %result_46)  {groupSizes = [1 : i32, 1 : i32, 1 : i32], handshake.name = "lsq0"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<f32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.channel<f32>, !handshake.control<>)
    %1:2 = lsq[%arg2 : memref<10xf32>] (%arg6, %result_26, %addressResult_28, %addressResult_32, %dataResult_33, %result_46)  {groupSizes = [2 : i32], handshake.name = "lsq1"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<f32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg1 : memref<10xf32>] %arg5 (%addressResult_14) %result_46 {connectedBlocks = [2 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>) -> !handshake.channel<f32>
    %outputs_0:2, %memEnd_1 = mem_controller[%arg0 : memref<100xf32>] %arg4 (%addressResult_12, %addressResult_30) %result_46 {connectedBlocks = [2 : i32, 3 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<f32>, !handshake.channel<f32>)
    %2 = constant %arg8 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %3 = br %arg8 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <>
    %4 = constant %arg8 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %5 = merge %4, %48 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %6 = mux %5 [%arg8, %trueResult_38] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %result, %index = control_merge %3, %trueResult_44  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %7 = mux %5 [%2, %trueResult_36] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %8 = constant %6 {handshake.bb = 1 : ui32, handshake.name = "constant5", value = 0 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%7] %0#0 {handshake.bb = 1 : ui32, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.name = "load0"} : <i32>, <f32>
    %9 = br %result {handshake.bb = 1 : ui32, handshake.name = "br3"} : <>
    %trueResult, %falseResult = cond_br %27, %16 {handshake.bb = 2 : ui32, handshake.name = "cond_br35"} : <i1>, <i32>
    %trueResult_2, %falseResult_3 = cond_br %27, %25 {handshake.bb = 2 : ui32, handshake.name = "cond_br36"} : <i1>, <f32>
    %trueResult_4, %falseResult_5 = cond_br %27, %26 {handshake.bb = 2 : ui32, handshake.name = "cond_br37"} : <i1>, <i32>
    %trueResult_6, %falseResult_7 = cond_br %27, %13 {handshake.bb = 2 : ui32, handshake.name = "cond_br38"} : <i1>, <>
    %trueResult_8, %falseResult_9 = cond_br %27, %12 {handshake.bb = 2 : ui32, handshake.name = "cond_br39"} : <i1>, <i32>
    %10 = constant %arg8 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant23", value = false} : <>, <i1>
    %11 = merge %10, %27 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge11"} : <i1>
    %12 = mux %11 [%7, %trueResult_8] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux11"} : <i1>, <i32>
    %13 = mux %11 [%6, %trueResult_6] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux13"} : <i1>, <>
    %result_10, %index_11 = control_merge %9, %trueResult_16  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %14 = mux %11 [%dataResult, %trueResult_2] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux17"} : <i1>, <f32>
    %15 = mux %11 [%8, %trueResult_4] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux18"} : <i1>, <i32>
    %16 = constant %13 {handshake.bb = 2 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %17 = constant %13 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 10 : i32} : <>, <i32>
    %18 = constant %13 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 1 : i32} : <>, <i32>
    %19 = constant %13 {handshake.bb = 2 : ui32, handshake.name = "constant9", value = 3 : i32} : <>, <i32>
    %20 = shli %12, %18 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %21 = shli %12, %19 {handshake.bb = 2 : ui32, handshake.name = "shli1"} : <i32>
    %22 = addi %20, %21 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i32>
    %23 = addi %15, %22 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %addressResult_12, %dataResult_13 = load[%23] %outputs_0#0 {handshake.bb = 2 : ui32, handshake.name = "load1"} : <i32>, <f32>
    %addressResult_14, %dataResult_15 = load[%15] %outputs {handshake.bb = 2 : ui32, handshake.name = "load2"} : <i32>, <f32>
    %24 = mulf %dataResult_13, %dataResult_15 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf0"} : <f32>
    %25 = addf %14, %24 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf0"} : <f32>
    %26 = addi %15, %18 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i32>
    %27 = cmpi ult, %26, %17 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_16, %falseResult_17 = cond_br %27, %result_10 {handshake.bb = 2 : ui32, handshake.name = "cond_br14"} : <i1>, <>
    %trueResult_18, %falseResult_19 = cond_br %44, %43 {handshake.bb = 3 : ui32, handshake.name = "cond_br40"} : <i1>, <i32>
    %trueResult_20, %falseResult_21 = cond_br %44, %32 {handshake.bb = 3 : ui32, handshake.name = "cond_br41"} : <i1>, <>
    %trueResult_22, %falseResult_23 = cond_br %44, %31 {handshake.bb = 3 : ui32, handshake.name = "cond_br42"} : <i1>, <i32>
    %trueResult_24, %falseResult_25 = cond_br %44, %30 {handshake.bb = 3 : ui32, handshake.name = "cond_br43"} : <i1>, <f32>
    %28 = constant %arg8 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant31", value = false} : <>, <i1>
    %29 = merge %28, %44 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge19"} : <i1>
    %30 = mux %29 [%falseResult_3, %trueResult_24] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux19"} : <i1>, <f32>
    %31 = mux %29 [%7, %trueResult_22] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux20"} : <i1>, <i32>
    %32 = mux %29 [%6, %trueResult_20] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux24"} : <i1>, <>
    %result_26, %index_27 = control_merge %falseResult_17, %trueResult_34  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %33 = mux %29 [%falseResult, %trueResult_18] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux25"} : <i1>, <i32>
    %34 = constant %32 {handshake.bb = 3 : ui32, handshake.name = "constant10", value = 10 : i32} : <>, <i32>
    %35 = constant %32 {handshake.bb = 3 : ui32, handshake.name = "constant11", value = 1 : i32} : <>, <i32>
    %36 = constant %32 {handshake.bb = 3 : ui32, handshake.name = "constant12", value = 3 : i32} : <>, <i32>
    %addressResult_28, %dataResult_29 = load[%33] %1#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.name = "load3"} : <i32>, <f32>
    %37 = shli %31, %35 {handshake.bb = 3 : ui32, handshake.name = "shli2"} : <i32>
    %38 = shli %31, %36 {handshake.bb = 3 : ui32, handshake.name = "shli3"} : <i32>
    %39 = addi %37, %38 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i32>
    %40 = addi %33, %39 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i32>
    %addressResult_30, %dataResult_31 = load[%40] %outputs_0#1 {handshake.bb = 3 : ui32, handshake.name = "load4"} : <i32>, <f32>
    %41 = mulf %dataResult_31, %30 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "mulf1"} : <f32>
    %42 = addf %dataResult_29, %41 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "addf1"} : <f32>
    %addressResult_32, %dataResult_33 = store[%33] %42 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load3" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.name = "store0"} : <i32>, <f32>
    %43 = addi %33, %35 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i32>
    %44 = cmpi ult, %43, %34 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_34, %falseResult_35 = cond_br %44, %result_26 {handshake.bb = 3 : ui32, handshake.name = "cond_br22"} : <i1>, <>
    %trueResult_36, %falseResult_37 = cond_br %48, %47 {handshake.bb = 4 : ui32, handshake.name = "cond_br44"} : <i1>, <i32>
    %trueResult_38, %falseResult_39 = cond_br %48, %6 {handshake.bb = 4 : ui32, handshake.name = "cond_br45"} : <i1>, <>
    %result_40, %index_41 = control_merge %falseResult_35  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %45 = constant %6 {handshake.bb = 4 : ui32, handshake.name = "constant13", value = 10 : i32} : <>, <i32>
    %46 = constant %6 {handshake.bb = 4 : ui32, handshake.name = "constant14", value = 1 : i32} : <>, <i32>
    %addressResult_42, %dataResult_43 = store[%7] %falseResult_3 {handshake.bb = 4 : ui32, handshake.deps = #handshake<deps[<"load5" (1)>]>, handshake.name = "store1"} : <i32>, <f32>
    %47 = addi %7, %46 {handshake.bb = 4 : ui32, handshake.name = "addi4"} : <i32>
    %48 = cmpi ult, %47, %45 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i32>
    %trueResult_44, %falseResult_45 = cond_br %48, %result_40 {handshake.bb = 4 : ui32, handshake.name = "cond_br34"} : <i1>, <>
    %result_46, %index_47 = control_merge %falseResult_45  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %49 = constant %arg8 {handshake.bb = 5 : ui32, handshake.name = "constant15", value = 9 : i32} : <>, <i32>
    %addressResult_48, %dataResult_49 = load[%49] %0#1 {handshake.bb = 5 : ui32, handshake.name = "load5"} : <i32>, <f32>
    %50 = fptosi %dataResult_49 {handshake.bb = 5 : ui32, handshake.name = "fptosi0"} : <f32> to <i32>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %50, %memEnd_1, %memEnd, %1#1, %0#2, %arg8 : <i32>, <>, <>, <>, <>, <>
  }
}


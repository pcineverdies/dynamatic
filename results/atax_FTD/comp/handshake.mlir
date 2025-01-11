module {
  handshake.func @atax(%arg0: memref<100xf32>, %arg1: memref<10xf32>, %arg2: memref<10xf32>, %arg3: memref<10xf32>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "x", "y", "tmp", "A_start", "x_start", "y_start", "tmp_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][4,1,5,cmpi2][1,2][3,3,4,cmpi1]", resNames = ["out0", "A_end", "x_end", "y_end", "tmp_end", "end"]} {
    %0:3 = lsq[%arg3 : memref<10xf32>] (%arg7, %result, %addressResult, %result_34, %addressResult_36, %dataResult_37, %result_40, %addressResult_42, %result_40)  {groupSizes = [1 : i32, 1 : i32, 1 : i32], handshake.name = "lsq0"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<f32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.channel<f32>, !handshake.control<>)
    %1:2 = lsq[%arg2 : memref<10xf32>] (%arg6, %result_22, %addressResult_24, %addressResult_28, %dataResult_29, %result_40)  {groupSizes = [2 : i32], handshake.name = "lsq1"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<f32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg1 : memref<10xf32>] %arg5 (%addressResult_12) %result_40 {connectedBlocks = [2 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>) -> !handshake.channel<f32>
    %outputs_0:2, %memEnd_1 = mem_controller[%arg0 : memref<100xf32>] %arg4 (%addressResult_10, %addressResult_26) %result_40 {connectedBlocks = [2 : i32, 3 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<f32>, !handshake.channel<f32>)
    %2 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %3 = constant %2 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %4 = br %arg8 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <>
    %result, %index = control_merge %4, %trueResult_38  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %5 = constant %arg8 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %6 = mux %7 [%3, %trueResult_32] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %7 = merge %5, %56 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %8 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %9 = constant %8 {handshake.bb = 1 : ui32, handshake.name = "constant5", value = 0 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%6] %0#0 {handshake.bb = 1 : ui32, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.name = "load0"} : <i32>, <f32>
    %10 = br %result {handshake.bb = 1 : ui32, handshake.name = "br3"} : <>
    %trueResult, %falseResult = cond_br %31, %17 {handshake.bb = 2 : ui32, handshake.name = "cond_br18"} : <i1>, <i32>
    %trueResult_2, %falseResult_3 = cond_br %31, %29 {handshake.bb = 2 : ui32, handshake.name = "cond_br19"} : <i1>, <f32>
    %trueResult_4, %falseResult_5 = cond_br %31, %30 {handshake.bb = 2 : ui32, handshake.name = "cond_br20"} : <i1>, <i32>
    %trueResult_6, %falseResult_7 = cond_br %31, %13 {handshake.bb = 2 : ui32, handshake.name = "cond_br21"} : <i1>, <i32>
    %11 = constant %arg8 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %12 = merge %11, %31 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i1>
    %13 = mux %12 [%6, %trueResult_6] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %result_8, %index_9 = control_merge %10, %trueResult_14  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %14 = mux %12 [%dataResult, %trueResult_2] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <f32>
    %15 = mux %12 [%9, %trueResult_4] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %16 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %17 = constant %16 {handshake.bb = 2 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %18 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %19 = constant %18 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 10 : i32} : <>, <i32>
    %20 = source {handshake.bb = 2 : ui32, handshake.name = "source4"} : <>
    %21 = constant %20 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 1 : i32} : <>, <i32>
    %22 = source {handshake.bb = 2 : ui32, handshake.name = "source5"} : <>
    %23 = constant %22 {handshake.bb = 2 : ui32, handshake.name = "constant9", value = 3 : i32} : <>, <i32>
    %24 = shli %13, %21 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %25 = shli %13, %23 {handshake.bb = 2 : ui32, handshake.name = "shli1"} : <i32>
    %26 = addi %24, %25 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i32>
    %27 = addi %15, %26 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %addressResult_10, %dataResult_11 = load[%27] %outputs_0#0 {handshake.bb = 2 : ui32, handshake.name = "load1"} : <i32>, <f32>
    %addressResult_12, %dataResult_13 = load[%15] %outputs {handshake.bb = 2 : ui32, handshake.name = "load2"} : <i32>, <f32>
    %28 = mulf %dataResult_11, %dataResult_13 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf0"} : <f32>
    %29 = addf %14, %28 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf0"} : <f32>
    %30 = addi %15, %21 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i32>
    %31 = cmpi ult, %30, %19 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_14, %falseResult_15 = cond_br %31, %result_8 {handshake.bb = 2 : ui32, handshake.name = "cond_br10"} : <i1>, <>
    %trueResult_16, %falseResult_17 = cond_br %50, %49 {handshake.bb = 3 : ui32, handshake.name = "cond_br22"} : <i1>, <i32>
    %trueResult_18, %falseResult_19 = cond_br %50, %35 {handshake.bb = 3 : ui32, handshake.name = "cond_br23"} : <i1>, <i32>
    %trueResult_20, %falseResult_21 = cond_br %50, %34 {handshake.bb = 3 : ui32, handshake.name = "cond_br24"} : <i1>, <f32>
    %32 = constant %arg8 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant17", value = false} : <>, <i1>
    %33 = merge %32, %50 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge5"} : <i1>
    %34 = mux %33 [%falseResult_3, %trueResult_20] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <f32>
    %35 = mux %33 [%6, %trueResult_18] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %result_22, %index_23 = control_merge %falseResult_15, %trueResult_30  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %36 = mux %33 [%falseResult, %trueResult_16] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %37 = source {handshake.bb = 3 : ui32, handshake.name = "source6"} : <>
    %38 = constant %37 {handshake.bb = 3 : ui32, handshake.name = "constant10", value = 10 : i32} : <>, <i32>
    %39 = source {handshake.bb = 3 : ui32, handshake.name = "source7"} : <>
    %40 = constant %39 {handshake.bb = 3 : ui32, handshake.name = "constant11", value = 1 : i32} : <>, <i32>
    %41 = source {handshake.bb = 3 : ui32, handshake.name = "source8"} : <>
    %42 = constant %41 {handshake.bb = 3 : ui32, handshake.name = "constant12", value = 3 : i32} : <>, <i32>
    %addressResult_24, %dataResult_25 = load[%36] %1#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.name = "load3"} : <i32>, <f32>
    %43 = shli %35, %40 {handshake.bb = 3 : ui32, handshake.name = "shli2"} : <i32>
    %44 = shli %35, %42 {handshake.bb = 3 : ui32, handshake.name = "shli3"} : <i32>
    %45 = addi %43, %44 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i32>
    %46 = addi %36, %45 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i32>
    %addressResult_26, %dataResult_27 = load[%46] %outputs_0#1 {handshake.bb = 3 : ui32, handshake.name = "load4"} : <i32>, <f32>
    %47 = mulf %dataResult_27, %34 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "mulf1"} : <f32>
    %48 = addf %dataResult_25, %47 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "addf1"} : <f32>
    %addressResult_28, %dataResult_29 = store[%36] %48 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load3" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.name = "store0"} : <i32>, <f32>
    %49 = addi %36, %40 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i32>
    %50 = cmpi ult, %49, %38 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_30, %falseResult_31 = cond_br %50, %result_22 {handshake.bb = 3 : ui32, handshake.name = "cond_br15"} : <i1>, <>
    %trueResult_32, %falseResult_33 = cond_br %56, %55 {handshake.bb = 4 : ui32, handshake.name = "cond_br25"} : <i1>, <i32>
    %result_34, %index_35 = control_merge %falseResult_31  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %51 = source {handshake.bb = 4 : ui32, handshake.name = "source9"} : <>
    %52 = constant %51 {handshake.bb = 4 : ui32, handshake.name = "constant13", value = 10 : i32} : <>, <i32>
    %53 = source {handshake.bb = 4 : ui32, handshake.name = "source10"} : <>
    %54 = constant %53 {handshake.bb = 4 : ui32, handshake.name = "constant14", value = 1 : i32} : <>, <i32>
    %addressResult_36, %dataResult_37 = store[%6] %falseResult_3 {handshake.bb = 4 : ui32, handshake.deps = #handshake<deps[<"load5" (1)>]>, handshake.name = "store1"} : <i32>, <f32>
    %55 = addi %6, %54 {handshake.bb = 4 : ui32, handshake.name = "addi4"} : <i32>
    %56 = cmpi ult, %55, %52 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i32>
    %trueResult_38, %falseResult_39 = cond_br %56, %result_34 {handshake.bb = 4 : ui32, handshake.name = "cond_br17"} : <i1>, <>
    %result_40, %index_41 = control_merge %falseResult_39  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %57 = constant %arg8 {handshake.bb = 5 : ui32, handshake.name = "constant15", value = 9 : i32} : <>, <i32>
    %addressResult_42, %dataResult_43 = load[%57] %0#1 {handshake.bb = 5 : ui32, handshake.name = "load5"} : <i32>, <f32>
    %58 = fptosi %dataResult_43 {handshake.bb = 5 : ui32, handshake.name = "fptosi0"} : <f32> to <i32>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %58, %memEnd_1, %memEnd, %1#1, %0#2, %arg8 : <i32>, <>, <>, <>, <>, <>
  }
}


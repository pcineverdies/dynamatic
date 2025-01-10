module {
  handshake.func @atax(%arg0: memref<100xf32>, %arg1: memref<10xf32>, %arg2: memref<10xf32>, %arg3: memref<10xf32>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "x", "y", "tmp", "A_start", "x_start", "y_start", "tmp_start", "start"], resNames = ["out0", "A_end", "x_end", "y_end", "tmp_end", "end"]} {
    %0:3 = lsq[%arg3 : memref<10xf32>] (%arg7, %result, %addressResult, %result_32, %addressResult_34, %dataResult_35, %result_40, %addressResult_42, %result_40)  {groupSizes = [1 : i32, 1 : i32, 1 : i32], handshake.name = "lsq0"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<f32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.channel<f32>, !handshake.control<>)
    %1:2 = lsq[%arg2 : memref<10xf32>] (%arg6, %result_16, %addressResult_18, %addressResult_22, %dataResult_23, %result_40)  {groupSizes = [2 : i32], handshake.name = "lsq1"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<f32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg1 : memref<10xf32>] %arg5 (%addressResult_6) %result_40 {connectedBlocks = [2 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>) -> !handshake.channel<f32>
    %outputs_0:2, %memEnd_1 = mem_controller[%arg0 : memref<100xf32>] %arg4 (%addressResult_4, %addressResult_20) %result_40 {connectedBlocks = [2 : i32, 3 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<f32>, !handshake.channel<f32>)
    %2 = constant %arg8 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %3 = br %2 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <i32>
    %4 = br %arg8 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %5 = mux %index [%3, %trueResult_36] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %result, %index = control_merge %4, %trueResult_38  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %6 = constant %result {handshake.bb = 1 : ui32, handshake.name = "constant5", value = 0 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%5] %0#0 {handshake.bb = 1 : ui32, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.name = "load0"} : <i32>, <f32>
    %7 = br %6 {handshake.bb = 1 : ui32, handshake.name = "br4"} : <i32>
    %8 = br %dataResult {handshake.bb = 1 : ui32, handshake.name = "br5"} : <f32>
    %9 = br %5 {handshake.bb = 1 : ui32, handshake.name = "br6"} : <i32>
    %10 = br %result {handshake.bb = 1 : ui32, handshake.name = "br7"} : <>
    %11 = mux %index_3 [%7, %trueResult] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %12 = mux %index_3 [%8, %trueResult_8] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <f32>
    %13 = mux %index_3 [%9, %trueResult_10] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %result_2, %index_3 = control_merge %10, %trueResult_12  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %14 = constant %result_2 {handshake.bb = 2 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %15 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %16 = constant %15 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 10 : i32} : <>, <i32>
    %17 = source {handshake.bb = 2 : ui32, handshake.name = "source1"} : <>
    %18 = constant %17 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 1 : i32} : <>, <i32>
    %19 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %20 = constant %19 {handshake.bb = 2 : ui32, handshake.name = "constant9", value = 3 : i32} : <>, <i32>
    %21 = shli %13, %18 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %22 = shli %13, %20 {handshake.bb = 2 : ui32, handshake.name = "shli1"} : <i32>
    %23 = addi %21, %22 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i32>
    %24 = addi %11, %23 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %addressResult_4, %dataResult_5 = load[%24] %outputs_0#0 {handshake.bb = 2 : ui32, handshake.name = "load1"} : <i32>, <f32>
    %addressResult_6, %dataResult_7 = load[%11] %outputs {handshake.bb = 2 : ui32, handshake.name = "load2"} : <i32>, <f32>
    %25 = mulf %dataResult_5, %dataResult_7 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf0"} : <f32>
    %26 = addf %12, %25 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf0"} : <f32>
    %27 = addi %11, %18 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i32>
    %28 = cmpi ult, %27, %16 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult, %falseResult = cond_br %28, %27 {handshake.bb = 2 : ui32, handshake.name = "cond_br3"} : <i1>, <i32>
    %trueResult_8, %falseResult_9 = cond_br %28, %26 {handshake.bb = 2 : ui32, handshake.name = "cond_br4"} : <i1>, <f32>
    %trueResult_10, %falseResult_11 = cond_br %28, %13 {handshake.bb = 2 : ui32, handshake.name = "cond_br5"} : <i1>, <i32>
    %trueResult_12, %falseResult_13 = cond_br %28, %result_2 {handshake.bb = 2 : ui32, handshake.name = "cond_br6"} : <i1>, <>
    %trueResult_14, %falseResult_15 = cond_br %28, %14 {handshake.bb = 2 : ui32, handshake.name = "cond_br7"} : <i1>, <i32>
    %29 = mux %index_17 [%falseResult_15, %trueResult_24] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %30 = mux %index_17 [%falseResult_11, %trueResult_26] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %31 = mux %index_17 [%falseResult_9, %trueResult_28] {handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <f32>
    %result_16, %index_17 = control_merge %falseResult_13, %trueResult_30  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %32 = source {handshake.bb = 3 : ui32, handshake.name = "source3"} : <>
    %33 = constant %32 {handshake.bb = 3 : ui32, handshake.name = "constant10", value = 10 : i32} : <>, <i32>
    %34 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %35 = constant %34 {handshake.bb = 3 : ui32, handshake.name = "constant11", value = 1 : i32} : <>, <i32>
    %36 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %37 = constant %36 {handshake.bb = 3 : ui32, handshake.name = "constant12", value = 3 : i32} : <>, <i32>
    %addressResult_18, %dataResult_19 = load[%29] %1#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.name = "load3"} : <i32>, <f32>
    %38 = shli %30, %35 {handshake.bb = 3 : ui32, handshake.name = "shli2"} : <i32>
    %39 = shli %30, %37 {handshake.bb = 3 : ui32, handshake.name = "shli3"} : <i32>
    %40 = addi %38, %39 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i32>
    %41 = addi %29, %40 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i32>
    %addressResult_20, %dataResult_21 = load[%41] %outputs_0#1 {handshake.bb = 3 : ui32, handshake.name = "load4"} : <i32>, <f32>
    %42 = mulf %dataResult_21, %31 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "mulf1"} : <f32>
    %43 = addf %dataResult_19, %42 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "addf1"} : <f32>
    %addressResult_22, %dataResult_23 = store[%29] %43 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load3" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.name = "store0"} : <i32>, <f32>
    %44 = addi %29, %35 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i32>
    %45 = cmpi ult, %44, %33 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_24, %falseResult_25 = cond_br %45, %44 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    %trueResult_26, %falseResult_27 = cond_br %45, %30 {handshake.bb = 3 : ui32, handshake.name = "cond_br9"} : <i1>, <i32>
    %trueResult_28, %falseResult_29 = cond_br %45, %31 {handshake.bb = 3 : ui32, handshake.name = "cond_br10"} : <i1>, <f32>
    %trueResult_30, %falseResult_31 = cond_br %45, %result_16 {handshake.bb = 3 : ui32, handshake.name = "cond_br11"} : <i1>, <>
    %46 = merge %falseResult_27 {handshake.bb = 4 : ui32, handshake.name = "merge0"} : <i32>
    %47 = merge %falseResult_29 {handshake.bb = 4 : ui32, handshake.name = "merge1"} : <f32>
    %result_32, %index_33 = control_merge %falseResult_31  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %48 = source {handshake.bb = 4 : ui32, handshake.name = "source6"} : <>
    %49 = constant %48 {handshake.bb = 4 : ui32, handshake.name = "constant13", value = 10 : i32} : <>, <i32>
    %50 = source {handshake.bb = 4 : ui32, handshake.name = "source7"} : <>
    %51 = constant %50 {handshake.bb = 4 : ui32, handshake.name = "constant14", value = 1 : i32} : <>, <i32>
    %addressResult_34, %dataResult_35 = store[%46] %47 {handshake.bb = 4 : ui32, handshake.deps = #handshake<deps[<"load5" (1)>]>, handshake.name = "store1"} : <i32>, <f32>
    %52 = addi %46, %51 {handshake.bb = 4 : ui32, handshake.name = "addi4"} : <i32>
    %53 = cmpi ult, %52, %49 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i32>
    %trueResult_36, %falseResult_37 = cond_br %53, %52 {handshake.bb = 4 : ui32, handshake.name = "cond_br12"} : <i1>, <i32>
    %trueResult_38, %falseResult_39 = cond_br %53, %result_32 {handshake.bb = 4 : ui32, handshake.name = "cond_br13"} : <i1>, <>
    %result_40, %index_41 = control_merge %falseResult_39  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %54 = constant %result_40 {handshake.bb = 5 : ui32, handshake.name = "constant15", value = 9 : i32} : <>, <i32>
    %addressResult_42, %dataResult_43 = load[%54] %0#1 {handshake.bb = 5 : ui32, handshake.name = "load5"} : <i32>, <f32>
    %55 = fptosi %dataResult_43 {handshake.bb = 5 : ui32, handshake.name = "fptosi0"} : <f32> to <i32>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %55, %memEnd_1, %memEnd, %1#1, %0#2, %arg8 : <i32>, <>, <>, <>, <>, <>
  }
}


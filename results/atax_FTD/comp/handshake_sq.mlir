module {
  handshake.func @atax(%arg0: memref<100xf32>, %arg1: memref<10xf32>, %arg2: memref<10xf32>, %arg3: memref<10xf32>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "x", "y", "tmp", "A_start", "x_start", "y_start", "tmp_start", "start"], cfg.edges = "[0,1][2,2,3,cmpi0][4,1,5,cmpi2][1,2][3,3,4,cmpi1]", resNames = ["out0", "A_end", "x_end", "y_end", "tmp_end", "end"]} {
    %0:3 = lsq[%arg3 : memref<10xf32>] (%arg7, %8#1, %addressResult, %54#1, %addressResult_32, %dataResult_33, %61#1, %addressResult_34, %61#1)  {groupSizes = [1 : i32, 1 : i32, 1 : i32], handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<f32>, !handshake.control<>, !handshake.channel<i32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.channel<f32>, !handshake.control<>)
    %1:2 = lsq[%arg2 : memref<10xf32>] (%arg6, %36#1, %addressResult_20, %addressResult_24, %dataResult_25, %arg8)  {groupSizes = [2 : i32], handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<f32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg1 : memref<10xf32>] %arg5 (%addressResult_10) %arg8 {connectedBlocks = [2 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i32>) -> !handshake.channel<f32>
    %outputs_0:2, %memEnd_1 = mem_controller[%arg0 : memref<100xf32>] %arg4 (%addressResult_8, %addressResult_22) %arg8 {connectedBlocks = [2 : i32, 3 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<f32>, !handshake.channel<f32>)
    %2 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %3 = constant %2 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %4 = mux %7 [%arg8, %trueResult_28] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux9"} : <i1>, <>
    %5 = constant %arg8 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant18", value = false} : <>, <i1>
    %6 = mux %7 [%arg8, %trueResult_26] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux10"} : <i1>, <>
    %7 = merge %5, %60 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge2"} : <i1>
    %8:2 = lazy_fork [2] %4 {handshake.bb = 1 : ui32, handshake.name = "lazy_fork0"} : <>
    %9 = mux %7 [%3, %trueResult_30] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %10 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %11 = constant %10 {handshake.bb = 1 : ui32, handshake.name = "constant5", value = 0 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%9] %0#0 {handshake.bb = 1 : ui32, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i32>, <f32>
    %trueResult, %falseResult = cond_br %32, %18 {handshake.bb = 2 : ui32, handshake.name = "cond_br18"} : <i1>, <i32>
    %trueResult_2, %falseResult_3 = cond_br %32, %30 {handshake.bb = 2 : ui32, handshake.name = "cond_br19"} : <i1>, <f32>
    %trueResult_4, %falseResult_5 = cond_br %32, %31 {handshake.bb = 2 : ui32, handshake.name = "cond_br20"} : <i1>, <i32>
    %trueResult_6, %falseResult_7 = cond_br %32, %14 {handshake.bb = 2 : ui32, handshake.name = "cond_br21"} : <i1>, <i32>
    %12 = constant %arg8 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %13 = merge %12, %32 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i1>
    %14 = mux %13 [%9, %trueResult_6] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %15 = mux %13 [%dataResult, %trueResult_2] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <f32>
    %16 = mux %13 [%11, %trueResult_4] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %17 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %18 = constant %17 {handshake.bb = 2 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %19 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %20 = constant %19 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = 10 : i32} : <>, <i32>
    %21 = source {handshake.bb = 2 : ui32, handshake.name = "source4"} : <>
    %22 = constant %21 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 1 : i32} : <>, <i32>
    %23 = source {handshake.bb = 2 : ui32, handshake.name = "source5"} : <>
    %24 = constant %23 {handshake.bb = 2 : ui32, handshake.name = "constant9", value = 3 : i32} : <>, <i32>
    %25 = shli %14, %22 {handshake.bb = 2 : ui32, handshake.name = "shli0"} : <i32>
    %26 = shli %14, %24 {handshake.bb = 2 : ui32, handshake.name = "shli1"} : <i32>
    %27 = addi %25, %26 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i32>
    %28 = addi %16, %27 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %addressResult_8, %dataResult_9 = load[%28] %outputs_0#0 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i32>, <f32>
    %addressResult_10, %dataResult_11 = load[%16] %outputs {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load2"} : <i32>, <f32>
    %29 = mulf %dataResult_9, %dataResult_11 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf0"} : <f32>
    %30 = addf %15, %29 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf0"} : <f32>
    %31 = addi %16, %22 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i32>
    %32 = cmpi ult, %31, %20 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %trueResult_12, %falseResult_13 = cond_br %53, %36#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %33 = constant %arg8 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant19", value = false} : <>, <i1>
    %34 = mux %35 [%6, %trueResult_12] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux11"} : <i1>, <>
    %35 = merge %33, %53 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge7"} : <i1>
    %36:2 = lazy_fork [2] %34 {handshake.bb = 3 : ui32, handshake.name = "lazy_fork1"} : <>
    %trueResult_14, %falseResult_15 = cond_br %53, %52 {handshake.bb = 3 : ui32, handshake.name = "cond_br22"} : <i1>, <i32>
    %trueResult_16, %falseResult_17 = cond_br %53, %38 {handshake.bb = 3 : ui32, handshake.name = "cond_br23"} : <i1>, <i32>
    %trueResult_18, %falseResult_19 = cond_br %53, %37 {handshake.bb = 3 : ui32, handshake.name = "cond_br24"} : <i1>, <f32>
    %37 = mux %35 [%falseResult_3, %trueResult_18] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <f32>
    %38 = mux %35 [%9, %trueResult_16] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %39 = mux %35 [%falseResult, %trueResult_14] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %40 = source {handshake.bb = 3 : ui32, handshake.name = "source6"} : <>
    %41 = constant %40 {handshake.bb = 3 : ui32, handshake.name = "constant10", value = 10 : i32} : <>, <i32>
    %42 = source {handshake.bb = 3 : ui32, handshake.name = "source7"} : <>
    %43 = constant %42 {handshake.bb = 3 : ui32, handshake.name = "constant11", value = 1 : i32} : <>, <i32>
    %44 = source {handshake.bb = 3 : ui32, handshake.name = "source8"} : <>
    %45 = constant %44 {handshake.bb = 3 : ui32, handshake.name = "constant12", value = 3 : i32} : <>, <i32>
    %addressResult_20, %dataResult_21 = load[%39] %1#0 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i32>, <f32>
    %46 = shli %38, %43 {handshake.bb = 3 : ui32, handshake.name = "shli2"} : <i32>
    %47 = shli %38, %45 {handshake.bb = 3 : ui32, handshake.name = "shli3"} : <i32>
    %48 = addi %46, %47 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i32>
    %49 = addi %39, %48 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i32>
    %addressResult_22, %dataResult_23 = load[%49] %outputs_0#1 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i32>, <f32>
    %50 = mulf %dataResult_23, %37 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "mulf1"} : <f32>
    %51 = addf %dataResult_21, %50 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "addf1"} : <f32>
    %addressResult_24, %dataResult_25 = store[%39] %51 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load3" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i32>, <f32>
    %52 = addi %39, %43 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i32>
    %53 = cmpi ult, %52, %41 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %trueResult_26, %falseResult_27 = cond_br %60, %falseResult_13 {handshake.bb = 4 : ui32, handshake.name = "cond_br8"} : <i1>, <>
    %trueResult_28, %falseResult_29 = cond_br %60, %54#0 {handshake.bb = 4 : ui32, handshake.name = "cond_br9"} : <i1>, <>
    %54:2 = lazy_fork [2] %8#0 {handshake.bb = 4 : ui32, handshake.name = "lazy_fork2"} : <>
    %trueResult_30, %falseResult_31 = cond_br %60, %59 {handshake.bb = 4 : ui32, handshake.name = "cond_br25"} : <i1>, <i32>
    %55 = source {handshake.bb = 4 : ui32, handshake.name = "source9"} : <>
    %56 = constant %55 {handshake.bb = 4 : ui32, handshake.name = "constant13", value = 10 : i32} : <>, <i32>
    %57 = source {handshake.bb = 4 : ui32, handshake.name = "source10"} : <>
    %58 = constant %57 {handshake.bb = 4 : ui32, handshake.name = "constant14", value = 1 : i32} : <>, <i32>
    %addressResult_32, %dataResult_33 = store[%9] %falseResult_3 {handshake.bb = 4 : ui32, handshake.deps = #handshake<deps[<"load5" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i32>, <f32>
    %59 = addi %9, %58 {handshake.bb = 4 : ui32, handshake.name = "addi4"} : <i32>
    %60 = cmpi ult, %59, %56 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i32>
    %61:2 = lazy_fork [2] %falseResult_29 {handshake.bb = 5 : ui32, handshake.name = "lazy_fork3"} : <>
    %62 = constant %arg8 {handshake.bb = 5 : ui32, handshake.name = "constant15", value = 9 : i32} : <>, <i32>
    %addressResult_34, %dataResult_35 = load[%62] %0#1 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load5"} : <i32>, <f32>
    %63 = fptosi %dataResult_35 {handshake.bb = 5 : ui32, handshake.name = "fptosi0"} : <f32> to <i32>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %63, %memEnd_1, %memEnd, %1#1, %0#2, %arg8 : <i32>, <>, <>, <>, <>, <>
  }
}


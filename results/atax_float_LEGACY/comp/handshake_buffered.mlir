module {
  handshake.func @atax_float(%arg0: memref<100xf32>, %arg1: memref<10xf32>, %arg2: memref<10xf32>, %arg3: memref<10xf32>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["A", "x", "y", "tmp", "A_start", "x_start", "y_start", "tmp_start", "start"], resNames = ["out0", "A_end", "x_end", "y_end", "tmp_end", "end"]} {
    %0:3 = fork [3] %arg8 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1 = buffer %198#4 {handshake.name = "buffer87", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %2:3 = lsq[%arg3 : memref<10xf32>] (%arg7, %21#0, %addressResult, %177#0, %addressResult_34, %dataResult_35, %198#3, %addressResult_42, %1)  {groupSizes = [1 : i32, 1 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "7": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "8": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<f32>, !handshake.control<>, !handshake.channel<i4>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.channel<f32>, !handshake.control<>)
    %3 = buffer %198#2 {handshake.name = "buffer86", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %4:2 = lsq[%arg2 : memref<10xf32>] (%arg6, %130#0, %addressResult_18, %addressResult_22, %dataResult_23, %3)  {groupSizes = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i4>, !handshake.channel<i4>, !handshake.channel<f32>, !handshake.control<>) -> (!handshake.channel<f32>, !handshake.control<>)
    %5 = buffer %198#1 {handshake.name = "buffer85", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs, %memEnd = mem_controller[%arg1 : memref<10xf32>] %arg5 (%addressResult_6) %5 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller2"} :    (!handshake.channel<i4>) -> !handshake.channel<f32>
    %6 = buffer %198#0 {handshake.name = "buffer84", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs_0:2, %memEnd_1 = mem_controller[%arg0 : memref<100xf32>] %arg4 (%addressResult_4, %addressResult_20) %6 {connectedBlocks = [2 : i32, 3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i7>, !handshake.channel<i7>) -> (!handshake.channel<f32>, !handshake.channel<f32>)
    %7 = buffer %0#0 {handshake.bb = 0 : ui32, handshake.name = "buffer0", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %8 = constant %7 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %9 = br %8 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <i1>
    %10 = extsi %9 {handshake.bb = 0 : ui32, handshake.name = "extsi14"} : <i1> to <i5>
    %11 = buffer %0#2 {handshake.bb = 0 : ui32, handshake.name = "buffer2", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %12 = br %11 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <>
    %13 = mux %index [%10, %trueResult_36] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i5>
    %14 = buffer %13 {handshake.bb = 1 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %15 = buffer %14 {handshake.bb = 1 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %16:2 = fork [2] %15 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i5>
    %17 = buffer %16#0 {handshake.bb = 1 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %18 = trunci %17 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i5> to <i4>
    %result, %index = control_merge %12, %trueResult_38  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %19 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %20 = buffer %19 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %21:3 = lazy_fork [3] %20 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork0"} : <>
    %22 = buffer %21#2 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %23 = fork [1] %22 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <>
    %24 = buffer %23 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %25 = constant %24 {handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %addressResult, %dataResult = load[%18] %2#0 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load0"} : <i4>, <f32>
    %26 = br %25 {handshake.bb = 1 : ui32, handshake.name = "br4"} : <i1>
    %27 = extsi %26 {handshake.bb = 1 : ui32, handshake.name = "extsi13"} : <i1> to <i5>
    %28 = br %dataResult {handshake.bb = 1 : ui32, handshake.name = "br5"} : <f32>
    %29 = buffer %16#1 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %30 = br %29 {handshake.bb = 1 : ui32, handshake.name = "br6"} : <i5>
    %31 = buffer %21#1 {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %32 = br %31 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "br7"} : <>
    %33 = buffer %56#1 {handshake.bb = 2 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %34 = mux %33 [%27, %trueResult] {handshake.bb = 2 : ui32, handshake.name = "mux1"} : <i1>, <i5>
    %35 = buffer %34 {handshake.bb = 2 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %36 = buffer %35 {handshake.bb = 2 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %37:3 = fork [3] %36 {handshake.bb = 2 : ui32, handshake.name = "fork3"} : <i5>
    %38 = buffer %37#0 {handshake.bb = 2 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %39 = extsi %38 {handshake.bb = 2 : ui32, handshake.name = "extsi15"} : <i5> to <i7>
    %40 = buffer %37#2 {handshake.bb = 2 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %41 = extsi %40 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i5> to <i6>
    %42 = buffer %37#1 {handshake.bb = 2 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %43 = trunci %42 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i5> to <i4>
    %44 = buffer %56#2 {handshake.bb = 2 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %45 = mux %44 [%28, %trueResult_8] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <f32>
    %46 = buffer %56#0 {handshake.bb = 2 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %47 = mux %46 [%30, %trueResult_10] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i5>
    %48 = buffer %47 {handshake.bb = 2 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %49 = buffer %48 {handshake.bb = 2 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %50:3 = fork [3] %49 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i5>
    %51 = buffer %50#0 {handshake.bb = 2 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %52 = trunci %51 {handshake.bb = 2 : ui32, handshake.name = "trunci2"} : <i5> to <i4>
    %53 = extsi %52 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i4> to <i7>
    %54 = buffer %50#2 {handshake.bb = 2 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %55 = extsi %54 {handshake.bb = 2 : ui32, handshake.name = "extsi18"} : <i5> to <i6>
    %result_2, %index_3 = control_merge %32, %trueResult_12  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %56:3 = fork [3] %index_3 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i1>
    %57 = buffer %result_2 {handshake.bb = 2 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %58 = buffer %57 {handshake.bb = 2 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %59:2 = fork [2] %58 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <>
    %60 = buffer %59#0 {handshake.bb = 2 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %61 = constant %60 {handshake.bb = 2 : ui32, handshake.name = "constant2", value = false} : <>, <i1>
    %62 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %63 = constant %62 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = 10 : i5} : <>, <i5>
    %64 = extsi %63 {handshake.bb = 2 : ui32, handshake.name = "extsi19"} : <i5> to <i6>
    %65 = source {handshake.bb = 2 : ui32, handshake.name = "source1"} : <>
    %66 = constant %65 {handshake.bb = 2 : ui32, handshake.name = "constant16", value = 1 : i2} : <>, <i2>
    %67:2 = fork [2] %66 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i2>
    %68 = buffer %67#0 {handshake.bb = 2 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %69 = extui %68 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i2> to <i6>
    %70 = buffer %67#1 {handshake.bb = 2 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %71 = extsi %70 {handshake.bb = 2 : ui32, handshake.name = "extsi20"} : <i2> to <i6>
    %72 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %73 = constant %72 {handshake.bb = 2 : ui32, handshake.name = "constant17", value = 3 : i3} : <>, <i3>
    %74 = extui %73 {handshake.bb = 2 : ui32, handshake.name = "extui1"} : <i3> to <i7>
    %75 = shli %55, %69 {handshake.bb = 2 : ui32, handshake.name = "shli6"} : <i6>
    %76 = extsi %75 {handshake.bb = 2 : ui32, handshake.name = "extsi21"} : <i6> to <i7>
    %77 = shli %53, %74 {handshake.bb = 2 : ui32, handshake.name = "shli5"} : <i7>
    %78 = addi %76, %77 {handshake.bb = 2 : ui32, handshake.name = "addi5"} : <i7>
    %79 = addi %39, %78 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i7>
    %addressResult_4, %dataResult_5 = load[%79] %outputs_0#0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i7>, <f32>
    %addressResult_6, %dataResult_7 = load[%43] %outputs {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load2"} : <i4>, <f32>
    %80 = mulf %dataResult_5, %dataResult_7 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "mulf0"} : <f32>
    %81 = buffer %45 {handshake.bb = 2 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <f32>
    %82 = buffer %81 {handshake.bb = 2 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %83 = addf %82, %80 {fastmath = #arith.fastmath<none>, handshake.bb = 2 : ui32, handshake.name = "addf0"} : <f32>
    %84 = addi %41, %71 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i6>
    %85:2 = fork [2] %84 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i6>
    %86 = buffer %85#0 {handshake.bb = 2 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %87 = trunci %86 {handshake.bb = 2 : ui32, handshake.name = "trunci3"} : <i6> to <i5>
    %88 = buffer %85#1 {handshake.bb = 2 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %89 = cmpi ult, %88, %64 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i6>
    %90:5 = fork [5] %89 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i1>
    %91 = buffer %90#0 {handshake.bb = 2 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult, %falseResult = cond_br %91, %87 {handshake.bb = 2 : ui32, handshake.name = "cond_br3"} : <i1>, <i5>
    sink %falseResult {handshake.name = "sink0"} : <i5>
    %92 = buffer %90#2 {handshake.bb = 2 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_8, %falseResult_9 = cond_br %92, %83 {handshake.bb = 2 : ui32, handshake.name = "cond_br4"} : <i1>, <f32>
    %93 = buffer %50#1 {handshake.bb = 2 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %94 = buffer %90#1 {handshake.bb = 2 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_10, %falseResult_11 = cond_br %94, %93 {handshake.bb = 2 : ui32, handshake.name = "cond_br5"} : <i1>, <i5>
    %95 = buffer %59#1 {handshake.bb = 2 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %96 = buffer %90#3 {handshake.bb = 2 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_12, %falseResult_13 = cond_br %96, %95 {handshake.bb = 2 : ui32, handshake.name = "cond_br6"} : <i1>, <>
    %97 = buffer %90#4 {handshake.bb = 2 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_14, %falseResult_15 = cond_br %97, %61 {handshake.bb = 2 : ui32, handshake.name = "cond_br7"} : <i1>, <i1>
    sink %trueResult_14 {handshake.name = "sink1"} : <i1>
    %98 = extsi %falseResult_15 {handshake.bb = 2 : ui32, handshake.name = "extsi12"} : <i1> to <i5>
    %99 = buffer %127#1 {handshake.bb = 3 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %100 = mux %99 [%98, %trueResult_24] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i5>
    %101 = buffer %100 {handshake.bb = 3 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %102 = buffer %101 {handshake.bb = 3 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %103:4 = fork [4] %102 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i5>
    %104 = buffer %103#0 {handshake.bb = 3 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %105 = extsi %104 {handshake.bb = 3 : ui32, handshake.name = "extsi22"} : <i5> to <i7>
    %106 = buffer %103#3 {handshake.bb = 3 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %107 = extsi %106 {handshake.bb = 3 : ui32, handshake.name = "extsi23"} : <i5> to <i6>
    %108 = buffer %103#1 {handshake.bb = 3 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %109 = trunci %108 {handshake.bb = 3 : ui32, handshake.name = "trunci4"} : <i5> to <i4>
    %110 = buffer %103#2 {handshake.bb = 3 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %111 = trunci %110 {handshake.bb = 3 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %112 = buffer %127#0 {handshake.bb = 3 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %113 = mux %112 [%falseResult_11, %trueResult_26] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i5>
    %114 = buffer %113 {handshake.bb = 3 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %115 = buffer %114 {handshake.bb = 3 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %116:3 = fork [3] %115 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i5>
    %117 = buffer %116#0 {handshake.bb = 3 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %118 = trunci %117 {handshake.bb = 3 : ui32, handshake.name = "trunci6"} : <i5> to <i4>
    %119 = extsi %118 {handshake.bb = 3 : ui32, handshake.name = "extsi24"} : <i4> to <i7>
    %120 = buffer %116#2 {handshake.bb = 3 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %121 = extsi %120 {handshake.bb = 3 : ui32, handshake.name = "extsi25"} : <i5> to <i6>
    %122 = buffer %127#2 {handshake.bb = 3 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %123 = mux %122 [%falseResult_9, %trueResult_28] {handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <f32>
    %124 = buffer %123 {handshake.bb = 3 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <f32>
    %125 = buffer %124 {handshake.bb = 3 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %126:2 = fork [2] %125 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <f32>
    %result_16, %index_17 = control_merge %falseResult_13, %trueResult_30  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %127:3 = fork [3] %index_17 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i1>
    %128 = buffer %result_16 {handshake.bb = 3 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %129 = buffer %128 {handshake.bb = 3 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %130:2 = fork [2] %129 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <>
    %131 = source {handshake.bb = 3 : ui32, handshake.name = "source3"} : <>
    %132 = constant %131 {handshake.bb = 3 : ui32, handshake.name = "constant18", value = 10 : i5} : <>, <i5>
    %133 = extsi %132 {handshake.bb = 3 : ui32, handshake.name = "extsi26"} : <i5> to <i6>
    %134 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %135 = constant %134 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 1 : i2} : <>, <i2>
    %136:2 = fork [2] %135 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <i2>
    %137 = buffer %136#0 {handshake.bb = 3 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %138 = extui %137 {handshake.bb = 3 : ui32, handshake.name = "extui2"} : <i2> to <i6>
    %139 = buffer %136#1 {handshake.bb = 3 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %140 = extsi %139 {handshake.bb = 3 : ui32, handshake.name = "extsi27"} : <i2> to <i6>
    %141 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %142 = constant %141 {handshake.bb = 3 : ui32, handshake.name = "constant20", value = 3 : i3} : <>, <i3>
    %143 = extui %142 {handshake.bb = 3 : ui32, handshake.name = "extui3"} : <i3> to <i7>
    %addressResult_18, %dataResult_19 = load[%111] %4#0 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i4>, <f32>
    %144 = shli %121, %138 {handshake.bb = 3 : ui32, handshake.name = "shli7"} : <i6>
    %145 = extsi %144 {handshake.bb = 3 : ui32, handshake.name = "extsi28"} : <i6> to <i7>
    %146 = shli %119, %143 {handshake.bb = 3 : ui32, handshake.name = "shli4"} : <i7>
    %147 = addi %145, %146 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i7>
    %148 = addi %105, %147 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i7>
    %addressResult_20, %dataResult_21 = load[%148] %outputs_0#1 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : <i7>, <f32>
    %149 = buffer %126#1 {handshake.bb = 3 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %150 = mulf %dataResult_21, %149 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "mulf1"} : <f32>
    %151 = addf %dataResult_19, %150 {fastmath = #arith.fastmath<none>, handshake.bb = 3 : ui32, handshake.name = "addf1"} : <f32>
    %addressResult_22, %dataResult_23 = store[%109] %151 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load3" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i4>, <f32>
    %152 = addi %107, %140 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i6>
    %153:2 = fork [2] %152 {handshake.bb = 3 : ui32, handshake.name = "fork16"} : <i6>
    %154 = buffer %153#0 {handshake.bb = 3 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %155 = trunci %154 {handshake.bb = 3 : ui32, handshake.name = "trunci7"} : <i6> to <i5>
    %156 = buffer %153#1 {handshake.bb = 3 : ui32, handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %157 = cmpi ult, %156, %133 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i6>
    %158:4 = fork [4] %157 {handshake.bb = 3 : ui32, handshake.name = "fork17"} : <i1>
    %159 = buffer %158#0 {handshake.bb = 3 : ui32, handshake.name = "buffer65", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_24, %falseResult_25 = cond_br %159, %155 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <i5>
    sink %falseResult_25 {handshake.name = "sink2"} : <i5>
    %160 = buffer %116#1 {handshake.bb = 3 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %161 = buffer %158#1 {handshake.bb = 3 : ui32, handshake.name = "buffer66", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_26, %falseResult_27 = cond_br %161, %160 {handshake.bb = 3 : ui32, handshake.name = "cond_br9"} : <i1>, <i5>
    %162 = buffer %126#0 {handshake.bb = 3 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %163 = buffer %158#2 {handshake.bb = 3 : ui32, handshake.name = "buffer67", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_28, %falseResult_29 = cond_br %163, %162 {handshake.bb = 3 : ui32, handshake.name = "cond_br10"} : <i1>, <f32>
    %164 = buffer %130#1 {handshake.bb = 3 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %165 = buffer %158#3 {handshake.bb = 3 : ui32, handshake.name = "buffer68", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_30, %falseResult_31 = cond_br %165, %164 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br11"} : <i1>, <>
    %166 = merge %falseResult_27 {handshake.bb = 4 : ui32, handshake.name = "merge0"} : <i5>
    %167 = buffer %166 {handshake.bb = 4 : ui32, handshake.name = "buffer69", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %168 = buffer %167 {handshake.bb = 4 : ui32, handshake.name = "buffer70", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %169:2 = fork [2] %168 {handshake.bb = 4 : ui32, handshake.name = "fork18"} : <i5>
    %170 = buffer %169#1 {handshake.bb = 4 : ui32, handshake.name = "buffer72", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %171 = extsi %170 {handshake.bb = 4 : ui32, handshake.name = "extsi29"} : <i5> to <i6>
    %172 = buffer %169#0 {handshake.bb = 4 : ui32, handshake.name = "buffer71", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %173 = trunci %172 {handshake.bb = 4 : ui32, handshake.name = "trunci8"} : <i5> to <i4>
    %174 = merge %falseResult_29 {handshake.bb = 4 : ui32, handshake.name = "merge1"} : <f32>
    %result_32, %index_33 = control_merge %falseResult_31  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_33 {handshake.name = "sink3"} : <i1>
    %175 = buffer %result_32 {handshake.bb = 4 : ui32, handshake.name = "buffer75", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %176 = buffer %175 {handshake.bb = 4 : ui32, handshake.name = "buffer76", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %177:2 = lazy_fork [2] %176 {handshake.bb = 4 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork1"} : <>
    %178 = source {handshake.bb = 4 : ui32, handshake.name = "source6"} : <>
    %179 = constant %178 {handshake.bb = 4 : ui32, handshake.name = "constant21", value = 10 : i5} : <>, <i5>
    %180 = extsi %179 {handshake.bb = 4 : ui32, handshake.name = "extsi30"} : <i5> to <i6>
    %181 = source {handshake.bb = 4 : ui32, handshake.name = "source7"} : <>
    %182 = constant %181 {handshake.bb = 4 : ui32, handshake.name = "constant22", value = 1 : i2} : <>, <i2>
    %183 = extsi %182 {handshake.bb = 4 : ui32, handshake.name = "extsi31"} : <i2> to <i6>
    %184 = buffer %174 {handshake.bb = 4 : ui32, handshake.name = "buffer73", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <f32>
    %185 = buffer %184 {handshake.bb = 4 : ui32, handshake.name = "buffer74", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <f32>
    %addressResult_34, %dataResult_35 = store[%173] %185 {handshake.bb = 4 : ui32, handshake.deps = #handshake<deps[<"load5" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i4>, <f32>
    %186 = addi %171, %183 {handshake.bb = 4 : ui32, handshake.name = "addi4"} : <i6>
    %187:2 = fork [2] %186 {handshake.bb = 4 : ui32, handshake.name = "fork19"} : <i6>
    %188 = buffer %187#0 {handshake.bb = 4 : ui32, handshake.name = "buffer78", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %189 = trunci %188 {handshake.bb = 4 : ui32, handshake.name = "trunci9"} : <i6> to <i5>
    %190 = buffer %187#1 {handshake.bb = 4 : ui32, handshake.name = "buffer79", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %191 = cmpi ult, %190, %180 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i6>
    %192:2 = fork [2] %191 {handshake.bb = 4 : ui32, handshake.name = "fork20"} : <i1>
    %193 = buffer %192#0 {handshake.bb = 4 : ui32, handshake.name = "buffer80", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_36, %falseResult_37 = cond_br %193, %189 {handshake.bb = 4 : ui32, handshake.name = "cond_br12"} : <i1>, <i5>
    sink %falseResult_37 {handshake.name = "sink4"} : <i5>
    %194 = buffer %177#1 {handshake.bb = 4 : ui32, handshake.name = "buffer77", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %195 = buffer %192#1 {handshake.bb = 4 : ui32, handshake.name = "buffer81", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_38, %falseResult_39 = cond_br %195, %194 {handshake.bb = 4 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br13"} : <i1>, <>
    %result_40, %index_41 = control_merge %falseResult_39  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    sink %index_41 {handshake.name = "sink5"} : <i1>
    %196 = buffer %result_40 {handshake.bb = 5 : ui32, handshake.name = "buffer82", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %197 = buffer %196 {handshake.bb = 5 : ui32, handshake.name = "buffer83", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %198:6 = fork [6] %197 {handshake.bb = 5 : ui32, handshake.name = "fork21"} : <>
    %199 = buffer %198#5 {handshake.bb = 5 : ui32, handshake.name = "buffer88", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %200 = constant %199 {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "constant23", value = 9 : i5} : <>, <i5>
    %201 = trunci %200 {handshake.bb = 5 : ui32, handshake.name = "trunci10"} : <i5> to <i4>
    %addressResult_42, %dataResult_43 = load[%201] %2#1 {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load5"} : <i4>, <f32>
    %202 = fptosi %dataResult_43 {handshake.bb = 5 : ui32, handshake.name = "fptosi0"} : <f32> to <i32>
    %203 = buffer %0#1 {handshake.bb = 5 : ui32, handshake.name = "buffer1", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    end {handshake.bb = 5 : ui32, handshake.name = "end0"} %202, %memEnd_1, %memEnd, %4#1, %2#2, %203 : <i32>, <>, <>, <>, <>, <>
  }
}


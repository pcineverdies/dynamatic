module {
  handshake.func @spmv(%arg0: !handshake.channel<i32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: memref<10xi32>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["n", "row", "col", "val", "vec", "out", "row_start", "col_start", "val_start", "vec_start", "out_start", "start"], resNames = ["out0", "row_end", "col_end", "val_end", "vec_end", "out_end", "end"]} {
    %0:3 = fork [3] %arg11 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1 = buffer %194#4 {handshake.name = "buffer107", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %memEnd = mem_controller[%arg5 : memref<10xi32>] %arg10 (%174, %addressResult_43, %dataResult_44) %1 {connectedBlocks = [5 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i32>, !handshake.channel<i4>, !handshake.channel<i32>) -> ()
    %2 = buffer %194#3 {handshake.name = "buffer106", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs, %memEnd_0 = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_39) %2 {connectedBlocks = [4 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller6"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %3 = buffer %194#2 {handshake.name = "buffer105", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs_1, %memEnd_2 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_37) %3 {connectedBlocks = [4 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller7"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %4 = buffer %194#1 {handshake.name = "buffer104", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs_3, %memEnd_4 = mem_controller[%arg2 : memref<10xi32>] %arg7 (%addressResult_35) %4 {connectedBlocks = [4 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller8"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %5 = buffer %194#0 {handshake.name = "buffer103", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs_5:2, %memEnd_6 = mem_controller[%arg1 : memref<10xi32>] %arg6 (%addressResult, %addressResult_15) %5 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller9"} :    (!handshake.channel<i4>, !handshake.channel<i4>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %6 = buffer %0#0 {handshake.bb = 0 : ui32, handshake.name = "buffer0", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %7 = constant %6 {handshake.bb = 0 : ui32, handshake.name = "constant8", value = false} : <>, <i1>
    %8:2 = fork [2] %7 {handshake.bb = 0 : ui32, handshake.name = "fork1"} : <i1>
    %9 = buffer %8#0 {handshake.bb = 0 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %10 = br %9 {handshake.bb = 0 : ui32, handshake.name = "br4"} : <i1>
    %11 = extsi %10 {handshake.bb = 0 : ui32, handshake.name = "extsi7"} : <i1> to <i32>
    %12 = buffer %8#1 {handshake.bb = 0 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %13 = br %12 {handshake.bb = 0 : ui32, handshake.name = "br5"} : <i1>
    %14 = extsi %13 {handshake.bb = 0 : ui32, handshake.name = "extsi8"} : <i1> to <i32>
    %15 = br %arg0 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "br6"} : <i32>
    %16 = buffer %0#2 {handshake.bb = 0 : ui32, handshake.name = "buffer2", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %17 = br %16 {handshake.bb = 0 : ui32, handshake.name = "br7"} : <>
    %18 = buffer %30#0 {handshake.bb = 1 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %19 = mux %18 [%11, %182] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %20 = buffer %19 {handshake.bb = 1 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %21 = buffer %20 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %22:2 = fork [2] %21 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i32>
    %23 = buffer %30#1 {handshake.bb = 1 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %24 = mux %23 [%14, %185] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %25 = buffer %30#2 {handshake.bb = 1 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %26 = mux %25 [%15, %188] {handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %27 = buffer %26 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %28 = buffer %27 {handshake.bb = 1 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %29:2 = fork [2] %28 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <i32>
    %result, %index = control_merge %17, %190  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %30:3 = fork [3] %index {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i1>
    %31 = buffer %22#1 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %32 = buffer %29#1 {handshake.bb = 1 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %33 = cmpi ult, %31, %32 {handshake.bb = 1 : ui32, handshake.name = "cmpi0"} : <i32>
    %34:4 = fork [4] %33 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i1>
    %35 = buffer %29#0 {handshake.bb = 1 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %36 = buffer %34#3 {handshake.bb = 1 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult, %falseResult = cond_br %36, %35 {handshake.bb = 1 : ui32, handshake.name = "cond_br2"} : <i1>, <i32>
    sink %falseResult {handshake.name = "sink0"} : <i32>
    %37 = buffer %22#0 {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %38 = buffer %34#2 {handshake.bb = 1 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_7, %falseResult_8 = cond_br %38, %37 {handshake.bb = 1 : ui32, handshake.name = "cond_br3"} : <i1>, <i32>
    sink %falseResult_8 {handshake.name = "sink1"} : <i32>
    %39 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %40 = buffer %39 {handshake.bb = 1 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %41 = buffer %34#1 {handshake.bb = 1 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_9, %falseResult_10 = cond_br %41, %40 {handshake.bb = 1 : ui32, handshake.name = "cond_br4"} : <i1>, <>
    %42 = buffer %24 {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %43 = buffer %42 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %44 = buffer %34#0 {handshake.bb = 1 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_11, %falseResult_12 = cond_br %44, %43 {handshake.bb = 1 : ui32, handshake.name = "cond_br5"} : <i1>, <i32>
    sink %trueResult_11 {handshake.name = "sink2"} : <i32>
    %45 = merge %trueResult {handshake.bb = 2 : ui32, handshake.name = "merge0"} : <i32>
    %46 = merge %trueResult_7 {handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i32>
    %47 = buffer %46 {handshake.bb = 2 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %48 = buffer %47 {handshake.bb = 2 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %49:3 = fork [3] %48 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i32>
    %50 = buffer %49#0 {handshake.bb = 2 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %51 = trunci %50 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i32> to <i4>
    %52 = buffer %49#1 {handshake.bb = 2 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %53 = trunci %52 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i32> to <i4>
    %result_13, %index_14 = control_merge %trueResult_9  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    sink %index_14 {handshake.name = "sink3"} : <i1>
    %54 = buffer %result_13 {handshake.bb = 2 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %55 = buffer %54 {handshake.bb = 2 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %56:2 = fork [2] %55 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <>
    %57 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %58 = constant %57 {handshake.bb = 2 : ui32, handshake.name = "constant9", value = 1 : i2} : <>, <i2>
    %59 = extsi %58 {handshake.bb = 2 : ui32, handshake.name = "extsi9"} : <i2> to <i4>
    %60 = buffer %56#0 {handshake.bb = 2 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %61 = constant %60 {handshake.bb = 2 : ui32, handshake.name = "constant10", value = false} : <>, <i1>
    %addressResult, %dataResult = load[%53] %outputs_5#0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i4>, <i32>
    %62:2 = fork [2] %dataResult {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i32>
    %63 = addi %51, %59 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i4>
    %addressResult_15, %dataResult_16 = load[%63] %outputs_5#1 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i4>, <i32>
    %64 = buffer %62#1 {handshake.bb = 2 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %65 = br %64 {handshake.bb = 2 : ui32, handshake.name = "br8"} : <i32>
    %66 = br %61 {handshake.bb = 2 : ui32, handshake.name = "br9"} : <i1>
    %67 = extsi %66 {handshake.bb = 2 : ui32, handshake.name = "extsi10"} : <i1> to <i32>
    %68 = buffer %45 {handshake.bb = 2 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %69 = buffer %68 {handshake.bb = 2 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %70 = br %69 {handshake.bb = 2 : ui32, handshake.name = "br10"} : <i32>
    %71 = buffer %49#2 {handshake.bb = 2 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %72 = br %71 {handshake.bb = 2 : ui32, handshake.name = "br11"} : <i32>
    %73 = buffer %62#0 {handshake.bb = 2 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %74 = br %73 {handshake.bb = 2 : ui32, handshake.name = "br12"} : <i32>
    %75 = br %dataResult_16 {handshake.bb = 2 : ui32, handshake.name = "br13"} : <i32>
    %76 = buffer %56#1 {handshake.bb = 2 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %77 = br %76 {handshake.bb = 2 : ui32, handshake.name = "br14"} : <>
    %78 = buffer %96#0 {handshake.bb = 3 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %79 = mux %78 [%65, %143] {handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %80 = buffer %79 {handshake.bb = 3 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %81 = buffer %80 {handshake.bb = 3 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %82:2 = fork [2] %81 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i32>
    %83 = buffer %96#1 {handshake.bb = 3 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %84 = mux %83 [%67, %144] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %85 = buffer %96#2 {handshake.bb = 3 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %86 = mux %85 [%70, %147] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %87 = buffer %96#3 {handshake.bb = 3 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %88 = mux %87 [%72, %150] {handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %89 = buffer %96#4 {handshake.bb = 3 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %90 = mux %89 [%74, %153] {handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %91 = buffer %96#5 {handshake.bb = 3 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %92 = mux %91 [%75, %156] {handshake.bb = 3 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %93 = buffer %92 {handshake.bb = 3 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %94 = buffer %93 {handshake.bb = 3 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %95:2 = fork [2] %94 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i32>
    %result_17, %index_18 = control_merge %77, %159  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %96:6 = fork [6] %index_18 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i1>
    %97 = buffer %82#1 {handshake.bb = 3 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %98 = buffer %95#1 {handshake.bb = 3 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %99 = cmpi slt, %97, %98 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %100:7 = fork [7] %99 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i1>
    %101 = buffer %86 {handshake.bb = 3 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %102 = buffer %101 {handshake.bb = 3 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %103 = buffer %100#6 {handshake.bb = 3 : ui32, handshake.name = "buffer67", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_19, %falseResult_20 = cond_br %103, %102 {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <i32>
    %104 = buffer %88 {handshake.bb = 3 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %105 = buffer %104 {handshake.bb = 3 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %106 = buffer %100#5 {handshake.bb = 3 : ui32, handshake.name = "buffer66", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_21, %falseResult_22 = cond_br %106, %105 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <i32>
    %107 = buffer %90 {handshake.bb = 3 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %108 = buffer %107 {handshake.bb = 3 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %109 = buffer %100#4 {handshake.bb = 3 : ui32, handshake.name = "buffer65", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_23, %falseResult_24 = cond_br %109, %108 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    %110 = buffer %95#0 {handshake.bb = 3 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %111 = buffer %100#3 {handshake.bb = 3 : ui32, handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_25, %falseResult_26 = cond_br %111, %110 {handshake.bb = 3 : ui32, handshake.name = "cond_br9"} : <i1>, <i32>
    sink %falseResult_26 {handshake.name = "sink4"} : <i32>
    %112 = buffer %82#0 {handshake.bb = 3 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %113 = buffer %100#2 {handshake.bb = 3 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_27, %falseResult_28 = cond_br %113, %112 {handshake.bb = 3 : ui32, handshake.name = "cond_br10"} : <i1>, <i32>
    sink %falseResult_28 {handshake.name = "sink5"} : <i32>
    %114 = buffer %84 {handshake.bb = 3 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %115 = buffer %114 {handshake.bb = 3 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %116 = buffer %100#1 {handshake.bb = 3 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_29, %falseResult_30 = cond_br %116, %115 {handshake.bb = 3 : ui32, handshake.name = "cond_br11"} : <i1>, <i32>
    %117 = buffer %result_17 {handshake.bb = 3 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %118 = buffer %117 {handshake.bb = 3 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %119 = buffer %100#0 {handshake.bb = 3 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_31, %falseResult_32 = cond_br %119, %118 {handshake.bb = 3 : ui32, handshake.name = "cond_br12"} : <i1>, <>
    %120 = merge %trueResult_19 {handshake.bb = 4 : ui32, handshake.name = "merge2"} : <i32>
    %121 = merge %trueResult_21 {handshake.bb = 4 : ui32, handshake.name = "merge3"} : <i32>
    %122 = merge %trueResult_23 {handshake.bb = 4 : ui32, handshake.name = "merge4"} : <i32>
    %123 = merge %trueResult_25 {handshake.bb = 4 : ui32, handshake.name = "merge5"} : <i32>
    %124 = merge %trueResult_27 {handshake.bb = 4 : ui32, handshake.name = "merge6"} : <i32>
    %125 = buffer %124 {handshake.bb = 4 : ui32, handshake.name = "buffer76", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %126 = buffer %125 {handshake.bb = 4 : ui32, handshake.name = "buffer77", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %127:3 = fork [3] %126 {handshake.bb = 4 : ui32, handshake.name = "fork13"} : <i32>
    %128 = buffer %127#0 {handshake.bb = 4 : ui32, handshake.name = "buffer78", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %129 = trunci %128 {handshake.bb = 4 : ui32, handshake.name = "trunci2"} : <i32> to <i4>
    %130 = buffer %127#1 {handshake.bb = 4 : ui32, handshake.name = "buffer79", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %131 = trunci %130 {handshake.bb = 4 : ui32, handshake.name = "trunci3"} : <i32> to <i4>
    %132 = merge %trueResult_29 {handshake.bb = 4 : ui32, handshake.name = "merge7"} : <i32>
    %result_33, %index_34 = control_merge %trueResult_31  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_34 {handshake.name = "sink6"} : <i1>
    %133 = source {handshake.bb = 4 : ui32, handshake.name = "source1"} : <>
    %134 = constant %133 {handshake.bb = 4 : ui32, handshake.name = "constant11", value = 1 : i2} : <>, <i2>
    %135 = extsi %134 {handshake.bb = 4 : ui32, handshake.name = "extsi4"} : <i2> to <i32>
    %addressResult_35, %dataResult_36 = load[%131] %outputs_3 {handshake.bb = 4 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load7"} : <i4>, <i32>
    %136 = trunci %dataResult_36 {handshake.bb = 4 : ui32, handshake.name = "trunci4"} : <i32> to <i4>
    %addressResult_37, %dataResult_38 = load[%129] %outputs_1 {handshake.bb = 4 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load8"} : <i4>, <i32>
    %addressResult_39, %dataResult_40 = load[%136] %outputs {handshake.bb = 4 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load9"} : <i4>, <i32>
    %137 = muli %dataResult_38, %dataResult_40 {handshake.bb = 4 : ui32, handshake.name = "muli0"} : <i32>
    %138 = buffer %132 {handshake.bb = 4 : ui32, handshake.name = "buffer81", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %139 = buffer %138 {handshake.bb = 4 : ui32, handshake.name = "buffer82", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %140 = addi %139, %137 {handshake.bb = 4 : ui32, handshake.name = "addi0"} : <i32>
    %141 = buffer %127#2 {handshake.bb = 4 : ui32, handshake.name = "buffer80", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %142 = addi %141, %135 {handshake.bb = 4 : ui32, handshake.name = "addi2"} : <i32>
    %143 = br %142 {handshake.bb = 4 : ui32, handshake.name = "br15"} : <i32>
    %144 = br %140 {handshake.bb = 4 : ui32, handshake.name = "br16"} : <i32>
    %145 = buffer %120 {handshake.bb = 4 : ui32, handshake.name = "buffer68", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %146 = buffer %145 {handshake.bb = 4 : ui32, handshake.name = "buffer69", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %147 = br %146 {handshake.bb = 4 : ui32, handshake.name = "br17"} : <i32>
    %148 = buffer %121 {handshake.bb = 4 : ui32, handshake.name = "buffer70", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %149 = buffer %148 {handshake.bb = 4 : ui32, handshake.name = "buffer71", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %150 = br %149 {handshake.bb = 4 : ui32, handshake.name = "br18"} : <i32>
    %151 = buffer %122 {handshake.bb = 4 : ui32, handshake.name = "buffer72", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %152 = buffer %151 {handshake.bb = 4 : ui32, handshake.name = "buffer73", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %153 = br %152 {handshake.bb = 4 : ui32, handshake.name = "br19"} : <i32>
    %154 = buffer %123 {handshake.bb = 4 : ui32, handshake.name = "buffer74", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %155 = buffer %154 {handshake.bb = 4 : ui32, handshake.name = "buffer75", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %156 = br %155 {handshake.bb = 4 : ui32, handshake.name = "br20"} : <i32>
    %157 = buffer %result_33 {handshake.bb = 4 : ui32, handshake.name = "buffer83", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %158 = buffer %157 {handshake.bb = 4 : ui32, handshake.name = "buffer84", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %159 = br %158 {handshake.bb = 4 : ui32, handshake.name = "br21"} : <>
    %160 = merge %falseResult_20 {handshake.bb = 5 : ui32, handshake.name = "merge8"} : <i32>
    %161 = merge %falseResult_22 {handshake.bb = 5 : ui32, handshake.name = "merge9"} : <i32>
    %162 = buffer %161 {handshake.bb = 5 : ui32, handshake.name = "buffer87", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %163 = buffer %162 {handshake.bb = 5 : ui32, handshake.name = "buffer88", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %164:2 = fork [2] %163 {handshake.bb = 5 : ui32, handshake.name = "fork14"} : <i32>
    %165 = buffer %164#0 {handshake.bb = 5 : ui32, handshake.name = "buffer89", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %166 = trunci %165 {handshake.bb = 5 : ui32, handshake.name = "trunci5"} : <i32> to <i4>
    %167 = merge %falseResult_24 {handshake.bb = 5 : ui32, handshake.name = "merge10"} : <i32>
    %168 = merge %falseResult_30 {handshake.bb = 5 : ui32, handshake.name = "merge11"} : <i32>
    %result_41, %index_42 = control_merge %falseResult_32  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    sink %index_42 {handshake.name = "sink7"} : <i1>
    %169 = buffer %result_41 {handshake.bb = 5 : ui32, handshake.name = "buffer95", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %170 = buffer %169 {handshake.bb = 5 : ui32, handshake.name = "buffer96", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %171:2 = fork [2] %170 {handshake.bb = 5 : ui32, handshake.name = "fork15"} : <>
    %172 = buffer %171#0 {handshake.bb = 5 : ui32, handshake.name = "buffer97", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %173 = constant %172 {handshake.bb = 5 : ui32, handshake.name = "constant12", value = 1 : i2} : <>, <i2>
    %174 = extsi %173 {handshake.bb = 5 : ui32, handshake.name = "extsi5"} : <i2> to <i32>
    %175 = source {handshake.bb = 5 : ui32, handshake.name = "source2"} : <>
    %176 = constant %175 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = 1 : i2} : <>, <i2>
    %177 = extsi %176 {handshake.bb = 5 : ui32, handshake.name = "extsi6"} : <i2> to <i32>
    %178 = buffer %168 {handshake.bb = 5 : ui32, handshake.name = "buffer93", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %179 = buffer %178 {handshake.bb = 5 : ui32, handshake.name = "buffer94", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %addressResult_43, %dataResult_44 = store[%166] %179 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i4>, <i32>
    %180 = buffer %164#1 {handshake.bb = 5 : ui32, handshake.name = "buffer90", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %181 = addi %180, %177 {handshake.bb = 5 : ui32, handshake.name = "addi3"} : <i32>
    %182 = br %181 {handshake.bb = 5 : ui32, handshake.name = "br22"} : <i32>
    %183 = buffer %167 {handshake.bb = 5 : ui32, handshake.name = "buffer91", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %184 = buffer %183 {handshake.bb = 5 : ui32, handshake.name = "buffer92", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %185 = br %184 {handshake.bb = 5 : ui32, handshake.name = "br23"} : <i32>
    %186 = buffer %160 {handshake.bb = 5 : ui32, handshake.name = "buffer85", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %187 = buffer %186 {handshake.bb = 5 : ui32, handshake.name = "buffer86", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %188 = br %187 {handshake.bb = 5 : ui32, handshake.name = "br24"} : <i32>
    %189 = buffer %171#1 {handshake.bb = 5 : ui32, handshake.name = "buffer98", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %190 = br %189 {handshake.bb = 5 : ui32, handshake.name = "br25"} : <>
    %191 = merge %falseResult_12 {handshake.bb = 6 : ui32, handshake.name = "merge12"} : <i32>
    %result_45, %index_46 = control_merge %falseResult_10  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    sink %index_46 {handshake.name = "sink8"} : <i1>
    %192 = buffer %result_45 {handshake.bb = 6 : ui32, handshake.name = "buffer101", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %193 = buffer %192 {handshake.bb = 6 : ui32, handshake.name = "buffer102", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %194:5 = fork [5] %193 {handshake.bb = 6 : ui32, handshake.name = "fork16"} : <>
    %195 = buffer %0#1 {handshake.bb = 6 : ui32, handshake.name = "buffer1", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %196 = buffer %191 {handshake.bb = 6 : ui32, handshake.name = "buffer99", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %197 = buffer %196 {handshake.bb = 6 : ui32, handshake.name = "buffer100", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %197, %memEnd_6, %memEnd_4, %memEnd_2, %memEnd_0, %memEnd, %195 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


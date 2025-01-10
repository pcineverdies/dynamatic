module {
  handshake.func @spmv(%arg0: !handshake.channel<i32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: memref<10xi32>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["n", "row", "col", "val", "vec", "out", "row_start", "col_start", "val_start", "vec_start", "out_start", "start"], cfg.edges = "[0,1][2,3][4,3][1,2,6,cmpi0][3,4,5,cmpi1][5,1]", resNames = ["out0", "row_end", "col_end", "val_end", "vec_end", "out_end", "end"]} {
    %0:10 = fork [10] %arg11 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1 = buffer %0#4 {handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %memEnd = mem_controller[%arg5 : memref<10xi32>] %arg10 (%122, %addressResult_29, %dataResult_30) %1 {connectedBlocks = [5 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i32>, !handshake.channel<i4>, !handshake.channel<i32>) -> ()
    %2 = buffer %0#3 {handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs, %memEnd_0 = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_25) %2 {connectedBlocks = [4 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller6"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %3 = buffer %0#2 {handshake.name = "buffer2", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs_1, %memEnd_2 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_23) %3 {connectedBlocks = [4 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller7"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %4 = buffer %0#1 {handshake.name = "buffer1", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs_3, %memEnd_4 = mem_controller[%arg2 : memref<10xi32>] %arg7 (%addressResult_21) %4 {connectedBlocks = [4 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller8"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %5 = buffer %0#0 {handshake.name = "buffer0", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %outputs_5:2, %memEnd_6 = mem_controller[%arg1 : memref<10xi32>] %arg6 (%addressResult, %addressResult_11) %5 {connectedBlocks = [2 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller9"} :    (!handshake.channel<i4>, !handshake.channel<i4>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %6 = buffer %34 {handshake.bb = 1 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %7 = buffer %6 {handshake.bb = 1 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %8 = buffer %43#2 {handshake.bb = 1 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult, %falseResult = cond_br %8, %7 {handshake.bb = 1 : ui32, handshake.name = "cond_br26"} : <i1>, <i32>
    sink %trueResult {handshake.name = "sink0"} : <i32>
    %9 = buffer %31#1 {handshake.bb = 1 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %10 = buffer %43#3 {handshake.bb = 1 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_7, %falseResult_8 = cond_br %10, %9 {handshake.bb = 1 : ui32, handshake.name = "cond_br27"} : <i1>, <i32>
    sink %falseResult_8 {handshake.name = "sink1"} : <i32>
    %11 = buffer %0#9 {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %12 = constant %11 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %13:3 = fork [3] %12 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %14 = buffer %13#0 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %15 = extsi %14 {handshake.bb = 1 : ui32, handshake.name = "extsi0"} : <i1> to <i32>
    %16 = buffer %13#1 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %17 = extsi %16 {handshake.bb = 1 : ui32, handshake.name = "extsi1"} : <i1> to <i32>
    %18 = buffer %13#2 {handshake.bb = 1 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %19 = buffer %43#4 {handshake.bb = 1 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %20 = merge %18, %19 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %21 = buffer %20 {handshake.bb = 1 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %22:4 = fork [4] %21 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <i1>
    %23 = buffer %0#8 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %24 = buffer %22#3 {handshake.bb = 1 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %25 = buffer %47#3 {handshake.bb = 1 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %26 = mux %24 [%23, %25] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %27 = buffer %22#2 {handshake.bb = 1 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %28 = mux %27 [%arg0, %trueResult_7] {ftd.regen, handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mux4"} : <i1>, <i32>
    %29 = buffer %28 {handshake.bb = 1 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %30 = buffer %29 {handshake.bb = 1 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %31:2 = fork [2] %30 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <i32>
    %32 = buffer %22#1 {handshake.bb = 1 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %33 = buffer %58#0 {handshake.bb = 1 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %34 = mux %32 [%17, %33] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %35 = buffer %22#0 {handshake.bb = 1 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %36 = mux %35 [%15, %124] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %37 = buffer %36 {handshake.bb = 1 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %38 = buffer %37 {handshake.bb = 1 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %39:2 = fork [2] %38 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i32>
    %40 = buffer %31#0 {handshake.bb = 1 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %41 = buffer %39#1 {handshake.bb = 1 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %42 = cmpi ult, %41, %40 {handshake.bb = 1 : ui32, handshake.name = "cmpi0"} : <i32>
    %43:5 = fork [5] %42 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i1>
    %44 = buffer %26 {handshake.bb = 2 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %45 = buffer %44 {handshake.bb = 2 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %46 = buffer %43#1 {handshake.bb = 2 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_9, %falseResult_10 = cond_br %46, %45 {handshake.bb = 2 : ui32, handshake.name = "cond_br28"} : <i1>, <>
    sink %falseResult_10 {handshake.name = "sink2"} : <>
    %47:4 = fork [4] %trueResult_9 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <>
    %48 = buffer %47#1 {handshake.bb = 2 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %49 = constant %48 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 1 : i2} : <>, <i2>
    %50:2 = fork [2] %49 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i2>
    %51 = buffer %50#0 {handshake.bb = 2 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %52 = extsi %51 {handshake.bb = 2 : ui32, handshake.name = "extsi7"} : <i2> to <i4>
    %53 = buffer %50#1 {handshake.bb = 2 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %54 = extsi %53 {handshake.bb = 2 : ui32, handshake.name = "extsi2"} : <i2> to <i32>
    %55 = buffer %47#0 {handshake.bb = 2 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %56 = constant %55 {handshake.bb = 2 : ui32, handshake.name = "constant9", value = false} : <>, <i1>
    %57 = extsi %56 {handshake.bb = 2 : ui32, handshake.name = "extsi4"} : <i1> to <i32>
    %addressResult, %dataResult = load[%119] %outputs_5#0 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i4>, <i32>
    %58:2 = fork [2] %dataResult {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i32>
    %59 = addi %115, %52 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i4>
    %addressResult_11, %dataResult_12 = load[%59] %outputs_5#1 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i4>, <i32>
    %60 = buffer %76#1 {handshake.bb = 3 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %61 = buffer %88#3 {handshake.bb = 3 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_13, %falseResult_14 = cond_br %61, %60 {handshake.bb = 3 : ui32, handshake.name = "cond_br29"} : <i1>, <i32>
    sink %falseResult_14 {handshake.name = "sink3"} : <i32>
    %62 = buffer %0#7 {handshake.bb = 3 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %63 = constant %62 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant13", value = false} : <>, <i1>
    %64 = buffer %88#4 {handshake.bb = 3 : ui32, handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %65 = merge %63, %64 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge7"} : <i1>
    %66 = buffer %65 {handshake.bb = 3 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %67:4 = fork [4] %66 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork9"} : <i1>
    %68 = buffer %47#2 {handshake.bb = 3 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %69 = buffer %67#3 {handshake.bb = 3 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %70 = buffer %102#1 {handshake.bb = 3 : ui32, handshake.name = "buffer69", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %71 = mux %69 [%68, %70] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <>
    %72 = buffer %67#2 {handshake.bb = 3 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %73 = mux %72 [%dataResult_12, %trueResult_13] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %74 = buffer %73 {handshake.bb = 3 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %75 = buffer %74 {handshake.bb = 3 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %76:2 = fork [2] %75 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i32>
    %77 = buffer %67#1 {handshake.bb = 3 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %78 = mux %77 [%57, %108] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %79 = buffer %58#1 {handshake.bb = 3 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %80 = buffer %67#0 {handshake.bb = 3 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %81 = mux %80 [%79, %110] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %82 = buffer %81 {handshake.bb = 3 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %83 = buffer %82 {handshake.bb = 3 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %84:2 = fork [2] %83 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i32>
    %85 = buffer %76#0 {handshake.bb = 3 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %86 = buffer %84#1 {handshake.bb = 3 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %87 = cmpi slt, %86, %85 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %88:5 = fork [5] %87 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i1>
    %89 = buffer %78 {handshake.bb = 4 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %90 = buffer %89 {handshake.bb = 4 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %91 = buffer %88#2 {handshake.bb = 4 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_15, %falseResult_16 = cond_br %91, %90 {handshake.bb = 4 : ui32, handshake.name = "cond_br30"} : <i1>, <i32>
    %92 = buffer %84#0 {handshake.bb = 4 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %93 = buffer %88#1 {handshake.bb = 4 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_17, %falseResult_18 = cond_br %93, %92 {handshake.bb = 4 : ui32, handshake.name = "cond_br31"} : <i1>, <i32>
    sink %falseResult_18 {handshake.name = "sink4"} : <i32>
    %94:3 = fork [3] %trueResult_17 {handshake.bb = 4 : ui32, handshake.name = "fork13"} : <i32>
    %95 = buffer %94#0 {handshake.bb = 4 : ui32, handshake.name = "buffer65", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %96 = trunci %95 {handshake.bb = 4 : ui32, handshake.name = "trunci0"} : <i32> to <i4>
    %97 = buffer %94#1 {handshake.bb = 4 : ui32, handshake.name = "buffer66", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %98 = trunci %97 {handshake.bb = 4 : ui32, handshake.name = "trunci1"} : <i32> to <i4>
    %99 = buffer %71 {handshake.bb = 4 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %100 = buffer %99 {handshake.bb = 4 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %101 = buffer %88#0 {handshake.bb = 4 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_19, %falseResult_20 = cond_br %101, %100 {handshake.bb = 4 : ui32, handshake.name = "cond_br32"} : <i1>, <>
    sink %falseResult_20 {handshake.name = "sink5"} : <>
    %102:2 = fork [2] %trueResult_19 {handshake.bb = 4 : ui32, handshake.name = "fork14"} : <>
    %103 = buffer %102#0 {handshake.bb = 4 : ui32, handshake.name = "buffer68", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %104 = constant %103 {handshake.bb = 4 : ui32, handshake.name = "constant10", value = 1 : i2} : <>, <i2>
    %105 = extsi %104 {handshake.bb = 4 : ui32, handshake.name = "extsi5"} : <i2> to <i32>
    %addressResult_21, %dataResult_22 = load[%98] %outputs_3 {handshake.bb = 4 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load7"} : <i4>, <i32>
    %106 = trunci %dataResult_22 {handshake.bb = 4 : ui32, handshake.name = "trunci2"} : <i32> to <i4>
    %addressResult_23, %dataResult_24 = load[%96] %outputs_1 {handshake.bb = 4 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load8"} : <i4>, <i32>
    %addressResult_25, %dataResult_26 = load[%106] %outputs {handshake.bb = 4 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load9"} : <i4>, <i32>
    %107 = muli %dataResult_24, %dataResult_26 {handshake.bb = 4 : ui32, handshake.name = "muli0"} : <i32>
    %108 = addi %trueResult_15, %107 {handshake.bb = 4 : ui32, handshake.name = "addi0"} : <i32>
    %109 = buffer %94#2 {handshake.bb = 4 : ui32, handshake.name = "buffer67", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %110 = addi %109, %105 {handshake.bb = 4 : ui32, handshake.name = "addi2"} : <i32>
    %111 = buffer %39#0 {handshake.bb = 5 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %112 = buffer %43#0 {handshake.bb = 5 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_27, %falseResult_28 = cond_br %112, %111 {handshake.bb = 5 : ui32, handshake.name = "cond_br33"} : <i1>, <i32>
    sink %falseResult_28 {handshake.name = "sink6"} : <i32>
    %113:4 = fork [4] %trueResult_27 {handshake.bb = 5 : ui32, handshake.name = "fork15"} : <i32>
    %114 = buffer %113#0 {handshake.bb = 5 : ui32, handshake.name = "buffer70", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %115 = trunci %114 {handshake.bb = 5 : ui32, handshake.name = "trunci3"} : <i32> to <i4>
    %116 = buffer %113#1 {handshake.bb = 5 : ui32, handshake.name = "buffer71", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %117 = trunci %116 {handshake.bb = 5 : ui32, handshake.name = "trunci4"} : <i32> to <i4>
    %118 = buffer %113#2 {handshake.bb = 5 : ui32, handshake.name = "buffer72", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %119 = trunci %118 {handshake.bb = 5 : ui32, handshake.name = "trunci5"} : <i32> to <i4>
    %120 = buffer %0#5 {handshake.bb = 5 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %121 = constant %120 {handshake.bb = 5 : ui32, handshake.name = "constant11", value = 1 : i2} : <>, <i2>
    %122 = extsi %121 {handshake.bb = 5 : ui32, handshake.name = "extsi6"} : <i2> to <i32>
    %addressResult_29, %dataResult_30 = store[%117] %falseResult_16 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i4>, <i32>
    %123 = buffer %113#3 {handshake.bb = 5 : ui32, handshake.name = "buffer73", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %124 = addi %123, %54 {handshake.bb = 5 : ui32, handshake.name = "addi3"} : <i32>
    %125 = buffer %0#6 {handshake.bb = 6 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %falseResult, %memEnd_6, %memEnd_4, %memEnd_2, %memEnd_0, %memEnd, %125 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


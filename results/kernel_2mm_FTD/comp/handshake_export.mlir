module {
  handshake.func @kernel_2mm(%arg0: !handshake.channel<i32>, %arg1: !handshake.channel<i32>, %arg2: memref<49xi32>, %arg3: memref<49xi32>, %arg4: memref<49xi32>, %arg5: memref<49xi32>, %arg6: memref<49xi32>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, %arg12: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["alpha", "beta", "tmp", "A", "B", "C", "D", "tmp_start", "A_start", "B_start", "C_start", "D_start", "start"], cfg.edges = "[0,1][7,8][2,3][9,7,10,cmpi4][4,2,5,cmpi1][6,7][1,2][8,8,9,cmpi3][3,3,4,cmpi0][10,6,11,cmpi5][5,1,6,cmpi2]", resNames = ["out0", "tmp_end", "A_end", "B_end", "C_end", "D_end", "end"]} {
    %0:16 = fork [16] %arg12 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %2:4 = lsq[%arg6 : memref<49xi32>] (%arg11, %310#1, %addressResult_44, %addressResult_46, %dataResult_47, %394#1, %addressResult_66, %addressResult_68, %dataResult_69, %522#0, %addressResult_92, %522#1)  {groupSizes = [2 : i32, 2 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "10": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "11": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "7": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "8": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "9": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq2"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %outputs, %memEnd = mem_controller[%arg5 : memref<49xi32>] %arg10 (%addressResult_64) %0#3 {connectedBlocks = [8 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %outputs_0, %memEnd_1 = mem_controller[%arg4 : memref<49xi32>] %arg9 (%addressResult_18) %0#2 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller4"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %outputs_2, %memEnd_3 = mem_controller[%arg3 : memref<49xi32>] %arg8 (%addressResult_16) %0#1 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i6>) -> !handshake.channel<i32>
    %7:3 = lsq[%arg2 : memref<49xi32>] (%arg7, %56#1, %addressResult, %dataResult, %121#1, %addressResult_20, %addressResult_22, %dataResult_23, %390#1, %addressResult_62, %0#0)  {groupSizes = [1 : i32, 2 : i32, 1 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "10": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "5": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "6": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "7": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "8": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "9": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lsq3"} : (!handshake.control<>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.channel<i6>, !handshake.channel<i32>, !handshake.control<>, !handshake.channel<i6>, !handshake.control<>) -> (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.control<>)
    %9 = constant %0#15 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant4", value = false} : <>, <i1>
    %10:2 = fork [2] %9 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %12 = extsi %10#0 {handshake.bb = 1 : ui32, handshake.name = "extsi23"} : <i1> to <i4>
    %15 = mux %20#3 [%0#14, %trueResult_34] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <>
    %18 = merge %10#1, %256#4 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge1"} : <i1>
    %19 = buffer %18 {handshake.bb = 1 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %20:4 = fork [4] %19 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <i1>
    %23 = mux %20#2 [%0#13, %trueResult_42] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %24 = buffer %23 {handshake.bb = 1 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %25 = buffer %24 {handshake.bb = 1 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %26:5 = fork [5] %25 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %28 = mux %20#1 [%arg0, %trueResult_40] {ftd.regen, handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mux5"} : <i1>, <i32>
    %29 = buffer %28 {handshake.bb = 1 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %30 = buffer %29 {handshake.bb = 1 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %31:2 = fork [2] %30 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i32>
    %33 = mux %20#0 [%12, %trueResult_38] {handshake.bb = 1 : ui32, handshake.name = "mux12"} : <i1>, <i4>
    %34 = buffer %33 {handshake.bb = 1 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %35 = buffer %34 {handshake.bb = 1 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %36:2 = fork [2] %35 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i4>
    %38 = extsi %36#0 {handshake.bb = 1 : ui32, handshake.name = "extsi24"} : <i4> to <i5>
    %40 = constant %26#2 {handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %41:2 = fork [2] %40 {handshake.bb = 1 : ui32, handshake.name = "fork6"} : <i1>
    %43 = extsi %41#0 {handshake.bb = 1 : ui32, handshake.name = "extsi25"} : <i1> to <i4>
    %45 = constant %0#12 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant28", value = false} : <>, <i1>
    %46 = buffer %15 {handshake.bb = 2 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %47 = buffer %46 {handshake.bb = 2 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %49 = mux %53#4 [%47, %trueResult_24] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux7"} : <i1>, <>
    %51 = merge %45, %234#5 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge4"} : <i1>
    %52 = buffer %51 {handshake.bb = 2 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %53:5 = fork [5] %52 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork7"} : <i1>
    %54 = buffer %49 {handshake.bb = 2 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %55 = buffer %54 {handshake.bb = 2 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %56:2 = lazy_fork [2] %55 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork0"} : <>
    %59 = mux %53#3 [%31#1, %trueResult_32] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux17"} : <i1>, <i32>
    %60 = buffer %59 {handshake.bb = 2 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %61 = buffer %60 {handshake.bb = 2 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %62:2 = fork [2] %61 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i32>
    %65 = mux %53#2 [%26#4, %trueResult_30] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux20"} : <i1>, <>
    %66 = buffer %65 {handshake.bb = 2 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %67 = buffer %66 {handshake.bb = 2 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %68:5 = fork [5] %67 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <>
    %71 = mux %53#0 [%36#1, %trueResult_28] {handshake.bb = 2 : ui32, handshake.name = "mux21"} : <i1>, <i4>
    %72 = buffer %71 {handshake.bb = 2 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %73 = buffer %72 {handshake.bb = 2 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %74:3 = fork [3] %73 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i4>
    %76 = extsi %74#2 {handshake.bb = 2 : ui32, handshake.name = "extsi26"} : <i4> to <i8>
    %78 = mux %53#1 [%43, %trueResult_26] {handshake.bb = 2 : ui32, handshake.name = "mux25"} : <i1>, <i4>
    %79 = buffer %78 {handshake.bb = 2 : ui32, handshake.name = "buffer67", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %80 = buffer %79 {handshake.bb = 2 : ui32, handshake.name = "buffer68", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %81:3 = fork [3] %80 {handshake.bb = 2 : ui32, handshake.name = "fork11"} : <i4>
    %83 = extsi %81#0 {handshake.bb = 2 : ui32, handshake.name = "extsi27"} : <i4> to <i6>
    %85 = extsi %81#1 {handshake.bb = 2 : ui32, handshake.name = "extsi28"} : <i4> to <i5>
    %87 = constant %68#2 {handshake.bb = 2 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %88:2 = fork [2] %87 {handshake.bb = 2 : ui32, handshake.name = "fork12"} : <i1>
    %90 = extsi %88#0 {handshake.bb = 2 : ui32, handshake.name = "extsi29"} : <i1> to <i4>
    %92 = extsi %88#1 {handshake.bb = 2 : ui32, handshake.name = "extsi4"} : <i1> to <i32>
    %94 = constant %68#1 {handshake.bb = 2 : ui32, handshake.name = "constant3", value = 7 : i4} : <>, <i4>
    %95:2 = fork [2] %94 {handshake.bb = 2 : ui32, handshake.name = "fork13"} : <i4>
    %97 = extsi %95#0 {handshake.bb = 2 : ui32, handshake.name = "extsi30"} : <i4> to <i8>
    %99 = extsi %95#1 {handshake.bb = 2 : ui32, handshake.name = "extsi31"} : <i4> to <i5>
    %100 = muli %76, %97 {handshake.bb = 2 : ui32, handshake.name = "muli4"} : <i8>
    %101 = trunci %100 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i8> to <i6>
    %102 = addi %83, %101 {handshake.bb = 2 : ui32, handshake.name = "addi2"} : <i6>
    %addressResult, %dataResult = store[%102] %92 {handshake.bb = 2 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0]]>, <"store1" (3) [[0, 0], [0, 0]]>, <"load4" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store0"} : <i6>, <i32>
    %trueResult, %falseResult = cond_br %216#7, %118#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br48"} : <i1>, <>
    sink %falseResult {handshake.name = "sink0"} : <>
    %105 = buffer %121#0 {handshake.bb = 3 : ui32, handshake.name = "buffer88", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %106 = buffer %216#6 {handshake.bb = 3 : ui32, handshake.name = "buffer128", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_4, %falseResult_5 = cond_br %106, %105 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br49"} : <i1>, <>
    sink %trueResult_4 {handshake.name = "sink1"} : <>
    %108 = constant %0#11 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant29", value = false} : <>, <i1>
    %110 = merge %108, %216#5 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge7"} : <i1>
    %111 = buffer %110 {handshake.bb = 3 : ui32, handshake.name = "buffer76", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %112:6 = fork [6] %111 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork14"} : <i1>
    %113 = buffer %56#0 {handshake.bb = 3 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %115 = mux %112#5 [%113, %trueResult] {ftd.regen, handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mux8"} : <i1>, <>
    %116 = buffer %115 {handshake.bb = 3 : ui32, handshake.name = "buffer83", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %117 = buffer %116 {handshake.bb = 3 : ui32, handshake.name = "buffer84", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %118:2 = fork [2] %117 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <>
    %119 = buffer %118#0 {handshake.bb = 3 : ui32, handshake.name = "buffer85", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %121:2 = lazy_fork [2] %119 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork1"} : <>
    %trueResult_6, %falseResult_7 = cond_br %216#0, %213 {handshake.bb = 3 : ui32, handshake.name = "cond_br82"} : <i1>, <i4>
    sink %falseResult_7 {handshake.name = "sink2"} : <i4>
    %trueResult_8, %falseResult_9 = cond_br %216#4, %166#2 {handshake.bb = 3 : ui32, handshake.name = "cond_br83"} : <i1>, <>
    sink %falseResult_9 {handshake.name = "sink3"} : <>
    %trueResult_10, %falseResult_11 = cond_br %216#3, %160#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br84"} : <i1>, <i32>
    sink %falseResult_11 {handshake.name = "sink4"} : <i32>
    %128 = buffer %216#2 {handshake.bb = 3 : ui32, handshake.name = "buffer124", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_12, %falseResult_13 = cond_br %128, %148#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br85"} : <i1>, <i4>
    sink %falseResult_13 {handshake.name = "sink5"} : <i4>
    %trueResult_14, %falseResult_15 = cond_br %216#1, %136#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br86"} : <i1>, <i4>
    sink %falseResult_15 {handshake.name = "sink6"} : <i4>
    %133 = mux %112#0 [%74#1, %trueResult_14] {handshake.bb = 3 : ui32, handshake.name = "mux29"} : <i1>, <i4>
    %134 = buffer %133 {handshake.bb = 3 : ui32, handshake.name = "buffer89", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %135 = buffer %134 {handshake.bb = 3 : ui32, handshake.name = "buffer90", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %136:4 = fork [4] %135 {handshake.bb = 3 : ui32, handshake.name = "fork16"} : <i4>
    %137 = buffer %136#0 {handshake.bb = 3 : ui32, handshake.name = "buffer91", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %138 = extsi %137 {handshake.bb = 3 : ui32, handshake.name = "extsi32"} : <i4> to <i8>
    %140 = extsi %136#1 {handshake.bb = 3 : ui32, handshake.name = "extsi33"} : <i4> to <i8>
    %142 = extsi %136#2 {handshake.bb = 3 : ui32, handshake.name = "extsi34"} : <i4> to <i8>
    %144 = buffer %112#1 {handshake.bb = 3 : ui32, handshake.name = "buffer78", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %145 = mux %144 [%81#2, %trueResult_12] {handshake.bb = 3 : ui32, handshake.name = "mux30"} : <i1>, <i4>
    %146 = buffer %145 {handshake.bb = 3 : ui32, handshake.name = "buffer95", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %147 = buffer %146 {handshake.bb = 3 : ui32, handshake.name = "buffer96", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %148:4 = fork [4] %147 {handshake.bb = 3 : ui32, handshake.name = "fork17"} : <i4>
    %150 = extsi %148#0 {handshake.bb = 3 : ui32, handshake.name = "extsi35"} : <i4> to <i6>
    %152 = extsi %148#1 {handshake.bb = 3 : ui32, handshake.name = "extsi36"} : <i4> to <i6>
    %153 = buffer %148#2 {handshake.bb = 3 : ui32, handshake.name = "buffer99", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %154 = extsi %153 {handshake.bb = 3 : ui32, handshake.name = "extsi37"} : <i4> to <i6>
    %157 = mux %112#4 [%62#1, %trueResult_10] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux31"} : <i1>, <i32>
    %158 = buffer %157 {handshake.bb = 3 : ui32, handshake.name = "buffer101", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %159 = buffer %158 {handshake.bb = 3 : ui32, handshake.name = "buffer102", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %160:2 = fork [2] %159 {handshake.bb = 3 : ui32, handshake.name = "fork18"} : <i32>
    %163 = mux %112#3 [%68#4, %trueResult_8] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux33"} : <i1>, <>
    %164 = buffer %163 {handshake.bb = 3 : ui32, handshake.name = "buffer105", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %165 = buffer %164 {handshake.bb = 3 : ui32, handshake.name = "buffer106", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %166:3 = fork [3] %165 {handshake.bb = 3 : ui32, handshake.name = "fork19"} : <>
    %168 = mux %112#2 [%90, %trueResult_6] {handshake.bb = 3 : ui32, handshake.name = "mux35"} : <i1>, <i4>
    %169 = buffer %168 {handshake.bb = 3 : ui32, handshake.name = "buffer110", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %170 = buffer %169 {handshake.bb = 3 : ui32, handshake.name = "buffer111", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %171:3 = fork [3] %170 {handshake.bb = 3 : ui32, handshake.name = "fork20"} : <i4>
    %172 = buffer %171#0 {handshake.bb = 3 : ui32, handshake.name = "buffer112", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %173 = extsi %172 {handshake.bb = 3 : ui32, handshake.name = "extsi38"} : <i4> to <i6>
    %175 = extsi %171#1 {handshake.bb = 3 : ui32, handshake.name = "extsi39"} : <i4> to <i5>
    %177 = extsi %171#2 {handshake.bb = 3 : ui32, handshake.name = "extsi40"} : <i4> to <i8>
    %179 = constant %166#1 {handshake.bb = 3 : ui32, handshake.name = "constant26", value = 7 : i4} : <>, <i4>
    %180:5 = fork [5] %179 {handshake.bb = 3 : ui32, handshake.name = "fork21"} : <i4>
    %181 = buffer %180#0 {handshake.bb = 3 : ui32, handshake.name = "buffer115", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %182 = extsi %181 {handshake.bb = 3 : ui32, handshake.name = "extsi41"} : <i4> to <i8>
    %184 = extsi %180#1 {handshake.bb = 3 : ui32, handshake.name = "extsi42"} : <i4> to <i8>
    %186 = extsi %180#2 {handshake.bb = 3 : ui32, handshake.name = "extsi43"} : <i4> to <i8>
    %188 = extsi %180#3 {handshake.bb = 3 : ui32, handshake.name = "extsi44"} : <i4> to <i5>
    %189 = buffer %180#4 {handshake.bb = 3 : ui32, handshake.name = "buffer119", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %190 = extsi %189 {handshake.bb = 3 : ui32, handshake.name = "extsi45"} : <i4> to <i8>
    %192 = constant %166#0 {handshake.bb = 3 : ui32, handshake.name = "constant27", value = 1 : i2} : <>, <i2>
    %193 = extsi %192 {handshake.bb = 3 : ui32, handshake.name = "extsi46"} : <i2> to <i5>
    %194 = muli %142, %186 {handshake.bb = 3 : ui32, handshake.name = "muli5"} : <i8>
    %195 = trunci %194 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i8> to <i6>
    %196 = addi %173, %195 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i6>
    %addressResult_16, %dataResult_17 = load[%196] %outputs_2 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i6>, <i32>
    %197 = buffer %160#0 {handshake.bb = 3 : ui32, handshake.name = "buffer103", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %198 = muli %197, %dataResult_17 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %199 = muli %177, %190 {handshake.bb = 3 : ui32, handshake.name = "muli6"} : <i8>
    %200 = trunci %199 {handshake.bb = 3 : ui32, handshake.name = "trunci2"} : <i8> to <i6>
    %201 = addi %150, %200 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i6>
    %addressResult_18, %dataResult_19 = load[%201] %outputs_0 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i6>, <i32>
    %202 = muli %198, %dataResult_19 {handshake.bb = 3 : ui32, handshake.name = "muli1"} : <i32>
    %203 = muli %140, %184 {handshake.bb = 3 : ui32, handshake.name = "muli7"} : <i8>
    %204 = trunci %203 {handshake.bb = 3 : ui32, handshake.name = "trunci3"} : <i8> to <i6>
    %205 = addi %152, %204 {handshake.bb = 3 : ui32, handshake.name = "addi5"} : <i6>
    %addressResult_20, %dataResult_21 = load[%205] %7#0 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load2"} : <i6>, <i32>
    %206 = addi %dataResult_21, %202 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %207 = muli %138, %182 {handshake.bb = 3 : ui32, handshake.name = "muli8"} : <i8>
    %208 = trunci %207 {handshake.bb = 3 : ui32, handshake.name = "trunci4"} : <i8> to <i6>
    %209 = addi %154, %208 {handshake.bb = 3 : ui32, handshake.name = "addi6"} : <i6>
    %addressResult_22, %dataResult_23 = store[%209] %206 {handshake.bb = 3 : ui32, handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"load4" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store1"} : <i6>, <i32>
    %210 = addi %175, %193 {handshake.bb = 3 : ui32, handshake.name = "addi14"} : <i5>
    %211:2 = fork [2] %210 {handshake.bb = 3 : ui32, handshake.name = "fork22"} : <i5>
    %213 = trunci %211#0 {handshake.bb = 3 : ui32, handshake.name = "trunci5"} : <i5> to <i4>
    %215 = cmpi ult, %211#1, %188 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i5>
    %216:8 = fork [8] %215 {handshake.bb = 3 : ui32, handshake.name = "fork23"} : <i1>
    %217 = buffer %234#4 {handshake.bb = 4 : ui32, handshake.name = "buffer136", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_24, %falseResult_25 = cond_br %217, %falseResult_5 {handshake.bb = 4 : ui32, handshake.name = "cond_br50"} : <i1>, <>
    %trueResult_26, %falseResult_27 = cond_br %234#0, %231 {handshake.bb = 4 : ui32, handshake.name = "cond_br87"} : <i1>, <i4>
    sink %falseResult_27 {handshake.name = "sink7"} : <i4>
    %trueResult_28, %falseResult_29 = cond_br %234#1, %74#0 {handshake.bb = 4 : ui32, handshake.name = "cond_br88"} : <i1>, <i4>
    sink %falseResult_29 {handshake.name = "sink8"} : <i4>
    %trueResult_30, %falseResult_31 = cond_br %234#3, %68#3 {handshake.bb = 4 : ui32, handshake.name = "cond_br89"} : <i1>, <>
    sink %falseResult_31 {handshake.name = "sink9"} : <>
    %trueResult_32, %falseResult_33 = cond_br %234#2, %62#0 {handshake.bb = 4 : ui32, handshake.name = "cond_br90"} : <i1>, <i32>
    sink %falseResult_33 {handshake.name = "sink10"} : <i32>
    %226 = constant %68#0 {handshake.bb = 4 : ui32, handshake.name = "constant30", value = 1 : i2} : <>, <i2>
    %227 = extsi %226 {handshake.bb = 4 : ui32, handshake.name = "extsi47"} : <i2> to <i5>
    %228 = addi %85, %227 {handshake.bb = 4 : ui32, handshake.name = "addi15"} : <i5>
    %229:2 = fork [2] %228 {handshake.bb = 4 : ui32, handshake.name = "fork24"} : <i5>
    %231 = trunci %229#0 {handshake.bb = 4 : ui32, handshake.name = "trunci6"} : <i5> to <i4>
    %233 = cmpi ult, %229#1, %99 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i5>
    %234:6 = fork [6] %233 {handshake.bb = 4 : ui32, handshake.name = "fork25"} : <i1>
    %trueResult_34, %falseResult_35 = cond_br %256#3, %falseResult_25 {handshake.bb = 5 : ui32, handshake.name = "cond_br51"} : <i1>, <>
    %trueResult_36, %falseResult_37 = cond_br %256#5, %41#1 {handshake.bb = 5 : ui32, handshake.name = "cond_br91"} : <i1>, <i1>
    sink %trueResult_36 {handshake.name = "sink11"} : <i1>
    %238 = extsi %falseResult_37 {handshake.bb = 5 : ui32, handshake.name = "extsi22"} : <i1> to <i4>
    %trueResult_38, %falseResult_39 = cond_br %256#0, %253 {handshake.bb = 5 : ui32, handshake.name = "cond_br92"} : <i1>, <i4>
    sink %falseResult_39 {handshake.name = "sink12"} : <i4>
    %trueResult_40, %falseResult_41 = cond_br %256#2, %31#0 {handshake.bb = 5 : ui32, handshake.name = "cond_br93"} : <i1>, <i32>
    sink %falseResult_41 {handshake.name = "sink13"} : <i32>
    %trueResult_42, %falseResult_43 = cond_br %256#1, %26#3 {handshake.bb = 5 : ui32, handshake.name = "cond_br94"} : <i1>, <>
    sink %falseResult_43 {handshake.name = "sink14"} : <>
    %244 = buffer %26#1 {handshake.bb = 5 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %245 = constant %244 {handshake.bb = 5 : ui32, handshake.name = "constant31", value = 7 : i4} : <>, <i4>
    %246 = extsi %245 {handshake.bb = 5 : ui32, handshake.name = "extsi48"} : <i4> to <i5>
    %248 = constant %26#0 {handshake.bb = 5 : ui32, handshake.name = "constant33", value = 1 : i2} : <>, <i2>
    %249 = extsi %248 {handshake.bb = 5 : ui32, handshake.name = "extsi49"} : <i2> to <i5>
    %250 = addi %38, %249 {handshake.bb = 5 : ui32, handshake.name = "addi16"} : <i5>
    %251:2 = fork [2] %250 {handshake.bb = 5 : ui32, handshake.name = "fork26"} : <i5>
    %253 = trunci %251#0 {handshake.bb = 5 : ui32, handshake.name = "trunci7"} : <i5> to <i4>
    %254 = buffer %251#1 {handshake.bb = 5 : ui32, handshake.name = "buffer139", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %255 = cmpi ult, %254, %246 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i5>
    %256:6 = fork [6] %255 {handshake.bb = 5 : ui32, handshake.name = "fork27"} : <i1>
    %258 = constant %0#10 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "constant32", value = false} : <>, <i1>
    %260 = merge %258, %520#5 {ftd.imerge, handshake.bb = 6 : ui32, handshake.name = "merge10"} : <i1>
    %261 = buffer %260 {handshake.bb = 6 : ui32, handshake.name = "buffer146", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %262:5 = fork [5] %261 {handshake.bb = 6 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork28"} : <i1>
    %264 = mux %262#4 [%falseResult_35, %trueResult_84] {ftd.regen, handshake.bb = 6 : ui32, handshake.name = "mux11"} : <i1>, <>
    %265 = buffer %264 {handshake.bb = 6 : ui32, handshake.name = "buffer152", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %266 = buffer %265 {handshake.bb = 6 : ui32, handshake.name = "buffer153", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %267:2 = fork [2] %266 {handshake.bb = 6 : ui32, handshake.name = "fork29"} : <>
    %270 = mux %262#3 [%0#9, %trueResult_82] {ftd.phi, handshake.bb = 6 : ui32, handshake.name = "mux15"} : <i1>, <>
    %273 = mux %262#2 [%0#8, %trueResult_90] {ftd.regen, handshake.bb = 6 : ui32, handshake.name = "mux36"} : <i1>, <>
    %274 = buffer %273 {handshake.bb = 6 : ui32, handshake.name = "buffer158", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %275 = buffer %274 {handshake.bb = 6 : ui32, handshake.name = "buffer159", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %276:5 = fork [5] %275 {handshake.bb = 6 : ui32, handshake.name = "fork30"} : <>
    %278 = mux %262#1 [%arg1, %trueResult_88] {ftd.regen, handshake.bb = 6 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mux42"} : <i1>, <i32>
    %279 = buffer %278 {handshake.bb = 6 : ui32, handshake.name = "buffer165", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %280 = buffer %279 {handshake.bb = 6 : ui32, handshake.name = "buffer166", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %281:2 = fork [2] %280 {handshake.bb = 6 : ui32, handshake.name = "fork31"} : <i32>
    %283 = mux %262#0 [%238, %trueResult_86] {handshake.bb = 6 : ui32, handshake.name = "mux46"} : <i1>, <i4>
    %284 = buffer %283 {handshake.bb = 6 : ui32, handshake.name = "buffer169", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %285 = buffer %284 {handshake.bb = 6 : ui32, handshake.name = "buffer170", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %286:2 = fork [2] %285 {handshake.bb = 6 : ui32, handshake.name = "fork32"} : <i4>
    %288 = extsi %286#0 {handshake.bb = 6 : ui32, handshake.name = "extsi50"} : <i4> to <i5>
    %290 = constant %276#2 {handshake.bb = 6 : ui32, handshake.name = "constant34", value = false} : <>, <i1>
    %291 = extsi %290 {handshake.bb = 6 : ui32, handshake.name = "extsi51"} : <i1> to <i4>
    %293 = constant %0#7 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "constant37", value = false} : <>, <i1>
    %295 = merge %293, %499#6 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "merge15"} : <i1>
    %296 = buffer %295 {handshake.bb = 7 : ui32, handshake.name = "buffer173", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %297:6 = fork [6] %296 {handshake.bb = 7 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork33"} : <i1>
    %300 = mux %297#5 [%267#1, %trueResult_72] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux16"} : <i1>, <>
    %301 = buffer %300 {handshake.bb = 7 : ui32, handshake.name = "buffer180", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %302 = buffer %301 {handshake.bb = 7 : ui32, handshake.name = "buffer181", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %303:2 = fork [2] %302 {handshake.bb = 7 : ui32, handshake.name = "fork34"} : <>
    %304 = buffer %270 {handshake.bb = 7 : ui32, handshake.name = "buffer156", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %305 = buffer %304 {handshake.bb = 7 : ui32, handshake.name = "buffer157", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %307 = mux %297#4 [%305, %trueResult_70] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux22"} : <i1>, <>
    %308 = buffer %307 {handshake.bb = 7 : ui32, handshake.name = "buffer184", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %309 = buffer %308 {handshake.bb = 7 : ui32, handshake.name = "buffer185", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %310:2 = lazy_fork [2] %309 {handshake.bb = 7 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork2"} : <>
    %313 = mux %297#3 [%281#1, %trueResult_80] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux55"} : <i1>, <i32>
    %314 = buffer %313 {handshake.bb = 7 : ui32, handshake.name = "buffer187", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %315 = buffer %314 {handshake.bb = 7 : ui32, handshake.name = "buffer188", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %316:2 = fork [2] %315 {handshake.bb = 7 : ui32, handshake.name = "fork35"} : <i32>
    %319 = mux %297#0 [%286#1, %trueResult_78] {handshake.bb = 7 : ui32, handshake.name = "mux56"} : <i1>, <i4>
    %320 = buffer %319 {handshake.bb = 7 : ui32, handshake.name = "buffer191", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %321 = buffer %320 {handshake.bb = 7 : ui32, handshake.name = "buffer192", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %322:4 = fork [4] %321 {handshake.bb = 7 : ui32, handshake.name = "fork36"} : <i4>
    %324 = extsi %322#2 {handshake.bb = 7 : ui32, handshake.name = "extsi52"} : <i4> to <i8>
    %326 = extsi %322#3 {handshake.bb = 7 : ui32, handshake.name = "extsi53"} : <i4> to <i8>
    %329 = mux %297#2 [%276#4, %trueResult_76] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux58"} : <i1>, <>
    %330 = buffer %329 {handshake.bb = 7 : ui32, handshake.name = "buffer197", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %331 = buffer %330 {handshake.bb = 7 : ui32, handshake.name = "buffer198", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %332:5 = fork [5] %331 {handshake.bb = 7 : ui32, handshake.name = "fork37"} : <>
    %334 = mux %297#1 [%291, %trueResult_74] {handshake.bb = 7 : ui32, handshake.name = "mux59"} : <i1>, <i4>
    %335 = buffer %334 {handshake.bb = 7 : ui32, handshake.name = "buffer204", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %336 = buffer %335 {handshake.bb = 7 : ui32, handshake.name = "buffer205", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %337:4 = fork [4] %336 {handshake.bb = 7 : ui32, handshake.name = "fork38"} : <i4>
    %339 = extsi %337#0 {handshake.bb = 7 : ui32, handshake.name = "extsi54"} : <i4> to <i6>
    %341 = extsi %337#1 {handshake.bb = 7 : ui32, handshake.name = "extsi55"} : <i4> to <i6>
    %343 = extsi %337#2 {handshake.bb = 7 : ui32, handshake.name = "extsi56"} : <i4> to <i5>
    %345 = constant %332#2 {handshake.bb = 7 : ui32, handshake.name = "constant35", value = false} : <>, <i1>
    %346 = extsi %345 {handshake.bb = 7 : ui32, handshake.name = "extsi57"} : <i1> to <i4>
    %348 = constant %332#1 {handshake.bb = 7 : ui32, handshake.name = "constant36", value = 7 : i4} : <>, <i4>
    %349:3 = fork [3] %348 {handshake.bb = 7 : ui32, handshake.name = "fork39"} : <i4>
    %351 = extsi %349#0 {handshake.bb = 7 : ui32, handshake.name = "extsi58"} : <i4> to <i8>
    %353 = extsi %349#1 {handshake.bb = 7 : ui32, handshake.name = "extsi59"} : <i4> to <i8>
    %355 = extsi %349#2 {handshake.bb = 7 : ui32, handshake.name = "extsi60"} : <i4> to <i5>
    %356 = muli %326, %353 {handshake.bb = 7 : ui32, handshake.name = "muli9"} : <i8>
    %357 = trunci %356 {handshake.bb = 7 : ui32, handshake.name = "trunci8"} : <i8> to <i6>
    %358 = addi %339, %357 {handshake.bb = 7 : ui32, handshake.name = "addi7"} : <i6>
    %addressResult_44, %dataResult_45 = load[%358] %2#0 {handshake.bb = 7 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store2" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "load3"} : <i6>, <i32>
    %360 = muli %dataResult_45, %316#1 {handshake.bb = 7 : ui32, handshake.name = "muli2"} : <i32>
    %361 = muli %324, %351 {handshake.bb = 7 : ui32, handshake.name = "muli10"} : <i8>
    %362 = trunci %361 {handshake.bb = 7 : ui32, handshake.name = "trunci9"} : <i8> to <i6>
    %363 = addi %341, %362 {handshake.bb = 7 : ui32, handshake.name = "addi8"} : <i6>
    %addressResult_46, %dataResult_47 = store[%363] %360 {handshake.bb = 7 : ui32, handshake.deps = #handshake<deps[<"load6" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 0>, handshake.name = "store2"} : <i6>, <i32>
    %365 = buffer %479#7 {handshake.bb = 8 : ui32, handshake.name = "buffer268", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_48, %falseResult_49 = cond_br %365, %387#1 {handshake.bb = 8 : ui32, handshake.name = "cond_br52"} : <i1>, <>
    sink %falseResult_49 {handshake.name = "sink15"} : <>
    %trueResult_50, %falseResult_51 = cond_br %479#6, %381#1 {handshake.bb = 8 : ui32, handshake.name = "cond_br53"} : <i1>, <>
    sink %falseResult_51 {handshake.name = "sink16"} : <>
    %368 = buffer %394#0 {handshake.bb = 8 : ui32, handshake.name = "buffer231", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %trueResult_52, %falseResult_53 = cond_br %479#5, %368 {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "cond_br54"} : <i1>, <>
    sink %trueResult_52 {handshake.name = "sink17"} : <>
    %371 = constant %0#6 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "constant41", value = false} : <>, <i1>
    %373 = merge %371, %479#4 {ftd.imerge, handshake.bb = 8 : ui32, handshake.name = "merge19"} : <i1>
    %374 = buffer %373 {handshake.bb = 8 : ui32, handshake.name = "buffer213", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %375:6 = fork [6] %374 {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork40"} : <i1>
    %376 = buffer %310#0 {handshake.bb = 8 : ui32, handshake.name = "buffer186", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %377 = buffer %375#5 {handshake.bb = 8 : ui32, handshake.name = "buffer219", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %378 = mux %377 [%376, %trueResult_50] {ftd.regen, handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mux23"} : <i1>, <>
    %379 = buffer %378 {handshake.bb = 8 : ui32, handshake.name = "buffer220", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %380 = buffer %379 {handshake.bb = 8 : ui32, handshake.name = "buffer221", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %381:2 = fork [2] %380 {handshake.bb = 8 : ui32, handshake.name = "fork41"} : <>
    %383 = buffer %375#4 {handshake.bb = 8 : ui32, handshake.name = "buffer218", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %384 = mux %383 [%303#1, %trueResult_48] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux24"} : <i1>, <>
    %385 = buffer %384 {handshake.bb = 8 : ui32, handshake.name = "buffer225", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %386 = buffer %385 {handshake.bb = 8 : ui32, handshake.name = "buffer226", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %387:2 = fork [2] %386 {handshake.bb = 8 : ui32, handshake.name = "fork42"} : <>
    %388 = buffer %387#0 {handshake.bb = 8 : ui32, handshake.name = "buffer227", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %390:2 = lazy_fork [2] %388 {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork3"} : <>
    %391 = buffer %390#0 {handshake.name = "buffer230", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    sink %391 {handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "sink18"} : <>
    %392 = buffer %381#0 {handshake.bb = 8 : ui32, handshake.name = "buffer222", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %394:2 = lazy_fork [2] %392 {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [1,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "lazy_fork4"} : <>
    %trueResult_54, %falseResult_55 = cond_br %479#0, %476 {handshake.bb = 8 : ui32, handshake.name = "cond_br95"} : <i1>, <i4>
    sink %falseResult_55 {handshake.name = "sink19"} : <i4>
    %trueResult_56, %falseResult_57 = cond_br %479#3, %431#2 {handshake.bb = 8 : ui32, handshake.name = "cond_br96"} : <i1>, <>
    sink %falseResult_57 {handshake.name = "sink20"} : <>
    %trueResult_58, %falseResult_59 = cond_br %479#1, %419#3 {handshake.bb = 8 : ui32, handshake.name = "cond_br97"} : <i1>, <i4>
    sink %falseResult_59 {handshake.name = "sink21"} : <i4>
    %trueResult_60, %falseResult_61 = cond_br %479#2, %407#3 {handshake.bb = 8 : ui32, handshake.name = "cond_br98"} : <i1>, <i4>
    sink %falseResult_61 {handshake.name = "sink22"} : <i4>
    %404 = mux %375#1 [%337#3, %trueResult_60] {handshake.bb = 8 : ui32, handshake.name = "mux64"} : <i1>, <i4>
    %405 = buffer %404 {handshake.bb = 8 : ui32, handshake.name = "buffer232", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %406 = buffer %405 {handshake.bb = 8 : ui32, handshake.name = "buffer233", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %407:4 = fork [4] %406 {handshake.bb = 8 : ui32, handshake.name = "fork43"} : <i4>
    %408 = buffer %407#0 {handshake.bb = 8 : ui32, handshake.name = "buffer234", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %409 = extsi %408 {handshake.bb = 8 : ui32, handshake.name = "extsi61"} : <i4> to <i6>
    %411 = extsi %407#1 {handshake.bb = 8 : ui32, handshake.name = "extsi62"} : <i4> to <i6>
    %412 = buffer %407#2 {handshake.bb = 8 : ui32, handshake.name = "buffer236", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %413 = extsi %412 {handshake.bb = 8 : ui32, handshake.name = "extsi63"} : <i4> to <i6>
    %415 = buffer %375#0 {handshake.bb = 8 : ui32, handshake.name = "buffer214", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %416 = mux %415 [%322#1, %trueResult_58] {handshake.bb = 8 : ui32, handshake.name = "mux65"} : <i1>, <i4>
    %417 = buffer %416 {handshake.bb = 8 : ui32, handshake.name = "buffer238", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %418 = buffer %417 {handshake.bb = 8 : ui32, handshake.name = "buffer239", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %419:4 = fork [4] %418 {handshake.bb = 8 : ui32, handshake.name = "fork44"} : <i4>
    %420 = buffer %419#0 {handshake.bb = 8 : ui32, handshake.name = "buffer240", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %421 = extsi %420 {handshake.bb = 8 : ui32, handshake.name = "extsi64"} : <i4> to <i8>
    %423 = extsi %419#1 {handshake.bb = 8 : ui32, handshake.name = "extsi65"} : <i4> to <i8>
    %425 = extsi %419#2 {handshake.bb = 8 : ui32, handshake.name = "extsi66"} : <i4> to <i8>
    %428 = mux %375#3 [%332#4, %trueResult_56] {ftd.regen, handshake.bb = 8 : ui32, handshake.name = "mux66"} : <i1>, <>
    %429 = buffer %428 {handshake.bb = 8 : ui32, handshake.name = "buffer244", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %430 = buffer %429 {handshake.bb = 8 : ui32, handshake.name = "buffer245", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %431:3 = fork [3] %430 {handshake.bb = 8 : ui32, handshake.name = "fork45"} : <>
    %433 = mux %375#2 [%346, %trueResult_54] {handshake.bb = 8 : ui32, handshake.name = "mux68"} : <i1>, <i4>
    %434 = buffer %433 {handshake.bb = 8 : ui32, handshake.name = "buffer249", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i4>
    %435 = buffer %434 {handshake.bb = 8 : ui32, handshake.name = "buffer250", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %436:3 = fork [3] %435 {handshake.bb = 8 : ui32, handshake.name = "fork46"} : <i4>
    %437 = buffer %436#0 {handshake.bb = 8 : ui32, handshake.name = "buffer251", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %438 = extsi %437 {handshake.bb = 8 : ui32, handshake.name = "extsi67"} : <i4> to <i6>
    %440 = extsi %436#1 {handshake.bb = 8 : ui32, handshake.name = "extsi68"} : <i4> to <i5>
    %442 = extsi %436#2 {handshake.bb = 8 : ui32, handshake.name = "extsi69"} : <i4> to <i8>
    %444 = constant %431#1 {handshake.bb = 8 : ui32, handshake.name = "constant38", value = 7 : i4} : <>, <i4>
    %445:5 = fork [5] %444 {handshake.bb = 8 : ui32, handshake.name = "fork47"} : <i4>
    %446 = buffer %445#0 {handshake.bb = 8 : ui32, handshake.name = "buffer254", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %447 = extsi %446 {handshake.bb = 8 : ui32, handshake.name = "extsi70"} : <i4> to <i8>
    %448 = buffer %445#1 {handshake.bb = 8 : ui32, handshake.name = "buffer255", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %449 = extsi %448 {handshake.bb = 8 : ui32, handshake.name = "extsi71"} : <i4> to <i8>
    %450 = buffer %445#2 {handshake.bb = 8 : ui32, handshake.name = "buffer256", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %451 = extsi %450 {handshake.bb = 8 : ui32, handshake.name = "extsi72"} : <i4> to <i8>
    %452 = buffer %445#3 {handshake.bb = 8 : ui32, handshake.name = "buffer257", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %453 = extsi %452 {handshake.bb = 8 : ui32, handshake.name = "extsi73"} : <i4> to <i5>
    %454 = buffer %445#4 {handshake.bb = 8 : ui32, handshake.name = "buffer258", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i4>
    %455 = extsi %454 {handshake.bb = 8 : ui32, handshake.name = "extsi74"} : <i4> to <i8>
    %457 = constant %431#0 {handshake.bb = 8 : ui32, handshake.name = "constant39", value = 1 : i2} : <>, <i2>
    %458 = extsi %457 {handshake.bb = 8 : ui32, handshake.name = "extsi75"} : <i2> to <i5>
    %459 = muli %425, %451 {handshake.bb = 8 : ui32, handshake.name = "muli11"} : <i8>
    %460 = trunci %459 {handshake.bb = 8 : ui32, handshake.name = "trunci10"} : <i8> to <i6>
    %461 = addi %438, %460 {handshake.bb = 8 : ui32, handshake.name = "addi9"} : <i6>
    %addressResult_62, %dataResult_63 = load[%461] %7#1 {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load4"} : <i6>, <i32>
    %462 = muli %442, %455 {handshake.bb = 8 : ui32, handshake.name = "muli12"} : <i8>
    %463 = trunci %462 {handshake.bb = 8 : ui32, handshake.name = "trunci11"} : <i8> to <i6>
    %464 = addi %409, %463 {handshake.bb = 8 : ui32, handshake.name = "addi10"} : <i6>
    %addressResult_64, %dataResult_65 = load[%464] %outputs {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load5"} : <i6>, <i32>
    %465 = muli %dataResult_63, %dataResult_65 {handshake.bb = 8 : ui32, handshake.name = "muli3"} : <i32>
    %466 = muli %423, %449 {handshake.bb = 8 : ui32, handshake.name = "muli13"} : <i8>
    %467 = trunci %466 {handshake.bb = 8 : ui32, handshake.name = "trunci12"} : <i8> to <i6>
    %468 = addi %411, %467 {handshake.bb = 8 : ui32, handshake.name = "addi11"} : <i6>
    %addressResult_66, %dataResult_67 = load[%468] %2#1 {handshake.bb = 8 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.deps = #handshake<deps[<"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "load6"} : <i6>, <i32>
    %469 = addi %dataResult_67, %465 {handshake.bb = 8 : ui32, handshake.name = "addi1"} : <i32>
    %470 = muli %421, %447 {handshake.bb = 8 : ui32, handshake.name = "muli14"} : <i8>
    %471 = trunci %470 {handshake.bb = 8 : ui32, handshake.name = "trunci13"} : <i8> to <i6>
    %472 = addi %413, %471 {handshake.bb = 8 : ui32, handshake.name = "addi12"} : <i6>
    %addressResult_68, %dataResult_69 = store[%472] %469 {handshake.bb = 8 : ui32, handshake.deps = #handshake<deps[<"load6" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"load7" (1)>]>, handshake.mem_interface = #handshake.mem_interface<LSQ: 1>, handshake.name = "store3"} : <i6>, <i32>
    %473 = addi %440, %458 {handshake.bb = 8 : ui32, handshake.name = "addi17"} : <i5>
    %474:2 = fork [2] %473 {handshake.bb = 8 : ui32, handshake.name = "fork48"} : <i5>
    %476 = trunci %474#0 {handshake.bb = 8 : ui32, handshake.name = "trunci14"} : <i5> to <i4>
    %477 = buffer %474#1 {handshake.bb = 8 : ui32, handshake.name = "buffer260", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %478 = cmpi ult, %477, %453 {handshake.bb = 8 : ui32, handshake.name = "cmpi3"} : <i5>
    %479:8 = fork [8] %478 {handshake.bb = 8 : ui32, handshake.name = "fork49"} : <i1>
    %trueResult_70, %falseResult_71 = cond_br %499#5, %falseResult_53 {handshake.bb = 9 : ui32, handshake.name = "cond_br56"} : <i1>, <>
    %trueResult_72, %falseResult_73 = cond_br %499#4, %303#0 {handshake.bb = 9 : ui32, handshake.name = "cond_br57"} : <i1>, <>
    sink %falseResult_73 {handshake.name = "sink23"} : <>
    %trueResult_74, %falseResult_75 = cond_br %499#0, %496 {handshake.bb = 9 : ui32, handshake.name = "cond_br99"} : <i1>, <i4>
    sink %falseResult_75 {handshake.name = "sink24"} : <i4>
    %trueResult_76, %falseResult_77 = cond_br %499#3, %332#3 {handshake.bb = 9 : ui32, handshake.name = "cond_br100"} : <i1>, <>
    sink %falseResult_77 {handshake.name = "sink25"} : <>
    %trueResult_78, %falseResult_79 = cond_br %499#1, %322#0 {handshake.bb = 9 : ui32, handshake.name = "cond_br101"} : <i1>, <i4>
    sink %falseResult_79 {handshake.name = "sink26"} : <i4>
    %trueResult_80, %falseResult_81 = cond_br %499#2, %316#0 {handshake.bb = 9 : ui32, handshake.name = "cond_br102"} : <i1>, <i32>
    sink %falseResult_81 {handshake.name = "sink27"} : <i32>
    %491 = constant %332#0 {handshake.bb = 9 : ui32, handshake.name = "constant40", value = 1 : i2} : <>, <i2>
    %492 = extsi %491 {handshake.bb = 9 : ui32, handshake.name = "extsi76"} : <i2> to <i5>
    %493 = addi %343, %492 {handshake.bb = 9 : ui32, handshake.name = "addi18"} : <i5>
    %494:2 = fork [2] %493 {handshake.bb = 9 : ui32, handshake.name = "fork50"} : <i5>
    %496 = trunci %494#0 {handshake.bb = 9 : ui32, handshake.name = "trunci15"} : <i5> to <i4>
    %498 = cmpi ult, %494#1, %355 {handshake.bb = 9 : ui32, handshake.name = "cmpi4"} : <i5>
    %499:7 = fork [7] %498 {handshake.bb = 9 : ui32, handshake.name = "fork51"} : <i1>
    %trueResult_82, %falseResult_83 = cond_br %520#4, %falseResult_71 {handshake.bb = 10 : ui32, handshake.name = "cond_br58"} : <i1>, <>
    %trueResult_84, %falseResult_85 = cond_br %520#3, %267#0 {handshake.bb = 10 : ui32, handshake.name = "cond_br59"} : <i1>, <>
    sink %falseResult_85 {handshake.name = "sink28"} : <>
    %trueResult_86, %falseResult_87 = cond_br %520#0, %517 {handshake.bb = 10 : ui32, handshake.name = "cond_br103"} : <i1>, <i4>
    sink %falseResult_87 {handshake.name = "sink29"} : <i4>
    %trueResult_88, %falseResult_89 = cond_br %520#2, %281#0 {handshake.bb = 10 : ui32, handshake.name = "cond_br104"} : <i1>, <i32>
    sink %falseResult_89 {handshake.name = "sink30"} : <i32>
    %trueResult_90, %falseResult_91 = cond_br %520#1, %276#3 {handshake.bb = 10 : ui32, handshake.name = "cond_br105"} : <i1>, <>
    sink %falseResult_91 {handshake.name = "sink31"} : <>
    %509 = constant %276#1 {handshake.bb = 10 : ui32, handshake.name = "constant42", value = 7 : i4} : <>, <i4>
    %510 = extsi %509 {handshake.bb = 10 : ui32, handshake.name = "extsi77"} : <i4> to <i5>
    %512 = constant %276#0 {handshake.bb = 10 : ui32, handshake.name = "constant43", value = 1 : i2} : <>, <i2>
    %513 = extsi %512 {handshake.bb = 10 : ui32, handshake.name = "extsi78"} : <i2> to <i5>
    %514 = addi %288, %513 {handshake.bb = 10 : ui32, handshake.name = "addi19"} : <i5>
    %515:2 = fork [2] %514 {handshake.bb = 10 : ui32, handshake.name = "fork52"} : <i5>
    %517 = trunci %515#0 {handshake.bb = 10 : ui32, handshake.name = "trunci16"} : <i5> to <i4>
    %519 = cmpi ult, %515#1, %510 {handshake.bb = 10 : ui32, handshake.name = "cmpi5"} : <i5>
    %520:6 = fork [6] %519 {handshake.bb = 10 : ui32, handshake.name = "fork53"} : <i1>
    %521:2 = lazy_fork [2] %falseResult_83 {handshake.bb = 11 : ui32, handshake.name = "lazy_fork5"} : <>
    %522:2 = fork [2] %521#1 {handshake.bb = 11 : ui32, handshake.name = "fork54"} : <>
    sink %521#0 {handshake.name = "sink32"} : <>
    %524 = constant %0#4 {handshake.bb = 11 : ui32, handshake.name = "constant44", value = 48 : i7} : <>, <i7>
    %525 = trunci %524 {handshake.bb = 11 : ui32, handshake.name = "trunci17"} : <i7> to <i6>
    %addressResult_92, %dataResult_93 = load[%525] %2#2 {handshake.bb = 11 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<LSQ: 2>, handshake.name = "load7"} : <i6>, <i32>
    end {handshake.bb = 11 : ui32, handshake.name = "end0"} %dataResult_93, %7#2, %memEnd_3, %memEnd_1, %memEnd, %2#3, %0#5 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


module {
  handshake.func @sobel(%arg0: memref<256xi32>, %arg1: memref<9xi32>, %arg2: memref<9xi32>, %arg3: memref<256xi32>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["in", "gX", "gY", "out", "in_start", "gX_start", "gY_start", "out_start", "start"], resNames = ["out0", "in_end", "gX_end", "gY_end", "out_end", "end"]} {
    %0:3 = fork [3] %arg8 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %memEnd = mem_controller[%arg3 : memref<256xi32>] %arg7 (%461, %addressResult_93, %dataResult_94) %517#3 {connectedBlocks = [12 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller4"} :    (!handshake.channel<i32>, !handshake.channel<i8>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg2 : memref<9xi32>] %arg6 (%addressResult_19) %517#2 {connectedBlocks = [5 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg1 : memref<9xi32>] %arg5 (%addressResult_17) %517#1 {connectedBlocks = [5 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller6"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_3, %memEnd_4 = mem_controller[%arg0 : memref<256xi32>] %arg4 (%addressResult) %517#0 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller7"} :    (!handshake.channel<i8>) -> !handshake.channel<i32>
    %6 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %7:2 = fork [2] %6 {handshake.bb = 0 : ui32, handshake.name = "fork1"} : <i1>
    %9 = extsi %7#0 {handshake.bb = 0 : ui32, handshake.name = "extsi27"} : <i1> to <i5>
    %11 = extsi %7#1 {handshake.bb = 0 : ui32, handshake.name = "extsi28"} : <i1> to <i32>
    %14 = mux %17#0 [%9, %trueResult_103] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i5>
    %16 = mux %17#1 [%11, %trueResult_105] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %result, %index = control_merge %0#2, %trueResult_107  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %17:2 = fork [2] %index {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %18 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %19 = buffer %18 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %20:2 = fork [2] %19 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %22 = constant %20#0 {handshake.bb = 1 : ui32, handshake.name = "constant5", value = false} : <>, <i1>
    %23 = extsi %22 {handshake.bb = 1 : ui32, handshake.name = "extsi25"} : <i1> to <i5>
    %24 = buffer %16 {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %25 = buffer %24 {handshake.bb = 1 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %26 = buffer %14 {handshake.bb = 1 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %27 = buffer %26 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %30 = mux %38#1 [%23, %trueResult_95] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i5>
    %31 = buffer %30 {handshake.bb = 2 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %32 = buffer %31 {handshake.bb = 2 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %33:3 = fork [3] %32 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i5>
    %35 = mux %38#2 [%25, %trueResult_97] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %37 = mux %38#0 [%27, %trueResult_99] {handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <i5>
    %result_5, %index_6 = control_merge %20#1, %trueResult_101  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %38:3 = fork [3] %index_6 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i1>
    %39 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %40 = constant %39 {handshake.bb = 2 : ui32, handshake.name = "constant6", value = 5 : i4} : <>, <i4>
    %41 = extsi %40 {handshake.bb = 2 : ui32, handshake.name = "extsi29"} : <i4> to <i5>
    %42 = source {handshake.bb = 2 : ui32, handshake.name = "source1"} : <>
    %43 = constant %42 {handshake.bb = 2 : ui32, handshake.name = "constant7", value = false} : <>, <i1>
    %44:3 = fork [3] %43 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i1>
    %46 = extsi %44#0 {handshake.bb = 2 : ui32, handshake.name = "extsi30"} : <i1> to <i5>
    %48 = cmpi eq, %33#0, %46 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i5>
    %49:2 = fork [2] %48 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i1>
    %51 = cmpi eq, %33#1, %41 {handshake.bb = 2 : ui32, handshake.name = "cmpi1"} : <i5>
    %54 = cmpi eq, %49#1, %44#1 {handshake.bb = 2 : ui32, handshake.name = "cmpi2"} : <i1>
    %55 = andi %54, %51 {handshake.bb = 2 : ui32, handshake.name = "andi0"} : <i1>
    %57 = ori %49#0, %55 {handshake.bb = 2 : ui32, handshake.name = "ori0"} : <i1>
    %59 = cmpi eq, %57, %44#2 {handshake.bb = 2 : ui32, handshake.name = "cmpi3"} : <i1>
    %60:4 = fork [4] %59 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i1>
    %61 = buffer %37 {handshake.bb = 2 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %62 = buffer %61 {handshake.bb = 2 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %trueResult, %falseResult = cond_br %60#0, %62 {handshake.bb = 2 : ui32, handshake.name = "cond_br7"} : <i1>, <i5>
    %trueResult_7, %falseResult_8 = cond_br %60#1, %33#2 {handshake.bb = 2 : ui32, handshake.name = "cond_br8"} : <i1>, <i5>
    %66 = buffer %35 {handshake.bb = 2 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %67 = buffer %66 {handshake.bb = 2 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_9, %falseResult_10 = cond_br %60#2, %67 {handshake.bb = 2 : ui32, handshake.name = "cond_br9"} : <i1>, <i32>
    %69 = buffer %result_5 {handshake.bb = 2 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %70 = buffer %69 {handshake.bb = 2 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_11, %falseResult_12 = cond_br %60#3, %70 {handshake.bb = 2 : ui32, handshake.name = "cond_br10"} : <i1>, <>
    %72 = buffer %trueResult_7 {handshake.bb = 3 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %73 = buffer %72 {handshake.bb = 3 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %74:2 = fork [2] %73 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i5>
    %76 = extsi %74#0 {handshake.bb = 3 : ui32, handshake.name = "extsi24"} : <i5> to <i8>
    %77 = buffer %trueResult_11 {handshake.bb = 3 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %78 = buffer %77 {handshake.bb = 3 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %79:3 = fork [3] %78 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <>
    %81 = constant %79#2 {handshake.bb = 3 : ui32, handshake.name = "constant13", value = -1 : i32} : <>, <i32>
    %83 = constant %79#0 {handshake.bb = 3 : ui32, handshake.name = "constant8", value = false} : <>, <i1>
    %addressResult, %dataResult = load[%76] %outputs_3 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i8>, <i32>
    %84 = extsi %83 {handshake.bb = 3 : ui32, handshake.name = "extsi31"} : <i1> to <i32>
    %85:2 = fork [2] %84 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i32>
    %86 = buffer %trueResult {handshake.bb = 3 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %87 = buffer %86 {handshake.bb = 3 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %89 = buffer %trueResult_9 {handshake.bb = 3 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %90 = buffer %89 {handshake.bb = 3 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %93 = mux %108#2 [%81, %248] {handshake.bb = 4 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %95 = buffer %108#3 {handshake.bb = 4 : ui32, handshake.name = "buffer72", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %96 = mux %95 [%85#0, %trueResult_41] {handshake.bb = 4 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %98 = buffer %108#4 {handshake.bb = 4 : ui32, handshake.name = "buffer73", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %99 = mux %98 [%85#1, %trueResult_43] {handshake.bb = 4 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %101 = mux %108#0 [%87, %trueResult_45] {handshake.bb = 4 : ui32, handshake.name = "mux8"} : <i1>, <i5>
    %103 = mux %108#1 [%74#1, %trueResult_47] {handshake.bb = 4 : ui32, handshake.name = "mux9"} : <i1>, <i5>
    %105 = mux %108#5 [%90, %trueResult_49] {handshake.bb = 4 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %107 = mux %108#6 [%dataResult, %trueResult_51] {handshake.bb = 4 : ui32, handshake.name = "mux11"} : <i1>, <i32>
    %result_13, %index_14 = control_merge %79#1, %trueResult_53  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %108:7 = fork [7] %index_14 {handshake.bb = 4 : ui32, handshake.name = "fork12"} : <i1>
    %109 = buffer %result_13 {handshake.bb = 4 : ui32, handshake.name = "buffer67", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %110 = buffer %109 {handshake.bb = 4 : ui32, handshake.name = "buffer68", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %111:2 = fork [2] %110 {handshake.bb = 4 : ui32, handshake.name = "fork13"} : <>
    %113 = constant %111#1 {handshake.bb = 4 : ui32, handshake.name = "constant15", value = -1 : i32} : <>, <i32>
    %114 = buffer %96 {handshake.bb = 4 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %115 = buffer %114 {handshake.bb = 4 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %116 = buffer %99 {handshake.bb = 4 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %117 = buffer %116 {handshake.bb = 4 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %118 = buffer %101 {handshake.bb = 4 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %119 = buffer %118 {handshake.bb = 4 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %120 = buffer %103 {handshake.bb = 4 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %121 = buffer %120 {handshake.bb = 4 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %122 = buffer %105 {handshake.bb = 4 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %123 = buffer %122 {handshake.bb = 4 : ui32, handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %124 = buffer %107 {handshake.bb = 4 : ui32, handshake.name = "buffer65", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %125 = buffer %124 {handshake.bb = 4 : ui32, handshake.name = "buffer66", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %126 = buffer %93 {handshake.bb = 4 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %127 = buffer %126 {handshake.bb = 4 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %130 = mux %168#2 [%113, %213] {handshake.bb = 5 : ui32, handshake.name = "mux12"} : <i1>, <i32>
    %131 = buffer %130 {handshake.bb = 5 : ui32, handshake.name = "buffer78", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %132 = buffer %131 {handshake.bb = 5 : ui32, handshake.name = "buffer79", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %133:3 = fork [3] %132 {handshake.bb = 5 : ui32, handshake.name = "fork14"} : <i32>
    %135 = trunci %133#0 {handshake.bb = 5 : ui32, handshake.name = "trunci1"} : <i32> to <i4>
    %137 = trunci %133#1 {handshake.bb = 5 : ui32, handshake.name = "trunci2"} : <i32> to <i4>
    %138 = buffer %168#3 {handshake.bb = 5 : ui32, handshake.name = "buffer110", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %139 = mux %138 [%115, %trueResult_23] {handshake.bb = 5 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %140 = buffer %168#4 {handshake.bb = 5 : ui32, handshake.name = "buffer111", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %141 = mux %140 [%117, %trueResult_25] {handshake.bb = 5 : ui32, handshake.name = "mux14"} : <i1>, <i32>
    %143 = mux %168#0 [%119, %trueResult_27] {handshake.bb = 5 : ui32, handshake.name = "mux15"} : <i1>, <i5>
    %145 = mux %168#1 [%121, %trueResult_29] {handshake.bb = 5 : ui32, handshake.name = "mux16"} : <i1>, <i5>
    %147 = mux %168#5 [%123, %trueResult_31] {handshake.bb = 5 : ui32, handshake.name = "mux17"} : <i1>, <i32>
    %148 = buffer %168#6 {handshake.bb = 5 : ui32, handshake.name = "buffer113", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %149 = mux %148 [%125, %trueResult_33] {handshake.bb = 5 : ui32, handshake.name = "mux18"} : <i1>, <i32>
    %150 = buffer %149 {handshake.bb = 5 : ui32, handshake.name = "buffer93", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %151 = buffer %150 {handshake.bb = 5 : ui32, handshake.name = "buffer94", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %152:3 = fork [3] %151 {handshake.bb = 5 : ui32, handshake.name = "fork15"} : <i32>
    %154 = mux %168#7 [%127, %trueResult_35] {handshake.bb = 5 : ui32, handshake.name = "mux19"} : <i1>, <i32>
    %155 = buffer %154 {handshake.bb = 5 : ui32, handshake.name = "buffer98", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %156 = buffer %155 {handshake.bb = 5 : ui32, handshake.name = "buffer99", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %157:5 = fork [5] %156 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <i32>
    %159 = trunci %157#0 {handshake.bb = 5 : ui32, handshake.name = "trunci3"} : <i32> to <i3>
    %160 = extsi %159 {handshake.bb = 5 : ui32, handshake.name = "extsi32"} : <i3> to <i4>
    %162 = trunci %157#1 {handshake.bb = 5 : ui32, handshake.name = "trunci4"} : <i32> to <i4>
    %164 = trunci %157#2 {handshake.bb = 5 : ui32, handshake.name = "trunci5"} : <i32> to <i3>
    %165 = extsi %164 {handshake.bb = 5 : ui32, handshake.name = "extsi33"} : <i3> to <i4>
    %167 = trunci %157#3 {handshake.bb = 5 : ui32, handshake.name = "trunci6"} : <i32> to <i4>
    %result_15, %index_16 = control_merge %111#0, %trueResult_37  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %168:8 = fork [8] %index_16 {handshake.bb = 5 : ui32, handshake.name = "fork17"} : <i1>
    %169 = source {handshake.bb = 5 : ui32, handshake.name = "source2"} : <>
    %170 = constant %169 {handshake.bb = 5 : ui32, handshake.name = "constant9", value = 4 : i4} : <>, <i4>
    %171:2 = fork [2] %170 {handshake.bb = 5 : ui32, handshake.name = "fork18"} : <i4>
    %172 = source {handshake.bb = 5 : ui32, handshake.name = "source3"} : <>
    %173 = constant %172 {handshake.bb = 5 : ui32, handshake.name = "constant34", value = 2 : i3} : <>, <i3>
    %174 = extsi %173 {handshake.bb = 5 : ui32, handshake.name = "extsi8"} : <i3> to <i32>
    %175 = source {handshake.bb = 5 : ui32, handshake.name = "source4"} : <>
    %176 = constant %175 {handshake.bb = 5 : ui32, handshake.name = "constant35", value = 1 : i2} : <>, <i2>
    %177:3 = fork [3] %176 {handshake.bb = 5 : ui32, handshake.name = "fork19"} : <i2>
    %179 = extui %177#0 {handshake.bb = 5 : ui32, handshake.name = "extui2"} : <i2> to <i4>
    %181 = extui %177#1 {handshake.bb = 5 : ui32, handshake.name = "extui3"} : <i2> to <i4>
    %183 = extsi %177#2 {handshake.bb = 5 : ui32, handshake.name = "extsi9"} : <i2> to <i32>
    %184 = shli %160, %179 {handshake.bb = 5 : ui32, handshake.name = "shli0"} : <i4>
    %185 = addi %162, %184 {handshake.bb = 5 : ui32, handshake.name = "addi13"} : <i4>
    %186 = addi %135, %185 {handshake.bb = 5 : ui32, handshake.name = "addi4"} : <i4>
    %188 = addi %186, %171#0 {handshake.bb = 5 : ui32, handshake.name = "addi5"} : <i4>
    %addressResult_17, %dataResult_18 = load[%188] %outputs_1 {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i4>, <i32>
    %190 = muli %152#2, %dataResult_18 {handshake.bb = 5 : ui32, handshake.name = "muli0"} : <i32>
    %191 = buffer %141 {handshake.bb = 5 : ui32, handshake.name = "buffer85", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %192 = buffer %191 {handshake.bb = 5 : ui32, handshake.name = "buffer86", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %193 = addi %192, %190 {handshake.bb = 5 : ui32, handshake.name = "addi0"} : <i32>
    %194 = shli %165, %181 {handshake.bb = 5 : ui32, handshake.name = "shli1"} : <i4>
    %195 = addi %167, %194 {handshake.bb = 5 : ui32, handshake.name = "addi14"} : <i4>
    %196 = addi %137, %195 {handshake.bb = 5 : ui32, handshake.name = "addi6"} : <i4>
    %198 = addi %196, %171#1 {handshake.bb = 5 : ui32, handshake.name = "addi7"} : <i4>
    %addressResult_19, %dataResult_20 = load[%198] %outputs {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load2"} : <i4>, <i32>
    %200 = muli %152#1, %dataResult_20 {handshake.bb = 5 : ui32, handshake.name = "muli1"} : <i32>
    %201 = buffer %139 {handshake.bb = 5 : ui32, handshake.name = "buffer83", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %202 = buffer %201 {handshake.bb = 5 : ui32, handshake.name = "buffer84", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %203 = addi %202, %200 {handshake.bb = 5 : ui32, handshake.name = "addi1"} : <i32>
    %205 = addi %133#2, %183 {handshake.bb = 5 : ui32, handshake.name = "addi9"} : <i32>
    %206:2 = fork [2] %205 {handshake.bb = 5 : ui32, handshake.name = "fork20"} : <i32>
    %208 = trunci %206#0 {handshake.bb = 5 : ui32, handshake.name = "trunci7"} : <i32> to <i2>
    %210 = cmpi ult, %206#1, %174 {handshake.bb = 5 : ui32, handshake.name = "cmpi8"} : <i32>
    %211:9 = fork [9] %210 {handshake.bb = 5 : ui32, handshake.name = "fork21"} : <i1>
    %trueResult_21, %falseResult_22 = cond_br %211#0, %208 {handshake.bb = 5 : ui32, handshake.name = "cond_br11"} : <i1>, <i2>
    sink %falseResult_22 {handshake.name = "sink1"} : <i2>
    %213 = extsi %trueResult_21 {handshake.bb = 5 : ui32, handshake.name = "extsi34"} : <i2> to <i32>
    %214 = buffer %211#8 {handshake.bb = 5 : ui32, handshake.name = "buffer130", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_23, %falseResult_24 = cond_br %214, %203 {handshake.bb = 5 : ui32, handshake.name = "cond_br12"} : <i1>, <i32>
    %215 = buffer %211#7 {handshake.bb = 5 : ui32, handshake.name = "buffer129", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_25, %falseResult_26 = cond_br %215, %193 {handshake.bb = 5 : ui32, handshake.name = "cond_br13"} : <i1>, <i32>
    %216 = buffer %143 {handshake.bb = 5 : ui32, handshake.name = "buffer87", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %217 = buffer %216 {handshake.bb = 5 : ui32, handshake.name = "buffer88", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %trueResult_27, %falseResult_28 = cond_br %211#1, %217 {handshake.bb = 5 : ui32, handshake.name = "cond_br14"} : <i1>, <i5>
    %219 = buffer %145 {handshake.bb = 5 : ui32, handshake.name = "buffer89", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %220 = buffer %219 {handshake.bb = 5 : ui32, handshake.name = "buffer90", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %trueResult_29, %falseResult_30 = cond_br %211#2, %220 {handshake.bb = 5 : ui32, handshake.name = "cond_br15"} : <i1>, <i5>
    %222 = buffer %147 {handshake.bb = 5 : ui32, handshake.name = "buffer91", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %223 = buffer %222 {handshake.bb = 5 : ui32, handshake.name = "buffer92", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_31, %falseResult_32 = cond_br %211#6, %223 {handshake.bb = 5 : ui32, handshake.name = "cond_br16"} : <i1>, <i32>
    %226 = buffer %211#5 {handshake.bb = 5 : ui32, handshake.name = "buffer127", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_33, %falseResult_34 = cond_br %226, %152#0 {handshake.bb = 5 : ui32, handshake.name = "cond_br17"} : <i1>, <i32>
    %trueResult_35, %falseResult_36 = cond_br %211#4, %157#4 {handshake.bb = 5 : ui32, handshake.name = "cond_br18"} : <i1>, <i32>
    %229 = buffer %result_15 {handshake.bb = 5 : ui32, handshake.name = "buffer105", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %230 = buffer %229 {handshake.bb = 5 : ui32, handshake.name = "buffer106", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_37, %falseResult_38 = cond_br %211#3, %230 {handshake.bb = 5 : ui32, handshake.name = "cond_br19"} : <i1>, <>
    %232 = source {handshake.bb = 6 : ui32, handshake.name = "source5"} : <>
    %233 = constant %232 {handshake.bb = 6 : ui32, handshake.name = "constant36", value = 2 : i3} : <>, <i3>
    %234 = extsi %233 {handshake.bb = 6 : ui32, handshake.name = "extsi10"} : <i3> to <i32>
    %235 = source {handshake.bb = 6 : ui32, handshake.name = "source6"} : <>
    %236 = constant %235 {handshake.bb = 6 : ui32, handshake.name = "constant37", value = 1 : i2} : <>, <i2>
    %237 = extsi %236 {handshake.bb = 6 : ui32, handshake.name = "extsi11"} : <i2> to <i32>
    %238 = buffer %falseResult_36 {handshake.bb = 6 : ui32, handshake.name = "buffer139", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %239 = buffer %238 {handshake.bb = 6 : ui32, handshake.name = "buffer140", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %240 = addi %239, %237 {handshake.bb = 6 : ui32, handshake.name = "addi10"} : <i32>
    %241:2 = fork [2] %240 {handshake.bb = 6 : ui32, handshake.name = "fork22"} : <i32>
    %243 = trunci %241#0 {handshake.bb = 6 : ui32, handshake.name = "trunci8"} : <i32> to <i2>
    %245 = cmpi ult, %241#1, %234 {handshake.bb = 6 : ui32, handshake.name = "cmpi9"} : <i32>
    %246:8 = fork [8] %245 {handshake.bb = 6 : ui32, handshake.name = "fork23"} : <i1>
    %trueResult_39, %falseResult_40 = cond_br %246#0, %243 {handshake.bb = 6 : ui32, handshake.name = "cond_br20"} : <i1>, <i2>
    sink %falseResult_40 {handshake.name = "sink3"} : <i2>
    %248 = extsi %trueResult_39 {handshake.bb = 6 : ui32, handshake.name = "extsi35"} : <i2> to <i32>
    %249 = buffer %falseResult_24 {handshake.bb = 6 : ui32, handshake.name = "buffer143", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %250 = buffer %249 {handshake.bb = 6 : ui32, handshake.name = "buffer144", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %251 = buffer %246#7 {handshake.bb = 6 : ui32, handshake.name = "buffer156", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_41, %falseResult_42 = cond_br %251, %250 {handshake.bb = 6 : ui32, handshake.name = "cond_br21"} : <i1>, <i32>
    %252 = buffer %falseResult_26 {handshake.bb = 6 : ui32, handshake.name = "buffer141", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %253 = buffer %252 {handshake.bb = 6 : ui32, handshake.name = "buffer142", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %254 = buffer %246#6 {handshake.bb = 6 : ui32, handshake.name = "buffer155", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_43, %falseResult_44 = cond_br %254, %253 {handshake.bb = 6 : ui32, handshake.name = "cond_br22"} : <i1>, <i32>
    %255 = buffer %falseResult_28 {handshake.bb = 6 : ui32, handshake.name = "buffer131", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %256 = buffer %255 {handshake.bb = 6 : ui32, handshake.name = "buffer132", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %trueResult_45, %falseResult_46 = cond_br %246#1, %256 {handshake.bb = 6 : ui32, handshake.name = "cond_br23"} : <i1>, <i5>
    %258 = buffer %falseResult_30 {handshake.bb = 6 : ui32, handshake.name = "buffer133", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %259 = buffer %258 {handshake.bb = 6 : ui32, handshake.name = "buffer134", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %trueResult_47, %falseResult_48 = cond_br %246#2, %259 {handshake.bb = 6 : ui32, handshake.name = "cond_br24"} : <i1>, <i5>
    %261 = buffer %falseResult_32 {handshake.bb = 6 : ui32, handshake.name = "buffer135", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %262 = buffer %261 {handshake.bb = 6 : ui32, handshake.name = "buffer136", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_49, %falseResult_50 = cond_br %246#5, %262 {handshake.bb = 6 : ui32, handshake.name = "cond_br25"} : <i1>, <i32>
    %264 = buffer %falseResult_34 {handshake.bb = 6 : ui32, handshake.name = "buffer137", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %265 = buffer %264 {handshake.bb = 6 : ui32, handshake.name = "buffer138", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_51, %falseResult_52 = cond_br %246#4, %265 {handshake.bb = 6 : ui32, handshake.name = "cond_br26"} : <i1>, <i32>
    sink %falseResult_52 {handshake.name = "sink4"} : <i32>
    %267 = buffer %falseResult_38 {handshake.bb = 6 : ui32, handshake.name = "buffer145", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %268 = buffer %267 {handshake.bb = 6 : ui32, handshake.name = "buffer146", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_53, %falseResult_54 = cond_br %246#3, %268 {handshake.bb = 6 : ui32, handshake.name = "cond_br27"} : <i1>, <>
    %270 = buffer %falseResult_44 {handshake.bb = 7 : ui32, handshake.name = "buffer163", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %271 = buffer %270 {handshake.bb = 7 : ui32, handshake.name = "buffer164", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %272:3 = fork [3] %271 {handshake.bb = 7 : ui32, handshake.name = "fork24"} : <i32>
    %273 = buffer %falseResult_54 {handshake.bb = 7 : ui32, handshake.name = "buffer170", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %274 = buffer %273 {handshake.bb = 7 : ui32, handshake.name = "buffer171", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %275:2 = fork [2] %274 {handshake.bb = 7 : ui32, handshake.name = "fork25"} : <>
    %277 = constant %275#1 {handshake.bb = 7 : ui32, handshake.name = "constant21", value = false} : <>, <i1>
    %278 = source {handshake.bb = 7 : ui32, handshake.name = "source7"} : <>
    %279 = constant %278 {handshake.bb = 7 : ui32, handshake.name = "constant38", value = 255 : i9} : <>, <i9>
    %280 = extsi %279 {handshake.bb = 7 : ui32, handshake.name = "extsi12"} : <i9> to <i32>
    %281:2 = fork [2] %280 {handshake.bb = 7 : ui32, handshake.name = "fork26"} : <i32>
    %284 = cmpi sgt, %272#2, %281#0 {handshake.bb = 7 : ui32, handshake.name = "cmpi4"} : <i32>
    %285:9 = fork [9] %284 {handshake.bb = 7 : ui32, handshake.name = "fork27"} : <i1>
    %289 = select %285#8[%281#1, %272#1] {handshake.bb = 7 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %trueResult_55, %falseResult_56 = cond_br %285#7, %277 {handshake.bb = 7 : ui32, handshake.name = "cond_br28"} : <i1>, <i1>
    sink %falseResult_56 {handshake.name = "sink6"} : <i1>
    %291 = buffer %falseResult_46 {handshake.bb = 7 : ui32, handshake.name = "buffer157", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %292 = buffer %291 {handshake.bb = 7 : ui32, handshake.name = "buffer158", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %trueResult_57, %falseResult_58 = cond_br %285#0, %292 {handshake.bb = 7 : ui32, handshake.name = "cond_br29"} : <i1>, <i5>
    %294 = buffer %falseResult_48 {handshake.bb = 7 : ui32, handshake.name = "buffer159", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %295 = buffer %294 {handshake.bb = 7 : ui32, handshake.name = "buffer160", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %trueResult_59, %falseResult_60 = cond_br %285#1, %295 {handshake.bb = 7 : ui32, handshake.name = "cond_br30"} : <i1>, <i5>
    %297 = buffer %falseResult_50 {handshake.bb = 7 : ui32, handshake.name = "buffer161", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %298 = buffer %297 {handshake.bb = 7 : ui32, handshake.name = "buffer162", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_61, %falseResult_62 = cond_br %285#6, %298 {handshake.bb = 7 : ui32, handshake.name = "cond_br31"} : <i1>, <i32>
    %300 = buffer %falseResult_42 {handshake.bb = 7 : ui32, handshake.name = "buffer168", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %301 = buffer %300 {handshake.bb = 7 : ui32, handshake.name = "buffer169", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_63, %falseResult_64 = cond_br %285#5, %301 {handshake.bb = 7 : ui32, handshake.name = "cond_br32"} : <i1>, <i32>
    %trueResult_65, %falseResult_66 = cond_br %285#4, %289 {handshake.bb = 7 : ui32, handshake.name = "cond_br33"} : <i1>, <i32>
    %trueResult_67, %falseResult_68 = cond_br %285#3, %275#0 {handshake.bb = 7 : ui32, handshake.name = "cond_br34"} : <i1>, <>
    %trueResult_69, %falseResult_70 = cond_br %285#2, %272#0 {handshake.bb = 7 : ui32, handshake.name = "cond_br35"} : <i1>, <i32>
    sink %trueResult_69 {handshake.name = "sink7"} : <i32>
    %308 = source {handshake.bb = 8 : ui32, handshake.name = "source8"} : <>
    %309 = constant %308 {handshake.bb = 8 : ui32, handshake.name = "constant39", value = false} : <>, <i1>
    %310 = extsi %309 {handshake.bb = 8 : ui32, handshake.name = "extsi13"} : <i1> to <i32>
    %311 = buffer %falseResult_70 {handshake.bb = 8 : ui32, handshake.name = "buffer191", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %312 = buffer %311 {handshake.bb = 8 : ui32, handshake.name = "buffer192", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %313 = cmpi slt, %312, %310 {handshake.bb = 8 : ui32, handshake.name = "cmpi5"} : <i32>
    %314 = buffer %falseResult_58 {handshake.bb = 8 : ui32, handshake.name = "buffer185", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %315 = buffer %314 {handshake.bb = 8 : ui32, handshake.name = "buffer186", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %316 = buffer %falseResult_60 {handshake.bb = 8 : ui32, handshake.name = "buffer187", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %317 = buffer %316 {handshake.bb = 8 : ui32, handshake.name = "buffer188", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %318 = buffer %falseResult_62 {handshake.bb = 8 : ui32, handshake.name = "buffer189", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %319 = buffer %318 {handshake.bb = 8 : ui32, handshake.name = "buffer190", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %320 = buffer %falseResult_64 {handshake.bb = 8 : ui32, handshake.name = "buffer193", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %321 = buffer %320 {handshake.bb = 8 : ui32, handshake.name = "buffer194", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %322 = buffer %falseResult_66 {handshake.bb = 8 : ui32, handshake.name = "buffer195", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %323 = buffer %322 {handshake.bb = 8 : ui32, handshake.name = "buffer196", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %324 = buffer %falseResult_68 {handshake.bb = 8 : ui32, handshake.name = "buffer197", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %325 = buffer %324 {handshake.bb = 8 : ui32, handshake.name = "buffer198", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %327 = mux %341#2 [%trueResult_55, %313] {handshake.bb = 9 : ui32, handshake.name = "mux20"} : <i1>, <i1>
    %329 = mux %341#0 [%trueResult_57, %315] {handshake.bb = 9 : ui32, handshake.name = "mux21"} : <i1>, <i5>
    %331 = mux %341#1 [%trueResult_59, %317] {handshake.bb = 9 : ui32, handshake.name = "mux22"} : <i1>, <i5>
    %333 = mux %341#3 [%trueResult_61, %319] {handshake.bb = 9 : ui32, handshake.name = "mux23"} : <i1>, <i32>
    %335 = mux %341#4 [%trueResult_63, %321] {handshake.bb = 9 : ui32, handshake.name = "mux24"} : <i1>, <i32>
    %336 = buffer %335 {handshake.bb = 9 : ui32, handshake.name = "buffer207", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %337 = buffer %336 {handshake.bb = 9 : ui32, handshake.name = "buffer208", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %338:3 = fork [3] %337 {handshake.bb = 9 : ui32, handshake.name = "fork28"} : <i32>
    %340 = mux %341#5 [%trueResult_65, %323] {handshake.bb = 9 : ui32, handshake.name = "mux25"} : <i1>, <i32>
    %result_71, %index_72 = control_merge %trueResult_67, %325  {handshake.bb = 9 : ui32, handshake.name = "control_merge8"} : <>, <i1>
    %341:6 = fork [6] %index_72 {handshake.bb = 9 : ui32, handshake.name = "fork29"} : <i1>
    %342 = buffer %result_71 {handshake.bb = 9 : ui32, handshake.name = "buffer214", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %343 = buffer %342 {handshake.bb = 9 : ui32, handshake.name = "buffer215", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %344:2 = fork [2] %343 {handshake.bb = 9 : ui32, handshake.name = "fork30"} : <>
    %346 = constant %344#1 {handshake.bb = 9 : ui32, handshake.name = "constant24", value = false} : <>, <i1>
    %347 = source {handshake.bb = 9 : ui32, handshake.name = "source9"} : <>
    %348 = constant %347 {handshake.bb = 9 : ui32, handshake.name = "constant40", value = 255 : i9} : <>, <i9>
    %349 = extsi %348 {handshake.bb = 9 : ui32, handshake.name = "extsi14"} : <i9> to <i32>
    %350:2 = fork [2] %349 {handshake.bb = 9 : ui32, handshake.name = "fork31"} : <i32>
    %351 = source {handshake.bb = 9 : ui32, handshake.name = "source10"} : <>
    %352 = constant %351 {handshake.bb = 9 : ui32, handshake.name = "constant41", value = false} : <>, <i1>
    %353 = extsi %352 {handshake.bb = 9 : ui32, handshake.name = "extsi15"} : <i1> to <i32>
    %354 = buffer %327 {handshake.bb = 9 : ui32, handshake.name = "buffer199", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %355 = buffer %354 {handshake.bb = 9 : ui32, handshake.name = "buffer200", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %356 = buffer %340 {handshake.bb = 9 : ui32, handshake.name = "buffer212", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %357 = buffer %356 {handshake.bb = 9 : ui32, handshake.name = "buffer213", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %358 = select %355[%353, %357] {handshake.bb = 9 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %361 = cmpi sgt, %338#2, %350#0 {handshake.bb = 9 : ui32, handshake.name = "cmpi6"} : <i32>
    %362:9 = fork [9] %361 {handshake.bb = 9 : ui32, handshake.name = "fork32"} : <i1>
    %366 = select %362#8[%350#1, %338#1] {handshake.bb = 9 : ui32, handshake.name = "select3"} : <i1>, <i32>
    %trueResult_73, %falseResult_74 = cond_br %362#7, %346 {handshake.bb = 9 : ui32, handshake.name = "cond_br36"} : <i1>, <i1>
    sink %falseResult_74 {handshake.name = "sink9"} : <i1>
    %368 = buffer %329 {handshake.bb = 9 : ui32, handshake.name = "buffer201", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %369 = buffer %368 {handshake.bb = 9 : ui32, handshake.name = "buffer202", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %trueResult_75, %falseResult_76 = cond_br %362#0, %369 {handshake.bb = 9 : ui32, handshake.name = "cond_br37"} : <i1>, <i5>
    %371 = buffer %331 {handshake.bb = 9 : ui32, handshake.name = "buffer203", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %372 = buffer %371 {handshake.bb = 9 : ui32, handshake.name = "buffer204", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %trueResult_77, %falseResult_78 = cond_br %362#1, %372 {handshake.bb = 9 : ui32, handshake.name = "cond_br38"} : <i1>, <i5>
    %374 = buffer %333 {handshake.bb = 9 : ui32, handshake.name = "buffer205", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %375 = buffer %374 {handshake.bb = 9 : ui32, handshake.name = "buffer206", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_79, %falseResult_80 = cond_br %362#6, %375 {handshake.bb = 9 : ui32, handshake.name = "cond_br39"} : <i1>, <i32>
    %trueResult_81, %falseResult_82 = cond_br %362#5, %358 {handshake.bb = 9 : ui32, handshake.name = "cond_br40"} : <i1>, <i32>
    %trueResult_83, %falseResult_84 = cond_br %362#4, %366 {handshake.bb = 9 : ui32, handshake.name = "cond_br41"} : <i1>, <i32>
    %trueResult_85, %falseResult_86 = cond_br %362#3, %344#0 {handshake.bb = 9 : ui32, handshake.name = "cond_br42"} : <i1>, <>
    %trueResult_87, %falseResult_88 = cond_br %362#2, %338#0 {handshake.bb = 9 : ui32, handshake.name = "cond_br43"} : <i1>, <i32>
    sink %trueResult_87 {handshake.name = "sink10"} : <i32>
    %383 = source {handshake.bb = 10 : ui32, handshake.name = "source11"} : <>
    %384 = constant %383 {handshake.bb = 10 : ui32, handshake.name = "constant42", value = false} : <>, <i1>
    %385 = extsi %384 {handshake.bb = 10 : ui32, handshake.name = "extsi16"} : <i1> to <i32>
    %386 = buffer %falseResult_88 {handshake.bb = 10 : ui32, handshake.name = "buffer241", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %387 = buffer %386 {handshake.bb = 10 : ui32, handshake.name = "buffer242", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %388 = cmpi slt, %387, %385 {handshake.bb = 10 : ui32, handshake.name = "cmpi7"} : <i32>
    %389 = buffer %falseResult_76 {handshake.bb = 10 : ui32, handshake.name = "buffer235", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %390 = buffer %389 {handshake.bb = 10 : ui32, handshake.name = "buffer236", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %391 = buffer %falseResult_78 {handshake.bb = 10 : ui32, handshake.name = "buffer237", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %392 = buffer %391 {handshake.bb = 10 : ui32, handshake.name = "buffer238", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %393 = buffer %falseResult_80 {handshake.bb = 10 : ui32, handshake.name = "buffer239", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %394 = buffer %393 {handshake.bb = 10 : ui32, handshake.name = "buffer240", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %395 = buffer %falseResult_82 {handshake.bb = 10 : ui32, handshake.name = "buffer243", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %396 = buffer %395 {handshake.bb = 10 : ui32, handshake.name = "buffer244", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %397 = buffer %falseResult_84 {handshake.bb = 10 : ui32, handshake.name = "buffer245", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %398 = buffer %397 {handshake.bb = 10 : ui32, handshake.name = "buffer246", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %399 = buffer %falseResult_86 {handshake.bb = 10 : ui32, handshake.name = "buffer247", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %400 = buffer %399 {handshake.bb = 10 : ui32, handshake.name = "buffer248", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %402 = mux %413#2 [%trueResult_73, %388] {handshake.bb = 11 : ui32, handshake.name = "mux26"} : <i1>, <i1>
    %404 = mux %413#0 [%trueResult_75, %390] {handshake.bb = 11 : ui32, handshake.name = "mux27"} : <i1>, <i5>
    %406 = mux %413#1 [%trueResult_77, %392] {handshake.bb = 11 : ui32, handshake.name = "mux28"} : <i1>, <i5>
    %408 = mux %413#3 [%trueResult_79, %394] {handshake.bb = 11 : ui32, handshake.name = "mux29"} : <i1>, <i32>
    %410 = mux %413#4 [%trueResult_81, %396] {handshake.bb = 11 : ui32, handshake.name = "mux30"} : <i1>, <i32>
    %412 = mux %413#5 [%trueResult_83, %398] {handshake.bb = 11 : ui32, handshake.name = "mux31"} : <i1>, <i32>
    %result_89, %index_90 = control_merge %trueResult_85, %400  {handshake.bb = 11 : ui32, handshake.name = "control_merge10"} : <>, <i1>
    %413:6 = fork [6] %index_90 {handshake.bb = 11 : ui32, handshake.name = "fork33"} : <i1>
    %414 = source {handshake.bb = 11 : ui32, handshake.name = "source12"} : <>
    %415 = constant %414 {handshake.bb = 11 : ui32, handshake.name = "constant43", value = false} : <>, <i1>
    %416 = extsi %415 {handshake.bb = 11 : ui32, handshake.name = "extsi17"} : <i1> to <i32>
    %417 = buffer %402 {handshake.bb = 11 : ui32, handshake.name = "buffer249", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %418 = buffer %417 {handshake.bb = 11 : ui32, handshake.name = "buffer250", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %419 = buffer %412 {handshake.bb = 11 : ui32, handshake.name = "buffer259", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %420 = buffer %419 {handshake.bb = 11 : ui32, handshake.name = "buffer260", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %421 = select %418[%416, %420] {handshake.bb = 11 : ui32, handshake.name = "select4"} : <i1>, <i32>
    %422 = buffer %410 {handshake.bb = 11 : ui32, handshake.name = "buffer257", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %423 = buffer %422 {handshake.bb = 11 : ui32, handshake.name = "buffer258", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %424 = addi %423, %421 {handshake.bb = 11 : ui32, handshake.name = "addi2"} : <i32>
    %425 = buffer %408 {handshake.bb = 11 : ui32, handshake.name = "buffer255", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %426 = buffer %425 {handshake.bb = 11 : ui32, handshake.name = "buffer256", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %427 = addi %426, %424 {handshake.bb = 11 : ui32, handshake.name = "addi3"} : <i32>
    %428 = buffer %404 {handshake.bb = 11 : ui32, handshake.name = "buffer251", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %429 = buffer %428 {handshake.bb = 11 : ui32, handshake.name = "buffer252", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %430 = buffer %406 {handshake.bb = 11 : ui32, handshake.name = "buffer253", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %431 = buffer %430 {handshake.bb = 11 : ui32, handshake.name = "buffer254", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %432 = buffer %result_89 {handshake.bb = 11 : ui32, handshake.name = "buffer261", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %433 = buffer %432 {handshake.bb = 11 : ui32, handshake.name = "buffer262", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %435 = mux %455#2 [%falseResult_10, %427] {handshake.bb = 12 : ui32, handshake.name = "mux32"} : <i1>, <i32>
    %436 = buffer %435 {handshake.bb = 12 : ui32, handshake.name = "buffer269", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %437 = buffer %436 {handshake.bb = 12 : ui32, handshake.name = "buffer270", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %438:2 = fork [2] %437 {handshake.bb = 12 : ui32, handshake.name = "fork34"} : <i32>
    %440 = mux %455#0 [%falseResult, %429] {handshake.bb = 12 : ui32, handshake.name = "mux33"} : <i1>, <i5>
    %441 = buffer %440 {handshake.bb = 12 : ui32, handshake.name = "buffer273", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %442 = buffer %441 {handshake.bb = 12 : ui32, handshake.name = "buffer274", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %443:2 = fork [2] %442 {handshake.bb = 12 : ui32, handshake.name = "fork35"} : <i5>
    %445 = extsi %443#1 {handshake.bb = 12 : ui32, handshake.name = "extsi36"} : <i5> to <i6>
    %447 = mux %455#1 [%falseResult_8, %431] {handshake.bb = 12 : ui32, handshake.name = "mux34"} : <i1>, <i5>
    %448 = buffer %447 {handshake.bb = 12 : ui32, handshake.name = "buffer277", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %449 = buffer %448 {handshake.bb = 12 : ui32, handshake.name = "buffer278", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %450:2 = fork [2] %449 {handshake.bb = 12 : ui32, handshake.name = "fork36"} : <i5>
    %452 = extsi %450#0 {handshake.bb = 12 : ui32, handshake.name = "extsi37"} : <i5> to <i6>
    %454 = extsi %450#1 {handshake.bb = 12 : ui32, handshake.name = "extsi38"} : <i5> to <i6>
    %result_91, %index_92 = control_merge %falseResult_12, %433  {handshake.bb = 12 : ui32, handshake.name = "control_merge11"} : <>, <i1>
    %455:3 = fork [3] %index_92 {handshake.bb = 12 : ui32, handshake.name = "fork37"} : <i1>
    %456 = buffer %result_91 {handshake.bb = 12 : ui32, handshake.name = "buffer281", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %457 = buffer %456 {handshake.bb = 12 : ui32, handshake.name = "buffer282", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %458:2 = fork [2] %457 {handshake.bb = 12 : ui32, handshake.name = "fork38"} : <>
    %460 = constant %458#0 {handshake.bb = 12 : ui32, handshake.name = "constant44", value = 1 : i2} : <>, <i2>
    %461 = extsi %460 {handshake.bb = 12 : ui32, handshake.name = "extsi18"} : <i2> to <i32>
    %462 = source {handshake.bb = 12 : ui32, handshake.name = "source13"} : <>
    %463 = constant %462 {handshake.bb = 12 : ui32, handshake.name = "constant45", value = 1 : i2} : <>, <i2>
    %464 = extsi %463 {handshake.bb = 12 : ui32, handshake.name = "extsi39"} : <i2> to <i6>
    %465 = source {handshake.bb = 12 : ui32, handshake.name = "source14"} : <>
    %466 = constant %465 {handshake.bb = 12 : ui32, handshake.name = "constant46", value = 15 : i5} : <>, <i5>
    %467 = extsi %466 {handshake.bb = 12 : ui32, handshake.name = "extsi40"} : <i5> to <i6>
    %468 = source {handshake.bb = 12 : ui32, handshake.name = "source15"} : <>
    %469 = constant %468 {handshake.bb = 12 : ui32, handshake.name = "constant47", value = 255 : i9} : <>, <i9>
    %470 = extsi %469 {handshake.bb = 12 : ui32, handshake.name = "extsi41"} : <i9> to <i10>
    %472 = trunci %438#1 {handshake.bb = 12 : ui32, handshake.name = "trunci0"} : <i32> to <i8>
    %473 = extui %472 {handshake.bb = 12 : ui32, handshake.name = "extui4"} : <i8> to <i10>
    %474 = subi %470, %473 {handshake.bb = 12 : ui32, handshake.name = "subi0"} : <i10>
    %475 = extsi %474 {handshake.bb = 12 : ui32, handshake.name = "extsi42"} : <i10> to <i32>
    %476 = addi %452, %445 {handshake.bb = 12 : ui32, handshake.name = "addi8"} : <i6>
    %477 = extsi %476 {handshake.bb = 12 : ui32, handshake.name = "extsi26"} : <i6> to <i8>
    %addressResult_93, %dataResult_94 = store[%477] %475 {handshake.bb = 12 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 14], [-14, -1]]>]>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i8>, <i32>
    %478 = addi %454, %464 {handshake.bb = 12 : ui32, handshake.name = "addi11"} : <i6>
    %479:2 = fork [2] %478 {handshake.bb = 12 : ui32, handshake.name = "fork39"} : <i6>
    %481 = trunci %479#0 {handshake.bb = 12 : ui32, handshake.name = "trunci9"} : <i6> to <i5>
    %483 = cmpi ult, %479#1, %467 {handshake.bb = 12 : ui32, handshake.name = "cmpi10"} : <i6>
    %484:4 = fork [4] %483 {handshake.bb = 12 : ui32, handshake.name = "fork40"} : <i1>
    %trueResult_95, %falseResult_96 = cond_br %484#0, %481 {handshake.bb = 12 : ui32, handshake.name = "cond_br44"} : <i1>, <i5>
    sink %falseResult_96 {handshake.name = "sink12"} : <i5>
    %trueResult_97, %falseResult_98 = cond_br %484#2, %438#0 {handshake.bb = 12 : ui32, handshake.name = "cond_br45"} : <i1>, <i32>
    %trueResult_99, %falseResult_100 = cond_br %484#1, %443#0 {handshake.bb = 12 : ui32, handshake.name = "cond_br46"} : <i1>, <i5>
    %trueResult_101, %falseResult_102 = cond_br %484#3, %458#1 {handshake.bb = 12 : ui32, handshake.name = "cond_br47"} : <i1>, <>
    %492 = buffer %falseResult_100 {handshake.bb = 13 : ui32, handshake.name = "buffer294", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %493 = buffer %492 {handshake.bb = 13 : ui32, handshake.name = "buffer295", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %494 = extsi %493 {handshake.bb = 13 : ui32, handshake.name = "extsi43"} : <i5> to <i6>
    %495 = source {handshake.bb = 13 : ui32, handshake.name = "source16"} : <>
    %496 = constant %495 {handshake.bb = 13 : ui32, handshake.name = "constant48", value = 1 : i2} : <>, <i2>
    %497 = extsi %496 {handshake.bb = 13 : ui32, handshake.name = "extsi44"} : <i2> to <i6>
    %498 = source {handshake.bb = 13 : ui32, handshake.name = "source17"} : <>
    %499 = constant %498 {handshake.bb = 13 : ui32, handshake.name = "constant49", value = 15 : i5} : <>, <i5>
    %500 = extsi %499 {handshake.bb = 13 : ui32, handshake.name = "extsi45"} : <i5> to <i6>
    %501 = addi %494, %497 {handshake.bb = 13 : ui32, handshake.name = "addi12"} : <i6>
    %502:2 = fork [2] %501 {handshake.bb = 13 : ui32, handshake.name = "fork41"} : <i6>
    %504 = trunci %502#0 {handshake.bb = 13 : ui32, handshake.name = "trunci10"} : <i6> to <i5>
    %506 = cmpi ult, %502#1, %500 {handshake.bb = 13 : ui32, handshake.name = "cmpi11"} : <i6>
    %507:3 = fork [3] %506 {handshake.bb = 13 : ui32, handshake.name = "fork42"} : <i1>
    %trueResult_103, %falseResult_104 = cond_br %507#0, %504 {handshake.bb = 13 : ui32, handshake.name = "cond_br48"} : <i1>, <i5>
    sink %falseResult_104 {handshake.name = "sink14"} : <i5>
    %509 = buffer %falseResult_98 {handshake.bb = 13 : ui32, handshake.name = "buffer296", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %510 = buffer %509 {handshake.bb = 13 : ui32, handshake.name = "buffer297", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_105, %falseResult_106 = cond_br %507#1, %510 {handshake.bb = 13 : ui32, handshake.name = "cond_br49"} : <i1>, <i32>
    %512 = buffer %falseResult_102 {handshake.bb = 13 : ui32, handshake.name = "buffer298", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %513 = buffer %512 {handshake.bb = 13 : ui32, handshake.name = "buffer299", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_107, %falseResult_108 = cond_br %507#2, %513 {handshake.bb = 13 : ui32, handshake.name = "cond_br50"} : <i1>, <>
    %515 = buffer %falseResult_108 {handshake.bb = 14 : ui32, handshake.name = "buffer307", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %516 = buffer %515 {handshake.bb = 14 : ui32, handshake.name = "buffer308", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %517:4 = fork [4] %516 {handshake.bb = 14 : ui32, handshake.name = "fork43"} : <>
    %519 = buffer %falseResult_106 {handshake.bb = 14 : ui32, handshake.name = "buffer305", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %520 = buffer %519 {handshake.bb = 14 : ui32, handshake.name = "buffer306", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    end {handshake.bb = 14 : ui32, handshake.name = "end0"} %520, %memEnd_4, %memEnd_2, %memEnd_0, %memEnd, %0#1 : <i32>, <>, <>, <>, <>, <>
  }
}


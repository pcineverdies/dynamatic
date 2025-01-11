module {
  handshake.func @sobel(%arg0: memref<256xi32>, %arg1: memref<9xi32>, %arg2: memref<9xi32>, %arg3: memref<256xi32>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["in", "gX", "gY", "out", "in_start", "gX_start", "gY_start", "out_start", "start"], cfg.edges = "[0,1][7,9,8,cmpi4][2,3,12,cmpi3][9,11,10,cmpi6][4,5][11,12][6,4,7,cmpi9][13,1,14,cmpi11][1,2][8,9][3,4][10,11][5,5,6,cmpi8][12,2,13,cmpi10]", resNames = ["out0", "in_end", "gX_end", "gY_end", "out_end", "end"]} {
    %0:10 = fork [10] %arg8 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %memEnd = mem_controller[%arg3 : memref<256xi32>] %arg7 (%301, %addressResult_43, %dataResult_44) %0#3 {connectedBlocks = [12 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller4"} :    (!handshake.channel<i32>, !handshake.channel<i8>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg2 : memref<9xi32>] %arg6 (%addressResult_17) %0#2 {connectedBlocks = [5 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg1 : memref<9xi32>] %arg5 (%addressResult_15) %0#1 {connectedBlocks = [5 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller6"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_3, %memEnd_4 = mem_controller[%arg0 : memref<256xi32>] %arg4 (%addressResult) %0#0 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller7"} :    (!handshake.channel<i8>) -> !handshake.channel<i32>
    %5 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %6 = constant %5 {handshake.bb = 0 : ui32, handshake.name = "constant5", value = false} : <>, <i1>
    %7:2 = fork [2] %6 {handshake.bb = 0 : ui32, handshake.name = "fork1"} : <i1>
    %9 = extsi %7#0 {handshake.bb = 0 : ui32, handshake.name = "extsi26"} : <i1> to <i5>
    %11 = extsi %7#1 {handshake.bb = 0 : ui32, handshake.name = "extsi2"} : <i1> to <i32>
    %13 = constant %0#9 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %15 = mux %19#1 [%11, %trueResult_45] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %17 = merge %13, %344#2 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %18 = buffer %17 {handshake.bb = 1 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %19:2 = fork [2] %18 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <i1>
    %21 = mux %19#0 [%9, %trueResult_47] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i5>
    %22 = buffer %21 {handshake.bb = 1 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %23 = buffer %22 {handshake.bb = 1 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %24:2 = fork [2] %23 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <i5>
    %26 = extsi %24#0 {handshake.bb = 1 : ui32, handshake.name = "extsi27"} : <i5> to <i6>
    %27 = source {handshake.bb = 1 : ui32, handshake.name = "source2"} : <>
    %28 = constant %27 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = false} : <>, <i1>
    %29 = extsi %28 {handshake.bb = 1 : ui32, handshake.name = "extsi28"} : <i1> to <i5>
    %31 = constant %0#8 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %33 = merge %31, %329#3 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge2"} : <i1>
    %34 = buffer %33 {handshake.bb = 2 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %35:3 = fork [3] %34 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork4"} : <i1>
    %37 = buffer %35#0 {handshake.bb = 2 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %38 = mux %37 [%24#1, %trueResult_41] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i5>
    %39 = buffer %38 {handshake.bb = 2 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %40 = buffer %39 {handshake.bb = 2 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %41:2 = fork [2] %40 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i5>
    %43 = extsi %41#0 {handshake.bb = 2 : ui32, handshake.name = "extsi29"} : <i5> to <i6>
    %44 = buffer %15 {handshake.bb = 2 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %45 = buffer %44 {handshake.bb = 2 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %46 = buffer %35#2 {handshake.bb = 2 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %47 = mux %46 [%45, %trueResult_39] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %49 = mux %35#1 [%29, %trueResult_37] {handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <i5>
    %50 = buffer %49 {handshake.bb = 2 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i5>
    %51 = buffer %50 {handshake.bb = 2 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %52:5 = fork [5] %51 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i5>
    %53 = buffer %52#0 {handshake.bb = 2 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i5>
    %54 = extsi %53 {handshake.bb = 2 : ui32, handshake.name = "extsi30"} : <i5> to <i6>
    %56 = extsi %52#1 {handshake.bb = 2 : ui32, handshake.name = "extsi31"} : <i5> to <i6>
    %57 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %58 = constant %57 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 5 : i4} : <>, <i4>
    %59 = extsi %58 {handshake.bb = 2 : ui32, handshake.name = "extsi32"} : <i4> to <i5>
    %60 = source {handshake.bb = 2 : ui32, handshake.name = "source4"} : <>
    %61 = constant %60 {handshake.bb = 2 : ui32, handshake.name = "constant9", value = false} : <>, <i1>
    %62:3 = fork [3] %61 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i1>
    %64 = extsi %62#0 {handshake.bb = 2 : ui32, handshake.name = "extsi33"} : <i1> to <i5>
    %66 = cmpi eq, %52#4, %64 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i5>
    %67:2 = fork [2] %66 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i1>
    %69 = cmpi eq, %52#3, %59 {handshake.bb = 2 : ui32, handshake.name = "cmpi1"} : <i5>
    %72 = cmpi eq, %67#1, %62#1 {handshake.bb = 2 : ui32, handshake.name = "cmpi2"} : <i1>
    %73 = andi %72, %69 {handshake.bb = 2 : ui32, handshake.name = "andi0"} : <i1>
    %75 = ori %67#0, %73 {handshake.bb = 2 : ui32, handshake.name = "ori0"} : <i1>
    %77 = cmpi eq, %75, %62#2 {handshake.bb = 2 : ui32, handshake.name = "cmpi3"} : <i1>
    %78:3 = fork [3] %77 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i1>
    %trueResult, %falseResult = cond_br %78#0, %52#2 {handshake.bb = 3 : ui32, handshake.name = "cond_br59"} : <i1>, <i5>
    sink %falseResult {handshake.name = "sink0"} : <i5>
    %81 = extsi %trueResult {handshake.bb = 3 : ui32, handshake.name = "extsi24"} : <i5> to <i8>
    %82 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %83 = constant %82 {handshake.bb = 3 : ui32, handshake.name = "constant13", value = -1 : i32} : <>, <i32>
    %84 = source {handshake.bb = 3 : ui32, handshake.name = "source6"} : <>
    %85 = constant %84 {handshake.bb = 3 : ui32, handshake.name = "constant34", value = false} : <>, <i1>
    %86 = extsi %85 {handshake.bb = 3 : ui32, handshake.name = "extsi6"} : <i1> to <i32>
    %87:2 = fork [2] %86 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i32>
    %addressResult, %dataResult = load[%81] %outputs_3 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i8>, <i32>
    %89 = constant %0#7 {ftd.imerge, handshake.bb = 4 : ui32, handshake.name = "constant7", value = false} : <>, <i1>
    %91 = merge %89, %229#1 {ftd.imerge, handshake.bb = 4 : ui32, handshake.name = "merge5"} : <i1>
    %92 = buffer %91 {handshake.bb = 4 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %93:4 = fork [4] %92 {handshake.bb = 4 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork11"} : <i1>
    %95 = mux %93#3 [%dataResult, %trueResult_25] {ftd.regen, handshake.bb = 4 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %96 = buffer %95 {handshake.bb = 4 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %97 = buffer %96 {handshake.bb = 4 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %98:2 = fork [2] %97 {handshake.bb = 4 : ui32, handshake.name = "fork12"} : <i32>
    %100 = buffer %93#2 {handshake.bb = 4 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %101 = mux %100 [%87#0, %trueResult_21] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %103 = buffer %93#1 {handshake.bb = 4 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %104 = mux %103 [%87#1, %trueResult_19] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %106 = mux %93#0 [%83, %213] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %107 = buffer %106 {handshake.bb = 4 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %108 = buffer %107 {handshake.bb = 4 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %109:2 = fork [2] %108 {handshake.bb = 4 : ui32, handshake.name = "fork13"} : <i32>
    %110 = source {handshake.bb = 4 : ui32, handshake.name = "source7"} : <>
    %111 = constant %110 {handshake.bb = 4 : ui32, handshake.name = "constant15", value = -1 : i32} : <>, <i32>
    %112 = buffer %207#1 {handshake.bb = 5 : ui32, handshake.name = "buffer100", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_5, %falseResult_6 = cond_br %112, %199 {handshake.bb = 5 : ui32, handshake.name = "cond_br60"} : <i1>, <i32>
    %113 = buffer %207#2 {handshake.bb = 5 : ui32, handshake.name = "buffer101", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_7, %falseResult_8 = cond_br %113, %189 {handshake.bb = 5 : ui32, handshake.name = "cond_br61"} : <i1>, <i32>
    %trueResult_9, %falseResult_10 = cond_br %207#0, %204 {handshake.bb = 5 : ui32, handshake.name = "cond_br62"} : <i1>, <i2>
    sink %falseResult_10 {handshake.name = "sink1"} : <i2>
    %115 = extsi %trueResult_9 {handshake.bb = 5 : ui32, handshake.name = "extsi34"} : <i2> to <i32>
    %trueResult_11, %falseResult_12 = cond_br %207#3, %137#4 {handshake.bb = 5 : ui32, handshake.name = "cond_br63"} : <i1>, <i32>
    sink %falseResult_12 {handshake.name = "sink2"} : <i32>
    %119 = buffer %207#4 {handshake.bb = 5 : ui32, handshake.name = "buffer103", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_13, %falseResult_14 = cond_br %119, %131#2 {handshake.bb = 5 : ui32, handshake.name = "cond_br64"} : <i1>, <i32>
    sink %falseResult_14 {handshake.name = "sink3"} : <i32>
    %121 = constant %0#6 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant36", value = false} : <>, <i1>
    %123 = merge %121, %207#5 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge10"} : <i1>
    %124 = buffer %123 {handshake.bb = 5 : ui32, handshake.name = "buffer65", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %125:5 = fork [5] %124 {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork14"} : <i1>
    %127 = buffer %125#4 {handshake.bb = 5 : ui32, handshake.name = "buffer70", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %128 = mux %127 [%98#1, %trueResult_13] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %129 = buffer %128 {handshake.bb = 5 : ui32, handshake.name = "buffer71", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %130 = buffer %129 {handshake.bb = 5 : ui32, handshake.name = "buffer72", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %131:3 = fork [3] %130 {handshake.bb = 5 : ui32, handshake.name = "fork15"} : <i32>
    %134 = mux %125#3 [%109#1, %trueResult_11] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux15"} : <i1>, <i32>
    %135 = buffer %134 {handshake.bb = 5 : ui32, handshake.name = "buffer76", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %136 = buffer %135 {handshake.bb = 5 : ui32, handshake.name = "buffer77", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %137:5 = fork [5] %136 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <i32>
    %139 = trunci %137#0 {handshake.bb = 5 : ui32, handshake.name = "trunci1"} : <i32> to <i3>
    %140 = extsi %139 {handshake.bb = 5 : ui32, handshake.name = "extsi35"} : <i3> to <i4>
    %142 = trunci %137#1 {handshake.bb = 5 : ui32, handshake.name = "trunci2"} : <i32> to <i4>
    %144 = trunci %137#2 {handshake.bb = 5 : ui32, handshake.name = "trunci3"} : <i32> to <i3>
    %145 = extsi %144 {handshake.bb = 5 : ui32, handshake.name = "extsi36"} : <i3> to <i4>
    %147 = trunci %137#3 {handshake.bb = 5 : ui32, handshake.name = "trunci4"} : <i32> to <i4>
    %148 = buffer %101 {handshake.bb = 5 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %149 = buffer %148 {handshake.bb = 5 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %150 = buffer %125#2 {handshake.bb = 5 : ui32, handshake.name = "buffer68", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %151 = mux %150 [%149, %trueResult_7] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux16"} : <i1>, <i32>
    %152 = buffer %104 {handshake.bb = 5 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %153 = buffer %152 {handshake.bb = 5 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %154 = buffer %125#1 {handshake.bb = 5 : ui32, handshake.name = "buffer67", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %155 = mux %154 [%153, %trueResult_5] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux17"} : <i1>, <i32>
    %157 = mux %125#0 [%111, %115] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux18"} : <i1>, <i32>
    %158 = buffer %157 {handshake.bb = 5 : ui32, handshake.name = "buffer87", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %159 = buffer %158 {handshake.bb = 5 : ui32, handshake.name = "buffer88", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %160:3 = fork [3] %159 {handshake.bb = 5 : ui32, handshake.name = "fork17"} : <i32>
    %162 = trunci %160#0 {handshake.bb = 5 : ui32, handshake.name = "trunci5"} : <i32> to <i4>
    %164 = trunci %160#1 {handshake.bb = 5 : ui32, handshake.name = "trunci6"} : <i32> to <i4>
    %165 = source {handshake.bb = 5 : ui32, handshake.name = "source8"} : <>
    %166 = constant %165 {handshake.bb = 5 : ui32, handshake.name = "constant35", value = 4 : i4} : <>, <i4>
    %167:2 = fork [2] %166 {handshake.bb = 5 : ui32, handshake.name = "fork18"} : <i4>
    %168 = source {handshake.bb = 5 : ui32, handshake.name = "source9"} : <>
    %169 = constant %168 {handshake.bb = 5 : ui32, handshake.name = "constant37", value = 2 : i3} : <>, <i3>
    %170 = extsi %169 {handshake.bb = 5 : ui32, handshake.name = "extsi8"} : <i3> to <i32>
    %171 = source {handshake.bb = 5 : ui32, handshake.name = "source10"} : <>
    %172 = constant %171 {handshake.bb = 5 : ui32, handshake.name = "constant38", value = 1 : i2} : <>, <i2>
    %173:3 = fork [3] %172 {handshake.bb = 5 : ui32, handshake.name = "fork19"} : <i2>
    %175 = extui %173#0 {handshake.bb = 5 : ui32, handshake.name = "extui2"} : <i2> to <i4>
    %177 = extui %173#1 {handshake.bb = 5 : ui32, handshake.name = "extui3"} : <i2> to <i4>
    %179 = extsi %173#2 {handshake.bb = 5 : ui32, handshake.name = "extsi9"} : <i2> to <i32>
    %180 = shli %140, %175 {handshake.bb = 5 : ui32, handshake.name = "shli0"} : <i4>
    %181 = addi %142, %180 {handshake.bb = 5 : ui32, handshake.name = "addi13"} : <i4>
    %182 = addi %162, %181 {handshake.bb = 5 : ui32, handshake.name = "addi4"} : <i4>
    %184 = addi %182, %167#0 {handshake.bb = 5 : ui32, handshake.name = "addi5"} : <i4>
    %addressResult_15, %dataResult_16 = load[%184] %outputs_1 {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i4>, <i32>
    %186 = muli %131#1, %dataResult_16 {handshake.bb = 5 : ui32, handshake.name = "muli0"} : <i32>
    %187 = buffer %151 {handshake.bb = 5 : ui32, handshake.name = "buffer83", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %188 = buffer %187 {handshake.bb = 5 : ui32, handshake.name = "buffer84", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %189 = addi %188, %186 {handshake.bb = 5 : ui32, handshake.name = "addi0"} : <i32>
    %190 = shli %145, %177 {handshake.bb = 5 : ui32, handshake.name = "shli1"} : <i4>
    %191 = addi %147, %190 {handshake.bb = 5 : ui32, handshake.name = "addi14"} : <i4>
    %192 = addi %164, %191 {handshake.bb = 5 : ui32, handshake.name = "addi6"} : <i4>
    %194 = addi %192, %167#1 {handshake.bb = 5 : ui32, handshake.name = "addi7"} : <i4>
    %addressResult_17, %dataResult_18 = load[%194] %outputs {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load2"} : <i4>, <i32>
    %196 = muli %131#0, %dataResult_18 {handshake.bb = 5 : ui32, handshake.name = "muli1"} : <i32>
    %197 = buffer %155 {handshake.bb = 5 : ui32, handshake.name = "buffer85", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %198 = buffer %197 {handshake.bb = 5 : ui32, handshake.name = "buffer86", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %199 = addi %198, %196 {handshake.bb = 5 : ui32, handshake.name = "addi1"} : <i32>
    %201 = addi %160#2, %179 {handshake.bb = 5 : ui32, handshake.name = "addi9"} : <i32>
    %202:2 = fork [2] %201 {handshake.bb = 5 : ui32, handshake.name = "fork20"} : <i32>
    %204 = trunci %202#0 {handshake.bb = 5 : ui32, handshake.name = "trunci7"} : <i32> to <i2>
    %206 = cmpi ult, %202#1, %170 {handshake.bb = 5 : ui32, handshake.name = "cmpi8"} : <i32>
    %207:6 = fork [6] %206 {handshake.bb = 5 : ui32, handshake.name = "fork21"} : <i1>
    %208 = buffer %229#2 {handshake.bb = 6 : ui32, handshake.name = "buffer115", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_19, %falseResult_20 = cond_br %208, %falseResult_6 {handshake.bb = 6 : ui32, handshake.name = "cond_br65"} : <i1>, <i32>
    %209:3 = fork [3] %falseResult_20 {handshake.bb = 6 : ui32, handshake.name = "fork22"} : <i32>
    %210 = buffer %229#3 {handshake.bb = 6 : ui32, handshake.name = "buffer116", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_21, %falseResult_22 = cond_br %210, %falseResult_8 {handshake.bb = 6 : ui32, handshake.name = "cond_br66"} : <i1>, <i32>
    %211:3 = fork [3] %falseResult_22 {handshake.bb = 6 : ui32, handshake.name = "fork23"} : <i32>
    %trueResult_23, %falseResult_24 = cond_br %229#0, %226 {handshake.bb = 6 : ui32, handshake.name = "cond_br67"} : <i1>, <i2>
    sink %falseResult_24 {handshake.name = "sink4"} : <i2>
    %213 = extsi %trueResult_23 {handshake.bb = 6 : ui32, handshake.name = "extsi37"} : <i2> to <i32>
    %trueResult_25, %falseResult_26 = cond_br %229#4, %98#0 {handshake.bb = 6 : ui32, handshake.name = "cond_br68"} : <i1>, <i32>
    sink %falseResult_26 {handshake.name = "sink5"} : <i32>
    %216 = source {handshake.bb = 6 : ui32, handshake.name = "source11"} : <>
    %217 = constant %216 {handshake.bb = 6 : ui32, handshake.name = "constant39", value = 2 : i3} : <>, <i3>
    %218 = extsi %217 {handshake.bb = 6 : ui32, handshake.name = "extsi10"} : <i3> to <i32>
    %219 = source {handshake.bb = 6 : ui32, handshake.name = "source12"} : <>
    %220 = constant %219 {handshake.bb = 6 : ui32, handshake.name = "constant40", value = 1 : i2} : <>, <i2>
    %221 = extsi %220 {handshake.bb = 6 : ui32, handshake.name = "extsi11"} : <i2> to <i32>
    %223 = addi %109#0, %221 {handshake.bb = 6 : ui32, handshake.name = "addi10"} : <i32>
    %224:2 = fork [2] %223 {handshake.bb = 6 : ui32, handshake.name = "fork24"} : <i32>
    %226 = trunci %224#0 {handshake.bb = 6 : ui32, handshake.name = "trunci8"} : <i32> to <i2>
    %228 = cmpi ult, %224#1, %218 {handshake.bb = 6 : ui32, handshake.name = "cmpi9"} : <i32>
    %229:5 = fork [5] %228 {handshake.bb = 6 : ui32, handshake.name = "fork25"} : <i1>
    %230 = source {handshake.bb = 7 : ui32, handshake.name = "source13"} : <>
    %231 = constant %230 {handshake.bb = 7 : ui32, handshake.name = "constant21", value = false} : <>, <i1>
    %232 = source {handshake.bb = 7 : ui32, handshake.name = "source14"} : <>
    %233 = constant %232 {handshake.bb = 7 : ui32, handshake.name = "constant41", value = 255 : i9} : <>, <i9>
    %234 = extsi %233 {handshake.bb = 7 : ui32, handshake.name = "extsi12"} : <i9> to <i32>
    %235:2 = fork [2] %234 {handshake.bb = 7 : ui32, handshake.name = "fork26"} : <i32>
    %238 = cmpi sgt, %211#2, %235#0 {handshake.bb = 7 : ui32, handshake.name = "cmpi4"} : <i32>
    %239:4 = fork [4] %238 {handshake.bb = 7 : ui32, handshake.name = "fork27"} : <i1>
    %240 = buffer %211#1 {handshake.bb = 7 : ui32, handshake.name = "buffer109", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %242 = buffer %239#3 {handshake.bb = 7 : ui32, handshake.name = "buffer123", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %243 = select %242[%235#1, %240] {handshake.bb = 7 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %trueResult_27, %falseResult_28 = cond_br %239#2, %211#0 {handshake.bb = 8 : ui32, handshake.name = "cond_br40"} : <i1>, <i32>
    sink %trueResult_27 {handshake.name = "sink6"} : <i32>
    %246 = source {handshake.bb = 8 : ui32, handshake.name = "source15"} : <>
    %247 = constant %246 {handshake.bb = 8 : ui32, handshake.name = "constant42", value = false} : <>, <i1>
    %248 = extsi %247 {handshake.bb = 8 : ui32, handshake.name = "extsi13"} : <i1> to <i32>
    %249 = cmpi slt, %falseResult_28, %248 {handshake.bb = 8 : ui32, handshake.name = "cmpi5"} : <i32>
    %trueResult_29, %falseResult_30 = cond_br %239#1, %231 {handshake.bb = 9 : ui32, handshake.name = "cond_br69"} : <i1>, <i1>
    sink %falseResult_30 {handshake.name = "sink7"} : <i1>
    %252 = mux %239#0 [%249, %trueResult_29] {ftd.phi, handshake.bb = 9 : ui32, handshake.name = "mux19"} : <i1>, <i1>
    %253 = source {handshake.bb = 9 : ui32, handshake.name = "source16"} : <>
    %254 = constant %253 {handshake.bb = 9 : ui32, handshake.name = "constant24", value = false} : <>, <i1>
    %255:2 = fork [2] %254 {handshake.bb = 9 : ui32, handshake.name = "fork28"} : <i1>
    %257 = extsi %255#0 {handshake.bb = 9 : ui32, handshake.name = "extsi14"} : <i1> to <i32>
    %258 = source {handshake.bb = 9 : ui32, handshake.name = "source17"} : <>
    %259 = constant %258 {handshake.bb = 9 : ui32, handshake.name = "constant43", value = 255 : i9} : <>, <i9>
    %260 = extsi %259 {handshake.bb = 9 : ui32, handshake.name = "extsi15"} : <i9> to <i32>
    %261:2 = fork [2] %260 {handshake.bb = 9 : ui32, handshake.name = "fork29"} : <i32>
    %262 = buffer %252 {handshake.bb = 9 : ui32, handshake.name = "buffer124", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %263 = buffer %262 {handshake.bb = 9 : ui32, handshake.name = "buffer125", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %264 = select %263[%257, %243] {handshake.bb = 9 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %267 = cmpi sgt, %209#2, %261#0 {handshake.bb = 9 : ui32, handshake.name = "cmpi6"} : <i32>
    %268:4 = fork [4] %267 {handshake.bb = 9 : ui32, handshake.name = "fork30"} : <i1>
    %269 = buffer %209#1 {handshake.bb = 9 : ui32, handshake.name = "buffer106", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %271 = buffer %268#3 {handshake.bb = 9 : ui32, handshake.name = "buffer133", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %272 = select %271[%261#1, %269] {handshake.bb = 9 : ui32, handshake.name = "select3"} : <i1>, <i32>
    %trueResult_31, %falseResult_32 = cond_br %268#2, %209#0 {handshake.bb = 10 : ui32, handshake.name = "cond_br44"} : <i1>, <i32>
    sink %trueResult_31 {handshake.name = "sink8"} : <i32>
    %275 = source {handshake.bb = 10 : ui32, handshake.name = "source19"} : <>
    %276 = constant %275 {handshake.bb = 10 : ui32, handshake.name = "constant44", value = false} : <>, <i1>
    %277 = extsi %276 {handshake.bb = 10 : ui32, handshake.name = "extsi16"} : <i1> to <i32>
    %278 = cmpi slt, %falseResult_32, %277 {handshake.bb = 10 : ui32, handshake.name = "cmpi7"} : <i32>
    %279 = buffer %47 {handshake.bb = 11 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %280 = buffer %279 {handshake.bb = 11 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %281 = buffer %78#1 {handshake.bb = 11 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_33, %falseResult_34 = cond_br %281, %280 {handshake.bb = 11 : ui32, handshake.name = "cond_br70"} : <i1>, <i32>
    %trueResult_35, %falseResult_36 = cond_br %268#1, %255#1 {handshake.bb = 11 : ui32, handshake.name = "cond_br71"} : <i1>, <i1>
    sink %falseResult_36 {handshake.name = "sink9"} : <i1>
    %285 = mux %268#0 [%278, %trueResult_35] {ftd.phi, handshake.bb = 11 : ui32, handshake.name = "mux20"} : <i1>, <i1>
    %286 = source {handshake.bb = 11 : ui32, handshake.name = "source20"} : <>
    %287 = constant %286 {handshake.bb = 11 : ui32, handshake.name = "constant45", value = false} : <>, <i1>
    %288 = extsi %287 {handshake.bb = 11 : ui32, handshake.name = "extsi17"} : <i1> to <i32>
    %289 = buffer %285 {handshake.bb = 11 : ui32, handshake.name = "buffer134", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i1>
    %290 = buffer %289 {handshake.bb = 11 : ui32, handshake.name = "buffer135", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %291 = select %290[%288, %272] {handshake.bb = 11 : ui32, handshake.name = "select4"} : <i1>, <i32>
    %292 = addi %264, %291 {handshake.bb = 11 : ui32, handshake.name = "addi2"} : <i32>
    %293 = addi %trueResult_33, %292 {handshake.bb = 11 : ui32, handshake.name = "addi3"} : <i32>
    %trueResult_37, %falseResult_38 = cond_br %329#0, %326 {handshake.bb = 12 : ui32, handshake.name = "cond_br72"} : <i1>, <i5>
    sink %falseResult_38 {handshake.name = "sink10"} : <i5>
    %296 = buffer %329#2 {handshake.bb = 12 : ui32, handshake.name = "buffer144", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_39, %falseResult_40 = cond_br %296, %306#1 {handshake.bb = 12 : ui32, handshake.name = "cond_br73"} : <i1>, <i32>
    %298 = buffer %329#1 {handshake.bb = 12 : ui32, handshake.name = "buffer143", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_41, %falseResult_42 = cond_br %298, %41#1 {handshake.bb = 12 : ui32, handshake.name = "cond_br74"} : <i1>, <i5>
    sink %falseResult_42 {handshake.name = "sink11"} : <i5>
    %300 = constant %0#4 {handshake.bb = 12 : ui32, handshake.name = "constant46", value = 1 : i2} : <>, <i2>
    %301 = extsi %300 {handshake.bb = 12 : ui32, handshake.name = "extsi18"} : <i2> to <i32>
    %302 = buffer %78#2 {handshake.bb = 12 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %303 = mux %302 [%falseResult_34, %293] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux21"} : <i1>, <i32>
    %304 = buffer %303 {handshake.bb = 12 : ui32, handshake.name = "buffer136", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %305 = buffer %304 {handshake.bb = 12 : ui32, handshake.name = "buffer137", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %306:2 = fork [2] %305 {handshake.bb = 12 : ui32, handshake.name = "fork31"} : <i32>
    %307 = source {handshake.bb = 12 : ui32, handshake.name = "source21"} : <>
    %308 = constant %307 {handshake.bb = 12 : ui32, handshake.name = "constant47", value = 1 : i2} : <>, <i2>
    %309 = extsi %308 {handshake.bb = 12 : ui32, handshake.name = "extsi38"} : <i2> to <i6>
    %310 = source {handshake.bb = 12 : ui32, handshake.name = "source22"} : <>
    %311 = constant %310 {handshake.bb = 12 : ui32, handshake.name = "constant48", value = 15 : i5} : <>, <i5>
    %312 = extsi %311 {handshake.bb = 12 : ui32, handshake.name = "extsi39"} : <i5> to <i6>
    %313 = source {handshake.bb = 12 : ui32, handshake.name = "source23"} : <>
    %314 = constant %313 {handshake.bb = 12 : ui32, handshake.name = "constant49", value = 255 : i9} : <>, <i9>
    %315 = extsi %314 {handshake.bb = 12 : ui32, handshake.name = "extsi40"} : <i9> to <i10>
    %317 = trunci %306#0 {handshake.bb = 12 : ui32, handshake.name = "trunci0"} : <i32> to <i8>
    %318 = extui %317 {handshake.bb = 12 : ui32, handshake.name = "extui4"} : <i8> to <i10>
    %319 = subi %315, %318 {handshake.bb = 12 : ui32, handshake.name = "subi0"} : <i10>
    %320 = extsi %319 {handshake.bb = 12 : ui32, handshake.name = "extsi41"} : <i10> to <i32>
    %321 = addi %54, %43 {handshake.bb = 12 : ui32, handshake.name = "addi8"} : <i6>
    %322 = extsi %321 {handshake.bb = 12 : ui32, handshake.name = "extsi25"} : <i6> to <i8>
    %addressResult_43, %dataResult_44 = store[%322] %320 {handshake.bb = 12 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 14], [-14, -1]]>]>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i8>, <i32>
    %323 = addi %56, %309 {handshake.bb = 12 : ui32, handshake.name = "addi11"} : <i6>
    %324:2 = fork [2] %323 {handshake.bb = 12 : ui32, handshake.name = "fork32"} : <i6>
    %326 = trunci %324#0 {handshake.bb = 12 : ui32, handshake.name = "trunci9"} : <i6> to <i5>
    %328 = cmpi ult, %324#1, %312 {handshake.bb = 12 : ui32, handshake.name = "cmpi10"} : <i6>
    %329:4 = fork [4] %328 {handshake.bb = 12 : ui32, handshake.name = "fork33"} : <i1>
    %trueResult_45, %falseResult_46 = cond_br %344#1, %falseResult_40 {handshake.bb = 13 : ui32, handshake.name = "cond_br75"} : <i1>, <i32>
    %trueResult_47, %falseResult_48 = cond_br %344#0, %341 {handshake.bb = 13 : ui32, handshake.name = "cond_br76"} : <i1>, <i5>
    sink %falseResult_48 {handshake.name = "sink12"} : <i5>
    %332 = source {handshake.bb = 13 : ui32, handshake.name = "source24"} : <>
    %333 = constant %332 {handshake.bb = 13 : ui32, handshake.name = "constant50", value = 1 : i2} : <>, <i2>
    %334 = extsi %333 {handshake.bb = 13 : ui32, handshake.name = "extsi42"} : <i2> to <i6>
    %335 = source {handshake.bb = 13 : ui32, handshake.name = "source25"} : <>
    %336 = constant %335 {handshake.bb = 13 : ui32, handshake.name = "constant51", value = 15 : i5} : <>, <i5>
    %337 = extsi %336 {handshake.bb = 13 : ui32, handshake.name = "extsi43"} : <i5> to <i6>
    %338 = addi %26, %334 {handshake.bb = 13 : ui32, handshake.name = "addi12"} : <i6>
    %339:2 = fork [2] %338 {handshake.bb = 13 : ui32, handshake.name = "fork34"} : <i6>
    %341 = trunci %339#0 {handshake.bb = 13 : ui32, handshake.name = "trunci10"} : <i6> to <i5>
    %343 = cmpi ult, %339#1, %337 {handshake.bb = 13 : ui32, handshake.name = "cmpi11"} : <i6>
    %344:3 = fork [3] %343 {handshake.bb = 13 : ui32, handshake.name = "fork35"} : <i1>
    %345 = buffer %0#5 {handshake.bb = 14 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    end {handshake.bb = 14 : ui32, handshake.name = "end0"} %falseResult_46, %memEnd_4, %memEnd_2, %memEnd_0, %memEnd, %345 : <i32>, <>, <>, <>, <>, <>
  }
}


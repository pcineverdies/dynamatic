module {
  handshake.func @stencil_2d(%arg0: memref<900xi32>, %arg1: memref<10xi32>, %arg2: memref<900xi32>, %arg3: !handshake.control<>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["orig", "filter", "sol", "orig_start", "filter_start", "sol_start", "start"], cfg.edges = "[0,1][2,3][4,2,5,cmpi1][1,2][3,3,4,cmpi0][5,1,6,cmpi2]", resNames = ["out0", "orig_end", "filter_end", "sol_end", "end"]} {
    %0:9 = fork [9] %arg6 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %memEnd = mem_controller[%arg2 : memref<900xi32>] %arg5 (%180, %addressResult_27, %dataResult_28) %0#2 {connectedBlocks = [5 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "3": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "4": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller3"} :    (!handshake.channel<i32>, !handshake.channel<i10>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg1 : memref<10xi32>] %arg4 (%addressResult) %0#1 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller4"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg0 : memref<900xi32>] %arg3 (%addressResult_11) %0#0 {connectedBlocks = [3 : i32], handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00, "2": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mem_controller5"} :    (!handshake.channel<i10>) -> !handshake.channel<i32>
    %5 = constant %0#8 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %6:2 = fork [2] %5 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %8 = extsi %6#0 {handshake.bb = 1 : ui32, handshake.name = "extsi13"} : <i1> to <i6>
    %11 = merge %6#1, %194#3 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %12 = buffer %11 {handshake.bb = 1 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %13:2 = fork [2] %12 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <i1>
    %16 = mux %13#1 [%0#7, %trueResult_25] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %17 = buffer %16 {handshake.bb = 1 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %18 = buffer %17 {handshake.bb = 1 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %19:5 = fork [5] %18 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %21 = mux %13#0 [%8, %trueResult_23] {handshake.bb = 1 : ui32, handshake.name = "mux10"} : <i1>, <i6>
    %22 = buffer %21 {handshake.bb = 1 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %23 = buffer %22 {handshake.bb = 1 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %24:3 = fork [3] %23 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i6>
    %25 = buffer %24#0 {handshake.bb = 1 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %26 = extsi %25 {handshake.bb = 1 : ui32, handshake.name = "extsi12"} : <i6> to <i10>
    %28 = extsi %24#1 {handshake.bb = 1 : ui32, handshake.name = "extsi14"} : <i6> to <i7>
    %30 = constant %19#2 {handshake.bb = 1 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %31:2 = fork [2] %30 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i1>
    %33 = extsi %31#0 {handshake.bb = 1 : ui32, handshake.name = "extsi15"} : <i1> to <i3>
    %35 = extsi %31#1 {handshake.bb = 1 : ui32, handshake.name = "extsi2"} : <i1> to <i32>
    %37 = constant %0#6 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant22", value = false} : <>, <i1>
    %39 = merge %37, %172#4 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge11"} : <i1>
    %40 = buffer %39 {handshake.bb = 2 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %41:4 = fork [4] %40 {handshake.bb = 2 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork6"} : <i1>
    %44 = mux %41#0 [%24#2, %trueResult_19] {handshake.bb = 2 : ui32, handshake.name = "mux13"} : <i1>, <i6>
    %45 = buffer %44 {handshake.bb = 2 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %46 = buffer %45 {handshake.bb = 2 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %47:2 = fork [2] %46 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i6>
    %50 = mux %41#3 [%19#4, %trueResult_17] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux17"} : <i1>, <>
    %51 = buffer %50 {handshake.bb = 2 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %52 = buffer %51 {handshake.bb = 2 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %53:5 = fork [5] %52 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <>
    %54 = buffer %41#2 {handshake.bb = 2 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %55 = mux %54 [%35, %trueResult_13] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux18"} : <i1>, <i32>
    %57 = mux %41#1 [%33, %trueResult_15] {handshake.bb = 2 : ui32, handshake.name = "mux19"} : <i1>, <i3>
    %58 = buffer %57 {handshake.bb = 2 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i3>
    %59 = buffer %58 {handshake.bb = 2 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %60:2 = fork [2] %59 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i3>
    %62 = extsi %60#0 {handshake.bb = 2 : ui32, handshake.name = "extsi16"} : <i3> to <i4>
    %64 = constant %53#2 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = false} : <>, <i1>
    %65 = extsi %64 {handshake.bb = 2 : ui32, handshake.name = "extsi17"} : <i1> to <i3>
    %trueResult, %falseResult = cond_br %152#0, %149 {handshake.bb = 3 : ui32, handshake.name = "cond_br41"} : <i1>, <i3>
    sink %falseResult {handshake.name = "sink0"} : <i3>
    %trueResult_3, %falseResult_4 = cond_br %152#5, %105#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br42"} : <i1>, <>
    sink %falseResult_4 {handshake.name = "sink1"} : <>
    %trueResult_5, %falseResult_6 = cond_br %152#2, %93#3 {handshake.bb = 3 : ui32, handshake.name = "cond_br43"} : <i1>, <i3>
    sink %falseResult_6 {handshake.name = "sink2"} : <i3>
    %trueResult_7, %falseResult_8 = cond_br %152#1, %85#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br44"} : <i1>, <i6>
    sink %falseResult_8 {handshake.name = "sink3"} : <i6>
    %73 = buffer %152#4 {handshake.bb = 3 : ui32, handshake.name = "buffer87", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_9, %falseResult_10 = cond_br %73, %145 {handshake.bb = 3 : ui32, handshake.name = "cond_br45"} : <i1>, <i32>
    %75 = constant %0#5 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant31", value = false} : <>, <i1>
    %77 = merge %75, %152#3 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge20"} : <i1>
    %78 = buffer %77 {handshake.bb = 3 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %79:5 = fork [5] %78 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork10"} : <i1>
    %82 = mux %79#0 [%47#1, %trueResult_7] {handshake.bb = 3 : ui32, handshake.name = "mux21"} : <i1>, <i6>
    %83 = buffer %82 {handshake.bb = 3 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i6>
    %84 = buffer %83 {handshake.bb = 3 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %85:2 = fork [2] %84 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i6>
    %86 = buffer %85#0 {handshake.bb = 3 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i6>
    %87 = extsi %86 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i6> to <i7>
    %90 = mux %79#1 [%60#1, %trueResult_5] {handshake.bb = 3 : ui32, handshake.name = "mux23"} : <i1>, <i3>
    %91 = buffer %90 {handshake.bb = 3 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i3>
    %92 = buffer %91 {handshake.bb = 3 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %93:4 = fork [4] %92 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i3>
    %94 = buffer %93#0 {handshake.bb = 3 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %95 = extsi %94 {handshake.bb = 3 : ui32, handshake.name = "extsi19"} : <i3> to <i4>
    %97 = extsi %93#1 {handshake.bb = 3 : ui32, handshake.name = "extsi20"} : <i3> to <i9>
    %98 = buffer %93#2 {handshake.bb = 3 : ui32, handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %99 = extsi %98 {handshake.bb = 3 : ui32, handshake.name = "extsi21"} : <i3> to <i4>
    %102 = mux %79#4 [%53#4, %trueResult_3] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux26"} : <i1>, <>
    %103 = buffer %102 {handshake.bb = 3 : ui32, handshake.name = "buffer66", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %104 = buffer %103 {handshake.bb = 3 : ui32, handshake.name = "buffer67", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %105:4 = fork [4] %104 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <>
    %106 = buffer %55 {handshake.bb = 3 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %107 = buffer %106 {handshake.bb = 3 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %108 = buffer %79#3 {handshake.bb = 3 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %109 = mux %108 [%107, %trueResult_9] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux27"} : <i1>, <i32>
    %111 = mux %79#2 [%65, %trueResult] {handshake.bb = 3 : ui32, handshake.name = "mux28"} : <i1>, <i3>
    %112 = buffer %111 {handshake.bb = 3 : ui32, handshake.name = "buffer74", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i3>
    %113 = buffer %112 {handshake.bb = 3 : ui32, handshake.name = "buffer75", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %114:3 = fork [3] %113 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i3>
    %115 = buffer %114#0 {handshake.bb = 3 : ui32, handshake.name = "buffer76", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %116 = extsi %115 {handshake.bb = 3 : ui32, handshake.name = "extsi22"} : <i3> to <i4>
    %117 = buffer %114#1 {handshake.bb = 3 : ui32, handshake.name = "buffer77", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i3>
    %118 = extsi %117 {handshake.bb = 3 : ui32, handshake.name = "extsi23"} : <i3> to <i7>
    %120 = extsi %114#2 {handshake.bb = 3 : ui32, handshake.name = "extsi24"} : <i3> to <i4>
    %122 = constant %105#2 {handshake.bb = 3 : ui32, handshake.name = "constant5", value = 30 : i6} : <>, <i6>
    %123 = extsi %122 {handshake.bb = 3 : ui32, handshake.name = "extsi25"} : <i6> to <i9>
    %125 = constant %105#1 {handshake.bb = 3 : ui32, handshake.name = "constant16", value = 3 : i3} : <>, <i3>
    %126 = extsi %125 {handshake.bb = 3 : ui32, handshake.name = "extsi26"} : <i3> to <i4>
    %128 = constant %105#0 {handshake.bb = 3 : ui32, handshake.name = "constant17", value = 1 : i2} : <>, <i2>
    %129:2 = fork [2] %128 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <i2>
    %130 = buffer %129#0 {handshake.bb = 3 : ui32, handshake.name = "buffer79", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i2>
    %131 = extui %130 {handshake.bb = 3 : ui32, handshake.name = "extui0"} : <i2> to <i4>
    %133 = extsi %129#1 {handshake.bb = 3 : ui32, handshake.name = "extsi27"} : <i2> to <i4>
    %134 = shli %99, %131 {handshake.bb = 3 : ui32, handshake.name = "shli1"} : <i4>
    %135 = addi %95, %134 {handshake.bb = 3 : ui32, handshake.name = "addi7"} : <i4>
    %136 = addi %116, %135 {handshake.bb = 3 : ui32, handshake.name = "addi1"} : <i4>
    %addressResult, %dataResult = load[%136] %outputs {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i4>, <i32>
    %137 = addi %118, %87 {handshake.bb = 3 : ui32, handshake.name = "addi2"} : <i7>
    %138 = extsi %137 {handshake.bb = 3 : ui32, handshake.name = "extsi28"} : <i7> to <i10>
    %139 = muli %97, %123 {handshake.bb = 3 : ui32, handshake.name = "muli2"} : <i9>
    %140 = extsi %139 {handshake.bb = 3 : ui32, handshake.name = "extsi29"} : <i9> to <i10>
    %141 = addi %138, %140 {handshake.bb = 3 : ui32, handshake.name = "addi3"} : <i10>
    %addressResult_11, %dataResult_12 = load[%141] %outputs_1 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"1": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i10>, <i32>
    %142 = muli %dataResult, %dataResult_12 {handshake.bb = 3 : ui32, handshake.name = "muli0"} : <i32>
    %143 = buffer %109 {handshake.bb = 3 : ui32, handshake.name = "buffer72", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %144 = buffer %143 {handshake.bb = 3 : ui32, handshake.name = "buffer73", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %145 = addi %144, %142 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %146 = addi %120, %133 {handshake.bb = 3 : ui32, handshake.name = "addi4"} : <i4>
    %147:2 = fork [2] %146 {handshake.bb = 3 : ui32, handshake.name = "fork16"} : <i4>
    %149 = trunci %147#0 {handshake.bb = 3 : ui32, handshake.name = "trunci0"} : <i4> to <i3>
    %151 = cmpi ult, %147#1, %126 {handshake.bb = 3 : ui32, handshake.name = "cmpi0"} : <i4>
    %152:6 = fork [6] %151 {handshake.bb = 3 : ui32, handshake.name = "fork17"} : <i1>
    %153 = buffer %172#3 {handshake.bb = 4 : ui32, handshake.name = "buffer96", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_13, %falseResult_14 = cond_br %153, %falseResult_10 {handshake.bb = 4 : ui32, handshake.name = "cond_br46"} : <i1>, <i32>
    %154:2 = fork [2] %falseResult_14 {handshake.bb = 4 : ui32, handshake.name = "fork18"} : <i32>
    %trueResult_15, %falseResult_16 = cond_br %172#0, %169 {handshake.bb = 4 : ui32, handshake.name = "cond_br47"} : <i1>, <i3>
    sink %falseResult_16 {handshake.name = "sink4"} : <i3>
    %trueResult_17, %falseResult_18 = cond_br %172#2, %53#3 {handshake.bb = 4 : ui32, handshake.name = "cond_br48"} : <i1>, <>
    sink %falseResult_18 {handshake.name = "sink5"} : <>
    %trueResult_19, %falseResult_20 = cond_br %172#1, %47#0 {handshake.bb = 4 : ui32, handshake.name = "cond_br49"} : <i1>, <i6>
    sink %falseResult_20 {handshake.name = "sink6"} : <i6>
    %161 = constant %53#1 {handshake.bb = 4 : ui32, handshake.name = "constant18", value = 3 : i3} : <>, <i3>
    %162 = extsi %161 {handshake.bb = 4 : ui32, handshake.name = "extsi30"} : <i3> to <i4>
    %164 = constant %53#0 {handshake.bb = 4 : ui32, handshake.name = "constant19", value = 1 : i2} : <>, <i2>
    %165 = extsi %164 {handshake.bb = 4 : ui32, handshake.name = "extsi31"} : <i2> to <i4>
    %166 = addi %62, %165 {handshake.bb = 4 : ui32, handshake.name = "addi5"} : <i4>
    %167:2 = fork [2] %166 {handshake.bb = 4 : ui32, handshake.name = "fork19"} : <i4>
    %169 = trunci %167#0 {handshake.bb = 4 : ui32, handshake.name = "trunci1"} : <i4> to <i3>
    %171 = cmpi ult, %167#1, %162 {handshake.bb = 4 : ui32, handshake.name = "cmpi1"} : <i4>
    %172:5 = fork [5] %171 {handshake.bb = 4 : ui32, handshake.name = "fork20"} : <i1>
    %trueResult_21, %falseResult_22 = cond_br %194#2, %154#1 {handshake.bb = 5 : ui32, handshake.name = "cond_br50"} : <i1>, <i32>
    sink %trueResult_21 {handshake.name = "sink7"} : <i32>
    %trueResult_23, %falseResult_24 = cond_br %194#0, %191 {handshake.bb = 5 : ui32, handshake.name = "cond_br51"} : <i1>, <i6>
    sink %falseResult_24 {handshake.name = "sink8"} : <i6>
    %trueResult_25, %falseResult_26 = cond_br %194#1, %19#3 {handshake.bb = 5 : ui32, handshake.name = "cond_br52"} : <i1>, <>
    sink %falseResult_26 {handshake.name = "sink9"} : <>
    %179 = constant %0#3 {handshake.bb = 5 : ui32, handshake.name = "constant20", value = 1 : i2} : <>, <i2>
    %180 = extsi %179 {handshake.bb = 5 : ui32, handshake.name = "extsi9"} : <i2> to <i32>
    %181 = buffer %19#1 {handshake.bb = 5 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %182 = constant %181 {handshake.bb = 5 : ui32, handshake.name = "constant21", value = 28 : i6} : <>, <i6>
    %183 = extsi %182 {handshake.bb = 5 : ui32, handshake.name = "extsi32"} : <i6> to <i7>
    %185 = constant %19#0 {handshake.bb = 5 : ui32, handshake.name = "constant23", value = 1 : i2} : <>, <i2>
    %186 = extsi %185 {handshake.bb = 5 : ui32, handshake.name = "extsi33"} : <i2> to <i7>
    %addressResult_27, %dataResult_28 = store[%26] %154#0 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i10>, <i32>
    %188 = addi %28, %186 {handshake.bb = 5 : ui32, handshake.name = "addi6"} : <i7>
    %189:2 = fork [2] %188 {handshake.bb = 5 : ui32, handshake.name = "fork21"} : <i7>
    %191 = trunci %189#0 {handshake.bb = 5 : ui32, handshake.name = "trunci2"} : <i7> to <i6>
    %192 = buffer %189#1 {handshake.bb = 5 : ui32, handshake.name = "buffer99", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i7>
    %193 = cmpi ult, %192, %183 {handshake.bb = 5 : ui32, handshake.name = "cmpi2"} : <i7>
    %194:4 = fork [4] %193 {handshake.bb = 5 : ui32, handshake.name = "fork22"} : <i1>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %falseResult_22, %memEnd_2, %memEnd_0, %memEnd, %0#4 : <i32>, <>, <>, <>, <>
  }
}


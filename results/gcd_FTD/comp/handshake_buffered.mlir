module {
  handshake.func @gcd(%arg0: !handshake.channel<i32>, %arg1: !handshake.channel<i32>, %arg2: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>) attributes {argNames = ["a", "b", "start"], cfg.edges = "[0,1,12,andi0][7,8,11,cmpi8][2,1][9,10,7,andi7][4,3][11,12][6,5][1,2,3,cmpi3][8,9][3,4,5,andi3][10,9][5,6,7,andi5]", resNames = ["out0", "end"]} {
    %0:7 = fork [7] %arg2 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1:3 = fork [3] %arg1 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork1"} : <i32>
    %2:3 = fork [3] %arg0 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <i32>
    %3 = buffer %2#2 {handshake.bb = 0 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %4 = buffer %26#0 {handshake.bb = 0 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %5 = cmpi eq, %3, %4 {handshake.bb = 0 : ui32, handshake.name = "cmpi0"} : <i32>
    %6 = buffer %2#1 {handshake.bb = 0 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %7 = buffer %26#1 {handshake.bb = 0 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %8 = cmpi ne, %6, %7 {handshake.bb = 0 : ui32, handshake.name = "cmpi1"} : <i32>
    %9 = buffer %1#2 {handshake.bb = 0 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %10 = select %5[%9, %23] {handshake.bb = 0 : ui32, handshake.name = "select0"} : <i1>, <i32>
    %11 = buffer %1#1 {handshake.bb = 0 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %12 = buffer %26#2 {handshake.bb = 0 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %13 = cmpi ne, %11, %12 {handshake.bb = 0 : ui32, handshake.name = "cmpi2"} : <i32>
    %14 = andi %8, %13 {handshake.bb = 0 : ui32, handshake.name = "andi0"} : <i1>
    %15:4 = fork [4] %14 {handshake.bb = 0 : ui32, handshake.name = "fork3"} : <i1>
    %16 = buffer %15#0 {handshake.bb = 1 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %17 = buffer %21#0 {handshake.bb = 1 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult, %falseResult = cond_br %16, %17 {handshake.bb = 1 : ui32, handshake.name = "cond_br96"} : <i1>, <i1>
    sink %falseResult {handshake.name = "sink0"} : <i1>
    %18 = extsi %trueResult {handshake.bb = 1 : ui32, handshake.name = "extsi16"} : <i1> to <i32>
    %19 = buffer %0#6 {handshake.bb = 1 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %20 = constant %19 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %21:4 = fork [4] %20 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i1>
    %22 = buffer %21#1 {handshake.bb = 1 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %23 = extsi %22 {handshake.bb = 1 : ui32, handshake.name = "extsi0"} : <i1> to <i32>
    %24 = buffer %21#2 {handshake.bb = 1 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %25 = extsi %24 {handshake.bb = 1 : ui32, handshake.name = "extsi1"} : <i1> to <i32>
    %26:3 = fork [3] %25 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i32>
    %27 = buffer %21#3 {handshake.bb = 1 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %28 = buffer %64#0 {handshake.bb = 1 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %29 = merge %27, %28 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %30 = buffer %29 {handshake.bb = 1 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %31:4 = fork [4] %30 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork6"} : <i1>
    %32 = buffer %31#3 {handshake.bb = 1 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %33 = buffer %74#1 {handshake.bb = 1 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %34 = buffer %175#1 {handshake.bb = 1 : ui32, handshake.name = "buffer95", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %35 = mux %32 [%34, %33] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %36 = buffer %35 {handshake.bb = 1 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %37 = buffer %36 {handshake.bb = 1 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %38:3 = fork [3] %37 {handshake.bb = 1 : ui32, handshake.name = "fork7"} : <>
    %39 = buffer %2#0 {handshake.bb = 1 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %40 = buffer %31#2 {handshake.bb = 1 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %41 = mux %40 [%39, %80] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %42 = buffer %41 {handshake.bb = 1 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %43 = buffer %42 {handshake.bb = 1 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %44:2 = fork [2] %43 {handshake.bb = 1 : ui32, handshake.name = "fork8"} : <i32>
    %45 = buffer %1#0 {handshake.bb = 1 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %46 = buffer %31#1 {handshake.bb = 1 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %47 = mux %46 [%45, %82] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %48 = buffer %47 {handshake.bb = 1 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %49 = buffer %48 {handshake.bb = 1 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %50:2 = fork [2] %49 {handshake.bb = 1 : ui32, handshake.name = "fork9"} : <i32>
    %51 = buffer %31#0 {handshake.bb = 1 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %52 = mux %51 [%18, %84] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %53 = buffer %38#1 {handshake.bb = 1 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %54 = constant %53 {handshake.bb = 1 : ui32, handshake.name = "constant16", value = 1 : i2} : <>, <i2>
    %55 = buffer %38#0 {handshake.bb = 1 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %56 = constant %55 {handshake.bb = 1 : ui32, handshake.name = "constant17", value = false} : <>, <i1>
    %57 = extsi %56 {handshake.bb = 1 : ui32, handshake.name = "extsi17"} : <i1> to <i2>
    %58 = buffer %44#1 {handshake.bb = 1 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %59 = buffer %50#1 {handshake.bb = 1 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %60 = ori %58, %59 {handshake.bb = 1 : ui32, handshake.name = "ori0"} : <i32>
    %61 = trunci %60 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i32> to <i2>
    %62 = andi %61, %54 {handshake.bb = 1 : ui32, handshake.name = "andi1"} : <i2>
    %63 = cmpi eq, %62, %57 {handshake.bb = 1 : ui32, handshake.name = "cmpi3"} : <i2>
    %64:5 = fork [5] %63 {handshake.bb = 1 : ui32, handshake.name = "fork10"} : <i1>
    %65 = buffer %52 {handshake.bb = 2 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %66 = buffer %65 {handshake.bb = 2 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %67 = buffer %64#1 {handshake.bb = 2 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_0, %falseResult_1 = cond_br %67, %66 {handshake.bb = 2 : ui32, handshake.name = "cond_br97"} : <i1>, <i32>
    %68 = buffer %50#0 {handshake.bb = 2 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %69 = buffer %64#2 {handshake.bb = 2 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_2, %falseResult_3 = cond_br %69, %68 {handshake.bb = 2 : ui32, handshake.name = "cond_br98"} : <i1>, <i32>
    %70 = buffer %44#0 {handshake.bb = 2 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %71 = buffer %64#3 {handshake.bb = 2 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_4, %falseResult_5 = cond_br %71, %70 {handshake.bb = 2 : ui32, handshake.name = "cond_br99"} : <i1>, <i32>
    %72 = buffer %38#2 {handshake.bb = 2 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %73 = buffer %64#4 {handshake.bb = 2 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_6, %falseResult_7 = cond_br %73, %72 {handshake.bb = 2 : ui32, handshake.name = "cond_br100"} : <i1>, <>
    sink %falseResult_7 {handshake.name = "sink1"} : <>
    %74:2 = fork [2] %trueResult_6 {handshake.bb = 2 : ui32, handshake.name = "fork11"} : <>
    %75 = buffer %74#0 {handshake.bb = 2 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %76 = constant %75 {handshake.bb = 2 : ui32, handshake.name = "constant18", value = 1 : i2} : <>, <i2>
    %77 = extsi %76 {handshake.bb = 2 : ui32, handshake.name = "extsi4"} : <i2> to <i32>
    %78:3 = fork [3] %77 {handshake.bb = 2 : ui32, handshake.name = "fork12"} : <i32>
    %79 = buffer %78#0 {handshake.bb = 2 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %80 = shrsi %trueResult_4, %79 {handshake.bb = 2 : ui32, handshake.name = "shrsi0"} : <i32>
    %81 = buffer %78#1 {handshake.bb = 2 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %82 = shrsi %trueResult_2, %81 {handshake.bb = 2 : ui32, handshake.name = "shrsi1"} : <i32>
    %83 = buffer %78#2 {handshake.bb = 2 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %84 = addi %trueResult_0, %83 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %85 = buffer %0#5 {handshake.bb = 3 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %86 = constant %85 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant24", value = false} : <>, <i1>
    %87 = buffer %119#2 {handshake.bb = 3 : ui32, handshake.name = "buffer71", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %88 = merge %86, %87 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge6"} : <i1>
    %89 = buffer %88 {handshake.bb = 3 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %90:2 = fork [2] %89 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork13"} : <i1>
    %91 = buffer %90#1 {handshake.bb = 3 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %92 = buffer %124#1 {handshake.bb = 3 : ui32, handshake.name = "buffer73", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %93 = buffer %175#2 {handshake.bb = 3 : ui32, handshake.name = "buffer96", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %94 = mux %91 [%93, %92] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <>
    %95 = buffer %94 {handshake.bb = 3 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %96 = buffer %95 {handshake.bb = 3 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %97:3 = fork [3] %96 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <>
    %98 = buffer %90#0 {handshake.bb = 3 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %99 = mux %98 [%falseResult_5, %128] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %100 = buffer %99 {handshake.bb = 3 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %101 = buffer %100 {handshake.bb = 3 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %102:3 = fork [3] %101 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <i32>
    %103 = buffer %102#0 {handshake.bb = 3 : ui32, handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %104 = trunci %103 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i32> to <i2>
    %105 = buffer %97#1 {handshake.bb = 3 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %106 = constant %105 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 1 : i2} : <>, <i2>
    %107 = buffer %97#0 {handshake.bb = 3 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %108 = constant %107 {handshake.bb = 3 : ui32, handshake.name = "constant20", value = false} : <>, <i1>
    %109:2 = fork [2] %108 {handshake.bb = 3 : ui32, handshake.name = "fork16"} : <i1>
    %110 = buffer %109#0 {handshake.bb = 3 : ui32, handshake.name = "buffer67", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %111 = extsi %110 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i1> to <i2>
    %112 = buffer %109#1 {handshake.bb = 3 : ui32, handshake.name = "buffer68", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %113 = extsi %112 {handshake.bb = 3 : ui32, handshake.name = "extsi6"} : <i1> to <i32>
    %114 = buffer %102#2 {handshake.bb = 3 : ui32, handshake.name = "buffer66", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %115 = cmpi sgt, %114, %113 {handshake.bb = 3 : ui32, handshake.name = "cmpi4"} : <i32>
    %116 = andi %104, %106 {handshake.bb = 3 : ui32, handshake.name = "andi2"} : <i2>
    %117 = cmpi eq, %116, %111 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i2>
    %118 = andi %115, %117 {handshake.bb = 3 : ui32, handshake.name = "andi3"} : <i1>
    %119:3 = fork [3] %118 {handshake.bb = 3 : ui32, handshake.name = "fork17"} : <i1>
    %120 = buffer %102#1 {handshake.bb = 4 : ui32, handshake.name = "buffer65", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %121 = buffer %119#1 {handshake.bb = 4 : ui32, handshake.name = "buffer70", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_8, %falseResult_9 = cond_br %121, %120 {handshake.bb = 4 : ui32, handshake.name = "cond_br101"} : <i1>, <i32>
    %122 = buffer %97#2 {handshake.bb = 4 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %123 = buffer %119#0 {handshake.bb = 4 : ui32, handshake.name = "buffer69", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_10, %falseResult_11 = cond_br %123, %122 {handshake.bb = 4 : ui32, handshake.name = "cond_br102"} : <i1>, <>
    sink %falseResult_11 {handshake.name = "sink2"} : <>
    %124:2 = fork [2] %trueResult_10 {handshake.bb = 4 : ui32, handshake.name = "fork18"} : <>
    %125 = buffer %124#0 {handshake.bb = 4 : ui32, handshake.name = "buffer72", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %126 = constant %125 {handshake.bb = 4 : ui32, handshake.name = "constant21", value = 1 : i2} : <>, <i2>
    %127 = extsi %126 {handshake.bb = 4 : ui32, handshake.name = "extsi7"} : <i2> to <i32>
    %128 = shrsi %trueResult_8, %127 {handshake.bb = 4 : ui32, handshake.name = "shrsi2"} : <i32>
    %129 = buffer %0#4 {handshake.bb = 5 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %130 = constant %129 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant29", value = false} : <>, <i1>
    %131 = buffer %163#2 {handshake.bb = 5 : ui32, handshake.name = "buffer91", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %132 = merge %130, %131 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge10"} : <i1>
    %133 = buffer %132 {handshake.bb = 5 : ui32, handshake.name = "buffer74", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %134:2 = fork [2] %133 {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork19"} : <i1>
    %135 = buffer %134#1 {handshake.bb = 5 : ui32, handshake.name = "buffer76", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %136 = buffer %168#1 {handshake.bb = 5 : ui32, handshake.name = "buffer93", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %137 = buffer %175#3 {handshake.bb = 5 : ui32, handshake.name = "buffer97", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %138 = mux %135 [%137, %136] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux12"} : <i1>, <>
    %139 = buffer %138 {handshake.bb = 5 : ui32, handshake.name = "buffer77", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %140 = buffer %139 {handshake.bb = 5 : ui32, handshake.name = "buffer78", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %141:3 = fork [3] %140 {handshake.bb = 5 : ui32, handshake.name = "fork20"} : <>
    %142 = buffer %134#0 {handshake.bb = 5 : ui32, handshake.name = "buffer75", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %143 = mux %142 [%falseResult_3, %172] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %144 = buffer %143 {handshake.bb = 5 : ui32, handshake.name = "buffer82", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %145 = buffer %144 {handshake.bb = 5 : ui32, handshake.name = "buffer83", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %146:3 = fork [3] %145 {handshake.bb = 5 : ui32, handshake.name = "fork21"} : <i32>
    %147 = buffer %146#0 {handshake.bb = 5 : ui32, handshake.name = "buffer84", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %148 = trunci %147 {handshake.bb = 5 : ui32, handshake.name = "trunci2"} : <i32> to <i2>
    %149 = buffer %141#1 {handshake.bb = 5 : ui32, handshake.name = "buffer80", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %150 = constant %149 {handshake.bb = 5 : ui32, handshake.name = "constant22", value = 1 : i2} : <>, <i2>
    %151 = buffer %141#0 {handshake.bb = 5 : ui32, handshake.name = "buffer79", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %152 = constant %151 {handshake.bb = 5 : ui32, handshake.name = "constant23", value = false} : <>, <i1>
    %153:2 = fork [2] %152 {handshake.bb = 5 : ui32, handshake.name = "fork22"} : <i1>
    %154 = buffer %153#0 {handshake.bb = 5 : ui32, handshake.name = "buffer87", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %155 = extsi %154 {handshake.bb = 5 : ui32, handshake.name = "extsi19"} : <i1> to <i2>
    %156 = buffer %153#1 {handshake.bb = 5 : ui32, handshake.name = "buffer88", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %157 = extsi %156 {handshake.bb = 5 : ui32, handshake.name = "extsi9"} : <i1> to <i32>
    %158 = buffer %146#2 {handshake.bb = 5 : ui32, handshake.name = "buffer86", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %159 = cmpi sgt, %158, %157 {handshake.bb = 5 : ui32, handshake.name = "cmpi6"} : <i32>
    %160 = andi %148, %150 {handshake.bb = 5 : ui32, handshake.name = "andi4"} : <i2>
    %161 = cmpi eq, %160, %155 {handshake.bb = 5 : ui32, handshake.name = "cmpi7"} : <i2>
    %162 = andi %159, %161 {handshake.bb = 5 : ui32, handshake.name = "andi5"} : <i1>
    %163:3 = fork [3] %162 {handshake.bb = 5 : ui32, handshake.name = "fork23"} : <i1>
    %164 = buffer %146#1 {handshake.bb = 6 : ui32, handshake.name = "buffer85", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %165 = buffer %163#1 {handshake.bb = 6 : ui32, handshake.name = "buffer90", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_12, %falseResult_13 = cond_br %165, %164 {handshake.bb = 6 : ui32, handshake.name = "cond_br103"} : <i1>, <i32>
    %166 = buffer %141#2 {handshake.bb = 6 : ui32, handshake.name = "buffer81", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %167 = buffer %163#0 {handshake.bb = 6 : ui32, handshake.name = "buffer89", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_14, %falseResult_15 = cond_br %167, %166 {handshake.bb = 6 : ui32, handshake.name = "cond_br104"} : <i1>, <>
    sink %falseResult_15 {handshake.name = "sink3"} : <>
    %168:2 = fork [2] %trueResult_14 {handshake.bb = 6 : ui32, handshake.name = "fork24"} : <>
    %169 = buffer %168#0 {handshake.bb = 6 : ui32, handshake.name = "buffer92", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %170 = constant %169 {handshake.bb = 6 : ui32, handshake.name = "constant25", value = 1 : i2} : <>, <i2>
    %171 = extsi %170 {handshake.bb = 6 : ui32, handshake.name = "extsi10"} : <i2> to <i32>
    %172 = shrsi %trueResult_12, %171 {handshake.bb = 6 : ui32, handshake.name = "shrsi3"} : <i32>
    %173 = buffer %0#3 {handshake.bb = 7 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %174 = buffer %15#3 {handshake.bb = 7 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_16, %falseResult_17 = cond_br %174, %173 {handshake.bb = 7 : ui32, handshake.name = "cond_br105"} : <i1>, <>
    sink %falseResult_17 {handshake.name = "sink4"} : <>
    %175:4 = fork [4] %trueResult_16 {handshake.bb = 7 : ui32, handshake.name = "fork25"} : <>
    %176 = buffer %0#2 {handshake.bb = 7 : ui32, handshake.name = "buffer2", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %177 = constant %176 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "constant34", value = false} : <>, <i1>
    %178 = buffer %201#3 {handshake.bb = 7 : ui32, handshake.name = "buffer115", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %179 = merge %177, %178 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "merge14"} : <i1>
    %180 = buffer %179 {handshake.bb = 7 : ui32, handshake.name = "buffer98", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %181:3 = fork [3] %180 {handshake.bb = 7 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork26"} : <i1>
    %182 = buffer %175#0 {handshake.bb = 7 : ui32, handshake.name = "buffer94", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %183 = buffer %181#2 {handshake.bb = 7 : ui32, handshake.name = "buffer101", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %184 = buffer %233#2 {handshake.bb = 7 : ui32, handshake.name = "buffer129", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %185 = mux %183 [%182, %184] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux14"} : <i1>, <>
    %186 = buffer %185 {handshake.bb = 7 : ui32, handshake.name = "buffer102", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %187 = buffer %186 {handshake.bb = 7 : ui32, handshake.name = "buffer103", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %188:2 = fork [2] %187 {handshake.bb = 7 : ui32, handshake.name = "fork27"} : <>
    %189 = buffer %181#1 {handshake.bb = 7 : ui32, handshake.name = "buffer100", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %190 = mux %189 [%falseResult_9, %falseResult_25] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux19"} : <i1>, <i32>
    %191 = buffer %190 {handshake.bb = 7 : ui32, handshake.name = "buffer106", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %192 = buffer %191 {handshake.bb = 7 : ui32, handshake.name = "buffer107", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %193:2 = fork [2] %192 {handshake.bb = 7 : ui32, handshake.name = "fork28"} : <i32>
    %194 = buffer %181#0 {handshake.bb = 7 : ui32, handshake.name = "buffer99", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %195 = mux %194 [%falseResult_13, %222] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux20"} : <i1>, <i32>
    %196 = buffer %188#0 {handshake.bb = 7 : ui32, handshake.name = "buffer104", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %197 = constant %196 {handshake.bb = 7 : ui32, handshake.name = "constant26", value = false} : <>, <i1>
    %198 = extsi %197 {handshake.bb = 7 : ui32, handshake.name = "extsi11"} : <i1> to <i32>
    %199 = buffer %193#1 {handshake.bb = 7 : ui32, handshake.name = "buffer109", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %200 = cmpi ne, %199, %198 {handshake.bb = 7 : ui32, handshake.name = "cmpi8"} : <i32>
    %201:4 = fork [4] %200 {handshake.bb = 7 : ui32, handshake.name = "fork29"} : <i1>
    %202 = buffer %193#0 {handshake.bb = 8 : ui32, handshake.name = "buffer108", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %203 = buffer %201#2 {handshake.bb = 8 : ui32, handshake.name = "buffer114", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_18, %falseResult_19 = cond_br %203, %202 {handshake.bb = 8 : ui32, handshake.name = "cond_br106"} : <i1>, <i32>
    sink %falseResult_19 {handshake.name = "sink5"} : <i32>
    %204:3 = fork [3] %trueResult_18 {handshake.bb = 8 : ui32, handshake.name = "fork30"} : <i32>
    %205 = buffer %195 {handshake.bb = 8 : ui32, handshake.name = "buffer110", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %206 = buffer %205 {handshake.bb = 8 : ui32, handshake.name = "buffer111", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %207 = buffer %201#1 {handshake.bb = 8 : ui32, handshake.name = "buffer113", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_20, %falseResult_21 = cond_br %207, %206 {handshake.bb = 8 : ui32, handshake.name = "cond_br107"} : <i1>, <i32>
    %208:3 = fork [3] %trueResult_20 {handshake.bb = 8 : ui32, handshake.name = "fork31"} : <i32>
    %209 = buffer %233#0 {handshake.bb = 8 : ui32, handshake.name = "buffer127", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %210 = constant %209 {handshake.bb = 8 : ui32, handshake.name = "constant27", value = false} : <>, <i1>
    %211 = extsi %210 {handshake.bb = 8 : ui32, handshake.name = "extsi12"} : <i1> to <i32>
    %212:2 = fork [2] %211 {handshake.bb = 8 : ui32, handshake.name = "fork32"} : <i32>
    %213 = buffer %204#2 {handshake.bb = 8 : ui32, handshake.name = "buffer118", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %214 = buffer %208#2 {handshake.bb = 8 : ui32, handshake.name = "buffer121", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %215 = subi %213, %214 {handshake.bb = 8 : ui32, handshake.name = "subi0"} : <i32>
    %216:3 = fork [3] %215 {handshake.bb = 8 : ui32, handshake.name = "fork33"} : <i32>
    %217 = buffer %204#1 {handshake.bb = 8 : ui32, handshake.name = "buffer117", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %218 = buffer %208#1 {handshake.bb = 8 : ui32, handshake.name = "buffer120", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %219 = cmpi slt, %217, %218 {handshake.bb = 8 : ui32, handshake.name = "cmpi9"} : <i32>
    %220 = buffer %204#0 {handshake.bb = 8 : ui32, handshake.name = "buffer116", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %221 = buffer %208#0 {handshake.bb = 8 : ui32, handshake.name = "buffer119", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %222 = select %219[%220, %221] {handshake.bb = 8 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %223 = buffer %212#0 {handshake.bb = 8 : ui32, handshake.name = "buffer122", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %224 = buffer %216#2 {handshake.bb = 8 : ui32, handshake.name = "buffer126", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %225 = cmpi sge, %224, %223 {handshake.bb = 8 : ui32, handshake.name = "cmpi10"} : <i32>
    %226 = buffer %212#1 {handshake.bb = 8 : ui32, handshake.name = "buffer123", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %227 = buffer %216#1 {handshake.bb = 8 : ui32, handshake.name = "buffer125", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %228 = subi %226, %227 {handshake.bb = 8 : ui32, handshake.name = "subi2"} : <i32>
    %229 = buffer %216#0 {handshake.bb = 8 : ui32, handshake.name = "buffer124", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %230 = select %225[%229, %228] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %231 = buffer %188#1 {handshake.bb = 9 : ui32, handshake.name = "buffer105", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %232 = buffer %201#0 {handshake.bb = 9 : ui32, handshake.name = "buffer112", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_22, %falseResult_23 = cond_br %232, %231 {handshake.bb = 9 : ui32, handshake.name = "cond_br108"} : <i1>, <>
    sink %falseResult_23 {handshake.name = "sink6"} : <>
    %233:3 = fork [3] %trueResult_22 {handshake.bb = 9 : ui32, handshake.name = "fork34"} : <>
    %234 = buffer %0#1 {handshake.bb = 9 : ui32, handshake.name = "buffer1", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %235 = constant %234 {ftd.imerge, handshake.bb = 9 : ui32, handshake.name = "constant43", value = false} : <>, <i1>
    %236 = buffer %268#2 {handshake.bb = 9 : ui32, handshake.name = "buffer147", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %237 = merge %235, %236 {ftd.imerge, handshake.bb = 9 : ui32, handshake.name = "merge21"} : <i1>
    %238 = buffer %237 {handshake.bb = 9 : ui32, handshake.name = "buffer130", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %239:2 = fork [2] %238 {handshake.bb = 9 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork35"} : <i1>
    %240 = buffer %233#1 {handshake.bb = 9 : ui32, handshake.name = "buffer128", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %241 = buffer %239#1 {handshake.bb = 9 : ui32, handshake.name = "buffer132", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %242 = buffer %273#1 {handshake.bb = 9 : ui32, handshake.name = "buffer149", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %243 = mux %241 [%240, %242] {ftd.regen, handshake.bb = 9 : ui32, handshake.name = "mux21"} : <i1>, <>
    %244 = buffer %243 {handshake.bb = 9 : ui32, handshake.name = "buffer133", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %245 = buffer %244 {handshake.bb = 9 : ui32, handshake.name = "buffer134", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %246:3 = fork [3] %245 {handshake.bb = 9 : ui32, handshake.name = "fork36"} : <>
    %247 = buffer %239#0 {handshake.bb = 9 : ui32, handshake.name = "buffer131", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %248 = mux %247 [%230, %277] {ftd.phi, handshake.bb = 9 : ui32, handshake.name = "mux24"} : <i1>, <i32>
    %249 = buffer %248 {handshake.bb = 9 : ui32, handshake.name = "buffer138", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %250 = buffer %249 {handshake.bb = 9 : ui32, handshake.name = "buffer139", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %251:3 = fork [3] %250 {handshake.bb = 9 : ui32, handshake.name = "fork37"} : <i32>
    %252 = buffer %251#0 {handshake.bb = 9 : ui32, handshake.name = "buffer140", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %253 = trunci %252 {handshake.bb = 9 : ui32, handshake.name = "trunci3"} : <i32> to <i2>
    %254 = buffer %246#1 {handshake.bb = 9 : ui32, handshake.name = "buffer136", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %255 = constant %254 {handshake.bb = 9 : ui32, handshake.name = "constant28", value = 1 : i2} : <>, <i2>
    %256 = buffer %246#0 {handshake.bb = 9 : ui32, handshake.name = "buffer135", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %257 = constant %256 {handshake.bb = 9 : ui32, handshake.name = "constant30", value = false} : <>, <i1>
    %258:2 = fork [2] %257 {handshake.bb = 9 : ui32, handshake.name = "fork38"} : <i1>
    %259 = buffer %258#0 {handshake.bb = 9 : ui32, handshake.name = "buffer143", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %260 = extsi %259 {handshake.bb = 9 : ui32, handshake.name = "extsi20"} : <i1> to <i2>
    %261 = buffer %258#1 {handshake.bb = 9 : ui32, handshake.name = "buffer144", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %262 = extsi %261 {handshake.bb = 9 : ui32, handshake.name = "extsi14"} : <i1> to <i32>
    %263 = buffer %251#2 {handshake.bb = 9 : ui32, handshake.name = "buffer142", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %264 = cmpi sgt, %263, %262 {handshake.bb = 9 : ui32, handshake.name = "cmpi11"} : <i32>
    %265 = andi %253, %255 {handshake.bb = 9 : ui32, handshake.name = "andi6"} : <i2>
    %266 = cmpi eq, %265, %260 {handshake.bb = 9 : ui32, handshake.name = "cmpi12"} : <i2>
    %267 = andi %264, %266 {handshake.bb = 9 : ui32, handshake.name = "andi7"} : <i1>
    %268:3 = fork [3] %267 {handshake.bb = 9 : ui32, handshake.name = "fork39"} : <i1>
    %269 = buffer %251#1 {handshake.bb = 10 : ui32, handshake.name = "buffer141", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %270 = buffer %268#1 {handshake.bb = 10 : ui32, handshake.name = "buffer146", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_24, %falseResult_25 = cond_br %270, %269 {handshake.bb = 10 : ui32, handshake.name = "cond_br109"} : <i1>, <i32>
    %271 = buffer %246#2 {handshake.bb = 10 : ui32, handshake.name = "buffer137", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %272 = buffer %268#0 {handshake.bb = 10 : ui32, handshake.name = "buffer145", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_26, %falseResult_27 = cond_br %272, %271 {handshake.bb = 10 : ui32, handshake.name = "cond_br110"} : <i1>, <>
    sink %falseResult_27 {handshake.name = "sink7"} : <>
    %273:2 = fork [2] %trueResult_26 {handshake.bb = 10 : ui32, handshake.name = "fork40"} : <>
    %274 = buffer %273#0 {handshake.bb = 10 : ui32, handshake.name = "buffer148", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %275 = constant %274 {handshake.bb = 10 : ui32, handshake.name = "constant31", value = 1 : i2} : <>, <i2>
    %276 = extsi %275 {handshake.bb = 10 : ui32, handshake.name = "extsi15"} : <i2> to <i32>
    %277 = shrsi %trueResult_24, %276 {handshake.bb = 10 : ui32, handshake.name = "shrsi4"} : <i32>
    %278 = shli %falseResult_21, %falseResult_1 {handshake.bb = 11 : ui32, handshake.name = "shli0"} : <i32>
    %279 = buffer %15#2 {handshake.bb = 12 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_28, %falseResult_29 = cond_br %279, %10 {handshake.bb = 12 : ui32, handshake.name = "cond_br95"} : <i1>, <i32>
    sink %trueResult_28 {handshake.name = "sink8"} : <i32>
    %280 = buffer %15#1 {handshake.bb = 12 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %281 = mux %280 [%falseResult_29, %278] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux25"} : <i1>, <i32>
    %282 = buffer %0#0 {handshake.bb = 12 : ui32, handshake.name = "buffer0", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %283 = buffer %281 {handshake.bb = 12 : ui32, handshake.name = "buffer150", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %284 = buffer %283 {handshake.bb = 12 : ui32, handshake.name = "buffer151", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    end {handshake.bb = 12 : ui32, handshake.name = "end0"} %284, %282 : <i32>, <>
  }
}


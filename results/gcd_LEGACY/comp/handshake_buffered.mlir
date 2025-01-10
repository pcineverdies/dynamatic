module {
  handshake.func @gcd(%arg0: !handshake.channel<i32>, %arg1: !handshake.channel<i32>, %arg2: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>) attributes {argNames = ["a", "b", "start"], resNames = ["out0", "end"]} {
    %0:3 = fork [3] %arg2 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1:3 = fork [3] %arg1 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork1"} : <i32>
    %2:3 = fork [3] %arg0 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <i32>
    %3 = buffer %0#0 {handshake.bb = 0 : ui32, handshake.name = "buffer0", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %4 = constant %3 {handshake.bb = 0 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %5:3 = fork [3] %4 {handshake.bb = 0 : ui32, handshake.name = "fork3"} : <i1>
    %6 = buffer %5#1 {handshake.bb = 0 : ui32, handshake.name = "buffer10", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %7 = extsi %6 {handshake.bb = 0 : ui32, handshake.name = "extsi0"} : <i1> to <i32>
    %8 = buffer %5#2 {handshake.bb = 0 : ui32, handshake.name = "buffer11", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %9 = extsi %8 {handshake.bb = 0 : ui32, handshake.name = "extsi1"} : <i1> to <i32>
    %10:3 = fork [3] %9 {handshake.bb = 0 : ui32, handshake.name = "fork4"} : <i32>
    %11 = buffer %2#2 {handshake.bb = 0 : ui32, handshake.name = "buffer8", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %12 = buffer %10#0 {handshake.bb = 0 : ui32, handshake.name = "buffer12", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %13 = cmpi eq, %11, %12 {handshake.bb = 0 : ui32, handshake.name = "cmpi0"} : <i32>
    %14 = buffer %2#1 {handshake.bb = 0 : ui32, handshake.name = "buffer7", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %15 = buffer %10#1 {handshake.bb = 0 : ui32, handshake.name = "buffer13", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %16 = cmpi ne, %14, %15 {handshake.bb = 0 : ui32, handshake.name = "cmpi1"} : <i32>
    %17 = buffer %1#2 {handshake.bb = 0 : ui32, handshake.name = "buffer5", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %18 = select %13[%17, %7] {handshake.bb = 0 : ui32, handshake.name = "select0"} : <i1>, <i32>
    %19 = buffer %1#1 {handshake.bb = 0 : ui32, handshake.name = "buffer4", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %20 = buffer %10#2 {handshake.bb = 0 : ui32, handshake.name = "buffer14", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %21 = cmpi ne, %19, %20 {handshake.bb = 0 : ui32, handshake.name = "cmpi2"} : <i32>
    %22 = andi %16, %21 {handshake.bb = 0 : ui32, handshake.name = "andi0"} : <i1>
    %23:5 = fork [5] %22 {handshake.bb = 0 : ui32, handshake.name = "fork5"} : <i1>
    %24 = buffer %5#0 {handshake.bb = 0 : ui32, handshake.name = "buffer9", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %25 = buffer %23#0 {handshake.bb = 0 : ui32, handshake.name = "buffer15", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult, %falseResult = cond_br %25, %24 {handshake.bb = 0 : ui32, handshake.name = "cond_br6"} : <i1>, <i1>
    sink %falseResult {handshake.name = "sink0"} : <i1>
    %26 = extsi %trueResult {handshake.bb = 0 : ui32, handshake.name = "extsi16"} : <i1> to <i32>
    %27 = buffer %1#0 {handshake.bb = 0 : ui32, handshake.name = "buffer3", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %28 = buffer %23#4 {handshake.bb = 0 : ui32, handshake.name = "buffer19", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_0, %falseResult_1 = cond_br %28, %27 {handshake.bb = 0 : ui32, handshake.name = "cond_br7"} : <i1>, <i32>
    sink %falseResult_1 {handshake.name = "sink1"} : <i32>
    %29 = buffer %2#0 {handshake.bb = 0 : ui32, handshake.name = "buffer6", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %30 = buffer %23#3 {handshake.bb = 0 : ui32, handshake.name = "buffer18", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_2, %falseResult_3 = cond_br %30, %29 {handshake.bb = 0 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    sink %falseResult_3 {handshake.name = "sink2"} : <i32>
    %31 = buffer %0#2 {handshake.bb = 0 : ui32, handshake.name = "buffer2", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %32 = buffer %23#2 {handshake.bb = 0 : ui32, handshake.name = "buffer17", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_4, %falseResult_5 = cond_br %32, %31 {handshake.bb = 0 : ui32, handshake.name = "cond_br9"} : <i1>, <>
    %33 = buffer %23#1 {handshake.bb = 0 : ui32, handshake.name = "buffer16", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_6, %falseResult_7 = cond_br %33, %18 {handshake.bb = 0 : ui32, handshake.name = "cond_br10"} : <i1>, <i32>
    sink %trueResult_6 {handshake.name = "sink3"} : <i32>
    %34 = buffer %46#0 {handshake.bb = 1 : ui32, handshake.name = "buffer32", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %35 = mux %34 [%26, %88] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %36 = buffer %46#1 {handshake.bb = 1 : ui32, handshake.name = "buffer33", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %37 = mux %36 [%trueResult_0, %89] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %38 = buffer %37 {handshake.bb = 1 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %39 = buffer %38 {handshake.bb = 1 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %40:2 = fork [2] %39 {handshake.bb = 1 : ui32, handshake.name = "fork6"} : <i32>
    %41 = buffer %46#2 {handshake.bb = 1 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %42 = mux %41 [%trueResult_2, %90] {handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %43 = buffer %42 {handshake.bb = 1 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %44 = buffer %43 {handshake.bb = 1 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %45:2 = fork [2] %44 {handshake.bb = 1 : ui32, handshake.name = "fork7"} : <i32>
    %result, %index = control_merge %trueResult_4, %93  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %46:3 = fork [3] %index {handshake.bb = 1 : ui32, handshake.name = "fork8"} : <i1>
    %47 = source {handshake.bb = 1 : ui32, handshake.name = "source0"} : <>
    %48 = constant %47 {handshake.bb = 1 : ui32, handshake.name = "constant16", value = 1 : i2} : <>, <i2>
    %49 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %50 = constant %49 {handshake.bb = 1 : ui32, handshake.name = "constant17", value = false} : <>, <i1>
    %51 = extsi %50 {handshake.bb = 1 : ui32, handshake.name = "extsi17"} : <i1> to <i2>
    %52 = buffer %40#1 {handshake.bb = 1 : ui32, handshake.name = "buffer25", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %53 = buffer %45#1 {handshake.bb = 1 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %54 = ori %53, %52 {handshake.bb = 1 : ui32, handshake.name = "ori0"} : <i32>
    %55 = trunci %54 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i32> to <i2>
    %56 = andi %55, %48 {handshake.bb = 1 : ui32, handshake.name = "andi1"} : <i2>
    %57 = cmpi eq, %56, %51 {handshake.bb = 1 : ui32, handshake.name = "cmpi3"} : <i2>
    %58:4 = fork [4] %57 {handshake.bb = 1 : ui32, handshake.name = "fork9"} : <i1>
    %59 = buffer %35 {handshake.bb = 1 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %60 = buffer %59 {handshake.bb = 1 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %61 = buffer %58#0 {handshake.bb = 1 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_8, %falseResult_9 = cond_br %61, %60 {handshake.bb = 1 : ui32, handshake.name = "cond_br11"} : <i1>, <i32>
    %62 = buffer %40#0 {handshake.bb = 1 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %63 = buffer %58#1 {handshake.bb = 1 : ui32, handshake.name = "buffer36", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_10, %falseResult_11 = cond_br %63, %62 {handshake.bb = 1 : ui32, handshake.name = "cond_br12"} : <i1>, <i32>
    %64 = buffer %45#0 {handshake.bb = 1 : ui32, handshake.name = "buffer28", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %65 = buffer %58#2 {handshake.bb = 1 : ui32, handshake.name = "buffer37", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_12, %falseResult_13 = cond_br %65, %64 {handshake.bb = 1 : ui32, handshake.name = "cond_br13"} : <i1>, <i32>
    %66 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %67 = buffer %66 {handshake.bb = 1 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %68 = buffer %58#3 {handshake.bb = 1 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_14, %falseResult_15 = cond_br %68, %67 {handshake.bb = 1 : ui32, handshake.name = "cond_br14"} : <i1>, <>
    %69 = merge %trueResult_8 {handshake.bb = 2 : ui32, handshake.name = "merge0"} : <i32>
    %70 = merge %trueResult_10 {handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i32>
    %71 = merge %trueResult_12 {handshake.bb = 2 : ui32, handshake.name = "merge2"} : <i32>
    %result_16, %index_17 = control_merge %trueResult_14  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    sink %index_17 {handshake.name = "sink4"} : <i1>
    %72 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %73 = constant %72 {handshake.bb = 2 : ui32, handshake.name = "constant18", value = 1 : i2} : <>, <i2>
    %74 = extsi %73 {handshake.bb = 2 : ui32, handshake.name = "extsi4"} : <i2> to <i32>
    %75:3 = fork [3] %74 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i32>
    %76 = buffer %71 {handshake.bb = 2 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %77 = buffer %76 {handshake.bb = 2 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %78 = buffer %75#0 {handshake.bb = 2 : ui32, handshake.name = "buffer47", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %79 = shrsi %77, %78 {handshake.bb = 2 : ui32, handshake.name = "shrsi0"} : <i32>
    %80 = buffer %70 {handshake.bb = 2 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %81 = buffer %80 {handshake.bb = 2 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %82 = buffer %75#1 {handshake.bb = 2 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %83 = shrsi %81, %82 {handshake.bb = 2 : ui32, handshake.name = "shrsi1"} : <i32>
    %84 = buffer %69 {handshake.bb = 2 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %85 = buffer %84 {handshake.bb = 2 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %86 = buffer %75#2 {handshake.bb = 2 : ui32, handshake.name = "buffer49", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %87 = addi %85, %86 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %88 = br %87 {handshake.bb = 2 : ui32, handshake.name = "br0"} : <i32>
    %89 = br %83 {handshake.bb = 2 : ui32, handshake.name = "br2"} : <i32>
    %90 = br %79 {handshake.bb = 2 : ui32, handshake.name = "br4"} : <i32>
    %91 = buffer %result_16 {handshake.bb = 2 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %92 = buffer %91 {handshake.bb = 2 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %93 = br %92 {handshake.bb = 2 : ui32, handshake.name = "br6"} : <>
    %94 = buffer %105#0 {handshake.bb = 3 : ui32, handshake.name = "buffer61", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %95 = mux %94 [%falseResult_13, %141] {handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %96 = buffer %95 {handshake.bb = 3 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %97 = buffer %96 {handshake.bb = 3 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %98:3 = fork [3] %97 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i32>
    %99 = buffer %98#0 {handshake.bb = 3 : ui32, handshake.name = "buffer52", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %100 = trunci %99 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i32> to <i2>
    %101 = buffer %105#1 {handshake.bb = 3 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %102 = mux %101 [%falseResult_9, %144] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %103 = buffer %105#2 {handshake.bb = 3 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %104 = mux %103 [%falseResult_11, %147] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %result_18, %index_19 = control_merge %falseResult_15, %150  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %105:3 = fork [3] %index_19 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i1>
    %106 = source {handshake.bb = 3 : ui32, handshake.name = "source3"} : <>
    %107 = constant %106 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 1 : i2} : <>, <i2>
    %108 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %109 = constant %108 {handshake.bb = 3 : ui32, handshake.name = "constant20", value = false} : <>, <i1>
    %110:2 = fork [2] %109 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i1>
    %111 = buffer %110#0 {handshake.bb = 3 : ui32, handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %112 = extsi %111 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i1> to <i2>
    %113 = buffer %110#1 {handshake.bb = 3 : ui32, handshake.name = "buffer65", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %114 = extsi %113 {handshake.bb = 3 : ui32, handshake.name = "extsi6"} : <i1> to <i32>
    %115 = buffer %98#2 {handshake.bb = 3 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %116 = cmpi sgt, %115, %114 {handshake.bb = 3 : ui32, handshake.name = "cmpi4"} : <i32>
    %117 = andi %100, %107 {handshake.bb = 3 : ui32, handshake.name = "andi2"} : <i2>
    %118 = cmpi eq, %117, %112 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i2>
    %119 = andi %116, %118 {handshake.bb = 3 : ui32, handshake.name = "andi3"} : <i1>
    %120:4 = fork [4] %119 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i1>
    %121 = buffer %98#1 {handshake.bb = 3 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %122 = buffer %120#3 {handshake.bb = 3 : ui32, handshake.name = "buffer69", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_20, %falseResult_21 = cond_br %122, %121 {handshake.bb = 3 : ui32, handshake.name = "cond_br15"} : <i1>, <i32>
    %123 = buffer %102 {handshake.bb = 3 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %124 = buffer %123 {handshake.bb = 3 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %125 = buffer %120#2 {handshake.bb = 3 : ui32, handshake.name = "buffer68", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_22, %falseResult_23 = cond_br %125, %124 {handshake.bb = 3 : ui32, handshake.name = "cond_br16"} : <i1>, <i32>
    %126 = buffer %104 {handshake.bb = 3 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %127 = buffer %126 {handshake.bb = 3 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %128 = buffer %120#1 {handshake.bb = 3 : ui32, handshake.name = "buffer67", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_24, %falseResult_25 = cond_br %128, %127 {handshake.bb = 3 : ui32, handshake.name = "cond_br17"} : <i1>, <i32>
    %129 = buffer %result_18 {handshake.bb = 3 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %130 = buffer %129 {handshake.bb = 3 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %131 = buffer %120#0 {handshake.bb = 3 : ui32, handshake.name = "buffer66", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_26, %falseResult_27 = cond_br %131, %130 {handshake.bb = 3 : ui32, handshake.name = "cond_br18"} : <i1>, <>
    %132 = merge %trueResult_20 {handshake.bb = 4 : ui32, handshake.name = "merge3"} : <i32>
    %133 = merge %trueResult_22 {handshake.bb = 4 : ui32, handshake.name = "merge4"} : <i32>
    %134 = merge %trueResult_24 {handshake.bb = 4 : ui32, handshake.name = "merge5"} : <i32>
    %result_28, %index_29 = control_merge %trueResult_26  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_29 {handshake.name = "sink5"} : <i1>
    %135 = source {handshake.bb = 4 : ui32, handshake.name = "source5"} : <>
    %136 = constant %135 {handshake.bb = 4 : ui32, handshake.name = "constant21", value = 1 : i2} : <>, <i2>
    %137 = extsi %136 {handshake.bb = 4 : ui32, handshake.name = "extsi7"} : <i2> to <i32>
    %138 = buffer %132 {handshake.bb = 4 : ui32, handshake.name = "buffer70", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %139 = buffer %138 {handshake.bb = 4 : ui32, handshake.name = "buffer71", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %140 = shrsi %139, %137 {handshake.bb = 4 : ui32, handshake.name = "shrsi2"} : <i32>
    %141 = br %140 {handshake.bb = 4 : ui32, handshake.name = "br9"} : <i32>
    %142 = buffer %133 {handshake.bb = 4 : ui32, handshake.name = "buffer72", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %143 = buffer %142 {handshake.bb = 4 : ui32, handshake.name = "buffer73", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %144 = br %143 {handshake.bb = 4 : ui32, handshake.name = "br11"} : <i32>
    %145 = buffer %134 {handshake.bb = 4 : ui32, handshake.name = "buffer74", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %146 = buffer %145 {handshake.bb = 4 : ui32, handshake.name = "buffer75", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %147 = br %146 {handshake.bb = 4 : ui32, handshake.name = "br12"} : <i32>
    %148 = buffer %result_28 {handshake.bb = 4 : ui32, handshake.name = "buffer76", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %149 = buffer %148 {handshake.bb = 4 : ui32, handshake.name = "buffer77", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %150 = br %149 {handshake.bb = 4 : ui32, handshake.name = "br13"} : <>
    %151 = buffer %162#0 {handshake.bb = 5 : ui32, handshake.name = "buffer89", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %152 = mux %151 [%falseResult_25, %198] {handshake.bb = 5 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %153 = buffer %152 {handshake.bb = 5 : ui32, handshake.name = "buffer78", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %154 = buffer %153 {handshake.bb = 5 : ui32, handshake.name = "buffer79", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %155:3 = fork [3] %154 {handshake.bb = 5 : ui32, handshake.name = "fork15"} : <i32>
    %156 = buffer %155#0 {handshake.bb = 5 : ui32, handshake.name = "buffer80", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %157 = trunci %156 {handshake.bb = 5 : ui32, handshake.name = "trunci2"} : <i32> to <i2>
    %158 = buffer %162#1 {handshake.bb = 5 : ui32, handshake.name = "buffer90", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %159 = mux %158 [%falseResult_23, %201] {handshake.bb = 5 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %160 = buffer %162#2 {handshake.bb = 5 : ui32, handshake.name = "buffer91", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %161 = mux %160 [%falseResult_21, %204] {handshake.bb = 5 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %result_30, %index_31 = control_merge %falseResult_27, %207  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %162:3 = fork [3] %index_31 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <i1>
    %163 = source {handshake.bb = 5 : ui32, handshake.name = "source6"} : <>
    %164 = constant %163 {handshake.bb = 5 : ui32, handshake.name = "constant22", value = 1 : i2} : <>, <i2>
    %165 = source {handshake.bb = 5 : ui32, handshake.name = "source7"} : <>
    %166 = constant %165 {handshake.bb = 5 : ui32, handshake.name = "constant23", value = false} : <>, <i1>
    %167:2 = fork [2] %166 {handshake.bb = 5 : ui32, handshake.name = "fork17"} : <i1>
    %168 = buffer %167#0 {handshake.bb = 5 : ui32, handshake.name = "buffer92", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %169 = extsi %168 {handshake.bb = 5 : ui32, handshake.name = "extsi19"} : <i1> to <i2>
    %170 = buffer %167#1 {handshake.bb = 5 : ui32, handshake.name = "buffer93", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %171 = extsi %170 {handshake.bb = 5 : ui32, handshake.name = "extsi9"} : <i1> to <i32>
    %172 = buffer %155#2 {handshake.bb = 5 : ui32, handshake.name = "buffer82", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %173 = cmpi sgt, %172, %171 {handshake.bb = 5 : ui32, handshake.name = "cmpi6"} : <i32>
    %174 = andi %157, %164 {handshake.bb = 5 : ui32, handshake.name = "andi4"} : <i2>
    %175 = cmpi eq, %174, %169 {handshake.bb = 5 : ui32, handshake.name = "cmpi7"} : <i2>
    %176 = andi %173, %175 {handshake.bb = 5 : ui32, handshake.name = "andi5"} : <i1>
    %177:4 = fork [4] %176 {handshake.bb = 5 : ui32, handshake.name = "fork18"} : <i1>
    %178 = buffer %155#1 {handshake.bb = 5 : ui32, handshake.name = "buffer81", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %179 = buffer %177#3 {handshake.bb = 5 : ui32, handshake.name = "buffer97", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_32, %falseResult_33 = cond_br %179, %178 {handshake.bb = 5 : ui32, handshake.name = "cond_br19"} : <i1>, <i32>
    %180 = buffer %159 {handshake.bb = 5 : ui32, handshake.name = "buffer83", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %181 = buffer %180 {handshake.bb = 5 : ui32, handshake.name = "buffer84", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %182 = buffer %177#2 {handshake.bb = 5 : ui32, handshake.name = "buffer96", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_34, %falseResult_35 = cond_br %182, %181 {handshake.bb = 5 : ui32, handshake.name = "cond_br20"} : <i1>, <i32>
    %183 = buffer %161 {handshake.bb = 5 : ui32, handshake.name = "buffer85", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %184 = buffer %183 {handshake.bb = 5 : ui32, handshake.name = "buffer86", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %185 = buffer %177#1 {handshake.bb = 5 : ui32, handshake.name = "buffer95", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_36, %falseResult_37 = cond_br %185, %184 {handshake.bb = 5 : ui32, handshake.name = "cond_br21"} : <i1>, <i32>
    %186 = buffer %result_30 {handshake.bb = 5 : ui32, handshake.name = "buffer87", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %187 = buffer %186 {handshake.bb = 5 : ui32, handshake.name = "buffer88", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %188 = buffer %177#0 {handshake.bb = 5 : ui32, handshake.name = "buffer94", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_38, %falseResult_39 = cond_br %188, %187 {handshake.bb = 5 : ui32, handshake.name = "cond_br22"} : <i1>, <>
    %189 = merge %trueResult_32 {handshake.bb = 6 : ui32, handshake.name = "merge6"} : <i32>
    %190 = merge %trueResult_34 {handshake.bb = 6 : ui32, handshake.name = "merge7"} : <i32>
    %191 = merge %trueResult_36 {handshake.bb = 6 : ui32, handshake.name = "merge8"} : <i32>
    %result_40, %index_41 = control_merge %trueResult_38  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    sink %index_41 {handshake.name = "sink6"} : <i1>
    %192 = source {handshake.bb = 6 : ui32, handshake.name = "source8"} : <>
    %193 = constant %192 {handshake.bb = 6 : ui32, handshake.name = "constant24", value = 1 : i2} : <>, <i2>
    %194 = extsi %193 {handshake.bb = 6 : ui32, handshake.name = "extsi10"} : <i2> to <i32>
    %195 = buffer %189 {handshake.bb = 6 : ui32, handshake.name = "buffer98", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %196 = buffer %195 {handshake.bb = 6 : ui32, handshake.name = "buffer99", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %197 = shrsi %196, %194 {handshake.bb = 6 : ui32, handshake.name = "shrsi3"} : <i32>
    %198 = br %197 {handshake.bb = 6 : ui32, handshake.name = "br14"} : <i32>
    %199 = buffer %190 {handshake.bb = 6 : ui32, handshake.name = "buffer100", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %200 = buffer %199 {handshake.bb = 6 : ui32, handshake.name = "buffer101", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %201 = br %200 {handshake.bb = 6 : ui32, handshake.name = "br15"} : <i32>
    %202 = buffer %191 {handshake.bb = 6 : ui32, handshake.name = "buffer102", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %203 = buffer %202 {handshake.bb = 6 : ui32, handshake.name = "buffer103", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %204 = br %203 {handshake.bb = 6 : ui32, handshake.name = "br16"} : <i32>
    %205 = buffer %result_40 {handshake.bb = 6 : ui32, handshake.name = "buffer104", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %206 = buffer %205 {handshake.bb = 6 : ui32, handshake.name = "buffer105", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %207 = br %206 {handshake.bb = 6 : ui32, handshake.name = "br17"} : <>
    %208 = buffer %217#0 {handshake.bb = 7 : ui32, handshake.name = "buffer116", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %209 = mux %208 [%falseResult_33, %falseResult_61] {handshake.bb = 7 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %210 = buffer %217#1 {handshake.bb = 7 : ui32, handshake.name = "buffer117", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %211 = mux %210 [%falseResult_37, %falseResult_57] {handshake.bb = 7 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %212 = buffer %211 {handshake.bb = 7 : ui32, handshake.name = "buffer108", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %213 = buffer %212 {handshake.bb = 7 : ui32, handshake.name = "buffer109", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %214:2 = fork [2] %213 {handshake.bb = 7 : ui32, handshake.name = "fork19"} : <i32>
    %215 = buffer %217#2 {handshake.bb = 7 : ui32, handshake.name = "buffer118", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %216 = mux %215 [%falseResult_35, %falseResult_59] {handshake.bb = 7 : ui32, handshake.name = "mux11"} : <i1>, <i32>
    %result_42, %index_43 = control_merge %falseResult_39, %falseResult_63  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %217:3 = fork [3] %index_43 {handshake.bb = 7 : ui32, handshake.name = "fork20"} : <i1>
    %218 = source {handshake.bb = 7 : ui32, handshake.name = "source9"} : <>
    %219 = constant %218 {handshake.bb = 7 : ui32, handshake.name = "constant25", value = false} : <>, <i1>
    %220 = extsi %219 {handshake.bb = 7 : ui32, handshake.name = "extsi11"} : <i1> to <i32>
    %221 = buffer %214#1 {handshake.bb = 7 : ui32, handshake.name = "buffer111", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %222 = cmpi ne, %221, %220 {handshake.bb = 7 : ui32, handshake.name = "cmpi8"} : <i32>
    %223:4 = fork [4] %222 {handshake.bb = 7 : ui32, handshake.name = "fork21"} : <i1>
    %224 = buffer %209 {handshake.bb = 7 : ui32, handshake.name = "buffer106", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %225 = buffer %224 {handshake.bb = 7 : ui32, handshake.name = "buffer107", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %226 = buffer %223#3 {handshake.bb = 7 : ui32, handshake.name = "buffer122", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_44, %falseResult_45 = cond_br %226, %225 {handshake.bb = 7 : ui32, handshake.name = "cond_br23"} : <i1>, <i32>
    %227 = buffer %214#0 {handshake.bb = 7 : ui32, handshake.name = "buffer110", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %228 = buffer %223#2 {handshake.bb = 7 : ui32, handshake.name = "buffer121", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_46, %falseResult_47 = cond_br %228, %227 {handshake.bb = 7 : ui32, handshake.name = "cond_br24"} : <i1>, <i32>
    sink %falseResult_47 {handshake.name = "sink7"} : <i32>
    %229 = buffer %216 {handshake.bb = 7 : ui32, handshake.name = "buffer112", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %230 = buffer %229 {handshake.bb = 7 : ui32, handshake.name = "buffer113", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %231 = buffer %223#1 {handshake.bb = 7 : ui32, handshake.name = "buffer120", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_48, %falseResult_49 = cond_br %231, %230 {handshake.bb = 7 : ui32, handshake.name = "cond_br25"} : <i1>, <i32>
    %232 = buffer %result_42 {handshake.bb = 7 : ui32, handshake.name = "buffer114", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %233 = buffer %232 {handshake.bb = 7 : ui32, handshake.name = "buffer115", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %234 = buffer %223#0 {handshake.bb = 7 : ui32, handshake.name = "buffer119", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_50, %falseResult_51 = cond_br %234, %233 {handshake.bb = 7 : ui32, handshake.name = "cond_br26"} : <i1>, <>
    %235 = merge %trueResult_44 {handshake.bb = 8 : ui32, handshake.name = "merge9"} : <i32>
    %236 = buffer %235 {handshake.bb = 8 : ui32, handshake.name = "buffer123", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %237 = buffer %236 {handshake.bb = 8 : ui32, handshake.name = "buffer124", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %238:3 = fork [3] %237 {handshake.bb = 8 : ui32, handshake.name = "fork22"} : <i32>
    %239 = merge %trueResult_46 {handshake.bb = 8 : ui32, handshake.name = "merge10"} : <i32>
    %240 = buffer %239 {handshake.bb = 8 : ui32, handshake.name = "buffer128", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %241 = buffer %240 {handshake.bb = 8 : ui32, handshake.name = "buffer129", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %242:3 = fork [3] %241 {handshake.bb = 8 : ui32, handshake.name = "fork23"} : <i32>
    %243 = merge %trueResult_48 {handshake.bb = 8 : ui32, handshake.name = "merge11"} : <i32>
    %result_52, %index_53 = control_merge %trueResult_50  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    sink %index_53 {handshake.name = "sink8"} : <i1>
    %244 = source {handshake.bb = 8 : ui32, handshake.name = "source10"} : <>
    %245 = constant %244 {handshake.bb = 8 : ui32, handshake.name = "constant26", value = false} : <>, <i1>
    %246 = extsi %245 {handshake.bb = 8 : ui32, handshake.name = "extsi12"} : <i1> to <i32>
    %247:2 = fork [2] %246 {handshake.bb = 8 : ui32, handshake.name = "fork24"} : <i32>
    %248 = buffer %238#2 {handshake.bb = 8 : ui32, handshake.name = "buffer127", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %249 = buffer %242#2 {handshake.bb = 8 : ui32, handshake.name = "buffer132", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %250 = subi %249, %248 {handshake.bb = 8 : ui32, handshake.name = "subi0"} : <i32>
    %251:3 = fork [3] %250 {handshake.bb = 8 : ui32, handshake.name = "fork25"} : <i32>
    %252 = buffer %238#1 {handshake.bb = 8 : ui32, handshake.name = "buffer126", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %253 = buffer %242#1 {handshake.bb = 8 : ui32, handshake.name = "buffer131", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %254 = cmpi slt, %253, %252 {handshake.bb = 8 : ui32, handshake.name = "cmpi9"} : <i32>
    %255 = buffer %238#0 {handshake.bb = 8 : ui32, handshake.name = "buffer125", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %256 = buffer %242#0 {handshake.bb = 8 : ui32, handshake.name = "buffer130", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %257 = select %254[%256, %255] {handshake.bb = 8 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %258 = buffer %247#0 {handshake.bb = 8 : ui32, handshake.name = "buffer137", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %259 = buffer %251#2 {handshake.bb = 8 : ui32, handshake.name = "buffer141", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %260 = cmpi sge, %259, %258 {handshake.bb = 8 : ui32, handshake.name = "cmpi10"} : <i32>
    %261 = buffer %247#1 {handshake.bb = 8 : ui32, handshake.name = "buffer138", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %262 = buffer %251#1 {handshake.bb = 8 : ui32, handshake.name = "buffer140", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %263 = subi %261, %262 {handshake.bb = 8 : ui32, handshake.name = "subi2"} : <i32>
    %264 = buffer %251#0 {handshake.bb = 8 : ui32, handshake.name = "buffer139", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %265 = select %260[%264, %263] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %266 = br %265 {handshake.bb = 8 : ui32, handshake.name = "br18"} : <i32>
    %267 = buffer %243 {handshake.bb = 8 : ui32, handshake.name = "buffer133", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %268 = buffer %267 {handshake.bb = 8 : ui32, handshake.name = "buffer134", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %269 = br %268 {handshake.bb = 8 : ui32, handshake.name = "br19"} : <i32>
    %270 = br %257 {handshake.bb = 8 : ui32, handshake.name = "br20"} : <i32>
    %271 = buffer %result_52 {handshake.bb = 8 : ui32, handshake.name = "buffer135", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %272 = buffer %271 {handshake.bb = 8 : ui32, handshake.name = "buffer136", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %273 = br %272 {handshake.bb = 8 : ui32, handshake.name = "br21"} : <>
    %274 = buffer %285#0 {handshake.bb = 9 : ui32, handshake.name = "buffer153", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %275 = mux %274 [%266, %321] {handshake.bb = 9 : ui32, handshake.name = "mux12"} : <i1>, <i32>
    %276 = buffer %275 {handshake.bb = 9 : ui32, handshake.name = "buffer142", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %277 = buffer %276 {handshake.bb = 9 : ui32, handshake.name = "buffer143", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %278:3 = fork [3] %277 {handshake.bb = 9 : ui32, handshake.name = "fork26"} : <i32>
    %279 = buffer %278#0 {handshake.bb = 9 : ui32, handshake.name = "buffer144", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %280 = trunci %279 {handshake.bb = 9 : ui32, handshake.name = "trunci3"} : <i32> to <i2>
    %281 = buffer %285#1 {handshake.bb = 9 : ui32, handshake.name = "buffer154", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %282 = mux %281 [%269, %324] {handshake.bb = 9 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %283 = buffer %285#2 {handshake.bb = 9 : ui32, handshake.name = "buffer155", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %284 = mux %283 [%270, %327] {handshake.bb = 9 : ui32, handshake.name = "mux14"} : <i1>, <i32>
    %result_54, %index_55 = control_merge %273, %330  {handshake.bb = 9 : ui32, handshake.name = "control_merge8"} : <>, <i1>
    %285:3 = fork [3] %index_55 {handshake.bb = 9 : ui32, handshake.name = "fork27"} : <i1>
    %286 = source {handshake.bb = 9 : ui32, handshake.name = "source11"} : <>
    %287 = constant %286 {handshake.bb = 9 : ui32, handshake.name = "constant27", value = 1 : i2} : <>, <i2>
    %288 = source {handshake.bb = 9 : ui32, handshake.name = "source12"} : <>
    %289 = constant %288 {handshake.bb = 9 : ui32, handshake.name = "constant28", value = false} : <>, <i1>
    %290:2 = fork [2] %289 {handshake.bb = 9 : ui32, handshake.name = "fork28"} : <i1>
    %291 = buffer %290#0 {handshake.bb = 9 : ui32, handshake.name = "buffer156", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %292 = extsi %291 {handshake.bb = 9 : ui32, handshake.name = "extsi20"} : <i1> to <i2>
    %293 = buffer %290#1 {handshake.bb = 9 : ui32, handshake.name = "buffer157", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %294 = extsi %293 {handshake.bb = 9 : ui32, handshake.name = "extsi14"} : <i1> to <i32>
    %295 = buffer %278#2 {handshake.bb = 9 : ui32, handshake.name = "buffer146", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %296 = cmpi sgt, %295, %294 {handshake.bb = 9 : ui32, handshake.name = "cmpi11"} : <i32>
    %297 = andi %280, %287 {handshake.bb = 9 : ui32, handshake.name = "andi6"} : <i2>
    %298 = cmpi eq, %297, %292 {handshake.bb = 9 : ui32, handshake.name = "cmpi12"} : <i2>
    %299 = andi %296, %298 {handshake.bb = 9 : ui32, handshake.name = "andi7"} : <i1>
    %300:4 = fork [4] %299 {handshake.bb = 9 : ui32, handshake.name = "fork29"} : <i1>
    %301 = buffer %278#1 {handshake.bb = 9 : ui32, handshake.name = "buffer145", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %302 = buffer %300#3 {handshake.bb = 9 : ui32, handshake.name = "buffer161", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_56, %falseResult_57 = cond_br %302, %301 {handshake.bb = 9 : ui32, handshake.name = "cond_br27"} : <i1>, <i32>
    %303 = buffer %282 {handshake.bb = 9 : ui32, handshake.name = "buffer147", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %304 = buffer %303 {handshake.bb = 9 : ui32, handshake.name = "buffer148", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %305 = buffer %300#2 {handshake.bb = 9 : ui32, handshake.name = "buffer160", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_58, %falseResult_59 = cond_br %305, %304 {handshake.bb = 9 : ui32, handshake.name = "cond_br28"} : <i1>, <i32>
    %306 = buffer %284 {handshake.bb = 9 : ui32, handshake.name = "buffer149", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %307 = buffer %306 {handshake.bb = 9 : ui32, handshake.name = "buffer150", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %308 = buffer %300#1 {handshake.bb = 9 : ui32, handshake.name = "buffer159", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_60, %falseResult_61 = cond_br %308, %307 {handshake.bb = 9 : ui32, handshake.name = "cond_br29"} : <i1>, <i32>
    %309 = buffer %result_54 {handshake.bb = 9 : ui32, handshake.name = "buffer151", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %310 = buffer %309 {handshake.bb = 9 : ui32, handshake.name = "buffer152", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %311 = buffer %300#0 {handshake.bb = 9 : ui32, handshake.name = "buffer158", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %trueResult_62, %falseResult_63 = cond_br %311, %310 {handshake.bb = 9 : ui32, handshake.name = "cond_br30"} : <i1>, <>
    %312 = merge %trueResult_56 {handshake.bb = 10 : ui32, handshake.name = "merge12"} : <i32>
    %313 = merge %trueResult_58 {handshake.bb = 10 : ui32, handshake.name = "merge13"} : <i32>
    %314 = merge %trueResult_60 {handshake.bb = 10 : ui32, handshake.name = "merge14"} : <i32>
    %result_64, %index_65 = control_merge %trueResult_62  {handshake.bb = 10 : ui32, handshake.name = "control_merge9"} : <>, <i1>
    sink %index_65 {handshake.name = "sink9"} : <i1>
    %315 = source {handshake.bb = 10 : ui32, handshake.name = "source13"} : <>
    %316 = constant %315 {handshake.bb = 10 : ui32, handshake.name = "constant29", value = 1 : i2} : <>, <i2>
    %317 = extsi %316 {handshake.bb = 10 : ui32, handshake.name = "extsi15"} : <i2> to <i32>
    %318 = buffer %312 {handshake.bb = 10 : ui32, handshake.name = "buffer162", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %319 = buffer %318 {handshake.bb = 10 : ui32, handshake.name = "buffer163", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %320 = shrsi %319, %317 {handshake.bb = 10 : ui32, handshake.name = "shrsi4"} : <i32>
    %321 = br %320 {handshake.bb = 10 : ui32, handshake.name = "br22"} : <i32>
    %322 = buffer %313 {handshake.bb = 10 : ui32, handshake.name = "buffer164", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %323 = buffer %322 {handshake.bb = 10 : ui32, handshake.name = "buffer165", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %324 = br %323 {handshake.bb = 10 : ui32, handshake.name = "br23"} : <i32>
    %325 = buffer %314 {handshake.bb = 10 : ui32, handshake.name = "buffer166", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %326 = buffer %325 {handshake.bb = 10 : ui32, handshake.name = "buffer167", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %327 = br %326 {handshake.bb = 10 : ui32, handshake.name = "br24"} : <i32>
    %328 = buffer %result_64 {handshake.bb = 10 : ui32, handshake.name = "buffer168", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %329 = buffer %328 {handshake.bb = 10 : ui32, handshake.name = "buffer169", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %330 = br %329 {handshake.bb = 10 : ui32, handshake.name = "br25"} : <>
    %331 = merge %falseResult_49 {handshake.bb = 11 : ui32, handshake.name = "merge15"} : <i32>
    %332 = merge %falseResult_45 {handshake.bb = 11 : ui32, handshake.name = "merge16"} : <i32>
    %result_66, %index_67 = control_merge %falseResult_51  {handshake.bb = 11 : ui32, handshake.name = "control_merge10"} : <>, <i1>
    sink %index_67 {handshake.name = "sink10"} : <i1>
    %333 = buffer %331 {handshake.bb = 11 : ui32, handshake.name = "buffer170", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %334 = buffer %333 {handshake.bb = 11 : ui32, handshake.name = "buffer171", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %335 = buffer %332 {handshake.bb = 11 : ui32, handshake.name = "buffer172", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %336 = buffer %335 {handshake.bb = 11 : ui32, handshake.name = "buffer173", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %337 = shli %336, %334 {handshake.bb = 11 : ui32, handshake.name = "shli0"} : <i32>
    %338 = br %337 {handshake.bb = 11 : ui32, handshake.name = "br26"} : <i32>
    %339 = buffer %result_66 {handshake.bb = 11 : ui32, handshake.name = "buffer174", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %340 = buffer %339 {handshake.bb = 11 : ui32, handshake.name = "buffer175", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %341 = br %340 {handshake.bb = 11 : ui32, handshake.name = "br27"} : <>
    %342 = mux %index_69 [%falseResult_7, %338] {handshake.bb = 12 : ui32, handshake.name = "mux15"} : <i1>, <i32>
    %result_68, %index_69 = control_merge %falseResult_5, %341  {handshake.bb = 12 : ui32, handshake.name = "control_merge11"} : <>, <i1>
    %343 = buffer %result_68 {handshake.name = "buffer178", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %344 = buffer %343 {handshake.name = "buffer179", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    sink %344 {handshake.name = "sink11"} : <>
    %345 = buffer %0#1 {handshake.bb = 12 : ui32, handshake.name = "buffer1", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %346 = buffer %342 {handshake.bb = 12 : ui32, handshake.name = "buffer176", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %347 = buffer %346 {handshake.bb = 12 : ui32, handshake.name = "buffer177", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    end {handshake.bb = 12 : ui32, handshake.name = "end0"} %347, %345 : <i32>, <>
  }
}


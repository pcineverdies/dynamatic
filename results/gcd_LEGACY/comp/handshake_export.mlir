module {
  handshake.func @gcd(%arg0: !handshake.channel<i32>, %arg1: !handshake.channel<i32>, %arg2: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>) attributes {argNames = ["a", "b", "start"], resNames = ["out0", "end"]} {
    %0:3 = fork [3] %arg2 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1:3 = fork [3] %arg1 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork1"} : <i32>
    %2:3 = fork [3] %arg0 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <i32>
    %4 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %5:3 = fork [3] %4 {handshake.bb = 0 : ui32, handshake.name = "fork3"} : <i1>
    %7 = extsi %5#1 {handshake.bb = 0 : ui32, handshake.name = "extsi0"} : <i1> to <i32>
    %9 = extsi %5#2 {handshake.bb = 0 : ui32, handshake.name = "extsi1"} : <i1> to <i32>
    %10:3 = fork [3] %9 {handshake.bb = 0 : ui32, handshake.name = "fork4"} : <i32>
    %13 = cmpi eq, %2#2, %10#0 {handshake.bb = 0 : ui32, handshake.name = "cmpi0"} : <i32>
    %16 = cmpi ne, %2#1, %10#1 {handshake.bb = 0 : ui32, handshake.name = "cmpi1"} : <i32>
    %18 = select %13[%1#2, %7] {handshake.bb = 0 : ui32, handshake.name = "select0"} : <i1>, <i32>
    %21 = cmpi ne, %1#1, %10#2 {handshake.bb = 0 : ui32, handshake.name = "cmpi2"} : <i32>
    %22 = andi %16, %21 {handshake.bb = 0 : ui32, handshake.name = "andi0"} : <i1>
    %23:5 = fork [5] %22 {handshake.bb = 0 : ui32, handshake.name = "fork5"} : <i1>
    %trueResult, %falseResult = cond_br %23#0, %5#0 {handshake.bb = 0 : ui32, handshake.name = "cond_br6"} : <i1>, <i1>
    sink %falseResult {handshake.name = "sink0"} : <i1>
    %26 = extsi %trueResult {handshake.bb = 0 : ui32, handshake.name = "extsi16"} : <i1> to <i32>
    %trueResult_0, %falseResult_1 = cond_br %23#4, %1#0 {handshake.bb = 0 : ui32, handshake.name = "cond_br7"} : <i1>, <i32>
    sink %falseResult_1 {handshake.name = "sink1"} : <i32>
    %trueResult_2, %falseResult_3 = cond_br %23#3, %2#0 {handshake.bb = 0 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    sink %falseResult_3 {handshake.name = "sink2"} : <i32>
    %trueResult_4, %falseResult_5 = cond_br %23#2, %0#2 {handshake.bb = 0 : ui32, handshake.name = "cond_br9"} : <i1>, <>
    %trueResult_6, %falseResult_7 = cond_br %23#1, %18 {handshake.bb = 0 : ui32, handshake.name = "cond_br10"} : <i1>, <i32>
    sink %trueResult_6 {handshake.name = "sink3"} : <i32>
    %35 = mux %46#0 [%26, %84] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %37 = mux %46#1 [%trueResult_0, %80] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %38 = buffer %37 {handshake.bb = 1 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %39 = buffer %38 {handshake.bb = 1 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %40:2 = fork [2] %39 {handshake.bb = 1 : ui32, handshake.name = "fork6"} : <i32>
    %42 = mux %46#2 [%trueResult_2, %76] {handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %43 = buffer %42 {handshake.bb = 1 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %44 = buffer %43 {handshake.bb = 1 : ui32, handshake.name = "buffer27", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %45:2 = fork [2] %44 {handshake.bb = 1 : ui32, handshake.name = "fork7"} : <i32>
    %result, %index = control_merge %trueResult_4, %86  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %46:3 = fork [3] %index {handshake.bb = 1 : ui32, handshake.name = "fork8"} : <i1>
    %47 = source {handshake.bb = 1 : ui32, handshake.name = "source0"} : <>
    %48 = constant %47 {handshake.bb = 1 : ui32, handshake.name = "constant16", value = 1 : i2} : <>, <i2>
    %49 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %50 = constant %49 {handshake.bb = 1 : ui32, handshake.name = "constant17", value = false} : <>, <i1>
    %51 = extsi %50 {handshake.bb = 1 : ui32, handshake.name = "extsi17"} : <i1> to <i2>
    %54 = ori %45#1, %40#1 {handshake.bb = 1 : ui32, handshake.name = "ori0"} : <i32>
    %55 = trunci %54 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i32> to <i2>
    %56 = andi %55, %48 {handshake.bb = 1 : ui32, handshake.name = "andi1"} : <i2>
    %57 = cmpi eq, %56, %51 {handshake.bb = 1 : ui32, handshake.name = "cmpi3"} : <i2>
    %58:4 = fork [4] %57 {handshake.bb = 1 : ui32, handshake.name = "fork9"} : <i1>
    %59 = buffer %35 {handshake.bb = 1 : ui32, handshake.name = "buffer20", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %60 = buffer %59 {handshake.bb = 1 : ui32, handshake.name = "buffer21", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_8, %falseResult_9 = cond_br %58#0, %60 {handshake.bb = 1 : ui32, handshake.name = "cond_br11"} : <i1>, <i32>
    %trueResult_10, %falseResult_11 = cond_br %58#1, %40#0 {handshake.bb = 1 : ui32, handshake.name = "cond_br12"} : <i1>, <i32>
    %trueResult_12, %falseResult_13 = cond_br %58#2, %45#0 {handshake.bb = 1 : ui32, handshake.name = "cond_br13"} : <i1>, <i32>
    %66 = buffer %result {handshake.bb = 1 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %67 = buffer %66 {handshake.bb = 1 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_14, %falseResult_15 = cond_br %58#3, %67 {handshake.bb = 1 : ui32, handshake.name = "cond_br14"} : <i1>, <>
    %69 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %70 = constant %69 {handshake.bb = 2 : ui32, handshake.name = "constant18", value = 1 : i2} : <>, <i2>
    %71 = extsi %70 {handshake.bb = 2 : ui32, handshake.name = "extsi4"} : <i2> to <i32>
    %72:3 = fork [3] %71 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i32>
    %73 = buffer %trueResult_12 {handshake.bb = 2 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %74 = buffer %73 {handshake.bb = 2 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %76 = shrsi %74, %72#0 {handshake.bb = 2 : ui32, handshake.name = "shrsi0"} : <i32>
    %77 = buffer %trueResult_10 {handshake.bb = 2 : ui32, handshake.name = "buffer41", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %78 = buffer %77 {handshake.bb = 2 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %80 = shrsi %78, %72#1 {handshake.bb = 2 : ui32, handshake.name = "shrsi1"} : <i32>
    %81 = buffer %trueResult_8 {handshake.bb = 2 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %82 = buffer %81 {handshake.bb = 2 : ui32, handshake.name = "buffer40", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %84 = addi %82, %72#2 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %85 = buffer %trueResult_14 {handshake.bb = 2 : ui32, handshake.name = "buffer45", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %86 = buffer %85 {handshake.bb = 2 : ui32, handshake.name = "buffer46", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %88 = mux %98#0 [%falseResult_13, %130] {handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %89 = buffer %88 {handshake.bb = 3 : ui32, handshake.name = "buffer50", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %90 = buffer %89 {handshake.bb = 3 : ui32, handshake.name = "buffer51", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %91:3 = fork [3] %90 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i32>
    %93 = trunci %91#0 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i32> to <i2>
    %95 = mux %98#1 [%falseResult_9, %132] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %97 = mux %98#2 [%falseResult_11, %134] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %result_16, %index_17 = control_merge %falseResult_15, %136  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %98:3 = fork [3] %index_17 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i1>
    %99 = source {handshake.bb = 3 : ui32, handshake.name = "source3"} : <>
    %100 = constant %99 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 1 : i2} : <>, <i2>
    %101 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %102 = constant %101 {handshake.bb = 3 : ui32, handshake.name = "constant20", value = false} : <>, <i1>
    %103:2 = fork [2] %102 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i1>
    %105 = extsi %103#0 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i1> to <i2>
    %107 = extsi %103#1 {handshake.bb = 3 : ui32, handshake.name = "extsi6"} : <i1> to <i32>
    %109 = cmpi sgt, %91#2, %107 {handshake.bb = 3 : ui32, handshake.name = "cmpi4"} : <i32>
    %110 = andi %93, %100 {handshake.bb = 3 : ui32, handshake.name = "andi2"} : <i2>
    %111 = cmpi eq, %110, %105 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i2>
    %112 = andi %109, %111 {handshake.bb = 3 : ui32, handshake.name = "andi3"} : <i1>
    %113:4 = fork [4] %112 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i1>
    %trueResult_18, %falseResult_19 = cond_br %113#3, %91#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br15"} : <i1>, <i32>
    %116 = buffer %95 {handshake.bb = 3 : ui32, handshake.name = "buffer55", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %117 = buffer %116 {handshake.bb = 3 : ui32, handshake.name = "buffer56", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_20, %falseResult_21 = cond_br %113#2, %117 {handshake.bb = 3 : ui32, handshake.name = "cond_br16"} : <i1>, <i32>
    %119 = buffer %97 {handshake.bb = 3 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %120 = buffer %119 {handshake.bb = 3 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_22, %falseResult_23 = cond_br %113#1, %120 {handshake.bb = 3 : ui32, handshake.name = "cond_br17"} : <i1>, <i32>
    %122 = buffer %result_16 {handshake.bb = 3 : ui32, handshake.name = "buffer59", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %123 = buffer %122 {handshake.bb = 3 : ui32, handshake.name = "buffer60", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_24, %falseResult_25 = cond_br %113#0, %123 {handshake.bb = 3 : ui32, handshake.name = "cond_br18"} : <i1>, <>
    %125 = source {handshake.bb = 4 : ui32, handshake.name = "source5"} : <>
    %126 = constant %125 {handshake.bb = 4 : ui32, handshake.name = "constant21", value = 1 : i2} : <>, <i2>
    %127 = extsi %126 {handshake.bb = 4 : ui32, handshake.name = "extsi7"} : <i2> to <i32>
    %128 = buffer %trueResult_18 {handshake.bb = 4 : ui32, handshake.name = "buffer70", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %129 = buffer %128 {handshake.bb = 4 : ui32, handshake.name = "buffer71", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %130 = shrsi %129, %127 {handshake.bb = 4 : ui32, handshake.name = "shrsi2"} : <i32>
    %131 = buffer %trueResult_20 {handshake.bb = 4 : ui32, handshake.name = "buffer72", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %132 = buffer %131 {handshake.bb = 4 : ui32, handshake.name = "buffer73", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %133 = buffer %trueResult_22 {handshake.bb = 4 : ui32, handshake.name = "buffer74", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %134 = buffer %133 {handshake.bb = 4 : ui32, handshake.name = "buffer75", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %135 = buffer %trueResult_24 {handshake.bb = 4 : ui32, handshake.name = "buffer76", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %136 = buffer %135 {handshake.bb = 4 : ui32, handshake.name = "buffer77", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %138 = mux %148#0 [%falseResult_23, %180] {handshake.bb = 5 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %139 = buffer %138 {handshake.bb = 5 : ui32, handshake.name = "buffer78", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %140 = buffer %139 {handshake.bb = 5 : ui32, handshake.name = "buffer79", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %141:3 = fork [3] %140 {handshake.bb = 5 : ui32, handshake.name = "fork15"} : <i32>
    %143 = trunci %141#0 {handshake.bb = 5 : ui32, handshake.name = "trunci2"} : <i32> to <i2>
    %145 = mux %148#1 [%falseResult_21, %182] {handshake.bb = 5 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %147 = mux %148#2 [%falseResult_19, %184] {handshake.bb = 5 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %result_26, %index_27 = control_merge %falseResult_25, %186  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %148:3 = fork [3] %index_27 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <i1>
    %149 = source {handshake.bb = 5 : ui32, handshake.name = "source6"} : <>
    %150 = constant %149 {handshake.bb = 5 : ui32, handshake.name = "constant22", value = 1 : i2} : <>, <i2>
    %151 = source {handshake.bb = 5 : ui32, handshake.name = "source7"} : <>
    %152 = constant %151 {handshake.bb = 5 : ui32, handshake.name = "constant23", value = false} : <>, <i1>
    %153:2 = fork [2] %152 {handshake.bb = 5 : ui32, handshake.name = "fork17"} : <i1>
    %155 = extsi %153#0 {handshake.bb = 5 : ui32, handshake.name = "extsi19"} : <i1> to <i2>
    %157 = extsi %153#1 {handshake.bb = 5 : ui32, handshake.name = "extsi9"} : <i1> to <i32>
    %159 = cmpi sgt, %141#2, %157 {handshake.bb = 5 : ui32, handshake.name = "cmpi6"} : <i32>
    %160 = andi %143, %150 {handshake.bb = 5 : ui32, handshake.name = "andi4"} : <i2>
    %161 = cmpi eq, %160, %155 {handshake.bb = 5 : ui32, handshake.name = "cmpi7"} : <i2>
    %162 = andi %159, %161 {handshake.bb = 5 : ui32, handshake.name = "andi5"} : <i1>
    %163:4 = fork [4] %162 {handshake.bb = 5 : ui32, handshake.name = "fork18"} : <i1>
    %trueResult_28, %falseResult_29 = cond_br %163#3, %141#1 {handshake.bb = 5 : ui32, handshake.name = "cond_br19"} : <i1>, <i32>
    %166 = buffer %145 {handshake.bb = 5 : ui32, handshake.name = "buffer83", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %167 = buffer %166 {handshake.bb = 5 : ui32, handshake.name = "buffer84", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_30, %falseResult_31 = cond_br %163#2, %167 {handshake.bb = 5 : ui32, handshake.name = "cond_br20"} : <i1>, <i32>
    %169 = buffer %147 {handshake.bb = 5 : ui32, handshake.name = "buffer85", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %170 = buffer %169 {handshake.bb = 5 : ui32, handshake.name = "buffer86", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_32, %falseResult_33 = cond_br %163#1, %170 {handshake.bb = 5 : ui32, handshake.name = "cond_br21"} : <i1>, <i32>
    %172 = buffer %result_26 {handshake.bb = 5 : ui32, handshake.name = "buffer87", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %173 = buffer %172 {handshake.bb = 5 : ui32, handshake.name = "buffer88", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_34, %falseResult_35 = cond_br %163#0, %173 {handshake.bb = 5 : ui32, handshake.name = "cond_br22"} : <i1>, <>
    %175 = source {handshake.bb = 6 : ui32, handshake.name = "source8"} : <>
    %176 = constant %175 {handshake.bb = 6 : ui32, handshake.name = "constant24", value = 1 : i2} : <>, <i2>
    %177 = extsi %176 {handshake.bb = 6 : ui32, handshake.name = "extsi10"} : <i2> to <i32>
    %178 = buffer %trueResult_28 {handshake.bb = 6 : ui32, handshake.name = "buffer98", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %179 = buffer %178 {handshake.bb = 6 : ui32, handshake.name = "buffer99", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %180 = shrsi %179, %177 {handshake.bb = 6 : ui32, handshake.name = "shrsi3"} : <i32>
    %181 = buffer %trueResult_30 {handshake.bb = 6 : ui32, handshake.name = "buffer100", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %182 = buffer %181 {handshake.bb = 6 : ui32, handshake.name = "buffer101", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %183 = buffer %trueResult_32 {handshake.bb = 6 : ui32, handshake.name = "buffer102", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %184 = buffer %183 {handshake.bb = 6 : ui32, handshake.name = "buffer103", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %185 = buffer %trueResult_34 {handshake.bb = 6 : ui32, handshake.name = "buffer104", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %186 = buffer %185 {handshake.bb = 6 : ui32, handshake.name = "buffer105", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %188 = mux %196#0 [%falseResult_29, %falseResult_53] {handshake.bb = 7 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %190 = mux %196#1 [%falseResult_33, %falseResult_49] {handshake.bb = 7 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %191 = buffer %190 {handshake.bb = 7 : ui32, handshake.name = "buffer108", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %192 = buffer %191 {handshake.bb = 7 : ui32, handshake.name = "buffer109", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %193:2 = fork [2] %192 {handshake.bb = 7 : ui32, handshake.name = "fork19"} : <i32>
    %195 = mux %196#2 [%falseResult_31, %falseResult_51] {handshake.bb = 7 : ui32, handshake.name = "mux11"} : <i1>, <i32>
    %result_36, %index_37 = control_merge %falseResult_35, %falseResult_55  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %196:3 = fork [3] %index_37 {handshake.bb = 7 : ui32, handshake.name = "fork20"} : <i1>
    %197 = source {handshake.bb = 7 : ui32, handshake.name = "source9"} : <>
    %198 = constant %197 {handshake.bb = 7 : ui32, handshake.name = "constant25", value = false} : <>, <i1>
    %199 = extsi %198 {handshake.bb = 7 : ui32, handshake.name = "extsi11"} : <i1> to <i32>
    %201 = cmpi ne, %193#1, %199 {handshake.bb = 7 : ui32, handshake.name = "cmpi8"} : <i32>
    %202:4 = fork [4] %201 {handshake.bb = 7 : ui32, handshake.name = "fork21"} : <i1>
    %203 = buffer %188 {handshake.bb = 7 : ui32, handshake.name = "buffer106", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %204 = buffer %203 {handshake.bb = 7 : ui32, handshake.name = "buffer107", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_38, %falseResult_39 = cond_br %202#3, %204 {handshake.bb = 7 : ui32, handshake.name = "cond_br23"} : <i1>, <i32>
    %trueResult_40, %falseResult_41 = cond_br %202#2, %193#0 {handshake.bb = 7 : ui32, handshake.name = "cond_br24"} : <i1>, <i32>
    sink %falseResult_41 {handshake.name = "sink7"} : <i32>
    %208 = buffer %195 {handshake.bb = 7 : ui32, handshake.name = "buffer112", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %209 = buffer %208 {handshake.bb = 7 : ui32, handshake.name = "buffer113", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_42, %falseResult_43 = cond_br %202#1, %209 {handshake.bb = 7 : ui32, handshake.name = "cond_br25"} : <i1>, <i32>
    %211 = buffer %result_36 {handshake.bb = 7 : ui32, handshake.name = "buffer114", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %212 = buffer %211 {handshake.bb = 7 : ui32, handshake.name = "buffer115", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_44, %falseResult_45 = cond_br %202#0, %212 {handshake.bb = 7 : ui32, handshake.name = "cond_br26"} : <i1>, <>
    %214 = buffer %trueResult_38 {handshake.bb = 8 : ui32, handshake.name = "buffer123", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %215 = buffer %214 {handshake.bb = 8 : ui32, handshake.name = "buffer124", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %216:3 = fork [3] %215 {handshake.bb = 8 : ui32, handshake.name = "fork22"} : <i32>
    %217 = buffer %trueResult_40 {handshake.bb = 8 : ui32, handshake.name = "buffer128", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %218 = buffer %217 {handshake.bb = 8 : ui32, handshake.name = "buffer129", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %219:3 = fork [3] %218 {handshake.bb = 8 : ui32, handshake.name = "fork23"} : <i32>
    %220 = source {handshake.bb = 8 : ui32, handshake.name = "source10"} : <>
    %221 = constant %220 {handshake.bb = 8 : ui32, handshake.name = "constant26", value = false} : <>, <i1>
    %222 = extsi %221 {handshake.bb = 8 : ui32, handshake.name = "extsi12"} : <i1> to <i32>
    %223:2 = fork [2] %222 {handshake.bb = 8 : ui32, handshake.name = "fork24"} : <i32>
    %226 = subi %219#2, %216#2 {handshake.bb = 8 : ui32, handshake.name = "subi0"} : <i32>
    %227:3 = fork [3] %226 {handshake.bb = 8 : ui32, handshake.name = "fork25"} : <i32>
    %230 = cmpi slt, %219#1, %216#1 {handshake.bb = 8 : ui32, handshake.name = "cmpi9"} : <i32>
    %233 = select %230[%219#0, %216#0] {handshake.bb = 8 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %236 = cmpi sge, %227#2, %223#0 {handshake.bb = 8 : ui32, handshake.name = "cmpi10"} : <i32>
    %239 = subi %223#1, %227#1 {handshake.bb = 8 : ui32, handshake.name = "subi2"} : <i32>
    %241 = select %236[%227#0, %239] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %242 = buffer %trueResult_42 {handshake.bb = 8 : ui32, handshake.name = "buffer133", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %243 = buffer %242 {handshake.bb = 8 : ui32, handshake.name = "buffer134", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %244 = buffer %trueResult_44 {handshake.bb = 8 : ui32, handshake.name = "buffer135", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %245 = buffer %244 {handshake.bb = 8 : ui32, handshake.name = "buffer136", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %247 = mux %257#0 [%241, %289] {handshake.bb = 9 : ui32, handshake.name = "mux12"} : <i1>, <i32>
    %248 = buffer %247 {handshake.bb = 9 : ui32, handshake.name = "buffer142", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %249 = buffer %248 {handshake.bb = 9 : ui32, handshake.name = "buffer143", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %250:3 = fork [3] %249 {handshake.bb = 9 : ui32, handshake.name = "fork26"} : <i32>
    %252 = trunci %250#0 {handshake.bb = 9 : ui32, handshake.name = "trunci3"} : <i32> to <i2>
    %254 = mux %257#1 [%243, %291] {handshake.bb = 9 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %256 = mux %257#2 [%233, %293] {handshake.bb = 9 : ui32, handshake.name = "mux14"} : <i1>, <i32>
    %result_46, %index_47 = control_merge %245, %295  {handshake.bb = 9 : ui32, handshake.name = "control_merge8"} : <>, <i1>
    %257:3 = fork [3] %index_47 {handshake.bb = 9 : ui32, handshake.name = "fork27"} : <i1>
    %258 = source {handshake.bb = 9 : ui32, handshake.name = "source11"} : <>
    %259 = constant %258 {handshake.bb = 9 : ui32, handshake.name = "constant27", value = 1 : i2} : <>, <i2>
    %260 = source {handshake.bb = 9 : ui32, handshake.name = "source12"} : <>
    %261 = constant %260 {handshake.bb = 9 : ui32, handshake.name = "constant28", value = false} : <>, <i1>
    %262:2 = fork [2] %261 {handshake.bb = 9 : ui32, handshake.name = "fork28"} : <i1>
    %264 = extsi %262#0 {handshake.bb = 9 : ui32, handshake.name = "extsi20"} : <i1> to <i2>
    %266 = extsi %262#1 {handshake.bb = 9 : ui32, handshake.name = "extsi14"} : <i1> to <i32>
    %268 = cmpi sgt, %250#2, %266 {handshake.bb = 9 : ui32, handshake.name = "cmpi11"} : <i32>
    %269 = andi %252, %259 {handshake.bb = 9 : ui32, handshake.name = "andi6"} : <i2>
    %270 = cmpi eq, %269, %264 {handshake.bb = 9 : ui32, handshake.name = "cmpi12"} : <i2>
    %271 = andi %268, %270 {handshake.bb = 9 : ui32, handshake.name = "andi7"} : <i1>
    %272:4 = fork [4] %271 {handshake.bb = 9 : ui32, handshake.name = "fork29"} : <i1>
    %trueResult_48, %falseResult_49 = cond_br %272#3, %250#1 {handshake.bb = 9 : ui32, handshake.name = "cond_br27"} : <i1>, <i32>
    %275 = buffer %254 {handshake.bb = 9 : ui32, handshake.name = "buffer147", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %276 = buffer %275 {handshake.bb = 9 : ui32, handshake.name = "buffer148", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_50, %falseResult_51 = cond_br %272#2, %276 {handshake.bb = 9 : ui32, handshake.name = "cond_br28"} : <i1>, <i32>
    %278 = buffer %256 {handshake.bb = 9 : ui32, handshake.name = "buffer149", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %279 = buffer %278 {handshake.bb = 9 : ui32, handshake.name = "buffer150", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_52, %falseResult_53 = cond_br %272#1, %279 {handshake.bb = 9 : ui32, handshake.name = "cond_br29"} : <i1>, <i32>
    %281 = buffer %result_46 {handshake.bb = 9 : ui32, handshake.name = "buffer151", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %282 = buffer %281 {handshake.bb = 9 : ui32, handshake.name = "buffer152", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %trueResult_54, %falseResult_55 = cond_br %272#0, %282 {handshake.bb = 9 : ui32, handshake.name = "cond_br30"} : <i1>, <>
    %284 = source {handshake.bb = 10 : ui32, handshake.name = "source13"} : <>
    %285 = constant %284 {handshake.bb = 10 : ui32, handshake.name = "constant29", value = 1 : i2} : <>, <i2>
    %286 = extsi %285 {handshake.bb = 10 : ui32, handshake.name = "extsi15"} : <i2> to <i32>
    %287 = buffer %trueResult_48 {handshake.bb = 10 : ui32, handshake.name = "buffer162", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %288 = buffer %287 {handshake.bb = 10 : ui32, handshake.name = "buffer163", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %289 = shrsi %288, %286 {handshake.bb = 10 : ui32, handshake.name = "shrsi4"} : <i32>
    %290 = buffer %trueResult_50 {handshake.bb = 10 : ui32, handshake.name = "buffer164", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %291 = buffer %290 {handshake.bb = 10 : ui32, handshake.name = "buffer165", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %292 = buffer %trueResult_52 {handshake.bb = 10 : ui32, handshake.name = "buffer166", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %293 = buffer %292 {handshake.bb = 10 : ui32, handshake.name = "buffer167", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %294 = buffer %trueResult_54 {handshake.bb = 10 : ui32, handshake.name = "buffer168", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %295 = buffer %294 {handshake.bb = 10 : ui32, handshake.name = "buffer169", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %296 = buffer %falseResult_43 {handshake.bb = 11 : ui32, handshake.name = "buffer170", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %297 = buffer %296 {handshake.bb = 11 : ui32, handshake.name = "buffer171", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %298 = buffer %falseResult_39 {handshake.bb = 11 : ui32, handshake.name = "buffer172", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %299 = buffer %298 {handshake.bb = 11 : ui32, handshake.name = "buffer173", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %300 = shli %299, %297 {handshake.bb = 11 : ui32, handshake.name = "shli0"} : <i32>
    %301 = buffer %falseResult_45 {handshake.bb = 11 : ui32, handshake.name = "buffer174", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %302 = buffer %301 {handshake.bb = 11 : ui32, handshake.name = "buffer175", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %303 = mux %index_57 [%falseResult_7, %300] {handshake.bb = 12 : ui32, handshake.name = "mux15"} : <i1>, <i32>
    %result_56, %index_57 = control_merge %falseResult_5, %302  {handshake.bb = 12 : ui32, handshake.name = "control_merge11"} : <>, <i1>
    %304 = buffer %result_56 {handshake.name = "buffer178", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %305 = buffer %304 {handshake.name = "buffer179", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    sink %305 {handshake.name = "sink11"} : <>
    %307 = buffer %303 {handshake.bb = 12 : ui32, handshake.name = "buffer176", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %308 = buffer %307 {handshake.bb = 12 : ui32, handshake.name = "buffer177", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    end {handshake.bb = 12 : ui32, handshake.name = "end0"} %308, %0#1 : <i32>, <>
  }
}


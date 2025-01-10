module {
  handshake.func @gcd(%arg0: !handshake.channel<i32>, %arg1: !handshake.channel<i32>, %arg2: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>) attributes {argNames = ["a", "b", "start"], cfg.edges = "[0,1,12,andi0][7,8,11,cmpi8][2,1][9,10,7,andi7][4,3][11,12][6,5][1,2,3,cmpi3][8,9][3,4,5,andi3][10,9][5,6,7,andi5]", resNames = ["out0", "end"]} {
    %0:7 = fork [7] %arg2 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1:3 = fork [3] %arg1 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork1"} : <i32>
    %2:3 = fork [3] %arg0 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <i32>
    %5 = cmpi eq, %2#2, %26#0 {handshake.bb = 0 : ui32, handshake.name = "cmpi0"} : <i32>
    %8 = cmpi ne, %2#1, %26#1 {handshake.bb = 0 : ui32, handshake.name = "cmpi1"} : <i32>
    %10 = select %5[%1#2, %23] {handshake.bb = 0 : ui32, handshake.name = "select0"} : <i1>, <i32>
    %13 = cmpi ne, %1#1, %26#2 {handshake.bb = 0 : ui32, handshake.name = "cmpi2"} : <i32>
    %14 = andi %8, %13 {handshake.bb = 0 : ui32, handshake.name = "andi0"} : <i1>
    %15:4 = fork [4] %14 {handshake.bb = 0 : ui32, handshake.name = "fork3"} : <i1>
    %trueResult, %falseResult = cond_br %15#0, %21#0 {handshake.bb = 1 : ui32, handshake.name = "cond_br96"} : <i1>, <i1>
    sink %falseResult {handshake.name = "sink0"} : <i1>
    %18 = extsi %trueResult {handshake.bb = 1 : ui32, handshake.name = "extsi16"} : <i1> to <i32>
    %20 = constant %0#6 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %21:4 = fork [4] %20 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i1>
    %23 = extsi %21#1 {handshake.bb = 1 : ui32, handshake.name = "extsi0"} : <i1> to <i32>
    %25 = extsi %21#2 {handshake.bb = 1 : ui32, handshake.name = "extsi1"} : <i1> to <i32>
    %26:3 = fork [3] %25 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i32>
    %29 = merge %21#3, %64#0 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %30 = buffer %29 {handshake.bb = 1 : ui32, handshake.name = "buffer24", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %31:4 = fork [4] %30 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork6"} : <i1>
    %35 = mux %31#3 [%175#1, %74#1] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %36 = buffer %35 {handshake.bb = 1 : ui32, handshake.name = "buffer29", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %37 = buffer %36 {handshake.bb = 1 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %38:3 = fork [3] %37 {handshake.bb = 1 : ui32, handshake.name = "fork7"} : <>
    %41 = mux %31#2 [%2#0, %80] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %42 = buffer %41 {handshake.bb = 1 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %43 = buffer %42 {handshake.bb = 1 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %44:2 = fork [2] %43 {handshake.bb = 1 : ui32, handshake.name = "fork8"} : <i32>
    %47 = mux %31#1 [%1#0, %82] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %48 = buffer %47 {handshake.bb = 1 : ui32, handshake.name = "buffer38", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %49 = buffer %48 {handshake.bb = 1 : ui32, handshake.name = "buffer39", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %50:2 = fork [2] %49 {handshake.bb = 1 : ui32, handshake.name = "fork9"} : <i32>
    %52 = mux %31#0 [%18, %84] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %54 = constant %38#1 {handshake.bb = 1 : ui32, handshake.name = "constant16", value = 1 : i2} : <>, <i2>
    %56 = constant %38#0 {handshake.bb = 1 : ui32, handshake.name = "constant17", value = false} : <>, <i1>
    %57 = extsi %56 {handshake.bb = 1 : ui32, handshake.name = "extsi17"} : <i1> to <i2>
    %60 = ori %44#1, %50#1 {handshake.bb = 1 : ui32, handshake.name = "ori0"} : <i32>
    %61 = trunci %60 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i32> to <i2>
    %62 = andi %61, %54 {handshake.bb = 1 : ui32, handshake.name = "andi1"} : <i2>
    %63 = cmpi eq, %62, %57 {handshake.bb = 1 : ui32, handshake.name = "cmpi3"} : <i2>
    %64:5 = fork [5] %63 {handshake.bb = 1 : ui32, handshake.name = "fork10"} : <i1>
    %65 = buffer %52 {handshake.bb = 2 : ui32, handshake.name = "buffer42", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %66 = buffer %65 {handshake.bb = 2 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_0, %falseResult_1 = cond_br %64#1, %66 {handshake.bb = 2 : ui32, handshake.name = "cond_br97"} : <i1>, <i32>
    %trueResult_2, %falseResult_3 = cond_br %64#2, %50#0 {handshake.bb = 2 : ui32, handshake.name = "cond_br98"} : <i1>, <i32>
    %trueResult_4, %falseResult_5 = cond_br %64#3, %44#0 {handshake.bb = 2 : ui32, handshake.name = "cond_br99"} : <i1>, <i32>
    %trueResult_6, %falseResult_7 = cond_br %64#4, %38#2 {handshake.bb = 2 : ui32, handshake.name = "cond_br100"} : <i1>, <>
    sink %falseResult_7 {handshake.name = "sink1"} : <>
    %74:2 = fork [2] %trueResult_6 {handshake.bb = 2 : ui32, handshake.name = "fork11"} : <>
    %76 = constant %74#0 {handshake.bb = 2 : ui32, handshake.name = "constant18", value = 1 : i2} : <>, <i2>
    %77 = extsi %76 {handshake.bb = 2 : ui32, handshake.name = "extsi4"} : <i2> to <i32>
    %78:3 = fork [3] %77 {handshake.bb = 2 : ui32, handshake.name = "fork12"} : <i32>
    %80 = shrsi %trueResult_4, %78#0 {handshake.bb = 2 : ui32, handshake.name = "shrsi0"} : <i32>
    %82 = shrsi %trueResult_2, %78#1 {handshake.bb = 2 : ui32, handshake.name = "shrsi1"} : <i32>
    %84 = addi %trueResult_0, %78#2 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %86 = constant %0#5 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant24", value = false} : <>, <i1>
    %88 = merge %86, %119#2 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge6"} : <i1>
    %89 = buffer %88 {handshake.bb = 3 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %90:2 = fork [2] %89 {handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork13"} : <i1>
    %94 = mux %90#1 [%175#2, %124#1] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <>
    %95 = buffer %94 {handshake.bb = 3 : ui32, handshake.name = "buffer57", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %96 = buffer %95 {handshake.bb = 3 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %97:3 = fork [3] %96 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <>
    %99 = mux %90#0 [%falseResult_5, %128] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %100 = buffer %99 {handshake.bb = 3 : ui32, handshake.name = "buffer62", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %101 = buffer %100 {handshake.bb = 3 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %102:3 = fork [3] %101 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <i32>
    %104 = trunci %102#0 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i32> to <i2>
    %106 = constant %97#1 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 1 : i2} : <>, <i2>
    %108 = constant %97#0 {handshake.bb = 3 : ui32, handshake.name = "constant20", value = false} : <>, <i1>
    %109:2 = fork [2] %108 {handshake.bb = 3 : ui32, handshake.name = "fork16"} : <i1>
    %111 = extsi %109#0 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i1> to <i2>
    %113 = extsi %109#1 {handshake.bb = 3 : ui32, handshake.name = "extsi6"} : <i1> to <i32>
    %115 = cmpi sgt, %102#2, %113 {handshake.bb = 3 : ui32, handshake.name = "cmpi4"} : <i32>
    %116 = andi %104, %106 {handshake.bb = 3 : ui32, handshake.name = "andi2"} : <i2>
    %117 = cmpi eq, %116, %111 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i2>
    %118 = andi %115, %117 {handshake.bb = 3 : ui32, handshake.name = "andi3"} : <i1>
    %119:3 = fork [3] %118 {handshake.bb = 3 : ui32, handshake.name = "fork17"} : <i1>
    %trueResult_8, %falseResult_9 = cond_br %119#1, %102#1 {handshake.bb = 4 : ui32, handshake.name = "cond_br101"} : <i1>, <i32>
    %trueResult_10, %falseResult_11 = cond_br %119#0, %97#2 {handshake.bb = 4 : ui32, handshake.name = "cond_br102"} : <i1>, <>
    sink %falseResult_11 {handshake.name = "sink2"} : <>
    %124:2 = fork [2] %trueResult_10 {handshake.bb = 4 : ui32, handshake.name = "fork18"} : <>
    %126 = constant %124#0 {handshake.bb = 4 : ui32, handshake.name = "constant21", value = 1 : i2} : <>, <i2>
    %127 = extsi %126 {handshake.bb = 4 : ui32, handshake.name = "extsi7"} : <i2> to <i32>
    %128 = shrsi %trueResult_8, %127 {handshake.bb = 4 : ui32, handshake.name = "shrsi2"} : <i32>
    %130 = constant %0#4 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant29", value = false} : <>, <i1>
    %132 = merge %130, %163#2 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge10"} : <i1>
    %133 = buffer %132 {handshake.bb = 5 : ui32, handshake.name = "buffer74", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %134:2 = fork [2] %133 {handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork19"} : <i1>
    %138 = mux %134#1 [%175#3, %168#1] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux12"} : <i1>, <>
    %139 = buffer %138 {handshake.bb = 5 : ui32, handshake.name = "buffer77", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %140 = buffer %139 {handshake.bb = 5 : ui32, handshake.name = "buffer78", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %141:3 = fork [3] %140 {handshake.bb = 5 : ui32, handshake.name = "fork20"} : <>
    %143 = mux %134#0 [%falseResult_3, %172] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %144 = buffer %143 {handshake.bb = 5 : ui32, handshake.name = "buffer82", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %145 = buffer %144 {handshake.bb = 5 : ui32, handshake.name = "buffer83", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %146:3 = fork [3] %145 {handshake.bb = 5 : ui32, handshake.name = "fork21"} : <i32>
    %148 = trunci %146#0 {handshake.bb = 5 : ui32, handshake.name = "trunci2"} : <i32> to <i2>
    %150 = constant %141#1 {handshake.bb = 5 : ui32, handshake.name = "constant22", value = 1 : i2} : <>, <i2>
    %152 = constant %141#0 {handshake.bb = 5 : ui32, handshake.name = "constant23", value = false} : <>, <i1>
    %153:2 = fork [2] %152 {handshake.bb = 5 : ui32, handshake.name = "fork22"} : <i1>
    %155 = extsi %153#0 {handshake.bb = 5 : ui32, handshake.name = "extsi19"} : <i1> to <i2>
    %157 = extsi %153#1 {handshake.bb = 5 : ui32, handshake.name = "extsi9"} : <i1> to <i32>
    %159 = cmpi sgt, %146#2, %157 {handshake.bb = 5 : ui32, handshake.name = "cmpi6"} : <i32>
    %160 = andi %148, %150 {handshake.bb = 5 : ui32, handshake.name = "andi4"} : <i2>
    %161 = cmpi eq, %160, %155 {handshake.bb = 5 : ui32, handshake.name = "cmpi7"} : <i2>
    %162 = andi %159, %161 {handshake.bb = 5 : ui32, handshake.name = "andi5"} : <i1>
    %163:3 = fork [3] %162 {handshake.bb = 5 : ui32, handshake.name = "fork23"} : <i1>
    %trueResult_12, %falseResult_13 = cond_br %163#1, %146#1 {handshake.bb = 6 : ui32, handshake.name = "cond_br103"} : <i1>, <i32>
    %trueResult_14, %falseResult_15 = cond_br %163#0, %141#2 {handshake.bb = 6 : ui32, handshake.name = "cond_br104"} : <i1>, <>
    sink %falseResult_15 {handshake.name = "sink3"} : <>
    %168:2 = fork [2] %trueResult_14 {handshake.bb = 6 : ui32, handshake.name = "fork24"} : <>
    %170 = constant %168#0 {handshake.bb = 6 : ui32, handshake.name = "constant25", value = 1 : i2} : <>, <i2>
    %171 = extsi %170 {handshake.bb = 6 : ui32, handshake.name = "extsi10"} : <i2> to <i32>
    %172 = shrsi %trueResult_12, %171 {handshake.bb = 6 : ui32, handshake.name = "shrsi3"} : <i32>
    %trueResult_16, %falseResult_17 = cond_br %15#3, %0#3 {handshake.bb = 7 : ui32, handshake.name = "cond_br105"} : <i1>, <>
    sink %falseResult_17 {handshake.name = "sink4"} : <>
    %175:4 = fork [4] %trueResult_16 {handshake.bb = 7 : ui32, handshake.name = "fork25"} : <>
    %177 = constant %0#2 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "constant34", value = false} : <>, <i1>
    %179 = merge %177, %201#3 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "merge14"} : <i1>
    %180 = buffer %179 {handshake.bb = 7 : ui32, handshake.name = "buffer98", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %181:3 = fork [3] %180 {handshake.bb = 7 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork26"} : <i1>
    %185 = mux %181#2 [%175#0, %233#2] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux14"} : <i1>, <>
    %186 = buffer %185 {handshake.bb = 7 : ui32, handshake.name = "buffer102", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %187 = buffer %186 {handshake.bb = 7 : ui32, handshake.name = "buffer103", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %188:2 = fork [2] %187 {handshake.bb = 7 : ui32, handshake.name = "fork27"} : <>
    %190 = mux %181#1 [%falseResult_9, %falseResult_25] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux19"} : <i1>, <i32>
    %191 = buffer %190 {handshake.bb = 7 : ui32, handshake.name = "buffer106", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %192 = buffer %191 {handshake.bb = 7 : ui32, handshake.name = "buffer107", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %193:2 = fork [2] %192 {handshake.bb = 7 : ui32, handshake.name = "fork28"} : <i32>
    %195 = mux %181#0 [%falseResult_13, %222] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux20"} : <i1>, <i32>
    %197 = constant %188#0 {handshake.bb = 7 : ui32, handshake.name = "constant26", value = false} : <>, <i1>
    %198 = extsi %197 {handshake.bb = 7 : ui32, handshake.name = "extsi11"} : <i1> to <i32>
    %200 = cmpi ne, %193#1, %198 {handshake.bb = 7 : ui32, handshake.name = "cmpi8"} : <i32>
    %201:4 = fork [4] %200 {handshake.bb = 7 : ui32, handshake.name = "fork29"} : <i1>
    %trueResult_18, %falseResult_19 = cond_br %201#2, %193#0 {handshake.bb = 8 : ui32, handshake.name = "cond_br106"} : <i1>, <i32>
    sink %falseResult_19 {handshake.name = "sink5"} : <i32>
    %204:3 = fork [3] %trueResult_18 {handshake.bb = 8 : ui32, handshake.name = "fork30"} : <i32>
    %205 = buffer %195 {handshake.bb = 8 : ui32, handshake.name = "buffer110", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %206 = buffer %205 {handshake.bb = 8 : ui32, handshake.name = "buffer111", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_20, %falseResult_21 = cond_br %201#1, %206 {handshake.bb = 8 : ui32, handshake.name = "cond_br107"} : <i1>, <i32>
    %208:3 = fork [3] %trueResult_20 {handshake.bb = 8 : ui32, handshake.name = "fork31"} : <i32>
    %210 = constant %233#0 {handshake.bb = 8 : ui32, handshake.name = "constant27", value = false} : <>, <i1>
    %211 = extsi %210 {handshake.bb = 8 : ui32, handshake.name = "extsi12"} : <i1> to <i32>
    %212:2 = fork [2] %211 {handshake.bb = 8 : ui32, handshake.name = "fork32"} : <i32>
    %215 = subi %204#2, %208#2 {handshake.bb = 8 : ui32, handshake.name = "subi0"} : <i32>
    %216:3 = fork [3] %215 {handshake.bb = 8 : ui32, handshake.name = "fork33"} : <i32>
    %219 = cmpi slt, %204#1, %208#1 {handshake.bb = 8 : ui32, handshake.name = "cmpi9"} : <i32>
    %222 = select %219[%204#0, %208#0] {handshake.bb = 8 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %225 = cmpi sge, %216#2, %212#0 {handshake.bb = 8 : ui32, handshake.name = "cmpi10"} : <i32>
    %228 = subi %212#1, %216#1 {handshake.bb = 8 : ui32, handshake.name = "subi2"} : <i32>
    %230 = select %225[%216#0, %228] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %trueResult_22, %falseResult_23 = cond_br %201#0, %188#1 {handshake.bb = 9 : ui32, handshake.name = "cond_br108"} : <i1>, <>
    sink %falseResult_23 {handshake.name = "sink6"} : <>
    %233:3 = fork [3] %trueResult_22 {handshake.bb = 9 : ui32, handshake.name = "fork34"} : <>
    %235 = constant %0#1 {ftd.imerge, handshake.bb = 9 : ui32, handshake.name = "constant43", value = false} : <>, <i1>
    %237 = merge %235, %268#2 {ftd.imerge, handshake.bb = 9 : ui32, handshake.name = "merge21"} : <i1>
    %238 = buffer %237 {handshake.bb = 9 : ui32, handshake.name = "buffer130", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %239:2 = fork [2] %238 {handshake.bb = 9 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork35"} : <i1>
    %243 = mux %239#1 [%233#1, %273#1] {ftd.regen, handshake.bb = 9 : ui32, handshake.name = "mux21"} : <i1>, <>
    %244 = buffer %243 {handshake.bb = 9 : ui32, handshake.name = "buffer133", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <>
    %245 = buffer %244 {handshake.bb = 9 : ui32, handshake.name = "buffer134", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %246:3 = fork [3] %245 {handshake.bb = 9 : ui32, handshake.name = "fork36"} : <>
    %248 = mux %239#0 [%230, %277] {ftd.phi, handshake.bb = 9 : ui32, handshake.name = "mux24"} : <i1>, <i32>
    %249 = buffer %248 {handshake.bb = 9 : ui32, handshake.name = "buffer138", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %250 = buffer %249 {handshake.bb = 9 : ui32, handshake.name = "buffer139", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %251:3 = fork [3] %250 {handshake.bb = 9 : ui32, handshake.name = "fork37"} : <i32>
    %253 = trunci %251#0 {handshake.bb = 9 : ui32, handshake.name = "trunci3"} : <i32> to <i2>
    %255 = constant %246#1 {handshake.bb = 9 : ui32, handshake.name = "constant28", value = 1 : i2} : <>, <i2>
    %257 = constant %246#0 {handshake.bb = 9 : ui32, handshake.name = "constant30", value = false} : <>, <i1>
    %258:2 = fork [2] %257 {handshake.bb = 9 : ui32, handshake.name = "fork38"} : <i1>
    %260 = extsi %258#0 {handshake.bb = 9 : ui32, handshake.name = "extsi20"} : <i1> to <i2>
    %262 = extsi %258#1 {handshake.bb = 9 : ui32, handshake.name = "extsi14"} : <i1> to <i32>
    %264 = cmpi sgt, %251#2, %262 {handshake.bb = 9 : ui32, handshake.name = "cmpi11"} : <i32>
    %265 = andi %253, %255 {handshake.bb = 9 : ui32, handshake.name = "andi6"} : <i2>
    %266 = cmpi eq, %265, %260 {handshake.bb = 9 : ui32, handshake.name = "cmpi12"} : <i2>
    %267 = andi %264, %266 {handshake.bb = 9 : ui32, handshake.name = "andi7"} : <i1>
    %268:3 = fork [3] %267 {handshake.bb = 9 : ui32, handshake.name = "fork39"} : <i1>
    %trueResult_24, %falseResult_25 = cond_br %268#1, %251#1 {handshake.bb = 10 : ui32, handshake.name = "cond_br109"} : <i1>, <i32>
    %trueResult_26, %falseResult_27 = cond_br %268#0, %246#2 {handshake.bb = 10 : ui32, handshake.name = "cond_br110"} : <i1>, <>
    sink %falseResult_27 {handshake.name = "sink7"} : <>
    %273:2 = fork [2] %trueResult_26 {handshake.bb = 10 : ui32, handshake.name = "fork40"} : <>
    %275 = constant %273#0 {handshake.bb = 10 : ui32, handshake.name = "constant31", value = 1 : i2} : <>, <i2>
    %276 = extsi %275 {handshake.bb = 10 : ui32, handshake.name = "extsi15"} : <i2> to <i32>
    %277 = shrsi %trueResult_24, %276 {handshake.bb = 10 : ui32, handshake.name = "shrsi4"} : <i32>
    %278 = shli %falseResult_21, %falseResult_1 {handshake.bb = 11 : ui32, handshake.name = "shli0"} : <i32>
    %trueResult_28, %falseResult_29 = cond_br %15#2, %10 {handshake.bb = 12 : ui32, handshake.name = "cond_br95"} : <i1>, <i32>
    sink %trueResult_28 {handshake.name = "sink8"} : <i32>
    %281 = mux %15#1 [%falseResult_29, %278] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux25"} : <i1>, <i32>
    %282 = buffer %0#0 {handshake.bb = 12 : ui32, handshake.name = "buffer0", hw.parameters = {NUM_SLOTS = 5 : ui32, TIMING = #handshake<timing {R: 1}>}} : <>
    %283 = buffer %281 {handshake.bb = 12 : ui32, handshake.name = "buffer150", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %284 = buffer %283 {handshake.bb = 12 : ui32, handshake.name = "buffer151", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    end {handshake.bb = 12 : ui32, handshake.name = "end0"} %284, %282 : <i32>, <>
  }
}


module {
  handshake.func @gcd(%arg0: !handshake.channel<i32>, %arg1: !handshake.channel<i32>, %arg2: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>) attributes {argNames = ["a", "b", "start"], cfg.edges = "[0,1,12,andi0][7,8,11,cmpi8][2,1][9,10,7,andi7][4,3][11,12][6,5][1,2,3,cmpi3][8,9][3,4,5,andi3][10,9][5,6,7,andi5]", resNames = ["out0", "end"]} {
    %0:6 = fork [6] %arg2 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork0"} : <>
    %1:3 = fork [3] %arg1 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork1"} : <i32>
    %2:3 = fork [3] %arg0 {handshake.bb = 0 : ui32, handshake.bufProps = #handshake<bufProps{"0": [0,0], [0,0], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork2"} : <i32>
    %3 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %4 = constant %3 {handshake.bb = 0 : ui32, handshake.name = "constant16", value = false} : <>, <i1>
    %5:2 = fork [2] %4 {handshake.bb = 0 : ui32, handshake.name = "fork3"} : <i1>
    %7 = extsi %5#1 {handshake.bb = 0 : ui32, handshake.name = "extsi0"} : <i1> to <i32>
    %8:3 = fork [3] %7 {handshake.bb = 0 : ui32, handshake.name = "fork4"} : <i32>
    %11 = cmpi eq, %2#2, %8#0 {handshake.bb = 0 : ui32, handshake.name = "cmpi0"} : <i32>
    %14 = cmpi ne, %2#1, %8#1 {handshake.bb = 0 : ui32, handshake.name = "cmpi1"} : <i32>
    %16 = select %11[%1#2, %29] {handshake.bb = 0 : ui32, handshake.name = "select0"} : <i1>, <i32>
    %19 = cmpi ne, %1#1, %8#2 {handshake.bb = 0 : ui32, handshake.name = "cmpi2"} : <i32>
    %20 = andi %14, %19 {handshake.bb = 0 : ui32, handshake.name = "andi0"} : <i1>
    %21:3 = fork [3] %20 {handshake.bb = 0 : ui32, handshake.name = "fork5"} : <i1>
    %trueResult, %falseResult = cond_br %21#0, %5#0 {handshake.bb = 1 : ui32, handshake.name = "cond_br57"} : <i1>, <i1>
    sink %falseResult {handshake.name = "sink0"} : <i1>
    %24 = extsi %trueResult {handshake.bb = 1 : ui32, handshake.name = "extsi16"} : <i1> to <i32>
    %26 = constant %0#5 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %27:2 = fork [2] %26 {handshake.bb = 1 : ui32, handshake.name = "fork6"} : <i1>
    %29 = extsi %27#0 {handshake.bb = 1 : ui32, handshake.name = "extsi1"} : <i1> to <i32>
    %32 = mux %40#2 [%2#0, %73] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %33 = buffer %32 {handshake.bb = 1 : ui32, handshake.name = "buffer22", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %34 = buffer %33 {handshake.bb = 1 : ui32, handshake.name = "buffer23", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %35:2 = fork [2] %34 {handshake.bb = 1 : ui32, handshake.name = "fork7"} : <i32>
    %38 = merge %27#1, %60#0 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %39 = buffer %38 {handshake.bb = 1 : ui32, handshake.name = "buffer26", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %40:3 = fork [3] %39 {handshake.bb = 1 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork8"} : <i1>
    %43 = mux %40#1 [%1#0, %75] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %44 = buffer %43 {handshake.bb = 1 : ui32, handshake.name = "buffer30", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %45 = buffer %44 {handshake.bb = 1 : ui32, handshake.name = "buffer31", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %46:2 = fork [2] %45 {handshake.bb = 1 : ui32, handshake.name = "fork9"} : <i32>
    %48 = mux %40#0 [%24, %77] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %49 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %50 = constant %49 {handshake.bb = 1 : ui32, handshake.name = "constant17", value = 1 : i2} : <>, <i2>
    %51 = source {handshake.bb = 1 : ui32, handshake.name = "source2"} : <>
    %52 = constant %51 {handshake.bb = 1 : ui32, handshake.name = "constant18", value = false} : <>, <i1>
    %53 = extsi %52 {handshake.bb = 1 : ui32, handshake.name = "extsi17"} : <i1> to <i2>
    %56 = ori %35#1, %46#1 {handshake.bb = 1 : ui32, handshake.name = "ori0"} : <i32>
    %57 = trunci %56 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i32> to <i2>
    %58 = andi %57, %50 {handshake.bb = 1 : ui32, handshake.name = "andi1"} : <i2>
    %59 = cmpi eq, %58, %53 {handshake.bb = 1 : ui32, handshake.name = "cmpi3"} : <i2>
    %60:4 = fork [4] %59 {handshake.bb = 1 : ui32, handshake.name = "fork10"} : <i1>
    %61 = buffer %48 {handshake.bb = 2 : ui32, handshake.name = "buffer34", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %62 = buffer %61 {handshake.bb = 2 : ui32, handshake.name = "buffer35", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_0, %falseResult_1 = cond_br %60#1, %62 {handshake.bb = 2 : ui32, handshake.name = "cond_br58"} : <i1>, <i32>
    %trueResult_2, %falseResult_3 = cond_br %60#2, %46#0 {handshake.bb = 2 : ui32, handshake.name = "cond_br59"} : <i1>, <i32>
    %trueResult_4, %falseResult_5 = cond_br %60#3, %35#0 {handshake.bb = 2 : ui32, handshake.name = "cond_br60"} : <i1>, <i32>
    %68 = source {handshake.bb = 2 : ui32, handshake.name = "source6"} : <>
    %69 = constant %68 {handshake.bb = 2 : ui32, handshake.name = "constant19", value = 1 : i2} : <>, <i2>
    %70 = extsi %69 {handshake.bb = 2 : ui32, handshake.name = "extsi4"} : <i2> to <i32>
    %71:3 = fork [3] %70 {handshake.bb = 2 : ui32, handshake.name = "fork11"} : <i32>
    %73 = shrsi %trueResult_4, %71#0 {handshake.bb = 2 : ui32, handshake.name = "shrsi0"} : <i32>
    %75 = shrsi %trueResult_2, %71#1 {handshake.bb = 2 : ui32, handshake.name = "shrsi1"} : <i32>
    %77 = addi %trueResult_0, %71#2 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %79 = constant %0#4 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant21", value = false} : <>, <i1>
    %80 = buffer %88 {handshake.bb = 3 : ui32, handshake.name = "buffer48", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %81 = mux %80 [%falseResult_5, %109] {ftd.phi, handshake.bb = 3 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mux3"} : <i1>, <i32>
    %82 = buffer %81 {handshake.bb = 3 : ui32, handshake.name = "buffer43", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %83 = buffer %82 {handshake.bb = 3 : ui32, handshake.name = "buffer44", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %84:3 = fork [3] %83 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i32>
    %86 = trunci %84#0 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i32> to <i2>
    %88 = merge %79, %103#1 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge3"} : <i1>
    %89 = source {handshake.bb = 3 : ui32, handshake.name = "source7"} : <>
    %90 = constant %89 {handshake.bb = 3 : ui32, handshake.name = "constant20", value = 1 : i2} : <>, <i2>
    %91 = source {handshake.bb = 3 : ui32, handshake.name = "source8"} : <>
    %92 = constant %91 {handshake.bb = 3 : ui32, handshake.name = "constant22", value = false} : <>, <i1>
    %93:2 = fork [2] %92 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i1>
    %95 = extsi %93#0 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i1> to <i2>
    %97 = extsi %93#1 {handshake.bb = 3 : ui32, handshake.name = "extsi6"} : <i1> to <i32>
    %99 = cmpi sgt, %84#2, %97 {handshake.bb = 3 : ui32, handshake.name = "cmpi4"} : <i32>
    %100 = andi %86, %90 {handshake.bb = 3 : ui32, handshake.name = "andi2"} : <i2>
    %101 = cmpi eq, %100, %95 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i2>
    %102 = andi %99, %101 {handshake.bb = 3 : ui32, handshake.name = "andi3"} : <i1>
    %103:2 = fork [2] %102 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i1>
    %trueResult_6, %falseResult_7 = cond_br %103#0, %84#1 {handshake.bb = 4 : ui32, handshake.name = "cond_br61"} : <i1>, <i32>
    %106 = source {handshake.bb = 4 : ui32, handshake.name = "source10"} : <>
    %107 = constant %106 {handshake.bb = 4 : ui32, handshake.name = "constant24", value = 1 : i2} : <>, <i2>
    %108 = extsi %107 {handshake.bb = 4 : ui32, handshake.name = "extsi7"} : <i2> to <i32>
    %109 = shrsi %trueResult_6, %108 {handshake.bb = 4 : ui32, handshake.name = "shrsi2"} : <i32>
    %111 = constant %0#3 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant23", value = false} : <>, <i1>
    %112 = buffer %120 {handshake.bb = 5 : ui32, handshake.name = "buffer58", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %113 = mux %112 [%falseResult_3, %141] {ftd.phi, handshake.bb = 5 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mux4"} : <i1>, <i32>
    %114 = buffer %113 {handshake.bb = 5 : ui32, handshake.name = "buffer53", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %115 = buffer %114 {handshake.bb = 5 : ui32, handshake.name = "buffer54", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %116:3 = fork [3] %115 {handshake.bb = 5 : ui32, handshake.name = "fork15"} : <i32>
    %118 = trunci %116#0 {handshake.bb = 5 : ui32, handshake.name = "trunci2"} : <i32> to <i2>
    %120 = merge %111, %135#1 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge4"} : <i1>
    %121 = source {handshake.bb = 5 : ui32, handshake.name = "source11"} : <>
    %122 = constant %121 {handshake.bb = 5 : ui32, handshake.name = "constant26", value = 1 : i2} : <>, <i2>
    %123 = source {handshake.bb = 5 : ui32, handshake.name = "source12"} : <>
    %124 = constant %123 {handshake.bb = 5 : ui32, handshake.name = "constant27", value = false} : <>, <i1>
    %125:2 = fork [2] %124 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <i1>
    %127 = extsi %125#0 {handshake.bb = 5 : ui32, handshake.name = "extsi19"} : <i1> to <i2>
    %129 = extsi %125#1 {handshake.bb = 5 : ui32, handshake.name = "extsi9"} : <i1> to <i32>
    %131 = cmpi sgt, %116#2, %129 {handshake.bb = 5 : ui32, handshake.name = "cmpi6"} : <i32>
    %132 = andi %118, %122 {handshake.bb = 5 : ui32, handshake.name = "andi4"} : <i2>
    %133 = cmpi eq, %132, %127 {handshake.bb = 5 : ui32, handshake.name = "cmpi7"} : <i2>
    %134 = andi %131, %133 {handshake.bb = 5 : ui32, handshake.name = "andi5"} : <i1>
    %135:2 = fork [2] %134 {handshake.bb = 5 : ui32, handshake.name = "fork17"} : <i1>
    %trueResult_8, %falseResult_9 = cond_br %135#0, %116#1 {handshake.bb = 6 : ui32, handshake.name = "cond_br62"} : <i1>, <i32>
    %138 = source {handshake.bb = 6 : ui32, handshake.name = "source14"} : <>
    %139 = constant %138 {handshake.bb = 6 : ui32, handshake.name = "constant28", value = 1 : i2} : <>, <i2>
    %140 = extsi %139 {handshake.bb = 6 : ui32, handshake.name = "extsi10"} : <i2> to <i32>
    %141 = shrsi %trueResult_8, %140 {handshake.bb = 6 : ui32, handshake.name = "shrsi3"} : <i32>
    %143 = constant %0#2 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "constant25", value = false} : <>, <i1>
    %145 = mux %152#1 [%falseResult_7, %falseResult_15] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %146 = buffer %145 {handshake.bb = 7 : ui32, handshake.name = "buffer63", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %147 = buffer %146 {handshake.bb = 7 : ui32, handshake.name = "buffer64", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %148:2 = fork [2] %147 {handshake.bb = 7 : ui32, handshake.name = "fork18"} : <i32>
    %150 = merge %143, %160#2 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "merge5"} : <i1>
    %151 = buffer %150 {handshake.bb = 7 : ui32, handshake.name = "buffer67", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %152:2 = fork [2] %151 {handshake.bb = 7 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "fork19"} : <i1>
    %154 = mux %152#0 [%falseResult_9, %181] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %155 = source {handshake.bb = 7 : ui32, handshake.name = "source15"} : <>
    %156 = constant %155 {handshake.bb = 7 : ui32, handshake.name = "constant30", value = false} : <>, <i1>
    %157 = extsi %156 {handshake.bb = 7 : ui32, handshake.name = "extsi11"} : <i1> to <i32>
    %159 = cmpi ne, %148#1, %157 {handshake.bb = 7 : ui32, handshake.name = "cmpi8"} : <i32>
    %160:3 = fork [3] %159 {handshake.bb = 7 : ui32, handshake.name = "fork20"} : <i1>
    %trueResult_10, %falseResult_11 = cond_br %160#1, %148#0 {handshake.bb = 8 : ui32, handshake.name = "cond_br63"} : <i1>, <i32>
    sink %falseResult_11 {handshake.name = "sink1"} : <i32>
    %163:3 = fork [3] %trueResult_10 {handshake.bb = 8 : ui32, handshake.name = "fork21"} : <i32>
    %164 = buffer %154 {handshake.bb = 8 : ui32, handshake.name = "buffer70", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %165 = buffer %164 {handshake.bb = 8 : ui32, handshake.name = "buffer71", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %trueResult_12, %falseResult_13 = cond_br %160#0, %165 {handshake.bb = 8 : ui32, handshake.name = "cond_br64"} : <i1>, <i32>
    %167:3 = fork [3] %trueResult_12 {handshake.bb = 8 : ui32, handshake.name = "fork22"} : <i32>
    %168 = source {handshake.bb = 8 : ui32, handshake.name = "source18"} : <>
    %169 = constant %168 {handshake.bb = 8 : ui32, handshake.name = "constant31", value = false} : <>, <i1>
    %170 = extsi %169 {handshake.bb = 8 : ui32, handshake.name = "extsi12"} : <i1> to <i32>
    %171:2 = fork [2] %170 {handshake.bb = 8 : ui32, handshake.name = "fork23"} : <i32>
    %174 = subi %163#2, %167#2 {handshake.bb = 8 : ui32, handshake.name = "subi0"} : <i32>
    %175:3 = fork [3] %174 {handshake.bb = 8 : ui32, handshake.name = "fork24"} : <i32>
    %178 = cmpi slt, %163#1, %167#1 {handshake.bb = 8 : ui32, handshake.name = "cmpi9"} : <i32>
    %181 = select %178[%163#0, %167#0] {handshake.bb = 8 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %184 = cmpi sge, %175#2, %171#0 {handshake.bb = 8 : ui32, handshake.name = "cmpi10"} : <i32>
    %187 = subi %171#1, %175#1 {handshake.bb = 8 : ui32, handshake.name = "subi2"} : <i32>
    %189 = select %184[%175#0, %187] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %191 = constant %0#1 {ftd.imerge, handshake.bb = 9 : ui32, handshake.name = "constant29", value = false} : <>, <i1>
    %192 = buffer %200 {handshake.bb = 9 : ui32, handshake.name = "buffer91", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i1>
    %193 = mux %192 [%189, %221] {ftd.phi, handshake.bb = 9 : ui32, handshake.bufProps = #handshake<bufProps{"0": [1,inf], [0,inf], 0.000000e+00, 0.000000e+00, 0.000000e+00}>, handshake.name = "mux7"} : <i1>, <i32>
    %194 = buffer %193 {handshake.bb = 9 : ui32, handshake.name = "buffer86", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %195 = buffer %194 {handshake.bb = 9 : ui32, handshake.name = "buffer87", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    %196:3 = fork [3] %195 {handshake.bb = 9 : ui32, handshake.name = "fork25"} : <i32>
    %198 = trunci %196#0 {handshake.bb = 9 : ui32, handshake.name = "trunci3"} : <i32> to <i2>
    %200 = merge %191, %215#1 {ftd.imerge, handshake.bb = 9 : ui32, handshake.name = "merge7"} : <i1>
    %201 = source {handshake.bb = 9 : ui32, handshake.name = "source19"} : <>
    %202 = constant %201 {handshake.bb = 9 : ui32, handshake.name = "constant32", value = 1 : i2} : <>, <i2>
    %203 = source {handshake.bb = 9 : ui32, handshake.name = "source20"} : <>
    %204 = constant %203 {handshake.bb = 9 : ui32, handshake.name = "constant33", value = false} : <>, <i1>
    %205:2 = fork [2] %204 {handshake.bb = 9 : ui32, handshake.name = "fork26"} : <i1>
    %207 = extsi %205#0 {handshake.bb = 9 : ui32, handshake.name = "extsi20"} : <i1> to <i2>
    %209 = extsi %205#1 {handshake.bb = 9 : ui32, handshake.name = "extsi14"} : <i1> to <i32>
    %211 = cmpi sgt, %196#2, %209 {handshake.bb = 9 : ui32, handshake.name = "cmpi11"} : <i32>
    %212 = andi %198, %202 {handshake.bb = 9 : ui32, handshake.name = "andi6"} : <i2>
    %213 = cmpi eq, %212, %207 {handshake.bb = 9 : ui32, handshake.name = "cmpi12"} : <i2>
    %214 = andi %211, %213 {handshake.bb = 9 : ui32, handshake.name = "andi7"} : <i1>
    %215:2 = fork [2] %214 {handshake.bb = 9 : ui32, handshake.name = "fork27"} : <i1>
    %trueResult_14, %falseResult_15 = cond_br %215#0, %196#1 {handshake.bb = 10 : ui32, handshake.name = "cond_br65"} : <i1>, <i32>
    %218 = source {handshake.bb = 10 : ui32, handshake.name = "source22"} : <>
    %219 = constant %218 {handshake.bb = 10 : ui32, handshake.name = "constant34", value = 1 : i2} : <>, <i2>
    %220 = extsi %219 {handshake.bb = 10 : ui32, handshake.name = "extsi15"} : <i2> to <i32>
    %221 = shrsi %trueResult_14, %220 {handshake.bb = 10 : ui32, handshake.name = "shrsi4"} : <i32>
    %222 = shli %falseResult_13, %falseResult_1 {handshake.bb = 11 : ui32, handshake.name = "shli0"} : <i32>
    %trueResult_16, %falseResult_17 = cond_br %21#2, %16 {handshake.bb = 12 : ui32, handshake.name = "cond_br56"} : <i1>, <i32>
    sink %trueResult_16 {handshake.name = "sink2"} : <i32>
    %225 = mux %21#1 [%falseResult_17, %222] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %227 = buffer %225 {handshake.bb = 12 : ui32, handshake.name = "buffer96", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {D: 1, V: 1, R: 0}>}} : <i32>
    %228 = buffer %227 {handshake.bb = 12 : ui32, handshake.name = "buffer97", hw.parameters = {NUM_SLOTS = 1 : ui32, TIMING = #handshake<timing {R: 1}>}} : <i32>
    end {handshake.bb = 12 : ui32, handshake.name = "end0"} %228, %0#0 : <i32>, <>
  }
}


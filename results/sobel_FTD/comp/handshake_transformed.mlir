module {
  handshake.func @sobel(%arg0: memref<256xi32>, %arg1: memref<9xi32>, %arg2: memref<9xi32>, %arg3: memref<256xi32>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["in", "gX", "gY", "out", "in_start", "gX_start", "gY_start", "out_start", "start"], cfg.edges = "[0,1][7,9,8,cmpi4][2,3,12,cmpi3][9,11,10,cmpi6][4,5][11,12][6,4,7,cmpi9][13,1,14,cmpi11][1,2][8,9][3,4][10,11][5,5,6,cmpi8][12,2,13,cmpi10]", resNames = ["out0", "in_end", "gX_end", "gY_end", "out_end", "end"]} {
    %0:10 = fork [10] %arg8 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %memEnd = mem_controller[%arg3 : memref<256xi32>] %arg7 (%161, %addressResult_43, %dataResult_44) %0#3 {connectedBlocks = [12 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i32>, !handshake.channel<i8>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg2 : memref<9xi32>] %arg6 (%addressResult_17) %0#2 {connectedBlocks = [5 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg1 : memref<9xi32>] %arg5 (%addressResult_15) %0#1 {connectedBlocks = [5 : i32], handshake.name = "mem_controller6"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_3, %memEnd_4 = mem_controller[%arg0 : memref<256xi32>] %arg4 (%addressResult) %0#0 {connectedBlocks = [3 : i32], handshake.name = "mem_controller7"} :    (!handshake.channel<i8>) -> !handshake.channel<i32>
    %1 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %2 = constant %1 {handshake.bb = 0 : ui32, handshake.name = "constant5", value = false} : <>, <i1>
    %3:2 = fork [2] %2 {handshake.bb = 0 : ui32, handshake.name = "fork1"} : <i1>
    %4 = extsi %3#0 {handshake.bb = 0 : ui32, handshake.name = "extsi26"} : <i1> to <i5>
    %5 = extsi %3#1 {handshake.bb = 0 : ui32, handshake.name = "extsi2"} : <i1> to <i32>
    %6 = constant %0#9 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %7 = mux %9#1 [%5, %trueResult_45] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %8 = merge %6, %194#2 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %9:2 = fork [2] %8 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %10 = mux %9#0 [%4, %trueResult_47] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i5>
    %11:2 = fork [2] %10 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <i5>
    %12 = extsi %11#0 {handshake.bb = 1 : ui32, handshake.name = "extsi27"} : <i5> to <i6>
    %13 = source {handshake.bb = 1 : ui32, handshake.name = "source2"} : <>
    %14 = constant %13 {handshake.bb = 1 : ui32, handshake.name = "constant6", value = false} : <>, <i1>
    %15 = extsi %14 {handshake.bb = 1 : ui32, handshake.name = "extsi28"} : <i1> to <i5>
    %16 = constant %0#8 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %17 = merge %16, %183#3 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge2"} : <i1>
    %18:3 = fork [3] %17 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i1>
    %19 = mux %18#0 [%11#1, %trueResult_41] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i5>
    %20:2 = fork [2] %19 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i5>
    %21 = extsi %20#0 {handshake.bb = 2 : ui32, handshake.name = "extsi29"} : <i5> to <i6>
    %22 = mux %18#2 [%7, %trueResult_39] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %23 = mux %18#1 [%15, %trueResult_37] {handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <i5>
    %24:5 = fork [5] %23 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i5>
    %25 = extsi %24#0 {handshake.bb = 2 : ui32, handshake.name = "extsi30"} : <i5> to <i6>
    %26 = extsi %24#1 {handshake.bb = 2 : ui32, handshake.name = "extsi31"} : <i5> to <i6>
    %27 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %28 = constant %27 {handshake.bb = 2 : ui32, handshake.name = "constant8", value = 5 : i4} : <>, <i4>
    %29 = extsi %28 {handshake.bb = 2 : ui32, handshake.name = "extsi32"} : <i4> to <i5>
    %30 = source {handshake.bb = 2 : ui32, handshake.name = "source4"} : <>
    %31 = constant %30 {handshake.bb = 2 : ui32, handshake.name = "constant9", value = false} : <>, <i1>
    %32:3 = fork [3] %31 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <i1>
    %33 = extsi %32#0 {handshake.bb = 2 : ui32, handshake.name = "extsi33"} : <i1> to <i5>
    %34 = cmpi eq, %24#4, %33 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i5>
    %35:2 = fork [2] %34 {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i1>
    %36 = cmpi eq, %24#3, %29 {handshake.bb = 2 : ui32, handshake.name = "cmpi1"} : <i5>
    %37 = cmpi eq, %35#1, %32#1 {handshake.bb = 2 : ui32, handshake.name = "cmpi2"} : <i1>
    %38 = andi %37, %36 {handshake.bb = 2 : ui32, handshake.name = "andi0"} : <i1>
    %39 = ori %35#0, %38 {handshake.bb = 2 : ui32, handshake.name = "ori0"} : <i1>
    %40 = cmpi eq, %39, %32#2 {handshake.bb = 2 : ui32, handshake.name = "cmpi3"} : <i1>
    %41:3 = fork [3] %40 {handshake.bb = 2 : ui32, handshake.name = "fork9"} : <i1>
    %trueResult, %falseResult = cond_br %41#0, %24#2 {handshake.bb = 3 : ui32, handshake.name = "cond_br59"} : <i1>, <i5>
    sink %falseResult {handshake.name = "sink0"} : <i5>
    %42 = extsi %trueResult {handshake.bb = 3 : ui32, handshake.name = "extsi24"} : <i5> to <i8>
    %43 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %44 = constant %43 {handshake.bb = 3 : ui32, handshake.name = "constant13", value = -1 : i32} : <>, <i32>
    %45 = source {handshake.bb = 3 : ui32, handshake.name = "source6"} : <>
    %46 = constant %45 {handshake.bb = 3 : ui32, handshake.name = "constant34", value = false} : <>, <i1>
    %47 = extsi %46 {handshake.bb = 3 : ui32, handshake.name = "extsi6"} : <i1> to <i32>
    %48:2 = fork [2] %47 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i32>
    %addressResult, %dataResult = load[%42] %outputs_3 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i8>, <i32>
    %49 = constant %0#7 {ftd.imerge, handshake.bb = 4 : ui32, handshake.name = "constant7", value = false} : <>, <i1>
    %50 = merge %49, %122#1 {ftd.imerge, handshake.bb = 4 : ui32, handshake.name = "merge5"} : <i1>
    %51:4 = fork [4] %50 {handshake.bb = 4 : ui32, handshake.name = "fork11"} : <i1>
    %52 = mux %51#3 [%dataResult, %trueResult_25] {ftd.regen, handshake.bb = 4 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %53:2 = fork [2] %52 {handshake.bb = 4 : ui32, handshake.name = "fork12"} : <i32>
    %54 = mux %51#2 [%48#0, %trueResult_21] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %55 = mux %51#1 [%48#1, %trueResult_19] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %56 = mux %51#0 [%44, %111] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %57:2 = fork [2] %56 {handshake.bb = 4 : ui32, handshake.name = "fork13"} : <i32>
    %58 = source {handshake.bb = 4 : ui32, handshake.name = "source7"} : <>
    %59 = constant %58 {handshake.bb = 4 : ui32, handshake.name = "constant15", value = -1 : i32} : <>, <i32>
    %trueResult_5, %falseResult_6 = cond_br %108#1, %103 {handshake.bb = 5 : ui32, handshake.name = "cond_br60"} : <i1>, <i32>
    %trueResult_7, %falseResult_8 = cond_br %108#2, %97 {handshake.bb = 5 : ui32, handshake.name = "cond_br61"} : <i1>, <i32>
    %trueResult_9, %falseResult_10 = cond_br %108#0, %106 {handshake.bb = 5 : ui32, handshake.name = "cond_br62"} : <i1>, <i2>
    sink %falseResult_10 {handshake.name = "sink1"} : <i2>
    %60 = extsi %trueResult_9 {handshake.bb = 5 : ui32, handshake.name = "extsi34"} : <i2> to <i32>
    %trueResult_11, %falseResult_12 = cond_br %108#3, %67#4 {handshake.bb = 5 : ui32, handshake.name = "cond_br63"} : <i1>, <i32>
    sink %falseResult_12 {handshake.name = "sink2"} : <i32>
    %trueResult_13, %falseResult_14 = cond_br %108#4, %65#2 {handshake.bb = 5 : ui32, handshake.name = "cond_br64"} : <i1>, <i32>
    sink %falseResult_14 {handshake.name = "sink3"} : <i32>
    %61 = constant %0#6 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant36", value = false} : <>, <i1>
    %62 = merge %61, %108#5 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge10"} : <i1>
    %63:5 = fork [5] %62 {handshake.bb = 5 : ui32, handshake.name = "fork14"} : <i1>
    %64 = mux %63#4 [%53#1, %trueResult_13] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %65:3 = fork [3] %64 {handshake.bb = 5 : ui32, handshake.name = "fork15"} : <i32>
    %66 = mux %63#3 [%57#1, %trueResult_11] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux15"} : <i1>, <i32>
    %67:5 = fork [5] %66 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <i32>
    %68 = trunci %67#0 {handshake.bb = 5 : ui32, handshake.name = "trunci1"} : <i32> to <i3>
    %69 = extsi %68 {handshake.bb = 5 : ui32, handshake.name = "extsi35"} : <i3> to <i4>
    %70 = trunci %67#1 {handshake.bb = 5 : ui32, handshake.name = "trunci2"} : <i32> to <i4>
    %71 = trunci %67#2 {handshake.bb = 5 : ui32, handshake.name = "trunci3"} : <i32> to <i3>
    %72 = extsi %71 {handshake.bb = 5 : ui32, handshake.name = "extsi36"} : <i3> to <i4>
    %73 = trunci %67#3 {handshake.bb = 5 : ui32, handshake.name = "trunci4"} : <i32> to <i4>
    %74 = mux %63#2 [%54, %trueResult_7] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux16"} : <i1>, <i32>
    %75 = mux %63#1 [%55, %trueResult_5] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux17"} : <i1>, <i32>
    %76 = mux %63#0 [%59, %60] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux18"} : <i1>, <i32>
    %77:3 = fork [3] %76 {handshake.bb = 5 : ui32, handshake.name = "fork17"} : <i32>
    %78 = trunci %77#0 {handshake.bb = 5 : ui32, handshake.name = "trunci5"} : <i32> to <i4>
    %79 = trunci %77#1 {handshake.bb = 5 : ui32, handshake.name = "trunci6"} : <i32> to <i4>
    %80 = source {handshake.bb = 5 : ui32, handshake.name = "source8"} : <>
    %81 = constant %80 {handshake.bb = 5 : ui32, handshake.name = "constant35", value = 4 : i4} : <>, <i4>
    %82:2 = fork [2] %81 {handshake.bb = 5 : ui32, handshake.name = "fork18"} : <i4>
    %83 = source {handshake.bb = 5 : ui32, handshake.name = "source9"} : <>
    %84 = constant %83 {handshake.bb = 5 : ui32, handshake.name = "constant37", value = 2 : i3} : <>, <i3>
    %85 = extsi %84 {handshake.bb = 5 : ui32, handshake.name = "extsi8"} : <i3> to <i32>
    %86 = source {handshake.bb = 5 : ui32, handshake.name = "source10"} : <>
    %87 = constant %86 {handshake.bb = 5 : ui32, handshake.name = "constant38", value = 1 : i2} : <>, <i2>
    %88:3 = fork [3] %87 {handshake.bb = 5 : ui32, handshake.name = "fork19"} : <i2>
    %89 = extui %88#0 {handshake.bb = 5 : ui32, handshake.name = "extui2"} : <i2> to <i4>
    %90 = extui %88#1 {handshake.bb = 5 : ui32, handshake.name = "extui3"} : <i2> to <i4>
    %91 = extsi %88#2 {handshake.bb = 5 : ui32, handshake.name = "extsi9"} : <i2> to <i32>
    %92 = shli %69, %89 {handshake.bb = 5 : ui32, handshake.name = "shli0"} : <i4>
    %93 = addi %70, %92 {handshake.bb = 5 : ui32, handshake.name = "addi13"} : <i4>
    %94 = addi %78, %93 {handshake.bb = 5 : ui32, handshake.name = "addi4"} : <i4>
    %95 = addi %94, %82#0 {handshake.bb = 5 : ui32, handshake.name = "addi5"} : <i4>
    %addressResult_15, %dataResult_16 = load[%95] %outputs_1 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i4>, <i32>
    %96 = muli %65#1, %dataResult_16 {handshake.bb = 5 : ui32, handshake.name = "muli0"} : <i32>
    %97 = addi %74, %96 {handshake.bb = 5 : ui32, handshake.name = "addi0"} : <i32>
    %98 = shli %72, %90 {handshake.bb = 5 : ui32, handshake.name = "shli1"} : <i4>
    %99 = addi %73, %98 {handshake.bb = 5 : ui32, handshake.name = "addi14"} : <i4>
    %100 = addi %79, %99 {handshake.bb = 5 : ui32, handshake.name = "addi6"} : <i4>
    %101 = addi %100, %82#1 {handshake.bb = 5 : ui32, handshake.name = "addi7"} : <i4>
    %addressResult_17, %dataResult_18 = load[%101] %outputs {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load2"} : <i4>, <i32>
    %102 = muli %65#0, %dataResult_18 {handshake.bb = 5 : ui32, handshake.name = "muli1"} : <i32>
    %103 = addi %75, %102 {handshake.bb = 5 : ui32, handshake.name = "addi1"} : <i32>
    %104 = addi %77#2, %91 {handshake.bb = 5 : ui32, handshake.name = "addi9"} : <i32>
    %105:2 = fork [2] %104 {handshake.bb = 5 : ui32, handshake.name = "fork20"} : <i32>
    %106 = trunci %105#0 {handshake.bb = 5 : ui32, handshake.name = "trunci7"} : <i32> to <i2>
    %107 = cmpi ult, %105#1, %85 {handshake.bb = 5 : ui32, handshake.name = "cmpi8"} : <i32>
    %108:6 = fork [6] %107 {handshake.bb = 5 : ui32, handshake.name = "fork21"} : <i1>
    %trueResult_19, %falseResult_20 = cond_br %122#2, %falseResult_6 {handshake.bb = 6 : ui32, handshake.name = "cond_br65"} : <i1>, <i32>
    %109:3 = fork [3] %falseResult_20 {handshake.bb = 6 : ui32, handshake.name = "fork22"} : <i32>
    %trueResult_21, %falseResult_22 = cond_br %122#3, %falseResult_8 {handshake.bb = 6 : ui32, handshake.name = "cond_br66"} : <i1>, <i32>
    %110:3 = fork [3] %falseResult_22 {handshake.bb = 6 : ui32, handshake.name = "fork23"} : <i32>
    %trueResult_23, %falseResult_24 = cond_br %122#0, %120 {handshake.bb = 6 : ui32, handshake.name = "cond_br67"} : <i1>, <i2>
    sink %falseResult_24 {handshake.name = "sink4"} : <i2>
    %111 = extsi %trueResult_23 {handshake.bb = 6 : ui32, handshake.name = "extsi37"} : <i2> to <i32>
    %trueResult_25, %falseResult_26 = cond_br %122#4, %53#0 {handshake.bb = 6 : ui32, handshake.name = "cond_br68"} : <i1>, <i32>
    sink %falseResult_26 {handshake.name = "sink5"} : <i32>
    %112 = source {handshake.bb = 6 : ui32, handshake.name = "source11"} : <>
    %113 = constant %112 {handshake.bb = 6 : ui32, handshake.name = "constant39", value = 2 : i3} : <>, <i3>
    %114 = extsi %113 {handshake.bb = 6 : ui32, handshake.name = "extsi10"} : <i3> to <i32>
    %115 = source {handshake.bb = 6 : ui32, handshake.name = "source12"} : <>
    %116 = constant %115 {handshake.bb = 6 : ui32, handshake.name = "constant40", value = 1 : i2} : <>, <i2>
    %117 = extsi %116 {handshake.bb = 6 : ui32, handshake.name = "extsi11"} : <i2> to <i32>
    %118 = addi %57#0, %117 {handshake.bb = 6 : ui32, handshake.name = "addi10"} : <i32>
    %119:2 = fork [2] %118 {handshake.bb = 6 : ui32, handshake.name = "fork24"} : <i32>
    %120 = trunci %119#0 {handshake.bb = 6 : ui32, handshake.name = "trunci8"} : <i32> to <i2>
    %121 = cmpi ult, %119#1, %114 {handshake.bb = 6 : ui32, handshake.name = "cmpi9"} : <i32>
    %122:5 = fork [5] %121 {handshake.bb = 6 : ui32, handshake.name = "fork25"} : <i1>
    %123 = source {handshake.bb = 7 : ui32, handshake.name = "source13"} : <>
    %124 = constant %123 {handshake.bb = 7 : ui32, handshake.name = "constant21", value = false} : <>, <i1>
    %125 = source {handshake.bb = 7 : ui32, handshake.name = "source14"} : <>
    %126 = constant %125 {handshake.bb = 7 : ui32, handshake.name = "constant41", value = 255 : i9} : <>, <i9>
    %127 = extsi %126 {handshake.bb = 7 : ui32, handshake.name = "extsi12"} : <i9> to <i32>
    %128:2 = fork [2] %127 {handshake.bb = 7 : ui32, handshake.name = "fork26"} : <i32>
    %129 = cmpi sgt, %110#2, %128#0 {handshake.bb = 7 : ui32, handshake.name = "cmpi4"} : <i32>
    %130:4 = fork [4] %129 {handshake.bb = 7 : ui32, handshake.name = "fork27"} : <i1>
    %131 = select %130#3[%128#1, %110#1] {handshake.bb = 7 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %trueResult_27, %falseResult_28 = cond_br %130#2, %110#0 {handshake.bb = 8 : ui32, handshake.name = "cond_br40"} : <i1>, <i32>
    sink %trueResult_27 {handshake.name = "sink6"} : <i32>
    %132 = source {handshake.bb = 8 : ui32, handshake.name = "source15"} : <>
    %133 = constant %132 {handshake.bb = 8 : ui32, handshake.name = "constant42", value = false} : <>, <i1>
    %134 = extsi %133 {handshake.bb = 8 : ui32, handshake.name = "extsi13"} : <i1> to <i32>
    %135 = cmpi slt, %falseResult_28, %134 {handshake.bb = 8 : ui32, handshake.name = "cmpi5"} : <i32>
    %trueResult_29, %falseResult_30 = cond_br %130#1, %124 {handshake.bb = 9 : ui32, handshake.name = "cond_br69"} : <i1>, <i1>
    sink %falseResult_30 {handshake.name = "sink7"} : <i1>
    %136 = mux %130#0 [%135, %trueResult_29] {ftd.phi, handshake.bb = 9 : ui32, handshake.name = "mux19"} : <i1>, <i1>
    %137 = source {handshake.bb = 9 : ui32, handshake.name = "source16"} : <>
    %138 = constant %137 {handshake.bb = 9 : ui32, handshake.name = "constant24", value = false} : <>, <i1>
    %139:2 = fork [2] %138 {handshake.bb = 9 : ui32, handshake.name = "fork28"} : <i1>
    %140 = extsi %139#0 {handshake.bb = 9 : ui32, handshake.name = "extsi14"} : <i1> to <i32>
    %141 = source {handshake.bb = 9 : ui32, handshake.name = "source17"} : <>
    %142 = constant %141 {handshake.bb = 9 : ui32, handshake.name = "constant43", value = 255 : i9} : <>, <i9>
    %143 = extsi %142 {handshake.bb = 9 : ui32, handshake.name = "extsi15"} : <i9> to <i32>
    %144:2 = fork [2] %143 {handshake.bb = 9 : ui32, handshake.name = "fork29"} : <i32>
    %145 = select %136[%140, %131] {handshake.bb = 9 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %146 = cmpi sgt, %109#2, %144#0 {handshake.bb = 9 : ui32, handshake.name = "cmpi6"} : <i32>
    %147:4 = fork [4] %146 {handshake.bb = 9 : ui32, handshake.name = "fork30"} : <i1>
    %148 = select %147#3[%144#1, %109#1] {handshake.bb = 9 : ui32, handshake.name = "select3"} : <i1>, <i32>
    %trueResult_31, %falseResult_32 = cond_br %147#2, %109#0 {handshake.bb = 10 : ui32, handshake.name = "cond_br44"} : <i1>, <i32>
    sink %trueResult_31 {handshake.name = "sink8"} : <i32>
    %149 = source {handshake.bb = 10 : ui32, handshake.name = "source19"} : <>
    %150 = constant %149 {handshake.bb = 10 : ui32, handshake.name = "constant44", value = false} : <>, <i1>
    %151 = extsi %150 {handshake.bb = 10 : ui32, handshake.name = "extsi16"} : <i1> to <i32>
    %152 = cmpi slt, %falseResult_32, %151 {handshake.bb = 10 : ui32, handshake.name = "cmpi7"} : <i32>
    %trueResult_33, %falseResult_34 = cond_br %41#1, %22 {handshake.bb = 11 : ui32, handshake.name = "cond_br70"} : <i1>, <i32>
    %trueResult_35, %falseResult_36 = cond_br %147#1, %139#1 {handshake.bb = 11 : ui32, handshake.name = "cond_br71"} : <i1>, <i1>
    sink %falseResult_36 {handshake.name = "sink9"} : <i1>
    %153 = mux %147#0 [%152, %trueResult_35] {ftd.phi, handshake.bb = 11 : ui32, handshake.name = "mux20"} : <i1>, <i1>
    %154 = source {handshake.bb = 11 : ui32, handshake.name = "source20"} : <>
    %155 = constant %154 {handshake.bb = 11 : ui32, handshake.name = "constant45", value = false} : <>, <i1>
    %156 = extsi %155 {handshake.bb = 11 : ui32, handshake.name = "extsi17"} : <i1> to <i32>
    %157 = select %153[%156, %148] {handshake.bb = 11 : ui32, handshake.name = "select4"} : <i1>, <i32>
    %158 = addi %145, %157 {handshake.bb = 11 : ui32, handshake.name = "addi2"} : <i32>
    %159 = addi %trueResult_33, %158 {handshake.bb = 11 : ui32, handshake.name = "addi3"} : <i32>
    %trueResult_37, %falseResult_38 = cond_br %183#0, %181 {handshake.bb = 12 : ui32, handshake.name = "cond_br72"} : <i1>, <i5>
    sink %falseResult_38 {handshake.name = "sink10"} : <i5>
    %trueResult_39, %falseResult_40 = cond_br %183#2, %163#1 {handshake.bb = 12 : ui32, handshake.name = "cond_br73"} : <i1>, <i32>
    %trueResult_41, %falseResult_42 = cond_br %183#1, %20#1 {handshake.bb = 12 : ui32, handshake.name = "cond_br74"} : <i1>, <i5>
    sink %falseResult_42 {handshake.name = "sink11"} : <i5>
    %160 = constant %0#4 {handshake.bb = 12 : ui32, handshake.name = "constant46", value = 1 : i2} : <>, <i2>
    %161 = extsi %160 {handshake.bb = 12 : ui32, handshake.name = "extsi18"} : <i2> to <i32>
    %162 = mux %41#2 [%falseResult_34, %159] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux21"} : <i1>, <i32>
    %163:2 = fork [2] %162 {handshake.bb = 12 : ui32, handshake.name = "fork31"} : <i32>
    %164 = source {handshake.bb = 12 : ui32, handshake.name = "source21"} : <>
    %165 = constant %164 {handshake.bb = 12 : ui32, handshake.name = "constant47", value = 1 : i2} : <>, <i2>
    %166 = extsi %165 {handshake.bb = 12 : ui32, handshake.name = "extsi38"} : <i2> to <i6>
    %167 = source {handshake.bb = 12 : ui32, handshake.name = "source22"} : <>
    %168 = constant %167 {handshake.bb = 12 : ui32, handshake.name = "constant48", value = 15 : i5} : <>, <i5>
    %169 = extsi %168 {handshake.bb = 12 : ui32, handshake.name = "extsi39"} : <i5> to <i6>
    %170 = source {handshake.bb = 12 : ui32, handshake.name = "source23"} : <>
    %171 = constant %170 {handshake.bb = 12 : ui32, handshake.name = "constant49", value = 255 : i9} : <>, <i9>
    %172 = extsi %171 {handshake.bb = 12 : ui32, handshake.name = "extsi40"} : <i9> to <i10>
    %173 = trunci %163#0 {handshake.bb = 12 : ui32, handshake.name = "trunci0"} : <i32> to <i8>
    %174 = extui %173 {handshake.bb = 12 : ui32, handshake.name = "extui4"} : <i8> to <i10>
    %175 = subi %172, %174 {handshake.bb = 12 : ui32, handshake.name = "subi0"} : <i10>
    %176 = extsi %175 {handshake.bb = 12 : ui32, handshake.name = "extsi41"} : <i10> to <i32>
    %177 = addi %25, %21 {handshake.bb = 12 : ui32, handshake.name = "addi8"} : <i6>
    %178 = extsi %177 {handshake.bb = 12 : ui32, handshake.name = "extsi25"} : <i6> to <i8>
    %addressResult_43, %dataResult_44 = store[%178] %176 {handshake.bb = 12 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 14], [-14, -1]]>]>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i8>, <i32>
    %179 = addi %26, %166 {handshake.bb = 12 : ui32, handshake.name = "addi11"} : <i6>
    %180:2 = fork [2] %179 {handshake.bb = 12 : ui32, handshake.name = "fork32"} : <i6>
    %181 = trunci %180#0 {handshake.bb = 12 : ui32, handshake.name = "trunci9"} : <i6> to <i5>
    %182 = cmpi ult, %180#1, %169 {handshake.bb = 12 : ui32, handshake.name = "cmpi10"} : <i6>
    %183:4 = fork [4] %182 {handshake.bb = 12 : ui32, handshake.name = "fork33"} : <i1>
    %trueResult_45, %falseResult_46 = cond_br %194#1, %falseResult_40 {handshake.bb = 13 : ui32, handshake.name = "cond_br75"} : <i1>, <i32>
    %trueResult_47, %falseResult_48 = cond_br %194#0, %192 {handshake.bb = 13 : ui32, handshake.name = "cond_br76"} : <i1>, <i5>
    sink %falseResult_48 {handshake.name = "sink12"} : <i5>
    %184 = source {handshake.bb = 13 : ui32, handshake.name = "source24"} : <>
    %185 = constant %184 {handshake.bb = 13 : ui32, handshake.name = "constant50", value = 1 : i2} : <>, <i2>
    %186 = extsi %185 {handshake.bb = 13 : ui32, handshake.name = "extsi42"} : <i2> to <i6>
    %187 = source {handshake.bb = 13 : ui32, handshake.name = "source25"} : <>
    %188 = constant %187 {handshake.bb = 13 : ui32, handshake.name = "constant51", value = 15 : i5} : <>, <i5>
    %189 = extsi %188 {handshake.bb = 13 : ui32, handshake.name = "extsi43"} : <i5> to <i6>
    %190 = addi %12, %186 {handshake.bb = 13 : ui32, handshake.name = "addi12"} : <i6>
    %191:2 = fork [2] %190 {handshake.bb = 13 : ui32, handshake.name = "fork34"} : <i6>
    %192 = trunci %191#0 {handshake.bb = 13 : ui32, handshake.name = "trunci10"} : <i6> to <i5>
    %193 = cmpi ult, %191#1, %189 {handshake.bb = 13 : ui32, handshake.name = "cmpi11"} : <i6>
    %194:3 = fork [3] %193 {handshake.bb = 13 : ui32, handshake.name = "fork35"} : <i1>
    end {handshake.bb = 14 : ui32, handshake.name = "end0"} %falseResult_46, %memEnd_4, %memEnd_2, %memEnd_0, %memEnd, %0#5 : <i32>, <>, <>, <>, <>, <>
  }
}


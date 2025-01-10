module {
  handshake.func @binary_search(%arg0: !handshake.channel<i32>, %arg1: memref<101xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["search", "a", "a_start", "start"], resNames = ["out0", "a_end", "end"]} {
    %0:5 = fork [5] %arg3 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %outputs:2, %memEnd = mem_controller[%arg1 : memref<101xi32>] %arg2 (%addressResult, %addressResult_42) %result_60 {connectedBlocks = [2 : i32, 6 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i7>, !handshake.channel<i7>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %1 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = false} : <>, <i1>
    %2 = constant %0#4 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = true} : <>, <i1>
    %3 = constant %0#3 {handshake.bb = 0 : ui32, handshake.name = "constant5", value = -1 : i32} : <>, <i32>
    %4 = br %1 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <i1>
    %5 = extsi %4 {handshake.bb = 0 : ui32, handshake.name = "extsi7"} : <i1> to <i8>
    %6 = br %3 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <i32>
    %7 = br %2 {handshake.bb = 0 : ui32, handshake.name = "br6"} : <i1>
    %8 = br %arg0 {handshake.bb = 0 : ui32, handshake.name = "br7"} : <i32>
    %9 = br %0#2 {handshake.bb = 0 : ui32, handshake.name = "br8"} : <>
    %10 = mux %15#0 [%5, %trueResult_12] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i8>
    %11 = mux %15#1 [%6, %trueResult_14] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %12 = mux %15#2 [%7, %trueResult_16] {handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i1>
    %13:5 = fork [5] %12 {handshake.bb = 1 : ui32, handshake.name = "fork1"} : <i1>
    %14 = mux %15#3 [%8, %trueResult_18] {handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %result, %index = control_merge %9, %trueResult_20  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %15:4 = fork [4] %index {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i1>
    %16:2 = fork [2] %result {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <>
    %17 = constant %16#1 {handshake.bb = 1 : ui32, handshake.name = "constant7", value = false} : <>, <i1>
    %trueResult, %falseResult = cond_br %13#4, %14 {handshake.bb = 1 : ui32, handshake.name = "cond_br4"} : <i1>, <i32>
    %trueResult_0, %falseResult_1 = cond_br %13#0, %10 {handshake.bb = 1 : ui32, handshake.name = "cond_br5"} : <i1>, <i8>
    %trueResult_2, %falseResult_3 = cond_br %13#3, %11 {handshake.bb = 1 : ui32, handshake.name = "cond_br6"} : <i1>, <i32>
    %trueResult_4, %falseResult_5 = cond_br %13#2, %16#0 {handshake.bb = 1 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %trueResult_6, %falseResult_7 = cond_br %13#1, %17 {handshake.bb = 1 : ui32, handshake.name = "cond_br8"} : <i1>, <i1>
    sink %trueResult_6 {handshake.name = "sink0"} : <i1>
    %18 = merge %trueResult {handshake.bb = 2 : ui32, handshake.name = "merge0"} : <i32>
    %19:3 = fork [3] %18 {handshake.bb = 2 : ui32, handshake.name = "fork4"} : <i32>
    %20 = merge %trueResult_0 {handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i8>
    %21:3 = fork [3] %20 {handshake.bb = 2 : ui32, handshake.name = "fork5"} : <i8>
    %22 = extsi %21#2 {handshake.bb = 2 : ui32, handshake.name = "extsi8"} : <i8> to <i32>
    %23 = trunci %21#0 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i8> to <i7>
    %24 = merge %trueResult_2 {handshake.bb = 2 : ui32, handshake.name = "merge2"} : <i32>
    %result_8, %index_9 = control_merge %trueResult_4  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    sink %index_9 {handshake.name = "sink1"} : <i1>
    %addressResult, %dataResult = load[%23] %outputs#0 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i7>, <i32>
    %25:2 = fork [2] %dataResult {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i32>
    %26 = cmpi eq, %25#0, %19#2 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %27 = select %26[%22, %24] {handshake.bb = 2 : ui32, handshake.name = "select0"} : <i1>, <i32>
    %28 = cmpi ne, %25#1, %19#1 {handshake.bb = 2 : ui32, handshake.name = "cmpi1"} : <i32>
    %29 = br %27 {handshake.bb = 2 : ui32, handshake.name = "br9"} : <i32>
    %30 = br %28 {handshake.bb = 2 : ui32, handshake.name = "br10"} : <i1>
    %31 = br %19#0 {handshake.bb = 2 : ui32, handshake.name = "br11"} : <i32>
    %32 = br %21#1 {handshake.bb = 2 : ui32, handshake.name = "br12"} : <i8>
    %33 = br %result_8 {handshake.bb = 2 : ui32, handshake.name = "br13"} : <>
    %34 = mux %39#1 [%falseResult_3, %29] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %35 = mux %39#2 [%falseResult_7, %30] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i1>
    %36 = mux %39#3 [%falseResult, %31] {handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %37 = mux %39#0 [%falseResult_1, %32] {handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <i8>
    %38 = extsi %37 {handshake.bb = 3 : ui32, handshake.name = "extsi9"} : <i8> to <i9>
    %result_10, %index_11 = control_merge %falseResult_5, %33  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %39:4 = fork [4] %index_11 {handshake.bb = 3 : ui32, handshake.name = "fork7"} : <i1>
    %40 = source {handshake.bb = 3 : ui32, handshake.name = "source0"} : <>
    %41 = constant %40 {handshake.bb = 3 : ui32, handshake.name = "constant1", value = 101 : i8} : <>, <i8>
    %42 = extsi %41 {handshake.bb = 3 : ui32, handshake.name = "extsi10"} : <i8> to <i9>
    %43 = source {handshake.bb = 3 : ui32, handshake.name = "source1"} : <>
    %44 = constant %43 {handshake.bb = 3 : ui32, handshake.name = "constant3", value = 2 : i3} : <>, <i3>
    %45 = extsi %44 {handshake.bb = 3 : ui32, handshake.name = "extsi11"} : <i3> to <i9>
    %46 = addi %38, %45 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i9>
    %47:2 = fork [2] %46 {handshake.bb = 3 : ui32, handshake.name = "fork8"} : <i9>
    %48 = trunci %47#0 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i9> to <i8>
    %49 = cmpi ult, %47#1, %42 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i9>
    %50:5 = fork [5] %49 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i1>
    %trueResult_12, %falseResult_13 = cond_br %50#0, %48 {handshake.bb = 3 : ui32, handshake.name = "cond_br9"} : <i1>, <i8>
    sink %falseResult_13 {handshake.name = "sink2"} : <i8>
    %trueResult_14, %falseResult_15 = cond_br %50#1, %34 {handshake.bb = 3 : ui32, handshake.name = "cond_br10"} : <i1>, <i32>
    %trueResult_16, %falseResult_17 = cond_br %50#2, %35 {handshake.bb = 3 : ui32, handshake.name = "cond_br11"} : <i1>, <i1>
    sink %falseResult_17 {handshake.name = "sink3"} : <i1>
    %trueResult_18, %falseResult_19 = cond_br %50#3, %36 {handshake.bb = 3 : ui32, handshake.name = "cond_br12"} : <i1>, <i32>
    %trueResult_20, %falseResult_21 = cond_br %50#4, %result_10 {handshake.bb = 3 : ui32, handshake.name = "cond_br13"} : <i1>, <>
    %51 = merge %falseResult_19 {handshake.bb = 4 : ui32, handshake.name = "merge3"} : <i32>
    %52 = merge %falseResult_15 {handshake.bb = 4 : ui32, handshake.name = "merge4"} : <i32>
    %53:2 = fork [2] %52 {handshake.bb = 4 : ui32, handshake.name = "fork10"} : <i32>
    %result_22, %index_23 = control_merge %falseResult_21  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_23 {handshake.name = "sink4"} : <i1>
    %54:4 = fork [4] %result_22 {handshake.bb = 4 : ui32, handshake.name = "fork11"} : <>
    %55 = constant %54#0 {handshake.bb = 4 : ui32, handshake.name = "constant6", value = 1 : i2} : <>, <i2>
    %56 = constant %54#3 {handshake.bb = 4 : ui32, handshake.name = "constant11", value = -1 : i32} : <>, <i32>
    %57:2 = fork [2] %56 {handshake.bb = 4 : ui32, handshake.name = "fork12"} : <i32>
    %58 = constant %54#2 {handshake.bb = 4 : ui32, handshake.name = "constant12", value = true} : <>, <i1>
    %59 = cmpi ne, %53#1, %57#1 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i32>
    %60 = br %55 {handshake.bb = 4 : ui32, handshake.name = "br14"} : <i2>
    %61 = extsi %60 {handshake.bb = 4 : ui32, handshake.name = "extsi6"} : <i2> to <i8>
    %62 = br %57#0 {handshake.bb = 4 : ui32, handshake.name = "br15"} : <i32>
    %63 = br %58 {handshake.bb = 4 : ui32, handshake.name = "br16"} : <i1>
    %64 = br %51 {handshake.bb = 4 : ui32, handshake.name = "br17"} : <i32>
    %65 = br %53#0 {handshake.bb = 4 : ui32, handshake.name = "br18"} : <i32>
    %66 = br %59 {handshake.bb = 4 : ui32, handshake.name = "br19"} : <i1>
    %67 = br %54#1 {handshake.bb = 4 : ui32, handshake.name = "br20"} : <>
    %68 = mux %75#0 [%61, %trueResult_46] {handshake.bb = 5 : ui32, handshake.name = "mux8"} : <i1>, <i8>
    %69 = mux %75#1 [%62, %trueResult_48] {handshake.bb = 5 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %70 = mux %75#2 [%63, %trueResult_50] {handshake.bb = 5 : ui32, handshake.name = "mux10"} : <i1>, <i1>
    %71:7 = fork [7] %70 {handshake.bb = 5 : ui32, handshake.name = "fork13"} : <i1>
    %72 = mux %75#3 [%64, %trueResult_52] {handshake.bb = 5 : ui32, handshake.name = "mux11"} : <i1>, <i32>
    %73 = mux %75#4 [%65, %trueResult_54] {handshake.bb = 5 : ui32, handshake.name = "mux12"} : <i1>, <i32>
    %74 = mux %75#5 [%66, %trueResult_56] {handshake.bb = 5 : ui32, handshake.name = "mux13"} : <i1>, <i1>
    %result_24, %index_25 = control_merge %67, %trueResult_58  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %75:6 = fork [6] %index_25 {handshake.bb = 5 : ui32, handshake.name = "fork14"} : <i1>
    %76:2 = fork [2] %result_24 {handshake.bb = 5 : ui32, handshake.name = "fork15"} : <>
    %77 = constant %76#1 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = false} : <>, <i1>
    %trueResult_26, %falseResult_27 = cond_br %71#6, %72 {handshake.bb = 5 : ui32, handshake.name = "cond_br14"} : <i1>, <i32>
    %trueResult_28, %falseResult_29 = cond_br %71#5, %73 {handshake.bb = 5 : ui32, handshake.name = "cond_br15"} : <i1>, <i32>
    %trueResult_30, %falseResult_31 = cond_br %71#4, %74 {handshake.bb = 5 : ui32, handshake.name = "cond_br16"} : <i1>, <i1>
    %trueResult_32, %falseResult_33 = cond_br %71#0, %68 {handshake.bb = 5 : ui32, handshake.name = "cond_br17"} : <i1>, <i8>
    %trueResult_34, %falseResult_35 = cond_br %71#3, %69 {handshake.bb = 5 : ui32, handshake.name = "cond_br18"} : <i1>, <i32>
    %trueResult_36, %falseResult_37 = cond_br %71#2, %76#0 {handshake.bb = 5 : ui32, handshake.name = "cond_br19"} : <i1>, <>
    %trueResult_38, %falseResult_39 = cond_br %71#1, %77 {handshake.bb = 5 : ui32, handshake.name = "cond_br20"} : <i1>, <i1>
    sink %trueResult_38 {handshake.name = "sink5"} : <i1>
    %78 = merge %trueResult_26 {handshake.bb = 6 : ui32, handshake.name = "merge5"} : <i32>
    %79:3 = fork [3] %78 {handshake.bb = 6 : ui32, handshake.name = "fork16"} : <i32>
    %80 = merge %trueResult_28 {handshake.bb = 6 : ui32, handshake.name = "merge6"} : <i32>
    %81 = merge %trueResult_30 {handshake.bb = 6 : ui32, handshake.name = "merge7"} : <i1>
    %82 = merge %trueResult_32 {handshake.bb = 6 : ui32, handshake.name = "merge8"} : <i8>
    %83:3 = fork [3] %82 {handshake.bb = 6 : ui32, handshake.name = "fork17"} : <i8>
    %84 = extsi %83#2 {handshake.bb = 6 : ui32, handshake.name = "extsi12"} : <i8> to <i32>
    %85 = trunci %83#0 {handshake.bb = 6 : ui32, handshake.name = "trunci2"} : <i8> to <i7>
    %86 = merge %trueResult_34 {handshake.bb = 6 : ui32, handshake.name = "merge9"} : <i32>
    %result_40, %index_41 = control_merge %trueResult_36  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    sink %index_41 {handshake.name = "sink6"} : <i1>
    %addressResult_42, %dataResult_43 = load[%85] %outputs#1 {handshake.bb = 6 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i7>, <i32>
    %87:2 = fork [2] %dataResult_43 {handshake.bb = 6 : ui32, handshake.name = "fork18"} : <i32>
    %88 = cmpi eq, %87#0, %79#2 {handshake.bb = 6 : ui32, handshake.name = "cmpi3"} : <i32>
    %89 = select %88[%84, %86] {handshake.bb = 6 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %90 = cmpi ne, %87#1, %79#1 {handshake.bb = 6 : ui32, handshake.name = "cmpi4"} : <i32>
    %91 = br %89 {handshake.bb = 6 : ui32, handshake.name = "br21"} : <i32>
    %92 = br %90 {handshake.bb = 6 : ui32, handshake.name = "br22"} : <i1>
    %93 = br %79#0 {handshake.bb = 6 : ui32, handshake.name = "br23"} : <i32>
    %94 = br %80 {handshake.bb = 6 : ui32, handshake.name = "br24"} : <i32>
    %95 = br %81 {handshake.bb = 6 : ui32, handshake.name = "br25"} : <i1>
    %96 = br %83#1 {handshake.bb = 6 : ui32, handshake.name = "br26"} : <i8>
    %97 = br %result_40 {handshake.bb = 6 : ui32, handshake.name = "br27"} : <>
    %98 = mux %105#1 [%falseResult_35, %91] {handshake.bb = 7 : ui32, handshake.name = "mux14"} : <i1>, <i32>
    %99 = mux %105#2 [%falseResult_39, %92] {handshake.bb = 7 : ui32, handshake.name = "mux15"} : <i1>, <i1>
    %100 = mux %105#3 [%falseResult_27, %93] {handshake.bb = 7 : ui32, handshake.name = "mux16"} : <i1>, <i32>
    %101 = mux %105#4 [%falseResult_29, %94] {handshake.bb = 7 : ui32, handshake.name = "mux17"} : <i1>, <i32>
    %102 = mux %105#5 [%falseResult_31, %95] {handshake.bb = 7 : ui32, handshake.name = "mux18"} : <i1>, <i1>
    %103 = mux %105#0 [%falseResult_33, %96] {handshake.bb = 7 : ui32, handshake.name = "mux19"} : <i1>, <i8>
    %104 = extsi %103 {handshake.bb = 7 : ui32, handshake.name = "extsi13"} : <i8> to <i9>
    %result_44, %index_45 = control_merge %falseResult_37, %97  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %105:6 = fork [6] %index_45 {handshake.bb = 7 : ui32, handshake.name = "fork19"} : <i1>
    %106 = source {handshake.bb = 7 : ui32, handshake.name = "source2"} : <>
    %107 = constant %106 {handshake.bb = 7 : ui32, handshake.name = "constant16", value = 101 : i8} : <>, <i8>
    %108 = extsi %107 {handshake.bb = 7 : ui32, handshake.name = "extsi14"} : <i8> to <i9>
    %109 = source {handshake.bb = 7 : ui32, handshake.name = "source3"} : <>
    %110 = constant %109 {handshake.bb = 7 : ui32, handshake.name = "constant17", value = 2 : i3} : <>, <i3>
    %111 = extsi %110 {handshake.bb = 7 : ui32, handshake.name = "extsi15"} : <i3> to <i9>
    %112 = addi %104, %111 {handshake.bb = 7 : ui32, handshake.name = "addi1"} : <i9>
    %113:2 = fork [2] %112 {handshake.bb = 7 : ui32, handshake.name = "fork20"} : <i9>
    %114 = trunci %113#0 {handshake.bb = 7 : ui32, handshake.name = "trunci3"} : <i9> to <i8>
    %115 = cmpi ult, %113#1, %108 {handshake.bb = 7 : ui32, handshake.name = "cmpi6"} : <i9>
    %116:7 = fork [7] %115 {handshake.bb = 7 : ui32, handshake.name = "fork21"} : <i1>
    %trueResult_46, %falseResult_47 = cond_br %116#0, %114 {handshake.bb = 7 : ui32, handshake.name = "cond_br21"} : <i1>, <i8>
    sink %falseResult_47 {handshake.name = "sink7"} : <i8>
    %trueResult_48, %falseResult_49 = cond_br %116#1, %98 {handshake.bb = 7 : ui32, handshake.name = "cond_br22"} : <i1>, <i32>
    %trueResult_50, %falseResult_51 = cond_br %116#2, %99 {handshake.bb = 7 : ui32, handshake.name = "cond_br23"} : <i1>, <i1>
    sink %falseResult_51 {handshake.name = "sink8"} : <i1>
    %trueResult_52, %falseResult_53 = cond_br %116#3, %100 {handshake.bb = 7 : ui32, handshake.name = "cond_br24"} : <i1>, <i32>
    sink %falseResult_53 {handshake.name = "sink9"} : <i32>
    %trueResult_54, %falseResult_55 = cond_br %116#4, %101 {handshake.bb = 7 : ui32, handshake.name = "cond_br25"} : <i1>, <i32>
    %trueResult_56, %falseResult_57 = cond_br %116#5, %102 {handshake.bb = 7 : ui32, handshake.name = "cond_br26"} : <i1>, <i1>
    %trueResult_58, %falseResult_59 = cond_br %116#6, %result_44 {handshake.bb = 7 : ui32, handshake.name = "cond_br27"} : <i1>, <>
    %117 = merge %falseResult_55 {handshake.bb = 8 : ui32, handshake.name = "merge10"} : <i32>
    %118 = merge %falseResult_57 {handshake.bb = 8 : ui32, handshake.name = "merge11"} : <i1>
    %119 = merge %falseResult_49 {handshake.bb = 8 : ui32, handshake.name = "merge12"} : <i32>
    %result_60, %index_61 = control_merge %falseResult_59  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    sink %index_61 {handshake.name = "sink10"} : <i1>
    %120 = select %118[%117, %119] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    end {handshake.bb = 8 : ui32, handshake.name = "end0"} %120, %memEnd, %0#1 : <i32>, <>, <>
  }
}


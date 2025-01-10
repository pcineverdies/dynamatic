module {
  handshake.func @gcd(%arg0: !handshake.channel<i32>, %arg1: !handshake.channel<i32>, %arg2: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>) attributes {argNames = ["a", "b", "start"], resNames = ["out0", "end"]} {
    %0:3 = fork [3] %arg2 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %1:3 = fork [3] %arg1 {handshake.bb = 0 : ui32, handshake.name = "fork1"} : <i32>
    %2:3 = fork [3] %arg0 {handshake.bb = 0 : ui32, handshake.name = "fork2"} : <i32>
    %3 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %4:3 = fork [3] %3 {handshake.bb = 0 : ui32, handshake.name = "fork3"} : <i1>
    %5 = extsi %4#1 {handshake.bb = 0 : ui32, handshake.name = "extsi0"} : <i1> to <i32>
    %6 = extsi %4#2 {handshake.bb = 0 : ui32, handshake.name = "extsi1"} : <i1> to <i32>
    %7:3 = fork [3] %6 {handshake.bb = 0 : ui32, handshake.name = "fork4"} : <i32>
    %8 = cmpi eq, %2#2, %7#0 {handshake.bb = 0 : ui32, handshake.name = "cmpi0"} : <i32>
    %9 = cmpi ne, %2#1, %7#1 {handshake.bb = 0 : ui32, handshake.name = "cmpi1"} : <i32>
    %10 = select %8[%1#2, %5] {handshake.bb = 0 : ui32, handshake.name = "select0"} : <i1>, <i32>
    %11 = cmpi ne, %1#1, %7#2 {handshake.bb = 0 : ui32, handshake.name = "cmpi2"} : <i32>
    %12 = andi %9, %11 {handshake.bb = 0 : ui32, handshake.name = "andi0"} : <i1>
    %13:5 = fork [5] %12 {handshake.bb = 0 : ui32, handshake.name = "fork5"} : <i1>
    %trueResult, %falseResult = cond_br %13#0, %4#0 {handshake.bb = 0 : ui32, handshake.name = "cond_br6"} : <i1>, <i1>
    sink %falseResult {handshake.name = "sink0"} : <i1>
    %14 = extsi %trueResult {handshake.bb = 0 : ui32, handshake.name = "extsi16"} : <i1> to <i32>
    %trueResult_0, %falseResult_1 = cond_br %13#4, %1#0 {handshake.bb = 0 : ui32, handshake.name = "cond_br7"} : <i1>, <i32>
    sink %falseResult_1 {handshake.name = "sink1"} : <i32>
    %trueResult_2, %falseResult_3 = cond_br %13#3, %2#0 {handshake.bb = 0 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    sink %falseResult_3 {handshake.name = "sink2"} : <i32>
    %trueResult_4, %falseResult_5 = cond_br %13#2, %0#2 {handshake.bb = 0 : ui32, handshake.name = "cond_br9"} : <i1>, <>
    %trueResult_6, %falseResult_7 = cond_br %13#1, %10 {handshake.bb = 0 : ui32, handshake.name = "cond_br10"} : <i1>, <i32>
    sink %trueResult_6 {handshake.name = "sink3"} : <i32>
    %15 = mux %20#0 [%14, %41] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %16 = mux %20#1 [%trueResult_0, %42] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %17:2 = fork [2] %16 {handshake.bb = 1 : ui32, handshake.name = "fork6"} : <i32>
    %18 = mux %20#2 [%trueResult_2, %43] {handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %19:2 = fork [2] %18 {handshake.bb = 1 : ui32, handshake.name = "fork7"} : <i32>
    %result, %index = control_merge %trueResult_4, %44  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %20:3 = fork [3] %index {handshake.bb = 1 : ui32, handshake.name = "fork8"} : <i1>
    %21 = source {handshake.bb = 1 : ui32, handshake.name = "source0"} : <>
    %22 = constant %21 {handshake.bb = 1 : ui32, handshake.name = "constant16", value = 1 : i2} : <>, <i2>
    %23 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %24 = constant %23 {handshake.bb = 1 : ui32, handshake.name = "constant17", value = false} : <>, <i1>
    %25 = extsi %24 {handshake.bb = 1 : ui32, handshake.name = "extsi17"} : <i1> to <i2>
    %26 = ori %19#1, %17#1 {handshake.bb = 1 : ui32, handshake.name = "ori0"} : <i32>
    %27 = trunci %26 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i32> to <i2>
    %28 = andi %27, %22 {handshake.bb = 1 : ui32, handshake.name = "andi1"} : <i2>
    %29 = cmpi eq, %28, %25 {handshake.bb = 1 : ui32, handshake.name = "cmpi3"} : <i2>
    %30:4 = fork [4] %29 {handshake.bb = 1 : ui32, handshake.name = "fork9"} : <i1>
    %trueResult_8, %falseResult_9 = cond_br %30#0, %15 {handshake.bb = 1 : ui32, handshake.name = "cond_br11"} : <i1>, <i32>
    %trueResult_10, %falseResult_11 = cond_br %30#1, %17#0 {handshake.bb = 1 : ui32, handshake.name = "cond_br12"} : <i1>, <i32>
    %trueResult_12, %falseResult_13 = cond_br %30#2, %19#0 {handshake.bb = 1 : ui32, handshake.name = "cond_br13"} : <i1>, <i32>
    %trueResult_14, %falseResult_15 = cond_br %30#3, %result {handshake.bb = 1 : ui32, handshake.name = "cond_br14"} : <i1>, <>
    %31 = merge %trueResult_8 {handshake.bb = 2 : ui32, handshake.name = "merge0"} : <i32>
    %32 = merge %trueResult_10 {handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i32>
    %33 = merge %trueResult_12 {handshake.bb = 2 : ui32, handshake.name = "merge2"} : <i32>
    %result_16, %index_17 = control_merge %trueResult_14  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    sink %index_17 {handshake.name = "sink4"} : <i1>
    %34 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %35 = constant %34 {handshake.bb = 2 : ui32, handshake.name = "constant18", value = 1 : i2} : <>, <i2>
    %36 = extsi %35 {handshake.bb = 2 : ui32, handshake.name = "extsi4"} : <i2> to <i32>
    %37:3 = fork [3] %36 {handshake.bb = 2 : ui32, handshake.name = "fork10"} : <i32>
    %38 = shrsi %33, %37#0 {handshake.bb = 2 : ui32, handshake.name = "shrsi0"} : <i32>
    %39 = shrsi %32, %37#1 {handshake.bb = 2 : ui32, handshake.name = "shrsi1"} : <i32>
    %40 = addi %31, %37#2 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %41 = br %40 {handshake.bb = 2 : ui32, handshake.name = "br0"} : <i32>
    %42 = br %39 {handshake.bb = 2 : ui32, handshake.name = "br2"} : <i32>
    %43 = br %38 {handshake.bb = 2 : ui32, handshake.name = "br4"} : <i32>
    %44 = br %result_16 {handshake.bb = 2 : ui32, handshake.name = "br6"} : <>
    %45 = mux %50#0 [%falseResult_13, %70] {handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %46:3 = fork [3] %45 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i32>
    %47 = trunci %46#0 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i32> to <i2>
    %48 = mux %50#1 [%falseResult_9, %71] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %49 = mux %50#2 [%falseResult_11, %72] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %result_18, %index_19 = control_merge %falseResult_15, %73  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %50:3 = fork [3] %index_19 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i1>
    %51 = source {handshake.bb = 3 : ui32, handshake.name = "source3"} : <>
    %52 = constant %51 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 1 : i2} : <>, <i2>
    %53 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %54 = constant %53 {handshake.bb = 3 : ui32, handshake.name = "constant20", value = false} : <>, <i1>
    %55:2 = fork [2] %54 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i1>
    %56 = extsi %55#0 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i1> to <i2>
    %57 = extsi %55#1 {handshake.bb = 3 : ui32, handshake.name = "extsi6"} : <i1> to <i32>
    %58 = cmpi sgt, %46#2, %57 {handshake.bb = 3 : ui32, handshake.name = "cmpi4"} : <i32>
    %59 = andi %47, %52 {handshake.bb = 3 : ui32, handshake.name = "andi2"} : <i2>
    %60 = cmpi eq, %59, %56 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i2>
    %61 = andi %58, %60 {handshake.bb = 3 : ui32, handshake.name = "andi3"} : <i1>
    %62:4 = fork [4] %61 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i1>
    %trueResult_20, %falseResult_21 = cond_br %62#3, %46#1 {handshake.bb = 3 : ui32, handshake.name = "cond_br15"} : <i1>, <i32>
    %trueResult_22, %falseResult_23 = cond_br %62#2, %48 {handshake.bb = 3 : ui32, handshake.name = "cond_br16"} : <i1>, <i32>
    %trueResult_24, %falseResult_25 = cond_br %62#1, %49 {handshake.bb = 3 : ui32, handshake.name = "cond_br17"} : <i1>, <i32>
    %trueResult_26, %falseResult_27 = cond_br %62#0, %result_18 {handshake.bb = 3 : ui32, handshake.name = "cond_br18"} : <i1>, <>
    %63 = merge %trueResult_20 {handshake.bb = 4 : ui32, handshake.name = "merge3"} : <i32>
    %64 = merge %trueResult_22 {handshake.bb = 4 : ui32, handshake.name = "merge4"} : <i32>
    %65 = merge %trueResult_24 {handshake.bb = 4 : ui32, handshake.name = "merge5"} : <i32>
    %result_28, %index_29 = control_merge %trueResult_26  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_29 {handshake.name = "sink5"} : <i1>
    %66 = source {handshake.bb = 4 : ui32, handshake.name = "source5"} : <>
    %67 = constant %66 {handshake.bb = 4 : ui32, handshake.name = "constant21", value = 1 : i2} : <>, <i2>
    %68 = extsi %67 {handshake.bb = 4 : ui32, handshake.name = "extsi7"} : <i2> to <i32>
    %69 = shrsi %63, %68 {handshake.bb = 4 : ui32, handshake.name = "shrsi2"} : <i32>
    %70 = br %69 {handshake.bb = 4 : ui32, handshake.name = "br9"} : <i32>
    %71 = br %64 {handshake.bb = 4 : ui32, handshake.name = "br11"} : <i32>
    %72 = br %65 {handshake.bb = 4 : ui32, handshake.name = "br12"} : <i32>
    %73 = br %result_28 {handshake.bb = 4 : ui32, handshake.name = "br13"} : <>
    %74 = mux %79#0 [%falseResult_25, %99] {handshake.bb = 5 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %75:3 = fork [3] %74 {handshake.bb = 5 : ui32, handshake.name = "fork15"} : <i32>
    %76 = trunci %75#0 {handshake.bb = 5 : ui32, handshake.name = "trunci2"} : <i32> to <i2>
    %77 = mux %79#1 [%falseResult_23, %100] {handshake.bb = 5 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %78 = mux %79#2 [%falseResult_21, %101] {handshake.bb = 5 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %result_30, %index_31 = control_merge %falseResult_27, %102  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %79:3 = fork [3] %index_31 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <i1>
    %80 = source {handshake.bb = 5 : ui32, handshake.name = "source6"} : <>
    %81 = constant %80 {handshake.bb = 5 : ui32, handshake.name = "constant22", value = 1 : i2} : <>, <i2>
    %82 = source {handshake.bb = 5 : ui32, handshake.name = "source7"} : <>
    %83 = constant %82 {handshake.bb = 5 : ui32, handshake.name = "constant23", value = false} : <>, <i1>
    %84:2 = fork [2] %83 {handshake.bb = 5 : ui32, handshake.name = "fork17"} : <i1>
    %85 = extsi %84#0 {handshake.bb = 5 : ui32, handshake.name = "extsi19"} : <i1> to <i2>
    %86 = extsi %84#1 {handshake.bb = 5 : ui32, handshake.name = "extsi9"} : <i1> to <i32>
    %87 = cmpi sgt, %75#2, %86 {handshake.bb = 5 : ui32, handshake.name = "cmpi6"} : <i32>
    %88 = andi %76, %81 {handshake.bb = 5 : ui32, handshake.name = "andi4"} : <i2>
    %89 = cmpi eq, %88, %85 {handshake.bb = 5 : ui32, handshake.name = "cmpi7"} : <i2>
    %90 = andi %87, %89 {handshake.bb = 5 : ui32, handshake.name = "andi5"} : <i1>
    %91:4 = fork [4] %90 {handshake.bb = 5 : ui32, handshake.name = "fork18"} : <i1>
    %trueResult_32, %falseResult_33 = cond_br %91#3, %75#1 {handshake.bb = 5 : ui32, handshake.name = "cond_br19"} : <i1>, <i32>
    %trueResult_34, %falseResult_35 = cond_br %91#2, %77 {handshake.bb = 5 : ui32, handshake.name = "cond_br20"} : <i1>, <i32>
    %trueResult_36, %falseResult_37 = cond_br %91#1, %78 {handshake.bb = 5 : ui32, handshake.name = "cond_br21"} : <i1>, <i32>
    %trueResult_38, %falseResult_39 = cond_br %91#0, %result_30 {handshake.bb = 5 : ui32, handshake.name = "cond_br22"} : <i1>, <>
    %92 = merge %trueResult_32 {handshake.bb = 6 : ui32, handshake.name = "merge6"} : <i32>
    %93 = merge %trueResult_34 {handshake.bb = 6 : ui32, handshake.name = "merge7"} : <i32>
    %94 = merge %trueResult_36 {handshake.bb = 6 : ui32, handshake.name = "merge8"} : <i32>
    %result_40, %index_41 = control_merge %trueResult_38  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    sink %index_41 {handshake.name = "sink6"} : <i1>
    %95 = source {handshake.bb = 6 : ui32, handshake.name = "source8"} : <>
    %96 = constant %95 {handshake.bb = 6 : ui32, handshake.name = "constant24", value = 1 : i2} : <>, <i2>
    %97 = extsi %96 {handshake.bb = 6 : ui32, handshake.name = "extsi10"} : <i2> to <i32>
    %98 = shrsi %92, %97 {handshake.bb = 6 : ui32, handshake.name = "shrsi3"} : <i32>
    %99 = br %98 {handshake.bb = 6 : ui32, handshake.name = "br14"} : <i32>
    %100 = br %93 {handshake.bb = 6 : ui32, handshake.name = "br15"} : <i32>
    %101 = br %94 {handshake.bb = 6 : ui32, handshake.name = "br16"} : <i32>
    %102 = br %result_40 {handshake.bb = 6 : ui32, handshake.name = "br17"} : <>
    %103 = mux %107#0 [%falseResult_33, %falseResult_61] {handshake.bb = 7 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %104 = mux %107#1 [%falseResult_37, %falseResult_57] {handshake.bb = 7 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %105:2 = fork [2] %104 {handshake.bb = 7 : ui32, handshake.name = "fork19"} : <i32>
    %106 = mux %107#2 [%falseResult_35, %falseResult_59] {handshake.bb = 7 : ui32, handshake.name = "mux11"} : <i1>, <i32>
    %result_42, %index_43 = control_merge %falseResult_39, %falseResult_63  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %107:3 = fork [3] %index_43 {handshake.bb = 7 : ui32, handshake.name = "fork20"} : <i1>
    %108 = source {handshake.bb = 7 : ui32, handshake.name = "source9"} : <>
    %109 = constant %108 {handshake.bb = 7 : ui32, handshake.name = "constant25", value = false} : <>, <i1>
    %110 = extsi %109 {handshake.bb = 7 : ui32, handshake.name = "extsi11"} : <i1> to <i32>
    %111 = cmpi ne, %105#1, %110 {handshake.bb = 7 : ui32, handshake.name = "cmpi8"} : <i32>
    %112:4 = fork [4] %111 {handshake.bb = 7 : ui32, handshake.name = "fork21"} : <i1>
    %trueResult_44, %falseResult_45 = cond_br %112#3, %103 {handshake.bb = 7 : ui32, handshake.name = "cond_br23"} : <i1>, <i32>
    %trueResult_46, %falseResult_47 = cond_br %112#2, %105#0 {handshake.bb = 7 : ui32, handshake.name = "cond_br24"} : <i1>, <i32>
    sink %falseResult_47 {handshake.name = "sink7"} : <i32>
    %trueResult_48, %falseResult_49 = cond_br %112#1, %106 {handshake.bb = 7 : ui32, handshake.name = "cond_br25"} : <i1>, <i32>
    %trueResult_50, %falseResult_51 = cond_br %112#0, %result_42 {handshake.bb = 7 : ui32, handshake.name = "cond_br26"} : <i1>, <>
    %113 = merge %trueResult_44 {handshake.bb = 8 : ui32, handshake.name = "merge9"} : <i32>
    %114:3 = fork [3] %113 {handshake.bb = 8 : ui32, handshake.name = "fork22"} : <i32>
    %115 = merge %trueResult_46 {handshake.bb = 8 : ui32, handshake.name = "merge10"} : <i32>
    %116:3 = fork [3] %115 {handshake.bb = 8 : ui32, handshake.name = "fork23"} : <i32>
    %117 = merge %trueResult_48 {handshake.bb = 8 : ui32, handshake.name = "merge11"} : <i32>
    %result_52, %index_53 = control_merge %trueResult_50  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    sink %index_53 {handshake.name = "sink8"} : <i1>
    %118 = source {handshake.bb = 8 : ui32, handshake.name = "source10"} : <>
    %119 = constant %118 {handshake.bb = 8 : ui32, handshake.name = "constant26", value = false} : <>, <i1>
    %120 = extsi %119 {handshake.bb = 8 : ui32, handshake.name = "extsi12"} : <i1> to <i32>
    %121:2 = fork [2] %120 {handshake.bb = 8 : ui32, handshake.name = "fork24"} : <i32>
    %122 = subi %116#2, %114#2 {handshake.bb = 8 : ui32, handshake.name = "subi0"} : <i32>
    %123:3 = fork [3] %122 {handshake.bb = 8 : ui32, handshake.name = "fork25"} : <i32>
    %124 = cmpi slt, %116#1, %114#1 {handshake.bb = 8 : ui32, handshake.name = "cmpi9"} : <i32>
    %125 = select %124[%116#0, %114#0] {handshake.bb = 8 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %126 = cmpi sge, %123#2, %121#0 {handshake.bb = 8 : ui32, handshake.name = "cmpi10"} : <i32>
    %127 = subi %121#1, %123#1 {handshake.bb = 8 : ui32, handshake.name = "subi2"} : <i32>
    %128 = select %126[%123#0, %127] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %129 = br %128 {handshake.bb = 8 : ui32, handshake.name = "br18"} : <i32>
    %130 = br %117 {handshake.bb = 8 : ui32, handshake.name = "br19"} : <i32>
    %131 = br %125 {handshake.bb = 8 : ui32, handshake.name = "br20"} : <i32>
    %132 = br %result_52 {handshake.bb = 8 : ui32, handshake.name = "br21"} : <>
    %133 = mux %138#0 [%129, %158] {handshake.bb = 9 : ui32, handshake.name = "mux12"} : <i1>, <i32>
    %134:3 = fork [3] %133 {handshake.bb = 9 : ui32, handshake.name = "fork26"} : <i32>
    %135 = trunci %134#0 {handshake.bb = 9 : ui32, handshake.name = "trunci3"} : <i32> to <i2>
    %136 = mux %138#1 [%130, %159] {handshake.bb = 9 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %137 = mux %138#2 [%131, %160] {handshake.bb = 9 : ui32, handshake.name = "mux14"} : <i1>, <i32>
    %result_54, %index_55 = control_merge %132, %161  {handshake.bb = 9 : ui32, handshake.name = "control_merge8"} : <>, <i1>
    %138:3 = fork [3] %index_55 {handshake.bb = 9 : ui32, handshake.name = "fork27"} : <i1>
    %139 = source {handshake.bb = 9 : ui32, handshake.name = "source11"} : <>
    %140 = constant %139 {handshake.bb = 9 : ui32, handshake.name = "constant27", value = 1 : i2} : <>, <i2>
    %141 = source {handshake.bb = 9 : ui32, handshake.name = "source12"} : <>
    %142 = constant %141 {handshake.bb = 9 : ui32, handshake.name = "constant28", value = false} : <>, <i1>
    %143:2 = fork [2] %142 {handshake.bb = 9 : ui32, handshake.name = "fork28"} : <i1>
    %144 = extsi %143#0 {handshake.bb = 9 : ui32, handshake.name = "extsi20"} : <i1> to <i2>
    %145 = extsi %143#1 {handshake.bb = 9 : ui32, handshake.name = "extsi14"} : <i1> to <i32>
    %146 = cmpi sgt, %134#2, %145 {handshake.bb = 9 : ui32, handshake.name = "cmpi11"} : <i32>
    %147 = andi %135, %140 {handshake.bb = 9 : ui32, handshake.name = "andi6"} : <i2>
    %148 = cmpi eq, %147, %144 {handshake.bb = 9 : ui32, handshake.name = "cmpi12"} : <i2>
    %149 = andi %146, %148 {handshake.bb = 9 : ui32, handshake.name = "andi7"} : <i1>
    %150:4 = fork [4] %149 {handshake.bb = 9 : ui32, handshake.name = "fork29"} : <i1>
    %trueResult_56, %falseResult_57 = cond_br %150#3, %134#1 {handshake.bb = 9 : ui32, handshake.name = "cond_br27"} : <i1>, <i32>
    %trueResult_58, %falseResult_59 = cond_br %150#2, %136 {handshake.bb = 9 : ui32, handshake.name = "cond_br28"} : <i1>, <i32>
    %trueResult_60, %falseResult_61 = cond_br %150#1, %137 {handshake.bb = 9 : ui32, handshake.name = "cond_br29"} : <i1>, <i32>
    %trueResult_62, %falseResult_63 = cond_br %150#0, %result_54 {handshake.bb = 9 : ui32, handshake.name = "cond_br30"} : <i1>, <>
    %151 = merge %trueResult_56 {handshake.bb = 10 : ui32, handshake.name = "merge12"} : <i32>
    %152 = merge %trueResult_58 {handshake.bb = 10 : ui32, handshake.name = "merge13"} : <i32>
    %153 = merge %trueResult_60 {handshake.bb = 10 : ui32, handshake.name = "merge14"} : <i32>
    %result_64, %index_65 = control_merge %trueResult_62  {handshake.bb = 10 : ui32, handshake.name = "control_merge9"} : <>, <i1>
    sink %index_65 {handshake.name = "sink9"} : <i1>
    %154 = source {handshake.bb = 10 : ui32, handshake.name = "source13"} : <>
    %155 = constant %154 {handshake.bb = 10 : ui32, handshake.name = "constant29", value = 1 : i2} : <>, <i2>
    %156 = extsi %155 {handshake.bb = 10 : ui32, handshake.name = "extsi15"} : <i2> to <i32>
    %157 = shrsi %151, %156 {handshake.bb = 10 : ui32, handshake.name = "shrsi4"} : <i32>
    %158 = br %157 {handshake.bb = 10 : ui32, handshake.name = "br22"} : <i32>
    %159 = br %152 {handshake.bb = 10 : ui32, handshake.name = "br23"} : <i32>
    %160 = br %153 {handshake.bb = 10 : ui32, handshake.name = "br24"} : <i32>
    %161 = br %result_64 {handshake.bb = 10 : ui32, handshake.name = "br25"} : <>
    %162 = merge %falseResult_49 {handshake.bb = 11 : ui32, handshake.name = "merge15"} : <i32>
    %163 = merge %falseResult_45 {handshake.bb = 11 : ui32, handshake.name = "merge16"} : <i32>
    %result_66, %index_67 = control_merge %falseResult_51  {handshake.bb = 11 : ui32, handshake.name = "control_merge10"} : <>, <i1>
    sink %index_67 {handshake.name = "sink10"} : <i1>
    %164 = shli %163, %162 {handshake.bb = 11 : ui32, handshake.name = "shli0"} : <i32>
    %165 = br %164 {handshake.bb = 11 : ui32, handshake.name = "br26"} : <i32>
    %166 = br %result_66 {handshake.bb = 11 : ui32, handshake.name = "br27"} : <>
    %167 = mux %index_69 [%falseResult_7, %165] {handshake.bb = 12 : ui32, handshake.name = "mux15"} : <i1>, <i32>
    %result_68, %index_69 = control_merge %falseResult_5, %166  {handshake.bb = 12 : ui32, handshake.name = "control_merge11"} : <>, <i1>
    sink %result_68 {handshake.name = "sink11"} : <>
    end {handshake.bb = 12 : ui32, handshake.name = "end0"} %167, %0#1 : <i32>, <>
  }
}


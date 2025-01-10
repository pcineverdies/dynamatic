module {
  handshake.func @gcd(%arg0: !handshake.channel<i32>, %arg1: !handshake.channel<i32>, %arg2: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>) attributes {argNames = ["a", "b", "start"], cfg.edges = "[0,1,12,andi0][7,8,11,cmpi8][2,1][9,10,7,andi7][4,3][11,12][6,5][1,2,3,cmpi3][8,9][3,4,5,andi3][10,9][5,6,7,andi5]", resNames = ["out0", "end"]} {
    %0:7 = fork [7] %arg2 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %1:3 = fork [3] %arg1 {handshake.bb = 0 : ui32, handshake.name = "fork1"} : <i32>
    %2:3 = fork [3] %arg0 {handshake.bb = 0 : ui32, handshake.name = "fork2"} : <i32>
    %3 = cmpi eq, %2#2, %14#0 {handshake.bb = 0 : ui32, handshake.name = "cmpi0"} : <i32>
    %4 = cmpi ne, %2#1, %14#1 {handshake.bb = 0 : ui32, handshake.name = "cmpi1"} : <i32>
    %5 = select %3[%1#2, %12] {handshake.bb = 0 : ui32, handshake.name = "select0"} : <i1>, <i32>
    %6 = cmpi ne, %1#1, %14#2 {handshake.bb = 0 : ui32, handshake.name = "cmpi2"} : <i32>
    %7 = andi %4, %6 {handshake.bb = 0 : ui32, handshake.name = "andi0"} : <i1>
    %8:4 = fork [4] %7 {handshake.bb = 0 : ui32, handshake.name = "fork3"} : <i1>
    %trueResult, %falseResult = cond_br %8#0, %11#0 {handshake.bb = 1 : ui32, handshake.name = "cond_br96"} : <i1>, <i1>
    sink %falseResult {handshake.name = "sink0"} : <i1>
    %9 = extsi %trueResult {handshake.bb = 1 : ui32, handshake.name = "extsi16"} : <i1> to <i32>
    %10 = constant %0#6 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %11:4 = fork [4] %10 {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i1>
    %12 = extsi %11#1 {handshake.bb = 1 : ui32, handshake.name = "extsi0"} : <i1> to <i32>
    %13 = extsi %11#2 {handshake.bb = 1 : ui32, handshake.name = "extsi1"} : <i1> to <i32>
    %14:3 = fork [3] %13 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i32>
    %15 = merge %11#3, %31#0 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %16:4 = fork [4] %15 {handshake.bb = 1 : ui32, handshake.name = "fork6"} : <i1>
    %17 = mux %16#3 [%83#1, %32#1] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %18:3 = fork [3] %17 {handshake.bb = 1 : ui32, handshake.name = "fork7"} : <>
    %19 = mux %16#2 [%2#0, %36] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %20:2 = fork [2] %19 {handshake.bb = 1 : ui32, handshake.name = "fork8"} : <i32>
    %21 = mux %16#1 [%1#0, %37] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %22:2 = fork [2] %21 {handshake.bb = 1 : ui32, handshake.name = "fork9"} : <i32>
    %23 = mux %16#0 [%9, %38] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %24 = constant %18#1 {handshake.bb = 1 : ui32, handshake.name = "constant16", value = 1 : i2} : <>, <i2>
    %25 = constant %18#0 {handshake.bb = 1 : ui32, handshake.name = "constant17", value = false} : <>, <i1>
    %26 = extsi %25 {handshake.bb = 1 : ui32, handshake.name = "extsi17"} : <i1> to <i2>
    %27 = ori %20#1, %22#1 {handshake.bb = 1 : ui32, handshake.name = "ori0"} : <i32>
    %28 = trunci %27 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i32> to <i2>
    %29 = andi %28, %24 {handshake.bb = 1 : ui32, handshake.name = "andi1"} : <i2>
    %30 = cmpi eq, %29, %26 {handshake.bb = 1 : ui32, handshake.name = "cmpi3"} : <i2>
    %31:5 = fork [5] %30 {handshake.bb = 1 : ui32, handshake.name = "fork10"} : <i1>
    %trueResult_0, %falseResult_1 = cond_br %31#1, %23 {handshake.bb = 2 : ui32, handshake.name = "cond_br97"} : <i1>, <i32>
    %trueResult_2, %falseResult_3 = cond_br %31#2, %22#0 {handshake.bb = 2 : ui32, handshake.name = "cond_br98"} : <i1>, <i32>
    %trueResult_4, %falseResult_5 = cond_br %31#3, %20#0 {handshake.bb = 2 : ui32, handshake.name = "cond_br99"} : <i1>, <i32>
    %trueResult_6, %falseResult_7 = cond_br %31#4, %18#2 {handshake.bb = 2 : ui32, handshake.name = "cond_br100"} : <i1>, <>
    sink %falseResult_7 {handshake.name = "sink1"} : <>
    %32:2 = fork [2] %trueResult_6 {handshake.bb = 2 : ui32, handshake.name = "fork11"} : <>
    %33 = constant %32#0 {handshake.bb = 2 : ui32, handshake.name = "constant18", value = 1 : i2} : <>, <i2>
    %34 = extsi %33 {handshake.bb = 2 : ui32, handshake.name = "extsi4"} : <i2> to <i32>
    %35:3 = fork [3] %34 {handshake.bb = 2 : ui32, handshake.name = "fork12"} : <i32>
    %36 = shrsi %trueResult_4, %35#0 {handshake.bb = 2 : ui32, handshake.name = "shrsi0"} : <i32>
    %37 = shrsi %trueResult_2, %35#1 {handshake.bb = 2 : ui32, handshake.name = "shrsi1"} : <i32>
    %38 = addi %trueResult_0, %35#2 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %39 = constant %0#5 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant24", value = false} : <>, <i1>
    %40 = merge %39, %56#2 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge6"} : <i1>
    %41:2 = fork [2] %40 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i1>
    %42 = mux %41#1 [%83#2, %57#1] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <>
    %43:3 = fork [3] %42 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <>
    %44 = mux %41#0 [%falseResult_5, %60] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %45:3 = fork [3] %44 {handshake.bb = 3 : ui32, handshake.name = "fork15"} : <i32>
    %46 = trunci %45#0 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i32> to <i2>
    %47 = constant %43#1 {handshake.bb = 3 : ui32, handshake.name = "constant19", value = 1 : i2} : <>, <i2>
    %48 = constant %43#0 {handshake.bb = 3 : ui32, handshake.name = "constant20", value = false} : <>, <i1>
    %49:2 = fork [2] %48 {handshake.bb = 3 : ui32, handshake.name = "fork16"} : <i1>
    %50 = extsi %49#0 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i1> to <i2>
    %51 = extsi %49#1 {handshake.bb = 3 : ui32, handshake.name = "extsi6"} : <i1> to <i32>
    %52 = cmpi sgt, %45#2, %51 {handshake.bb = 3 : ui32, handshake.name = "cmpi4"} : <i32>
    %53 = andi %46, %47 {handshake.bb = 3 : ui32, handshake.name = "andi2"} : <i2>
    %54 = cmpi eq, %53, %50 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i2>
    %55 = andi %52, %54 {handshake.bb = 3 : ui32, handshake.name = "andi3"} : <i1>
    %56:3 = fork [3] %55 {handshake.bb = 3 : ui32, handshake.name = "fork17"} : <i1>
    %trueResult_8, %falseResult_9 = cond_br %56#1, %45#1 {handshake.bb = 4 : ui32, handshake.name = "cond_br101"} : <i1>, <i32>
    %trueResult_10, %falseResult_11 = cond_br %56#0, %43#2 {handshake.bb = 4 : ui32, handshake.name = "cond_br102"} : <i1>, <>
    sink %falseResult_11 {handshake.name = "sink2"} : <>
    %57:2 = fork [2] %trueResult_10 {handshake.bb = 4 : ui32, handshake.name = "fork18"} : <>
    %58 = constant %57#0 {handshake.bb = 4 : ui32, handshake.name = "constant21", value = 1 : i2} : <>, <i2>
    %59 = extsi %58 {handshake.bb = 4 : ui32, handshake.name = "extsi7"} : <i2> to <i32>
    %60 = shrsi %trueResult_8, %59 {handshake.bb = 4 : ui32, handshake.name = "shrsi2"} : <i32>
    %61 = constant %0#4 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant29", value = false} : <>, <i1>
    %62 = merge %61, %78#2 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge10"} : <i1>
    %63:2 = fork [2] %62 {handshake.bb = 5 : ui32, handshake.name = "fork19"} : <i1>
    %64 = mux %63#1 [%83#3, %79#1] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux12"} : <i1>, <>
    %65:3 = fork [3] %64 {handshake.bb = 5 : ui32, handshake.name = "fork20"} : <>
    %66 = mux %63#0 [%falseResult_3, %82] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %67:3 = fork [3] %66 {handshake.bb = 5 : ui32, handshake.name = "fork21"} : <i32>
    %68 = trunci %67#0 {handshake.bb = 5 : ui32, handshake.name = "trunci2"} : <i32> to <i2>
    %69 = constant %65#1 {handshake.bb = 5 : ui32, handshake.name = "constant22", value = 1 : i2} : <>, <i2>
    %70 = constant %65#0 {handshake.bb = 5 : ui32, handshake.name = "constant23", value = false} : <>, <i1>
    %71:2 = fork [2] %70 {handshake.bb = 5 : ui32, handshake.name = "fork22"} : <i1>
    %72 = extsi %71#0 {handshake.bb = 5 : ui32, handshake.name = "extsi19"} : <i1> to <i2>
    %73 = extsi %71#1 {handshake.bb = 5 : ui32, handshake.name = "extsi9"} : <i1> to <i32>
    %74 = cmpi sgt, %67#2, %73 {handshake.bb = 5 : ui32, handshake.name = "cmpi6"} : <i32>
    %75 = andi %68, %69 {handshake.bb = 5 : ui32, handshake.name = "andi4"} : <i2>
    %76 = cmpi eq, %75, %72 {handshake.bb = 5 : ui32, handshake.name = "cmpi7"} : <i2>
    %77 = andi %74, %76 {handshake.bb = 5 : ui32, handshake.name = "andi5"} : <i1>
    %78:3 = fork [3] %77 {handshake.bb = 5 : ui32, handshake.name = "fork23"} : <i1>
    %trueResult_12, %falseResult_13 = cond_br %78#1, %67#1 {handshake.bb = 6 : ui32, handshake.name = "cond_br103"} : <i1>, <i32>
    %trueResult_14, %falseResult_15 = cond_br %78#0, %65#2 {handshake.bb = 6 : ui32, handshake.name = "cond_br104"} : <i1>, <>
    sink %falseResult_15 {handshake.name = "sink3"} : <>
    %79:2 = fork [2] %trueResult_14 {handshake.bb = 6 : ui32, handshake.name = "fork24"} : <>
    %80 = constant %79#0 {handshake.bb = 6 : ui32, handshake.name = "constant25", value = 1 : i2} : <>, <i2>
    %81 = extsi %80 {handshake.bb = 6 : ui32, handshake.name = "extsi10"} : <i2> to <i32>
    %82 = shrsi %trueResult_12, %81 {handshake.bb = 6 : ui32, handshake.name = "shrsi3"} : <i32>
    %trueResult_16, %falseResult_17 = cond_br %8#3, %0#3 {handshake.bb = 7 : ui32, handshake.name = "cond_br105"} : <i1>, <>
    sink %falseResult_17 {handshake.name = "sink4"} : <>
    %83:4 = fork [4] %trueResult_16 {handshake.bb = 7 : ui32, handshake.name = "fork25"} : <>
    %84 = constant %0#2 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "constant34", value = false} : <>, <i1>
    %85 = merge %84, %95#3 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "merge14"} : <i1>
    %86:3 = fork [3] %85 {handshake.bb = 7 : ui32, handshake.name = "fork26"} : <i1>
    %87 = mux %86#2 [%83#0, %108#2] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux14"} : <i1>, <>
    %88:2 = fork [2] %87 {handshake.bb = 7 : ui32, handshake.name = "fork27"} : <>
    %89 = mux %86#1 [%falseResult_9, %falseResult_25] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux19"} : <i1>, <i32>
    %90:2 = fork [2] %89 {handshake.bb = 7 : ui32, handshake.name = "fork28"} : <i32>
    %91 = mux %86#0 [%falseResult_13, %104] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux20"} : <i1>, <i32>
    %92 = constant %88#0 {handshake.bb = 7 : ui32, handshake.name = "constant26", value = false} : <>, <i1>
    %93 = extsi %92 {handshake.bb = 7 : ui32, handshake.name = "extsi11"} : <i1> to <i32>
    %94 = cmpi ne, %90#1, %93 {handshake.bb = 7 : ui32, handshake.name = "cmpi8"} : <i32>
    %95:4 = fork [4] %94 {handshake.bb = 7 : ui32, handshake.name = "fork29"} : <i1>
    %trueResult_18, %falseResult_19 = cond_br %95#2, %90#0 {handshake.bb = 8 : ui32, handshake.name = "cond_br106"} : <i1>, <i32>
    sink %falseResult_19 {handshake.name = "sink5"} : <i32>
    %96:3 = fork [3] %trueResult_18 {handshake.bb = 8 : ui32, handshake.name = "fork30"} : <i32>
    %trueResult_20, %falseResult_21 = cond_br %95#1, %91 {handshake.bb = 8 : ui32, handshake.name = "cond_br107"} : <i1>, <i32>
    %97:3 = fork [3] %trueResult_20 {handshake.bb = 8 : ui32, handshake.name = "fork31"} : <i32>
    %98 = constant %108#0 {handshake.bb = 8 : ui32, handshake.name = "constant27", value = false} : <>, <i1>
    %99 = extsi %98 {handshake.bb = 8 : ui32, handshake.name = "extsi12"} : <i1> to <i32>
    %100:2 = fork [2] %99 {handshake.bb = 8 : ui32, handshake.name = "fork32"} : <i32>
    %101 = subi %96#2, %97#2 {handshake.bb = 8 : ui32, handshake.name = "subi0"} : <i32>
    %102:3 = fork [3] %101 {handshake.bb = 8 : ui32, handshake.name = "fork33"} : <i32>
    %103 = cmpi slt, %96#1, %97#1 {handshake.bb = 8 : ui32, handshake.name = "cmpi9"} : <i32>
    %104 = select %103[%96#0, %97#0] {handshake.bb = 8 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %105 = cmpi sge, %102#2, %100#0 {handshake.bb = 8 : ui32, handshake.name = "cmpi10"} : <i32>
    %106 = subi %100#1, %102#1 {handshake.bb = 8 : ui32, handshake.name = "subi2"} : <i32>
    %107 = select %105[%102#0, %106] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %trueResult_22, %falseResult_23 = cond_br %95#0, %88#1 {handshake.bb = 9 : ui32, handshake.name = "cond_br108"} : <i1>, <>
    sink %falseResult_23 {handshake.name = "sink6"} : <>
    %108:3 = fork [3] %trueResult_22 {handshake.bb = 9 : ui32, handshake.name = "fork34"} : <>
    %109 = constant %0#1 {ftd.imerge, handshake.bb = 9 : ui32, handshake.name = "constant43", value = false} : <>, <i1>
    %110 = merge %109, %126#2 {ftd.imerge, handshake.bb = 9 : ui32, handshake.name = "merge21"} : <i1>
    %111:2 = fork [2] %110 {handshake.bb = 9 : ui32, handshake.name = "fork35"} : <i1>
    %112 = mux %111#1 [%108#1, %127#1] {ftd.regen, handshake.bb = 9 : ui32, handshake.name = "mux21"} : <i1>, <>
    %113:3 = fork [3] %112 {handshake.bb = 9 : ui32, handshake.name = "fork36"} : <>
    %114 = mux %111#0 [%107, %130] {ftd.phi, handshake.bb = 9 : ui32, handshake.name = "mux24"} : <i1>, <i32>
    %115:3 = fork [3] %114 {handshake.bb = 9 : ui32, handshake.name = "fork37"} : <i32>
    %116 = trunci %115#0 {handshake.bb = 9 : ui32, handshake.name = "trunci3"} : <i32> to <i2>
    %117 = constant %113#1 {handshake.bb = 9 : ui32, handshake.name = "constant28", value = 1 : i2} : <>, <i2>
    %118 = constant %113#0 {handshake.bb = 9 : ui32, handshake.name = "constant30", value = false} : <>, <i1>
    %119:2 = fork [2] %118 {handshake.bb = 9 : ui32, handshake.name = "fork38"} : <i1>
    %120 = extsi %119#0 {handshake.bb = 9 : ui32, handshake.name = "extsi20"} : <i1> to <i2>
    %121 = extsi %119#1 {handshake.bb = 9 : ui32, handshake.name = "extsi14"} : <i1> to <i32>
    %122 = cmpi sgt, %115#2, %121 {handshake.bb = 9 : ui32, handshake.name = "cmpi11"} : <i32>
    %123 = andi %116, %117 {handshake.bb = 9 : ui32, handshake.name = "andi6"} : <i2>
    %124 = cmpi eq, %123, %120 {handshake.bb = 9 : ui32, handshake.name = "cmpi12"} : <i2>
    %125 = andi %122, %124 {handshake.bb = 9 : ui32, handshake.name = "andi7"} : <i1>
    %126:3 = fork [3] %125 {handshake.bb = 9 : ui32, handshake.name = "fork39"} : <i1>
    %trueResult_24, %falseResult_25 = cond_br %126#1, %115#1 {handshake.bb = 10 : ui32, handshake.name = "cond_br109"} : <i1>, <i32>
    %trueResult_26, %falseResult_27 = cond_br %126#0, %113#2 {handshake.bb = 10 : ui32, handshake.name = "cond_br110"} : <i1>, <>
    sink %falseResult_27 {handshake.name = "sink7"} : <>
    %127:2 = fork [2] %trueResult_26 {handshake.bb = 10 : ui32, handshake.name = "fork40"} : <>
    %128 = constant %127#0 {handshake.bb = 10 : ui32, handshake.name = "constant31", value = 1 : i2} : <>, <i2>
    %129 = extsi %128 {handshake.bb = 10 : ui32, handshake.name = "extsi15"} : <i2> to <i32>
    %130 = shrsi %trueResult_24, %129 {handshake.bb = 10 : ui32, handshake.name = "shrsi4"} : <i32>
    %131 = shli %falseResult_21, %falseResult_1 {handshake.bb = 11 : ui32, handshake.name = "shli0"} : <i32>
    %trueResult_28, %falseResult_29 = cond_br %8#2, %5 {handshake.bb = 12 : ui32, handshake.name = "cond_br95"} : <i1>, <i32>
    sink %trueResult_28 {handshake.name = "sink8"} : <i32>
    %132 = mux %8#1 [%falseResult_29, %131] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux25"} : <i1>, <i32>
    end {handshake.bb = 12 : ui32, handshake.name = "end0"} %132, %0#0 : <i32>, <>
  }
}


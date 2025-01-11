module {
  handshake.func @gcd(%arg0: !handshake.channel<i32>, %arg1: !handshake.channel<i32>, %arg2: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>) attributes {argNames = ["a", "b", "start"], cfg.edges = "[0,1,12,andi0][7,8,11,cmpi8][2,1][9,10,7,andi7][4,3][11,12][6,5][1,2,3,cmpi3][8,9][3,4,5,andi3][10,9][5,6,7,andi5]", resNames = ["out0", "end"]} {
    %0:6 = fork [6] %arg2 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %1:3 = fork [3] %arg1 {handshake.bb = 0 : ui32, handshake.name = "fork1"} : <i32>
    %2:3 = fork [3] %arg0 {handshake.bb = 0 : ui32, handshake.name = "fork2"} : <i32>
    %3 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %4 = constant %3 {handshake.bb = 0 : ui32, handshake.name = "constant16", value = false} : <>, <i1>
    %5:2 = fork [2] %4 {handshake.bb = 0 : ui32, handshake.name = "fork3"} : <i1>
    %6 = extsi %5#1 {handshake.bb = 0 : ui32, handshake.name = "extsi0"} : <i1> to <i32>
    %7:3 = fork [3] %6 {handshake.bb = 0 : ui32, handshake.name = "fork4"} : <i32>
    %8 = cmpi eq, %2#2, %7#0 {handshake.bb = 0 : ui32, handshake.name = "cmpi0"} : <i32>
    %9 = cmpi ne, %2#1, %7#1 {handshake.bb = 0 : ui32, handshake.name = "cmpi1"} : <i32>
    %10 = select %8[%1#2, %17] {handshake.bb = 0 : ui32, handshake.name = "select0"} : <i1>, <i32>
    %11 = cmpi ne, %1#1, %7#2 {handshake.bb = 0 : ui32, handshake.name = "cmpi2"} : <i32>
    %12 = andi %9, %11 {handshake.bb = 0 : ui32, handshake.name = "andi0"} : <i1>
    %13:3 = fork [3] %12 {handshake.bb = 0 : ui32, handshake.name = "fork5"} : <i1>
    %trueResult, %falseResult = cond_br %13#0, %5#0 {handshake.bb = 1 : ui32, handshake.name = "cond_br57"} : <i1>, <i1>
    sink %falseResult {handshake.name = "sink0"} : <i1>
    %14 = extsi %trueResult {handshake.bb = 1 : ui32, handshake.name = "extsi16"} : <i1> to <i32>
    %15 = constant %0#5 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %16:2 = fork [2] %15 {handshake.bb = 1 : ui32, handshake.name = "fork6"} : <i1>
    %17 = extsi %16#0 {handshake.bb = 1 : ui32, handshake.name = "extsi1"} : <i1> to <i32>
    %18 = mux %21#2 [%2#0, %39] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %19:2 = fork [2] %18 {handshake.bb = 1 : ui32, handshake.name = "fork7"} : <i32>
    %20 = merge %16#1, %34#0 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %21:3 = fork [3] %20 {handshake.bb = 1 : ui32, handshake.name = "fork8"} : <i1>
    %22 = mux %21#1 [%1#0, %40] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %23:2 = fork [2] %22 {handshake.bb = 1 : ui32, handshake.name = "fork9"} : <i32>
    %24 = mux %21#0 [%14, %41] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %25 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %26 = constant %25 {handshake.bb = 1 : ui32, handshake.name = "constant17", value = 1 : i2} : <>, <i2>
    %27 = source {handshake.bb = 1 : ui32, handshake.name = "source2"} : <>
    %28 = constant %27 {handshake.bb = 1 : ui32, handshake.name = "constant18", value = false} : <>, <i1>
    %29 = extsi %28 {handshake.bb = 1 : ui32, handshake.name = "extsi17"} : <i1> to <i2>
    %30 = ori %19#1, %23#1 {handshake.bb = 1 : ui32, handshake.name = "ori0"} : <i32>
    %31 = trunci %30 {handshake.bb = 1 : ui32, handshake.name = "trunci0"} : <i32> to <i2>
    %32 = andi %31, %26 {handshake.bb = 1 : ui32, handshake.name = "andi1"} : <i2>
    %33 = cmpi eq, %32, %29 {handshake.bb = 1 : ui32, handshake.name = "cmpi3"} : <i2>
    %34:4 = fork [4] %33 {handshake.bb = 1 : ui32, handshake.name = "fork10"} : <i1>
    %trueResult_0, %falseResult_1 = cond_br %34#1, %24 {handshake.bb = 2 : ui32, handshake.name = "cond_br58"} : <i1>, <i32>
    %trueResult_2, %falseResult_3 = cond_br %34#2, %23#0 {handshake.bb = 2 : ui32, handshake.name = "cond_br59"} : <i1>, <i32>
    %trueResult_4, %falseResult_5 = cond_br %34#3, %19#0 {handshake.bb = 2 : ui32, handshake.name = "cond_br60"} : <i1>, <i32>
    %35 = source {handshake.bb = 2 : ui32, handshake.name = "source6"} : <>
    %36 = constant %35 {handshake.bb = 2 : ui32, handshake.name = "constant19", value = 1 : i2} : <>, <i2>
    %37 = extsi %36 {handshake.bb = 2 : ui32, handshake.name = "extsi4"} : <i2> to <i32>
    %38:3 = fork [3] %37 {handshake.bb = 2 : ui32, handshake.name = "fork11"} : <i32>
    %39 = shrsi %trueResult_4, %38#0 {handshake.bb = 2 : ui32, handshake.name = "shrsi0"} : <i32>
    %40 = shrsi %trueResult_2, %38#1 {handshake.bb = 2 : ui32, handshake.name = "shrsi1"} : <i32>
    %41 = addi %trueResult_0, %38#2 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %42 = constant %0#4 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant21", value = false} : <>, <i1>
    %43 = mux %46 [%falseResult_5, %62] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %44:3 = fork [3] %43 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i32>
    %45 = trunci %44#0 {handshake.bb = 3 : ui32, handshake.name = "trunci1"} : <i32> to <i2>
    %46 = merge %42, %58#1 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge3"} : <i1>
    %47 = source {handshake.bb = 3 : ui32, handshake.name = "source7"} : <>
    %48 = constant %47 {handshake.bb = 3 : ui32, handshake.name = "constant20", value = 1 : i2} : <>, <i2>
    %49 = source {handshake.bb = 3 : ui32, handshake.name = "source8"} : <>
    %50 = constant %49 {handshake.bb = 3 : ui32, handshake.name = "constant22", value = false} : <>, <i1>
    %51:2 = fork [2] %50 {handshake.bb = 3 : ui32, handshake.name = "fork13"} : <i1>
    %52 = extsi %51#0 {handshake.bb = 3 : ui32, handshake.name = "extsi18"} : <i1> to <i2>
    %53 = extsi %51#1 {handshake.bb = 3 : ui32, handshake.name = "extsi6"} : <i1> to <i32>
    %54 = cmpi sgt, %44#2, %53 {handshake.bb = 3 : ui32, handshake.name = "cmpi4"} : <i32>
    %55 = andi %45, %48 {handshake.bb = 3 : ui32, handshake.name = "andi2"} : <i2>
    %56 = cmpi eq, %55, %52 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i2>
    %57 = andi %54, %56 {handshake.bb = 3 : ui32, handshake.name = "andi3"} : <i1>
    %58:2 = fork [2] %57 {handshake.bb = 3 : ui32, handshake.name = "fork14"} : <i1>
    %trueResult_6, %falseResult_7 = cond_br %58#0, %44#1 {handshake.bb = 4 : ui32, handshake.name = "cond_br61"} : <i1>, <i32>
    %59 = source {handshake.bb = 4 : ui32, handshake.name = "source10"} : <>
    %60 = constant %59 {handshake.bb = 4 : ui32, handshake.name = "constant24", value = 1 : i2} : <>, <i2>
    %61 = extsi %60 {handshake.bb = 4 : ui32, handshake.name = "extsi7"} : <i2> to <i32>
    %62 = shrsi %trueResult_6, %61 {handshake.bb = 4 : ui32, handshake.name = "shrsi2"} : <i32>
    %63 = constant %0#3 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant23", value = false} : <>, <i1>
    %64 = mux %67 [%falseResult_3, %83] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %65:3 = fork [3] %64 {handshake.bb = 5 : ui32, handshake.name = "fork15"} : <i32>
    %66 = trunci %65#0 {handshake.bb = 5 : ui32, handshake.name = "trunci2"} : <i32> to <i2>
    %67 = merge %63, %79#1 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge4"} : <i1>
    %68 = source {handshake.bb = 5 : ui32, handshake.name = "source11"} : <>
    %69 = constant %68 {handshake.bb = 5 : ui32, handshake.name = "constant26", value = 1 : i2} : <>, <i2>
    %70 = source {handshake.bb = 5 : ui32, handshake.name = "source12"} : <>
    %71 = constant %70 {handshake.bb = 5 : ui32, handshake.name = "constant27", value = false} : <>, <i1>
    %72:2 = fork [2] %71 {handshake.bb = 5 : ui32, handshake.name = "fork16"} : <i1>
    %73 = extsi %72#0 {handshake.bb = 5 : ui32, handshake.name = "extsi19"} : <i1> to <i2>
    %74 = extsi %72#1 {handshake.bb = 5 : ui32, handshake.name = "extsi9"} : <i1> to <i32>
    %75 = cmpi sgt, %65#2, %74 {handshake.bb = 5 : ui32, handshake.name = "cmpi6"} : <i32>
    %76 = andi %66, %69 {handshake.bb = 5 : ui32, handshake.name = "andi4"} : <i2>
    %77 = cmpi eq, %76, %73 {handshake.bb = 5 : ui32, handshake.name = "cmpi7"} : <i2>
    %78 = andi %75, %77 {handshake.bb = 5 : ui32, handshake.name = "andi5"} : <i1>
    %79:2 = fork [2] %78 {handshake.bb = 5 : ui32, handshake.name = "fork17"} : <i1>
    %trueResult_8, %falseResult_9 = cond_br %79#0, %65#1 {handshake.bb = 6 : ui32, handshake.name = "cond_br62"} : <i1>, <i32>
    %80 = source {handshake.bb = 6 : ui32, handshake.name = "source14"} : <>
    %81 = constant %80 {handshake.bb = 6 : ui32, handshake.name = "constant28", value = 1 : i2} : <>, <i2>
    %82 = extsi %81 {handshake.bb = 6 : ui32, handshake.name = "extsi10"} : <i2> to <i32>
    %83 = shrsi %trueResult_8, %82 {handshake.bb = 6 : ui32, handshake.name = "shrsi3"} : <i32>
    %84 = constant %0#2 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "constant25", value = false} : <>, <i1>
    %85 = mux %88#1 [%falseResult_7, %falseResult_15] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %86:2 = fork [2] %85 {handshake.bb = 7 : ui32, handshake.name = "fork18"} : <i32>
    %87 = merge %84, %94#2 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "merge5"} : <i1>
    %88:2 = fork [2] %87 {handshake.bb = 7 : ui32, handshake.name = "fork19"} : <i1>
    %89 = mux %88#0 [%falseResult_9, %104] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %90 = source {handshake.bb = 7 : ui32, handshake.name = "source15"} : <>
    %91 = constant %90 {handshake.bb = 7 : ui32, handshake.name = "constant30", value = false} : <>, <i1>
    %92 = extsi %91 {handshake.bb = 7 : ui32, handshake.name = "extsi11"} : <i1> to <i32>
    %93 = cmpi ne, %86#1, %92 {handshake.bb = 7 : ui32, handshake.name = "cmpi8"} : <i32>
    %94:3 = fork [3] %93 {handshake.bb = 7 : ui32, handshake.name = "fork20"} : <i1>
    %trueResult_10, %falseResult_11 = cond_br %94#1, %86#0 {handshake.bb = 8 : ui32, handshake.name = "cond_br63"} : <i1>, <i32>
    sink %falseResult_11 {handshake.name = "sink1"} : <i32>
    %95:3 = fork [3] %trueResult_10 {handshake.bb = 8 : ui32, handshake.name = "fork21"} : <i32>
    %trueResult_12, %falseResult_13 = cond_br %94#0, %89 {handshake.bb = 8 : ui32, handshake.name = "cond_br64"} : <i1>, <i32>
    %96:3 = fork [3] %trueResult_12 {handshake.bb = 8 : ui32, handshake.name = "fork22"} : <i32>
    %97 = source {handshake.bb = 8 : ui32, handshake.name = "source18"} : <>
    %98 = constant %97 {handshake.bb = 8 : ui32, handshake.name = "constant31", value = false} : <>, <i1>
    %99 = extsi %98 {handshake.bb = 8 : ui32, handshake.name = "extsi12"} : <i1> to <i32>
    %100:2 = fork [2] %99 {handshake.bb = 8 : ui32, handshake.name = "fork23"} : <i32>
    %101 = subi %95#2, %96#2 {handshake.bb = 8 : ui32, handshake.name = "subi0"} : <i32>
    %102:3 = fork [3] %101 {handshake.bb = 8 : ui32, handshake.name = "fork24"} : <i32>
    %103 = cmpi slt, %95#1, %96#1 {handshake.bb = 8 : ui32, handshake.name = "cmpi9"} : <i32>
    %104 = select %103[%95#0, %96#0] {handshake.bb = 8 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %105 = cmpi sge, %102#2, %100#0 {handshake.bb = 8 : ui32, handshake.name = "cmpi10"} : <i32>
    %106 = subi %100#1, %102#1 {handshake.bb = 8 : ui32, handshake.name = "subi2"} : <i32>
    %107 = select %105[%102#0, %106] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %108 = constant %0#1 {ftd.imerge, handshake.bb = 9 : ui32, handshake.name = "constant29", value = false} : <>, <i1>
    %109 = mux %112 [%107, %128] {ftd.phi, handshake.bb = 9 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %110:3 = fork [3] %109 {handshake.bb = 9 : ui32, handshake.name = "fork25"} : <i32>
    %111 = trunci %110#0 {handshake.bb = 9 : ui32, handshake.name = "trunci3"} : <i32> to <i2>
    %112 = merge %108, %124#1 {ftd.imerge, handshake.bb = 9 : ui32, handshake.name = "merge7"} : <i1>
    %113 = source {handshake.bb = 9 : ui32, handshake.name = "source19"} : <>
    %114 = constant %113 {handshake.bb = 9 : ui32, handshake.name = "constant32", value = 1 : i2} : <>, <i2>
    %115 = source {handshake.bb = 9 : ui32, handshake.name = "source20"} : <>
    %116 = constant %115 {handshake.bb = 9 : ui32, handshake.name = "constant33", value = false} : <>, <i1>
    %117:2 = fork [2] %116 {handshake.bb = 9 : ui32, handshake.name = "fork26"} : <i1>
    %118 = extsi %117#0 {handshake.bb = 9 : ui32, handshake.name = "extsi20"} : <i1> to <i2>
    %119 = extsi %117#1 {handshake.bb = 9 : ui32, handshake.name = "extsi14"} : <i1> to <i32>
    %120 = cmpi sgt, %110#2, %119 {handshake.bb = 9 : ui32, handshake.name = "cmpi11"} : <i32>
    %121 = andi %111, %114 {handshake.bb = 9 : ui32, handshake.name = "andi6"} : <i2>
    %122 = cmpi eq, %121, %118 {handshake.bb = 9 : ui32, handshake.name = "cmpi12"} : <i2>
    %123 = andi %120, %122 {handshake.bb = 9 : ui32, handshake.name = "andi7"} : <i1>
    %124:2 = fork [2] %123 {handshake.bb = 9 : ui32, handshake.name = "fork27"} : <i1>
    %trueResult_14, %falseResult_15 = cond_br %124#0, %110#1 {handshake.bb = 10 : ui32, handshake.name = "cond_br65"} : <i1>, <i32>
    %125 = source {handshake.bb = 10 : ui32, handshake.name = "source22"} : <>
    %126 = constant %125 {handshake.bb = 10 : ui32, handshake.name = "constant34", value = 1 : i2} : <>, <i2>
    %127 = extsi %126 {handshake.bb = 10 : ui32, handshake.name = "extsi15"} : <i2> to <i32>
    %128 = shrsi %trueResult_14, %127 {handshake.bb = 10 : ui32, handshake.name = "shrsi4"} : <i32>
    %129 = shli %falseResult_13, %falseResult_1 {handshake.bb = 11 : ui32, handshake.name = "shli0"} : <i32>
    %trueResult_16, %falseResult_17 = cond_br %13#2, %10 {handshake.bb = 12 : ui32, handshake.name = "cond_br56"} : <i1>, <i32>
    sink %trueResult_16 {handshake.name = "sink2"} : <i32>
    %130 = mux %13#1 [%falseResult_17, %129] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    end {handshake.bb = 12 : ui32, handshake.name = "end0"} %130, %0#0 : <i32>, <>
  }
}


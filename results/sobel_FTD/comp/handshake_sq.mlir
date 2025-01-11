module {
  handshake.func @sobel(%arg0: memref<256xi32>, %arg1: memref<9xi32>, %arg2: memref<9xi32>, %arg3: memref<256xi32>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["in", "gX", "gY", "out", "in_start", "gX_start", "gY_start", "out_start", "start"], cfg.edges = "[0,1][7,9,8,cmpi4][2,3,12,cmpi3][9,11,10,cmpi6][4,5][11,12][6,4,7,cmpi9][13,1,14,cmpi11][1,2][8,9][3,4][10,11][5,5,6,cmpi8][12,2,13,cmpi10]", resNames = ["out0", "in_end", "gX_end", "gY_end", "out_end", "end"]} {
    %memEnd = mem_controller[%arg3 : memref<256xi32>] %arg7 (%100, %addressResult_43, %dataResult_44) %arg8 {connectedBlocks = [12 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg2 : memref<9xi32>] %arg6 (%addressResult_17) %arg8 {connectedBlocks = [5 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg1 : memref<9xi32>] %arg5 (%addressResult_15) %arg8 {connectedBlocks = [5 : i32], handshake.name = "mem_controller6"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_3, %memEnd_4 = mem_controller[%arg0 : memref<256xi32>] %arg4 (%addressResult) %arg8 {connectedBlocks = [3 : i32], handshake.name = "mem_controller7"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %1 = constant %0 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = 0 : i32} : <>, <i32>
    %2 = source {handshake.bb = 0 : ui32, handshake.name = "source1"} : <>
    %3 = constant %2 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %4 = constant %arg8 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %5 = mux %6 [%1, %trueResult_45] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %6 = merge %4, %119 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %7 = mux %6 [%3, %trueResult_47] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %8 = source {handshake.bb = 1 : ui32, handshake.name = "source2"} : <>
    %9 = constant %8 {handshake.bb = 1 : ui32, handshake.name = "constant10", value = 0 : i32} : <>, <i32>
    %10 = constant %arg8 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %11 = merge %10, %113 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge2"} : <i1>
    %12 = mux %11 [%7, %trueResult_41] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %13 = mux %11 [%5, %trueResult_39] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %14 = mux %11 [%9, %trueResult_37] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %15 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %16 = constant %15 {handshake.bb = 2 : ui32, handshake.name = "constant11", value = 5 : i32} : <>, <i32>
    %17 = source {handshake.bb = 2 : ui32, handshake.name = "source4"} : <>
    %18 = constant %17 {handshake.bb = 2 : ui32, handshake.name = "constant12", value = 0 : i32} : <>, <i32>
    %19 = cmpi eq, %14, %18 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %20 = extui %19 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i1> to <i32>
    %21 = cmpi eq, %14, %16 {handshake.bb = 2 : ui32, handshake.name = "cmpi1"} : <i32>
    %22 = cmpi eq, %20, %18 {handshake.bb = 2 : ui32, handshake.name = "cmpi2"} : <i32>
    %23 = andi %22, %21 {handshake.bb = 2 : ui32, handshake.name = "andi0"} : <i1>
    %24 = ori %19, %23 {handshake.bb = 2 : ui32, handshake.name = "ori0"} : <i1>
    %25 = extsi %24 {handshake.bb = 2 : ui32, handshake.name = "extsi0"} : <i1> to <i32>
    %26 = cmpi eq, %25, %18 {handshake.bb = 2 : ui32, handshake.name = "cmpi3"} : <i32>
    %trueResult, %falseResult = cond_br %26, %14 {handshake.bb = 3 : ui32, handshake.name = "cond_br59"} : <i1>, <i32>
    %27 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %28 = constant %27 {handshake.bb = 3 : ui32, handshake.name = "constant13", value = -1 : i32} : <>, <i32>
    %29 = source {handshake.bb = 3 : ui32, handshake.name = "source6"} : <>
    %30 = constant %29 {handshake.bb = 3 : ui32, handshake.name = "constant14", value = 0 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%trueResult] %outputs_3 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i32>, <i32>
    %31 = constant %arg8 {ftd.imerge, handshake.bb = 4 : ui32, handshake.name = "constant7", value = false} : <>, <i1>
    %32 = merge %31, %71 {ftd.imerge, handshake.bb = 4 : ui32, handshake.name = "merge5"} : <i1>
    %33 = mux %32 [%dataResult, %trueResult_25] {ftd.regen, handshake.bb = 4 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %34 = mux %32 [%30, %trueResult_21] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %35 = mux %32 [%30, %trueResult_19] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %36 = mux %32 [%28, %trueResult_23] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %37 = source {handshake.bb = 4 : ui32, handshake.name = "source7"} : <>
    %38 = constant %37 {handshake.bb = 4 : ui32, handshake.name = "constant15", value = -1 : i32} : <>, <i32>
    %trueResult_5, %falseResult_6 = cond_br %65, %63 {handshake.bb = 5 : ui32, handshake.name = "cond_br60"} : <i1>, <i32>
    %trueResult_7, %falseResult_8 = cond_br %65, %57 {handshake.bb = 5 : ui32, handshake.name = "cond_br61"} : <i1>, <i32>
    %trueResult_9, %falseResult_10 = cond_br %65, %64 {handshake.bb = 5 : ui32, handshake.name = "cond_br62"} : <i1>, <i32>
    %trueResult_11, %falseResult_12 = cond_br %65, %42 {handshake.bb = 5 : ui32, handshake.name = "cond_br63"} : <i1>, <i32>
    %trueResult_13, %falseResult_14 = cond_br %65, %41 {handshake.bb = 5 : ui32, handshake.name = "cond_br64"} : <i1>, <i32>
    %39 = constant %arg8 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant36", value = false} : <>, <i1>
    %40 = merge %39, %65 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge10"} : <i1>
    %41 = mux %40 [%33, %trueResult_13] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %42 = mux %40 [%36, %trueResult_11] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux15"} : <i1>, <i32>
    %43 = mux %40 [%34, %trueResult_7] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux16"} : <i1>, <i32>
    %44 = mux %40 [%35, %trueResult_5] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux17"} : <i1>, <i32>
    %45 = mux %40 [%38, %trueResult_9] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux18"} : <i1>, <i32>
    %46 = source {handshake.bb = 5 : ui32, handshake.name = "source8"} : <>
    %47 = constant %46 {handshake.bb = 5 : ui32, handshake.name = "constant16", value = 4 : i32} : <>, <i32>
    %48 = source {handshake.bb = 5 : ui32, handshake.name = "source9"} : <>
    %49 = constant %48 {handshake.bb = 5 : ui32, handshake.name = "constant17", value = 2 : i32} : <>, <i32>
    %50 = source {handshake.bb = 5 : ui32, handshake.name = "source10"} : <>
    %51 = constant %50 {handshake.bb = 5 : ui32, handshake.name = "constant18", value = 1 : i32} : <>, <i32>
    %52 = shli %42, %51 {handshake.bb = 5 : ui32, handshake.name = "shli0"} : <i32>
    %53 = addi %42, %52 {handshake.bb = 5 : ui32, handshake.name = "addi13"} : <i32>
    %54 = addi %45, %53 {handshake.bb = 5 : ui32, handshake.name = "addi4"} : <i32>
    %55 = addi %54, %47 {handshake.bb = 5 : ui32, handshake.name = "addi5"} : <i32>
    %addressResult_15, %dataResult_16 = load[%55] %outputs_1 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i32>, <i32>
    %56 = muli %41, %dataResult_16 {handshake.bb = 5 : ui32, handshake.name = "muli0"} : <i32>
    %57 = addi %43, %56 {handshake.bb = 5 : ui32, handshake.name = "addi0"} : <i32>
    %58 = shli %42, %51 {handshake.bb = 5 : ui32, handshake.name = "shli1"} : <i32>
    %59 = addi %42, %58 {handshake.bb = 5 : ui32, handshake.name = "addi14"} : <i32>
    %60 = addi %45, %59 {handshake.bb = 5 : ui32, handshake.name = "addi6"} : <i32>
    %61 = addi %60, %47 {handshake.bb = 5 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_17, %dataResult_18 = load[%61] %outputs {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load2"} : <i32>, <i32>
    %62 = muli %41, %dataResult_18 {handshake.bb = 5 : ui32, handshake.name = "muli1"} : <i32>
    %63 = addi %44, %62 {handshake.bb = 5 : ui32, handshake.name = "addi1"} : <i32>
    %64 = addi %45, %51 {handshake.bb = 5 : ui32, handshake.name = "addi9"} : <i32>
    %65 = cmpi ult, %64, %49 {handshake.bb = 5 : ui32, handshake.name = "cmpi8"} : <i32>
    %trueResult_19, %falseResult_20 = cond_br %71, %falseResult_6 {handshake.bb = 6 : ui32, handshake.name = "cond_br65"} : <i1>, <i32>
    %trueResult_21, %falseResult_22 = cond_br %71, %falseResult_8 {handshake.bb = 6 : ui32, handshake.name = "cond_br66"} : <i1>, <i32>
    %trueResult_23, %falseResult_24 = cond_br %71, %70 {handshake.bb = 6 : ui32, handshake.name = "cond_br67"} : <i1>, <i32>
    %trueResult_25, %falseResult_26 = cond_br %71, %33 {handshake.bb = 6 : ui32, handshake.name = "cond_br68"} : <i1>, <i32>
    %66 = source {handshake.bb = 6 : ui32, handshake.name = "source11"} : <>
    %67 = constant %66 {handshake.bb = 6 : ui32, handshake.name = "constant19", value = 2 : i32} : <>, <i32>
    %68 = source {handshake.bb = 6 : ui32, handshake.name = "source12"} : <>
    %69 = constant %68 {handshake.bb = 6 : ui32, handshake.name = "constant20", value = 1 : i32} : <>, <i32>
    %70 = addi %36, %69 {handshake.bb = 6 : ui32, handshake.name = "addi10"} : <i32>
    %71 = cmpi ult, %70, %67 {handshake.bb = 6 : ui32, handshake.name = "cmpi9"} : <i32>
    %72 = source {handshake.bb = 7 : ui32, handshake.name = "source13"} : <>
    %73 = constant %72 {handshake.bb = 7 : ui32, handshake.name = "constant21", value = false} : <>, <i1>
    %74 = source {handshake.bb = 7 : ui32, handshake.name = "source14"} : <>
    %75 = constant %74 {handshake.bb = 7 : ui32, handshake.name = "constant22", value = 255 : i32} : <>, <i32>
    %76 = cmpi sgt, %falseResult_22, %75 {handshake.bb = 7 : ui32, handshake.name = "cmpi4"} : <i32>
    %77 = select %76[%75, %falseResult_22] {handshake.bb = 7 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %trueResult_27, %falseResult_28 = cond_br %76, %falseResult_22 {handshake.bb = 8 : ui32, handshake.name = "cond_br40"} : <i1>, <i32>
    %78 = source {handshake.bb = 8 : ui32, handshake.name = "source15"} : <>
    %79 = constant %78 {handshake.bb = 8 : ui32, handshake.name = "constant23", value = 0 : i32} : <>, <i32>
    %80 = cmpi slt, %falseResult_28, %79 {handshake.bb = 8 : ui32, handshake.name = "cmpi5"} : <i32>
    %trueResult_29, %falseResult_30 = cond_br %76, %73 {handshake.bb = 9 : ui32, handshake.name = "cond_br69"} : <i1>, <i1>
    %81 = mux %76 [%80, %trueResult_29] {ftd.phi, handshake.bb = 9 : ui32, handshake.name = "mux19"} : <i1>, <i1>
    %82 = source {handshake.bb = 9 : ui32, handshake.name = "source16"} : <>
    %83 = constant %82 {handshake.bb = 9 : ui32, handshake.name = "constant24", value = false} : <>, <i1>
    %84 = source {handshake.bb = 9 : ui32, handshake.name = "source17"} : <>
    %85 = constant %84 {handshake.bb = 9 : ui32, handshake.name = "constant25", value = 255 : i32} : <>, <i32>
    %86 = source {handshake.bb = 9 : ui32, handshake.name = "source18"} : <>
    %87 = constant %86 {handshake.bb = 9 : ui32, handshake.name = "constant26", value = 0 : i32} : <>, <i32>
    %88 = select %81[%87, %77] {handshake.bb = 9 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %89 = cmpi sgt, %falseResult_20, %85 {handshake.bb = 9 : ui32, handshake.name = "cmpi6"} : <i32>
    %90 = select %89[%85, %falseResult_20] {handshake.bb = 9 : ui32, handshake.name = "select3"} : <i1>, <i32>
    %trueResult_31, %falseResult_32 = cond_br %89, %falseResult_20 {handshake.bb = 10 : ui32, handshake.name = "cond_br44"} : <i1>, <i32>
    %91 = source {handshake.bb = 10 : ui32, handshake.name = "source19"} : <>
    %92 = constant %91 {handshake.bb = 10 : ui32, handshake.name = "constant27", value = 0 : i32} : <>, <i32>
    %93 = cmpi slt, %falseResult_32, %92 {handshake.bb = 10 : ui32, handshake.name = "cmpi7"} : <i32>
    %trueResult_33, %falseResult_34 = cond_br %26, %13 {handshake.bb = 11 : ui32, handshake.name = "cond_br70"} : <i1>, <i32>
    %trueResult_35, %falseResult_36 = cond_br %89, %83 {handshake.bb = 11 : ui32, handshake.name = "cond_br71"} : <i1>, <i1>
    %94 = mux %89 [%93, %trueResult_35] {ftd.phi, handshake.bb = 11 : ui32, handshake.name = "mux20"} : <i1>, <i1>
    %95 = source {handshake.bb = 11 : ui32, handshake.name = "source20"} : <>
    %96 = constant %95 {handshake.bb = 11 : ui32, handshake.name = "constant28", value = 0 : i32} : <>, <i32>
    %97 = select %94[%96, %90] {handshake.bb = 11 : ui32, handshake.name = "select4"} : <i1>, <i32>
    %98 = addi %88, %97 {handshake.bb = 11 : ui32, handshake.name = "addi2"} : <i32>
    %99 = addi %trueResult_33, %98 {handshake.bb = 11 : ui32, handshake.name = "addi3"} : <i32>
    %trueResult_37, %falseResult_38 = cond_br %113, %112 {handshake.bb = 12 : ui32, handshake.name = "cond_br72"} : <i1>, <i32>
    %trueResult_39, %falseResult_40 = cond_br %113, %101 {handshake.bb = 12 : ui32, handshake.name = "cond_br73"} : <i1>, <i32>
    %trueResult_41, %falseResult_42 = cond_br %113, %12 {handshake.bb = 12 : ui32, handshake.name = "cond_br74"} : <i1>, <i32>
    %100 = constant %arg8 {handshake.bb = 12 : ui32, handshake.name = "constant2", value = 1 : i32} : <>, <i32>
    %101 = mux %26 [%falseResult_34, %99] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux21"} : <i1>, <i32>
    %102 = source {handshake.bb = 12 : ui32, handshake.name = "source21"} : <>
    %103 = constant %102 {handshake.bb = 12 : ui32, handshake.name = "constant29", value = 1 : i32} : <>, <i32>
    %104 = source {handshake.bb = 12 : ui32, handshake.name = "source22"} : <>
    %105 = constant %104 {handshake.bb = 12 : ui32, handshake.name = "constant30", value = 15 : i32} : <>, <i32>
    %106 = source {handshake.bb = 12 : ui32, handshake.name = "source23"} : <>
    %107 = constant %106 {handshake.bb = 12 : ui32, handshake.name = "constant31", value = 255 : i32} : <>, <i32>
    %108 = trunci %101 {handshake.bb = 12 : ui32, handshake.name = "trunci0"} : <i32> to <i8>
    %109 = extui %108 {handshake.bb = 12 : ui32, handshake.name = "extui1"} : <i8> to <i32>
    %110 = subi %107, %109 {handshake.bb = 12 : ui32, handshake.name = "subi0"} : <i32>
    %111 = addi %14, %12 {handshake.bb = 12 : ui32, handshake.name = "addi8"} : <i32>
    %addressResult_43, %dataResult_44 = store[%111] %110 {handshake.bb = 12 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 14], [-14, -1]]>]>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i32>, <i32>
    %112 = addi %14, %103 {handshake.bb = 12 : ui32, handshake.name = "addi11"} : <i32>
    %113 = cmpi ult, %112, %105 {handshake.bb = 12 : ui32, handshake.name = "cmpi10"} : <i32>
    %trueResult_45, %falseResult_46 = cond_br %119, %falseResult_40 {handshake.bb = 13 : ui32, handshake.name = "cond_br75"} : <i1>, <i32>
    %trueResult_47, %falseResult_48 = cond_br %119, %118 {handshake.bb = 13 : ui32, handshake.name = "cond_br76"} : <i1>, <i32>
    %114 = source {handshake.bb = 13 : ui32, handshake.name = "source24"} : <>
    %115 = constant %114 {handshake.bb = 13 : ui32, handshake.name = "constant32", value = 1 : i32} : <>, <i32>
    %116 = source {handshake.bb = 13 : ui32, handshake.name = "source25"} : <>
    %117 = constant %116 {handshake.bb = 13 : ui32, handshake.name = "constant33", value = 15 : i32} : <>, <i32>
    %118 = addi %7, %115 {handshake.bb = 13 : ui32, handshake.name = "addi12"} : <i32>
    %119 = cmpi ult, %118, %117 {handshake.bb = 13 : ui32, handshake.name = "cmpi11"} : <i32>
    end {handshake.bb = 14 : ui32, handshake.name = "end0"} %falseResult_46, %memEnd_4, %memEnd_2, %memEnd_0, %memEnd, %arg8 : <i32>, <>, <>, <>, <>, <>
  }
}


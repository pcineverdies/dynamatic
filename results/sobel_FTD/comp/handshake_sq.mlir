module {
  handshake.func @sobel(%arg0: memref<256xi32>, %arg1: memref<9xi32>, %arg2: memref<9xi32>, %arg3: memref<256xi32>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["in", "gX", "gY", "out", "in_start", "gX_start", "gY_start", "out_start", "start"], cfg.edges = "[0,1][7,9,8,cmpi4][2,3,12,cmpi3][9,11,10,cmpi6][4,5][11,12][6,4,7,cmpi9][13,1,14,cmpi11][1,2][8,9][3,4][10,11][5,5,6,cmpi8][12,2,13,cmpi10]", resNames = ["out0", "in_end", "gX_end", "gY_end", "out_end", "end"]} {
    %memEnd = mem_controller[%arg3 : memref<256xi32>] %arg7 (%89, %addressResult_55, %dataResult_56) %arg8 {connectedBlocks = [12 : i32], handshake.name = "mem_controller4"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg2 : memref<9xi32>] %arg6 (%addressResult_19) %arg8 {connectedBlocks = [5 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg1 : memref<9xi32>] %arg5 (%addressResult_17) %arg8 {connectedBlocks = [5 : i32], handshake.name = "mem_controller6"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_3, %memEnd_4 = mem_controller[%arg0 : memref<256xi32>] %arg4 (%addressResult) %arg8 {connectedBlocks = [3 : i32], handshake.name = "mem_controller7"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0 = constant %arg8 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = 0 : i32} : <>, <i32>
    %1 = constant %arg8 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %2 = constant %arg8 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %3 = merge %2, %103 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %4 = mux %3 [%arg8, %trueResult_61] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %5 = mux %3 [%0, %trueResult_57] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux24"} : <i1>, <i32>
    %6 = mux %3 [%1, %trueResult_59] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux25"} : <i1>, <i32>
    %7 = constant %4 {handshake.bb = 1 : ui32, handshake.name = "constant10", value = 0 : i32} : <>, <i32>
    %8 = constant %arg8 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant52", value = false} : <>, <i1>
    %9 = merge %8, %99 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge26"} : <i1>
    %10 = mux %9 [%6, %trueResult_53] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux26"} : <i1>, <i32>
    %11 = mux %9 [%4, %trueResult_51] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux43"} : <i1>, <>
    %12 = mux %9 [%5, %trueResult_49] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux48"} : <i1>, <i32>
    %13 = mux %9 [%7, %trueResult_47] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux49"} : <i1>, <i32>
    %14 = constant %11 {handshake.bb = 2 : ui32, handshake.name = "constant11", value = 5 : i32} : <>, <i32>
    %15 = constant %11 {handshake.bb = 2 : ui32, handshake.name = "constant12", value = 0 : i32} : <>, <i32>
    %16 = cmpi eq, %13, %15 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %17 = extui %16 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i1> to <i32>
    %18 = cmpi eq, %13, %14 {handshake.bb = 2 : ui32, handshake.name = "cmpi1"} : <i32>
    %19 = cmpi eq, %17, %15 {handshake.bb = 2 : ui32, handshake.name = "cmpi2"} : <i32>
    %20 = andi %19, %18 {handshake.bb = 2 : ui32, handshake.name = "andi0"} : <i1>
    %21 = ori %16, %20 {handshake.bb = 2 : ui32, handshake.name = "ori0"} : <i1>
    %22 = extsi %21 {handshake.bb = 2 : ui32, handshake.name = "extsi0"} : <i1> to <i32>
    %23 = cmpi eq, %22, %15 {handshake.bb = 2 : ui32, handshake.name = "cmpi3"} : <i32>
    %trueResult, %falseResult = cond_br %23, %13 {handshake.bb = 3 : ui32, handshake.name = "cond_br129"} : <i1>, <i32>
    %24 = constant %trueResult_31 {handshake.bb = 3 : ui32, handshake.name = "constant13", value = -1 : i32} : <>, <i32>
    %25 = constant %trueResult_31 {handshake.bb = 3 : ui32, handshake.name = "constant14", value = 0 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%trueResult] %outputs_3 {handshake.bb = 3 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i32>, <i32>
    %26 = constant %arg8 {ftd.imerge, handshake.bb = 4 : ui32, handshake.name = "constant76", value = false} : <>, <i1>
    %27 = merge %26, %62 {ftd.imerge, handshake.bb = 4 : ui32, handshake.name = "merge50"} : <i1>
    %28 = mux %27 [%trueResult_31, %trueResult_29] {ftd.regen, handshake.bb = 4 : ui32, handshake.name = "mux50"} : <i1>, <>
    %29 = mux %27 [%dataResult, %trueResult_27] {ftd.regen, handshake.bb = 4 : ui32, handshake.name = "mux52"} : <i1>, <i32>
    %30 = mux %27 [%25, %trueResult_23] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux58"} : <i1>, <i32>
    %31 = mux %27 [%25, %trueResult_21] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux59"} : <i1>, <i32>
    %32 = mux %27 [%24, %trueResult_25] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux60"} : <i1>, <i32>
    %33 = constant %28 {handshake.bb = 4 : ui32, handshake.name = "constant15", value = -1 : i32} : <>, <i32>
    %trueResult_5, %falseResult_6 = cond_br %58, %56 {handshake.bb = 5 : ui32, handshake.name = "cond_br130"} : <i1>, <i32>
    %trueResult_7, %falseResult_8 = cond_br %58, %50 {handshake.bb = 5 : ui32, handshake.name = "cond_br131"} : <i1>, <i32>
    %trueResult_9, %falseResult_10 = cond_br %58, %57 {handshake.bb = 5 : ui32, handshake.name = "cond_br132"} : <i1>, <i32>
    %trueResult_11, %falseResult_12 = cond_br %58, %38 {handshake.bb = 5 : ui32, handshake.name = "cond_br133"} : <i1>, <>
    %trueResult_13, %falseResult_14 = cond_br %58, %37 {handshake.bb = 5 : ui32, handshake.name = "cond_br134"} : <i1>, <i32>
    %trueResult_15, %falseResult_16 = cond_br %58, %36 {handshake.bb = 5 : ui32, handshake.name = "cond_br135"} : <i1>, <i32>
    %34 = constant %arg8 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant87", value = false} : <>, <i1>
    %35 = merge %34, %58 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge61"} : <i1>
    %36 = mux %35 [%29, %trueResult_15] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux61"} : <i1>, <i32>
    %37 = mux %35 [%32, %trueResult_13] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux66"} : <i1>, <i32>
    %38 = mux %35 [%28, %trueResult_11] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux67"} : <i1>, <>
    %39 = mux %35 [%30, %trueResult_7] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux70"} : <i1>, <i32>
    %40 = mux %35 [%31, %trueResult_5] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux71"} : <i1>, <i32>
    %41 = mux %35 [%33, %trueResult_9] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux72"} : <i1>, <i32>
    %42 = constant %38 {handshake.bb = 5 : ui32, handshake.name = "constant16", value = 4 : i32} : <>, <i32>
    %43 = constant %38 {handshake.bb = 5 : ui32, handshake.name = "constant17", value = 2 : i32} : <>, <i32>
    %44 = constant %38 {handshake.bb = 5 : ui32, handshake.name = "constant18", value = 1 : i32} : <>, <i32>
    %45 = shli %37, %44 {handshake.bb = 5 : ui32, handshake.name = "shli0"} : <i32>
    %46 = addi %37, %45 {handshake.bb = 5 : ui32, handshake.name = "addi13"} : <i32>
    %47 = addi %41, %46 {handshake.bb = 5 : ui32, handshake.name = "addi4"} : <i32>
    %48 = addi %47, %42 {handshake.bb = 5 : ui32, handshake.name = "addi5"} : <i32>
    %addressResult_17, %dataResult_18 = load[%48] %outputs_1 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i32>, <i32>
    %49 = muli %36, %dataResult_18 {handshake.bb = 5 : ui32, handshake.name = "muli0"} : <i32>
    %50 = addi %39, %49 {handshake.bb = 5 : ui32, handshake.name = "addi0"} : <i32>
    %51 = shli %37, %44 {handshake.bb = 5 : ui32, handshake.name = "shli1"} : <i32>
    %52 = addi %37, %51 {handshake.bb = 5 : ui32, handshake.name = "addi14"} : <i32>
    %53 = addi %41, %52 {handshake.bb = 5 : ui32, handshake.name = "addi6"} : <i32>
    %54 = addi %53, %42 {handshake.bb = 5 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_19, %dataResult_20 = load[%54] %outputs {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load2"} : <i32>, <i32>
    %55 = muli %36, %dataResult_20 {handshake.bb = 5 : ui32, handshake.name = "muli1"} : <i32>
    %56 = addi %40, %55 {handshake.bb = 5 : ui32, handshake.name = "addi1"} : <i32>
    %57 = addi %41, %44 {handshake.bb = 5 : ui32, handshake.name = "addi9"} : <i32>
    %58 = cmpi ult, %57, %43 {handshake.bb = 5 : ui32, handshake.name = "cmpi8"} : <i32>
    %trueResult_21, %falseResult_22 = cond_br %62, %falseResult_6 {handshake.bb = 6 : ui32, handshake.name = "cond_br136"} : <i1>, <i32>
    %trueResult_23, %falseResult_24 = cond_br %62, %falseResult_8 {handshake.bb = 6 : ui32, handshake.name = "cond_br137"} : <i1>, <i32>
    %trueResult_25, %falseResult_26 = cond_br %62, %61 {handshake.bb = 6 : ui32, handshake.name = "cond_br138"} : <i1>, <i32>
    %trueResult_27, %falseResult_28 = cond_br %62, %29 {handshake.bb = 6 : ui32, handshake.name = "cond_br139"} : <i1>, <i32>
    %trueResult_29, %falseResult_30 = cond_br %62, %28 {handshake.bb = 6 : ui32, handshake.name = "cond_br140"} : <i1>, <>
    %59 = constant %28 {handshake.bb = 6 : ui32, handshake.name = "constant19", value = 2 : i32} : <>, <i32>
    %60 = constant %28 {handshake.bb = 6 : ui32, handshake.name = "constant20", value = 1 : i32} : <>, <i32>
    %61 = addi %32, %60 {handshake.bb = 6 : ui32, handshake.name = "addi10"} : <i32>
    %62 = cmpi ult, %61, %59 {handshake.bb = 6 : ui32, handshake.name = "cmpi9"} : <i32>
    %trueResult_31, %falseResult_32 = cond_br %23, %11 {handshake.bb = 7 : ui32, handshake.name = "cond_br141"} : <i1>, <>
    %63 = constant %trueResult_31 {handshake.bb = 7 : ui32, handshake.name = "constant21", value = false} : <>, <i1>
    %64 = constant %trueResult_31 {handshake.bb = 7 : ui32, handshake.name = "constant22", value = 255 : i32} : <>, <i32>
    %65 = cmpi sgt, %falseResult_24, %64 {handshake.bb = 7 : ui32, handshake.name = "cmpi4"} : <i32>
    %66 = select %65[%64, %falseResult_24] {handshake.bb = 7 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %trueResult_33, %falseResult_34 = cond_br %65, %falseResult_24 {handshake.bb = 8 : ui32, handshake.name = "cond_br59"} : <i1>, <i32>
    %trueResult_35, %falseResult_36 = cond_br %69, %11 {handshake.bb = 8 : ui32, handshake.name = "cond_br61"} : <i1>, <>
    %67 = source {handshake.bb = 8 : ui32, handshake.name = "source0"} : <>
    %68 = constant %67 {ftd.skip, handshake.bb = 8 : ui32, handshake.name = "constant99", value = true} : <>, <i1>
    %69 = mux %23 [%68, %65] {ftd.skip, handshake.bb = 8 : ui32, handshake.name = "mux73"} : <i1>, <i1>
    %70 = constant %falseResult_36 {handshake.bb = 8 : ui32, handshake.name = "constant23", value = 0 : i32} : <>, <i32>
    %71 = cmpi slt, %falseResult_34, %70 {handshake.bb = 8 : ui32, handshake.name = "cmpi5"} : <i32>
    %trueResult_37, %falseResult_38 = cond_br %65, %63 {handshake.bb = 9 : ui32, handshake.name = "cond_br142"} : <i1>, <i1>
    %72 = mux %65 [%71, %trueResult_37] {ftd.phi, handshake.bb = 9 : ui32, handshake.name = "mux74"} : <i1>, <i1>
    %73 = constant %trueResult_31 {handshake.bb = 9 : ui32, handshake.name = "constant24", value = false} : <>, <i1>
    %74 = constant %trueResult_31 {handshake.bb = 9 : ui32, handshake.name = "constant25", value = 255 : i32} : <>, <i32>
    %75 = constant %trueResult_31 {handshake.bb = 9 : ui32, handshake.name = "constant26", value = 0 : i32} : <>, <i32>
    %76 = select %72[%75, %66] {handshake.bb = 9 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %77 = cmpi sgt, %falseResult_22, %74 {handshake.bb = 9 : ui32, handshake.name = "cmpi6"} : <i32>
    %78 = select %77[%74, %falseResult_22] {handshake.bb = 9 : ui32, handshake.name = "select3"} : <i1>, <i32>
    %trueResult_39, %falseResult_40 = cond_br %77, %falseResult_22 {handshake.bb = 10 : ui32, handshake.name = "cond_br67"} : <i1>, <i32>
    %trueResult_41, %falseResult_42 = cond_br %81, %11 {handshake.bb = 10 : ui32, handshake.name = "cond_br69"} : <i1>, <>
    %79 = source {handshake.bb = 10 : ui32, handshake.name = "source1"} : <>
    %80 = constant %79 {ftd.skip, handshake.bb = 10 : ui32, handshake.name = "constant100", value = true} : <>, <i1>
    %81 = mux %23 [%80, %77] {ftd.skip, handshake.bb = 10 : ui32, handshake.name = "mux75"} : <i1>, <i1>
    %82 = constant %falseResult_42 {handshake.bb = 10 : ui32, handshake.name = "constant27", value = 0 : i32} : <>, <i32>
    %83 = cmpi slt, %falseResult_40, %82 {handshake.bb = 10 : ui32, handshake.name = "cmpi7"} : <i32>
    %trueResult_43, %falseResult_44 = cond_br %23, %12 {handshake.bb = 11 : ui32, handshake.name = "cond_br143"} : <i1>, <i32>
    %trueResult_45, %falseResult_46 = cond_br %77, %73 {handshake.bb = 11 : ui32, handshake.name = "cond_br144"} : <i1>, <i1>
    %84 = mux %77 [%83, %trueResult_45] {ftd.phi, handshake.bb = 11 : ui32, handshake.name = "mux76"} : <i1>, <i1>
    %85 = constant %trueResult_31 {handshake.bb = 11 : ui32, handshake.name = "constant28", value = 0 : i32} : <>, <i32>
    %86 = select %84[%85, %78] {handshake.bb = 11 : ui32, handshake.name = "select4"} : <i1>, <i32>
    %87 = addi %76, %86 {handshake.bb = 11 : ui32, handshake.name = "addi2"} : <i32>
    %88 = addi %trueResult_43, %87 {handshake.bb = 11 : ui32, handshake.name = "addi3"} : <i32>
    %trueResult_47, %falseResult_48 = cond_br %99, %98 {handshake.bb = 12 : ui32, handshake.name = "cond_br145"} : <i1>, <i32>
    %trueResult_49, %falseResult_50 = cond_br %99, %90 {handshake.bb = 12 : ui32, handshake.name = "cond_br146"} : <i1>, <i32>
    %trueResult_51, %falseResult_52 = cond_br %99, %11 {handshake.bb = 12 : ui32, handshake.name = "cond_br147"} : <i1>, <>
    %trueResult_53, %falseResult_54 = cond_br %99, %10 {handshake.bb = 12 : ui32, handshake.name = "cond_br148"} : <i1>, <i32>
    %89 = constant %arg8 {handshake.bb = 12 : ui32, handshake.name = "constant2", value = 1 : i32} : <>, <i32>
    %90 = mux %23 [%falseResult_44, %88] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux77"} : <i1>, <i32>
    %91 = constant %11 {handshake.bb = 12 : ui32, handshake.name = "constant29", value = 1 : i32} : <>, <i32>
    %92 = constant %11 {handshake.bb = 12 : ui32, handshake.name = "constant30", value = 15 : i32} : <>, <i32>
    %93 = constant %11 {handshake.bb = 12 : ui32, handshake.name = "constant31", value = 255 : i32} : <>, <i32>
    %94 = trunci %90 {handshake.bb = 12 : ui32, handshake.name = "trunci0"} : <i32> to <i8>
    %95 = extui %94 {handshake.bb = 12 : ui32, handshake.name = "extui1"} : <i8> to <i32>
    %96 = subi %93, %95 {handshake.bb = 12 : ui32, handshake.name = "subi0"} : <i32>
    %97 = addi %13, %10 {handshake.bb = 12 : ui32, handshake.name = "addi8"} : <i32>
    %addressResult_55, %dataResult_56 = store[%97] %96 {handshake.bb = 12 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 14], [-14, -1]]>]>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i32>, <i32>
    %98 = addi %13, %91 {handshake.bb = 12 : ui32, handshake.name = "addi11"} : <i32>
    %99 = cmpi ult, %98, %92 {handshake.bb = 12 : ui32, handshake.name = "cmpi10"} : <i32>
    %trueResult_57, %falseResult_58 = cond_br %103, %falseResult_50 {handshake.bb = 13 : ui32, handshake.name = "cond_br149"} : <i1>, <i32>
    %trueResult_59, %falseResult_60 = cond_br %103, %102 {handshake.bb = 13 : ui32, handshake.name = "cond_br150"} : <i1>, <i32>
    %trueResult_61, %falseResult_62 = cond_br %103, %4 {handshake.bb = 13 : ui32, handshake.name = "cond_br151"} : <i1>, <>
    %100 = constant %4 {handshake.bb = 13 : ui32, handshake.name = "constant32", value = 1 : i32} : <>, <i32>
    %101 = constant %4 {handshake.bb = 13 : ui32, handshake.name = "constant33", value = 15 : i32} : <>, <i32>
    %102 = addi %6, %100 {handshake.bb = 13 : ui32, handshake.name = "addi12"} : <i32>
    %103 = cmpi ult, %102, %101 {handshake.bb = 13 : ui32, handshake.name = "cmpi11"} : <i32>
    end {handshake.bb = 14 : ui32, handshake.name = "end0"} %falseResult_58, %memEnd_4, %memEnd_2, %memEnd_0, %memEnd, %arg8 : <i32>, <>, <>, <>, <>, <>
  }
}


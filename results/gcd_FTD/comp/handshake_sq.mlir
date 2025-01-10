module {
  handshake.func @gcd(%arg0: !handshake.channel<i32>, %arg1: !handshake.channel<i32>, %arg2: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>) attributes {argNames = ["a", "b", "start"], cfg.edges = "[0,1,12,andi0][7,8,11,cmpi8][2,1][9,10,7,andi7][4,3][11,12][6,5][1,2,3,cmpi3][8,9][3,4,5,andi3][10,9][5,6,7,andi5]", resNames = ["out0", "end"]} {
    %0 = constant %arg2 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = 0 : i32} : <>, <i32>
    %1 = constant %arg2 {handshake.bb = 0 : ui32, handshake.name = "mlir.undef0", value = 0 : i32} : <>, <i32>
    %2 = cmpi eq, %arg0, %0 {handshake.bb = 0 : ui32, handshake.name = "cmpi0"} : <i32>
    %3 = cmpi ne, %arg0, %0 {handshake.bb = 0 : ui32, handshake.name = "cmpi1"} : <i32>
    %4 = select %2[%arg1, %1] {handshake.bb = 0 : ui32, handshake.name = "select0"} : <i1>, <i32>
    %5 = cmpi ne, %arg1, %0 {handshake.bb = 0 : ui32, handshake.name = "cmpi2"} : <i32>
    %6 = andi %3, %5 {handshake.bb = 0 : ui32, handshake.name = "andi0"} : <i1>
    %trueResult, %falseResult = cond_br %6, %0 {handshake.bb = 1 : ui32, handshake.name = "cond_br96"} : <i1>, <i32>
    %7 = constant %arg2 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %8 = merge %7, %17 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %9 = mux %8 [%trueResult_16, %trueResult_6] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %10 = mux %8 [%arg0, %19] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %11 = mux %8 [%arg1, %20] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %12 = mux %8 [%trueResult, %21] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %13 = constant %9 {handshake.bb = 1 : ui32, handshake.name = "constant2", value = 1 : i32} : <>, <i32>
    %14 = constant %9 {handshake.bb = 1 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %15 = ori %10, %11 {handshake.bb = 1 : ui32, handshake.name = "ori0"} : <i32>
    %16 = andi %15, %13 {handshake.bb = 1 : ui32, handshake.name = "andi1"} : <i32>
    %17 = cmpi eq, %16, %14 {handshake.bb = 1 : ui32, handshake.name = "cmpi3"} : <i32>
    %trueResult_0, %falseResult_1 = cond_br %17, %12 {handshake.bb = 2 : ui32, handshake.name = "cond_br97"} : <i1>, <i32>
    %trueResult_2, %falseResult_3 = cond_br %17, %11 {handshake.bb = 2 : ui32, handshake.name = "cond_br98"} : <i1>, <i32>
    %trueResult_4, %falseResult_5 = cond_br %17, %10 {handshake.bb = 2 : ui32, handshake.name = "cond_br99"} : <i1>, <i32>
    %trueResult_6, %falseResult_7 = cond_br %17, %9 {handshake.bb = 2 : ui32, handshake.name = "cond_br100"} : <i1>, <>
    %18 = constant %trueResult_6 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = 1 : i32} : <>, <i32>
    %19 = shrsi %trueResult_4, %18 {handshake.bb = 2 : ui32, handshake.name = "shrsi0"} : <i32>
    %20 = shrsi %trueResult_2, %18 {handshake.bb = 2 : ui32, handshake.name = "shrsi1"} : <i32>
    %21 = addi %trueResult_0, %18 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %22 = constant %arg2 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant24", value = false} : <>, <i1>
    %23 = merge %22, %31 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge6"} : <i1>
    %24 = mux %23 [%trueResult_16, %trueResult_10] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <>
    %25 = mux %23 [%falseResult_5, %33] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %26 = constant %24 {handshake.bb = 3 : ui32, handshake.name = "constant5", value = 1 : i32} : <>, <i32>
    %27 = constant %24 {handshake.bb = 3 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %28 = cmpi sgt, %25, %27 {handshake.bb = 3 : ui32, handshake.name = "cmpi4"} : <i32>
    %29 = andi %25, %26 {handshake.bb = 3 : ui32, handshake.name = "andi2"} : <i32>
    %30 = cmpi eq, %29, %27 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i32>
    %31 = andi %28, %30 {handshake.bb = 3 : ui32, handshake.name = "andi3"} : <i1>
    %trueResult_8, %falseResult_9 = cond_br %31, %25 {handshake.bb = 4 : ui32, handshake.name = "cond_br101"} : <i1>, <i32>
    %trueResult_10, %falseResult_11 = cond_br %31, %24 {handshake.bb = 4 : ui32, handshake.name = "cond_br102"} : <i1>, <>
    %32 = constant %trueResult_10 {handshake.bb = 4 : ui32, handshake.name = "constant7", value = 1 : i32} : <>, <i32>
    %33 = shrsi %trueResult_8, %32 {handshake.bb = 4 : ui32, handshake.name = "shrsi2"} : <i32>
    %34 = constant %arg2 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant29", value = false} : <>, <i1>
    %35 = merge %34, %43 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge10"} : <i1>
    %36 = mux %35 [%trueResult_16, %trueResult_14] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux12"} : <i1>, <>
    %37 = mux %35 [%falseResult_3, %45] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %38 = constant %36 {handshake.bb = 5 : ui32, handshake.name = "constant8", value = 1 : i32} : <>, <i32>
    %39 = constant %36 {handshake.bb = 5 : ui32, handshake.name = "constant9", value = 0 : i32} : <>, <i32>
    %40 = cmpi sgt, %37, %39 {handshake.bb = 5 : ui32, handshake.name = "cmpi6"} : <i32>
    %41 = andi %37, %38 {handshake.bb = 5 : ui32, handshake.name = "andi4"} : <i32>
    %42 = cmpi eq, %41, %39 {handshake.bb = 5 : ui32, handshake.name = "cmpi7"} : <i32>
    %43 = andi %40, %42 {handshake.bb = 5 : ui32, handshake.name = "andi5"} : <i1>
    %trueResult_12, %falseResult_13 = cond_br %43, %37 {handshake.bb = 6 : ui32, handshake.name = "cond_br103"} : <i1>, <i32>
    %trueResult_14, %falseResult_15 = cond_br %43, %36 {handshake.bb = 6 : ui32, handshake.name = "cond_br104"} : <i1>, <>
    %44 = constant %trueResult_14 {handshake.bb = 6 : ui32, handshake.name = "constant10", value = 1 : i32} : <>, <i32>
    %45 = shrsi %trueResult_12, %44 {handshake.bb = 6 : ui32, handshake.name = "shrsi3"} : <i32>
    %trueResult_16, %falseResult_17 = cond_br %6, %arg2 {handshake.bb = 7 : ui32, handshake.name = "cond_br105"} : <i1>, <>
    %46 = constant %arg2 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "constant34", value = false} : <>, <i1>
    %47 = merge %46, %52 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "merge14"} : <i1>
    %48 = mux %47 [%trueResult_16, %trueResult_22] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux14"} : <i1>, <>
    %49 = mux %47 [%falseResult_9, %falseResult_25] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux19"} : <i1>, <i32>
    %50 = mux %47 [%falseResult_13, %56] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux20"} : <i1>, <i32>
    %51 = constant %48 {handshake.bb = 7 : ui32, handshake.name = "constant11", value = 0 : i32} : <>, <i32>
    %52 = cmpi ne, %49, %51 {handshake.bb = 7 : ui32, handshake.name = "cmpi8"} : <i32>
    %trueResult_18, %falseResult_19 = cond_br %52, %49 {handshake.bb = 8 : ui32, handshake.name = "cond_br106"} : <i1>, <i32>
    %trueResult_20, %falseResult_21 = cond_br %52, %50 {handshake.bb = 8 : ui32, handshake.name = "cond_br107"} : <i1>, <i32>
    %53 = constant %trueResult_22 {handshake.bb = 8 : ui32, handshake.name = "constant12", value = 0 : i32} : <>, <i32>
    %54 = subi %trueResult_18, %trueResult_20 {handshake.bb = 8 : ui32, handshake.name = "subi0"} : <i32>
    %55 = cmpi slt, %trueResult_18, %trueResult_20 {handshake.bb = 8 : ui32, handshake.name = "cmpi9"} : <i32>
    %56 = select %55[%trueResult_18, %trueResult_20] {handshake.bb = 8 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %57 = cmpi sge, %54, %53 {handshake.bb = 8 : ui32, handshake.name = "cmpi10"} : <i32>
    %58 = subi %53, %54 {handshake.bb = 8 : ui32, handshake.name = "subi2"} : <i32>
    %59 = select %57[%54, %58] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %trueResult_22, %falseResult_23 = cond_br %52, %48 {handshake.bb = 9 : ui32, handshake.name = "cond_br108"} : <i1>, <>
    %60 = constant %arg2 {ftd.imerge, handshake.bb = 9 : ui32, handshake.name = "constant43", value = false} : <>, <i1>
    %61 = merge %60, %69 {ftd.imerge, handshake.bb = 9 : ui32, handshake.name = "merge21"} : <i1>
    %62 = mux %61 [%trueResult_22, %trueResult_26] {ftd.regen, handshake.bb = 9 : ui32, handshake.name = "mux21"} : <i1>, <>
    %63 = mux %61 [%59, %71] {ftd.phi, handshake.bb = 9 : ui32, handshake.name = "mux24"} : <i1>, <i32>
    %64 = constant %62 {handshake.bb = 9 : ui32, handshake.name = "constant13", value = 1 : i32} : <>, <i32>
    %65 = constant %62 {handshake.bb = 9 : ui32, handshake.name = "constant14", value = 0 : i32} : <>, <i32>
    %66 = cmpi sgt, %63, %65 {handshake.bb = 9 : ui32, handshake.name = "cmpi11"} : <i32>
    %67 = andi %63, %64 {handshake.bb = 9 : ui32, handshake.name = "andi6"} : <i32>
    %68 = cmpi eq, %67, %65 {handshake.bb = 9 : ui32, handshake.name = "cmpi12"} : <i32>
    %69 = andi %66, %68 {handshake.bb = 9 : ui32, handshake.name = "andi7"} : <i1>
    %trueResult_24, %falseResult_25 = cond_br %69, %63 {handshake.bb = 10 : ui32, handshake.name = "cond_br109"} : <i1>, <i32>
    %trueResult_26, %falseResult_27 = cond_br %69, %62 {handshake.bb = 10 : ui32, handshake.name = "cond_br110"} : <i1>, <>
    %70 = constant %trueResult_26 {handshake.bb = 10 : ui32, handshake.name = "constant15", value = 1 : i32} : <>, <i32>
    %71 = shrsi %trueResult_24, %70 {handshake.bb = 10 : ui32, handshake.name = "shrsi4"} : <i32>
    %72 = shli %falseResult_21, %falseResult_1 {handshake.bb = 11 : ui32, handshake.name = "shli0"} : <i32>
    %trueResult_28, %falseResult_29 = cond_br %6, %4 {handshake.bb = 12 : ui32, handshake.name = "cond_br95"} : <i1>, <i32>
    %73 = mux %6 [%falseResult_29, %72] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux25"} : <i1>, <i32>
    end {handshake.bb = 12 : ui32, handshake.name = "end0"} %73, %arg2 : <i32>, <>
  }
}


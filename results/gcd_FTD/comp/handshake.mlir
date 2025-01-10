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
    %9 = mux %8 [%trueResult_32, %trueResult_8] {ftd.regen, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <>
    %result, %index = control_merge %trueResult_32, %22  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %10 = mux %8 [%arg0, %19] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %11 = mux %8 [%arg1, %20] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %12 = mux %8 [%trueResult, %21] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %13 = constant %9 {handshake.bb = 1 : ui32, handshake.name = "constant2", value = 1 : i32} : <>, <i32>
    %14 = constant %9 {handshake.bb = 1 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %15 = ori %10, %11 {handshake.bb = 1 : ui32, handshake.name = "ori0"} : <i32>
    %16 = andi %15, %13 {handshake.bb = 1 : ui32, handshake.name = "andi1"} : <i32>
    %17 = cmpi eq, %16, %14 {handshake.bb = 1 : ui32, handshake.name = "cmpi3"} : <i32>
    %trueResult_0, %falseResult_1 = cond_br %17, %result {handshake.bb = 1 : ui32, handshake.name = "cond_br17"} : <i1>, <>
    %trueResult_2, %falseResult_3 = cond_br %17, %12 {handshake.bb = 2 : ui32, handshake.name = "cond_br97"} : <i1>, <i32>
    %trueResult_4, %falseResult_5 = cond_br %17, %11 {handshake.bb = 2 : ui32, handshake.name = "cond_br98"} : <i1>, <i32>
    %trueResult_6, %falseResult_7 = cond_br %17, %10 {handshake.bb = 2 : ui32, handshake.name = "cond_br99"} : <i1>, <i32>
    %trueResult_8, %falseResult_9 = cond_br %17, %9 {handshake.bb = 2 : ui32, handshake.name = "cond_br100"} : <i1>, <>
    %result_10, %index_11 = control_merge %trueResult_0  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %18 = constant %trueResult_8 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = 1 : i32} : <>, <i32>
    %19 = shrsi %trueResult_6, %18 {handshake.bb = 2 : ui32, handshake.name = "shrsi0"} : <i32>
    %20 = shrsi %trueResult_4, %18 {handshake.bb = 2 : ui32, handshake.name = "shrsi1"} : <i32>
    %21 = addi %trueResult_2, %18 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %22 = br %result_10 {handshake.bb = 2 : ui32, handshake.name = "br0"} : <>
    %23 = constant %arg2 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant24", value = false} : <>, <i1>
    %24 = merge %23, %32 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge6"} : <i1>
    %25 = mux %24 [%trueResult_32, %trueResult_18] {ftd.regen, handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <>
    %result_12, %index_13 = control_merge %falseResult_1, %35  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %26 = mux %24 [%falseResult_7, %34] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %27 = constant %25 {handshake.bb = 3 : ui32, handshake.name = "constant5", value = 1 : i32} : <>, <i32>
    %28 = constant %25 {handshake.bb = 3 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %29 = cmpi sgt, %26, %28 {handshake.bb = 3 : ui32, handshake.name = "cmpi4"} : <i32>
    %30 = andi %26, %27 {handshake.bb = 3 : ui32, handshake.name = "andi2"} : <i32>
    %31 = cmpi eq, %30, %28 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i32>
    %32 = andi %29, %31 {handshake.bb = 3 : ui32, handshake.name = "andi3"} : <i1>
    %trueResult_14, %falseResult_15 = cond_br %32, %result_12 {handshake.bb = 3 : ui32, handshake.name = "cond_br38"} : <i1>, <>
    %trueResult_16, %falseResult_17 = cond_br %32, %26 {handshake.bb = 4 : ui32, handshake.name = "cond_br101"} : <i1>, <i32>
    %trueResult_18, %falseResult_19 = cond_br %32, %25 {handshake.bb = 4 : ui32, handshake.name = "cond_br102"} : <i1>, <>
    %result_20, %index_21 = control_merge %trueResult_14  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %33 = constant %trueResult_18 {handshake.bb = 4 : ui32, handshake.name = "constant7", value = 1 : i32} : <>, <i32>
    %34 = shrsi %trueResult_16, %33 {handshake.bb = 4 : ui32, handshake.name = "shrsi2"} : <i32>
    %35 = br %result_20 {handshake.bb = 4 : ui32, handshake.name = "br2"} : <>
    %36 = constant %arg2 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant29", value = false} : <>, <i1>
    %37 = merge %36, %45 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge10"} : <i1>
    %38 = mux %37 [%trueResult_32, %trueResult_28] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux12"} : <i1>, <>
    %result_22, %index_23 = control_merge %falseResult_15, %48  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %39 = mux %37 [%falseResult_5, %47] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %40 = constant %38 {handshake.bb = 5 : ui32, handshake.name = "constant8", value = 1 : i32} : <>, <i32>
    %41 = constant %38 {handshake.bb = 5 : ui32, handshake.name = "constant9", value = 0 : i32} : <>, <i32>
    %42 = cmpi sgt, %39, %41 {handshake.bb = 5 : ui32, handshake.name = "cmpi6"} : <i32>
    %43 = andi %39, %40 {handshake.bb = 5 : ui32, handshake.name = "andi4"} : <i32>
    %44 = cmpi eq, %43, %41 {handshake.bb = 5 : ui32, handshake.name = "cmpi7"} : <i32>
    %45 = andi %42, %44 {handshake.bb = 5 : ui32, handshake.name = "andi5"} : <i1>
    %trueResult_24, %falseResult_25 = cond_br %45, %result_22 {handshake.bb = 5 : ui32, handshake.name = "cond_br51"} : <i1>, <>
    %trueResult_26, %falseResult_27 = cond_br %45, %39 {handshake.bb = 6 : ui32, handshake.name = "cond_br103"} : <i1>, <i32>
    %trueResult_28, %falseResult_29 = cond_br %45, %38 {handshake.bb = 6 : ui32, handshake.name = "cond_br104"} : <i1>, <>
    %result_30, %index_31 = control_merge %trueResult_24  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    %46 = constant %trueResult_28 {handshake.bb = 6 : ui32, handshake.name = "constant10", value = 1 : i32} : <>, <i32>
    %47 = shrsi %trueResult_26, %46 {handshake.bb = 6 : ui32, handshake.name = "shrsi3"} : <i32>
    %48 = br %result_30 {handshake.bb = 6 : ui32, handshake.name = "br4"} : <>
    %trueResult_32, %falseResult_33 = cond_br %6, %arg2 {handshake.bb = 7 : ui32, handshake.name = "cond_br105"} : <i1>, <>
    %49 = constant %arg2 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "constant34", value = false} : <>, <i1>
    %50 = merge %49, %55 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "merge14"} : <i1>
    %51 = mux %50 [%trueResult_32, %trueResult_44] {ftd.regen, handshake.bb = 7 : ui32, handshake.name = "mux14"} : <i1>, <>
    %result_34, %index_35 = control_merge %falseResult_25, %falseResult_49  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %52 = mux %50 [%falseResult_17, %falseResult_51] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux19"} : <i1>, <i32>
    %53 = mux %50 [%falseResult_27, %59] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux20"} : <i1>, <i32>
    %54 = constant %51 {handshake.bb = 7 : ui32, handshake.name = "constant11", value = 0 : i32} : <>, <i32>
    %55 = cmpi ne, %52, %54 {handshake.bb = 7 : ui32, handshake.name = "cmpi8"} : <i32>
    %trueResult_36, %falseResult_37 = cond_br %55, %result_34 {handshake.bb = 7 : ui32, handshake.name = "cond_br68"} : <i1>, <>
    %trueResult_38, %falseResult_39 = cond_br %55, %52 {handshake.bb = 8 : ui32, handshake.name = "cond_br106"} : <i1>, <i32>
    %trueResult_40, %falseResult_41 = cond_br %55, %53 {handshake.bb = 8 : ui32, handshake.name = "cond_br107"} : <i1>, <i32>
    %result_42, %index_43 = control_merge %trueResult_36  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    %56 = constant %trueResult_44 {handshake.bb = 8 : ui32, handshake.name = "constant12", value = 0 : i32} : <>, <i32>
    %57 = subi %trueResult_38, %trueResult_40 {handshake.bb = 8 : ui32, handshake.name = "subi0"} : <i32>
    %58 = cmpi slt, %trueResult_38, %trueResult_40 {handshake.bb = 8 : ui32, handshake.name = "cmpi9"} : <i32>
    %59 = select %58[%trueResult_38, %trueResult_40] {handshake.bb = 8 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %60 = cmpi sge, %57, %56 {handshake.bb = 8 : ui32, handshake.name = "cmpi10"} : <i32>
    %61 = subi %56, %57 {handshake.bb = 8 : ui32, handshake.name = "subi2"} : <i32>
    %62 = select %60[%57, %61] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %63 = br %result_42 {handshake.bb = 8 : ui32, handshake.name = "br6"} : <>
    %trueResult_44, %falseResult_45 = cond_br %55, %51 {handshake.bb = 9 : ui32, handshake.name = "cond_br108"} : <i1>, <>
    %64 = constant %arg2 {ftd.imerge, handshake.bb = 9 : ui32, handshake.name = "constant43", value = false} : <>, <i1>
    %65 = merge %64, %73 {ftd.imerge, handshake.bb = 9 : ui32, handshake.name = "merge21"} : <i1>
    %66 = mux %65 [%trueResult_44, %trueResult_52] {ftd.regen, handshake.bb = 9 : ui32, handshake.name = "mux21"} : <i1>, <>
    %result_46, %index_47 = control_merge %63, %76  {handshake.bb = 9 : ui32, handshake.name = "control_merge8"} : <>, <i1>
    %67 = mux %65 [%62, %75] {ftd.phi, handshake.bb = 9 : ui32, handshake.name = "mux24"} : <i1>, <i32>
    %68 = constant %66 {handshake.bb = 9 : ui32, handshake.name = "constant13", value = 1 : i32} : <>, <i32>
    %69 = constant %66 {handshake.bb = 9 : ui32, handshake.name = "constant14", value = 0 : i32} : <>, <i32>
    %70 = cmpi sgt, %67, %69 {handshake.bb = 9 : ui32, handshake.name = "cmpi11"} : <i32>
    %71 = andi %67, %68 {handshake.bb = 9 : ui32, handshake.name = "andi6"} : <i32>
    %72 = cmpi eq, %71, %69 {handshake.bb = 9 : ui32, handshake.name = "cmpi12"} : <i32>
    %73 = andi %70, %72 {handshake.bb = 9 : ui32, handshake.name = "andi7"} : <i1>
    %trueResult_48, %falseResult_49 = cond_br %73, %result_46 {handshake.bb = 9 : ui32, handshake.name = "cond_br89"} : <i1>, <>
    %trueResult_50, %falseResult_51 = cond_br %73, %67 {handshake.bb = 10 : ui32, handshake.name = "cond_br109"} : <i1>, <i32>
    %trueResult_52, %falseResult_53 = cond_br %73, %66 {handshake.bb = 10 : ui32, handshake.name = "cond_br110"} : <i1>, <>
    %result_54, %index_55 = control_merge %trueResult_48  {handshake.bb = 10 : ui32, handshake.name = "control_merge9"} : <>, <i1>
    %74 = constant %trueResult_52 {handshake.bb = 10 : ui32, handshake.name = "constant15", value = 1 : i32} : <>, <i32>
    %75 = shrsi %trueResult_50, %74 {handshake.bb = 10 : ui32, handshake.name = "shrsi4"} : <i32>
    %76 = br %result_54 {handshake.bb = 10 : ui32, handshake.name = "br9"} : <>
    %77 = shli %falseResult_41, %falseResult_3 {handshake.bb = 11 : ui32, handshake.name = "shli0"} : <i32>
    %trueResult_56, %falseResult_57 = cond_br %6, %4 {handshake.bb = 12 : ui32, handshake.name = "cond_br95"} : <i1>, <i32>
    %78 = mux %6 [%falseResult_57, %77] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux25"} : <i1>, <i32>
    end {handshake.bb = 12 : ui32, handshake.name = "end0"} %78, %arg2 : <i32>, <>
  }
}


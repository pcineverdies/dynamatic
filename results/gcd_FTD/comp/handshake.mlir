module {
  handshake.func @gcd(%arg0: !handshake.channel<i32>, %arg1: !handshake.channel<i32>, %arg2: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>) attributes {argNames = ["a", "b", "start"], cfg.edges = "[0,1,12,andi0][7,8,11,cmpi8][2,1][9,10,7,andi7][4,3][11,12][6,5][1,2,3,cmpi3][8,9][3,4,5,andi3][10,9][5,6,7,andi5]", resNames = ["out0", "end"]} {
    %0 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %1 = constant %0 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = 0 : i32} : <>, <i32>
    %2 = constant %arg2 {handshake.bb = 0 : ui32, handshake.name = "mlir.undef0", value = 0 : i32} : <>, <i32>
    %3 = cmpi eq, %arg0, %1 {handshake.bb = 0 : ui32, handshake.name = "cmpi0"} : <i32>
    %4 = cmpi ne, %arg0, %1 {handshake.bb = 0 : ui32, handshake.name = "cmpi1"} : <i32>
    %5 = select %3[%arg1, %2] {handshake.bb = 0 : ui32, handshake.name = "select0"} : <i1>, <i32>
    %6 = cmpi ne, %arg1, %1 {handshake.bb = 0 : ui32, handshake.name = "cmpi2"} : <i32>
    %7 = andi %4, %6 {handshake.bb = 0 : ui32, handshake.name = "andi0"} : <i1>
    %trueResult, %falseResult = cond_br %7, %arg2 {handshake.bb = 0 : ui32, handshake.name = "cond_br6"} : <i1>, <>
    %trueResult_0, %falseResult_1 = cond_br %7, %1 {handshake.bb = 1 : ui32, handshake.name = "cond_br57"} : <i1>, <i32>
    %result, %index = control_merge %trueResult, %25  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %8 = constant %arg2 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %9 = mux %10 [%arg0, %22] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %10 = merge %8, %19 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %11 = mux %10 [%arg1, %23] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %12 = mux %10 [%trueResult_0, %24] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %13 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %14 = constant %13 {handshake.bb = 1 : ui32, handshake.name = "constant2", value = 1 : i32} : <>, <i32>
    %15 = source {handshake.bb = 1 : ui32, handshake.name = "source2"} : <>
    %16 = constant %15 {handshake.bb = 1 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %17 = ori %9, %11 {handshake.bb = 1 : ui32, handshake.name = "ori0"} : <i32>
    %18 = andi %17, %14 {handshake.bb = 1 : ui32, handshake.name = "andi1"} : <i32>
    %19 = cmpi eq, %18, %16 {handshake.bb = 1 : ui32, handshake.name = "cmpi3"} : <i32>
    %trueResult_2, %falseResult_3 = cond_br %19, %result {handshake.bb = 1 : ui32, handshake.name = "cond_br11"} : <i1>, <>
    %trueResult_4, %falseResult_5 = cond_br %19, %12 {handshake.bb = 2 : ui32, handshake.name = "cond_br58"} : <i1>, <i32>
    %trueResult_6, %falseResult_7 = cond_br %19, %11 {handshake.bb = 2 : ui32, handshake.name = "cond_br59"} : <i1>, <i32>
    %trueResult_8, %falseResult_9 = cond_br %19, %9 {handshake.bb = 2 : ui32, handshake.name = "cond_br60"} : <i1>, <i32>
    %result_10, %index_11 = control_merge %trueResult_2  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %20 = source {handshake.bb = 2 : ui32, handshake.name = "source6"} : <>
    %21 = constant %20 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = 1 : i32} : <>, <i32>
    %22 = shrsi %trueResult_8, %21 {handshake.bb = 2 : ui32, handshake.name = "shrsi0"} : <i32>
    %23 = shrsi %trueResult_6, %21 {handshake.bb = 2 : ui32, handshake.name = "shrsi1"} : <i32>
    %24 = addi %trueResult_4, %21 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %25 = br %result_10 {handshake.bb = 2 : ui32, handshake.name = "br0"} : <>
    %result_12, %index_13 = control_merge %falseResult_3, %40  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %26 = constant %arg2 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant21", value = false} : <>, <i1>
    %27 = mux %28 [%falseResult_9, %39] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %28 = merge %26, %36 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge3"} : <i1>
    %29 = source {handshake.bb = 3 : ui32, handshake.name = "source7"} : <>
    %30 = constant %29 {handshake.bb = 3 : ui32, handshake.name = "constant5", value = 1 : i32} : <>, <i32>
    %31 = source {handshake.bb = 3 : ui32, handshake.name = "source8"} : <>
    %32 = constant %31 {handshake.bb = 3 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %33 = cmpi sgt, %27, %32 {handshake.bb = 3 : ui32, handshake.name = "cmpi4"} : <i32>
    %34 = andi %27, %30 {handshake.bb = 3 : ui32, handshake.name = "andi2"} : <i32>
    %35 = cmpi eq, %34, %32 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i32>
    %36 = andi %33, %35 {handshake.bb = 3 : ui32, handshake.name = "andi3"} : <i1>
    %trueResult_14, %falseResult_15 = cond_br %36, %result_12 {handshake.bb = 3 : ui32, handshake.name = "cond_br25"} : <i1>, <>
    %trueResult_16, %falseResult_17 = cond_br %36, %27 {handshake.bb = 4 : ui32, handshake.name = "cond_br61"} : <i1>, <i32>
    %result_18, %index_19 = control_merge %trueResult_14  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %37 = source {handshake.bb = 4 : ui32, handshake.name = "source10"} : <>
    %38 = constant %37 {handshake.bb = 4 : ui32, handshake.name = "constant7", value = 1 : i32} : <>, <i32>
    %39 = shrsi %trueResult_16, %38 {handshake.bb = 4 : ui32, handshake.name = "shrsi2"} : <i32>
    %40 = br %result_18 {handshake.bb = 4 : ui32, handshake.name = "br2"} : <>
    %result_20, %index_21 = control_merge %falseResult_15, %55  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %41 = constant %arg2 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant23", value = false} : <>, <i1>
    %42 = mux %43 [%falseResult_7, %54] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %43 = merge %41, %51 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge4"} : <i1>
    %44 = source {handshake.bb = 5 : ui32, handshake.name = "source11"} : <>
    %45 = constant %44 {handshake.bb = 5 : ui32, handshake.name = "constant8", value = 1 : i32} : <>, <i32>
    %46 = source {handshake.bb = 5 : ui32, handshake.name = "source12"} : <>
    %47 = constant %46 {handshake.bb = 5 : ui32, handshake.name = "constant9", value = 0 : i32} : <>, <i32>
    %48 = cmpi sgt, %42, %47 {handshake.bb = 5 : ui32, handshake.name = "cmpi6"} : <i32>
    %49 = andi %42, %45 {handshake.bb = 5 : ui32, handshake.name = "andi4"} : <i32>
    %50 = cmpi eq, %49, %47 {handshake.bb = 5 : ui32, handshake.name = "cmpi7"} : <i32>
    %51 = andi %48, %50 {handshake.bb = 5 : ui32, handshake.name = "andi5"} : <i1>
    %trueResult_22, %falseResult_23 = cond_br %51, %result_20 {handshake.bb = 5 : ui32, handshake.name = "cond_br31"} : <i1>, <>
    %trueResult_24, %falseResult_25 = cond_br %51, %42 {handshake.bb = 6 : ui32, handshake.name = "cond_br62"} : <i1>, <i32>
    %result_26, %index_27 = control_merge %trueResult_22  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    %52 = source {handshake.bb = 6 : ui32, handshake.name = "source14"} : <>
    %53 = constant %52 {handshake.bb = 6 : ui32, handshake.name = "constant10", value = 1 : i32} : <>, <i32>
    %54 = shrsi %trueResult_24, %53 {handshake.bb = 6 : ui32, handshake.name = "shrsi3"} : <i32>
    %55 = br %result_26 {handshake.bb = 6 : ui32, handshake.name = "br4"} : <>
    %result_28, %index_29 = control_merge %falseResult_23, %falseResult_41  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %56 = constant %arg2 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "constant25", value = false} : <>, <i1>
    %57 = mux %58 [%falseResult_17, %falseResult_43] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %58 = merge %56, %62 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "merge5"} : <i1>
    %59 = mux %58 [%falseResult_25, %67] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %60 = source {handshake.bb = 7 : ui32, handshake.name = "source15"} : <>
    %61 = constant %60 {handshake.bb = 7 : ui32, handshake.name = "constant11", value = 0 : i32} : <>, <i32>
    %62 = cmpi ne, %57, %61 {handshake.bb = 7 : ui32, handshake.name = "cmpi8"} : <i32>
    %trueResult_30, %falseResult_31 = cond_br %62, %result_28 {handshake.bb = 7 : ui32, handshake.name = "cond_br37"} : <i1>, <>
    %trueResult_32, %falseResult_33 = cond_br %62, %57 {handshake.bb = 8 : ui32, handshake.name = "cond_br63"} : <i1>, <i32>
    %trueResult_34, %falseResult_35 = cond_br %62, %59 {handshake.bb = 8 : ui32, handshake.name = "cond_br64"} : <i1>, <i32>
    %result_36, %index_37 = control_merge %trueResult_30  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    %63 = source {handshake.bb = 8 : ui32, handshake.name = "source18"} : <>
    %64 = constant %63 {handshake.bb = 8 : ui32, handshake.name = "constant12", value = 0 : i32} : <>, <i32>
    %65 = subi %trueResult_32, %trueResult_34 {handshake.bb = 8 : ui32, handshake.name = "subi0"} : <i32>
    %66 = cmpi slt, %trueResult_32, %trueResult_34 {handshake.bb = 8 : ui32, handshake.name = "cmpi9"} : <i32>
    %67 = select %66[%trueResult_32, %trueResult_34] {handshake.bb = 8 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %68 = cmpi sge, %65, %64 {handshake.bb = 8 : ui32, handshake.name = "cmpi10"} : <i32>
    %69 = subi %64, %65 {handshake.bb = 8 : ui32, handshake.name = "subi2"} : <i32>
    %70 = select %68[%65, %69] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %71 = br %result_36 {handshake.bb = 8 : ui32, handshake.name = "br6"} : <>
    %result_38, %index_39 = control_merge %71, %86  {handshake.bb = 9 : ui32, handshake.name = "control_merge8"} : <>, <i1>
    %72 = constant %arg2 {ftd.imerge, handshake.bb = 9 : ui32, handshake.name = "constant29", value = false} : <>, <i1>
    %73 = mux %74 [%70, %85] {ftd.phi, handshake.bb = 9 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %74 = merge %72, %82 {ftd.imerge, handshake.bb = 9 : ui32, handshake.name = "merge7"} : <i1>
    %75 = source {handshake.bb = 9 : ui32, handshake.name = "source19"} : <>
    %76 = constant %75 {handshake.bb = 9 : ui32, handshake.name = "constant13", value = 1 : i32} : <>, <i32>
    %77 = source {handshake.bb = 9 : ui32, handshake.name = "source20"} : <>
    %78 = constant %77 {handshake.bb = 9 : ui32, handshake.name = "constant14", value = 0 : i32} : <>, <i32>
    %79 = cmpi sgt, %73, %78 {handshake.bb = 9 : ui32, handshake.name = "cmpi11"} : <i32>
    %80 = andi %73, %76 {handshake.bb = 9 : ui32, handshake.name = "andi6"} : <i32>
    %81 = cmpi eq, %80, %78 {handshake.bb = 9 : ui32, handshake.name = "cmpi12"} : <i32>
    %82 = andi %79, %81 {handshake.bb = 9 : ui32, handshake.name = "andi7"} : <i1>
    %trueResult_40, %falseResult_41 = cond_br %82, %result_38 {handshake.bb = 9 : ui32, handshake.name = "cond_br51"} : <i1>, <>
    %trueResult_42, %falseResult_43 = cond_br %82, %73 {handshake.bb = 10 : ui32, handshake.name = "cond_br65"} : <i1>, <i32>
    %result_44, %index_45 = control_merge %trueResult_40  {handshake.bb = 10 : ui32, handshake.name = "control_merge9"} : <>, <i1>
    %83 = source {handshake.bb = 10 : ui32, handshake.name = "source22"} : <>
    %84 = constant %83 {handshake.bb = 10 : ui32, handshake.name = "constant15", value = 1 : i32} : <>, <i32>
    %85 = shrsi %trueResult_42, %84 {handshake.bb = 10 : ui32, handshake.name = "shrsi4"} : <i32>
    %86 = br %result_44 {handshake.bb = 10 : ui32, handshake.name = "br9"} : <>
    %87 = shli %falseResult_35, %falseResult_5 {handshake.bb = 11 : ui32, handshake.name = "shli0"} : <i32>
    %trueResult_46, %falseResult_47 = cond_br %7, %5 {handshake.bb = 12 : ui32, handshake.name = "cond_br56"} : <i1>, <i32>
    %88 = mux %7 [%falseResult_47, %87] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    end {handshake.bb = 12 : ui32, handshake.name = "end0"} %88, %arg2 : <i32>, <>
  }
}


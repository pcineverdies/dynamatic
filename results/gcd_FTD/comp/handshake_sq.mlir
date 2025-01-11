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
    %trueResult, %falseResult = cond_br %7, %1 {handshake.bb = 1 : ui32, handshake.name = "cond_br57"} : <i1>, <i32>
    %8 = constant %arg2 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %9 = mux %10 [%arg0, %22] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %10 = merge %8, %19 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %11 = mux %10 [%arg1, %23] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %12 = mux %10 [%trueResult, %24] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %13 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %14 = constant %13 {handshake.bb = 1 : ui32, handshake.name = "constant2", value = 1 : i32} : <>, <i32>
    %15 = source {handshake.bb = 1 : ui32, handshake.name = "source2"} : <>
    %16 = constant %15 {handshake.bb = 1 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %17 = ori %9, %11 {handshake.bb = 1 : ui32, handshake.name = "ori0"} : <i32>
    %18 = andi %17, %14 {handshake.bb = 1 : ui32, handshake.name = "andi1"} : <i32>
    %19 = cmpi eq, %18, %16 {handshake.bb = 1 : ui32, handshake.name = "cmpi3"} : <i32>
    %trueResult_0, %falseResult_1 = cond_br %19, %12 {handshake.bb = 2 : ui32, handshake.name = "cond_br58"} : <i1>, <i32>
    %trueResult_2, %falseResult_3 = cond_br %19, %11 {handshake.bb = 2 : ui32, handshake.name = "cond_br59"} : <i1>, <i32>
    %trueResult_4, %falseResult_5 = cond_br %19, %9 {handshake.bb = 2 : ui32, handshake.name = "cond_br60"} : <i1>, <i32>
    %20 = source {handshake.bb = 2 : ui32, handshake.name = "source6"} : <>
    %21 = constant %20 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = 1 : i32} : <>, <i32>
    %22 = shrsi %trueResult_4, %21 {handshake.bb = 2 : ui32, handshake.name = "shrsi0"} : <i32>
    %23 = shrsi %trueResult_2, %21 {handshake.bb = 2 : ui32, handshake.name = "shrsi1"} : <i32>
    %24 = addi %trueResult_0, %21 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %25 = constant %arg2 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "constant21", value = false} : <>, <i1>
    %26 = mux %27 [%falseResult_5, %38] {ftd.phi, handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %27 = merge %25, %35 {ftd.imerge, handshake.bb = 3 : ui32, handshake.name = "merge3"} : <i1>
    %28 = source {handshake.bb = 3 : ui32, handshake.name = "source7"} : <>
    %29 = constant %28 {handshake.bb = 3 : ui32, handshake.name = "constant5", value = 1 : i32} : <>, <i32>
    %30 = source {handshake.bb = 3 : ui32, handshake.name = "source8"} : <>
    %31 = constant %30 {handshake.bb = 3 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %32 = cmpi sgt, %26, %31 {handshake.bb = 3 : ui32, handshake.name = "cmpi4"} : <i32>
    %33 = andi %26, %29 {handshake.bb = 3 : ui32, handshake.name = "andi2"} : <i32>
    %34 = cmpi eq, %33, %31 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i32>
    %35 = andi %32, %34 {handshake.bb = 3 : ui32, handshake.name = "andi3"} : <i1>
    %trueResult_6, %falseResult_7 = cond_br %35, %26 {handshake.bb = 4 : ui32, handshake.name = "cond_br61"} : <i1>, <i32>
    %36 = source {handshake.bb = 4 : ui32, handshake.name = "source10"} : <>
    %37 = constant %36 {handshake.bb = 4 : ui32, handshake.name = "constant7", value = 1 : i32} : <>, <i32>
    %38 = shrsi %trueResult_6, %37 {handshake.bb = 4 : ui32, handshake.name = "shrsi2"} : <i32>
    %39 = constant %arg2 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant23", value = false} : <>, <i1>
    %40 = mux %41 [%falseResult_3, %52] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %41 = merge %39, %49 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge4"} : <i1>
    %42 = source {handshake.bb = 5 : ui32, handshake.name = "source11"} : <>
    %43 = constant %42 {handshake.bb = 5 : ui32, handshake.name = "constant8", value = 1 : i32} : <>, <i32>
    %44 = source {handshake.bb = 5 : ui32, handshake.name = "source12"} : <>
    %45 = constant %44 {handshake.bb = 5 : ui32, handshake.name = "constant9", value = 0 : i32} : <>, <i32>
    %46 = cmpi sgt, %40, %45 {handshake.bb = 5 : ui32, handshake.name = "cmpi6"} : <i32>
    %47 = andi %40, %43 {handshake.bb = 5 : ui32, handshake.name = "andi4"} : <i32>
    %48 = cmpi eq, %47, %45 {handshake.bb = 5 : ui32, handshake.name = "cmpi7"} : <i32>
    %49 = andi %46, %48 {handshake.bb = 5 : ui32, handshake.name = "andi5"} : <i1>
    %trueResult_8, %falseResult_9 = cond_br %49, %40 {handshake.bb = 6 : ui32, handshake.name = "cond_br62"} : <i1>, <i32>
    %50 = source {handshake.bb = 6 : ui32, handshake.name = "source14"} : <>
    %51 = constant %50 {handshake.bb = 6 : ui32, handshake.name = "constant10", value = 1 : i32} : <>, <i32>
    %52 = shrsi %trueResult_8, %51 {handshake.bb = 6 : ui32, handshake.name = "shrsi3"} : <i32>
    %53 = constant %arg2 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "constant25", value = false} : <>, <i1>
    %54 = mux %55 [%falseResult_7, %falseResult_15] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %55 = merge %53, %59 {ftd.imerge, handshake.bb = 7 : ui32, handshake.name = "merge5"} : <i1>
    %56 = mux %55 [%falseResult_9, %64] {ftd.phi, handshake.bb = 7 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %57 = source {handshake.bb = 7 : ui32, handshake.name = "source15"} : <>
    %58 = constant %57 {handshake.bb = 7 : ui32, handshake.name = "constant11", value = 0 : i32} : <>, <i32>
    %59 = cmpi ne, %54, %58 {handshake.bb = 7 : ui32, handshake.name = "cmpi8"} : <i32>
    %trueResult_10, %falseResult_11 = cond_br %59, %54 {handshake.bb = 8 : ui32, handshake.name = "cond_br63"} : <i1>, <i32>
    %trueResult_12, %falseResult_13 = cond_br %59, %56 {handshake.bb = 8 : ui32, handshake.name = "cond_br64"} : <i1>, <i32>
    %60 = source {handshake.bb = 8 : ui32, handshake.name = "source18"} : <>
    %61 = constant %60 {handshake.bb = 8 : ui32, handshake.name = "constant12", value = 0 : i32} : <>, <i32>
    %62 = subi %trueResult_10, %trueResult_12 {handshake.bb = 8 : ui32, handshake.name = "subi0"} : <i32>
    %63 = cmpi slt, %trueResult_10, %trueResult_12 {handshake.bb = 8 : ui32, handshake.name = "cmpi9"} : <i32>
    %64 = select %63[%trueResult_10, %trueResult_12] {handshake.bb = 8 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %65 = cmpi sge, %62, %61 {handshake.bb = 8 : ui32, handshake.name = "cmpi10"} : <i32>
    %66 = subi %61, %62 {handshake.bb = 8 : ui32, handshake.name = "subi2"} : <i32>
    %67 = select %65[%62, %66] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %68 = constant %arg2 {ftd.imerge, handshake.bb = 9 : ui32, handshake.name = "constant29", value = false} : <>, <i1>
    %69 = mux %70 [%67, %81] {ftd.phi, handshake.bb = 9 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %70 = merge %68, %78 {ftd.imerge, handshake.bb = 9 : ui32, handshake.name = "merge7"} : <i1>
    %71 = source {handshake.bb = 9 : ui32, handshake.name = "source19"} : <>
    %72 = constant %71 {handshake.bb = 9 : ui32, handshake.name = "constant13", value = 1 : i32} : <>, <i32>
    %73 = source {handshake.bb = 9 : ui32, handshake.name = "source20"} : <>
    %74 = constant %73 {handshake.bb = 9 : ui32, handshake.name = "constant14", value = 0 : i32} : <>, <i32>
    %75 = cmpi sgt, %69, %74 {handshake.bb = 9 : ui32, handshake.name = "cmpi11"} : <i32>
    %76 = andi %69, %72 {handshake.bb = 9 : ui32, handshake.name = "andi6"} : <i32>
    %77 = cmpi eq, %76, %74 {handshake.bb = 9 : ui32, handshake.name = "cmpi12"} : <i32>
    %78 = andi %75, %77 {handshake.bb = 9 : ui32, handshake.name = "andi7"} : <i1>
    %trueResult_14, %falseResult_15 = cond_br %78, %69 {handshake.bb = 10 : ui32, handshake.name = "cond_br65"} : <i1>, <i32>
    %79 = source {handshake.bb = 10 : ui32, handshake.name = "source22"} : <>
    %80 = constant %79 {handshake.bb = 10 : ui32, handshake.name = "constant15", value = 1 : i32} : <>, <i32>
    %81 = shrsi %trueResult_14, %80 {handshake.bb = 10 : ui32, handshake.name = "shrsi4"} : <i32>
    %82 = shli %falseResult_13, %falseResult_1 {handshake.bb = 11 : ui32, handshake.name = "shli0"} : <i32>
    %trueResult_16, %falseResult_17 = cond_br %7, %5 {handshake.bb = 12 : ui32, handshake.name = "cond_br56"} : <i1>, <i32>
    %83 = mux %7 [%falseResult_17, %82] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    end {handshake.bb = 12 : ui32, handshake.name = "end0"} %83, %arg2 : <i32>, <>
  }
}


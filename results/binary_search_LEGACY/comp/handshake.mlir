module {
  handshake.func @binary_search(%arg0: !handshake.channel<i32>, %arg1: memref<101xi32>, %arg2: !handshake.control<>, %arg3: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["search", "a", "a_start", "start"], resNames = ["out0", "a_end", "end"]} {
    %outputs:2, %memEnd = mem_controller[%arg1 : memref<101xi32>] %arg2 (%addressResult, %addressResult_42) %result_60 {connectedBlocks = [2 : i32, 6 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>, !handshake.channel<i32>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %0 = constant %arg3 {handshake.bb = 0 : ui32, handshake.name = "constant2", value = 0 : i32} : <>, <i32>
    %1 = constant %arg3 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = true} : <>, <i1>
    %2 = constant %arg3 {handshake.bb = 0 : ui32, handshake.name = "constant5", value = -1 : i32} : <>, <i32>
    %3 = br %0 {handshake.bb = 0 : ui32, handshake.name = "br2"} : <i32>
    %4 = br %2 {handshake.bb = 0 : ui32, handshake.name = "br3"} : <i32>
    %5 = br %1 {handshake.bb = 0 : ui32, handshake.name = "br6"} : <i1>
    %6 = br %arg0 {handshake.bb = 0 : ui32, handshake.name = "br7"} : <i32>
    %7 = br %arg3 {handshake.bb = 0 : ui32, handshake.name = "br8"} : <>
    %8 = mux %index [%3, %trueResult_12] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %9 = mux %index [%4, %trueResult_14] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %10 = mux %index [%5, %trueResult_16] {handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i1>
    %11 = mux %index [%6, %trueResult_18] {handshake.bb = 1 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %result, %index = control_merge %7, %trueResult_20  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %12 = constant %result {handshake.bb = 1 : ui32, handshake.name = "constant7", value = false} : <>, <i1>
    %trueResult, %falseResult = cond_br %10, %11 {handshake.bb = 1 : ui32, handshake.name = "cond_br4"} : <i1>, <i32>
    %trueResult_0, %falseResult_1 = cond_br %10, %8 {handshake.bb = 1 : ui32, handshake.name = "cond_br5"} : <i1>, <i32>
    %trueResult_2, %falseResult_3 = cond_br %10, %9 {handshake.bb = 1 : ui32, handshake.name = "cond_br6"} : <i1>, <i32>
    %trueResult_4, %falseResult_5 = cond_br %10, %result {handshake.bb = 1 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %trueResult_6, %falseResult_7 = cond_br %10, %12 {handshake.bb = 1 : ui32, handshake.name = "cond_br8"} : <i1>, <i1>
    %13 = merge %trueResult {handshake.bb = 2 : ui32, handshake.name = "merge0"} : <i32>
    %14 = merge %trueResult_0 {handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i32>
    %15 = merge %trueResult_2 {handshake.bb = 2 : ui32, handshake.name = "merge2"} : <i32>
    %result_8, %index_9 = control_merge %trueResult_4  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %16 = trunci %14 {handshake.bb = 2 : ui32, handshake.name = "index_cast0"} : <i32> to <i32>
    %addressResult, %dataResult = load[%14] %outputs#0 {handshake.bb = 2 : ui32, handshake.name = "load0"} : <i32>, <i32>
    %17 = cmpi eq, %dataResult, %13 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %18 = select %17[%16, %15] {handshake.bb = 2 : ui32, handshake.name = "select0"} : <i1>, <i32>
    %19 = cmpi ne, %dataResult, %13 {handshake.bb = 2 : ui32, handshake.name = "cmpi1"} : <i32>
    %20 = br %18 {handshake.bb = 2 : ui32, handshake.name = "br9"} : <i32>
    %21 = br %19 {handshake.bb = 2 : ui32, handshake.name = "br10"} : <i1>
    %22 = br %13 {handshake.bb = 2 : ui32, handshake.name = "br11"} : <i32>
    %23 = br %14 {handshake.bb = 2 : ui32, handshake.name = "br12"} : <i32>
    %24 = br %result_8 {handshake.bb = 2 : ui32, handshake.name = "br13"} : <>
    %25 = mux %index_11 [%falseResult_3, %20] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %26 = mux %index_11 [%falseResult_7, %21] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i1>
    %27 = mux %index_11 [%falseResult, %22] {handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %28 = mux %index_11 [%falseResult_1, %23] {handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %result_10, %index_11 = control_merge %falseResult_5, %24  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %29 = source {handshake.bb = 3 : ui32, handshake.name = "source0"} : <>
    %30 = constant %29 {handshake.bb = 3 : ui32, handshake.name = "constant8", value = 101 : i32} : <>, <i32>
    %31 = source {handshake.bb = 3 : ui32, handshake.name = "source1"} : <>
    %32 = constant %31 {handshake.bb = 3 : ui32, handshake.name = "constant9", value = 2 : i32} : <>, <i32>
    %33 = addi %28, %32 {handshake.bb = 3 : ui32, handshake.name = "addi0"} : <i32>
    %34 = cmpi ult, %33, %30 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i32>
    %trueResult_12, %falseResult_13 = cond_br %34, %33 {handshake.bb = 3 : ui32, handshake.name = "cond_br9"} : <i1>, <i32>
    %trueResult_14, %falseResult_15 = cond_br %34, %25 {handshake.bb = 3 : ui32, handshake.name = "cond_br10"} : <i1>, <i32>
    %trueResult_16, %falseResult_17 = cond_br %34, %26 {handshake.bb = 3 : ui32, handshake.name = "cond_br11"} : <i1>, <i1>
    %trueResult_18, %falseResult_19 = cond_br %34, %27 {handshake.bb = 3 : ui32, handshake.name = "cond_br12"} : <i1>, <i32>
    %trueResult_20, %falseResult_21 = cond_br %34, %result_10 {handshake.bb = 3 : ui32, handshake.name = "cond_br13"} : <i1>, <>
    %35 = merge %falseResult_19 {handshake.bb = 4 : ui32, handshake.name = "merge3"} : <i32>
    %36 = merge %falseResult_15 {handshake.bb = 4 : ui32, handshake.name = "merge4"} : <i32>
    %result_22, %index_23 = control_merge %falseResult_21  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %37 = constant %result_22 {handshake.bb = 4 : ui32, handshake.name = "constant10", value = 1 : i32} : <>, <i32>
    %38 = constant %result_22 {handshake.bb = 4 : ui32, handshake.name = "constant11", value = -1 : i32} : <>, <i32>
    %39 = constant %result_22 {handshake.bb = 4 : ui32, handshake.name = "constant12", value = true} : <>, <i1>
    %40 = cmpi ne, %36, %38 {handshake.bb = 4 : ui32, handshake.name = "cmpi2"} : <i32>
    %41 = br %37 {handshake.bb = 4 : ui32, handshake.name = "br14"} : <i32>
    %42 = br %38 {handshake.bb = 4 : ui32, handshake.name = "br15"} : <i32>
    %43 = br %39 {handshake.bb = 4 : ui32, handshake.name = "br16"} : <i1>
    %44 = br %35 {handshake.bb = 4 : ui32, handshake.name = "br17"} : <i32>
    %45 = br %36 {handshake.bb = 4 : ui32, handshake.name = "br18"} : <i32>
    %46 = br %40 {handshake.bb = 4 : ui32, handshake.name = "br19"} : <i1>
    %47 = br %result_22 {handshake.bb = 4 : ui32, handshake.name = "br20"} : <>
    %48 = mux %index_25 [%41, %trueResult_46] {handshake.bb = 5 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %49 = mux %index_25 [%42, %trueResult_48] {handshake.bb = 5 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %50 = mux %index_25 [%43, %trueResult_50] {handshake.bb = 5 : ui32, handshake.name = "mux10"} : <i1>, <i1>
    %51 = mux %index_25 [%44, %trueResult_52] {handshake.bb = 5 : ui32, handshake.name = "mux11"} : <i1>, <i32>
    %52 = mux %index_25 [%45, %trueResult_54] {handshake.bb = 5 : ui32, handshake.name = "mux12"} : <i1>, <i32>
    %53 = mux %index_25 [%46, %trueResult_56] {handshake.bb = 5 : ui32, handshake.name = "mux13"} : <i1>, <i1>
    %result_24, %index_25 = control_merge %47, %trueResult_58  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %54 = constant %result_24 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = false} : <>, <i1>
    %trueResult_26, %falseResult_27 = cond_br %50, %51 {handshake.bb = 5 : ui32, handshake.name = "cond_br14"} : <i1>, <i32>
    %trueResult_28, %falseResult_29 = cond_br %50, %52 {handshake.bb = 5 : ui32, handshake.name = "cond_br15"} : <i1>, <i32>
    %trueResult_30, %falseResult_31 = cond_br %50, %53 {handshake.bb = 5 : ui32, handshake.name = "cond_br16"} : <i1>, <i1>
    %trueResult_32, %falseResult_33 = cond_br %50, %48 {handshake.bb = 5 : ui32, handshake.name = "cond_br17"} : <i1>, <i32>
    %trueResult_34, %falseResult_35 = cond_br %50, %49 {handshake.bb = 5 : ui32, handshake.name = "cond_br18"} : <i1>, <i32>
    %trueResult_36, %falseResult_37 = cond_br %50, %result_24 {handshake.bb = 5 : ui32, handshake.name = "cond_br19"} : <i1>, <>
    %trueResult_38, %falseResult_39 = cond_br %50, %54 {handshake.bb = 5 : ui32, handshake.name = "cond_br20"} : <i1>, <i1>
    %55 = merge %trueResult_26 {handshake.bb = 6 : ui32, handshake.name = "merge5"} : <i32>
    %56 = merge %trueResult_28 {handshake.bb = 6 : ui32, handshake.name = "merge6"} : <i32>
    %57 = merge %trueResult_30 {handshake.bb = 6 : ui32, handshake.name = "merge7"} : <i1>
    %58 = merge %trueResult_32 {handshake.bb = 6 : ui32, handshake.name = "merge8"} : <i32>
    %59 = merge %trueResult_34 {handshake.bb = 6 : ui32, handshake.name = "merge9"} : <i32>
    %result_40, %index_41 = control_merge %trueResult_36  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    %60 = trunci %58 {handshake.bb = 6 : ui32, handshake.name = "index_cast1"} : <i32> to <i32>
    %addressResult_42, %dataResult_43 = load[%58] %outputs#1 {handshake.bb = 6 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %61 = cmpi eq, %dataResult_43, %55 {handshake.bb = 6 : ui32, handshake.name = "cmpi3"} : <i32>
    %62 = select %61[%60, %59] {handshake.bb = 6 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %63 = cmpi ne, %dataResult_43, %55 {handshake.bb = 6 : ui32, handshake.name = "cmpi4"} : <i32>
    %64 = br %62 {handshake.bb = 6 : ui32, handshake.name = "br21"} : <i32>
    %65 = br %63 {handshake.bb = 6 : ui32, handshake.name = "br22"} : <i1>
    %66 = br %55 {handshake.bb = 6 : ui32, handshake.name = "br23"} : <i32>
    %67 = br %56 {handshake.bb = 6 : ui32, handshake.name = "br24"} : <i32>
    %68 = br %57 {handshake.bb = 6 : ui32, handshake.name = "br25"} : <i1>
    %69 = br %58 {handshake.bb = 6 : ui32, handshake.name = "br26"} : <i32>
    %70 = br %result_40 {handshake.bb = 6 : ui32, handshake.name = "br27"} : <>
    %71 = mux %index_45 [%falseResult_35, %64] {handshake.bb = 7 : ui32, handshake.name = "mux14"} : <i1>, <i32>
    %72 = mux %index_45 [%falseResult_39, %65] {handshake.bb = 7 : ui32, handshake.name = "mux15"} : <i1>, <i1>
    %73 = mux %index_45 [%falseResult_27, %66] {handshake.bb = 7 : ui32, handshake.name = "mux16"} : <i1>, <i32>
    %74 = mux %index_45 [%falseResult_29, %67] {handshake.bb = 7 : ui32, handshake.name = "mux17"} : <i1>, <i32>
    %75 = mux %index_45 [%falseResult_31, %68] {handshake.bb = 7 : ui32, handshake.name = "mux18"} : <i1>, <i1>
    %76 = mux %index_45 [%falseResult_33, %69] {handshake.bb = 7 : ui32, handshake.name = "mux19"} : <i1>, <i32>
    %result_44, %index_45 = control_merge %falseResult_37, %70  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %77 = source {handshake.bb = 7 : ui32, handshake.name = "source2"} : <>
    %78 = constant %77 {handshake.bb = 7 : ui32, handshake.name = "constant14", value = 101 : i32} : <>, <i32>
    %79 = source {handshake.bb = 7 : ui32, handshake.name = "source3"} : <>
    %80 = constant %79 {handshake.bb = 7 : ui32, handshake.name = "constant15", value = 2 : i32} : <>, <i32>
    %81 = addi %76, %80 {handshake.bb = 7 : ui32, handshake.name = "addi1"} : <i32>
    %82 = cmpi ult, %81, %78 {handshake.bb = 7 : ui32, handshake.name = "cmpi6"} : <i32>
    %trueResult_46, %falseResult_47 = cond_br %82, %81 {handshake.bb = 7 : ui32, handshake.name = "cond_br21"} : <i1>, <i32>
    %trueResult_48, %falseResult_49 = cond_br %82, %71 {handshake.bb = 7 : ui32, handshake.name = "cond_br22"} : <i1>, <i32>
    %trueResult_50, %falseResult_51 = cond_br %82, %72 {handshake.bb = 7 : ui32, handshake.name = "cond_br23"} : <i1>, <i1>
    %trueResult_52, %falseResult_53 = cond_br %82, %73 {handshake.bb = 7 : ui32, handshake.name = "cond_br24"} : <i1>, <i32>
    %trueResult_54, %falseResult_55 = cond_br %82, %74 {handshake.bb = 7 : ui32, handshake.name = "cond_br25"} : <i1>, <i32>
    %trueResult_56, %falseResult_57 = cond_br %82, %75 {handshake.bb = 7 : ui32, handshake.name = "cond_br26"} : <i1>, <i1>
    %trueResult_58, %falseResult_59 = cond_br %82, %result_44 {handshake.bb = 7 : ui32, handshake.name = "cond_br27"} : <i1>, <>
    %83 = merge %falseResult_55 {handshake.bb = 8 : ui32, handshake.name = "merge10"} : <i32>
    %84 = merge %falseResult_57 {handshake.bb = 8 : ui32, handshake.name = "merge11"} : <i1>
    %85 = merge %falseResult_49 {handshake.bb = 8 : ui32, handshake.name = "merge12"} : <i32>
    %result_60, %index_61 = control_merge %falseResult_59  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    %86 = select %84[%83, %85] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    end {handshake.bb = 8 : ui32, handshake.name = "end0"} %86, %memEnd, %arg3 : <i32>, <>, <>
  }
}


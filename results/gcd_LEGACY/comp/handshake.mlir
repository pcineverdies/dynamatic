module {
  handshake.func @gcd(%arg0: !handshake.channel<i32>, %arg1: !handshake.channel<i32>, %arg2: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>) attributes {argNames = ["a", "b", "start"], resNames = ["out0", "end"]} {
    %0 = constant %arg2 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = 0 : i32} : <>, <i32>
    %1 = constant %arg2 {handshake.bb = 0 : ui32, handshake.name = "mlir.undef0", value = 0 : i32} : <>, <i32>
    %2 = cmpi eq, %arg0, %0 {handshake.bb = 0 : ui32, handshake.name = "cmpi0"} : <i32>
    %3 = cmpi ne, %arg0, %0 {handshake.bb = 0 : ui32, handshake.name = "cmpi1"} : <i32>
    %4 = select %2[%arg1, %1] {handshake.bb = 0 : ui32, handshake.name = "select0"} : <i1>, <i32>
    %5 = cmpi ne, %arg1, %0 {handshake.bb = 0 : ui32, handshake.name = "cmpi2"} : <i32>
    %6 = andi %3, %5 {handshake.bb = 0 : ui32, handshake.name = "andi0"} : <i1>
    %trueResult, %falseResult = cond_br %6, %0 {handshake.bb = 0 : ui32, handshake.name = "cond_br6"} : <i1>, <i32>
    %trueResult_0, %falseResult_1 = cond_br %6, %arg1 {handshake.bb = 0 : ui32, handshake.name = "cond_br7"} : <i1>, <i32>
    %trueResult_2, %falseResult_3 = cond_br %6, %arg0 {handshake.bb = 0 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    %trueResult_4, %falseResult_5 = cond_br %6, %arg2 {handshake.bb = 0 : ui32, handshake.name = "cond_br9"} : <i1>, <>
    %trueResult_6, %falseResult_7 = cond_br %6, %4 {handshake.bb = 0 : ui32, handshake.name = "cond_br10"} : <i1>, <i32>
    %7 = mux %index [%trueResult, %25] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %8 = mux %index [%trueResult_0, %26] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %9 = mux %index [%trueResult_2, %27] {handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %result, %index = control_merge %trueResult_4, %28  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %10 = source {handshake.bb = 1 : ui32, handshake.name = "source0"} : <>
    %11 = constant %10 {handshake.bb = 1 : ui32, handshake.name = "constant2", value = 1 : i32} : <>, <i32>
    %12 = source {handshake.bb = 1 : ui32, handshake.name = "source1"} : <>
    %13 = constant %12 {handshake.bb = 1 : ui32, handshake.name = "constant3", value = 0 : i32} : <>, <i32>
    %14 = ori %9, %8 {handshake.bb = 1 : ui32, handshake.name = "ori0"} : <i32>
    %15 = andi %14, %11 {handshake.bb = 1 : ui32, handshake.name = "andi1"} : <i32>
    %16 = cmpi eq, %15, %13 {handshake.bb = 1 : ui32, handshake.name = "cmpi3"} : <i32>
    %trueResult_8, %falseResult_9 = cond_br %16, %7 {handshake.bb = 1 : ui32, handshake.name = "cond_br11"} : <i1>, <i32>
    %trueResult_10, %falseResult_11 = cond_br %16, %8 {handshake.bb = 1 : ui32, handshake.name = "cond_br12"} : <i1>, <i32>
    %trueResult_12, %falseResult_13 = cond_br %16, %9 {handshake.bb = 1 : ui32, handshake.name = "cond_br13"} : <i1>, <i32>
    %trueResult_14, %falseResult_15 = cond_br %16, %result {handshake.bb = 1 : ui32, handshake.name = "cond_br14"} : <i1>, <>
    %17 = merge %trueResult_8 {handshake.bb = 2 : ui32, handshake.name = "merge0"} : <i32>
    %18 = merge %trueResult_10 {handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i32>
    %19 = merge %trueResult_12 {handshake.bb = 2 : ui32, handshake.name = "merge2"} : <i32>
    %result_16, %index_17 = control_merge %trueResult_14  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %20 = source {handshake.bb = 2 : ui32, handshake.name = "source2"} : <>
    %21 = constant %20 {handshake.bb = 2 : ui32, handshake.name = "constant4", value = 1 : i32} : <>, <i32>
    %22 = shrsi %19, %21 {handshake.bb = 2 : ui32, handshake.name = "shrsi0"} : <i32>
    %23 = shrsi %18, %21 {handshake.bb = 2 : ui32, handshake.name = "shrsi1"} : <i32>
    %24 = addi %17, %21 {handshake.bb = 2 : ui32, handshake.name = "addi0"} : <i32>
    %25 = br %24 {handshake.bb = 2 : ui32, handshake.name = "br0"} : <i32>
    %26 = br %23 {handshake.bb = 2 : ui32, handshake.name = "br2"} : <i32>
    %27 = br %22 {handshake.bb = 2 : ui32, handshake.name = "br4"} : <i32>
    %28 = br %result_16 {handshake.bb = 2 : ui32, handshake.name = "br6"} : <>
    %29 = mux %index_19 [%falseResult_13, %46] {handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %30 = mux %index_19 [%falseResult_9, %47] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %31 = mux %index_19 [%falseResult_11, %48] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %result_18, %index_19 = control_merge %falseResult_15, %49  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %32 = source {handshake.bb = 3 : ui32, handshake.name = "source3"} : <>
    %33 = constant %32 {handshake.bb = 3 : ui32, handshake.name = "constant5", value = 1 : i32} : <>, <i32>
    %34 = source {handshake.bb = 3 : ui32, handshake.name = "source4"} : <>
    %35 = constant %34 {handshake.bb = 3 : ui32, handshake.name = "constant6", value = 0 : i32} : <>, <i32>
    %36 = cmpi sgt, %29, %35 {handshake.bb = 3 : ui32, handshake.name = "cmpi4"} : <i32>
    %37 = andi %29, %33 {handshake.bb = 3 : ui32, handshake.name = "andi2"} : <i32>
    %38 = cmpi eq, %37, %35 {handshake.bb = 3 : ui32, handshake.name = "cmpi5"} : <i32>
    %39 = andi %36, %38 {handshake.bb = 3 : ui32, handshake.name = "andi3"} : <i1>
    %trueResult_20, %falseResult_21 = cond_br %39, %29 {handshake.bb = 3 : ui32, handshake.name = "cond_br15"} : <i1>, <i32>
    %trueResult_22, %falseResult_23 = cond_br %39, %30 {handshake.bb = 3 : ui32, handshake.name = "cond_br16"} : <i1>, <i32>
    %trueResult_24, %falseResult_25 = cond_br %39, %31 {handshake.bb = 3 : ui32, handshake.name = "cond_br17"} : <i1>, <i32>
    %trueResult_26, %falseResult_27 = cond_br %39, %result_18 {handshake.bb = 3 : ui32, handshake.name = "cond_br18"} : <i1>, <>
    %40 = merge %trueResult_20 {handshake.bb = 4 : ui32, handshake.name = "merge3"} : <i32>
    %41 = merge %trueResult_22 {handshake.bb = 4 : ui32, handshake.name = "merge4"} : <i32>
    %42 = merge %trueResult_24 {handshake.bb = 4 : ui32, handshake.name = "merge5"} : <i32>
    %result_28, %index_29 = control_merge %trueResult_26  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %43 = source {handshake.bb = 4 : ui32, handshake.name = "source5"} : <>
    %44 = constant %43 {handshake.bb = 4 : ui32, handshake.name = "constant7", value = 1 : i32} : <>, <i32>
    %45 = shrsi %40, %44 {handshake.bb = 4 : ui32, handshake.name = "shrsi2"} : <i32>
    %46 = br %45 {handshake.bb = 4 : ui32, handshake.name = "br9"} : <i32>
    %47 = br %41 {handshake.bb = 4 : ui32, handshake.name = "br11"} : <i32>
    %48 = br %42 {handshake.bb = 4 : ui32, handshake.name = "br12"} : <i32>
    %49 = br %result_28 {handshake.bb = 4 : ui32, handshake.name = "br13"} : <>
    %50 = mux %index_31 [%falseResult_25, %67] {handshake.bb = 5 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %51 = mux %index_31 [%falseResult_23, %68] {handshake.bb = 5 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %52 = mux %index_31 [%falseResult_21, %69] {handshake.bb = 5 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %result_30, %index_31 = control_merge %falseResult_27, %70  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %53 = source {handshake.bb = 5 : ui32, handshake.name = "source6"} : <>
    %54 = constant %53 {handshake.bb = 5 : ui32, handshake.name = "constant8", value = 1 : i32} : <>, <i32>
    %55 = source {handshake.bb = 5 : ui32, handshake.name = "source7"} : <>
    %56 = constant %55 {handshake.bb = 5 : ui32, handshake.name = "constant9", value = 0 : i32} : <>, <i32>
    %57 = cmpi sgt, %50, %56 {handshake.bb = 5 : ui32, handshake.name = "cmpi6"} : <i32>
    %58 = andi %50, %54 {handshake.bb = 5 : ui32, handshake.name = "andi4"} : <i32>
    %59 = cmpi eq, %58, %56 {handshake.bb = 5 : ui32, handshake.name = "cmpi7"} : <i32>
    %60 = andi %57, %59 {handshake.bb = 5 : ui32, handshake.name = "andi5"} : <i1>
    %trueResult_32, %falseResult_33 = cond_br %60, %50 {handshake.bb = 5 : ui32, handshake.name = "cond_br19"} : <i1>, <i32>
    %trueResult_34, %falseResult_35 = cond_br %60, %51 {handshake.bb = 5 : ui32, handshake.name = "cond_br20"} : <i1>, <i32>
    %trueResult_36, %falseResult_37 = cond_br %60, %52 {handshake.bb = 5 : ui32, handshake.name = "cond_br21"} : <i1>, <i32>
    %trueResult_38, %falseResult_39 = cond_br %60, %result_30 {handshake.bb = 5 : ui32, handshake.name = "cond_br22"} : <i1>, <>
    %61 = merge %trueResult_32 {handshake.bb = 6 : ui32, handshake.name = "merge6"} : <i32>
    %62 = merge %trueResult_34 {handshake.bb = 6 : ui32, handshake.name = "merge7"} : <i32>
    %63 = merge %trueResult_36 {handshake.bb = 6 : ui32, handshake.name = "merge8"} : <i32>
    %result_40, %index_41 = control_merge %trueResult_38  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    %64 = source {handshake.bb = 6 : ui32, handshake.name = "source8"} : <>
    %65 = constant %64 {handshake.bb = 6 : ui32, handshake.name = "constant10", value = 1 : i32} : <>, <i32>
    %66 = shrsi %61, %65 {handshake.bb = 6 : ui32, handshake.name = "shrsi3"} : <i32>
    %67 = br %66 {handshake.bb = 6 : ui32, handshake.name = "br14"} : <i32>
    %68 = br %62 {handshake.bb = 6 : ui32, handshake.name = "br15"} : <i32>
    %69 = br %63 {handshake.bb = 6 : ui32, handshake.name = "br16"} : <i32>
    %70 = br %result_40 {handshake.bb = 6 : ui32, handshake.name = "br17"} : <>
    %71 = mux %index_43 [%falseResult_33, %falseResult_61] {handshake.bb = 7 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %72 = mux %index_43 [%falseResult_37, %falseResult_57] {handshake.bb = 7 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %73 = mux %index_43 [%falseResult_35, %falseResult_59] {handshake.bb = 7 : ui32, handshake.name = "mux11"} : <i1>, <i32>
    %result_42, %index_43 = control_merge %falseResult_39, %falseResult_63  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %74 = source {handshake.bb = 7 : ui32, handshake.name = "source9"} : <>
    %75 = constant %74 {handshake.bb = 7 : ui32, handshake.name = "constant11", value = 0 : i32} : <>, <i32>
    %76 = cmpi ne, %72, %75 {handshake.bb = 7 : ui32, handshake.name = "cmpi8"} : <i32>
    %trueResult_44, %falseResult_45 = cond_br %76, %71 {handshake.bb = 7 : ui32, handshake.name = "cond_br23"} : <i1>, <i32>
    %trueResult_46, %falseResult_47 = cond_br %76, %72 {handshake.bb = 7 : ui32, handshake.name = "cond_br24"} : <i1>, <i32>
    %trueResult_48, %falseResult_49 = cond_br %76, %73 {handshake.bb = 7 : ui32, handshake.name = "cond_br25"} : <i1>, <i32>
    %trueResult_50, %falseResult_51 = cond_br %76, %result_42 {handshake.bb = 7 : ui32, handshake.name = "cond_br26"} : <i1>, <>
    %77 = merge %trueResult_44 {handshake.bb = 8 : ui32, handshake.name = "merge9"} : <i32>
    %78 = merge %trueResult_46 {handshake.bb = 8 : ui32, handshake.name = "merge10"} : <i32>
    %79 = merge %trueResult_48 {handshake.bb = 8 : ui32, handshake.name = "merge11"} : <i32>
    %result_52, %index_53 = control_merge %trueResult_50  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    %80 = source {handshake.bb = 8 : ui32, handshake.name = "source10"} : <>
    %81 = constant %80 {handshake.bb = 8 : ui32, handshake.name = "constant12", value = 0 : i32} : <>, <i32>
    %82 = subi %78, %77 {handshake.bb = 8 : ui32, handshake.name = "subi0"} : <i32>
    %83 = cmpi slt, %78, %77 {handshake.bb = 8 : ui32, handshake.name = "cmpi9"} : <i32>
    %84 = select %83[%78, %77] {handshake.bb = 8 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %85 = cmpi sge, %82, %81 {handshake.bb = 8 : ui32, handshake.name = "cmpi10"} : <i32>
    %86 = subi %81, %82 {handshake.bb = 8 : ui32, handshake.name = "subi2"} : <i32>
    %87 = select %85[%82, %86] {handshake.bb = 8 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %88 = br %87 {handshake.bb = 8 : ui32, handshake.name = "br18"} : <i32>
    %89 = br %79 {handshake.bb = 8 : ui32, handshake.name = "br19"} : <i32>
    %90 = br %84 {handshake.bb = 8 : ui32, handshake.name = "br20"} : <i32>
    %91 = br %result_52 {handshake.bb = 8 : ui32, handshake.name = "br21"} : <>
    %92 = mux %index_55 [%88, %109] {handshake.bb = 9 : ui32, handshake.name = "mux12"} : <i1>, <i32>
    %93 = mux %index_55 [%89, %110] {handshake.bb = 9 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %94 = mux %index_55 [%90, %111] {handshake.bb = 9 : ui32, handshake.name = "mux14"} : <i1>, <i32>
    %result_54, %index_55 = control_merge %91, %112  {handshake.bb = 9 : ui32, handshake.name = "control_merge8"} : <>, <i1>
    %95 = source {handshake.bb = 9 : ui32, handshake.name = "source11"} : <>
    %96 = constant %95 {handshake.bb = 9 : ui32, handshake.name = "constant13", value = 1 : i32} : <>, <i32>
    %97 = source {handshake.bb = 9 : ui32, handshake.name = "source12"} : <>
    %98 = constant %97 {handshake.bb = 9 : ui32, handshake.name = "constant14", value = 0 : i32} : <>, <i32>
    %99 = cmpi sgt, %92, %98 {handshake.bb = 9 : ui32, handshake.name = "cmpi11"} : <i32>
    %100 = andi %92, %96 {handshake.bb = 9 : ui32, handshake.name = "andi6"} : <i32>
    %101 = cmpi eq, %100, %98 {handshake.bb = 9 : ui32, handshake.name = "cmpi12"} : <i32>
    %102 = andi %99, %101 {handshake.bb = 9 : ui32, handshake.name = "andi7"} : <i1>
    %trueResult_56, %falseResult_57 = cond_br %102, %92 {handshake.bb = 9 : ui32, handshake.name = "cond_br27"} : <i1>, <i32>
    %trueResult_58, %falseResult_59 = cond_br %102, %93 {handshake.bb = 9 : ui32, handshake.name = "cond_br28"} : <i1>, <i32>
    %trueResult_60, %falseResult_61 = cond_br %102, %94 {handshake.bb = 9 : ui32, handshake.name = "cond_br29"} : <i1>, <i32>
    %trueResult_62, %falseResult_63 = cond_br %102, %result_54 {handshake.bb = 9 : ui32, handshake.name = "cond_br30"} : <i1>, <>
    %103 = merge %trueResult_56 {handshake.bb = 10 : ui32, handshake.name = "merge12"} : <i32>
    %104 = merge %trueResult_58 {handshake.bb = 10 : ui32, handshake.name = "merge13"} : <i32>
    %105 = merge %trueResult_60 {handshake.bb = 10 : ui32, handshake.name = "merge14"} : <i32>
    %result_64, %index_65 = control_merge %trueResult_62  {handshake.bb = 10 : ui32, handshake.name = "control_merge9"} : <>, <i1>
    %106 = source {handshake.bb = 10 : ui32, handshake.name = "source13"} : <>
    %107 = constant %106 {handshake.bb = 10 : ui32, handshake.name = "constant15", value = 1 : i32} : <>, <i32>
    %108 = shrsi %103, %107 {handshake.bb = 10 : ui32, handshake.name = "shrsi4"} : <i32>
    %109 = br %108 {handshake.bb = 10 : ui32, handshake.name = "br22"} : <i32>
    %110 = br %104 {handshake.bb = 10 : ui32, handshake.name = "br23"} : <i32>
    %111 = br %105 {handshake.bb = 10 : ui32, handshake.name = "br24"} : <i32>
    %112 = br %result_64 {handshake.bb = 10 : ui32, handshake.name = "br25"} : <>
    %113 = merge %falseResult_49 {handshake.bb = 11 : ui32, handshake.name = "merge15"} : <i32>
    %114 = merge %falseResult_45 {handshake.bb = 11 : ui32, handshake.name = "merge16"} : <i32>
    %result_66, %index_67 = control_merge %falseResult_51  {handshake.bb = 11 : ui32, handshake.name = "control_merge10"} : <>, <i1>
    %115 = shli %114, %113 {handshake.bb = 11 : ui32, handshake.name = "shli0"} : <i32>
    %116 = br %115 {handshake.bb = 11 : ui32, handshake.name = "br26"} : <i32>
    %117 = br %result_66 {handshake.bb = 11 : ui32, handshake.name = "br27"} : <>
    %118 = mux %index_69 [%falseResult_7, %116] {handshake.bb = 12 : ui32, handshake.name = "mux15"} : <i1>, <i32>
    %result_68, %index_69 = control_merge %falseResult_5, %117  {handshake.bb = 12 : ui32, handshake.name = "control_merge11"} : <>, <i1>
    end {handshake.bb = 12 : ui32, handshake.name = "end0"} %118, %arg2 : <i32>, <>
  }
}


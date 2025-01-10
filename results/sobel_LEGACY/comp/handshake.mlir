module {
  handshake.func @sobel(%arg0: memref<256xi32>, %arg1: memref<9xi32>, %arg2: memref<9xi32>, %arg3: memref<256xi32>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["in", "gX", "gY", "out", "in_start", "gX_start", "gY_start", "out_start", "start"], resNames = ["out0", "in_end", "gX_end", "gY_end", "out_end", "end"]} {
    %memEnd = mem_controller[%arg3 : memref<256xi32>] %arg7 (%169, %addressResult_103, %dataResult_104) %result_121 {connectedBlocks = [12 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg2 : memref<9xi32>] %arg6 (%addressResult_21) %result_121 {connectedBlocks = [5 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg1 : memref<9xi32>] %arg5 (%addressResult_19) %result_121 {connectedBlocks = [5 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_3, %memEnd_4 = mem_controller[%arg0 : memref<256xi32>] %arg4 (%addressResult) %result_121 {connectedBlocks = [3 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0 = constant %arg8 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = 0 : i32} : <>, <i32>
    %1 = constant %arg8 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %2 = br %1 {handshake.bb = 0 : ui32, handshake.name = "br4"} : <i32>
    %3 = br %0 {handshake.bb = 0 : ui32, handshake.name = "br6"} : <i32>
    %4 = br %arg8 {handshake.bb = 0 : ui32, handshake.name = "br7"} : <>
    %5 = mux %index [%2, %trueResult_115] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %6 = mux %index [%3, %trueResult_117] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %result, %index = control_merge %4, %trueResult_119  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %7 = constant %result {handshake.bb = 1 : ui32, handshake.name = "constant10", value = 0 : i32} : <>, <i32>
    %8 = br %7 {handshake.bb = 1 : ui32, handshake.name = "br9"} : <i32>
    %9 = br %6 {handshake.bb = 1 : ui32, handshake.name = "br11"} : <i32>
    %10 = br %5 {handshake.bb = 1 : ui32, handshake.name = "br12"} : <i32>
    %11 = br %result {handshake.bb = 1 : ui32, handshake.name = "br13"} : <>
    %12 = mux %index_6 [%8, %trueResult_105] {handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %13 = mux %index_6 [%9, %trueResult_107] {handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %14 = mux %index_6 [%10, %trueResult_109] {handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %result_5, %index_6 = control_merge %11, %trueResult_111  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %15 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %16 = constant %15 {handshake.bb = 2 : ui32, handshake.name = "constant11", value = 5 : i32} : <>, <i32>
    %17 = source {handshake.bb = 2 : ui32, handshake.name = "source1"} : <>
    %18 = constant %17 {handshake.bb = 2 : ui32, handshake.name = "constant12", value = 0 : i32} : <>, <i32>
    %19 = trunci %12 {handshake.bb = 2 : ui32, handshake.name = "index_cast0"} : <i32> to <i32>
    %20 = cmpi eq, %19, %18 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %21 = extui %20 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i1> to <i32>
    %22 = cmpi eq, %19, %16 {handshake.bb = 2 : ui32, handshake.name = "cmpi1"} : <i32>
    %23 = cmpi eq, %21, %18 {handshake.bb = 2 : ui32, handshake.name = "cmpi2"} : <i32>
    %24 = andi %23, %22 {handshake.bb = 2 : ui32, handshake.name = "andi0"} : <i1>
    %25 = ori %20, %24 {handshake.bb = 2 : ui32, handshake.name = "ori0"} : <i1>
    %26 = extsi %25 {handshake.bb = 2 : ui32, handshake.name = "extsi0"} : <i1> to <i32>
    %27 = cmpi eq, %26, %18 {handshake.bb = 2 : ui32, handshake.name = "cmpi3"} : <i32>
    %trueResult, %falseResult = cond_br %27, %14 {handshake.bb = 2 : ui32, handshake.name = "cond_br7"} : <i1>, <i32>
    %trueResult_7, %falseResult_8 = cond_br %27, %12 {handshake.bb = 2 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    %trueResult_9, %falseResult_10 = cond_br %27, %13 {handshake.bb = 2 : ui32, handshake.name = "cond_br9"} : <i1>, <i32>
    %trueResult_11, %falseResult_12 = cond_br %27, %result_5 {handshake.bb = 2 : ui32, handshake.name = "cond_br10"} : <i1>, <>
    %28 = merge %trueResult {handshake.bb = 3 : ui32, handshake.name = "merge0"} : <i32>
    %29 = merge %trueResult_7 {handshake.bb = 3 : ui32, handshake.name = "merge1"} : <i32>
    %30 = merge %trueResult_9 {handshake.bb = 3 : ui32, handshake.name = "merge2"} : <i32>
    %result_13, %index_14 = control_merge %trueResult_11  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %31 = constant %result_13 {handshake.bb = 3 : ui32, handshake.name = "constant13", value = -1 : i32} : <>, <i32>
    %32 = constant %result_13 {handshake.bb = 3 : ui32, handshake.name = "constant14", value = 0 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%29] %outputs_3 {handshake.bb = 3 : ui32, handshake.name = "load0"} : <i32>, <i32>
    %33 = br %31 {handshake.bb = 3 : ui32, handshake.name = "br14"} : <i32>
    %34 = br %32 {handshake.bb = 3 : ui32, handshake.name = "br15"} : <i32>
    %35 = br %28 {handshake.bb = 3 : ui32, handshake.name = "br16"} : <i32>
    %36 = br %29 {handshake.bb = 3 : ui32, handshake.name = "br17"} : <i32>
    %37 = br %30 {handshake.bb = 3 : ui32, handshake.name = "br18"} : <i32>
    %38 = br %dataResult {handshake.bb = 3 : ui32, handshake.name = "br19"} : <i32>
    %39 = br %result_13 {handshake.bb = 3 : ui32, handshake.name = "br20"} : <>
    %40 = mux %index_16 [%33, %trueResult_43] {handshake.bb = 4 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %41 = mux %index_16 [%34, %trueResult_45] {handshake.bb = 4 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %42 = mux %index_16 [%34, %trueResult_47] {handshake.bb = 4 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %43 = mux %index_16 [%35, %trueResult_49] {handshake.bb = 4 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %44 = mux %index_16 [%36, %trueResult_51] {handshake.bb = 4 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %45 = mux %index_16 [%37, %trueResult_53] {handshake.bb = 4 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %46 = mux %index_16 [%38, %trueResult_55] {handshake.bb = 4 : ui32, handshake.name = "mux11"} : <i1>, <i32>
    %result_15, %index_16 = control_merge %39, %trueResult_57  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %47 = constant %result_15 {handshake.bb = 4 : ui32, handshake.name = "constant15", value = -1 : i32} : <>, <i32>
    %48 = br %47 {handshake.bb = 4 : ui32, handshake.name = "br21"} : <i32>
    %49 = br %41 {handshake.bb = 4 : ui32, handshake.name = "br22"} : <i32>
    %50 = br %42 {handshake.bb = 4 : ui32, handshake.name = "br23"} : <i32>
    %51 = br %43 {handshake.bb = 4 : ui32, handshake.name = "br24"} : <i32>
    %52 = br %44 {handshake.bb = 4 : ui32, handshake.name = "br25"} : <i32>
    %53 = br %45 {handshake.bb = 4 : ui32, handshake.name = "br26"} : <i32>
    %54 = br %46 {handshake.bb = 4 : ui32, handshake.name = "br27"} : <i32>
    %55 = br %40 {handshake.bb = 4 : ui32, handshake.name = "br28"} : <i32>
    %56 = br %result_15 {handshake.bb = 4 : ui32, handshake.name = "br29"} : <>
    %57 = mux %index_18 [%48, %trueResult_23] {handshake.bb = 5 : ui32, handshake.name = "mux12"} : <i1>, <i32>
    %58 = mux %index_18 [%49, %trueResult_25] {handshake.bb = 5 : ui32, handshake.name = "mux13"} : <i1>, <i32>
    %59 = mux %index_18 [%50, %trueResult_27] {handshake.bb = 5 : ui32, handshake.name = "mux14"} : <i1>, <i32>
    %60 = mux %index_18 [%51, %trueResult_29] {handshake.bb = 5 : ui32, handshake.name = "mux15"} : <i1>, <i32>
    %61 = mux %index_18 [%52, %trueResult_31] {handshake.bb = 5 : ui32, handshake.name = "mux16"} : <i1>, <i32>
    %62 = mux %index_18 [%53, %trueResult_33] {handshake.bb = 5 : ui32, handshake.name = "mux17"} : <i1>, <i32>
    %63 = mux %index_18 [%54, %trueResult_35] {handshake.bb = 5 : ui32, handshake.name = "mux18"} : <i1>, <i32>
    %64 = mux %index_18 [%55, %trueResult_37] {handshake.bb = 5 : ui32, handshake.name = "mux19"} : <i1>, <i32>
    %result_17, %index_18 = control_merge %56, %trueResult_39  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %65 = source {handshake.bb = 5 : ui32, handshake.name = "source2"} : <>
    %66 = constant %65 {handshake.bb = 5 : ui32, handshake.name = "constant16", value = 4 : i32} : <>, <i32>
    %67 = source {handshake.bb = 5 : ui32, handshake.name = "source3"} : <>
    %68 = constant %67 {handshake.bb = 5 : ui32, handshake.name = "constant17", value = 2 : i32} : <>, <i32>
    %69 = source {handshake.bb = 5 : ui32, handshake.name = "source4"} : <>
    %70 = constant %69 {handshake.bb = 5 : ui32, handshake.name = "constant18", value = 1 : i32} : <>, <i32>
    %71 = shli %64, %70 {handshake.bb = 5 : ui32, handshake.name = "shli0"} : <i32>
    %72 = addi %64, %71 {handshake.bb = 5 : ui32, handshake.name = "addi13"} : <i32>
    %73 = addi %57, %72 {handshake.bb = 5 : ui32, handshake.name = "addi4"} : <i32>
    %74 = addi %73, %66 {handshake.bb = 5 : ui32, handshake.name = "addi5"} : <i32>
    %addressResult_19, %dataResult_20 = load[%74] %outputs_1 {handshake.bb = 5 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %75 = muli %63, %dataResult_20 {handshake.bb = 5 : ui32, handshake.name = "muli0"} : <i32>
    %76 = addi %59, %75 {handshake.bb = 5 : ui32, handshake.name = "addi0"} : <i32>
    %77 = shli %64, %70 {handshake.bb = 5 : ui32, handshake.name = "shli1"} : <i32>
    %78 = addi %64, %77 {handshake.bb = 5 : ui32, handshake.name = "addi14"} : <i32>
    %79 = addi %57, %78 {handshake.bb = 5 : ui32, handshake.name = "addi6"} : <i32>
    %80 = addi %79, %66 {handshake.bb = 5 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_21, %dataResult_22 = load[%80] %outputs {handshake.bb = 5 : ui32, handshake.name = "load2"} : <i32>, <i32>
    %81 = muli %63, %dataResult_22 {handshake.bb = 5 : ui32, handshake.name = "muli1"} : <i32>
    %82 = addi %58, %81 {handshake.bb = 5 : ui32, handshake.name = "addi1"} : <i32>
    %83 = addi %57, %70 {handshake.bb = 5 : ui32, handshake.name = "addi9"} : <i32>
    %84 = cmpi ult, %83, %68 {handshake.bb = 5 : ui32, handshake.name = "cmpi8"} : <i32>
    %trueResult_23, %falseResult_24 = cond_br %84, %83 {handshake.bb = 5 : ui32, handshake.name = "cond_br11"} : <i1>, <i32>
    %trueResult_25, %falseResult_26 = cond_br %84, %82 {handshake.bb = 5 : ui32, handshake.name = "cond_br12"} : <i1>, <i32>
    %trueResult_27, %falseResult_28 = cond_br %84, %76 {handshake.bb = 5 : ui32, handshake.name = "cond_br13"} : <i1>, <i32>
    %trueResult_29, %falseResult_30 = cond_br %84, %60 {handshake.bb = 5 : ui32, handshake.name = "cond_br14"} : <i1>, <i32>
    %trueResult_31, %falseResult_32 = cond_br %84, %61 {handshake.bb = 5 : ui32, handshake.name = "cond_br15"} : <i1>, <i32>
    %trueResult_33, %falseResult_34 = cond_br %84, %62 {handshake.bb = 5 : ui32, handshake.name = "cond_br16"} : <i1>, <i32>
    %trueResult_35, %falseResult_36 = cond_br %84, %63 {handshake.bb = 5 : ui32, handshake.name = "cond_br17"} : <i1>, <i32>
    %trueResult_37, %falseResult_38 = cond_br %84, %64 {handshake.bb = 5 : ui32, handshake.name = "cond_br18"} : <i1>, <i32>
    %trueResult_39, %falseResult_40 = cond_br %84, %result_17 {handshake.bb = 5 : ui32, handshake.name = "cond_br19"} : <i1>, <>
    %85 = merge %falseResult_30 {handshake.bb = 6 : ui32, handshake.name = "merge3"} : <i32>
    %86 = merge %falseResult_32 {handshake.bb = 6 : ui32, handshake.name = "merge4"} : <i32>
    %87 = merge %falseResult_34 {handshake.bb = 6 : ui32, handshake.name = "merge5"} : <i32>
    %88 = merge %falseResult_36 {handshake.bb = 6 : ui32, handshake.name = "merge6"} : <i32>
    %89 = merge %falseResult_38 {handshake.bb = 6 : ui32, handshake.name = "merge7"} : <i32>
    %90 = merge %falseResult_28 {handshake.bb = 6 : ui32, handshake.name = "merge8"} : <i32>
    %91 = merge %falseResult_26 {handshake.bb = 6 : ui32, handshake.name = "merge9"} : <i32>
    %result_41, %index_42 = control_merge %falseResult_40  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    %92 = source {handshake.bb = 6 : ui32, handshake.name = "source5"} : <>
    %93 = constant %92 {handshake.bb = 6 : ui32, handshake.name = "constant19", value = 2 : i32} : <>, <i32>
    %94 = source {handshake.bb = 6 : ui32, handshake.name = "source6"} : <>
    %95 = constant %94 {handshake.bb = 6 : ui32, handshake.name = "constant20", value = 1 : i32} : <>, <i32>
    %96 = addi %89, %95 {handshake.bb = 6 : ui32, handshake.name = "addi10"} : <i32>
    %97 = cmpi ult, %96, %93 {handshake.bb = 6 : ui32, handshake.name = "cmpi9"} : <i32>
    %trueResult_43, %falseResult_44 = cond_br %97, %96 {handshake.bb = 6 : ui32, handshake.name = "cond_br20"} : <i1>, <i32>
    %trueResult_45, %falseResult_46 = cond_br %97, %91 {handshake.bb = 6 : ui32, handshake.name = "cond_br21"} : <i1>, <i32>
    %trueResult_47, %falseResult_48 = cond_br %97, %90 {handshake.bb = 6 : ui32, handshake.name = "cond_br22"} : <i1>, <i32>
    %trueResult_49, %falseResult_50 = cond_br %97, %85 {handshake.bb = 6 : ui32, handshake.name = "cond_br23"} : <i1>, <i32>
    %trueResult_51, %falseResult_52 = cond_br %97, %86 {handshake.bb = 6 : ui32, handshake.name = "cond_br24"} : <i1>, <i32>
    %trueResult_53, %falseResult_54 = cond_br %97, %87 {handshake.bb = 6 : ui32, handshake.name = "cond_br25"} : <i1>, <i32>
    %trueResult_55, %falseResult_56 = cond_br %97, %88 {handshake.bb = 6 : ui32, handshake.name = "cond_br26"} : <i1>, <i32>
    %trueResult_57, %falseResult_58 = cond_br %97, %result_41 {handshake.bb = 6 : ui32, handshake.name = "cond_br27"} : <i1>, <>
    %98 = merge %falseResult_50 {handshake.bb = 7 : ui32, handshake.name = "merge10"} : <i32>
    %99 = merge %falseResult_52 {handshake.bb = 7 : ui32, handshake.name = "merge11"} : <i32>
    %100 = merge %falseResult_54 {handshake.bb = 7 : ui32, handshake.name = "merge12"} : <i32>
    %101 = merge %falseResult_48 {handshake.bb = 7 : ui32, handshake.name = "merge13"} : <i32>
    %102 = merge %falseResult_46 {handshake.bb = 7 : ui32, handshake.name = "merge14"} : <i32>
    %result_59, %index_60 = control_merge %falseResult_58  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %103 = constant %result_59 {handshake.bb = 7 : ui32, handshake.name = "constant21", value = false} : <>, <i1>
    %104 = source {handshake.bb = 7 : ui32, handshake.name = "source7"} : <>
    %105 = constant %104 {handshake.bb = 7 : ui32, handshake.name = "constant22", value = 255 : i32} : <>, <i32>
    %106 = cmpi sgt, %101, %105 {handshake.bb = 7 : ui32, handshake.name = "cmpi4"} : <i32>
    %107 = select %106[%105, %101] {handshake.bb = 7 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %trueResult_61, %falseResult_62 = cond_br %106, %103 {handshake.bb = 7 : ui32, handshake.name = "cond_br28"} : <i1>, <i1>
    %trueResult_63, %falseResult_64 = cond_br %106, %98 {handshake.bb = 7 : ui32, handshake.name = "cond_br29"} : <i1>, <i32>
    %trueResult_65, %falseResult_66 = cond_br %106, %99 {handshake.bb = 7 : ui32, handshake.name = "cond_br30"} : <i1>, <i32>
    %trueResult_67, %falseResult_68 = cond_br %106, %100 {handshake.bb = 7 : ui32, handshake.name = "cond_br31"} : <i1>, <i32>
    %trueResult_69, %falseResult_70 = cond_br %106, %102 {handshake.bb = 7 : ui32, handshake.name = "cond_br32"} : <i1>, <i32>
    %trueResult_71, %falseResult_72 = cond_br %106, %107 {handshake.bb = 7 : ui32, handshake.name = "cond_br33"} : <i1>, <i32>
    %trueResult_73, %falseResult_74 = cond_br %106, %result_59 {handshake.bb = 7 : ui32, handshake.name = "cond_br34"} : <i1>, <>
    %trueResult_75, %falseResult_76 = cond_br %106, %101 {handshake.bb = 7 : ui32, handshake.name = "cond_br35"} : <i1>, <i32>
    %108 = merge %falseResult_64 {handshake.bb = 8 : ui32, handshake.name = "merge15"} : <i32>
    %109 = merge %falseResult_66 {handshake.bb = 8 : ui32, handshake.name = "merge16"} : <i32>
    %110 = merge %falseResult_68 {handshake.bb = 8 : ui32, handshake.name = "merge17"} : <i32>
    %111 = merge %falseResult_76 {handshake.bb = 8 : ui32, handshake.name = "merge18"} : <i32>
    %112 = merge %falseResult_70 {handshake.bb = 8 : ui32, handshake.name = "merge19"} : <i32>
    %113 = merge %falseResult_72 {handshake.bb = 8 : ui32, handshake.name = "merge20"} : <i32>
    %result_77, %index_78 = control_merge %falseResult_74  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    %114 = source {handshake.bb = 8 : ui32, handshake.name = "source8"} : <>
    %115 = constant %114 {handshake.bb = 8 : ui32, handshake.name = "constant23", value = 0 : i32} : <>, <i32>
    %116 = cmpi slt, %111, %115 {handshake.bb = 8 : ui32, handshake.name = "cmpi5"} : <i32>
    %117 = br %116 {handshake.bb = 8 : ui32, handshake.name = "br30"} : <i1>
    %118 = br %108 {handshake.bb = 8 : ui32, handshake.name = "br31"} : <i32>
    %119 = br %109 {handshake.bb = 8 : ui32, handshake.name = "br32"} : <i32>
    %120 = br %110 {handshake.bb = 8 : ui32, handshake.name = "br33"} : <i32>
    %121 = br %112 {handshake.bb = 8 : ui32, handshake.name = "br34"} : <i32>
    %122 = br %113 {handshake.bb = 8 : ui32, handshake.name = "br35"} : <i32>
    %123 = br %result_77 {handshake.bb = 8 : ui32, handshake.name = "br36"} : <>
    %124 = mux %index_80 [%trueResult_61, %117] {handshake.bb = 9 : ui32, handshake.name = "mux20"} : <i1>, <i1>
    %125 = mux %index_80 [%trueResult_63, %118] {handshake.bb = 9 : ui32, handshake.name = "mux21"} : <i1>, <i32>
    %126 = mux %index_80 [%trueResult_65, %119] {handshake.bb = 9 : ui32, handshake.name = "mux22"} : <i1>, <i32>
    %127 = mux %index_80 [%trueResult_67, %120] {handshake.bb = 9 : ui32, handshake.name = "mux23"} : <i1>, <i32>
    %128 = mux %index_80 [%trueResult_69, %121] {handshake.bb = 9 : ui32, handshake.name = "mux24"} : <i1>, <i32>
    %129 = mux %index_80 [%trueResult_71, %122] {handshake.bb = 9 : ui32, handshake.name = "mux25"} : <i1>, <i32>
    %result_79, %index_80 = control_merge %trueResult_73, %123  {handshake.bb = 9 : ui32, handshake.name = "control_merge8"} : <>, <i1>
    %130 = constant %result_79 {handshake.bb = 9 : ui32, handshake.name = "constant24", value = false} : <>, <i1>
    %131 = source {handshake.bb = 9 : ui32, handshake.name = "source9"} : <>
    %132 = constant %131 {handshake.bb = 9 : ui32, handshake.name = "constant25", value = 255 : i32} : <>, <i32>
    %133 = source {handshake.bb = 9 : ui32, handshake.name = "source10"} : <>
    %134 = constant %133 {handshake.bb = 9 : ui32, handshake.name = "constant26", value = 0 : i32} : <>, <i32>
    %135 = select %124[%134, %129] {handshake.bb = 9 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %136 = cmpi sgt, %128, %132 {handshake.bb = 9 : ui32, handshake.name = "cmpi6"} : <i32>
    %137 = select %136[%132, %128] {handshake.bb = 9 : ui32, handshake.name = "select3"} : <i1>, <i32>
    %trueResult_81, %falseResult_82 = cond_br %136, %130 {handshake.bb = 9 : ui32, handshake.name = "cond_br36"} : <i1>, <i1>
    %trueResult_83, %falseResult_84 = cond_br %136, %125 {handshake.bb = 9 : ui32, handshake.name = "cond_br37"} : <i1>, <i32>
    %trueResult_85, %falseResult_86 = cond_br %136, %126 {handshake.bb = 9 : ui32, handshake.name = "cond_br38"} : <i1>, <i32>
    %trueResult_87, %falseResult_88 = cond_br %136, %127 {handshake.bb = 9 : ui32, handshake.name = "cond_br39"} : <i1>, <i32>
    %trueResult_89, %falseResult_90 = cond_br %136, %135 {handshake.bb = 9 : ui32, handshake.name = "cond_br40"} : <i1>, <i32>
    %trueResult_91, %falseResult_92 = cond_br %136, %137 {handshake.bb = 9 : ui32, handshake.name = "cond_br41"} : <i1>, <i32>
    %trueResult_93, %falseResult_94 = cond_br %136, %result_79 {handshake.bb = 9 : ui32, handshake.name = "cond_br42"} : <i1>, <>
    %trueResult_95, %falseResult_96 = cond_br %136, %128 {handshake.bb = 9 : ui32, handshake.name = "cond_br43"} : <i1>, <i32>
    %138 = merge %falseResult_84 {handshake.bb = 10 : ui32, handshake.name = "merge21"} : <i32>
    %139 = merge %falseResult_86 {handshake.bb = 10 : ui32, handshake.name = "merge22"} : <i32>
    %140 = merge %falseResult_88 {handshake.bb = 10 : ui32, handshake.name = "merge23"} : <i32>
    %141 = merge %falseResult_96 {handshake.bb = 10 : ui32, handshake.name = "merge24"} : <i32>
    %142 = merge %falseResult_90 {handshake.bb = 10 : ui32, handshake.name = "merge25"} : <i32>
    %143 = merge %falseResult_92 {handshake.bb = 10 : ui32, handshake.name = "merge26"} : <i32>
    %result_97, %index_98 = control_merge %falseResult_94  {handshake.bb = 10 : ui32, handshake.name = "control_merge9"} : <>, <i1>
    %144 = source {handshake.bb = 10 : ui32, handshake.name = "source11"} : <>
    %145 = constant %144 {handshake.bb = 10 : ui32, handshake.name = "constant27", value = 0 : i32} : <>, <i32>
    %146 = cmpi slt, %141, %145 {handshake.bb = 10 : ui32, handshake.name = "cmpi7"} : <i32>
    %147 = br %146 {handshake.bb = 10 : ui32, handshake.name = "br37"} : <i1>
    %148 = br %138 {handshake.bb = 10 : ui32, handshake.name = "br38"} : <i32>
    %149 = br %139 {handshake.bb = 10 : ui32, handshake.name = "br39"} : <i32>
    %150 = br %140 {handshake.bb = 10 : ui32, handshake.name = "br40"} : <i32>
    %151 = br %142 {handshake.bb = 10 : ui32, handshake.name = "br41"} : <i32>
    %152 = br %143 {handshake.bb = 10 : ui32, handshake.name = "br42"} : <i32>
    %153 = br %result_97 {handshake.bb = 10 : ui32, handshake.name = "br43"} : <>
    %154 = mux %index_100 [%trueResult_81, %147] {handshake.bb = 11 : ui32, handshake.name = "mux26"} : <i1>, <i1>
    %155 = mux %index_100 [%trueResult_83, %148] {handshake.bb = 11 : ui32, handshake.name = "mux27"} : <i1>, <i32>
    %156 = mux %index_100 [%trueResult_85, %149] {handshake.bb = 11 : ui32, handshake.name = "mux28"} : <i1>, <i32>
    %157 = mux %index_100 [%trueResult_87, %150] {handshake.bb = 11 : ui32, handshake.name = "mux29"} : <i1>, <i32>
    %158 = mux %index_100 [%trueResult_89, %151] {handshake.bb = 11 : ui32, handshake.name = "mux30"} : <i1>, <i32>
    %159 = mux %index_100 [%trueResult_91, %152] {handshake.bb = 11 : ui32, handshake.name = "mux31"} : <i1>, <i32>
    %result_99, %index_100 = control_merge %trueResult_93, %153  {handshake.bb = 11 : ui32, handshake.name = "control_merge10"} : <>, <i1>
    %160 = source {handshake.bb = 11 : ui32, handshake.name = "source12"} : <>
    %161 = constant %160 {handshake.bb = 11 : ui32, handshake.name = "constant28", value = 0 : i32} : <>, <i32>
    %162 = select %154[%161, %159] {handshake.bb = 11 : ui32, handshake.name = "select4"} : <i1>, <i32>
    %163 = addi %158, %162 {handshake.bb = 11 : ui32, handshake.name = "addi2"} : <i32>
    %164 = addi %157, %163 {handshake.bb = 11 : ui32, handshake.name = "addi3"} : <i32>
    %165 = br %164 {handshake.bb = 11 : ui32, handshake.name = "br44"} : <i32>
    %166 = br %155 {handshake.bb = 11 : ui32, handshake.name = "br45"} : <i32>
    %167 = br %156 {handshake.bb = 11 : ui32, handshake.name = "br46"} : <i32>
    %168 = br %result_99 {handshake.bb = 11 : ui32, handshake.name = "br47"} : <>
    %169 = constant %result_101 {handshake.bb = 12 : ui32, handshake.name = "constant1", value = 1 : i32} : <>, <i32>
    %170 = mux %index_102 [%falseResult_10, %165] {handshake.bb = 12 : ui32, handshake.name = "mux32"} : <i1>, <i32>
    %171 = mux %index_102 [%falseResult, %166] {handshake.bb = 12 : ui32, handshake.name = "mux33"} : <i1>, <i32>
    %172 = mux %index_102 [%falseResult_8, %167] {handshake.bb = 12 : ui32, handshake.name = "mux34"} : <i1>, <i32>
    %result_101, %index_102 = control_merge %falseResult_12, %168  {handshake.bb = 12 : ui32, handshake.name = "control_merge11"} : <>, <i1>
    %173 = source {handshake.bb = 12 : ui32, handshake.name = "source13"} : <>
    %174 = constant %173 {handshake.bb = 12 : ui32, handshake.name = "constant29", value = 1 : i32} : <>, <i32>
    %175 = source {handshake.bb = 12 : ui32, handshake.name = "source14"} : <>
    %176 = constant %175 {handshake.bb = 12 : ui32, handshake.name = "constant30", value = 15 : i32} : <>, <i32>
    %177 = source {handshake.bb = 12 : ui32, handshake.name = "source15"} : <>
    %178 = constant %177 {handshake.bb = 12 : ui32, handshake.name = "constant31", value = 255 : i32} : <>, <i32>
    %179 = trunci %170 {handshake.bb = 12 : ui32, handshake.name = "trunci0"} : <i32> to <i8>
    %180 = extui %179 {handshake.bb = 12 : ui32, handshake.name = "extui1"} : <i8> to <i32>
    %181 = subi %178, %180 {handshake.bb = 12 : ui32, handshake.name = "subi0"} : <i32>
    %182 = addi %172, %171 {handshake.bb = 12 : ui32, handshake.name = "addi8"} : <i32>
    %addressResult_103, %dataResult_104 = store[%182] %181 {handshake.bb = 12 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 14], [-14, -1]]>]>, handshake.name = "store0"} : <i32>, <i32>
    %183 = addi %172, %174 {handshake.bb = 12 : ui32, handshake.name = "addi11"} : <i32>
    %184 = cmpi ult, %183, %176 {handshake.bb = 12 : ui32, handshake.name = "cmpi10"} : <i32>
    %trueResult_105, %falseResult_106 = cond_br %184, %183 {handshake.bb = 12 : ui32, handshake.name = "cond_br44"} : <i1>, <i32>
    %trueResult_107, %falseResult_108 = cond_br %184, %170 {handshake.bb = 12 : ui32, handshake.name = "cond_br45"} : <i1>, <i32>
    %trueResult_109, %falseResult_110 = cond_br %184, %171 {handshake.bb = 12 : ui32, handshake.name = "cond_br46"} : <i1>, <i32>
    %trueResult_111, %falseResult_112 = cond_br %184, %result_101 {handshake.bb = 12 : ui32, handshake.name = "cond_br47"} : <i1>, <>
    %185 = merge %falseResult_110 {handshake.bb = 13 : ui32, handshake.name = "merge27"} : <i32>
    %186 = merge %falseResult_108 {handshake.bb = 13 : ui32, handshake.name = "merge28"} : <i32>
    %result_113, %index_114 = control_merge %falseResult_112  {handshake.bb = 13 : ui32, handshake.name = "control_merge12"} : <>, <i1>
    %187 = source {handshake.bb = 13 : ui32, handshake.name = "source16"} : <>
    %188 = constant %187 {handshake.bb = 13 : ui32, handshake.name = "constant32", value = 1 : i32} : <>, <i32>
    %189 = source {handshake.bb = 13 : ui32, handshake.name = "source17"} : <>
    %190 = constant %189 {handshake.bb = 13 : ui32, handshake.name = "constant33", value = 15 : i32} : <>, <i32>
    %191 = addi %185, %188 {handshake.bb = 13 : ui32, handshake.name = "addi12"} : <i32>
    %192 = cmpi ult, %191, %190 {handshake.bb = 13 : ui32, handshake.name = "cmpi11"} : <i32>
    %trueResult_115, %falseResult_116 = cond_br %192, %191 {handshake.bb = 13 : ui32, handshake.name = "cond_br48"} : <i1>, <i32>
    %trueResult_117, %falseResult_118 = cond_br %192, %186 {handshake.bb = 13 : ui32, handshake.name = "cond_br49"} : <i1>, <i32>
    %trueResult_119, %falseResult_120 = cond_br %192, %result_113 {handshake.bb = 13 : ui32, handshake.name = "cond_br50"} : <i1>, <>
    %193 = merge %falseResult_118 {handshake.bb = 14 : ui32, handshake.name = "merge29"} : <i32>
    %result_121, %index_122 = control_merge %falseResult_120  {handshake.bb = 14 : ui32, handshake.name = "control_merge13"} : <>, <i1>
    end {handshake.bb = 14 : ui32, handshake.name = "end0"} %193, %memEnd_4, %memEnd_2, %memEnd_0, %memEnd, %arg8 : <i32>, <>, <>, <>, <>, <>
  }
}


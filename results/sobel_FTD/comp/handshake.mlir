module {
  handshake.func @sobel(%arg0: memref<256xi32>, %arg1: memref<9xi32>, %arg2: memref<9xi32>, %arg3: memref<256xi32>, %arg4: !handshake.control<>, %arg5: !handshake.control<>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["in", "gX", "gY", "out", "in_start", "gX_start", "gY_start", "out_start", "start"], cfg.edges = "[0,1][7,9,8,cmpi4][2,3,12,cmpi3][9,11,10,cmpi6][4,5][11,12][6,4,7,cmpi9][13,1,14,cmpi11][1,2][8,9][3,4][10,11][5,5,6,cmpi8][12,2,13,cmpi10]", resNames = ["out0", "in_end", "gX_end", "gY_end", "out_end", "end"]} {
    %memEnd = mem_controller[%arg3 : memref<256xi32>] %arg7 (%107, %addressResult_75, %dataResult_76) %result_87 {connectedBlocks = [12 : i32], handshake.name = "mem_controller0"} :    (!handshake.channel<i32>, !handshake.channel<i32>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg2 : memref<9xi32>] %arg6 (%addressResult_27) %result_87 {connectedBlocks = [5 : i32], handshake.name = "mem_controller1"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg1 : memref<9xi32>] %arg5 (%addressResult_25) %result_87 {connectedBlocks = [5 : i32], handshake.name = "mem_controller2"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %outputs_3, %memEnd_4 = mem_controller[%arg0 : memref<256xi32>] %arg4 (%addressResult) %result_87 {connectedBlocks = [3 : i32], handshake.name = "mem_controller3"} :    (!handshake.channel<i32>) -> !handshake.channel<i32>
    %0 = source {handshake.bb = 0 : ui32, handshake.name = "source0"} : <>
    %1 = constant %0 {handshake.bb = 0 : ui32, handshake.name = "constant0", value = 0 : i32} : <>, <i32>
    %2 = source {handshake.bb = 0 : ui32, handshake.name = "source1"} : <>
    %3 = constant %2 {handshake.bb = 0 : ui32, handshake.name = "constant4", value = 0 : i32} : <>, <i32>
    %4 = br %arg8 {handshake.bb = 0 : ui32, handshake.name = "br4"} : <>
    %result, %index = control_merge %4, %trueResult_85  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %5 = constant %arg8 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "constant1", value = false} : <>, <i1>
    %6 = mux %7 [%1, %trueResult_79] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %7 = merge %5, %126 {ftd.imerge, handshake.bb = 1 : ui32, handshake.name = "merge0"} : <i1>
    %8 = mux %7 [%3, %trueResult_81] {ftd.phi, handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %9 = source {handshake.bb = 1 : ui32, handshake.name = "source2"} : <>
    %10 = constant %9 {handshake.bb = 1 : ui32, handshake.name = "constant10", value = 0 : i32} : <>, <i32>
    %11 = br %result {handshake.bb = 1 : ui32, handshake.name = "br6"} : <>
    %12 = constant %arg8 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "constant3", value = false} : <>, <i1>
    %13 = merge %12, %120 {ftd.imerge, handshake.bb = 2 : ui32, handshake.name = "merge2"} : <i1>
    %14 = mux %13 [%8, %trueResult_71] {ftd.regen, handshake.bb = 2 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %result_5, %index_6 = control_merge %11, %trueResult_77  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    %15 = mux %13 [%6, %trueResult_69] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %16 = mux %13 [%10, %trueResult_67] {ftd.phi, handshake.bb = 2 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %17 = source {handshake.bb = 2 : ui32, handshake.name = "source3"} : <>
    %18 = constant %17 {handshake.bb = 2 : ui32, handshake.name = "constant11", value = 5 : i32} : <>, <i32>
    %19 = source {handshake.bb = 2 : ui32, handshake.name = "source4"} : <>
    %20 = constant %19 {handshake.bb = 2 : ui32, handshake.name = "constant12", value = 0 : i32} : <>, <i32>
    %21 = cmpi eq, %16, %20 {handshake.bb = 2 : ui32, handshake.name = "cmpi0"} : <i32>
    %22 = extui %21 {handshake.bb = 2 : ui32, handshake.name = "extui0"} : <i1> to <i32>
    %23 = cmpi eq, %16, %18 {handshake.bb = 2 : ui32, handshake.name = "cmpi1"} : <i32>
    %24 = cmpi eq, %22, %20 {handshake.bb = 2 : ui32, handshake.name = "cmpi2"} : <i32>
    %25 = andi %24, %23 {handshake.bb = 2 : ui32, handshake.name = "andi0"} : <i1>
    %26 = ori %21, %25 {handshake.bb = 2 : ui32, handshake.name = "ori0"} : <i1>
    %27 = extsi %26 {handshake.bb = 2 : ui32, handshake.name = "extsi0"} : <i1> to <i32>
    %28 = cmpi eq, %27, %20 {handshake.bb = 2 : ui32, handshake.name = "cmpi3"} : <i32>
    %trueResult, %falseResult = cond_br %28, %result_5 {handshake.bb = 2 : ui32, handshake.name = "cond_br7"} : <i1>, <>
    %trueResult_7, %falseResult_8 = cond_br %28, %16 {handshake.bb = 3 : ui32, handshake.name = "cond_br59"} : <i1>, <i32>
    %result_9, %index_10 = control_merge %trueResult  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %29 = source {handshake.bb = 3 : ui32, handshake.name = "source5"} : <>
    %30 = constant %29 {handshake.bb = 3 : ui32, handshake.name = "constant13", value = -1 : i32} : <>, <i32>
    %31 = source {handshake.bb = 3 : ui32, handshake.name = "source6"} : <>
    %32 = constant %31 {handshake.bb = 3 : ui32, handshake.name = "constant14", value = 0 : i32} : <>, <i32>
    %addressResult, %dataResult = load[%trueResult_7] %outputs_3 {handshake.bb = 3 : ui32, handshake.name = "load0"} : <i32>, <i32>
    %33 = br %result_9 {handshake.bb = 3 : ui32, handshake.name = "br7"} : <>
    %34 = constant %arg8 {ftd.imerge, handshake.bb = 4 : ui32, handshake.name = "constant7", value = false} : <>, <i1>
    %35 = merge %34, %75 {ftd.imerge, handshake.bb = 4 : ui32, handshake.name = "merge5"} : <i1>
    %36 = mux %35 [%dataResult, %trueResult_37] {ftd.regen, handshake.bb = 4 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %result_11, %index_12 = control_merge %33, %trueResult_41  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    %37 = mux %35 [%32, %trueResult_33] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %38 = mux %35 [%32, %trueResult_31] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %39 = mux %35 [%30, %trueResult_35] {ftd.phi, handshake.bb = 4 : ui32, handshake.name = "mux9"} : <i1>, <i32>
    %40 = source {handshake.bb = 4 : ui32, handshake.name = "source7"} : <>
    %41 = constant %40 {handshake.bb = 4 : ui32, handshake.name = "constant15", value = -1 : i32} : <>, <i32>
    %42 = br %result_11 {handshake.bb = 4 : ui32, handshake.name = "br9"} : <>
    %trueResult_13, %falseResult_14 = cond_br %69, %67 {handshake.bb = 5 : ui32, handshake.name = "cond_br60"} : <i1>, <i32>
    %trueResult_15, %falseResult_16 = cond_br %69, %61 {handshake.bb = 5 : ui32, handshake.name = "cond_br61"} : <i1>, <i32>
    %trueResult_17, %falseResult_18 = cond_br %69, %68 {handshake.bb = 5 : ui32, handshake.name = "cond_br62"} : <i1>, <i32>
    %trueResult_19, %falseResult_20 = cond_br %69, %46 {handshake.bb = 5 : ui32, handshake.name = "cond_br63"} : <i1>, <i32>
    %trueResult_21, %falseResult_22 = cond_br %69, %45 {handshake.bb = 5 : ui32, handshake.name = "cond_br64"} : <i1>, <i32>
    %43 = constant %arg8 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "constant36", value = false} : <>, <i1>
    %44 = merge %43, %69 {ftd.imerge, handshake.bb = 5 : ui32, handshake.name = "merge10"} : <i1>
    %45 = mux %44 [%36, %trueResult_21] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux10"} : <i1>, <i32>
    %46 = mux %44 [%39, %trueResult_19] {ftd.regen, handshake.bb = 5 : ui32, handshake.name = "mux15"} : <i1>, <i32>
    %result_23, %index_24 = control_merge %42, %trueResult_29  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    %47 = mux %44 [%37, %trueResult_15] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux16"} : <i1>, <i32>
    %48 = mux %44 [%38, %trueResult_13] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux17"} : <i1>, <i32>
    %49 = mux %44 [%41, %trueResult_17] {ftd.phi, handshake.bb = 5 : ui32, handshake.name = "mux18"} : <i1>, <i32>
    %50 = source {handshake.bb = 5 : ui32, handshake.name = "source8"} : <>
    %51 = constant %50 {handshake.bb = 5 : ui32, handshake.name = "constant16", value = 4 : i32} : <>, <i32>
    %52 = source {handshake.bb = 5 : ui32, handshake.name = "source9"} : <>
    %53 = constant %52 {handshake.bb = 5 : ui32, handshake.name = "constant17", value = 2 : i32} : <>, <i32>
    %54 = source {handshake.bb = 5 : ui32, handshake.name = "source10"} : <>
    %55 = constant %54 {handshake.bb = 5 : ui32, handshake.name = "constant18", value = 1 : i32} : <>, <i32>
    %56 = shli %46, %55 {handshake.bb = 5 : ui32, handshake.name = "shli0"} : <i32>
    %57 = addi %46, %56 {handshake.bb = 5 : ui32, handshake.name = "addi13"} : <i32>
    %58 = addi %49, %57 {handshake.bb = 5 : ui32, handshake.name = "addi4"} : <i32>
    %59 = addi %58, %51 {handshake.bb = 5 : ui32, handshake.name = "addi5"} : <i32>
    %addressResult_25, %dataResult_26 = load[%59] %outputs_1 {handshake.bb = 5 : ui32, handshake.name = "load1"} : <i32>, <i32>
    %60 = muli %45, %dataResult_26 {handshake.bb = 5 : ui32, handshake.name = "muli0"} : <i32>
    %61 = addi %47, %60 {handshake.bb = 5 : ui32, handshake.name = "addi0"} : <i32>
    %62 = shli %46, %55 {handshake.bb = 5 : ui32, handshake.name = "shli1"} : <i32>
    %63 = addi %46, %62 {handshake.bb = 5 : ui32, handshake.name = "addi14"} : <i32>
    %64 = addi %49, %63 {handshake.bb = 5 : ui32, handshake.name = "addi6"} : <i32>
    %65 = addi %64, %51 {handshake.bb = 5 : ui32, handshake.name = "addi7"} : <i32>
    %addressResult_27, %dataResult_28 = load[%65] %outputs {handshake.bb = 5 : ui32, handshake.name = "load2"} : <i32>, <i32>
    %66 = muli %45, %dataResult_28 {handshake.bb = 5 : ui32, handshake.name = "muli1"} : <i32>
    %67 = addi %48, %66 {handshake.bb = 5 : ui32, handshake.name = "addi1"} : <i32>
    %68 = addi %49, %55 {handshake.bb = 5 : ui32, handshake.name = "addi9"} : <i32>
    %69 = cmpi ult, %68, %53 {handshake.bb = 5 : ui32, handshake.name = "cmpi8"} : <i32>
    %trueResult_29, %falseResult_30 = cond_br %69, %result_23 {handshake.bb = 5 : ui32, handshake.name = "cond_br26"} : <i1>, <>
    %trueResult_31, %falseResult_32 = cond_br %75, %falseResult_14 {handshake.bb = 6 : ui32, handshake.name = "cond_br65"} : <i1>, <i32>
    %trueResult_33, %falseResult_34 = cond_br %75, %falseResult_16 {handshake.bb = 6 : ui32, handshake.name = "cond_br66"} : <i1>, <i32>
    %trueResult_35, %falseResult_36 = cond_br %75, %74 {handshake.bb = 6 : ui32, handshake.name = "cond_br67"} : <i1>, <i32>
    %trueResult_37, %falseResult_38 = cond_br %75, %36 {handshake.bb = 6 : ui32, handshake.name = "cond_br68"} : <i1>, <i32>
    %result_39, %index_40 = control_merge %falseResult_30  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    %70 = source {handshake.bb = 6 : ui32, handshake.name = "source11"} : <>
    %71 = constant %70 {handshake.bb = 6 : ui32, handshake.name = "constant19", value = 2 : i32} : <>, <i32>
    %72 = source {handshake.bb = 6 : ui32, handshake.name = "source12"} : <>
    %73 = constant %72 {handshake.bb = 6 : ui32, handshake.name = "constant20", value = 1 : i32} : <>, <i32>
    %74 = addi %39, %73 {handshake.bb = 6 : ui32, handshake.name = "addi10"} : <i32>
    %75 = cmpi ult, %74, %71 {handshake.bb = 6 : ui32, handshake.name = "cmpi9"} : <i32>
    %trueResult_41, %falseResult_42 = cond_br %75, %result_39 {handshake.bb = 6 : ui32, handshake.name = "cond_br38"} : <i1>, <>
    %result_43, %index_44 = control_merge %falseResult_42  {handshake.bb = 7 : ui32, handshake.name = "control_merge6"} : <>, <i1>
    %76 = source {handshake.bb = 7 : ui32, handshake.name = "source13"} : <>
    %77 = constant %76 {handshake.bb = 7 : ui32, handshake.name = "constant21", value = false} : <>, <i1>
    %78 = source {handshake.bb = 7 : ui32, handshake.name = "source14"} : <>
    %79 = constant %78 {handshake.bb = 7 : ui32, handshake.name = "constant22", value = 255 : i32} : <>, <i32>
    %80 = cmpi sgt, %falseResult_34, %79 {handshake.bb = 7 : ui32, handshake.name = "cmpi4"} : <i32>
    %81 = select %80[%79, %falseResult_34] {handshake.bb = 7 : ui32, handshake.name = "select1"} : <i1>, <i32>
    %trueResult_45, %falseResult_46 = cond_br %80, %result_43 {handshake.bb = 7 : ui32, handshake.name = "cond_br39"} : <i1>, <>
    %trueResult_47, %falseResult_48 = cond_br %80, %falseResult_34 {handshake.bb = 8 : ui32, handshake.name = "cond_br40"} : <i1>, <i32>
    %result_49, %index_50 = control_merge %falseResult_46  {handshake.bb = 8 : ui32, handshake.name = "control_merge7"} : <>, <i1>
    %82 = source {handshake.bb = 8 : ui32, handshake.name = "source15"} : <>
    %83 = constant %82 {handshake.bb = 8 : ui32, handshake.name = "constant23", value = 0 : i32} : <>, <i32>
    %84 = cmpi slt, %falseResult_48, %83 {handshake.bb = 8 : ui32, handshake.name = "cmpi5"} : <i32>
    %85 = br %result_49 {handshake.bb = 8 : ui32, handshake.name = "br11"} : <>
    %trueResult_51, %falseResult_52 = cond_br %80, %77 {handshake.bb = 9 : ui32, handshake.name = "cond_br69"} : <i1>, <i1>
    %result_53, %index_54 = control_merge %trueResult_45, %85  {handshake.bb = 9 : ui32, handshake.name = "control_merge8"} : <>, <i1>
    %86 = mux %80 [%84, %trueResult_51] {ftd.phi, handshake.bb = 9 : ui32, handshake.name = "mux19"} : <i1>, <i1>
    %87 = source {handshake.bb = 9 : ui32, handshake.name = "source16"} : <>
    %88 = constant %87 {handshake.bb = 9 : ui32, handshake.name = "constant24", value = false} : <>, <i1>
    %89 = source {handshake.bb = 9 : ui32, handshake.name = "source17"} : <>
    %90 = constant %89 {handshake.bb = 9 : ui32, handshake.name = "constant25", value = 255 : i32} : <>, <i32>
    %91 = source {handshake.bb = 9 : ui32, handshake.name = "source18"} : <>
    %92 = constant %91 {handshake.bb = 9 : ui32, handshake.name = "constant26", value = 0 : i32} : <>, <i32>
    %93 = select %86[%92, %81] {handshake.bb = 9 : ui32, handshake.name = "select2"} : <i1>, <i32>
    %94 = cmpi sgt, %falseResult_32, %90 {handshake.bb = 9 : ui32, handshake.name = "cmpi6"} : <i32>
    %95 = select %94[%90, %falseResult_32] {handshake.bb = 9 : ui32, handshake.name = "select3"} : <i1>, <i32>
    %trueResult_55, %falseResult_56 = cond_br %94, %result_53 {handshake.bb = 9 : ui32, handshake.name = "cond_br43"} : <i1>, <>
    %trueResult_57, %falseResult_58 = cond_br %94, %falseResult_32 {handshake.bb = 10 : ui32, handshake.name = "cond_br44"} : <i1>, <i32>
    %result_59, %index_60 = control_merge %falseResult_56  {handshake.bb = 10 : ui32, handshake.name = "control_merge9"} : <>, <i1>
    %96 = source {handshake.bb = 10 : ui32, handshake.name = "source19"} : <>
    %97 = constant %96 {handshake.bb = 10 : ui32, handshake.name = "constant27", value = 0 : i32} : <>, <i32>
    %98 = cmpi slt, %falseResult_58, %97 {handshake.bb = 10 : ui32, handshake.name = "cmpi7"} : <i32>
    %99 = br %result_59 {handshake.bb = 10 : ui32, handshake.name = "br12"} : <>
    %trueResult_61, %falseResult_62 = cond_br %28, %15 {handshake.bb = 11 : ui32, handshake.name = "cond_br70"} : <i1>, <i32>
    %trueResult_63, %falseResult_64 = cond_br %94, %88 {handshake.bb = 11 : ui32, handshake.name = "cond_br71"} : <i1>, <i1>
    %result_65, %index_66 = control_merge %trueResult_55, %99  {handshake.bb = 11 : ui32, handshake.name = "control_merge10"} : <>, <i1>
    %100 = mux %94 [%98, %trueResult_63] {ftd.phi, handshake.bb = 11 : ui32, handshake.name = "mux20"} : <i1>, <i1>
    %101 = source {handshake.bb = 11 : ui32, handshake.name = "source20"} : <>
    %102 = constant %101 {handshake.bb = 11 : ui32, handshake.name = "constant28", value = 0 : i32} : <>, <i32>
    %103 = select %100[%102, %95] {handshake.bb = 11 : ui32, handshake.name = "select4"} : <i1>, <i32>
    %104 = addi %93, %103 {handshake.bb = 11 : ui32, handshake.name = "addi2"} : <i32>
    %105 = addi %trueResult_61, %104 {handshake.bb = 11 : ui32, handshake.name = "addi3"} : <i32>
    %106 = br %result_65 {handshake.bb = 11 : ui32, handshake.name = "br13"} : <>
    %trueResult_67, %falseResult_68 = cond_br %120, %119 {handshake.bb = 12 : ui32, handshake.name = "cond_br72"} : <i1>, <i32>
    %trueResult_69, %falseResult_70 = cond_br %120, %108 {handshake.bb = 12 : ui32, handshake.name = "cond_br73"} : <i1>, <i32>
    %trueResult_71, %falseResult_72 = cond_br %120, %14 {handshake.bb = 12 : ui32, handshake.name = "cond_br74"} : <i1>, <i32>
    %107 = constant %result_73 {handshake.bb = 12 : ui32, handshake.name = "constant45", value = 1 : i32} : <>, <i32>
    %result_73, %index_74 = control_merge %falseResult, %106  {handshake.bb = 12 : ui32, handshake.name = "control_merge11"} : <>, <i1>
    %108 = mux %28 [%falseResult_62, %105] {ftd.phi, handshake.bb = 12 : ui32, handshake.name = "mux21"} : <i1>, <i32>
    %109 = source {handshake.bb = 12 : ui32, handshake.name = "source21"} : <>
    %110 = constant %109 {handshake.bb = 12 : ui32, handshake.name = "constant29", value = 1 : i32} : <>, <i32>
    %111 = source {handshake.bb = 12 : ui32, handshake.name = "source22"} : <>
    %112 = constant %111 {handshake.bb = 12 : ui32, handshake.name = "constant30", value = 15 : i32} : <>, <i32>
    %113 = source {handshake.bb = 12 : ui32, handshake.name = "source23"} : <>
    %114 = constant %113 {handshake.bb = 12 : ui32, handshake.name = "constant31", value = 255 : i32} : <>, <i32>
    %115 = trunci %108 {handshake.bb = 12 : ui32, handshake.name = "trunci0"} : <i32> to <i8>
    %116 = extui %115 {handshake.bb = 12 : ui32, handshake.name = "extui1"} : <i8> to <i32>
    %117 = subi %114, %116 {handshake.bb = 12 : ui32, handshake.name = "subi0"} : <i32>
    %118 = addi %16, %14 {handshake.bb = 12 : ui32, handshake.name = "addi8"} : <i32>
    %addressResult_75, %dataResult_76 = store[%118] %117 {handshake.bb = 12 : ui32, handshake.deps = #handshake<deps[<"store0" (1) [[1, 14], [-14, -1]]>]>, handshake.name = "store0"} : <i32>, <i32>
    %119 = addi %16, %110 {handshake.bb = 12 : ui32, handshake.name = "addi11"} : <i32>
    %120 = cmpi ult, %119, %112 {handshake.bb = 12 : ui32, handshake.name = "cmpi10"} : <i32>
    %trueResult_77, %falseResult_78 = cond_br %120, %result_73 {handshake.bb = 12 : ui32, handshake.name = "cond_br54"} : <i1>, <>
    %trueResult_79, %falseResult_80 = cond_br %126, %falseResult_70 {handshake.bb = 13 : ui32, handshake.name = "cond_br75"} : <i1>, <i32>
    %trueResult_81, %falseResult_82 = cond_br %126, %125 {handshake.bb = 13 : ui32, handshake.name = "cond_br76"} : <i1>, <i32>
    %result_83, %index_84 = control_merge %falseResult_78  {handshake.bb = 13 : ui32, handshake.name = "control_merge12"} : <>, <i1>
    %121 = source {handshake.bb = 13 : ui32, handshake.name = "source24"} : <>
    %122 = constant %121 {handshake.bb = 13 : ui32, handshake.name = "constant32", value = 1 : i32} : <>, <i32>
    %123 = source {handshake.bb = 13 : ui32, handshake.name = "source25"} : <>
    %124 = constant %123 {handshake.bb = 13 : ui32, handshake.name = "constant33", value = 15 : i32} : <>, <i32>
    %125 = addi %8, %122 {handshake.bb = 13 : ui32, handshake.name = "addi12"} : <i32>
    %126 = cmpi ult, %125, %124 {handshake.bb = 13 : ui32, handshake.name = "cmpi11"} : <i32>
    %trueResult_85, %falseResult_86 = cond_br %126, %result_83 {handshake.bb = 13 : ui32, handshake.name = "cond_br58"} : <i1>, <>
    %result_87, %index_88 = control_merge %falseResult_86  {handshake.bb = 14 : ui32, handshake.name = "control_merge13"} : <>, <i1>
    end {handshake.bb = 14 : ui32, handshake.name = "end0"} %falseResult_80, %memEnd_4, %memEnd_2, %memEnd_0, %memEnd, %arg8 : <i32>, <>, <>, <>, <>, <>
  }
}


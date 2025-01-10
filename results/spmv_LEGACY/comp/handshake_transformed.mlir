module {
  handshake.func @spmv(%arg0: !handshake.channel<i32>, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: memref<10xi32>, %arg6: !handshake.control<>, %arg7: !handshake.control<>, %arg8: !handshake.control<>, %arg9: !handshake.control<>, %arg10: !handshake.control<>, %arg11: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["n", "row", "col", "val", "vec", "out", "row_start", "col_start", "val_start", "vec_start", "out_start", "start"], resNames = ["out0", "row_end", "col_end", "val_end", "vec_end", "out_end", "end"]} {
    %0:3 = fork [3] %arg11 {handshake.bb = 0 : ui32, handshake.name = "fork0"} : <>
    %memEnd = mem_controller[%arg5 : memref<10xi32>] %arg10 (%79, %addressResult_43, %dataResult_44) %89#4 {connectedBlocks = [5 : i32], handshake.name = "mem_controller5"} :    (!handshake.channel<i32>, !handshake.channel<i4>, !handshake.channel<i32>) -> ()
    %outputs, %memEnd_0 = mem_controller[%arg4 : memref<10xi32>] %arg9 (%addressResult_39) %89#3 {connectedBlocks = [4 : i32], handshake.name = "mem_controller6"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_1, %memEnd_2 = mem_controller[%arg3 : memref<10xi32>] %arg8 (%addressResult_37) %89#2 {connectedBlocks = [4 : i32], handshake.name = "mem_controller7"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_3, %memEnd_4 = mem_controller[%arg2 : memref<10xi32>] %arg7 (%addressResult_35) %89#1 {connectedBlocks = [4 : i32], handshake.name = "mem_controller8"} :    (!handshake.channel<i4>) -> !handshake.channel<i32>
    %outputs_5:2, %memEnd_6 = mem_controller[%arg1 : memref<10xi32>] %arg6 (%addressResult, %addressResult_15) %89#0 {connectedBlocks = [2 : i32], handshake.name = "mem_controller9"} :    (!handshake.channel<i4>, !handshake.channel<i4>) -> (!handshake.channel<i32>, !handshake.channel<i32>)
    %1 = constant %0#0 {handshake.bb = 0 : ui32, handshake.name = "constant8", value = false} : <>, <i1>
    %2:2 = fork [2] %1 {handshake.bb = 0 : ui32, handshake.name = "fork1"} : <i1>
    %3 = br %2#0 {handshake.bb = 0 : ui32, handshake.name = "br4"} : <i1>
    %4 = extsi %3 {handshake.bb = 0 : ui32, handshake.name = "extsi7"} : <i1> to <i32>
    %5 = br %2#1 {handshake.bb = 0 : ui32, handshake.name = "br5"} : <i1>
    %6 = extsi %5 {handshake.bb = 0 : ui32, handshake.name = "extsi8"} : <i1> to <i32>
    %7 = br %arg0 {handshake.bb = 0 : ui32, handshake.name = "br6"} : <i32>
    %8 = br %0#2 {handshake.bb = 0 : ui32, handshake.name = "br7"} : <>
    %9 = mux %14#0 [%4, %84] {handshake.bb = 1 : ui32, handshake.name = "mux0"} : <i1>, <i32>
    %10:2 = fork [2] %9 {handshake.bb = 1 : ui32, handshake.name = "fork2"} : <i32>
    %11 = mux %14#1 [%6, %85] {handshake.bb = 1 : ui32, handshake.name = "mux1"} : <i1>, <i32>
    %12 = mux %14#2 [%7, %86] {handshake.bb = 1 : ui32, handshake.name = "mux2"} : <i1>, <i32>
    %13:2 = fork [2] %12 {handshake.bb = 1 : ui32, handshake.name = "fork3"} : <i32>
    %result, %index = control_merge %8, %87  {handshake.bb = 1 : ui32, handshake.name = "control_merge0"} : <>, <i1>
    %14:3 = fork [3] %index {handshake.bb = 1 : ui32, handshake.name = "fork4"} : <i1>
    %15 = cmpi ult, %10#1, %13#1 {handshake.bb = 1 : ui32, handshake.name = "cmpi0"} : <i32>
    %16:4 = fork [4] %15 {handshake.bb = 1 : ui32, handshake.name = "fork5"} : <i1>
    %trueResult, %falseResult = cond_br %16#3, %13#0 {handshake.bb = 1 : ui32, handshake.name = "cond_br2"} : <i1>, <i32>
    sink %falseResult {handshake.name = "sink0"} : <i32>
    %trueResult_7, %falseResult_8 = cond_br %16#2, %10#0 {handshake.bb = 1 : ui32, handshake.name = "cond_br3"} : <i1>, <i32>
    sink %falseResult_8 {handshake.name = "sink1"} : <i32>
    %trueResult_9, %falseResult_10 = cond_br %16#1, %result {handshake.bb = 1 : ui32, handshake.name = "cond_br4"} : <i1>, <>
    %trueResult_11, %falseResult_12 = cond_br %16#0, %11 {handshake.bb = 1 : ui32, handshake.name = "cond_br5"} : <i1>, <i32>
    sink %trueResult_11 {handshake.name = "sink2"} : <i32>
    %17 = merge %trueResult {handshake.bb = 2 : ui32, handshake.name = "merge0"} : <i32>
    %18 = merge %trueResult_7 {handshake.bb = 2 : ui32, handshake.name = "merge1"} : <i32>
    %19:3 = fork [3] %18 {handshake.bb = 2 : ui32, handshake.name = "fork6"} : <i32>
    %20 = trunci %19#0 {handshake.bb = 2 : ui32, handshake.name = "trunci0"} : <i32> to <i4>
    %21 = trunci %19#1 {handshake.bb = 2 : ui32, handshake.name = "trunci1"} : <i32> to <i4>
    %result_13, %index_14 = control_merge %trueResult_9  {handshake.bb = 2 : ui32, handshake.name = "control_merge1"} : <>, <i1>
    sink %index_14 {handshake.name = "sink3"} : <i1>
    %22:2 = fork [2] %result_13 {handshake.bb = 2 : ui32, handshake.name = "fork7"} : <>
    %23 = source {handshake.bb = 2 : ui32, handshake.name = "source0"} : <>
    %24 = constant %23 {handshake.bb = 2 : ui32, handshake.name = "constant9", value = 1 : i2} : <>, <i2>
    %25 = extsi %24 {handshake.bb = 2 : ui32, handshake.name = "extsi9"} : <i2> to <i4>
    %26 = constant %22#0 {handshake.bb = 2 : ui32, handshake.name = "constant10", value = false} : <>, <i1>
    %addressResult, %dataResult = load[%21] %outputs_5#0 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load0"} : <i4>, <i32>
    %27:2 = fork [2] %dataResult {handshake.bb = 2 : ui32, handshake.name = "fork8"} : <i32>
    %28 = addi %20, %25 {handshake.bb = 2 : ui32, handshake.name = "addi1"} : <i4>
    %addressResult_15, %dataResult_16 = load[%28] %outputs_5#1 {handshake.bb = 2 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load1"} : <i4>, <i32>
    %29 = br %27#1 {handshake.bb = 2 : ui32, handshake.name = "br8"} : <i32>
    %30 = br %26 {handshake.bb = 2 : ui32, handshake.name = "br9"} : <i1>
    %31 = extsi %30 {handshake.bb = 2 : ui32, handshake.name = "extsi10"} : <i1> to <i32>
    %32 = br %17 {handshake.bb = 2 : ui32, handshake.name = "br10"} : <i32>
    %33 = br %19#2 {handshake.bb = 2 : ui32, handshake.name = "br11"} : <i32>
    %34 = br %27#0 {handshake.bb = 2 : ui32, handshake.name = "br12"} : <i32>
    %35 = br %dataResult_16 {handshake.bb = 2 : ui32, handshake.name = "br13"} : <i32>
    %36 = br %22#1 {handshake.bb = 2 : ui32, handshake.name = "br14"} : <>
    %37 = mux %45#0 [%29, %64] {handshake.bb = 3 : ui32, handshake.name = "mux3"} : <i1>, <i32>
    %38:2 = fork [2] %37 {handshake.bb = 3 : ui32, handshake.name = "fork9"} : <i32>
    %39 = mux %45#1 [%31, %65] {handshake.bb = 3 : ui32, handshake.name = "mux4"} : <i1>, <i32>
    %40 = mux %45#2 [%32, %66] {handshake.bb = 3 : ui32, handshake.name = "mux5"} : <i1>, <i32>
    %41 = mux %45#3 [%33, %67] {handshake.bb = 3 : ui32, handshake.name = "mux6"} : <i1>, <i32>
    %42 = mux %45#4 [%34, %68] {handshake.bb = 3 : ui32, handshake.name = "mux7"} : <i1>, <i32>
    %43 = mux %45#5 [%35, %69] {handshake.bb = 3 : ui32, handshake.name = "mux8"} : <i1>, <i32>
    %44:2 = fork [2] %43 {handshake.bb = 3 : ui32, handshake.name = "fork10"} : <i32>
    %result_17, %index_18 = control_merge %36, %70  {handshake.bb = 3 : ui32, handshake.name = "control_merge2"} : <>, <i1>
    %45:6 = fork [6] %index_18 {handshake.bb = 3 : ui32, handshake.name = "fork11"} : <i1>
    %46 = cmpi slt, %38#1, %44#1 {handshake.bb = 3 : ui32, handshake.name = "cmpi1"} : <i32>
    %47:7 = fork [7] %46 {handshake.bb = 3 : ui32, handshake.name = "fork12"} : <i1>
    %trueResult_19, %falseResult_20 = cond_br %47#6, %40 {handshake.bb = 3 : ui32, handshake.name = "cond_br6"} : <i1>, <i32>
    %trueResult_21, %falseResult_22 = cond_br %47#5, %41 {handshake.bb = 3 : ui32, handshake.name = "cond_br7"} : <i1>, <i32>
    %trueResult_23, %falseResult_24 = cond_br %47#4, %42 {handshake.bb = 3 : ui32, handshake.name = "cond_br8"} : <i1>, <i32>
    %trueResult_25, %falseResult_26 = cond_br %47#3, %44#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br9"} : <i1>, <i32>
    sink %falseResult_26 {handshake.name = "sink4"} : <i32>
    %trueResult_27, %falseResult_28 = cond_br %47#2, %38#0 {handshake.bb = 3 : ui32, handshake.name = "cond_br10"} : <i1>, <i32>
    sink %falseResult_28 {handshake.name = "sink5"} : <i32>
    %trueResult_29, %falseResult_30 = cond_br %47#1, %39 {handshake.bb = 3 : ui32, handshake.name = "cond_br11"} : <i1>, <i32>
    %trueResult_31, %falseResult_32 = cond_br %47#0, %result_17 {handshake.bb = 3 : ui32, handshake.name = "cond_br12"} : <i1>, <>
    %48 = merge %trueResult_19 {handshake.bb = 4 : ui32, handshake.name = "merge2"} : <i32>
    %49 = merge %trueResult_21 {handshake.bb = 4 : ui32, handshake.name = "merge3"} : <i32>
    %50 = merge %trueResult_23 {handshake.bb = 4 : ui32, handshake.name = "merge4"} : <i32>
    %51 = merge %trueResult_25 {handshake.bb = 4 : ui32, handshake.name = "merge5"} : <i32>
    %52 = merge %trueResult_27 {handshake.bb = 4 : ui32, handshake.name = "merge6"} : <i32>
    %53:3 = fork [3] %52 {handshake.bb = 4 : ui32, handshake.name = "fork13"} : <i32>
    %54 = trunci %53#0 {handshake.bb = 4 : ui32, handshake.name = "trunci2"} : <i32> to <i4>
    %55 = trunci %53#1 {handshake.bb = 4 : ui32, handshake.name = "trunci3"} : <i32> to <i4>
    %56 = merge %trueResult_29 {handshake.bb = 4 : ui32, handshake.name = "merge7"} : <i32>
    %result_33, %index_34 = control_merge %trueResult_31  {handshake.bb = 4 : ui32, handshake.name = "control_merge3"} : <>, <i1>
    sink %index_34 {handshake.name = "sink6"} : <i1>
    %57 = source {handshake.bb = 4 : ui32, handshake.name = "source1"} : <>
    %58 = constant %57 {handshake.bb = 4 : ui32, handshake.name = "constant11", value = 1 : i2} : <>, <i2>
    %59 = extsi %58 {handshake.bb = 4 : ui32, handshake.name = "extsi4"} : <i2> to <i32>
    %addressResult_35, %dataResult_36 = load[%55] %outputs_3 {handshake.bb = 4 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load7"} : <i4>, <i32>
    %60 = trunci %dataResult_36 {handshake.bb = 4 : ui32, handshake.name = "trunci4"} : <i32> to <i4>
    %addressResult_37, %dataResult_38 = load[%54] %outputs_1 {handshake.bb = 4 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load8"} : <i4>, <i32>
    %addressResult_39, %dataResult_40 = load[%60] %outputs {handshake.bb = 4 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load9"} : <i4>, <i32>
    %61 = muli %dataResult_38, %dataResult_40 {handshake.bb = 4 : ui32, handshake.name = "muli0"} : <i32>
    %62 = addi %56, %61 {handshake.bb = 4 : ui32, handshake.name = "addi0"} : <i32>
    %63 = addi %53#2, %59 {handshake.bb = 4 : ui32, handshake.name = "addi2"} : <i32>
    %64 = br %63 {handshake.bb = 4 : ui32, handshake.name = "br15"} : <i32>
    %65 = br %62 {handshake.bb = 4 : ui32, handshake.name = "br16"} : <i32>
    %66 = br %48 {handshake.bb = 4 : ui32, handshake.name = "br17"} : <i32>
    %67 = br %49 {handshake.bb = 4 : ui32, handshake.name = "br18"} : <i32>
    %68 = br %50 {handshake.bb = 4 : ui32, handshake.name = "br19"} : <i32>
    %69 = br %51 {handshake.bb = 4 : ui32, handshake.name = "br20"} : <i32>
    %70 = br %result_33 {handshake.bb = 4 : ui32, handshake.name = "br21"} : <>
    %71 = merge %falseResult_20 {handshake.bb = 5 : ui32, handshake.name = "merge8"} : <i32>
    %72 = merge %falseResult_22 {handshake.bb = 5 : ui32, handshake.name = "merge9"} : <i32>
    %73:2 = fork [2] %72 {handshake.bb = 5 : ui32, handshake.name = "fork14"} : <i32>
    %74 = trunci %73#0 {handshake.bb = 5 : ui32, handshake.name = "trunci5"} : <i32> to <i4>
    %75 = merge %falseResult_24 {handshake.bb = 5 : ui32, handshake.name = "merge10"} : <i32>
    %76 = merge %falseResult_30 {handshake.bb = 5 : ui32, handshake.name = "merge11"} : <i32>
    %result_41, %index_42 = control_merge %falseResult_32  {handshake.bb = 5 : ui32, handshake.name = "control_merge4"} : <>, <i1>
    sink %index_42 {handshake.name = "sink7"} : <i1>
    %77:2 = fork [2] %result_41 {handshake.bb = 5 : ui32, handshake.name = "fork15"} : <>
    %78 = constant %77#0 {handshake.bb = 5 : ui32, handshake.name = "constant12", value = 1 : i2} : <>, <i2>
    %79 = extsi %78 {handshake.bb = 5 : ui32, handshake.name = "extsi5"} : <i2> to <i32>
    %80 = source {handshake.bb = 5 : ui32, handshake.name = "source2"} : <>
    %81 = constant %80 {handshake.bb = 5 : ui32, handshake.name = "constant13", value = 1 : i2} : <>, <i2>
    %82 = extsi %81 {handshake.bb = 5 : ui32, handshake.name = "extsi6"} : <i2> to <i32>
    %addressResult_43, %dataResult_44 = store[%74] %76 {handshake.bb = 5 : ui32, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store0"} : <i4>, <i32>
    %83 = addi %73#1, %82 {handshake.bb = 5 : ui32, handshake.name = "addi3"} : <i32>
    %84 = br %83 {handshake.bb = 5 : ui32, handshake.name = "br22"} : <i32>
    %85 = br %75 {handshake.bb = 5 : ui32, handshake.name = "br23"} : <i32>
    %86 = br %71 {handshake.bb = 5 : ui32, handshake.name = "br24"} : <i32>
    %87 = br %77#1 {handshake.bb = 5 : ui32, handshake.name = "br25"} : <>
    %88 = merge %falseResult_12 {handshake.bb = 6 : ui32, handshake.name = "merge12"} : <i32>
    %result_45, %index_46 = control_merge %falseResult_10  {handshake.bb = 6 : ui32, handshake.name = "control_merge5"} : <>, <i1>
    sink %index_46 {handshake.name = "sink8"} : <i1>
    %89:5 = fork [5] %result_45 {handshake.bb = 6 : ui32, handshake.name = "fork16"} : <>
    end {handshake.bb = 6 : ui32, handshake.name = "end0"} %88, %memEnd_6, %memEnd_4, %memEnd_2, %memEnd_0, %memEnd, %0#1 : <i32>, <>, <>, <>, <>, <>, <>
  }
}


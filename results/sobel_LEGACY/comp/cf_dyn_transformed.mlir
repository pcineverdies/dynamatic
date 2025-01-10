module {
  func.func @sobel(%arg0: memref<256xi32> {handshake.arg_name = "in"}, %arg1: memref<9xi32> {handshake.arg_name = "gX"}, %arg2: memref<9xi32> {handshake.arg_name = "gY"}, %arg3: memref<256xi32> {handshake.arg_name = "out"}) -> i32 {
    %c0_i32 = arith.constant {handshake.name = "constant0"} 0 : i32
    %c0 = arith.constant {handshake.name = "constant4"} 0 : index
    cf.br ^bb1(%c0, %c0_i32 : index, i32) {handshake.name = "br0"}
  ^bb1(%0: index, %1: i32):  // 2 preds: ^bb0, ^bb13
    %c0_0 = arith.constant {handshake.name = "constant10"} 0 : index
    cf.br ^bb2(%c0_0, %1 : index, i32) {handshake.name = "br1"}
  ^bb2(%2: index, %3: i32):  // 2 preds: ^bb1, ^bb12
    %c5_i32 = arith.constant {handshake.name = "constant11"} 5 : i32
    %c0_i32_1 = arith.constant {handshake.name = "constant12"} 0 : i32
    %4 = arith.index_cast %2 {handshake.name = "index_cast0"} : index to i32
    %5 = arith.cmpi eq, %4, %c0_i32_1 {handshake.name = "cmpi0"} : i32
    %6 = arith.extui %5 {handshake.name = "extui0"} : i1 to i32
    %7 = arith.cmpi eq, %4, %c5_i32 {handshake.name = "cmpi1"} : i32
    %8 = arith.cmpi eq, %6, %c0_i32_1 {handshake.name = "cmpi2"} : i32
    %9 = arith.andi %8, %7 {handshake.name = "andi0"} : i1
    %10 = arith.ori %5, %9 {handshake.name = "ori0"} : i1
    %11 = arith.extsi %10 {handshake.name = "extsi0"} : i1 to i32
    %12 = arith.cmpi eq, %11, %c0_i32_1 {handshake.name = "cmpi3"} : i32
    cf.cond_br %12, ^bb3, ^bb12(%3 : i32) {handshake.name = "cond_br0"}
  ^bb3:  // pred: ^bb2
    %c-1 = arith.constant {handshake.name = "constant13"} -1 : index
    %c0_i32_2 = arith.constant {handshake.name = "constant14"} 0 : i32
    %13 = memref.load %arg0[%2] {handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load3"} : memref<256xi32>
    cf.br ^bb4(%c-1, %c0_i32_2, %c0_i32_2 : index, i32, i32) {handshake.name = "br2"}
  ^bb4(%14: index, %15: i32, %16: i32):  // 2 preds: ^bb3, ^bb6
    %c-1_3 = arith.constant {handshake.name = "constant15"} -1 : index
    cf.br ^bb5(%c-1_3, %15, %16 : index, i32, i32) {handshake.name = "br3"}
  ^bb5(%17: index, %18: i32, %19: i32):  // 2 preds: ^bb4, ^bb5
    %c4 = arith.constant {handshake.name = "constant16"} 4 : index
    %c2 = arith.constant {handshake.name = "constant17"} 2 : index
    %c1 = arith.constant {handshake.name = "constant18"} 1 : index
    %20 = arith.shli %14, %c1 {handshake.name = "shli0"} : index
    %21 = arith.addi %14, %20 {handshake.name = "addi13"} : index
    %22 = arith.addi %17, %21 {handshake.name = "addi4"} : index
    %23 = arith.addi %22, %c4 {handshake.name = "addi5"} : index
    %24 = memref.load %arg1[%23] {handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load4"} : memref<9xi32>
    %25 = arith.muli %13, %24 {handshake.name = "muli0"} : i32
    %26 = arith.addi %19, %25 {handshake.name = "addi0"} : i32
    %27 = arith.shli %14, %c1 {handshake.name = "shli1"} : index
    %28 = arith.addi %14, %27 {handshake.name = "addi14"} : index
    %29 = arith.addi %17, %28 {handshake.name = "addi6"} : index
    %30 = arith.addi %29, %c4 {handshake.name = "addi7"} : index
    %31 = memref.load %arg2[%30] {handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "load5"} : memref<9xi32>
    %32 = arith.muli %13, %31 {handshake.name = "muli1"} : i32
    %33 = arith.addi %18, %32 {handshake.name = "addi1"} : i32
    %34 = arith.addi %17, %c1 {handshake.name = "addi9"} : index
    %35 = arith.cmpi ult, %34, %c2 {handshake.name = "cmpi8"} : index
    cf.cond_br %35, ^bb5(%34, %33, %26 : index, i32, i32), ^bb6 {handshake.name = "cond_br1"}
  ^bb6:  // pred: ^bb5
    %c2_4 = arith.constant {handshake.name = "constant19"} 2 : index
    %c1_5 = arith.constant {handshake.name = "constant20"} 1 : index
    %36 = arith.addi %14, %c1_5 {handshake.name = "addi10"} : index
    %37 = arith.cmpi ult, %36, %c2_4 {handshake.name = "cmpi9"} : index
    cf.cond_br %37, ^bb4(%36, %33, %26 : index, i32, i32), ^bb7 {handshake.name = "cond_br2"}
  ^bb7:  // pred: ^bb6
    %false = arith.constant {handshake.name = "constant21"} false
    %c255_i32 = arith.constant {handshake.name = "constant22"} 255 : i32
    %38 = arith.cmpi sgt, %26, %c255_i32 {handshake.name = "cmpi4"} : i32
    %39 = arith.select %38, %c255_i32, %26 {handshake.name = "select1"} : i32
    cf.cond_br %38, ^bb9(%false : i1), ^bb8 {handshake.name = "cond_br3"}
  ^bb8:  // pred: ^bb7
    %c0_i32_6 = arith.constant {handshake.name = "constant23"} 0 : i32
    %40 = arith.cmpi slt, %26, %c0_i32_6 {handshake.name = "cmpi5"} : i32
    cf.br ^bb9(%40 : i1) {handshake.name = "br5"}
  ^bb9(%41: i1):  // 2 preds: ^bb7, ^bb8
    %false_7 = arith.constant {handshake.name = "constant24"} false
    %c255_i32_8 = arith.constant {handshake.name = "constant25"} 255 : i32
    %c0_i32_9 = arith.constant {handshake.name = "constant26"} 0 : i32
    %42 = arith.select %41, %c0_i32_9, %39 {handshake.name = "select2"} : i32
    %43 = arith.cmpi sgt, %33, %c255_i32_8 {handshake.name = "cmpi6"} : i32
    %44 = arith.select %43, %c255_i32_8, %33 {handshake.name = "select3"} : i32
    cf.cond_br %43, ^bb11(%false_7 : i1), ^bb10 {handshake.name = "cond_br4"}
  ^bb10:  // pred: ^bb9
    %c0_i32_10 = arith.constant {handshake.name = "constant27"} 0 : i32
    %45 = arith.cmpi slt, %33, %c0_i32_10 {handshake.name = "cmpi7"} : i32
    cf.br ^bb11(%45 : i1) {handshake.name = "br8"}
  ^bb11(%46: i1):  // 2 preds: ^bb9, ^bb10
    %c0_i32_11 = arith.constant {handshake.name = "constant28"} 0 : i32
    %47 = arith.select %46, %c0_i32_11, %44 {handshake.name = "select4"} : i32
    %48 = arith.addi %42, %47 {handshake.name = "addi2"} : i32
    %49 = arith.addi %3, %48 {handshake.name = "addi3"} : i32
    cf.br ^bb12(%49 : i32) {handshake.name = "br10"}
  ^bb12(%50: i32):  // 2 preds: ^bb2, ^bb11
    %c1_12 = arith.constant {handshake.name = "constant29"} 1 : index
    %c15 = arith.constant {handshake.name = "constant30"} 15 : index
    %c255_i32_13 = arith.constant {handshake.name = "constant31"} 255 : i32
    %51 = arith.trunci %50 {handshake.name = "trunci0"} : i32 to i8
    %52 = arith.extui %51 {handshake.name = "extui1"} : i8 to i32
    %53 = arith.subi %c255_i32_13, %52 {handshake.name = "subi0"} : i32
    %54 = arith.addi %2, %0 {handshake.name = "addi8"} : index
    memref.store %53, %arg3[%54] {handshake.deps = #handshake<deps[<"store1" (1) [[1, 14], [-14, -1]]>]>, handshake.mem_interface = #handshake.mem_interface<MC>, handshake.name = "store1"} : memref<256xi32>
    %55 = arith.addi %2, %c1_12 {handshake.name = "addi11"} : index
    %56 = arith.cmpi ult, %55, %c15 {handshake.name = "cmpi10"} : index
    cf.cond_br %56, ^bb2(%55, %50 : index, i32), ^bb13 {handshake.name = "cond_br5"}
  ^bb13:  // pred: ^bb12
    %c1_14 = arith.constant {handshake.name = "constant32"} 1 : index
    %c15_15 = arith.constant {handshake.name = "constant33"} 15 : index
    %57 = arith.addi %0, %c1_14 {handshake.name = "addi12"} : index
    %58 = arith.cmpi ult, %57, %c15_15 {handshake.name = "cmpi11"} : index
    cf.cond_br %58, ^bb1(%57, %50 : index, i32), ^bb14 {handshake.name = "cond_br6"}
  ^bb14:  // pred: ^bb13
    return {handshake.name = "return0"} %50 : i32
  }
}


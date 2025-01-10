module {
  func.func @sobel(%arg0: memref<256xi32> {handshake.arg_name = "in"}, %arg1: memref<9xi32> {handshake.arg_name = "gX"}, %arg2: memref<9xi32> {handshake.arg_name = "gY"}, %arg3: memref<256xi32> {handshake.arg_name = "out"}) -> i32 {
    %c0_i32 = arith.constant 0 : i32
    %c5_i32 = arith.constant 5 : i32
    %c255_i32 = arith.constant 255 : i32
    %false = arith.constant false
    %c0 = arith.constant 0 : index
    %c15 = arith.constant 15 : index
    %c1 = arith.constant 1 : index
    %c-1 = arith.constant -1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    cf.br ^bb1(%c0, %c0_i32 : index, i32) {handshake.name = "br0"}
  ^bb1(%0: index, %1: i32):  // 2 preds: ^bb0, ^bb13
    cf.br ^bb2(%c0, %1 : index, i32) {handshake.name = "br1"}
  ^bb2(%2: index, %3: i32):  // 2 preds: ^bb1, ^bb12
    %4 = arith.index_cast %2 {handshake.name = "index_cast0"} : index to i32
    %5 = arith.cmpi eq, %4, %c0_i32 {handshake.name = "cmpi0"} : i32
    %6 = arith.extui %5 {handshake.name = "extui0"} : i1 to i32
    %7 = arith.cmpi eq, %4, %c5_i32 {handshake.name = "cmpi1"} : i32
    %8 = arith.cmpi eq, %6, %c0_i32 {handshake.name = "cmpi2"} : i32
    %9 = arith.andi %8, %7 {handshake.name = "andi0"} : i1
    %10 = arith.ori %5, %9 {handshake.name = "ori0"} : i1
    %11 = arith.extsi %10 {handshake.name = "extsi0"} : i1 to i32
    %12 = arith.cmpi eq, %11, %c0_i32 {handshake.name = "cmpi3"} : i32
    cf.cond_br %12, ^bb3, ^bb12(%3 : i32)
  ^bb3:  // pred: ^bb2
    %13 = memref.load %arg0[%2] {handshake.name = "load3"} : memref<256xi32>
    cf.br ^bb4(%c-1, %c0_i32, %c0_i32 : index, i32, i32) {handshake.name = "br2"}
  ^bb4(%14: index, %15: i32, %16: i32):  // 2 preds: ^bb3, ^bb6
    cf.br ^bb5(%c-1, %15, %16 : index, i32, i32) {handshake.name = "br3"}
  ^bb5(%17: index, %18: i32, %19: i32):  // 2 preds: ^bb4, ^bb5
    %20 = arith.muli %14, %c3 {handshake.name = "muli2"} : index
    %21 = arith.addi %17, %20 {handshake.name = "addi4"} : index
    %22 = arith.addi %21, %c4 {handshake.name = "addi5"} : index
    %23 = memref.load %arg1[%22] {handshake.name = "load4"} : memref<9xi32>
    %24 = arith.muli %13, %23 {handshake.name = "muli0"} : i32
    %25 = arith.addi %19, %24 {handshake.name = "addi0"} : i32
    %26 = arith.muli %14, %c3 {handshake.name = "muli3"} : index
    %27 = arith.addi %17, %26 {handshake.name = "addi6"} : index
    %28 = arith.addi %27, %c4 {handshake.name = "addi7"} : index
    %29 = memref.load %arg2[%28] {handshake.name = "load5"} : memref<9xi32>
    %30 = arith.muli %13, %29 {handshake.name = "muli1"} : i32
    %31 = arith.addi %18, %30 {handshake.name = "addi1"} : i32
    %32 = arith.addi %17, %c1 {handshake.name = "addi9"} : index
    %33 = arith.cmpi ult, %32, %c2 {handshake.name = "cmpi8"} : index
    cf.cond_br %33, ^bb5(%32, %31, %25 : index, i32, i32), ^bb6 {handshake.name = "cond_br1"}
  ^bb6:  // pred: ^bb5
    %34 = arith.addi %14, %c1 {handshake.name = "addi10"} : index
    %35 = arith.cmpi ult, %34, %c2 {handshake.name = "cmpi9"} : index
    cf.cond_br %35, ^bb4(%34, %31, %25 : index, i32, i32), ^bb7 {handshake.name = "cond_br2"}
  ^bb7:  // pred: ^bb6
    %36 = arith.cmpi sgt, %25, %c255_i32 {handshake.name = "cmpi4"} : i32
    %37 = arith.select %36, %c255_i32, %25 {handshake.name = "select1"} : i32
    cf.cond_br %36, ^bb9(%false : i1), ^bb8
  ^bb8:  // pred: ^bb7
    %38 = arith.cmpi slt, %25, %c0_i32 {handshake.name = "cmpi5"} : i32
    cf.br ^bb9(%38 : i1) {handshake.name = "br5"}
  ^bb9(%39: i1):  // 2 preds: ^bb7, ^bb8
    %40 = arith.select %39, %c0_i32, %37 {handshake.name = "select2"} : i32
    %41 = arith.cmpi sgt, %31, %c255_i32 {handshake.name = "cmpi6"} : i32
    %42 = arith.select %41, %c255_i32, %31 {handshake.name = "select3"} : i32
    cf.cond_br %41, ^bb11(%false : i1), ^bb10
  ^bb10:  // pred: ^bb9
    %43 = arith.cmpi slt, %31, %c0_i32 {handshake.name = "cmpi7"} : i32
    cf.br ^bb11(%43 : i1) {handshake.name = "br8"}
  ^bb11(%44: i1):  // 2 preds: ^bb9, ^bb10
    %45 = arith.select %44, %c0_i32, %42 {handshake.name = "select4"} : i32
    %46 = arith.addi %40, %45 {handshake.name = "addi2"} : i32
    %47 = arith.addi %3, %46 {handshake.name = "addi3"} : i32
    cf.br ^bb12(%47 : i32) {handshake.name = "br10"}
  ^bb12(%48: i32):  // 2 preds: ^bb2, ^bb11
    %49 = arith.trunci %48 {handshake.name = "trunci0"} : i32 to i8
    %50 = arith.extui %49 {handshake.name = "extui1"} : i8 to i32
    %51 = arith.subi %c255_i32, %50 {handshake.name = "subi0"} : i32
    %52 = arith.addi %2, %0 {handshake.name = "addi8"} : index
    memref.store %51, %arg3[%52] {handshake.deps = #handshake<deps[<"store1" (1) [[1, 14], [-14, -1]]>]>, handshake.name = "store1"} : memref<256xi32>
    %53 = arith.addi %2, %c1 {handshake.name = "addi11"} : index
    %54 = arith.cmpi ult, %53, %c15 {handshake.name = "cmpi10"} : index
    cf.cond_br %54, ^bb2(%53, %48 : index, i32), ^bb13 {handshake.name = "cond_br5"}
  ^bb13:  // pred: ^bb12
    %55 = arith.addi %0, %c1 {handshake.name = "addi12"} : index
    %56 = arith.cmpi ult, %55, %c15 {handshake.name = "cmpi11"} : index
    cf.cond_br %56, ^bb1(%55, %48 : index, i32), ^bb14 {handshake.name = "cond_br6"}
  ^bb14:  // pred: ^bb13
    return {handshake.name = "return0"} %48 : i32
  }
}


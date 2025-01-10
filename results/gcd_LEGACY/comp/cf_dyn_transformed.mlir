module {
  func.func @gcd(%arg0: i32 {handshake.arg_name = "a"}, %arg1: i32 {handshake.arg_name = "b"}) -> i32 {
    %c0_i32 = arith.constant {handshake.name = "constant0"} 0 : i32
    %0 = llvm.mlir.undef {handshake.name = "mlir.undef0"} : i32
    %1 = arith.cmpi eq, %arg0, %c0_i32 {handshake.name = "cmpi0"} : i32
    %2 = arith.cmpi ne, %arg0, %c0_i32 {handshake.name = "cmpi1"} : i32
    %3 = arith.select %1, %arg1, %0 {handshake.name = "select0"} : i32
    %4 = arith.cmpi ne, %arg1, %c0_i32 {handshake.name = "cmpi2"} : i32
    %5 = arith.andi %2, %4 {handshake.name = "andi0"} : i1
    cf.cond_br %5, ^bb1(%c0_i32, %arg1, %arg0 : i32, i32, i32), ^bb12(%3 : i32) {handshake.name = "cond_br0"}
  ^bb1(%6: i32, %7: i32, %8: i32):  // 2 preds: ^bb0, ^bb2
    %c1_i32 = arith.constant {handshake.name = "constant2"} 1 : i32
    %c0_i32_0 = arith.constant {handshake.name = "constant3"} 0 : i32
    %9 = arith.ori %8, %7 {handshake.name = "ori0"} : i32
    %10 = arith.andi %9, %c1_i32 {handshake.name = "andi1"} : i32
    %11 = arith.cmpi eq, %10, %c0_i32_0 {handshake.name = "cmpi3"} : i32
    cf.cond_br %11, ^bb2(%6, %7, %8 : i32, i32, i32), ^bb3(%8 : i32) {handshake.name = "cond_br1"}
  ^bb2(%12: i32, %13: i32, %14: i32):  // pred: ^bb1
    %c1_i32_1 = arith.constant {handshake.name = "constant4"} 1 : i32
    %15 = arith.shrsi %14, %c1_i32_1 {handshake.name = "shrsi0"} : i32
    %16 = arith.shrsi %13, %c1_i32_1 {handshake.name = "shrsi1"} : i32
    %17 = arith.addi %12, %c1_i32_1 {handshake.name = "addi0"} : i32
    cf.br ^bb1(%17, %16, %15 : i32, i32, i32) {handshake.name = "br1"}
  ^bb3(%18: i32):  // 2 preds: ^bb1, ^bb4
    %c1_i32_2 = arith.constant {handshake.name = "constant5"} 1 : i32
    %c0_i32_3 = arith.constant {handshake.name = "constant6"} 0 : i32
    %19 = arith.cmpi sgt, %18, %c0_i32_3 {handshake.name = "cmpi4"} : i32
    %20 = arith.andi %18, %c1_i32_2 {handshake.name = "andi2"} : i32
    %21 = arith.cmpi eq, %20, %c0_i32_3 {handshake.name = "cmpi5"} : i32
    %22 = arith.andi %19, %21 {handshake.name = "andi3"} : i1
    cf.cond_br %22, ^bb4(%18 : i32), ^bb5(%7 : i32) {handshake.name = "cond_br2"}
  ^bb4(%23: i32):  // pred: ^bb3
    %c1_i32_4 = arith.constant {handshake.name = "constant7"} 1 : i32
    %24 = arith.shrsi %23, %c1_i32_4 {handshake.name = "shrsi2"} : i32
    cf.br ^bb3(%24 : i32) {handshake.name = "br3"}
  ^bb5(%25: i32):  // 2 preds: ^bb3, ^bb6
    %c1_i32_5 = arith.constant {handshake.name = "constant8"} 1 : i32
    %c0_i32_6 = arith.constant {handshake.name = "constant9"} 0 : i32
    %26 = arith.cmpi sgt, %25, %c0_i32_6 {handshake.name = "cmpi6"} : i32
    %27 = arith.andi %25, %c1_i32_5 {handshake.name = "andi4"} : i32
    %28 = arith.cmpi eq, %27, %c0_i32_6 {handshake.name = "cmpi7"} : i32
    %29 = arith.andi %26, %28 {handshake.name = "andi5"} : i1
    cf.cond_br %29, ^bb6(%25 : i32), ^bb7(%25, %18 : i32, i32) {handshake.name = "cond_br3"}
  ^bb6(%30: i32):  // pred: ^bb5
    %c1_i32_7 = arith.constant {handshake.name = "constant10"} 1 : i32
    %31 = arith.shrsi %30, %c1_i32_7 {handshake.name = "shrsi3"} : i32
    cf.br ^bb5(%31 : i32) {handshake.name = "br5"}
  ^bb7(%32: i32, %33: i32):  // 2 preds: ^bb5, ^bb9
    %c0_i32_8 = arith.constant {handshake.name = "constant11"} 0 : i32
    %34 = arith.cmpi ne, %33, %c0_i32_8 {handshake.name = "cmpi8"} : i32
    cf.cond_br %34, ^bb8(%32, %33 : i32, i32), ^bb11 {handshake.name = "cond_br4"}
  ^bb8(%35: i32, %36: i32):  // pred: ^bb7
    %c0_i32_9 = arith.constant {handshake.name = "constant12"} 0 : i32
    %37 = arith.subi %36, %35 {handshake.name = "subi0"} : i32
    %38 = arith.cmpi slt, %36, %35 {handshake.name = "cmpi9"} : i32
    %39 = arith.select %38, %36, %35 {handshake.name = "select1"} : i32
    %40 = arith.cmpi sge, %37, %c0_i32_9 {handshake.name = "cmpi10"} : i32
    %41 = arith.subi %c0_i32_9, %37 {handshake.name = "subi2"} : i32
    %42 = arith.select %40, %37, %41 {handshake.name = "select2"} : i32
    cf.br ^bb9(%42 : i32) {handshake.name = "br7"}
  ^bb9(%43: i32):  // 2 preds: ^bb8, ^bb10
    %c1_i32_10 = arith.constant {handshake.name = "constant13"} 1 : i32
    %c0_i32_11 = arith.constant {handshake.name = "constant14"} 0 : i32
    %44 = arith.cmpi sgt, %43, %c0_i32_11 {handshake.name = "cmpi11"} : i32
    %45 = arith.andi %43, %c1_i32_10 {handshake.name = "andi6"} : i32
    %46 = arith.cmpi eq, %45, %c0_i32_11 {handshake.name = "cmpi12"} : i32
    %47 = arith.andi %44, %46 {handshake.name = "andi7"} : i1
    cf.cond_br %47, ^bb10(%43 : i32), ^bb7(%39, %43 : i32, i32) {handshake.name = "cond_br5"}
  ^bb10(%48: i32):  // pred: ^bb9
    %c1_i32_12 = arith.constant {handshake.name = "constant15"} 1 : i32
    %49 = arith.shrsi %48, %c1_i32_12 {handshake.name = "shrsi4"} : i32
    cf.br ^bb9(%49 : i32) {handshake.name = "br8"}
  ^bb11:  // pred: ^bb7
    %50 = arith.shli %32, %6 {handshake.name = "shli0"} : i32
    cf.br ^bb12(%50 : i32) {handshake.name = "br10"}
  ^bb12(%51: i32):  // 2 preds: ^bb0, ^bb11
    return {handshake.name = "return0"} %51 : i32
  }
}


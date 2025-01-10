module {
  func.func @gcd(%arg0: i32 {handshake.arg_name = "a"}, %arg1: i32 {handshake.arg_name = "b"}) -> i32 {
    %c1_i32 = arith.constant {handshake.name = "constant0"} 1 : i32
    %c0_i32 = arith.constant {handshake.name = "constant1"} 0 : i32
    %0 = llvm.mlir.undef {handshake.name = "mlir.undef0"} : i32
    %1 = arith.cmpi eq, %arg0, %c0_i32 {handshake.name = "cmpi0"} : i32
    %2 = arith.cmpi ne, %arg0, %c0_i32 {handshake.name = "cmpi1"} : i32
    %3 = arith.select %1, %arg1, %0 {handshake.name = "select0"} : i32
    %4 = arith.cmpi ne, %arg1, %c0_i32 {handshake.name = "cmpi2"} : i32
    %5 = arith.andi %2, %4 {handshake.name = "andi0"} : i1
    cf.cond_br %5, ^bb1, ^bb17 {handshake.name = "cond_br0"}
  ^bb1:  // pred: ^bb0
    cf.br ^bb2(%c0_i32, %arg1, %arg0 : i32, i32, i32) {handshake.name = "br0"}
  ^bb2(%6: i32, %7: i32, %8: i32):  // 2 preds: ^bb1, ^bb3
    %9 = arith.ori %8, %7 {handshake.name = "ori0"} : i32
    %10 = arith.andi %9, %c1_i32 {handshake.name = "andi1"} : i32
    %11 = arith.cmpi eq, %10, %c0_i32 {handshake.name = "cmpi3"} : i32
    cf.cond_br %11, ^bb3(%6, %7, %8 : i32, i32, i32), ^bb4 {handshake.name = "cond_br1"}
  ^bb3(%12: i32, %13: i32, %14: i32):  // pred: ^bb2
    %15 = arith.shrsi %14, %c1_i32 {handshake.name = "shrsi0"} : i32
    %16 = arith.shrsi %13, %c1_i32 {handshake.name = "shrsi1"} : i32
    %17 = arith.addi %12, %c1_i32 {handshake.name = "addi0"} : i32
    cf.br ^bb2(%17, %16, %15 : i32, i32, i32) {handshake.name = "br1"}
  ^bb4:  // pred: ^bb2
    cf.br ^bb5(%8 : i32) {handshake.name = "br2"}
  ^bb5(%18: i32):  // 2 preds: ^bb4, ^bb6
    %19 = arith.cmpi sgt, %18, %c0_i32 {handshake.name = "cmpi4"} : i32
    %20 = arith.andi %18, %c1_i32 {handshake.name = "andi2"} : i32
    %21 = arith.cmpi eq, %20, %c0_i32 {handshake.name = "cmpi5"} : i32
    %22 = arith.andi %19, %21 {handshake.name = "andi3"} : i1
    cf.cond_br %22, ^bb6(%18 : i32), ^bb7 {handshake.name = "cond_br2"}
  ^bb6(%23: i32):  // pred: ^bb5
    %24 = arith.shrsi %23, %c1_i32 {handshake.name = "shrsi2"} : i32
    cf.br ^bb5(%24 : i32) {handshake.name = "br3"}
  ^bb7:  // pred: ^bb5
    cf.br ^bb8(%7 : i32) {handshake.name = "br4"}
  ^bb8(%25: i32):  // 2 preds: ^bb7, ^bb9
    %26 = arith.cmpi sgt, %25, %c0_i32 {handshake.name = "cmpi6"} : i32
    %27 = arith.andi %25, %c1_i32 {handshake.name = "andi4"} : i32
    %28 = arith.cmpi eq, %27, %c0_i32 {handshake.name = "cmpi7"} : i32
    %29 = arith.andi %26, %28 {handshake.name = "andi5"} : i1
    cf.cond_br %29, ^bb9(%25 : i32), ^bb10 {handshake.name = "cond_br3"}
  ^bb9(%30: i32):  // pred: ^bb8
    %31 = arith.shrsi %30, %c1_i32 {handshake.name = "shrsi3"} : i32
    cf.br ^bb8(%31 : i32) {handshake.name = "br5"}
  ^bb10:  // pred: ^bb8
    cf.br ^bb11(%25, %18 : i32, i32) {handshake.name = "br6"}
  ^bb11(%32: i32, %33: i32):  // 2 preds: ^bb10, ^bb15
    %34 = arith.cmpi ne, %33, %c0_i32 {handshake.name = "cmpi8"} : i32
    cf.cond_br %34, ^bb12(%32, %33 : i32, i32), ^bb16 {handshake.name = "cond_br4"}
  ^bb12(%35: i32, %36: i32):  // pred: ^bb11
    %37 = arith.subi %36, %35 {handshake.name = "subi0"} : i32
    %38 = arith.cmpi slt, %36, %35 {handshake.name = "cmpi9"} : i32
    %39 = arith.select %38, %36, %35 {handshake.name = "select1"} : i32
    %40 = arith.cmpi sge, %37, %c0_i32 {handshake.name = "cmpi10"} : i32
    %41 = arith.subi %c0_i32, %37 {handshake.name = "subi2"} : i32
    %42 = arith.select %40, %37, %41 {handshake.name = "select2"} : i32
    cf.br ^bb13(%42 : i32) {handshake.name = "br7"}
  ^bb13(%43: i32):  // 2 preds: ^bb12, ^bb14
    %44 = arith.cmpi sgt, %43, %c0_i32 {handshake.name = "cmpi11"} : i32
    %45 = arith.andi %43, %c1_i32 {handshake.name = "andi6"} : i32
    %46 = arith.cmpi eq, %45, %c0_i32 {handshake.name = "cmpi12"} : i32
    %47 = arith.andi %44, %46 {handshake.name = "andi7"} : i1
    cf.cond_br %47, ^bb14(%43 : i32), ^bb15 {handshake.name = "cond_br5"}
  ^bb14(%48: i32):  // pred: ^bb13
    %49 = arith.shrsi %48, %c1_i32 {handshake.name = "shrsi4"} : i32
    cf.br ^bb13(%49 : i32) {handshake.name = "br8"}
  ^bb15:  // pred: ^bb13
    cf.br ^bb11(%39, %43 : i32, i32) {handshake.name = "br9"}
  ^bb16:  // pred: ^bb11
    %50 = arith.shli %32, %6 {handshake.name = "shli0"} : i32
    cf.br ^bb18(%50 : i32) {handshake.name = "br10"}
  ^bb17:  // pred: ^bb0
    cf.br ^bb18(%3 : i32) {handshake.name = "br11"}
  ^bb18(%51: i32):  // 2 preds: ^bb16, ^bb17
    cf.br ^bb19 {handshake.name = "br12"}
  ^bb19:  // pred: ^bb18
    return {handshake.name = "return0"} %51 : i32
  }
}


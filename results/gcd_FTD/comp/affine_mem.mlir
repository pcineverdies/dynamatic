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
    %6 = scf.if %5 -> (i32) {
      %7:3 = scf.while (%arg2 = %c0_i32, %arg3 = %arg1, %arg4 = %arg0) : (i32, i32, i32) -> (i32, i32, i32) {
        %12 = arith.ori %arg4, %arg3 {handshake.name = "ori0"} : i32
        %13 = arith.andi %12, %c1_i32 {handshake.name = "andi1"} : i32
        %14 = arith.cmpi eq, %13, %c0_i32 {handshake.name = "cmpi3"} : i32
        scf.condition(%14) {handshake.name = "condition0"} %arg2, %arg3, %arg4 : i32, i32, i32
      } do {
      ^bb0(%arg2: i32, %arg3: i32, %arg4: i32):
        %12 = arith.shrsi %arg4, %c1_i32 {handshake.name = "shrsi0"} : i32
        %13 = arith.shrsi %arg3, %c1_i32 {handshake.name = "shrsi1"} : i32
        %14 = arith.addi %arg2, %c1_i32 {handshake.name = "addi0"} : i32
        scf.yield {handshake.name = "yield0"} %14, %13, %12 : i32, i32, i32
      } attributes {handshake.name = "while0"}
      %8 = scf.while (%arg2 = %7#2) : (i32) -> i32 {
        %12 = arith.cmpi sgt, %arg2, %c0_i32 {handshake.name = "cmpi4"} : i32
        %13 = arith.andi %arg2, %c1_i32 {handshake.name = "andi2"} : i32
        %14 = arith.cmpi eq, %13, %c0_i32 {handshake.name = "cmpi5"} : i32
        %15 = arith.andi %12, %14 {handshake.name = "andi3"} : i1
        scf.condition(%15) {handshake.name = "condition1"} %arg2 : i32
      } do {
      ^bb0(%arg2: i32):
        %12 = arith.shrsi %arg2, %c1_i32 {handshake.name = "shrsi2"} : i32
        scf.yield {handshake.name = "yield1"} %12 : i32
      } attributes {handshake.name = "while1"}
      %9 = scf.while (%arg2 = %7#1) : (i32) -> i32 {
        %12 = arith.cmpi sgt, %arg2, %c0_i32 {handshake.name = "cmpi6"} : i32
        %13 = arith.andi %arg2, %c1_i32 {handshake.name = "andi4"} : i32
        %14 = arith.cmpi eq, %13, %c0_i32 {handshake.name = "cmpi7"} : i32
        %15 = arith.andi %12, %14 {handshake.name = "andi5"} : i1
        scf.condition(%15) {handshake.name = "condition2"} %arg2 : i32
      } do {
      ^bb0(%arg2: i32):
        %12 = arith.shrsi %arg2, %c1_i32 {handshake.name = "shrsi3"} : i32
        scf.yield {handshake.name = "yield2"} %12 : i32
      } attributes {handshake.name = "while2"}
      %10:2 = scf.while (%arg2 = %9, %arg3 = %8) : (i32, i32) -> (i32, i32) {
        %12 = arith.cmpi ne, %arg3, %c0_i32 {handshake.name = "cmpi8"} : i32
        scf.condition(%12) {handshake.name = "condition3"} %arg2, %arg3 : i32, i32
      } do {
      ^bb0(%arg2: i32, %arg3: i32):
        %12 = arith.subi %arg3, %arg2 {handshake.name = "subi0"} : i32
        %13 = arith.cmpi slt, %arg3, %arg2 {handshake.name = "cmpi9"} : i32
        %14 = arith.select %13, %arg3, %arg2 {handshake.name = "select1"} : i32
        %15 = arith.cmpi sge, %12, %c0_i32 {handshake.name = "cmpi10"} : i32
        %16 = scf.if %15 -> (i32) {
          scf.yield {handshake.name = "yield3"} %12 : i32
        } else {
          %18 = arith.subi %c0_i32, %12 {handshake.name = "subi1"} : i32
          scf.yield {handshake.name = "yield4"} %18 : i32
        } {handshake.name = "if0"}
        %17 = scf.while (%arg4 = %16) : (i32) -> i32 {
          %18 = arith.cmpi sgt, %arg4, %c0_i32 {handshake.name = "cmpi11"} : i32
          %19 = arith.andi %arg4, %c1_i32 {handshake.name = "andi6"} : i32
          %20 = arith.cmpi eq, %19, %c0_i32 {handshake.name = "cmpi12"} : i32
          %21 = arith.andi %18, %20 {handshake.name = "andi7"} : i1
          scf.condition(%21) {handshake.name = "condition4"} %arg4 : i32
        } do {
        ^bb0(%arg4: i32):
          %18 = arith.shrsi %arg4, %c1_i32 {handshake.name = "shrsi4"} : i32
          scf.yield {handshake.name = "yield5"} %18 : i32
        } attributes {handshake.name = "while3"}
        scf.yield {handshake.name = "yield6"} %14, %17 : i32, i32
      } attributes {handshake.name = "while4"}
      %11 = arith.shli %10#0, %7#0 {handshake.name = "shli0"} : i32
      scf.yield {handshake.name = "yield7"} %11 : i32
    } else {
      scf.yield {handshake.name = "yield8"} %3 : i32
    } {handshake.name = "if1"}
    return {handshake.name = "return0"} %6 : i32
  }
}


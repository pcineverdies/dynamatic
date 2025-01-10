module {
  func.func @sobel(%arg0: memref<256xi32> {handshake.arg_name = "in"}, %arg1: memref<9xi32> {handshake.arg_name = "gX"}, %arg2: memref<9xi32> {handshake.arg_name = "gY"}, %arg3: memref<256xi32> {handshake.arg_name = "out"}) -> i32 {
    %c2_i32 = arith.constant {handshake.name = "constant0"} 2 : i32
    %false = arith.constant {handshake.name = "constant1"} false
    %c255_i32 = arith.constant {handshake.name = "constant2"} 255 : i32
    %c5_i32 = arith.constant {handshake.name = "constant3"} 5 : i32
    %c0_i32 = arith.constant {handshake.name = "constant4"} 0 : i32
    %0 = llvm.mlir.undef {handshake.name = "mlir.undef0"} : i32
    %1:3 = affine.for %arg4 = 0 to 15 iter_args(%arg5 = %0, %arg6 = %0, %arg7 = %c0_i32) -> (i32, i32, i32) {
      %2:3 = affine.for %arg8 = 0 to 15 iter_args(%arg9 = %arg5, %arg10 = %arg6, %arg11 = %arg7) -> (i32, i32, i32) {
        %3 = arith.index_cast %arg8 {handshake.name = "index_cast0"} : index to i32
        %4 = arith.cmpi eq, %3, %c0_i32 {handshake.name = "cmpi0"} : i32
        %5 = arith.extui %4 {handshake.name = "extui0"} : i1 to i32
        %6 = arith.cmpi eq, %3, %c5_i32 {handshake.name = "cmpi1"} : i32
        %7 = arith.cmpi eq, %5, %c0_i32 {handshake.name = "cmpi2"} : i32
        %8 = arith.andi %7, %6 {handshake.name = "andi0"} : i1
        %9 = arith.ori %4, %8 {handshake.name = "ori0"} : i1
        %10 = arith.extsi %9 {handshake.name = "extsi0"} : i1 to i32
        %11 = arith.cmpi eq, %10, %c0_i32 {handshake.name = "cmpi3"} : i32
        %12 = arith.select %11, %c2_i32, %arg10 {handshake.name = "select0"} : i32
        %13:2 = scf.if %11 -> (i32, i32) {
          %17 = affine.load %arg0[%arg8] {handshake.name = "load0"} : memref<256xi32>
          %18:3 = affine.for %arg12 = -1 to 2 iter_args(%arg13 = %c0_i32, %arg14 = %c0_i32, %arg15 = %arg9) -> (i32, i32, i32) {
            %29:2 = affine.for %arg16 = -1 to 2 iter_args(%arg17 = %arg13, %arg18 = %arg14) -> (i32, i32) {
              %30 = affine.load %arg1[%arg16 + %arg12 * 3 + 4] {handshake.name = "load1"} : memref<9xi32>
              %31 = arith.muli %17, %30 {handshake.name = "muli0"} : i32
              %32 = arith.addi %arg18, %31 {handshake.name = "addi0"} : i32
              %33 = affine.load %arg2[%arg16 + %arg12 * 3 + 4] {handshake.name = "load2"} : memref<9xi32>
              %34 = arith.muli %17, %33 {handshake.name = "muli1"} : i32
              %35 = arith.addi %arg17, %34 {handshake.name = "addi1"} : i32
              affine.yield {handshake.name = "yield0"} %35, %32 : i32, i32
            } {handshake.name = "for0"}
            affine.yield {handshake.name = "yield1"} %29#0, %29#1, %c2_i32 : i32, i32, i32
          } {handshake.name = "for1"}
          %19 = arith.cmpi sgt, %18#1, %c255_i32 {handshake.name = "cmpi4"} : i32
          %20 = arith.select %19, %c255_i32, %18#1 {handshake.name = "select1"} : i32
          %21 = scf.if %19 -> (i1) {
            scf.yield {handshake.name = "yield2"} %false : i1
          } else {
            %29 = arith.cmpi slt, %18#1, %c0_i32 {handshake.name = "cmpi5"} : i32
            scf.yield {handshake.name = "yield3"} %29 : i1
          } {handshake.name = "if0"}
          %22 = arith.select %21, %c0_i32, %20 {handshake.name = "select2"} : i32
          %23 = arith.cmpi sgt, %18#0, %c255_i32 {handshake.name = "cmpi6"} : i32
          %24 = arith.select %23, %c255_i32, %18#0 {handshake.name = "select3"} : i32
          %25 = scf.if %23 -> (i1) {
            scf.yield {handshake.name = "yield4"} %false : i1
          } else {
            %29 = arith.cmpi slt, %18#0, %c0_i32 {handshake.name = "cmpi7"} : i32
            scf.yield {handshake.name = "yield5"} %29 : i1
          } {handshake.name = "if1"}
          %26 = arith.select %25, %c0_i32, %24 {handshake.name = "select4"} : i32
          %27 = arith.addi %22, %26 {handshake.name = "addi2"} : i32
          %28 = arith.addi %arg11, %27 {handshake.name = "addi3"} : i32
          scf.yield {handshake.name = "yield6"} %18#2, %28 : i32, i32
        } else {
          scf.yield {handshake.name = "yield7"} %arg9, %arg11 : i32, i32
        } {handshake.name = "if2"}
        %14 = arith.trunci %13#1 {handshake.name = "trunci0"} : i32 to i8
        %15 = arith.extui %14 {handshake.name = "extui1"} : i8 to i32
        %16 = arith.subi %c255_i32, %15 {handshake.name = "subi0"} : i32
        affine.store %16, %arg3[%arg8 + %arg4] {handshake.deps = #handshake<deps[<"store0" (1) [[1, 14], [-14, -1]]>]>, handshake.name = "store0"} : memref<256xi32>
        affine.yield {handshake.name = "yield8"} %13#0, %12, %13#1 : i32, i32, i32
      } {handshake.name = "for2"}
      affine.yield {handshake.name = "yield9"} %2#0, %2#1, %2#2 : i32, i32, i32
    } {handshake.name = "for3"}
    return {handshake.name = "return0"} %1#2 : i32
  }
}


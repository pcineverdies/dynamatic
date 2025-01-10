module {
  func.func @sobel(%arg0: memref<256xi32> {handshake.arg_name = "in"}, %arg1: memref<9xi32> {handshake.arg_name = "gX"}, %arg2: memref<9xi32> {handshake.arg_name = "gY"}, %arg3: memref<256xi32> {handshake.arg_name = "out"}) -> i32 {
    %c4 = arith.constant {handshake.name = "constant18"} 4 : index
    %c3 = arith.constant {handshake.name = "constant17"} 3 : index
    %c2 = arith.constant {handshake.name = "constant12"} 2 : index
    %c-1 = arith.constant {handshake.name = "constant11"} -1 : index
    %c1 = arith.constant {handshake.name = "constant7"} 1 : index
    %c15 = arith.constant {handshake.name = "constant6"} 15 : index
    %c0 = arith.constant {handshake.name = "constant5"} 0 : index
    %c2_i32 = arith.constant {handshake.name = "constant0"} 2 : i32
    %false = arith.constant {handshake.name = "constant1"} false
    %c255_i32 = arith.constant {handshake.name = "constant2"} 255 : i32
    %c5_i32 = arith.constant {handshake.name = "constant3"} 5 : i32
    %c0_i32 = arith.constant {handshake.name = "constant4"} 0 : i32
    %0 = llvm.mlir.undef {handshake.name = "mlir.undef0"} : i32
    %1:4 = scf.while (%arg4 = %c0, %arg5 = %0, %arg6 = %0, %arg7 = %c0_i32) : (index, i32, i32, i32) -> (index, i32, i32, i32) {
      %2:4 = scf.while (%arg8 = %c0, %arg9 = %arg5, %arg10 = %arg6, %arg11 = %arg7) : (index, i32, i32, i32) -> (index, i32, i32, i32) {
        %5 = arith.index_cast %arg8 {handshake.name = "index_cast0"} : index to i32
        %6 = arith.cmpi eq, %5, %c0_i32 {handshake.name = "cmpi0"} : i32
        %7 = arith.extui %6 {handshake.name = "extui0"} : i1 to i32
        %8 = arith.cmpi eq, %5, %c5_i32 {handshake.name = "cmpi1"} : i32
        %9 = arith.cmpi eq, %7, %c0_i32 {handshake.name = "cmpi2"} : i32
        %10 = arith.andi %9, %8 {handshake.name = "andi0"} : i1
        %11 = arith.ori %6, %10 {handshake.name = "ori0"} : i1
        %12 = arith.extsi %11 {handshake.name = "extsi0"} : i1 to i32
        %13 = arith.cmpi eq, %12, %c0_i32 {handshake.name = "cmpi3"} : i32
        %14 = arith.select %13, %c2_i32, %arg10 {handshake.name = "select0"} : i32
        %15:2 = scf.if %13 -> (i32, i32) {
          %22 = memref.load %arg0[%arg8] {handshake.name = "load3"} : memref<256xi32>
          %23:4 = scf.while (%arg12 = %c-1, %arg13 = %c0_i32, %arg14 = %c0_i32, %arg15 = %arg9) : (index, i32, i32, i32) -> (index, i32, i32, i32) {
            %34:3 = scf.while (%arg16 = %c-1, %arg17 = %arg13, %arg18 = %arg14) : (index, i32, i32) -> (index, i32, i32) {
              %37 = arith.muli %arg12, %c3 {handshake.name = "muli2"} : index
              %38 = arith.addi %arg16, %37 {handshake.name = "addi4"} : index
              %39 = arith.addi %38, %c4 {handshake.name = "addi5"} : index
              %40 = memref.load %arg1[%39] {handshake.name = "load4"} : memref<9xi32>
              %41 = arith.muli %22, %40 {handshake.name = "muli0"} : i32
              %42 = arith.addi %arg18, %41 {handshake.name = "addi0"} : i32
              %43 = arith.muli %arg12, %c3 {handshake.name = "muli3"} : index
              %44 = arith.addi %arg16, %43 {handshake.name = "addi6"} : index
              %45 = arith.addi %44, %c4 {handshake.name = "addi7"} : index
              %46 = memref.load %arg2[%45] {handshake.name = "load5"} : memref<9xi32>
              %47 = arith.muli %22, %46 {handshake.name = "muli1"} : i32
              %48 = arith.addi %arg17, %47 {handshake.name = "addi1"} : i32
              %49 = arith.addi %arg16, %c1 {handshake.name = "addi9"} : index
              %50 = arith.cmpi ult, %49, %c2 {handshake.name = "cmpi8"} : index
              scf.condition(%50) {handshake.name = "condition0"} %49, %48, %42 : index, i32, i32
            } do {
            ^bb0(%arg16: index, %arg17: i32, %arg18: i32):
              scf.yield {handshake.name = "yield14"} %arg16, %arg17, %arg18 : index, i32, i32
            } attributes {handshake.name = "while0"}
            %35 = arith.addi %arg12, %c1 {handshake.name = "addi10"} : index
            %36 = arith.cmpi ult, %35, %c2 {handshake.name = "cmpi9"} : index
            scf.condition(%36) {handshake.name = "condition1"} %35, %34#1, %34#2, %c2_i32 : index, i32, i32, i32
          } do {
          ^bb0(%arg12: index, %arg13: i32, %arg14: i32, %arg15: i32):
            scf.yield {handshake.name = "yield15"} %arg12, %arg13, %arg14, %arg15 : index, i32, i32, i32
          } attributes {handshake.name = "while1"}
          %24 = arith.cmpi sgt, %23#2, %c255_i32 {handshake.name = "cmpi4"} : i32
          %25 = arith.select %24, %c255_i32, %23#2 {handshake.name = "select1"} : i32
          %26 = scf.if %24 -> (i1) {
            scf.yield {handshake.name = "yield2"} %false : i1
          } else {
            %34 = arith.cmpi slt, %23#2, %c0_i32 {handshake.name = "cmpi5"} : i32
            scf.yield {handshake.name = "yield3"} %34 : i1
          } {handshake.name = "if0"}
          %27 = arith.select %26, %c0_i32, %25 {handshake.name = "select2"} : i32
          %28 = arith.cmpi sgt, %23#1, %c255_i32 {handshake.name = "cmpi6"} : i32
          %29 = arith.select %28, %c255_i32, %23#1 {handshake.name = "select3"} : i32
          %30 = scf.if %28 -> (i1) {
            scf.yield {handshake.name = "yield4"} %false : i1
          } else {
            %34 = arith.cmpi slt, %23#1, %c0_i32 {handshake.name = "cmpi7"} : i32
            scf.yield {handshake.name = "yield5"} %34 : i1
          } {handshake.name = "if1"}
          %31 = arith.select %30, %c0_i32, %29 {handshake.name = "select4"} : i32
          %32 = arith.addi %27, %31 {handshake.name = "addi2"} : i32
          %33 = arith.addi %arg11, %32 {handshake.name = "addi3"} : i32
          scf.yield {handshake.name = "yield6"} %23#3, %33 : i32, i32
        } else {
          scf.yield {handshake.name = "yield7"} %arg9, %arg11 : i32, i32
        } {handshake.name = "if2"}
        %16 = arith.trunci %15#1 {handshake.name = "trunci0"} : i32 to i8
        %17 = arith.extui %16 {handshake.name = "extui1"} : i8 to i32
        %18 = arith.subi %c255_i32, %17 {handshake.name = "subi0"} : i32
        %19 = arith.addi %arg8, %arg4 {handshake.name = "addi8"} : index
        memref.store %18, %arg3[%19] {handshake.deps = #handshake<deps[<"store1" (1) [[1, 14], [-14, -1]]>]>, handshake.name = "store1"} : memref<256xi32>
        %20 = arith.addi %arg8, %c1 {handshake.name = "addi11"} : index
        %21 = arith.cmpi ult, %20, %c15 {handshake.name = "cmpi10"} : index
        scf.condition(%21) {handshake.name = "condition2"} %20, %15#0, %14, %15#1 : index, i32, i32, i32
      } do {
      ^bb0(%arg8: index, %arg9: i32, %arg10: i32, %arg11: i32):
        scf.yield {handshake.name = "yield16"} %arg8, %arg9, %arg10, %arg11 : index, i32, i32, i32
      } attributes {handshake.name = "while2"}
      %3 = arith.addi %arg4, %c1 {handshake.name = "addi12"} : index
      %4 = arith.cmpi ult, %3, %c15 {handshake.name = "cmpi11"} : index
      scf.condition(%4) {handshake.name = "condition3"} %3, %2#1, %2#2, %2#3 : index, i32, i32, i32
    } do {
    ^bb0(%arg4: index, %arg5: i32, %arg6: i32, %arg7: i32):
      scf.yield {handshake.name = "yield17"} %arg4, %arg5, %arg6, %arg7 : index, i32, i32, i32
    } attributes {handshake.name = "while3"}
    return {handshake.name = "return0"} %1#3 : i32
  }
}


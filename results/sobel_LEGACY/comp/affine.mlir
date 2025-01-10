module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  func.func @sobel(%arg0: memref<256xi32>, %arg1: memref<9xi32>, %arg2: memref<9xi32>, %arg3: memref<256xi32>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c2_i32 = arith.constant 2 : i32
    %false = arith.constant false
    %c255_i32 = arith.constant 255 : i32
    %c5_i32 = arith.constant 5 : i32
    %c0_i32 = arith.constant 0 : i32
    %0 = llvm.mlir.undef : i32
    %1:3 = affine.for %arg4 = 0 to 15 iter_args(%arg5 = %0, %arg6 = %0, %arg7 = %c0_i32) -> (i32, i32, i32) {
      %2:3 = affine.for %arg8 = 0 to 15 iter_args(%arg9 = %arg5, %arg10 = %arg6, %arg11 = %arg7) -> (i32, i32, i32) {
        %3 = arith.index_cast %arg8 : index to i32
        %4 = arith.cmpi eq, %3, %c0_i32 : i32
        %5 = arith.extui %4 : i1 to i32
        %6 = arith.cmpi eq, %3, %c5_i32 : i32
        %7 = arith.cmpi eq, %5, %c0_i32 : i32
        %8 = arith.andi %7, %6 : i1
        %9 = arith.ori %4, %8 : i1
        %10 = arith.extsi %9 : i1 to i32
        %11 = arith.cmpi eq, %10, %c0_i32 : i32
        %12 = arith.select %11, %c2_i32, %arg10 : i32
        %13:2 = scf.if %11 -> (i32, i32) {
          %17 = affine.load %arg0[%arg8] : memref<256xi32>
          %18:3 = affine.for %arg12 = -1 to 2 iter_args(%arg13 = %c0_i32, %arg14 = %c0_i32, %arg15 = %arg9) -> (i32, i32, i32) {
            %29:2 = affine.for %arg16 = -1 to 2 iter_args(%arg17 = %arg13, %arg18 = %arg14) -> (i32, i32) {
              %30 = affine.load %arg1[%arg16 + %arg12 * 3 + 4] : memref<9xi32>
              %31 = arith.muli %17, %30 : i32
              %32 = arith.addi %arg18, %31 : i32
              %33 = affine.load %arg2[%arg16 + %arg12 * 3 + 4] : memref<9xi32>
              %34 = arith.muli %17, %33 : i32
              %35 = arith.addi %arg17, %34 : i32
              affine.yield %35, %32 : i32, i32
            }
            affine.yield %29#0, %29#1, %c2_i32 : i32, i32, i32
          }
          %19 = arith.cmpi sgt, %18#1, %c255_i32 : i32
          %20 = arith.select %19, %c255_i32, %18#1 : i32
          %21 = scf.if %19 -> (i1) {
            scf.yield %false : i1
          } else {
            %29 = arith.cmpi slt, %18#1, %c0_i32 : i32
            scf.yield %29 : i1
          }
          %22 = arith.select %21, %c0_i32, %20 : i32
          %23 = arith.cmpi sgt, %18#0, %c255_i32 : i32
          %24 = arith.select %23, %c255_i32, %18#0 : i32
          %25 = scf.if %23 -> (i1) {
            scf.yield %false : i1
          } else {
            %29 = arith.cmpi slt, %18#0, %c0_i32 : i32
            scf.yield %29 : i1
          }
          %26 = arith.select %25, %c0_i32, %24 : i32
          %27 = arith.addi %22, %26 : i32
          %28 = arith.addi %arg11, %27 : i32
          scf.yield %18#2, %28 : i32, i32
        } else {
          scf.yield %arg9, %arg11 : i32, i32
        }
        %14 = arith.trunci %13#1 : i32 to i8
        %15 = arith.extui %14 : i8 to i32
        %16 = arith.subi %c255_i32, %15 : i32
        affine.store %16, %arg3[%arg8 + %arg4] : memref<256xi32>
        affine.yield %13#0, %12, %13#1 : i32, i32, i32
      }
      affine.yield %2#0, %2#1, %2#2 : i32, i32, i32
    }
    return %1#2 : i32
  }
}

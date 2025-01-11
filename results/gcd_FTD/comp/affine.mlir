module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  func.func @gcd(%arg0: i32, %arg1: i32) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %0 = llvm.mlir.undef : i32
    %1 = arith.cmpi eq, %arg0, %c0_i32 : i32
    %2 = arith.cmpi ne, %arg0, %c0_i32 : i32
    %3 = arith.select %1, %arg1, %0 : i32
    %4 = arith.cmpi ne, %arg1, %c0_i32 : i32
    %5 = arith.andi %2, %4 : i1
    %6 = scf.if %5 -> (i32) {
      %7:3 = scf.while (%arg2 = %c0_i32, %arg3 = %arg1, %arg4 = %arg0) : (i32, i32, i32) -> (i32, i32, i32) {
        %12 = arith.ori %arg4, %arg3 : i32
        %13 = arith.andi %12, %c1_i32 : i32
        %14 = arith.cmpi eq, %13, %c0_i32 : i32
        scf.condition(%14) %arg2, %arg3, %arg4 : i32, i32, i32
      } do {
      ^bb0(%arg2: i32, %arg3: i32, %arg4: i32):
        %12 = arith.shrsi %arg4, %c1_i32 : i32
        %13 = arith.shrsi %arg3, %c1_i32 : i32
        %14 = arith.addi %arg2, %c1_i32 : i32
        scf.yield %14, %13, %12 : i32, i32, i32
      }
      %8 = scf.while (%arg2 = %7#2) : (i32) -> i32 {
        %12 = arith.cmpi sgt, %arg2, %c0_i32 : i32
        %13 = arith.andi %arg2, %c1_i32 : i32
        %14 = arith.cmpi eq, %13, %c0_i32 : i32
        %15 = arith.andi %12, %14 : i1
        scf.condition(%15) %arg2 : i32
      } do {
      ^bb0(%arg2: i32):
        %12 = arith.shrsi %arg2, %c1_i32 : i32
        scf.yield %12 : i32
      }
      %9 = scf.while (%arg2 = %7#1) : (i32) -> i32 {
        %12 = arith.cmpi sgt, %arg2, %c0_i32 : i32
        %13 = arith.andi %arg2, %c1_i32 : i32
        %14 = arith.cmpi eq, %13, %c0_i32 : i32
        %15 = arith.andi %12, %14 : i1
        scf.condition(%15) %arg2 : i32
      } do {
      ^bb0(%arg2: i32):
        %12 = arith.shrsi %arg2, %c1_i32 : i32
        scf.yield %12 : i32
      }
      %10:2 = scf.while (%arg2 = %9, %arg3 = %8) : (i32, i32) -> (i32, i32) {
        %12 = arith.cmpi ne, %arg3, %c0_i32 : i32
        scf.condition(%12) %arg2, %arg3 : i32, i32
      } do {
      ^bb0(%arg2: i32, %arg3: i32):
        %12 = arith.subi %arg3, %arg2 : i32
        %13 = arith.cmpi slt, %arg3, %arg2 : i32
        %14 = arith.select %13, %arg3, %arg2 : i32
        %15 = arith.cmpi sge, %12, %c0_i32 : i32
        %16 = scf.if %15 -> (i32) {
          scf.yield %12 : i32
        } else {
          %18 = arith.subi %c0_i32, %12 : i32
          scf.yield %18 : i32
        }
        %17 = scf.while (%arg4 = %16) : (i32) -> i32 {
          %18 = arith.cmpi sgt, %arg4, %c0_i32 : i32
          %19 = arith.andi %arg4, %c1_i32 : i32
          %20 = arith.cmpi eq, %19, %c0_i32 : i32
          %21 = arith.andi %18, %20 : i1
          scf.condition(%21) %arg4 : i32
        } do {
        ^bb0(%arg4: i32):
          %18 = arith.shrsi %arg4, %c1_i32 : i32
          scf.yield %18 : i32
        }
        scf.yield %14, %17 : i32, i32
      }
      %11 = arith.shli %10#0, %7#0 : i32
      scf.yield %11 : i32
    } else {
      scf.yield %3 : i32
    }
    return %6 : i32
  }
}

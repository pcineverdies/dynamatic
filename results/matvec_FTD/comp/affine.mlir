module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  func.func @matvec(%arg0: memref<20x20xi32>, %arg1: memref<20xi32>, %arg2: memref<20xi32>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0_i32 = arith.constant 0 : i32
    %0 = affine.for %arg3 = 0 to 20 iter_args(%arg4 = %c0_i32) -> (i32) {
      %1 = affine.for %arg5 = 0 to 20 iter_args(%arg6 = %c0_i32) -> (i32) {
        %2 = affine.load %arg1[%arg5] : memref<20xi32>
        %3 = affine.load %arg0[%arg3, %arg5] : memref<20x20xi32>
        %4 = arith.muli %2, %3 : i32
        %5 = arith.addi %arg6, %4 : i32
        affine.yield %5 : i32
      }
      affine.store %1, %arg2[%arg3] : memref<20xi32>
      affine.yield %1 : i32
    }
    return %0 : i32
  }
}

module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  func.func @atax(%arg0: memref<10x10xf32>, %arg1: memref<10xf32>, %arg2: memref<10xf32>, %arg3: memref<10xf32>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    affine.for %arg4 = 0 to 10 {
      %2 = affine.load %arg3[%arg4] : memref<10xf32>
      %3 = affine.for %arg5 = 0 to 10 iter_args(%arg6 = %2) -> (f32) {
        %4 = affine.load %arg0[%arg4, %arg5] : memref<10x10xf32>
        %5 = affine.load %arg1[%arg5] : memref<10xf32>
        %6 = arith.mulf %4, %5 : f32
        %7 = arith.addf %arg6, %6 : f32
        affine.yield %7 : f32
      }
      affine.for %arg5 = 0 to 10 {
        %4 = affine.load %arg2[%arg5] : memref<10xf32>
        %5 = affine.load %arg0[%arg4, %arg5] : memref<10x10xf32>
        %6 = arith.mulf %5, %3 : f32
        %7 = arith.addf %4, %6 : f32
        affine.store %7, %arg2[%arg5] : memref<10xf32>
      }
      affine.store %3, %arg3[%arg4] : memref<10xf32>
    }
    %0 = affine.load %arg3[9] : memref<10xf32>
    %1 = arith.fptosi %0 : f32 to i32
    return %1 : i32
  }
}

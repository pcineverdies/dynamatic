module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  func.func @jacobi_1d_imper(%arg0: memref<50xi32>, %arg1: memref<50xi32>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c3_i32 = arith.constant 3 : i32
    affine.for %arg2 = 0 to 2 {
      affine.for %arg3 = 1 to 49 {
        %1 = affine.load %arg0[%arg3 - 1] : memref<50xi32>
        %2 = affine.load %arg0[%arg3] : memref<50xi32>
        %3 = arith.addi %1, %2 : i32
        %4 = affine.load %arg0[%arg3 + 1] : memref<50xi32>
        %5 = arith.addi %3, %4 : i32
        %6 = arith.muli %5, %c3_i32 : i32
        affine.store %6, %arg1[%arg3] : memref<50xi32>
      }
      affine.for %arg3 = 1 to 49 {
        %1 = affine.load %arg1[%arg3] : memref<50xi32>
        affine.store %1, %arg0[%arg3] : memref<50xi32>
      }
    }
    %0 = affine.load %arg0[49] : memref<50xi32>
    return %0 : i32
  }
}

module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  func.func @binary_search(%arg0: i32, %arg1: memref<101xi32>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c-1_i32 = arith.constant -1 : i32
    %true = arith.constant true
    %false = arith.constant false
    %0:2 = affine.for %arg2 = 0 to 101 step 2 iter_args(%arg3 = %c-1_i32, %arg4 = %true) -> (i32, i1) {
      %4:2 = scf.if %arg4 -> (i32, i1) {
        %5 = arith.index_cast %arg2 : index to i32
        %6 = affine.load %arg1[%arg2] : memref<101xi32>
        %7 = arith.cmpi eq, %6, %arg0 : i32
        %8 = arith.select %7, %5, %arg3 : i32
        %9 = arith.cmpi ne, %6, %arg0 : i32
        scf.yield %8, %9 : i32, i1
      } else {
        scf.yield %arg3, %false : i32, i1
      }
      affine.yield %4#0, %4#1 : i32, i1
    }
    %1 = arith.cmpi ne, %0#0, %c-1_i32 : i32
    %2:2 = affine.for %arg2 = 1 to 101 step 2 iter_args(%arg3 = %c-1_i32, %arg4 = %true) -> (i32, i1) {
      %4:2 = scf.if %arg4 -> (i32, i1) {
        %5 = arith.index_cast %arg2 : index to i32
        %6 = affine.load %arg1[%arg2] : memref<101xi32>
        %7 = arith.cmpi eq, %6, %arg0 : i32
        %8 = arith.select %7, %5, %arg3 : i32
        %9 = arith.cmpi ne, %6, %arg0 : i32
        scf.yield %8, %9 : i32, i1
      } else {
        scf.yield %arg3, %false : i32, i1
      }
      affine.yield %4#0, %4#1 : i32, i1
    }
    %3 = arith.select %1, %0#0, %2#0 : i32
    return %3 : i32
  }
}

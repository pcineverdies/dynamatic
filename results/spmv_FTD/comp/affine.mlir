module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  func.func @spmv(%arg0: i32, %arg1: memref<10xi32>, %arg2: memref<10xi32>, %arg3: memref<10xi32>, %arg4: memref<10xi32>, %arg5: memref<10xi32>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1 = arith.constant 1 : index
    %c0_i32 = arith.constant 0 : i32
    %0 = arith.index_cast %arg0 : i32 to index
    %1 = affine.for %arg6 = 0 to %0 iter_args(%arg7 = %c0_i32) -> (i32) {
      %2 = affine.load %arg1[%arg6] : memref<10xi32>
      %3 = affine.load %arg1[%arg6 + 1] : memref<10xi32>
      %4 = arith.index_cast %3 : i32 to index
      %5 = arith.index_cast %2 : i32 to index
      %6 = scf.for %arg8 = %5 to %4 step %c1 iter_args(%arg9 = %c0_i32) -> (i32) {
        %7 = memref.load %arg2[%arg8] : memref<10xi32>
        %8 = memref.load %arg3[%arg8] : memref<10xi32>
        %9 = arith.index_cast %7 : i32 to index
        %10 = memref.load %arg4[%9] : memref<10xi32>
        %11 = arith.muli %8, %10 : i32
        %12 = arith.addi %arg9, %11 : i32
        scf.yield %12 : i32
      }
      affine.store %6, %arg5[%arg6] : memref<10xi32>
      affine.yield %2 : i32
    }
    return %1 : i32
  }
}

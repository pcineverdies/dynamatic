module {
  func.func @atax_float(%arg0: memref<10x10xf32> {handshake.arg_name = "A"}, %arg1: memref<10xf32> {handshake.arg_name = "x"}, %arg2: memref<10xf32> {handshake.arg_name = "y"}, %arg3: memref<10xf32> {handshake.arg_name = "tmp"}) -> i32 {
    affine.for %arg4 = 0 to 10 {
      %2 = affine.load %arg3[%arg4] {handshake.deps = #handshake<deps[<"store1" (2) [[0, 0]]>]>, handshake.name = "load0"} : memref<10xf32>
      %3 = affine.for %arg5 = 0 to 10 iter_args(%arg6 = %2) -> (f32) {
        %4 = affine.load %arg0[%arg4, %arg5] {handshake.name = "load1"} : memref<10x10xf32>
        %5 = affine.load %arg1[%arg5] {handshake.name = "load2"} : memref<10xf32>
        %6 = arith.mulf %4, %5 {handshake.name = "mulf0"} : f32
        %7 = arith.addf %arg6, %6 {handshake.name = "addf0"} : f32
        affine.yield {handshake.name = "yield0"} %7 : f32
      } {handshake.name = "for0"}
      affine.for %arg5 = 0 to 10 {
        %4 = affine.load %arg2[%arg5] {handshake.deps = #handshake<deps[<"store0" (1) [[1, 9], [0, 0]]>, <"store0" (3) [[0, 0], [0, 0]]>]>, handshake.name = "load3"} : memref<10xf32>
        %5 = affine.load %arg0[%arg4, %arg5] {handshake.name = "load4"} : memref<10x10xf32>
        %6 = arith.mulf %5, %3 {handshake.name = "mulf1"} : f32
        %7 = arith.addf %4, %6 {handshake.name = "addf1"} : f32
        affine.store %7, %arg2[%arg5] {handshake.deps = #handshake<deps[<"load3" (1) [[1, 9], [0, 0]]>, <"store0" (1) [[1, 9], [0, 0]]>]>, handshake.name = "store0"} : memref<10xf32>
      } {handshake.name = "for1"}
      affine.store %3, %arg3[%arg4] {handshake.deps = #handshake<deps[<"load5" (1)>]>, handshake.name = "store1"} : memref<10xf32>
    } {handshake.name = "for2"}
    %0 = affine.load %arg3[9] {handshake.name = "load5"} : memref<10xf32>
    %1 = arith.fptosi %0 {handshake.name = "fptosi0"} : f32 to i32
    return {handshake.name = "return0"} %1 : i32
  }
}


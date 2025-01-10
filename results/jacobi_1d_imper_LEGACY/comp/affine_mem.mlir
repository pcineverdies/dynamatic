module {
  func.func @jacobi_1d_imper(%arg0: memref<50xi32> {handshake.arg_name = "A"}, %arg1: memref<50xi32> {handshake.arg_name = "B"}) -> i32 {
    %c3_i32 = arith.constant {handshake.name = "constant0"} 3 : i32
    affine.for %arg2 = 0 to 2 {
      affine.for %arg3 = 1 to 49 {
        %1 = affine.load %arg0[%arg3 - 1] {handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.name = "load0"} : memref<50xi32>
        %2 = affine.load %arg0[%arg3] {handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.name = "load1"} : memref<50xi32>
        %3 = arith.addi %1, %2 {handshake.name = "addi0"} : i32
        %4 = affine.load %arg0[%arg3 + 1] {handshake.deps = #handshake<deps[<"store1" (1) [[1, 1]]>, <"store1" (2) [[0, 0]]>]>, handshake.name = "load2"} : memref<50xi32>
        %5 = arith.addi %3, %4 {handshake.name = "addi1"} : i32
        %6 = arith.muli %5, %c3_i32 {handshake.name = "muli0"} : i32
        affine.store %6, %arg1[%arg3] {handshake.deps = #handshake<deps[<"store0" (1) [[1, 1], [0, 0]]>, <"load3" (1) [[1, 1]]>, <"load3" (2) [[0, 0]]>]>, handshake.name = "store0"} : memref<50xi32>
      } {handshake.name = "for0"}
      affine.for %arg3 = 1 to 49 {
        %1 = affine.load %arg1[%arg3] {handshake.deps = #handshake<deps[<"store0" (1) [[1, 1]]>]>, handshake.name = "load3"} : memref<50xi32>
        affine.store %1, %arg0[%arg3] {handshake.deps = #handshake<deps[<"load0" (1) [[1, 1]]>, <"load1" (1) [[1, 1]]>, <"load2" (1) [[1, 1]]>, <"store1" (1) [[1, 1], [0, 0]]>]>, handshake.name = "store1"} : memref<50xi32>
      } {handshake.name = "for1"}
    } {handshake.name = "for2"}
    %0 = affine.load %arg0[49] {handshake.name = "load4"} : memref<50xi32>
    return {handshake.name = "return0"} %0 : i32
  }
}


module {
  func.func @kernel_2mm(%arg0: i32 {handshake.arg_name = "alpha"}, %arg1: i32 {handshake.arg_name = "beta"}, %arg2: memref<7x7xi32> {handshake.arg_name = "tmp"}, %arg3: memref<7x7xi32> {handshake.arg_name = "A"}, %arg4: memref<7x7xi32> {handshake.arg_name = "B"}, %arg5: memref<7x7xi32> {handshake.arg_name = "C"}, %arg6: memref<7x7xi32> {handshake.arg_name = "D"}) -> i32 {
    %c0_i32 = arith.constant {handshake.name = "constant0"} 0 : i32
    affine.for %arg7 = 0 to 7 {
      affine.for %arg8 = 0 to 7 {
        affine.store %c0_i32, %arg2[%arg7, %arg8] {handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0]]>, <"store1" (3) [[0, 0], [0, 0]]>, <"load4" (1)>]>, handshake.name = "store0"} : memref<7x7xi32>
        affine.for %arg9 = 0 to 7 {
          %1 = affine.load %arg3[%arg7, %arg9] {handshake.name = "load0"} : memref<7x7xi32>
          %2 = arith.muli %arg0, %1 {handshake.name = "muli0"} : i32
          %3 = affine.load %arg4[%arg9, %arg8] {handshake.name = "load1"} : memref<7x7xi32>
          %4 = arith.muli %2, %3 {handshake.name = "muli1"} : i32
          %5 = affine.load %arg2[%arg7, %arg8] {handshake.deps = #handshake<deps[<"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.name = "load2"} : memref<7x7xi32>
          %6 = arith.addi %5, %4 {handshake.name = "addi0"} : i32
          affine.store %6, %arg2[%arg7, %arg8] {handshake.deps = #handshake<deps[<"load2" (3) [[0, 0], [0, 0], [1, 6]]>, <"store1" (3) [[0, 0], [0, 0], [1, 6]]>, <"load4" (1)>]>, handshake.name = "store1"} : memref<7x7xi32>
        } {handshake.name = "for0"}
      } {handshake.name = "for1"}
    } {handshake.name = "for2"}
    affine.for %arg7 = 0 to 7 {
      affine.for %arg8 = 0 to 7 {
        %1 = affine.load %arg6[%arg7, %arg8] {handshake.deps = #handshake<deps[<"store2" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>]>, handshake.name = "load3"} : memref<7x7xi32>
        %2 = arith.muli %1, %arg1 {handshake.name = "muli2"} : i32
        affine.store %2, %arg6[%arg7, %arg8] {handshake.deps = #handshake<deps[<"load6" (3) [[0, 0], [0, 0]]>, <"store3" (3) [[0, 0], [0, 0]]>, <"load7" (1)>]>, handshake.name = "store2"} : memref<7x7xi32>
        affine.for %arg9 = 0 to 7 {
          %3 = affine.load %arg2[%arg7, %arg9] {handshake.name = "load4"} : memref<7x7xi32>
          %4 = affine.load %arg5[%arg9, %arg8] {handshake.name = "load5"} : memref<7x7xi32>
          %5 = arith.muli %3, %4 {handshake.name = "muli3"} : i32
          %6 = affine.load %arg6[%arg7, %arg8] {handshake.deps = #handshake<deps[<"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (4) [[0, 0], [0, 0], [0, 0]]>]>, handshake.name = "load6"} : memref<7x7xi32>
          %7 = arith.addi %6, %5 {handshake.name = "addi1"} : i32
          affine.store %7, %arg6[%arg7, %arg8] {handshake.deps = #handshake<deps[<"load6" (3) [[0, 0], [0, 0], [1, 6]]>, <"store3" (3) [[0, 0], [0, 0], [1, 6]]>, <"load7" (1)>]>, handshake.name = "store3"} : memref<7x7xi32>
        } {handshake.name = "for3"}
      } {handshake.name = "for4"}
    } {handshake.name = "for5"}
    %0 = affine.load %arg6[6, 6] {handshake.name = "load7"} : memref<7x7xi32>
    return {handshake.name = "return0"} %0 : i32
  }
}


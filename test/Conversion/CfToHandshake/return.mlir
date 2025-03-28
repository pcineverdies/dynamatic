// NOTE: Assertions have been autogenerated by utils/generate-test-checks.py
// RUN: dynamatic-opt --lower-cf-to-handshake --remove-operation-names %s --split-input-file | FileCheck %s

// CHECK-LABEL:   handshake.func @simpleReturn(
// CHECK-SAME:                                 %[[VAL_0:.*]]: !handshake.channel<i32>,
// CHECK-SAME:                                 %[[VAL_1:.*]]: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>) attributes {argNames = ["in0", "start"], resNames = ["out0", "end"]} {
// CHECK:           end {handshake.bb = 0 : ui32} %[[VAL_0]], %[[VAL_1]] : <i32>, <>
// CHECK:         }
func.func @simpleReturn(%arg0 : i32) -> i32 {
  return %arg0 : i32
}

// -----

// CHECK-LABEL:   handshake.func @retunMultipleValues(
// CHECK-SAME:                                        %[[VAL_0:.*]]: !handshake.channel<i32>, %[[VAL_1:.*]]: !handshake.channel<i1>, %[[VAL_2:.*]]: !handshake.channel<i32>, %[[VAL_3:.*]]: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.channel<i1>, !handshake.channel<i32>, !handshake.control<>) attributes {argNames = ["in0", "in1", "in2", "start"], resNames = ["out0", "out1", "out2", "end"]} {
// CHECK:           end {handshake.bb = 0 : ui32} %[[VAL_0]], %[[VAL_1]], %[[VAL_2]], %[[VAL_3]] : <i32>, <i1>, <i32>, <>
// CHECK:         }
func.func @retunMultipleValues(%arg0 : i32, %arg1 : i1, %arg2 : index) -> (i32, i1, index) {
  return %arg0, %arg1, %arg2 : i32, i1, index
}

// -----

// CHECK-LABEL:   handshake.func @multipleReturns(
// CHECK-SAME:                                    %[[VAL_0:.*]]: !handshake.channel<i1>,
// CHECK-SAME:                                    %[[VAL_1:.*]]: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>) attributes {argNames = ["in0", "start"], resNames = ["out0", "end"]} {
// CHECK:           %[[VAL_2:.*]] = constant %[[VAL_1]] {handshake.bb = 0 : ui32, value = 0 : i32} : <>, <i32>
// CHECK:           %[[VAL_3:.*]] = constant %[[VAL_1]] {handshake.bb = 0 : ui32, value = 1 : i32} : <>, <i32>
// CHECK:           %[[VAL_4:.*]], %[[VAL_5:.*]] = cond_br %[[VAL_0]], %[[VAL_2]] {handshake.bb = 0 : ui32} : <i1>, <i32>
// CHECK:           %[[VAL_6:.*]], %[[VAL_7:.*]] = cond_br %[[VAL_0]], %[[VAL_1]] {handshake.bb = 0 : ui32} : <i1>, <>
// CHECK:           %[[VAL_8:.*]], %[[VAL_9:.*]] = cond_br %[[VAL_0]], %[[VAL_3]] {handshake.bb = 0 : ui32} : <i1>, <i32>
// CHECK:           %[[VAL_10:.*]] = merge %[[VAL_4]] {handshake.bb = 1 : ui32} : <i32>
// CHECK:           %[[VAL_11:.*]], %[[VAL_12:.*]] = control_merge [%[[VAL_6]]]  {handshake.bb = 1 : ui32} : [<>] to <>, <i1>
// CHECK:           %[[VAL_13:.*]] = merge %[[VAL_9]] {handshake.bb = 2 : ui32} : <i32>
// CHECK:           %[[VAL_14:.*]], %[[VAL_15:.*]] = control_merge [%[[VAL_7]]]  {handshake.bb = 2 : ui32} : [<>] to <>, <i1>
// CHECK:           %[[VAL_16:.*]] = merge %[[VAL_10]], %[[VAL_13]] {handshake.bb = 3 : ui32} : <i32>
// CHECK:           end {handshake.bb = 3 : ui32} %[[VAL_16]], %[[VAL_1]] : <i32>, <>
// CHECK:         }
func.func @multipleReturns(%arg0 : i1) -> i32 {
  %c0 = arith.constant 0 : i32
  %c1 = arith.constant 1 : i32
  cf.cond_br %arg0, ^bb1, ^bb2
^bb1:
  return %c0 : i32
^bb2:
  return %c1 : i32
}

// -----

// CHECK-LABEL:   handshake.func @memoryConnect(
// CHECK-SAME:                                  %[[VAL_0:.*]]: !handshake.channel<i1>, %[[VAL_1:.*]]: memref<4xi32>, %[[VAL_2:.*]]: memref<4xi32>, %[[VAL_3:.*]]: !handshake.control<>, %[[VAL_4:.*]]: !handshake.control<>, %[[VAL_5:.*]]: !handshake.control<>, ...) -> (!handshake.channel<i32>, !handshake.control<>, !handshake.control<>, !handshake.control<>) attributes {argNames = ["in0", "mem0", "mem1", "mem0_start", "mem1_start", "start"], resNames = ["out0", "mem0_end", "mem1_end", "end"]} {
// CHECK:           %[[VAL_6:.*]] = constant %[[VAL_5]] {handshake.bb = 0 : ui32, value = 0 : i32} : <>, <i32>
// CHECK:           %[[VAL_7:.*]] = constant %[[VAL_5]] {handshake.bb = 0 : ui32, value = 1 : i32} : <>, <i32>
// CHECK:           %[[VAL_8:.*]], %[[VAL_9:.*]] = cond_br %[[VAL_0]], %[[VAL_6]] {handshake.bb = 0 : ui32} : <i1>, <i32>
// CHECK:           %[[VAL_10:.*]], %[[VAL_11:.*]] = cond_br %[[VAL_0]], %[[VAL_5]] {handshake.bb = 0 : ui32} : <i1>, <>
// CHECK:           %[[VAL_12:.*]], %[[VAL_13:.*]] = cond_br %[[VAL_0]], %[[VAL_7]] {handshake.bb = 0 : ui32} : <i1>, <i32>
// CHECK:           %[[VAL_14:.*]] = merge %[[VAL_8]] {handshake.bb = 1 : ui32} : <i32>
// CHECK:           %[[VAL_15:.*]], %[[VAL_16:.*]] = control_merge [%[[VAL_10]]]  {handshake.bb = 1 : ui32} : [<>] to <>, <i1>
// CHECK:           %[[VAL_17:.*]] = merge %[[VAL_15]], %[[VAL_18:.*]] {handshake.bb = 2 : ui32} : <>
// CHECK:           %[[VAL_19:.*]] = merge %[[VAL_13]] {handshake.bb = 2 : ui32} : <i32>
// CHECK:           %[[VAL_18]], %[[VAL_20:.*]] = control_merge [%[[VAL_11]]]  {handshake.bb = 2 : ui32} : [<>] to <>, <i1>
// CHECK:           %[[VAL_21:.*]] = merge %[[VAL_14]], %[[VAL_19]] {handshake.bb = 3 : ui32} : <i32>
// CHECK:           %[[VAL_22:.*]] = source {handshake.bb = 3 : ui32}
// CHECK:           %[[VAL_23:.*]] = source {handshake.bb = 3 : ui32}
// CHECK:           end {handshake.bb = 3 : ui32} %[[VAL_21]], %[[VAL_22]], %[[VAL_23]], %[[VAL_5]] : <i32>, <>, <>, <>
// CHECK:         }
func.func @memoryConnect(%arg0: i1, %arg1: memref<4xi32>, %arg2: memref<4xi32>) -> i32 {
  %c0 = arith.constant 0 : i32
  %c1 = arith.constant 1 : i32
  cf.cond_br %arg0, ^bb1, ^bb2
^bb1:
  return %c0 : i32
^bb2:
  return %c1 : i32
}

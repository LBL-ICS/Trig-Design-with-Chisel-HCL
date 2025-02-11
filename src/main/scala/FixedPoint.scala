
package Trig
import chisel3._
import chiseltest.internal._
import java.io.PrintWriter
import chisel3.util._
import Binary_Modules.BinaryDesigns._
import FP_Modules.FloatingPointDesigns._
import chisel3.stage.ChiselStage
import chisel3.stage.{ChiselGeneratorAnnotation, ChiselStage}
import org.scalatest.flatspec.AnyFlatSpec
import chiseltest.iotesters.PeekPokeTester
import chiseltest._
import org.scalatest._
import org.scalatest.exceptions.TestFailedException

import scala.util.DynamicVariable



class FloatToFixed16 extends Module {
  /* Converts a half precision float to a Q4.12 fixed point number */

  val io = IO(new Bundle() {
    val in : UInt = Input(UInt(16.W))
    val out : UInt = Output(UInt(16.W))
  })






  val frac : UInt = ("b000000".U(6.W) ## io.in(9, 0))
  val exp : UInt = io.in(14, 10)
  val sign : UInt = io.in(15)
  val shiftamt = (exp - 15.U(5.W)).asSInt

  val data = Mux(shiftamt(4) === 1.U,
    ((frac(15,0) | 0x0400.U(16.W)) << 2.U) >> (-shiftamt).asUInt,
    ((frac(15,0) | 0x0400.U(16.W)) << 2.U) << (shiftamt).asUInt).asUInt
  io.out := Mux(io.in(15) === 1.U, 0.U - data, data)

}


class FloatToFixed32 extends Module {
  /* Converts a single precision float to a Q4.28 fixed point number */
  /* Q4.28 means a fixed point number w/ 4 integer bits, 28 fractional */
  val io = IO(new Bundle() {
    val in : UInt = Input(UInt(32.W))
    val out : UInt = Output(UInt(32.W))
  })
  val frac : UInt = ("b000000000".U(9.W) ## io.in(22, 0))
  val exp : UInt = io.in(30, 23)
  val sign : UInt = io.in(31)
  val shiftamt = (exp - 127.U(8.W)).asSInt

  val data = Mux(shiftamt(7) === 1.U,
    ((frac(31,0) | 0x00800000.U(32.W)) << 5.U) >> (-shiftamt).asUInt,
    ((frac(31,0) | 0x00800000.U(32.W)) << 5.U) << (shiftamt).asUInt).asUInt
  io.out := Mux(io.in(31) === 1.U, 0.U - data, data)
}

class FloatToFixed64 extends Module {
  /* Converts a double precision float to a Q4.60 fixed point number */
  val io = IO(new Bundle() {
    val in : UInt = Input(UInt(64.W))
    val out : UInt = Output(UInt(64.W))
  })
  val frac : UInt = ("b000000000000".U(12.W) ## io.in(51, 0))
  val exp : UInt = io.in(62, 52)
  val sign : UInt = io.in(63)
  val shiftamt = (exp - 1023.U(11.W)).asSInt

  val data = Mux(shiftamt(10) === 1.U,
    ((frac(63,0) | 0x0010000000000000L.U(64.W)) << 8.U) >> (-shiftamt).asUInt,
    ((frac(63,0) | 0x0010000000000000L.U(64.W)) << 8.U) << (shiftamt).asUInt).asUInt
  io.out := Mux(io.in(63) === 1.U, 0.U - data, data)
}




class FloatToFixed128 extends Module {
  /* Converts a double precision float to a Q64.64 fixed point number */
  val io = IO(new Bundle() {
    val in : UInt = Input(UInt(128.W))
    val out : UInt = Output(UInt(128.W))
  })
  val frac : UInt = ("b0000000000000000".U(16.W) ## io.in(111, 0))
  val exp : UInt = io.in(126, 112)
  val sign : UInt = io.in(127)
  val shiftamt = (exp - 16383.U(14.W)).asSInt - 64.S

  val data = Mux(shiftamt(13) === 1.U,
    ((frac(127,0) | scala.BigInt("00010000000000000000000000000000", 16).U(128.W)) << 16.U) >> (-shiftamt).asUInt,
    ((frac(127,0) | scala.BigInt("00010000000000000000000000000000", 16).U(128.W)) << 16.U) << (shiftamt).asUInt).asUInt
  io.out := Mux(io.in(127) === 1.U, 0.U - data, data)
}



class Float32ToFixed64 extends Module {
  /* Converts a single precision float to a Q32.32 fixed point number */
  val io = IO(new Bundle() {
    val in : UInt = Input(UInt(32.W))
    val out : UInt = Output(UInt(64.W))
  })
  val frac : UInt = ("b000000000".U(9.W) ## io.in(22, 0))
  val exp : UInt = io.in(30, 23)
  val sign : UInt = io.in(31)
  val shiftamt = (exp - 127.U(8.W)).asSInt

  val data = Mux(shiftamt(7) === 1.U,
    ((frac(31,0) | 0x0000000000800000L.U(64.W)) << 9.U) >> (-shiftamt).asUInt,
    ((frac(31,0) | 0x0000000000800000L.U(64.W)) << 9.U) << (shiftamt).asUInt).asUInt
  io.out := Mux(io.in(31) === 1.U, 0.U - data, data)
}






class CLZ16 extends Module{
  val io = IO(new Bundle() {
    val in : UInt = Input(UInt(16.W))
    val out : UInt = Output(UInt(4.W))
  })
  /* Uses a sequence of masks in a binary search to find the number of leading zeros */
  val x = io.in
  val ax = x

  val bx = Mux((ax & 0xFF00L.U) === 0.U, ax << 8, ax)
  val cx = Mux((bx & 0xF000L.U) === 0.U, bx << 4, bx)
  val dx = Mux((cx & 0xC000L.U) === 0.U, cx << 2, cx)

  io.out := ((ax & 0xFF00L.U) === 0.U) ## ((bx & 0xF000L.U) === 0.U) ## ((cx & 0xC000L.U) === 0.U) ##
    ((dx & 0x8000L.U) === 0.U)

}

class CLZ32 extends Module{
  val io = IO(new Bundle() {
    val in : UInt = Input(UInt(32.W))
    val out : UInt = Output(UInt(5.W))
  })
  /* Uses a sequence of masks in a binary search to find the number of leading zeros */
  val x = io.in
  val ax = x

  val bx = Mux((ax & 0xFFFF0000L.U) === 0.U, ax << 16, ax)
  val cx = Mux((bx & 0xFF000000L.U) === 0.U, bx << 8, bx)
  val dx = Mux((cx & 0xF0000000L.U) === 0.U, cx << 4, cx)
  val ex = Mux((dx & 0xC0000000L.U) === 0.U, dx << 2, dx)

  io.out := ((ax & 0xFFFF0000L.U) === 0.U) ## ((bx & 0xFF000000L.U) === 0.U) ## ((cx & 0xF0000000L.U) === 0.U) ##
    ((dx & 0xC0000000L.U) === 0.U) ## ((ex & 0x80000000L.U) === 0.U)

}

class CLZ64 extends Module{
  val io = IO(new Bundle() {
    val in : UInt = Input(UInt(64.W))
    val out : UInt = Output(UInt(6.W))
  })

  val mask1 = scala.BigInt("FFFFFFFF00000000", 16).U(64.W)
  val mask2 = scala.BigInt("FFFF000000000000", 16).U(64.W)
  val mask3 = scala.BigInt("FF00000000000000", 16).U(64.W)
  val mask4 = scala.BigInt("F000000000000000", 16).U(64.W)
  val mask5 = scala.BigInt("C000000000000000", 16).U(64.W)
  val mask6 = scala.BigInt("8000000000000000", 16).U(64.W)
  val mask7 = scala.BigInt("0000000000000000", 16).U(64.W)

  /* Uses a sequence of masks in a binary search to find the number of leading zeros */
  val x = io.in
  val zx = x


 val ax = Mux((zx & mask1) === 0.U, zx << 32, zx)
 val bx = Mux((ax & mask2) === 0.U, ax << 16, ax)
 val cx = Mux((bx & mask3) === 0.U, bx << 8, bx)
 val dx = Mux((cx & mask4) === 0.U, cx << 4, cx)
 val ex = Mux((dx & mask5) === 0.U, dx << 2, dx)

  io.out := ((zx & mask1) === 0.U) ## ((ax & mask2) === 0.U) ##
    ((bx & mask3) === 0.U) ## ((cx & mask4) === 0.U) ##
    ((dx & mask5) === 0.U) ## ((ex & mask6) === 0.U)

}

class CLZ128 extends Module{
  val io = IO(new Bundle() {
    val in : UInt = Input(UInt(128.W))
    val out : UInt = Output(UInt(7.W))
  })
  /* Uses a sequence of masks in a binary search to find the number of leading zeros */
  val x = io.in
  val zx = x

  val mask1 = scala.BigInt("FFFFFFFFFFFFFFFF0000000000000000", 16).U(128.W)
  val mask2 = scala.BigInt("FFFFFFFF000000000000000000000000", 16).U(128.W)
  val mask3 = scala.BigInt("FFFF0000000000000000000000000000", 16).U(128.W)
  val mask4 = scala.BigInt("FF000000000000000000000000000000", 16).U(128.W)
  val mask5 = scala.BigInt("F0000000000000000000000000000000", 16).U(128.W)
  val mask6 = scala.BigInt("C0000000000000000000000000000000", 16).U(128.W)
  val mask7 = scala.BigInt("80000000000000000000000000000000", 16).U(128.W)

  val ax = Mux((zx & mask1) === 0.U, zx << 64, zx)
  val bx = Mux((ax & mask2) === 0.U, ax << 32, ax)
  val cx = Mux((bx & mask3) === 0.U, bx << 16, bx)
  val dx = Mux((cx & mask4) === 0.U, cx << 8, cx)
  val ex = Mux((dx & mask5) === 0.U, dx << 4, dx)
  val fx = Mux((ex & mask6) === 0.U, ex << 2, ex)


  io.out := ((zx & mask1) === 0.U) ##
    ((ax & mask2) === 0.U) ##
    ((bx & mask3) === 0.U) ##
    ((cx & mask4) === 0.U) ##
    ((dx & mask5) === 0.U) ##
    ((ex & mask6)  === 0.U) ##
    ((fx & mask7) === 0.U)



}


class FixedToFloat16 extends Module {
  /* Converts a Q4.12 fixed point number to a half precision float */
  val io = IO(new Bundle() {
    val in : UInt = Input(UInt(16.W))
    val out : UInt = Output(UInt(16.W))
  })

  val sign  = Wire(SInt(1.W))
  val exp = Wire(SInt(5.W))
  val frac = Wire(SInt(10.W))

  val data = Wire(UInt(16.W))
  data := Mux(io.in(15) === 1.U, (~io.in).asUInt + 1.U, io.in)
  sign := io.in(15).asSInt

  val clz16 = Module(new CLZ16())
  clz16.io.in := data.asUInt
  val leadingzeros = Wire(UInt(19.W))
  leadingzeros := 0x0L.U(15.W) ## clz16.io.out(3,0)

  exp := ((4.S - 1.S) - leadingzeros.asSInt) + 15.S
  frac := (((data.asSInt << (leadingzeros + 1.U).asUInt)).asSInt >> (16.U - 10.U));

  io.out := io.in(15) ## exp.asUInt ## frac(9,0)
}


class FixedToFloat32 extends Module {
  /* Converts a Q4.28 fixed point number to a single precision float */
  /* Q4.28 means a fixed point number w/ 4 integer bits, 28 fractional */
  val io = IO(new Bundle() {
    val in : UInt = Input(UInt(32.W))
    val out : UInt = Output(UInt(32.W))
  })

  val sign  = Wire(SInt(1.W))
  val exp = Wire(SInt(8.W))
  val frac = Wire(SInt(23.W))

  val data = Wire(UInt(32.W))
  data := Mux(io.in(31) === 1.U, (~io.in).asUInt + 1.U, io.in)
  sign := io.in(31).asSInt

  val clz32 = Module(new CLZ32())
  clz32.io.in := data.asUInt
  val leadingzeros = Wire(UInt(19.W))
  leadingzeros := 0x0L.U(14.W) ## clz32.io.out(4,0)

  exp := ((4.S - 1.S) - leadingzeros.asSInt) + 127.S
  frac := (((data.asSInt << (leadingzeros + 1.U).asUInt)).asSInt >> (16.U - 10.U));

  io.out := io.in(15) ## exp.asUInt ## frac(9,0)
}


class FixedToFloat64 extends Module {
  /* Converts a Q4.60 fixed point number to a double precision float */
  val io = IO(new Bundle() {
    val in : UInt = Input(UInt(64.W))
    val out : UInt = Output(UInt(64.W))
  })

  val sign  = Wire(SInt(1.W))
  val exp = Wire(SInt(11.W))
  val frac = Wire(SInt(52.W))

  val data = Wire(UInt(64.W))
  data := Mux(io.in(63) === 1.U, (~io.in).asUInt + 1.U, io.in)
  sign := io.in(63).asSInt
  val clz64 = Module(new CLZ64())
  clz64.io.in := data.asUInt
  val leadingzeros = Wire(UInt(19.W))
  leadingzeros := 0x0L.U(13.W) ## clz64.io.out(5,0)

  exp := ((4.S - 1.S) - leadingzeros.asSInt) + 1023.S
  frac := (((data.asSInt << (leadingzeros + 1.U).asUInt)).asSInt >> (64.U - 52.U));

  io.out := io.in(63) ## exp.asUInt ## frac(51,0)
}




class FixedToFloat128 extends Module {
  /* Converts a Q64.64 fixed point number to a quad precision float */
  val io = IO(new Bundle() {
    val in : UInt = Input(UInt(128.W))
    val out : UInt = Output(UInt(128.W))
  })

  val sign  = Wire(SInt(1.W))
  val exp = Wire(SInt(15.W))
  val frac = Wire(SInt(112.W))

  val data = Wire(UInt(128.W))
  data := Mux(io.in(127) === 1.U, (~io.in).asUInt + 1.U, io.in)
  sign := io.in(127).asSInt
  val clz128 = Module(new CLZ128())
  clz128.io.in := data.asUInt


    val leadingzeros = Wire(UInt(19.W))

    leadingzeros := 0x0L.U(12.W) ## clz128.io.out(6,0)



    exp := ((64.S - 1.S) - leadingzeros.asSInt) + 16383.S

    frac := (((data.asSInt << (leadingzeros + 1.U).asUInt)).asSInt >> (128.U - 112.U));

    io.out := io.in(127) ## exp.asUInt ## frac(111,0)
}





class Fixed64ToFloat32 extends Module {
  /* Converts a Q32.32 fixed point number to a single precision float */

  val io = IO(new Bundle() {
    val in : UInt = Input(UInt(64.W))
    val out : UInt = Output(UInt(32.W))
  })

  val sign  = Wire(SInt(1.W))
  val exp = Wire(SInt(8.W))
  val frac = Wire(SInt(64.W))

  val data = Wire(UInt(64.W))
  data := Mux(io.in(63) === 1.U, (~io.in).asUInt + 1.U, io.in)
  sign := io.in(63).asSInt

  val clz64 = Module(new CLZ64())
  clz64.io.in := data.asUInt
  val leadingzeros = Wire(UInt(19.W))
  leadingzeros := 0x0L.U(13.W) ## clz64.io.out(5,0)

  exp := ((32.S - 1.S) - leadingzeros.asSInt) + 127.S
  frac := (((data.asSInt << (leadingzeros + 1.U).asUInt)).asSInt >> (64.U - 23.U));

  io.out := io.in(63) ## exp.asUInt ## frac(22,0)
}



object floattofixed extends App {
  (new ChiselStage).execute(
    Array(
      "-X", "verilog",
      "-e", "verilog",
      "--target-dir", "verification/dut/float64tofixed64"),
    Seq(ChiselGeneratorAnnotation(() => new FixedToFloat16()))
  )
}


class FixedToFloat64Tester2(dut: FixedToFloat64) extends PeekPokeTester(dut) {

  poke(dut.io.in, BigInt("1000000000000000", 16))
  step(1)
  println(f"Output: 0x${peek(dut.io.out).toString(16)}")

  // Test 2
  poke(dut.io.in, BigInt("F000000000000000", 16))
  step(1)
  println(f"Output: 0x${peek(dut.io.out).toString(16)}")


}

class BasicTest extends AnyFlatSpec with ChiselScalatestTester {
  behavior of "MyModule"
  // test here
}


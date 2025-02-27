package Trig

import chisel3._

import java.io.PrintWriter
import chisel3.util._
import ChiselMathLibsMario.BinaryDesigns._
import ChiselMathLibsMario.FPUnits._



class TrigRangeReducer(bw: Int) extends Module {
  /** Reduces a single precision floating point angle to between -2*pi and 2*pi.
  This uses a division and multiplication, which is very slow. Consider replacing with
  Double Modular Range Reduction in the future */
  val io = IO(new Bundle() {
    val in = Input(UInt(bw.W))
    val out = Output(UInt(bw.W))
  }
  )

//  val divider = Module(new FP_div(bw,15))
//  val extractor = Module(new FP_floor(bw))
//  val mul = Module(new FP_mult(bw, 1))


  val TWO_PI16 = 0x4648.U // 2*pi as a half precision float
  val TWO_PI32 = 0x40c90fdbL.U // 2*pi as a single precision float
  val TWO_PI64 = 0x401921FB54411744L.U // 2*pi as a double precision float
  val TWO_PI128 = scala.BigInt("4001921FB54442EE9DC81E87958E2EC6", 16).U(128.W) // 2*pi as a quad precision float

if (bw ==16) {
  val divider = Module(new FP_div(bw,10)).io
  divider.in_valid := 1.U
  divider.in_en := 1.U
  divider.in_a := io.in
  divider.in_b := TWO_PI16
  val extractor = Module(new FP_floor(bw)).io
  extractor.in_en := 1.U
  extractor.in_valid := 1.U
  extractor.in_data := 0.U(1.W) ## divider.out_s(bw-2,0)
  val sign = ShiftRegister(divider.out_s(bw-1), 1)
  val mul = Module(new FP_mult(bw,3)).io
  mul.in_en := 1.U
  mul.in_valid := 1.U
  mul.in_a := sign ## extractor.out_frac(bw-2,0)
  mul.in_b := TWO_PI16
  io.out := mul.out_s

}
 else if (bw ==32) {
   val divider = Module(new FP_div(bw,15)).io
   divider.in_valid := 1.U
   divider.in_en := 1.U
   divider.in_a := io.in
   divider.in_b := TWO_PI32
   val extractor = Module(new FP_floor(bw)).io
   extractor.in_en := 1.U
   extractor.in_valid := 1.U
   extractor.in_data := 0.U(1.W) ## divider.out_s(bw-2,0)
   val sign = ShiftRegister(divider.out_s(bw-1), 1)
   val mul = Module(new FP_mult(bw,3)).io
   mul.in_en := 1.U
   mul.in_valid := 1.U
   mul.in_a := sign ## extractor.out_frac(bw-2,0)
   mul.in_b := TWO_PI32
   io.out := mul.out_s

  }
 else if (bw ==64) {
   val divider = Module(new FP_div(bw,15)).io
   divider.in_valid := 1.U
   divider.in_en := 1.U
   divider.in_a := io.in
   divider.in_b := TWO_PI64
   val extractor = Module(new FP_floor(bw)).io
   extractor.in_en := 1.U
   extractor.in_valid := 1.U
   extractor.in_data := 0.U(1.W) ## divider.out_s(bw-2,0)
   val sign = ShiftRegister(divider.out_s(bw-1), 1)
   val mul = Module(new FP_mult(bw,3)).io
   mul.in_en := 1.U
   mul.in_valid := 1.U
   mul.in_a := sign ## extractor.out_frac(bw-2,0)
   mul.in_b := TWO_PI64
   io.out := mul.out_s

  }

 else if (bw == 128) {

  val divider = Module(new FP_div(bw,15)).io
  divider.in_valid := 1.U
  divider.in_en := 1.U
  divider.in_a := io.in
  divider.in_b := TWO_PI128
  //val reg1 = Reg(UInt(bw.W))
  val extractor = Module(new FP_floor(bw)).io
 //  reg1 := divider.io.out_s
  extractor.in_en := 1.U
  extractor.in_valid := 1.U
  extractor.in_data := 0.U(1.W) ## divider.out_s(bw-2,0)
  val sign = ShiftRegister(divider.out_s(bw-1), 1)
  val mul = Module(new FP_mult(bw,3)).io
  mul.in_en := 1.U
  mul.in_valid := 1.U
  mul.in_a := sign ## extractor.out_frac(bw-2,0)
  mul.in_b := TWO_PI128
  io.out := mul.out_s
}
}

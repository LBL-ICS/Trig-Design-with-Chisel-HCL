package Trig

import chisel3._

import java.io.PrintWriter
import chisel3.util._
import Binary_Modules.BinaryDesigns._
import FP_Modules.FloatingPointDesigns.FP_extract
import ChiselMathLibsMario2.FloatingPointDesigns2._
import chisel3.stage.ChiselStage

class TrigRangeReducer(bw: Int) extends Module {
  /** Reduces a single precision floating point angle to between -2*pi and 2*pi.
  This uses a division and multiplication, which is very slow. Consider replacing with
  Double Modular Range Reduction in the future */
  val io = IO(new Bundle() {
    val in = Input(UInt(bw.W))
    val out = Output(UInt(bw.W))
  }
  )



  val divider = Module(new FP_div_bwccs(bw))
  val extractor = Module(new FP_extract(bw))
  val mul = Module(new FP_multiplier_10ccs(bw))



  val TWO_PI16 = 0x4648.U // 2*pi as a half precision float
  val TWO_PI32 = 0x40c90fdbL.U // 2*pi as a single precision float
  val TWO_PI64 = 0x401921FB54411744L.U // 2*pi as a double precision float
  val TWO_PI128 = scala.BigInt("4001921FB54442EE9DC81E87958E2EC6", 16).U(128.W) // 2*pi as a quad precision float

if (bw ==16) {
  divider.io.in_valid := 1.U

  divider.io.in_en := 1.U
  divider.io.in_a := io.in
  divider.io.in_b := TWO_PI16

  val reg1 = Reg(UInt(bw.W))

  reg1 := divider.io.out_s

  extractor.io.in_a := reg1


  mul.io.in_en := 1.U
  mul.io.in_a := extractor.io.out_frac
  mul.io.in_b := TWO_PI16
  io.out := mul.io.out_s


}
 else if (bw ==32) {
    divider.io.in_valid := 1.U

    divider.io.in_en := 1.U
    divider.io.in_a := io.in
    divider.io.in_b := TWO_PI32

    val reg1 = Reg(UInt(bw.W))

    reg1 := divider.io.out_s

    extractor.io.in_a := reg1


    mul.io.in_en := 1.U
    mul.io.in_a := extractor.io.out_frac
    mul.io.in_b := TWO_PI32
    io.out := mul.io.out_s


  }
 else if (bw ==64) {
    divider.io.in_valid := 1.U

    divider.io.in_en := 1.U
    divider.io.in_a := io.in
    divider.io.in_b := TWO_PI64

    val reg1 = Reg(UInt(bw.W))

    reg1 := divider.io.out_s

    extractor.io.in_a := reg1


    mul.io.in_en := 1.U
    mul.io.in_a := extractor.io.out_frac
    mul.io.in_b := TWO_PI64
    io.out := mul.io.out_s


  }


else if (bw == 128) {
  divider.io.in_valid := 1.U

  divider.io.in_en := 1.U
  divider.io.in_a := io.in
  divider.io.in_b := TWO_PI128

  val reg1 = Reg(UInt(bw.W))

  reg1 := divider.io.out_s

  extractor.io.in_a := reg1


  mul.io.in_en := 1.U
  mul.io.in_a := extractor.io.out_frac
  mul.io.in_b := TWO_PI128
  io.out := mul.io.out_s


}
}

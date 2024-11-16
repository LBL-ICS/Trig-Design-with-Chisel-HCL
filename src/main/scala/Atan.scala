package Trig

import chisel3._

import java.io.PrintWriter
import chisel3.util._
import Binary_Modules.BinaryDesigns._
import FP_Modules.FloatingPointDesigns._
import chisel3.stage.{ChiselGeneratorAnnotation, ChiselStage}

class Atan (bw: Int =32, pipeline_depth: Int, rounds : Int) extends Module {
  require(bw == 32 )
  val io = IO(new Bundle() {
    val in = Input(UInt(bw.W))
    val out = Output(UInt(bw.W))
    val ready = Input(UInt(1.W))
    val valid = Output(UInt(1.W))

  }
  )

  /* If 6 digits of precision are good enough, z = atan(y) is PI/2 to 6 decimal places by y=1E7,
  and it is also 0 to 6 decimal places by y=1E-7. Going farther outside that range will not change the
   result inside of 6 decimal places; this is important because 1E7 to 1E-7 is representable by a Q32.32
    fixed point number, and fixed point operations are much faster and less complex than floating point ones.
    */
  private val y_upper_bound = 0x4b189680L.S(32.W)
  private val y_lower_bound = 0x322bcc77L.S(32.W)
  private val inputsign = io.in(31)
  private val inputmag = 0.U ## io.in(30,0)
  private val vcordic = Module(new VCORDIC(bw,pipeline_depth,rounds))
  vcordic.io.in_x0 := 0x3f800000L.U //This is 1.0f

// rounds/pd * pd = total number of regs

  var latency = ((rounds/16)*pipeline_depth)+1

 // if(pipeline_depth == 1) latency = 4
  //else if (pipeline_depth == 2) latency = 8
  //else if (pipeline_depth == 4) latency = 13
  //else if (pipeline_depth == 8) latency = 17
  //else if (pipeline_depth == 16) latency = 32





  val shift_reg = RegInit(VecInit.fill(latency)(0.U(bw.W)))
  shift_reg(0) := io.ready
  for(i <- 1 until latency){
    shift_reg(i) := shift_reg(i-1)
  }
  io.valid := shift_reg((latency) - 1)









  vcordic.io.in_y0 := Mux(inputmag.asSInt > y_upper_bound, (inputsign ## y_upper_bound(30, 0)).asUInt,
    Mux(inputmag.asSInt <= y_lower_bound, (inputsign ## y_lower_bound(30, 0)).asUInt, io.in))

  vcordic.io.in_z0 := 0.U

  io.out := vcordic.io.out_z

}



object AtanMain extends App {
  (new ChiselStage).execute(
    Array(
      "-X", "verilog",
      "-e", "verilog",
      "--target-dir", "verification/dut/atan_n30_pd15_bw32"),
    Seq(ChiselGeneratorAnnotation(() => new Atan(32,16,16)))
  )
}

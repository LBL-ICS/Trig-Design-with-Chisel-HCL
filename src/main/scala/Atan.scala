package Trig

import chisel3._

import java.io.PrintWriter
import chisel3.util._
import Binary_Modules.BinaryDesigns._
import FP_Modules.FloatingPointDesigns._
import chisel3.stage.{ChiselGeneratorAnnotation, ChiselStage}

class Atan (bw: Int , pipeline_depth: Int, rounds : Int) extends Module {

  val io = IO(new Bundle() {
    val in = Input(UInt(bw.W))
    val out = Output(UInt(bw.W))
    val ready = Input(UInt(1.W))
    val valid = Output(UInt(1.W))

  }
  )

  /** for bw = 32, if 6 digits of precision are good enough, z = atan(y) is PI/2 to 6 decimal places by y=1E7,
  and it is also 0 to 6 decimal places by y=1E-7. Going farther outside that range will not change the
   result inside of 6 decimal places; this is important because 1E7 to 1E-7 is representable by a Q32.32
    fixed point number, and fixed point operations are much faster and less complex than floating point ones.
    */

  // rounds/pd * pd = total number of regs

  if(bw == 16){

    val y_upper_bound = 0x70E2.S(16.W) // upper bound is 1E4
    val y_lower_bound = 0x00A8.S(16.W) // lower is 1E-4
    val inputsign = io.in(15)
    val inputmag = 0.U ## io.in(14, 0)
    val vcordic = Module(new VCORDIC(bw, pipeline_depth, rounds))
    vcordic.io.in_x0 := 0x3C00.U //This is 1.0f






    vcordic.io.in_y0 := Mux(inputmag.asSInt > y_upper_bound, (inputsign ## y_upper_bound(14, 0)).asUInt,
      Mux(inputmag.asSInt <= y_lower_bound, (inputsign ## y_lower_bound(14, 0)).asUInt, io.in))

    vcordic.io.in_z0 := 0.U

    io.out := vcordic.io.out_z


  }

  else if (bw == 32) {
    val y_upper_bound = 0x4b189680L.S(32.W)
    val y_lower_bound = 0x322bcc77L.S(32.W)
    val inputsign = io.in(31)
    val inputmag = 0.U ## io.in(30, 0)
    val vcordic = Module(new VCORDIC(bw, pipeline_depth, rounds))
    vcordic.io.in_x0 := 0x3f800000L.U //This is 1.0f






    vcordic.io.in_y0 := Mux(inputmag.asSInt > y_upper_bound, (inputsign ## y_upper_bound(30, 0)).asUInt,
      Mux(inputmag.asSInt <= y_lower_bound, (inputsign ## y_lower_bound(30, 0)).asUInt, io.in))

    vcordic.io.in_z0 := 0.U

    io.out := vcordic.io.out_z
  }


  else if( bw ==64){

    val y_upper_bound = 0x4202A05F20000000L.S(64.W) // 1E10
    val y_lower_bound = 0x3DA5FD7FE1796495L.S(64.W) // 1E-10
    val inputsign = io.in(63)
    val inputmag = 0.U ## io.in(62, 0)
    val vcordic = Module(new VCORDIC(bw, pipeline_depth, rounds))
    vcordic.io.in_x0 := 0x3FF0000000000000L.U //This is 1.0f





    vcordic.io.in_y0 := Mux(inputmag.asSInt > y_upper_bound, (inputsign ## y_upper_bound(62, 0)).asUInt,
      Mux(inputmag.asSInt <= y_lower_bound, (inputsign ## y_lower_bound(62, 0)).asUInt, io.in))

    vcordic.io.in_z0 := 0.U

    io.out := vcordic.io.out_z




  }

  else if( bw ==64){

    val y_upper_bound = 0x4202A05F20000000L.S(64.W) // 1E13
    val y_lower_bound = 0x3DA5FD7FE1796495L.S(64.W) // 1E-13
    val inputsign = io.in(63)
    val inputmag = 0.U ## io.in(62, 0)
    val vcordic = Module(new VCORDIC(bw, pipeline_depth, rounds))
    vcordic.io.in_x0 := 0x3FF0000000000000L.U //This is 1.0f





    vcordic.io.in_y0 := Mux(inputmag.asSInt > y_upper_bound, (inputsign ## y_upper_bound(62, 0)).asUInt,
      Mux(inputmag.asSInt <= y_lower_bound, (inputsign ## y_lower_bound(62, 0)).asUInt, io.in))

    vcordic.io.in_z0 := 0.U

    io.out := vcordic.io.out_z




  }

  else if( bw ==128){

    val y_upper_bound = scala.BigInt("402A2309CE5400000000000000000000", 16).S(128.W) // 1E16
    val y_lower_bound = scala.BigInt("3FD06849B86A12B9B01EA70909833DE7", 16).S(128.W) // 1E-16
    val inputsign = io.in(127)
    val inputmag = 0.U ## io.in(126, 0)
    val vcordic = Module(new VCORDIC(bw, pipeline_depth, rounds))
    vcordic.io.in_x0 := scala.BigInt("3FFF0000000000000000000000000000", 16).U(128.W) //This is 1.0f





    vcordic.io.in_y0 := Mux(inputmag.asSInt > y_upper_bound, (inputsign ## y_upper_bound(126, 0)).asUInt,
      Mux(inputmag.asSInt <= y_lower_bound, (inputsign ## y_lower_bound(126, 0)).asUInt, io.in))

    vcordic.io.in_z0 := 0.U

    io.out := vcordic.io.out_z




  }







  var latency=1

  if(bw == 32 && (pipeline_depth == 1)){

    latency = ((rounds/16)*pipeline_depth)+1
  }
  else if (bw == 32 && (pipeline_depth == 2 || pipeline_depth ==  4 ||pipeline_depth == 8 ||pipeline_depth == 16)) {
    latency = ((rounds / 16) * pipeline_depth) + 2
  }




  else if (bw == 64 && (pipeline_depth == 1) ){

    latency = ((rounds / 16) * pipeline_depth) - 2


  }

  else if (bw == 16 && (pipeline_depth == 2 || pipeline_depth ==  4 ||pipeline_depth == 8 ||pipeline_depth == 16 || pipeline_depth == 1)){

    latency = ((rounds / 16) * pipeline_depth) +  1


  }

  else if (bw == 64 && (pipeline_depth == 2 || pipeline_depth ==  4 ||pipeline_depth == 8 ||pipeline_depth == 16)){

    latency = ((rounds / 16) * pipeline_depth) + 1


  }

  else if (bw == 128 && (pipeline_depth == 2 || pipeline_depth ==  4 ||pipeline_depth == 8 ||pipeline_depth == 16)){

    latency = ((rounds / 16) * pipeline_depth) + 1


  }

  else if (bw == 128 && (pipeline_depth == 1) ){

    latency = ((rounds / 16) * pipeline_depth) - 2


  }








  val shift_reg = RegInit(VecInit.fill(latency)(0.U(bw.W)))
  shift_reg(0) := io.ready
  for (i <- 1 until latency) {
    shift_reg(i) := shift_reg(i - 1)
  }
  io.valid := shift_reg((latency) - 1)

}



object AtanMain extends App {
  (new ChiselStage).execute(
    Array(
      "-X", "verilog",
      "-e", "verilog",
      "--target-dir", "verification/dut/atan_n16_pd8_bw16"),
    Seq(ChiselGeneratorAnnotation(() => new Atan(16,4,16)))
  )
}

package Trig

import chisel3._

import java.io.PrintWriter
import chisel3.util._
import Binary_Modules.BinaryDesigns._
import FP_Modules.FloatingPointDesigns._
import chisel3.stage.{ChiselGeneratorAnnotation, ChiselStage}


class Sin(bw: Int =32, pipeline_depth: Int, rounds : Int) extends Module {
  require(bw == 32 && (pipeline_depth == 1 || pipeline_depth == 2 || pipeline_depth == 4 || pipeline_depth ==16 || pipeline_depth == 8))
  val io = IO(new Bundle() {
    val in = Input(UInt(bw.W))
    val out = Output(UInt(bw.W))
    val ready = Input(UInt(1.W))
    val valid = Output(UInt(1.W))
  })

  /* Range reduction necessary to reduce angles to within (0, 2*PI). This is very slow, and if angles of interest
   are known to already be inside (0, 2*PI) this step should be removed. */
  private val reducer = Module(new TrigRangeReducer(32))


  var latency = ((rounds/16)*pipeline_depth)+1


  val shift_reg = RegInit(VecInit.fill(latency)(0.U(bw.W)))
  shift_reg(0) := io.ready
  for(i <- 1 until latency){
    shift_reg(i) := shift_reg(i-1)
  }
  io.valid := shift_reg((latency) - 1)


  /* These values demarcate the four angle quadrants and are in Q4.28 fixed point */
  private val PI_DIV_TWO = 0x1921fb60L.S
  private val TWO_PI = 0x6487ed80L.S
  private val PI = 0x3243f6c0L.S
  private val THREE_PI_DIV_TWO = 0x4b65f200L.S

  private val tofixedz0 = Module(new FloatToFixed32())
  reducer.io.in := io.in
  tofixedz0.io.in := reducer.io.out


  private val cordic = Module(new CORDIC(bw, pipeline_depth , 16))
  cordic.io.in_x0 := 1058764014.U //This is k ~ .607 as a single precision IEEE 754 float
  cordic.io.in_y0 := 0.U


  private val theta = Mux(tofixedz0.io.out.asSInt < 0.S, tofixedz0.io.out.asSInt + TWO_PI, tofixedz0.io.out.asSInt)
  private val outmode = cordic.io.out_mode

  when(theta >= THREE_PI_DIV_TWO) {
    cordic.io.in_mode := 2.U
    cordic.io.in_z0 := (theta - TWO_PI).asUInt
  }.elsewhen(theta >= PI_DIV_TWO && theta < THREE_PI_DIV_TWO) {
    cordic.io.in_mode := 1.U
    cordic.io.in_z0 := (PI - theta).asUInt
  }.otherwise {
    cordic.io.in_z0 := theta.asUInt
    cordic.io.in_mode := 0.U
  }

  when(outmode === 2.U) {
    io.out := cordic.io.out_x
  }.elsewhen(outmode === 1.U) {
    io.out := ~cordic.io.out_x(31) ## cordic.io.out_x(30, 0)
  }.otherwise {
    io.out := cordic.io.out_x
  }



}

object SinMain extends App {
  (new ChiselStage).execute(
    Array(
      "-X", "verilog",
      "-e", "verilog",
      "--target-dir", "verification/dut/Sin"),
    Seq(ChiselGeneratorAnnotation(() => new Sin(32,1,16)))
  )
}
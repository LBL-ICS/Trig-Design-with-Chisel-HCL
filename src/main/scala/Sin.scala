package Trig

import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import chiseltest.WriteVcdAnnotation
import chiseltest.VerilatorBackendAnnotation
import chisel3.stage.ChiselGeneratorAnnotation
import circt.stage.{ChiselStage, FirtoolOption}



class Sin(bw: Int, pipeline_depth: Int, rounds : Int) extends Module {
    val io = IO(new Bundle() {
    val in = Input(UInt(bw.W))
    val ready = Input(Bool())
    val out = Output(UInt(bw.W))
    val valid = Output(Bool())

  })
  override def desiredName = s"Sin_n${rounds}_pd${pipeline_depth}_bw${bw}"
  /* Range reduction necessary to reduce angles to within (0, 2*PI). This is very slow, and if angles of interest
   are known to already be inside (0, 2*PI) this step should be removed. */
  var latency=1
  private val reducer = Module(new TrigRangeReducer(bw))
  val PI_DIV_TWO : SInt = 0.S
  val TWO_PI : SInt = 0.S
  val PI : SInt = 0.S
  val THREE_PI_DIV_TWO : SInt = 0.S

  if(bw ==16) {
    val PI_DIV_TWO = 0x1922.S
    val TWO_PI = 0x6488.S
    val PI = 0x3244.S
    val THREE_PI_DIV_TWO = 0x4B66.S
    var tofixedz0 = Module(new FloatToFixed16())
    reducer.io.in := io.in
    tofixedz0.io.in := reducer.io.out
    val cordic = Module(new CORDIC(bw, pipeline_depth, rounds))
    cordic.io.in_x0 := 14556.U //This is k ~ .607 as a half precision IEEE 754 float
    cordic.io.in_y0 := 0.U
    val adjangle = PI_DIV_TWO - tofixedz0.io.out.asSInt
    val theta = Mux(adjangle < 0.S, adjangle + TWO_PI, adjangle)
    val outmode = cordic.io.out_mode
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
      io.out := ~cordic.io.out_x(15) ## cordic.io.out_x(14, 0)
    }.otherwise {
      io.out := cordic.io.out_x
    }
  }

  else if (bw ==32){

    val PI_DIV_TWO = 0x1921fb60L.S
    val TWO_PI = 0x6487ed80L.S
    val PI = 0x3243f6c0L.S
    val THREE_PI_DIV_TWO = 0x4b65f200L.S
    var tofixedz0 = Module(new FloatToFixed32)
    reducer.io.in := io.in
    tofixedz0.io.in := reducer.io.out
    val cordic = Module(new CORDIC(bw, pipeline_depth, rounds))
    cordic.io.in_x0 := 1058764014.U //This is k ~ .607 as a single precision IEEE 754 float
    cordic.io.in_y0 := 0.U
    val adjangle = PI_DIV_TWO - tofixedz0.io.out.asSInt
    val theta = Mux(adjangle < 0.S, adjangle + TWO_PI, adjangle)
    val outmode = cordic.io.out_mode
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
  else if (bw == 64){

    val PI_DIV_TWO = 0x1921fafc8b007a00L.S
    val TWO_PI = 0x6487ed5110bba800L.S
    val PI = 0x3243f6a8885dd400L.S
    val THREE_PI_DIV_TWO = 0x4b65f1fccc34c800L.S
    var tofixedz0 = Module(new FloatToFixed64)
    reducer.io.in := io.in
    tofixedz0.io.in := reducer.io.out
    val cordic = Module(new CORDIC(bw, pipeline_depth, rounds))
    cordic.io.in_x0 := 4603644867912925184L.U //This is k ~ .607 as a double precision IEEE 754 float
    cordic.io.in_y0 := 0.U
    val adjangle = PI_DIV_TWO - tofixedz0.io.out.asSInt
    val theta = Mux(adjangle < 0.S, adjangle + TWO_PI, adjangle)
    val outmode = cordic.io.out_mode
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
      io.out := ~cordic.io.out_x(63) ## cordic.io.out_x(62, 0)
    }.otherwise {
      io.out := cordic.io.out_x
    }
  }

  else if (bw == 128){

    val PI_DIV_TWO = scala.BigInt("1921fb5443d6f4000", 16).S(128.W)
    val TWO_PI = scala.BigInt("6487ed5110bba8000", 16).S(128.W)
    val PI = scala.BigInt("3243f6a8885dd4000", 16).S(128.W)
    val THREE_PI_DIV_TWO = scala.BigInt("4b65f1fccc34c8000", 16).S(128.W)
    var tofixedz0 = Module(new FloatToFixed128)
    reducer.io.in := io.in
    tofixedz0.io.in := reducer.io.out
    val cordic = Module(new CORDIC(bw, pipeline_depth, rounds))
    cordic.io.in_x0 := scala.BigInt("85061320914884711385076058432045318144", 10).U(128.W) //This is k ~ .607 as a quad precision IEEE 754 float
    cordic.io.in_y0 := 0.U
    val adjangle = PI_DIV_TWO - tofixedz0.io.out.asSInt
    val theta = Mux(adjangle < 0.S, adjangle + TWO_PI, adjangle)
    val outmode = cordic.io.out_mode
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
      io.out := ~cordic.io.out_x(127) ## cordic.io.out_x(126, 0)
    }.otherwise {
      io.out := cordic.io.out_x
    }
  }


  if(bw == 32 || bw ==64 || bw == 128){
    latency = (pipeline_depth)+20
  }
  else if (bw == 16){
    latency = (pipeline_depth)+15

  }

  val shift_reg = RegInit(VecInit.fill(latency)(0.U(bw.W)))
  shift_reg(0) := io.ready
  for(i <- 1 until latency){
    shift_reg(i) := shift_reg(i-1)
  }
  io.valid := shift_reg((latency) - 1)
}

object SinMain extends App {
  (new ChiselStage).execute(
    Array(
      "-X", "verilog",
      "-e", "verilog",
      "--target-dir", "verification/dut/sin_n64_pd8_bw128"),
    Seq(ChiselGeneratorAnnotation(() => new Sin(128,8,64)))
  )
}


object Sin_16bw_8pd_16n extends App {
  (new ChiselStage).execute(
    Array("--target", "systemverilog", "--target-dir", "verification/dut/sin_n16_pd16_bw16" ),
    Seq(ChiselGeneratorAnnotation(() => new Sin(16, 16,16)))
  )
}

object Sin_32bw_8pd_32n extends App {
  (new ChiselStage).execute(
    Array("--target", "systemverilog", "--target-dir", "verification/dut/sin_n32_pd32_bw32" ),
    Seq(ChiselGeneratorAnnotation(() => new Sin(32, 32,32)))
  )
}

object Sin_64bw_8pd_64n extends App {
  (new ChiselStage).execute(
    Array("--target", "systemverilog", "--target-dir", "verification/dut/sin_n64_pd64_bw64" ),
    Seq(ChiselGeneratorAnnotation(() => new Sin(64, 64,64)))
  )
}

object Sin_128bw_8pd_64n extends App {
  (new ChiselStage).execute(
    Array("--target", "systemverilog", "--target-dir", "verification/dut/sin_n64_pd64_bw128" ),
    Seq(ChiselGeneratorAnnotation(() => new Sin(128, 64,64)))
  )
}
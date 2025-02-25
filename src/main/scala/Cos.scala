package Trig


import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import chiseltest.WriteVcdAnnotation
import chiseltest.VerilatorBackendAnnotation
import chisel3.stage.ChiselGeneratorAnnotation
import circt.stage.{ChiselStage, FirtoolOption}
import ChiselMathLibsMario.BinaryDesigns._

class Cos(bw: Int, pipeline_depth: Int, rounds : Int) extends Module {

  val io = IO(new Bundle() {
    val in = Input(UInt(bw.W))
    val ready = Input(Bool())
    val out = Output(UInt(bw.W))
    val valid = Output(Bool())
  })

  /** Range reduction necessary to reduce angles to within (0, 2*PI). This is very slow, and if angles of interest
 are known to already be inside (0, 2*PI) this step should be removed. */
  val reducer = Module(new TrigRangeReducer(bw))



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
   val theta = Mux(tofixedz0.io.out.asSInt < 0.S, tofixedz0.io.out.asSInt + TWO_PI, tofixedz0.io.out.asSInt)


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
    val theta = Mux(tofixedz0.io.out.asSInt < 0.S, tofixedz0.io.out.asSInt + TWO_PI, tofixedz0.io.out.asSInt)
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
    val theta = Mux(tofixedz0.io.out.asSInt < 0.S, tofixedz0.io.out.asSInt + TWO_PI, tofixedz0.io.out.asSInt)
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
    val theta = Mux(tofixedz0.io.out.asSInt < 0.S, tofixedz0.io.out.asSInt + TWO_PI, tofixedz0.io.out.asSInt)
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





  var latency=1

  if(bw == 32 && (pipeline_depth == 1)){

     latency = ((rounds/16)*pipeline_depth)+19
  }
  else if (bw == 32 && (pipeline_depth == 2 || pipeline_depth ==  4 ||pipeline_depth == 8 ||pipeline_depth == 16)) {
     latency = ((rounds / 16) * pipeline_depth) + 20
  }




  else if (bw == 64 && (pipeline_depth == 1) ){

    latency = ((rounds / 16) * pipeline_depth) + 17  //


  }

  else if (bw == 16 && (pipeline_depth == 2 || pipeline_depth ==  4 ||pipeline_depth == 8 ||pipeline_depth == 16 || pipeline_depth == 1)){

    latency = ((rounds / 16) * pipeline_depth) + 15 //


  }

  else if (bw == 64 && (pipeline_depth == 2 || pipeline_depth ==  4 ||pipeline_depth == 8 ||pipeline_depth == 16)){

    latency = ((rounds / 16) * pipeline_depth) + 20  //


  }

  else if (bw == 128 && (pipeline_depth == 2 || pipeline_depth ==  4 ||pipeline_depth == 8 ||pipeline_depth == 16)){

    latency = ((rounds / 16) * pipeline_depth) + 20  //


  }

  else if (bw == 128 && (pipeline_depth == 1) ){

    latency = ((rounds / 16) * pipeline_depth) +17  //


  }

  val shift_reg = RegInit(VecInit.fill(latency)(0.U(bw.W)))
  shift_reg(0) := io.ready
  for(i <- 1 until latency){
    shift_reg(i) := shift_reg(i-1)
  }
  io.valid := shift_reg((latency) - 1)








}

object CosMain extends App {
  (new ChiselStage).execute(
    Array(
      "-X", "verilog",
      "-e", "verilog",
      "--target-dir", "verification/dut/cos_n32_pd8_bw32"),
    Seq(ChiselGeneratorAnnotation(() => new Cos(128, 8,64))) //bw , pd , rounds
  )
}


object Cos_16bw_8pd_16n extends App {
  (new ChiselStage).execute(
    Array("--target", "systemverilog", "--target-dir", "verification/dut/cos_n16_pd8_bw16" ),
    Seq(ChiselGeneratorAnnotation(() => new Cos(16, 16,16)))
  )
}

object Cos_32bw_8pd_32n extends App {
  (new ChiselStage).execute(
    Array("--target", "systemverilog", "--target-dir", "verification/dut/cos_n32_pd8_bw32" ),
    Seq(ChiselGeneratorAnnotation(() => new Cos(32, 16,32)))
  )
}

object Cos_64bw_8pd_64n extends App {
  (new ChiselStage).execute(
    Array("--target", "systemverilog", "--target-dir", "verification/dut/cos_n64_pd8_bw64" ),
    Seq(ChiselGeneratorAnnotation(() => new Cos(64, 16,64)))
  )
}

object Cos_128bw_8pd_64n extends App {
  (new ChiselStage).execute(
    Array("--target", "systemverilog", "--target-dir", "verification/dut/cos_n128_pd8_bw128" ),
    Seq(ChiselGeneratorAnnotation(() => new Cos(128, 16,64)))
  )
}

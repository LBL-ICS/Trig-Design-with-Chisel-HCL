package Trig

import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import chiseltest.WriteVcdAnnotation
import chiseltest.VerilatorBackendAnnotation
import chisel3.stage.ChiselGeneratorAnnotation
import circt.stage.{ChiselStage, FirtoolOption}



/** Module will run 4 iterations per rounds_param, so 8 rounds_param runs 32 iterations */
class CORDIC(bw: Int ,  pipeline_depth: Int , rounds: Int) extends Module {
  val io = IO(new Bundle() {
    val in_x0: UInt = Input(UInt(bw.W))
    val in_y0: UInt = Input(UInt(bw.W))
    val in_z0: UInt = Input(UInt(bw.W))
    val in_mode: UInt = Input(UInt(bw.W))

    val out_x: UInt = Output(UInt(bw.W))
    val out_y: UInt = Output(UInt(bw.W))
    val out_z: UInt = Output(UInt(bw.W))
    val out_mode: UInt = Output(UInt(2.W))
  })



  val atantable16 = Wire(Vec(16, UInt(bw.W))) // 16 bw atan table in Q4.12 fixed-point
  atantable16(0) := 3217.U
  atantable16(1) := 1608.U
  atantable16(2) := 804.U
  atantable16(3) := 402.U
  atantable16(4) := 201.U
  atantable16(5) := 101.U
  atantable16(6) := 50.U
  atantable16(7) := 25.U
  atantable16(8) := 13.U
  atantable16(9) := 6.U
  atantable16(10) := 3.U
  atantable16(11) := 2.U
  atantable16(12) := 1.U
  atantable16(13) := 0.U
  atantable16(14) := 0.U
  atantable16(15) := 0.U

  val atantable = Wire(Vec(32, UInt(32.W))) // mux
  atantable(0) := 210828720.U //Q4.28 fixed point of 0.785398 == 45 deg
  atantable(1) := 124459456.U //Q4.28 fixed point of 0.463648
  atantable(2) := 65760960.U //Q4.28 fixed point of 0.244979
  atantable(3) := 33381290.U //Q4.28 fixed point of 0.124355
  atantable(4) := 16755422.U //Q4.28 fixed point of 0.062419
  atantable(5) := 8385879.U //Q4.28 fixed point of 0.031240
  atantable(6) := 4193962.U //Q4.28 fixed point of 0.015624
  atantable(7) := 2097109.U //Q4.28 fixed point of 0.007812
  atantable(8) := 1048570.U //Q4.28 fixed point of 0.003906
  atantable(9) := 524287.U //Q4.28 fixed point of 0.001953
  atantable(10) := 262143.U //Q4.28 fixed point of 0.000977
  atantable(11) := 131071.U //Q4.28 fixed point of 0.000488
  atantable(12) := 65536.U //Q4.28 fixed point of 0.000244
  atantable(13) := 32768.U //Q4.28 fixed point of 0.000122
  atantable(14) := 16384.U //Q4.28 fixed point of 0.000061
  atantable(15) := 8192.U //Q4.28 fixed point of 0.000031
  atantable(16) := 4096.U //Q4.28 fixed point of 0.000015
  atantable(17) := 2048.U //Q4.28 fixed point of 0.000008
  atantable(18) := 1024.U //Q4.28 fixed point of 0.000004
  atantable(19) := 512.U //Q4.28 fixed point of 0.000002
  atantable(20) := 256.U //Q4.28 fixed point of 0.000001
  atantable(21) := 128.U //Q4.28 fixed point of 0.000000
  atantable(22) := 64.U //Q4.28 fixed point of 0.000000
  atantable(23) := 32.U //Q4.28 fixed point of 0.000000
  atantable(24) := 16.U //Q4.28 fixed point of 0.000000
  atantable(25) := 8.U //Q4.28 fixed point of 0.000000
  atantable(26) := 4.U //Q4.28 fixed point of 0.000000
  atantable(27) := 2.U //Q4.28 fixed point of 0.000000
  atantable(28) := 1.U //Q4.28 fixed point of 0.000000
  atantable(29) := 0.U //Q4.28 fixed point of 0.000000
  atantable(30) := 0.U //Q4.28 fixed point of 0.000000
  atantable(31) := 0.U //Q4.28 fixed point of 3.141593

  val atantable64 = Wire(Vec(64, UInt(64.W))) // 64 bw atan table in Q4.60 fixed point
  atantable64(0) := 905502432259640320L.U // Q4.60 fixed point of 0.785398
  atantable64(1) := 534549298976576448L.U // Q4.60 fixed point of 0.463648
  atantable64(2) := 282441168888798112L.U // Q4.60 fixed point of 0.244979
  atantable64(3) := 143371547418228448L.U // Q4.60 fixed point of 0.124355
  atantable64(4) := 71963988336308048L.U // Q4.60 fixed point of 0.062419
  atantable64(5) := 36017075762092180L.U // Q4.60 fixed point of 0.031240
  atantable64(6) := 18012932708689206L.U // Q4.60 fixed point of 0.015624
  atantable64(7) := 9007016009513623L.U // Q4.60 fixed point of 0.007812
  atantable64(8) := 4503576721087963L.U // Q4.60 fixed point of 0.003906
  atantable64(9) := 2251796950380271L.U // Q4.60 fixed point of 0.001953
  atantable64(10) := 1125899548928887L.U // Q4.60 fixed point of 0.000977
  atantable64(11) := 562949908682075L.U // Q4.60 fixed point of 0.000488
  atantable64(12) := 281474971118250L.U // Q4.60 fixed point of 0.000244
  atantable64(13) := 140737487656277L.U // Q4.60 fixed point of 0.000122
  atantable64(14) := 70368744090282L.U // Q4.60 fixed point of 0.000061
  atantable64(15) := 35184372077909L.U // Q4.60 fixed point of 0.000031
  atantable64(16) := 17592186043050L.U // Q4.60 fixed point of 0.000015
  atantable64(17) := 8796093022037L.U // Q4.60 fixed point of 0.000008
  atantable64(18) := 4398046511082L.U // Q4.60 fixed point of 0.000004
  atantable64(19) := 2199023255549L.U // Q4.60 fixed point of 0.000002
  atantable64(20) := 1099511627775L.U // Q4.60 fixed point of 0.000001
  atantable64(21) := 549755813887L.U // Q4.60 fixed point of 0.000000
  atantable64(22) := 274877906943L.U // Q4.60 fixed point of 0.000000
  atantable64(23) := 137438953471L.U // Q4.60 fixed point of 0.000000
  atantable64(24) := 68719476735L.U // Q4.60 fixed point of 0.000000
  atantable64(25) := 34359738367L.U // Q4.60 fixed point of 0.000000
  atantable64(26) := 17179869183L.U // Q4.60 fixed point of 0.000000
  atantable64(27) := 8589934592L.U // Q4.60 fixed point of 0.000000
  atantable64(28) := 4294967296L.U // Q4.60 fixed point of 0.000000
  atantable64(29) := 2147483648L.U // Q4.60 fixed point of 0.000000
  atantable64(30) := 1073741824.U // Q4.60 fixed point of 0.000000
  atantable64(31) := 536870912.U // Q4.60 fixed point of 0.000000
  atantable64(32) := 268435456.U // Q4.60 fixed point of 0.000000
  atantable64(33) := 134217728.U // Q4.60 fixed point of 0.000000
  atantable64(34) := 67108864.U // Q4.60 fixed point of 0.000000
  atantable64(35) := 33554432.U // Q4.60 fixed point of 0.000000
  atantable64(36) := 16777216.U // Q4.60 fixed point of 0.000000
  atantable64(37) := 8388608.U // Q4.60 fixed point of 0.000000
  atantable64(38) := 4194304.U // Q4.60 fixed point of 0.000000
  atantable64(39) := 2097152.U // Q4.60 fixed point of 0.000000
  atantable64(40) := 1048576.U // Q4.60 fixed point of 0.000000
  atantable64(41) := 524288.U // Q4.60 fixed point of 0.000000
  atantable64(42) := 262144.U // Q4.60 fixed point of 0.000000
  atantable64(43) := 131072.U // Q4.60 fixed point of 0.000000
  atantable64(44) := 65536.U // Q4.60 fixed point of 0.000000
  atantable64(45) := 32768.U // Q4.60 fixed point of 0.000000
  atantable64(46) := 16384.U // Q4.60 fixed point of 0.000000
  atantable64(47) := 8192.U // Q4.60 fixed point of 0.000000
  atantable64(48) := 4096.U // Q4.60 fixed point of 0.000000
  atantable64(49) := 2048.U // Q4.60 fixed point of 0.000000
  atantable64(50) := 1024.U // Q4.60 fixed point of 0.000000
  atantable64(51) := 512.U // Q4.60 fixed point of 0.000000
  atantable64(52) := 256.U // Q4.60 fixed point of 0.000000
  atantable64(53) := 128.U // Q4.60 fixed point of 0.000000
  atantable64(54) := 64.U // Q4.60 fixed point of 0.000000
  atantable64(55) := 32.U // Q4.60 fixed point of 0.000000
  atantable64(56) := 16.U // Q4.60 fixed point of 0.000000
  atantable64(57) := 8.U // Q4.60 fixed point of 0.000000
  atantable64(58) := 4.U // Q4.60 fixed point of 0.000000
  atantable64(59) := 2.U // Q4.60 fixed point of 0.000000
  atantable64(60) := 1.U // Q4.60 fixed point of 0.000000
  atantable64(61) := 0.U // Q4.60 fixed point of 0.000000
  atantable64(62) := 0.U // Q4.60 fixed point of 0.000000
  atantable64(63) := 0.U // Q4.60 fixed point of 0.000000

  val atantable128_64 = Wire(Vec(64, UInt(128.W))) // 128 bw atan table in Q64.64 fixed point
 atantable128_64(0) := scala.BigInt("0000000000000000C90FDAA22168C000", 16).U(128.W)
  atantable128_64(1) := scala.BigInt("000000000000000076B19C1586ED3C00", 16).U(128.W)
  atantable128_64(2) := scala.BigInt("00000000000000003EB6EBF25901BA00", 16).U(128.W)
  atantable128_64(3) := scala.BigInt("00000000000000001FD5BA9AAC2F6E00", 16).U(128.W)
  atantable128_64(4) := scala.BigInt("00000000000000000FFAADDB967EF500", 16).U(128.W)
  atantable128_64(5) := scala.BigInt("000000000000000007FF556EEA5D8940", 16).U(128.W)
  atantable128_64(6) := scala.BigInt("000000000000000003FFEAAB776E5360", 16).U(128.W)
  atantable128_64(7) := scala.BigInt("000000000000000001FFFD555BBBA970", 16).U(128.W)
  atantable128_64(8) := scala.BigInt("000000000000000000FFFFAAAADDDDB8", 16).U(128.W)
  atantable128_64(9) := scala.BigInt("0000000000000000007FFFF55556EEF0", 16).U(128.W)
  atantable128_64(10) := scala.BigInt("0000000000000000003FFFFEAAAAB778", 16).U(128.W)
  atantable128_64(11) := scala.BigInt("0000000000000000001FFFFFD55555BC", 16).U(128.W)
  atantable128_64(12) := scala.BigInt("0000000000000000000FFFFFFAAAAAAE", 16).U(128.W)
  atantable128_64(13) := scala.BigInt("00000000000000000007FFFFFF555555", 16).U(128.W)
  atantable128_64(14) := scala.BigInt("00000000000000000003FFFFFFEAAAAA", 16).U(128.W)
  atantable128_64(15) := scala.BigInt("00000000000000000001FFFFFFFD5555", 16).U(128.W)
  atantable128_64(16) := scala.BigInt("00000000000000000000FFFFFFFFAAAA", 16).U(128.W)
  atantable128_64(17) := scala.BigInt("000000000000000000007FFFFFFFF555", 16).U(128.W)
  atantable128_64(18) := scala.BigInt("000000000000000000003FFFFFFFFEAA", 16).U(128.W)
  atantable128_64(19) := scala.BigInt("000000000000000000001FFFFFFFFFD5", 16).U(128.W)
  atantable128_64(20) := scala.BigInt("000000000000000000000FFFFFFFFFFA", 16).U(128.W)
  atantable128_64(21) := scala.BigInt("0000000000000000000007FFFFFFFFFF", 16).U(128.W)
  atantable128_64(22) := scala.BigInt("0000000000000000000003FFFFFFFFFF", 16).U(128.W)
  atantable128_64(23) := scala.BigInt("0000000000000000000001FFFFFFFFFF", 16).U(128.W)
  atantable128_64(24) := scala.BigInt("0000000000000000000000FFFFFFFFFF", 16).U(128.W)
  atantable128_64(25) := scala.BigInt("00000000000000000000007FFFFFFFFF", 16).U(128.W)
  atantable128_64(26) := scala.BigInt("00000000000000000000003FFFFFFFFF", 16).U(128.W)
  atantable128_64(27) := scala.BigInt("00000000000000000000002000000000", 16).U(128.W)
  atantable128_64(28) := scala.BigInt("00000000000000000000001000000000", 16).U(128.W)
  atantable128_64(29) := scala.BigInt("00000000000000000000000800000000", 16).U(128.W)
  atantable128_64(30) := scala.BigInt("00000000000000000000000400000000", 16).U(128.W)
  atantable128_64(31) := scala.BigInt("00000000000000000000000200000000", 16).U(128.W)
  atantable128_64(32) := scala.BigInt("00000000000000000000000100000000", 16).U(128.W)
  atantable128_64(33) := scala.BigInt("00000000000000000000000080000000", 16).U(128.W)
  atantable128_64(34) := scala.BigInt("00000000000000000000000040000000", 16).U(128.W)
  atantable128_64(35) := scala.BigInt("00000000000000000000000020000000", 16).U(128.W)
  atantable128_64(36) := scala.BigInt("00000000000000000000000010000000", 16).U(128.W)
  atantable128_64(37) := scala.BigInt("00000000000000000000000008000000", 16).U(128.W)
  atantable128_64(38) := scala.BigInt("00000000000000000000000004000000", 16).U(128.W)
  atantable128_64(39) := scala.BigInt("00000000000000000000000002000000", 16).U(128.W)
  atantable128_64(40) := scala.BigInt("00000000000000000000000001000000", 16).U(128.W)
  atantable128_64(41) := scala.BigInt("00000000000000000000000000800000", 16).U(128.W)
  atantable128_64(42) := scala.BigInt("00000000000000000000000000400000", 16).U(128.W)
  atantable128_64(43) := scala.BigInt("00000000000000000000000000200000", 16).U(128.W)
  atantable128_64(44) := scala.BigInt("00000000000000000000000000100000", 16).U(128.W)
  atantable128_64(45) := scala.BigInt("00000000000000000000000000080000", 16).U(128.W)
  atantable128_64(46) := scala.BigInt("00000000000000000000000000040000", 16).U(128.W)
  atantable128_64(47) := scala.BigInt("00000000000000000000000000020000", 16).U(128.W)
  atantable128_64(48) := scala.BigInt("00000000000000000000000000010000", 16).U(128.W)
  atantable128_64(49) := scala.BigInt("00000000000000000000000000008000", 16).U(128.W)
  atantable128_64(50) := scala.BigInt("00000000000000000000000000004000", 16).U(128.W)
  atantable128_64(51) := scala.BigInt("00000000000000000000000000002000", 16).U(128.W)
  atantable128_64(52) := scala.BigInt("00000000000000000000000000001000", 16).U(128.W)
  atantable128_64(53) := scala.BigInt("00000000000000000000000000000800", 16).U(128.W)
  atantable128_64(54) := scala.BigInt("00000000000000000000000000000400", 16).U(128.W)
  atantable128_64(55) := scala.BigInt("00000000000000000000000000000200", 16).U(128.W)
  atantable128_64(56) := scala.BigInt("00000000000000000000000000000100", 16).U(128.W)
  atantable128_64(57) := scala.BigInt("00000000000000000000000000000080", 16).U(128.W)
  atantable128_64(58) := scala.BigInt("00000000000000000000000000000040", 16).U(128.W)
  atantable128_64(59) := scala.BigInt("00000000000000000000000000000020", 16).U(128.W)
  atantable128_64(60) := scala.BigInt("00000000000000000000000000000010", 16).U(128.W)
  atantable128_64(61) := scala.BigInt("00000000000000000000000000000008", 16).U(128.W)
  atantable128_64(62) := scala.BigInt("00000000000000000000000000000004", 16).U(128.W)
  atantable128_64(63) := scala.BigInt("00000000000000000000000000000002", 16).U(128.W)

  val x = Wire(Vec(rounds + 1, SInt(bw.W)))
  val y = Wire(Vec(rounds + 1, SInt(bw.W)))
  val theta = Wire(Vec(rounds + 1, SInt(bw.W))) // actual theta
  val z0s = Wire(Vec(rounds + 1, SInt(bw.W))) // The z parameter here is not part of the vector, but rather tracks our target angle over time. The sign of this parameter determines if we rotate clockwise or anti-clockwise.
  val modes = Wire(Vec(rounds + 1, UInt(2.W)))

  val xr = RegInit(VecInit(Seq.fill(rounds + 1)(0.S(bw.W)))) // x register of round+1 elements
  val yr = RegInit(VecInit(Seq.fill(rounds + 1)(0.S(bw.W)))) // y register of round+1 elements
  val thetar = RegInit(VecInit(Seq.fill(rounds + 1)(0.S(bw.W)))) // theta register of round+1 elements
  val z0sr = RegInit(VecInit(Seq.fill(rounds + 1)(0.S(bw.W))))
  val modesr = RegInit(VecInit(Seq.fill(rounds + 1)(0.U(2.W))))


  if(bw==16) {
  val tofixedx0 = Module(new FloatToFixed16()) //**
  val tofixedy0 = Module(new FloatToFixed16()) //**
  tofixedx0.io.in := io.in_x0
  tofixedy0.io.in := io.in_y0
  val fixedx0 = tofixedx0.io.out
  val fixedy0 = tofixedy0.io.out
  val fixedz0 = io.in_z0
  theta(0) := 0.S
  x(0) := fixedx0.asSInt
  y(0) := fixedy0.asSInt
  z0s(0) := fixedz0.asSInt
  modes(0) := io.in_mode
  thetar(0) := 0.S
  xr(0) := fixedx0.asSInt
  yr(0) := fixedy0.asSInt
  z0sr(0) := fixedz0.asSInt
  modesr(0) := io.in_mode
}
  else   if(bw ==32){

    val tofixedx0 = Module(new FloatToFixed32()) //**
    val tofixedy0 = Module(new FloatToFixed32()) //**
    tofixedx0.io.in := io.in_x0
    tofixedy0.io.in := io.in_y0
    val fixedx0 = tofixedx0.io.out
    val fixedy0 = tofixedy0.io.out
    val fixedz0 = io.in_z0
    theta(0) := 0.S
    x(0) := fixedx0.asSInt
    y(0) := fixedy0.asSInt
    z0s(0) := fixedz0.asSInt
    modes(0) := io.in_mode
    thetar(0) := 0.S
    xr(0) := fixedx0.asSInt
    yr(0) := fixedy0.asSInt
    z0sr(0) := fixedz0.asSInt
    modesr(0) := io.in_mode
  }

  else if(bw ==64){

    val tofixedx0 = Module(new FloatToFixed64()) //**
    val tofixedy0 = Module(new FloatToFixed64()) //**
    tofixedx0.io.in := io.in_x0
    tofixedy0.io.in := io.in_y0
    val fixedx0 = tofixedx0.io.out
    val fixedy0 = tofixedy0.io.out
    val fixedz0 = io.in_z0
    theta(0) := 0.S
    x(0) := fixedx0.asSInt
    y(0) := fixedy0.asSInt
    z0s(0) := fixedz0.asSInt
    modes(0) := io.in_mode
    thetar(0) := 0.S
    xr(0) := fixedx0.asSInt
    yr(0) := fixedy0.asSInt
    z0sr(0) := fixedz0.asSInt
    modesr(0) := io.in_mode
  }

  else if(bw ==128){
    val tofixedx0 = Module(new FloatToFixed128()) //**
    val tofixedy0 = Module(new FloatToFixed128()) //**
    tofixedx0.io.in := io.in_x0
    tofixedy0.io.in := io.in_y0
    val fixedx0 = tofixedx0.io.out
    val fixedy0 = tofixedy0.io.out
    val fixedz0 = io.in_z0
    theta(0) := 0.S
    x(0) := fixedx0.asSInt
    y(0) := fixedy0.asSInt
    z0s(0) := fixedz0.asSInt
    modes(0) := io.in_mode
    thetar(0) := 0.S
    xr(0) := fixedx0.asSInt
    yr(0) := fixedy0.asSInt
    z0sr(0) := fixedz0.asSInt
    modesr(0) := io.in_mode
  }

  // calculates register per round ratio
  val round_per_reg = rounds/pipeline_depth

  val atantablebw = bw match {
    case 16 => atantable16
    case 32 => atantable
    case 64 => atantable64
    case 128 => atantable128_64
  }

  if (round_per_reg == 1) {

    var iter = 0
    for (n <- 0 to rounds - 1 by round_per_reg) {

      val fxxterm = Mux(thetar(n) > z0sr(n), -xr(n), xr(n))
      val fxyterm = Mux(thetar(n) > z0sr(n), -yr(n), yr(n))
      val fxthetaterm = Mux(thetar(n) > z0sr(n), -atantablebw(n), atantablebw(n))

      theta(n + 1) := thetar(n) + fxthetaterm.asSInt
      x(n + 1) := xr(n) - (fxyterm >> n.asUInt).asSInt
      y(n + 1) := (fxxterm >> n.asUInt).asSInt + yr(n)
      z0s(n + 1) := z0sr(n)
      modes(n + 1) := modesr(n)

      thetar(n + 1) := theta(n + 1)
      xr(n + 1) := x(n + 1)
      yr(n + 1) := y(n + 1)
      z0sr(n + 1) := z0s(n + 1)
      modesr(n + 1) := modes(n + 1)

      iter = iter + 1
    }

    val tofloatxout = Module(new FixedToFloat(bw))
    val tofloatyout = Module(new FixedToFloat(bw))
    val tofloatzout = Module(new FixedToFloat(bw))

    tofloatxout.io.in := xr(iter).asUInt
    tofloatyout.io.in := yr(iter).asUInt
    tofloatzout.io.in := z0sr(iter).asUInt
    io.out_mode := modesr(iter).asUInt
    io.out_x := tofloatxout.io.out
    io.out_y := tofloatyout.io.out
    io.out_z := tofloatzout.io.out
  }

  else if (  round_per_reg==2) {

    var iter = 0
    for (n <- 0 to rounds - 1 by round_per_reg) {
      for (i <- 1 to round_per_reg) {
        if (i == 1) {
          val prevn = n + i - 1
          val fxxterm = Mux(thetar(iter) > z0sr(iter), -xr(iter), xr(iter))
          val fxyterm = Mux(thetar(iter) > z0sr(iter), -yr(iter), yr(iter))
          val fxthetaterm = Mux(thetar(iter) > z0sr(iter), -atantablebw(prevn), atantablebw(prevn))

          theta(n + i) := thetar(iter) + fxthetaterm.asSInt;
          x(n + i) := xr(iter) - (fxyterm >> prevn.asUInt).asSInt
          y(n + i) := (fxxterm >> prevn.asUInt).asSInt + yr(iter)
          z0s(n + i) := z0sr(iter)
          modes(n + i) := modesr(iter)
        }
        else {
          val prevn = n + i - 1
          val fxxterm = Mux(theta(prevn) > z0s(prevn), -x(prevn), x(prevn))
          val fxyterm = Mux(theta(prevn) > z0s(prevn), -y(prevn), y(prevn))
          val fxthetaterm = Mux(theta(prevn) > z0s(prevn), -atantablebw(prevn), atantablebw(prevn))


          theta(n + i) := theta(prevn) + fxthetaterm.asSInt;
          x(n + i) := x(prevn) - (fxyterm >> prevn.asUInt).asSInt
          y(n + i) := (fxxterm >> prevn.asUInt).asSInt + y(prevn)
          z0s(n + i) := z0s(prevn)
          modes(n + i) := modes(prevn)
        }
      }

      thetar(iter + 1) := theta(n + round_per_reg)
      xr(iter + 1) := x(n + round_per_reg)
      yr(iter + 1) := y(n + round_per_reg)
      z0sr(iter + 1) := z0s(n + round_per_reg)
      modesr(iter + 1) := modes(n + round_per_reg)

      iter = iter + 1
    }


      val tofloatxout = Module(new FixedToFloat(bw))
      val tofloatyout = Module(new FixedToFloat(bw))
      val tofloatzout = Module(new FixedToFloat(bw))

      tofloatxout.io.in := xr(iter).asUInt
      tofloatyout.io.in := yr(iter).asUInt
      tofloatzout.io.in := z0sr(iter).asUInt
      io.out_mode := modesr(iter).asUInt

      io.out_x := tofloatxout.io.out
      io.out_y := tofloatyout.io.out
      io.out_z := tofloatzout.io.out

  }

  else if (  round_per_reg == 4) {

    var reg = 0
    for (n <- 0 to rounds - 1 by 1) {

      if (n % 4 == 0) { // first iteration

        val fxxterm = Mux(thetar(reg) > z0sr(reg), -xr(reg), xr(reg))
        val fxyterm = Mux(thetar(reg) > z0sr(reg), -yr(reg), yr(reg))
        val fxthetaterm = Mux(thetar(reg) > z0sr(reg), -atantablebw(n), atantablebw(n))

        theta(n + 1) := thetar(reg) + fxthetaterm.asSInt;
        x(n + 1) := xr(reg) - (fxyterm >> n.asUInt).asSInt
        y(n + 1) := (fxxterm >> n.asUInt).asSInt + yr(reg)
        z0s(n + 1) := z0sr(reg)
        modes(n + 1) := modesr(reg)

      }
      else if (n % 4 == 1 || n % 4 == 2) {

        val fxxterm = Mux(theta(n) > z0s(n), -x(n), x(n))
        val fxyterm = Mux(theta(n) > z0s(n), -y(n), y(n))
        val fxthetaterm = Mux(theta(n) > z0s(n), -atantablebw(n), atantablebw(n))

        theta(n + 1) := theta(n) + fxthetaterm.asSInt;
        x(n + 1) := x(n) - (fxyterm >> n.asUInt).asSInt
        y(n + 1) := (fxxterm >> n.asUInt).asSInt + y(n)
        z0s(n + 1) := z0s(n)
        modes(n + 1) := modes(n)
      }

      else if (n % 4 == 3) {

        val fxxterm = Mux(theta(n) > z0s(n), -x(n), x(n))
        val fxyterm = Mux(theta(n) > z0s(n), -y(n), y(n))
        val fxthetaterm = Mux(theta(n) > z0s(n), -atantablebw(n), atantablebw(n))

        theta(n + 1) := theta(n) + fxthetaterm.asSInt;
        x(n + 1) := x(n) - (fxyterm >> n.asUInt).asSInt
        y(n + 1) := (fxxterm >> n.asUInt).asSInt + y(n)
        z0s(n + 1) := z0s(n)
        modes(n + 1) := modes(n)

        reg = reg + 1


        thetar(reg) := theta(n + 1)
        xr(reg) := x(n + 1)
        yr(reg) := y(n + 1)
        z0sr(reg) := z0s(n + 1)
        modesr(reg) := modes(n + 1)
      }


    }

    val tofloatxout = Module(new FixedToFloat(bw))
    val tofloatyout = Module(new FixedToFloat(bw))
    val tofloatzout = Module(new FixedToFloat(bw))

    tofloatxout.io.in := xr(reg).asUInt
    tofloatyout.io.in := yr(reg).asUInt
    tofloatzout.io.in := z0sr(reg).asUInt
    io.out_mode := modesr(reg).asUInt

    io.out_x := tofloatxout.io.out
    io.out_y := tofloatyout.io.out
    io.out_z := tofloatzout.io.out
  }

  else if (round_per_reg == 8){

    var reg = 0
    for (n <- 0 to rounds-1 by 1) {

      if (n % 8 == 0) { // first iteration

        val fxxterm = Mux(thetar(reg) > z0sr(reg), -xr(reg), xr(reg))
        val fxyterm = Mux(thetar(reg) > z0sr(reg), -yr(reg), yr(reg))
        val fxthetaterm = Mux(thetar(reg) > z0sr(reg), -atantablebw(n), atantablebw(n))

        theta(n + 1) := thetar(reg) + fxthetaterm.asSInt;
        x(n + 1) := xr(reg) - (fxyterm >> n.asUInt).asSInt
        y(n + 1) := (fxxterm >> n.asUInt).asSInt + yr(reg)
        z0s(n + 1) := z0sr(reg)
        modes(n + 1) := modesr(reg)

      }
      else if (n % 8 == 1 || n % 8 == 2 || n % 8 == 3 ||n % 8 == 4 ||n % 8 == 5 ||n % 8 == 6 ) {


        val fxxterm = Mux(theta(n) > z0s(n), -x(n), x(n))
        val fxyterm = Mux(theta(n) > z0s(n), -y(n), y(n))
        val fxthetaterm = Mux(theta(n) > z0s(n), -atantablebw(n), atantablebw(n))

        theta(n + 1) := theta(n) + fxthetaterm.asSInt;
        x(n + 1) := x(n) - (fxyterm >> n.asUInt).asSInt
        y(n + 1) := (fxxterm >> n.asUInt).asSInt + y(n)
        z0s(n + 1) := z0s(n)
        modes(n + 1) := modes(n)
      }

      else if (n % 8 == 7) {


        val fxxterm = Mux(theta(n) > z0s(n), -x(n), x(n))
        val fxyterm = Mux(theta(n) > z0s(n), -y(n), y(n))
        val fxthetaterm = Mux(theta(n) > z0s(n), -atantablebw(n), atantablebw(n))

        theta(n + 1) := theta(n) + fxthetaterm.asSInt;
        x(n + 1) := x(n) - (fxyterm >> n.asUInt).asSInt
        y(n + 1) := (fxxterm >> n.asUInt).asSInt + y(n)
        z0s(n + 1) := z0s(n)
        modes(n + 1) := modes(n)

        reg = reg + 1


        thetar(reg) := theta(n + 1)
        xr(reg) := x(n + 1)
        yr(reg) := y(n + 1)
        z0sr(reg) := z0s(n + 1)
        modesr(reg) := modes(n + 1)
      }
    }

    val tofloatxout = Module(new FixedToFloat(bw))
    val tofloatyout = Module(new FixedToFloat(bw))
    val tofloatzout = Module(new FixedToFloat(bw))

    tofloatxout.io.in := xr(reg).asUInt
    tofloatyout.io.in := yr(reg).asUInt
    tofloatzout.io.in := z0sr(reg).asUInt
    io.out_mode := modesr(reg).asUInt

    io.out_x := tofloatxout.io.out
    io.out_y := tofloatyout.io.out
    io.out_z := tofloatzout.io.out
  }

  else if(round_per_reg == rounds){

    for (n <- 0 to rounds - 1 by 1) {

    if (n == 0 ){

      val fxxterm = Mux(thetar(0) > z0sr(0), -xr(0), xr(0))
      val fxyterm = Mux(thetar(0) > z0sr(0), -yr(0), yr(0))
      val fxthetaterm = Mux(thetar(0) > z0sr(0), -atantablebw(n), atantablebw(n))

      theta(n + 1) := thetar(0) + fxthetaterm.asSInt;
      x(n + 1) := xr(0) - (fxyterm >> n.asUInt).asSInt
      y(n + 1) := (fxxterm >> n.asUInt).asSInt + yr(0)
      z0s(n + 1) := z0sr(0)
      modes(n + 1) := modesr(0)

    }

    else if (n == rounds-2) {

      val fxxterm = Mux(theta(n) > z0s(n), -x(n), x(n))
      val fxyterm = Mux(theta(n) > z0s(n), -y(n), y(n))
      val fxthetaterm = Mux(theta(n) > z0s(n), -atantablebw(n), atantablebw(n))

      theta(n + 1) := theta(n) + fxthetaterm.asSInt;
      x(n + 1) := x(n) - (fxyterm >> n.asUInt).asSInt
      y(n + 1) := (fxxterm >> n.asUInt).asSInt + y(n)
      z0s(n + 1) := z0s(n)
      modes(n + 1) := modes(n)

      thetar(1) := theta(n + 1)
      xr(1) := x(n + 1)
      yr(1) := y(n + 1)
      z0sr(1) := z0s(n + 1)
      modesr(1) := modes(n + 1)
    }

    else {
      val fxxterm = Mux(theta(n) > z0s(n), -x(n), x(n))
      val fxyterm = Mux(theta(n) > z0s(n), -y(n), y(n))
      val fxthetaterm = Mux(theta(n) > z0s(n), -atantablebw(n), atantablebw(n))

      theta(n + 1) := theta(n) + fxthetaterm.asSInt;
      x(n + 1) := x(n) - (fxyterm >> n.asUInt).asSInt
      y(n + 1) := (fxxterm >> n.asUInt).asSInt + y(n)
      z0s(n + 1) := z0s(n)
      modes(n + 1) := modes(n)

    }
    }

    val tofloatxout = Module(new FixedToFloat(bw))
    val tofloatyout = Module(new FixedToFloat(bw))
    val tofloatzout = Module(new FixedToFloat(bw))

    tofloatxout.io.in := xr(1).asUInt
    tofloatyout.io.in := yr(1).asUInt
    tofloatzout.io.in := z0sr(1).asUInt
    io.out_mode := modesr(1).asUInt

    io.out_x := tofloatxout.io.out
    io.out_y := tofloatyout.io.out
    io.out_z := tofloatzout.io.out

    }

}




object CORDICMain extends App {
  (new ChiselStage).execute(
    Array(
      "-X", "verilog",
      "-e", "verilog"),
    Seq(ChiselGeneratorAnnotation(() => new CORDIC(32,  4, 16)))
  )
}

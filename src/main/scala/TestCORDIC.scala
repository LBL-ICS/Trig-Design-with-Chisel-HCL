package Trig
import chisel3._

import java.io.PrintWriter
import chisel3.util._
import Binary_Modules.BinaryDesigns._
import FP_Modules.FloatingPointDesigns._
import chisel3.stage.ChiselStage

object Main extends App {
    val pw = new PrintWriter("Cos.v")
    pw.println(getVerilogString(new Cos(32,16,16)))
      pw.close()

  val pw2 = new PrintWriter("Sin.v")
  pw2.println(getVerilogString(new Sin(32,1,16)))
  pw2.close()

  val pw3 = new PrintWriter("Atan.v")
  pw3.println(getVerilogString(new Atan(32,8,30)))
  pw3.close()
}

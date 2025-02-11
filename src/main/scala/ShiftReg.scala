package Trig

import chisel3._

import java.io.PrintWriter
import chisel3.util._
import Binary_Modules.BinaryDesigns._
import FP_Modules.FloatingPointDesigns._

import chisel3.stage.{ChiselGeneratorAnnotation, ChiselStage}


class ShiftReg(depth: Int,bw: Int) extends Module{
  val io = IO(new Bundle() {
    val in = Input(UInt(bw.W))
    val out = Output(UInt(bw.W))
  })
  val reg = RegInit(VecInit.fill(depth)(0.U(bw.W)))
  reg(0) := io.in
  for(i <- 1 until depth){
    reg(i) := reg(i-1)
  }
  io.out := reg(depth - 1)
}


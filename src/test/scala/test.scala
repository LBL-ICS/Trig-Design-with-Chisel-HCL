
package Trig
import chisel3._
import chiseltest.internal._
import java.io.PrintWriter
import chisel3.util._
import Binary_Modules.BinaryDesigns._
import FP_Modules.FloatingPointDesigns._
import chisel3.stage.ChiselStage
import chisel3.stage.{ChiselGeneratorAnnotation, ChiselStage}
import org.scalatest.flatspec.AnyFlatSpec
import chiseltest.iotesters.PeekPokeTester
import chiseltest._
import org.scalatest._
import org.scalatest.exceptions.TestFailedException

import scala.util.DynamicVariable




class FixedToFloat128Test extends AnyFlatSpec with ChiselScalatestTester {
  "FixedToFloat128" should "correctly convert fixed-point to double-precision float" in {
    test(new FixedToFloat128) { dut =>
      // Test case 1: Positive number
      dut.io.in.poke("h0000000000000000e0a940b1a74d2fed".U(128.W)) // Q4.60 representation of 8.0
      dut.clock.step(1)
      dut.io.out.expect("h40000000000000000000000000000000".U(128.W)) // IEEE 754 double for 8.0

      dut.io.in.poke("h10000000000000000000000000000000".U(128.W)) // Q4.60 representation of 8.0
      dut.clock.step(1)
      dut.io.out.expect("h3FFF0000000000000000000000000000".U(128.W)) // IEEE 754 double for 8.0

      dut.io.in.poke("h8000000000000000000000000000000".U(128.W)) // Q4.60 representation of 8.0
      dut.clock.step(1)
      dut.io.out.expect("h3FFE0000000000000000000000000000".U(128.W)) // IEEE 754 double for 8.0

      //dut.io.in.poke("h2000000000000000".U) // Q4.60 representation of 8.0
      //dut.clock.step(1)
      //dut.io.out.expect("h4000000000000000".U) // IEEE 754 double for 8.0
      // Test case 2: Negative number
//      dut.io.in.poke("hFFF8000000000000".U) // Q4.60 representation of -8.0
//      dut.clock.step(1)
//      dut.io.out.expect("hC020000000000000".U) // IEEE 754 double for -8.0
//
//      // Test case 3: Zero
//      dut.io.in.poke("h0000000000000000".U) // Q4.60 representation of 0.0
//      dut.clock.step(1)
//      dut.io.out.expect("h0000000000000000".U) // IEEE 754 double for 0.0
//
//      // Test case 4: Small fractional number
//      dut.io.in.poke("h0000000001000000".U) // Q4.60 representation of 1/16 (0.0625)
//      dut.clock.step(1)
//      dut.io.out.expect("h3FB0000000000000".U) // IEEE 754 double for 0.0625
    }
  }
}


class FloatToFixed128Test extends AnyFlatSpec with ChiselScalatestTester {
  "FloatToFixed128" should "correctly convert fixed-point to double-precision float" in {
    test(new FloatToFixed128) { dut =>
      // Test case 1: Positive number
      //dut.io.in.poke("h3FFF0000000000000000000000000000".U(128.W)) // Q4.60 representation of 8.0
      //dut.clock.step(1)
      //dut.io.out.expect("h10000000000000000000000000000000".U(128.W)) // IEEE 754 double for 8.0

      dut.io.in.poke("h40000000000000000000000000000000".U(128.W)) // Q4.60 representation of 8.0
      dut.clock.step(1)
      dut.io.out.expect("h20000000000000000000000000000000".U(128.W)) // IEEE 754 double for 8.0

      //dut.io.in.poke("hBFFF0000000000000000000000000000".U(128.W)) // Q4.60 representation of 8.0
      //dut.clock.step(1)
      //dut.io.out.expect("hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF".U(128.W)) // IEEE 754 double for 8.0

      dut.io.in.poke("h3FFE0000000000000000000000000000".U(128.W)) // Q4.60 representation of 8.0
      dut.clock.step(1)
      dut.io.out.expect("h8000000000000000000000000000000".U(128.W)) // IEEE 754 double for 8.0

      //dut.io.in.poke("h2000000000000000".U) // Q4.60 representation of 8.0
      //dut.clock.step(1)
      //dut.io.out.expect("h4000000000000000".U) // IEEE 754 double for 8.0
      // Test case 2: Negative number
      //      dut.io.in.poke("hFFF8000000000000".U) // Q4.60 representation of -8.0
      //      dut.clock.step(1)
      //      dut.io.out.expect("hC020000000000000".U) // IEEE 754 double for -8.0
      //
      //      // Test case 3: Zero
      //      dut.io.in.poke("h0000000000000000".U) // Q4.60 representation of 0.0
      //      dut.clock.step(1)
      //      dut.io.out.expect("h0000000000000000".U) // IEEE 754 double for 0.0
      //
      //      // Test case 4: Small fractional number
      //      dut.io.in.poke("h0000000001000000".U) // Q4.60 representation of 1/16 (0.0625)
      //      dut.clock.step(1)
      //      dut.io.out.expect("h3FB0000000000000".U) // IEEE 754 double for 0.0625
    }
  }
}

class FloatToFixed64Test extends AnyFlatSpec with ChiselScalatestTester {
  "FloatToFixed64" should "correctly convert fixed-point to double-precision float" in {
    test(new FloatToFixed64) { dut =>
      // Test case 1: Positive number

      dut.io.in.poke("hBFFF000000000000".U(64.W)) // Q4.60 representation of 8.0
      dut.clock.step(1)
      dut.io.out.expect("hFFFFFFFFFFFFFFFF".U(64.W)) // IEEE 754 double for 8.0


      //dut.io.in.poke("h2000000000000000".U) // Q4.60 representation of 8.0
      //dut.clock.step(1)
      //dut.io.out.expect("h4000000000000000".U) // IEEE 754 double for 8.0
      // Test case 2: Negative number
      //      dut.io.in.poke("hFFF8000000000000".U) // Q4.60 representation of -8.0
      //      dut.clock.step(1)
      //      dut.io.out.expect("hC020000000000000".U) // IEEE 754 double for -8.0
      //
      //      // Test case 3: Zero
      //      dut.io.in.poke("h0000000000000000".U) // Q4.60 representation of 0.0
      //      dut.clock.step(1)
      //      dut.io.out.expect("h0000000000000000".U) // IEEE 754 double for 0.0
      //
      //      // Test case 4: Small fractional number
      //      dut.io.in.poke("h0000000001000000".U) // Q4.60 representation of 1/16 (0.0625)
      //      dut.clock.step(1)
      //      dut.io.out.expect("h3FB0000000000000".U) // IEEE 754 double for 0.0625
    }
  }
}




class CosTest extends AnyFlatSpec with ChiselScalatestTester {
  "cos" should "correctly convert fixed-point to double-precision float" in {
    test(new Cos(128,8,32)) { dut =>
      // Test case 1: Positive number

      dut.io.in.poke("h3FFF0000000000000000000000000000".U(128.W)) // Q4.60 representation of 8.0
      dut.io.ready.poke(1.B)// Q4.60 representation of 8.0


      dut.clock.step(1)
      dut.io.out.expect("h10000000000000000000000000000000".U(128.W)) // IEEE 754 double for 8.0

      //dut.io.in.poke("h2000000000000000".U) // Q4.60 representation of 8.0
      //dut.clock.step(1)
      //dut.io.out.expect("h4000000000000000".U) // IEEE 754 double for 8.0
      // Test case 2: Negative number
      //      dut.io.in.poke("hFFF8000000000000".U) // Q4.60 representation of -8.0
      //      dut.clock.step(1)
      //      dut.io.out.expect("hC020000000000000".U) // IEEE 754 double for -8.0
      //
      //      // Test case 3: Zero
      //      dut.io.in.poke("h0000000000000000".U) // Q4.60 representation of 0.0
      //      dut.clock.step(1)
      //      dut.io.out.expect("h0000000000000000".U) // IEEE 754 double for 0.0
      //
      //      // Test case 4: Small fractional number
      //      dut.io.in.poke("h0000000001000000".U) // Q4.60 representation of 1/16 (0.0625)
      //      dut.clock.step(1)
      //      dut.io.out.expect("h3FB0000000000000".U) // IEEE 754 double for 0.0625
    }
  }
}



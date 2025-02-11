package Trig
import chisel3._
import org.scalatest.flatspec.AnyFlatSpec

import chiseltest._

class CLZ128Test extends AnyFlatSpec with ChiselScalatestTester {
  "CLZ128" should "calculate the correct number of leading zeros" in {
    test(new CLZ128()) { dut =>
      val testCases = Seq(
        ("h10000000000000000000000000000000".U(128.W), 3.U), // All zeros, 64 leading zeros
        //("h8000000000000000".U, 0.U),  // MSB is 1, 0 leading zeros
        //("h4000000000000000".U, 1.U),  // One leading zero
        //("h2000000000000000".U, 2.U),  // Two leading zeros
        //("h0100000000000000".U, 7.U),  // Seven leading zeros
        //("h0000800000000000".U, 15.U), // Fifteen leading zeros
        //("h0000000000000001".U, 63.U), // Sixty-three leading zeros
        //("h000000000000FFFF".U, 48.U)  // Forty-eight leading zeros
      )

      for ((input, expected) <- testCases) {
        dut.io.in.poke(input)
        dut.clock.step(1) // Wait one clock cycle
        val output = dut.io.out.peek().litValue
        assert(output == expected.litValue, s"Failed for input $input, got $output, expected $expected")
      }
    }
  }
}
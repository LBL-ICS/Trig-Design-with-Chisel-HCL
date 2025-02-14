module multiplier(
  input  [52:0]  io_in_a,
  input  [52:0]  io_in_b,
  output [105:0] io_out_s
);
  assign io_out_s = io_in_a * io_in_b; // @[BinaryDesigns2.scala 152:23]
endmodule

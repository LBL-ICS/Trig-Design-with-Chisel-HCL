module multiplier(
  input  [10:0] io_in_a,
  input  [10:0] io_in_b,
  output [21:0] io_out_s
);
  assign io_out_s = io_in_a * io_in_b; // @[BinaryDesigns2.scala 152:23]
endmodule

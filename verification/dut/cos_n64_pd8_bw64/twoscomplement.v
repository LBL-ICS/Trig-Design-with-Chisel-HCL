module twoscomplement(
  input  [10:0] io_in,
  output [10:0] io_out
);
  wire [10:0] _x_T = ~io_in; // @[BinaryDesigns2.scala 96:16]
  assign io_out = 11'h1 + _x_T; // @[BinaryDesigns2.scala 96:14]
endmodule

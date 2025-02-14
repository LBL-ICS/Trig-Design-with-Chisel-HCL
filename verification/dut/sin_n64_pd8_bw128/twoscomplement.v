module twoscomplement(
  input  [14:0] io_in,
  output [14:0] io_out
);
  wire [14:0] _x_T = ~io_in; // @[BinaryDesigns2.scala 96:16]
  assign io_out = 15'h1 + _x_T; // @[BinaryDesigns2.scala 96:14]
endmodule

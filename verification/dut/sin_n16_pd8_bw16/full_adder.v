module full_adder(
  input  [4:0] io_in_a,
  input  [4:0] io_in_b,
  output [4:0] io_out_s,
  output       io_out_c
);
  wire [5:0] _result_T = io_in_a + io_in_b; // @[BinaryDesigns2.scala 126:23]
  wire [6:0] _result_T_1 = {{1'd0}, _result_T}; // @[BinaryDesigns2.scala 126:34]
  wire [5:0] result = _result_T_1[5:0]; // @[BinaryDesigns2.scala 125:22 126:12]
  assign io_out_s = result[4:0]; // @[BinaryDesigns2.scala 127:23]
  assign io_out_c = result[5]; // @[BinaryDesigns2.scala 128:23]
endmodule

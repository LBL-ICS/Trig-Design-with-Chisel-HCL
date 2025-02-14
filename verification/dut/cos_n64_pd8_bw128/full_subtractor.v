module full_subtractor(
  input  [14:0] io_in_a,
  input  [14:0] io_in_b,
  output [14:0] io_out_s,
  output        io_out_c
);
  wire [15:0] _result_T = io_in_a - io_in_b; // @[BinaryDesigns2.scala 140:23]
  wire [16:0] _result_T_2 = _result_T - 16'h0; // @[BinaryDesigns2.scala 140:34]
  wire [15:0] result = _result_T_2[15:0]; // @[BinaryDesigns2.scala 139:22 140:12]
  assign io_out_s = result[14:0]; // @[BinaryDesigns2.scala 141:23]
  assign io_out_c = result[15]; // @[BinaryDesigns2.scala 142:23]
endmodule

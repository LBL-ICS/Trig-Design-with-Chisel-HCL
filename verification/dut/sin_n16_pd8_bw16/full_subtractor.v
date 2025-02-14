module full_subtractor(
  input  [4:0] io_in_a,
  input  [4:0] io_in_b,
  output [4:0] io_out_s,
  output       io_out_c
);
  wire [5:0] _result_T = io_in_a - io_in_b; // @[BinaryDesigns2.scala 140:23]
  wire [6:0] _result_T_2 = _result_T - 6'h0; // @[BinaryDesigns2.scala 140:34]
  wire [5:0] result = _result_T_2[5:0]; // @[BinaryDesigns2.scala 139:22 140:12]
  assign io_out_s = result[4:0]; // @[BinaryDesigns2.scala 141:23]
  assign io_out_c = result[5]; // @[BinaryDesigns2.scala 142:23]
endmodule

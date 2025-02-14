module full_subtractor(
  input  [10:0] io_in_a,
  input  [10:0] io_in_b,
  output [10:0] io_out_s,
  output        io_out_c
);
  wire [11:0] _result_T = io_in_a - io_in_b; // @[BinaryDesigns2.scala 140:23]
  wire [12:0] _result_T_2 = _result_T - 12'h0; // @[BinaryDesigns2.scala 140:34]
  wire [11:0] result = _result_T_2[11:0]; // @[BinaryDesigns2.scala 139:22 140:12]
  assign io_out_s = result[10:0]; // @[BinaryDesigns2.scala 141:23]
  assign io_out_c = result[11]; // @[BinaryDesigns2.scala 142:23]
endmodule

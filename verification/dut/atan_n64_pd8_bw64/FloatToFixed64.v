module FloatToFixed64(
  input  [63:0] io_in,
  output [63:0] io_out
);
  wire [63:0] frac = {12'h0,io_in[51:0]}; // @[FixedPoint.scala 71:46]
  wire [10:0] exp = io_in[62:52]; // @[FixedPoint.scala 72:25]
  wire  sign = io_in[63]; // @[FixedPoint.scala 73:26]
  wire [10:0] shiftamt = exp - 11'h3ff; // @[FixedPoint.scala 74:39]
  wire [63:0] _data_T_3 = frac | 64'h10000000000000; // @[FixedPoint.scala 77:18]
  wire [71:0] _GEN_0 = {_data_T_3, 8'h0}; // @[FixedPoint.scala 77:49]
  wire [78:0] _data_T_4 = {{7'd0}, _GEN_0}; // @[FixedPoint.scala 77:49]
  wire [10:0] _data_T_8 = 11'sh0 - $signed(shiftamt); // @[FixedPoint.scala 77:72]
  wire [78:0] _data_T_9 = _data_T_4 >> _data_T_8; // @[FixedPoint.scala 77:57]
  wire [10:0] _data_T_13 = exp - 11'h3ff; // @[FixedPoint.scala 78:71]
  wire [2125:0] _GEN_1 = {{2047'd0}, _data_T_4}; // @[FixedPoint.scala 78:57]
  wire [2125:0] _data_T_14 = _GEN_1 << _data_T_13; // @[FixedPoint.scala 78:57]
  wire [2125:0] data = shiftamt[10] ? {{2047'd0}, _data_T_9} : _data_T_14; // @[FixedPoint.scala 76:17]
  wire [2125:0] _io_out_T_3 = 2126'h0 - data; // @[FixedPoint.scala 79:40]
  wire [2125:0] _io_out_T_4 = sign ? _io_out_T_3 : data; // @[FixedPoint.scala 79:16]
  assign io_out = _io_out_T_4[63:0]; // @[FixedPoint.scala 79:10]
endmodule

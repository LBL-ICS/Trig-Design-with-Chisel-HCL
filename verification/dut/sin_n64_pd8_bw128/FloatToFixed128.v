module FloatToFixed128(
  input  [127:0] io_in,
  output [127:0] io_out
);
  wire [127:0] frac = {16'h0,io_in[111:0]}; // @[FixedPoint.scala 91:50]
  wire [14:0] exp = io_in[126:112]; // @[FixedPoint.scala 92:25]
  wire  sign = io_in[127]; // @[FixedPoint.scala 93:26]
  wire [14:0] _shiftamt_T_2 = exp - 15'h3fff; // @[FixedPoint.scala 94:40]
  wire [14:0] shiftamt = $signed(_shiftamt_T_2) - 15'sh40; // @[FixedPoint.scala 94:47]
  wire [127:0] _data_T_3 = frac | 128'h10000000000000000000000000000; // @[FixedPoint.scala 97:19]
  wire [143:0] _GEN_0 = {_data_T_3, 16'h0}; // @[FixedPoint.scala 97:84]
  wire [158:0] _data_T_4 = {{15'd0}, _GEN_0}; // @[FixedPoint.scala 97:84]
  wire [14:0] _data_T_8 = 15'sh0 - $signed(shiftamt); // @[FixedPoint.scala 97:108]
  wire [158:0] _data_T_9 = _data_T_4 >> _data_T_8; // @[FixedPoint.scala 97:93]
  wire [14:0] _data_T_13 = $signed(_shiftamt_T_2) - 15'sh40; // @[FixedPoint.scala 98:107]
  wire [32925:0] _GEN_1 = {{32767'd0}, _data_T_4}; // @[FixedPoint.scala 98:93]
  wire [32925:0] _data_T_14 = _GEN_1 << _data_T_13; // @[FixedPoint.scala 98:93]
  wire [32925:0] data = shiftamt[13] ? {{32767'd0}, _data_T_9} : _data_T_14; // @[FixedPoint.scala 96:17]
  wire [32925:0] _io_out_T_3 = 32926'h0 - data; // @[FixedPoint.scala 99:41]
  wire [32925:0] _io_out_T_4 = sign ? _io_out_T_3 : data; // @[FixedPoint.scala 99:16]
  assign io_out = _io_out_T_4[127:0]; // @[FixedPoint.scala 99:10]
endmodule

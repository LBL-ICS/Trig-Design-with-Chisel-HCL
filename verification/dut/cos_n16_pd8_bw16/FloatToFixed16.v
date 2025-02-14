module FloatToFixed16(
  input  [15:0] io_in,
  output [15:0] io_out
);
  wire [15:0] frac = {6'h0,io_in[9:0]}; // @[FixedPoint.scala 34:39]
  wire [4:0] exp = io_in[14:10]; // @[FixedPoint.scala 35:25]
  wire  sign = io_in[15]; // @[FixedPoint.scala 36:26]
  wire [4:0] shiftamt = exp - 5'hf; // @[FixedPoint.scala 37:36]
  wire [15:0] _data_T_3 = frac | 16'h400; // @[FixedPoint.scala 40:18]
  wire [17:0] _GEN_0 = {_data_T_3, 2'h0}; // @[FixedPoint.scala 40:36]
  wire [18:0] _data_T_4 = {{1'd0}, _GEN_0}; // @[FixedPoint.scala 40:36]
  wire [4:0] _data_T_8 = 5'sh0 - $signed(shiftamt); // @[FixedPoint.scala 40:59]
  wire [18:0] _data_T_9 = _data_T_4 >> _data_T_8; // @[FixedPoint.scala 40:44]
  wire [4:0] _data_T_13 = exp - 5'hf; // @[FixedPoint.scala 41:58]
  wire [49:0] _GEN_1 = {{31'd0}, _data_T_4}; // @[FixedPoint.scala 41:44]
  wire [49:0] _data_T_14 = _GEN_1 << _data_T_13; // @[FixedPoint.scala 41:44]
  wire [49:0] data = shiftamt[4] ? {{31'd0}, _data_T_9} : _data_T_14; // @[FixedPoint.scala 39:17]
  wire [49:0] _io_out_T_3 = 50'h0 - data; // @[FixedPoint.scala 42:40]
  wire [49:0] _io_out_T_4 = sign ? _io_out_T_3 : data; // @[FixedPoint.scala 42:16]
  assign io_out = _io_out_T_4[15:0]; // @[FixedPoint.scala 42:10]
endmodule

module CLZ16(
  input  [15:0] io_in,
  output [3:0]  io_out
);
  wire [15:0] _bx_T = io_in & 16'hff00; // @[FixedPoint.scala 135:20]
  wire  _bx_T_1 = _bx_T == 16'h0; // @[FixedPoint.scala 135:33]
  wire [23:0] _bx_T_2 = {io_in, 8'h0}; // @[FixedPoint.scala 135:45]
  wire [23:0] bx = _bx_T == 16'h0 ? _bx_T_2 : {{8'd0}, io_in}; // @[FixedPoint.scala 135:15]
  wire [23:0] _cx_T = bx & 24'hf000; // @[FixedPoint.scala 136:20]
  wire  _cx_T_1 = _cx_T == 24'h0; // @[FixedPoint.scala 136:33]
  wire [27:0] _cx_T_2 = {bx, 4'h0}; // @[FixedPoint.scala 136:45]
  wire [27:0] cx = _cx_T == 24'h0 ? _cx_T_2 : {{4'd0}, bx}; // @[FixedPoint.scala 136:15]
  wire [27:0] _dx_T = cx & 28'hc000; // @[FixedPoint.scala 137:20]
  wire  _dx_T_1 = _dx_T == 28'h0; // @[FixedPoint.scala 137:33]
  wire [29:0] _dx_T_2 = {cx, 2'h0}; // @[FixedPoint.scala 137:45]
  wire [29:0] dx = _dx_T == 28'h0 ? _dx_T_2 : {{2'd0}, cx}; // @[FixedPoint.scala 137:15]
  wire [2:0] _io_out_T_7 = {_bx_T_1,_cx_T_1,_dx_T_1}; // @[FixedPoint.scala 139:70]
  wire [29:0] _io_out_T_8 = dx & 30'h8000; // @[FixedPoint.scala 140:10]
  wire  _io_out_T_9 = _io_out_T_8 == 30'h0; // @[FixedPoint.scala 140:23]
  assign io_out = {_io_out_T_7,_io_out_T_9}; // @[FixedPoint.scala 139:100]
endmodule

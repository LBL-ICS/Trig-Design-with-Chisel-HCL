module CLZ64(
  input  [63:0] io_in,
  output [5:0]  io_out
);
  wire [63:0] _ax_T = io_in & 64'hffffffff00000000; // @[FixedPoint.scala 182:19]
  wire  _ax_T_1 = _ax_T == 64'h0; // @[FixedPoint.scala 182:28]
  wire [95:0] _ax_T_2 = {io_in, 32'h0}; // @[FixedPoint.scala 182:40]
  wire [95:0] ax = _ax_T == 64'h0 ? _ax_T_2 : {{32'd0}, io_in}; // @[FixedPoint.scala 182:14]
  wire [95:0] _bx_T = ax & 96'hffff000000000000; // @[FixedPoint.scala 183:19]
  wire  _bx_T_1 = _bx_T == 96'h0; // @[FixedPoint.scala 183:28]
  wire [111:0] _bx_T_2 = {ax, 16'h0}; // @[FixedPoint.scala 183:40]
  wire [111:0] bx = _bx_T == 96'h0 ? _bx_T_2 : {{16'd0}, ax}; // @[FixedPoint.scala 183:14]
  wire [111:0] _cx_T = bx & 112'hff00000000000000; // @[FixedPoint.scala 184:19]
  wire  _cx_T_1 = _cx_T == 112'h0; // @[FixedPoint.scala 184:28]
  wire [119:0] _cx_T_2 = {bx, 8'h0}; // @[FixedPoint.scala 184:40]
  wire [119:0] cx = _cx_T == 112'h0 ? _cx_T_2 : {{8'd0}, bx}; // @[FixedPoint.scala 184:14]
  wire [119:0] _dx_T = cx & 120'hf000000000000000; // @[FixedPoint.scala 185:19]
  wire  _dx_T_1 = _dx_T == 120'h0; // @[FixedPoint.scala 185:28]
  wire [123:0] _dx_T_2 = {cx, 4'h0}; // @[FixedPoint.scala 185:40]
  wire [123:0] dx = _dx_T == 120'h0 ? _dx_T_2 : {{4'd0}, cx}; // @[FixedPoint.scala 185:14]
  wire [123:0] _ex_T = dx & 124'hc000000000000000; // @[FixedPoint.scala 186:19]
  wire  _ex_T_1 = _ex_T == 124'h0; // @[FixedPoint.scala 186:28]
  wire [125:0] _ex_T_2 = {dx, 2'h0}; // @[FixedPoint.scala 186:40]
  wire [125:0] ex = _ex_T == 124'h0 ? _ex_T_2 : {{2'd0}, dx}; // @[FixedPoint.scala 186:14]
  wire [4:0] _io_out_T_13 = {_ax_T_1,_bx_T_1,_cx_T_1,_dx_T_1,_ex_T_1}; // @[FixedPoint.scala 189:54]
  wire [125:0] _io_out_T_14 = ex & 126'h8000000000000000; // @[FixedPoint.scala 190:36]
  assign io_out = {_io_out_T_13,_io_out_T_14 == 126'h0}; // @[FixedPoint.scala 190:28]
endmodule

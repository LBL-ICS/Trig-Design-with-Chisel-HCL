module FixedToFloat16(
  input  [15:0] io_in,
  output [15:0] io_out
);
  wire [15:0] clz16_io_in; // @[FixedPoint.scala 247:21]
  wire [3:0] clz16_io_out; // @[FixedPoint.scala 247:21]
  wire [15:0] _data_T_2 = ~io_in; // @[FixedPoint.scala 244:35]
  wire [15:0] _data_T_4 = _data_T_2 + 16'h1; // @[FixedPoint.scala 244:50]
  wire [3:0] _leadingzeros_T = clz16_io_out; // @[FixedPoint.scala 250:47]
  wire [18:0] leadingzeros = {15'h0,_leadingzeros_T}; // @[FixedPoint.scala 250:32]
  wire [3:0] _exp_T_2 = 4'sh4 - 4'sh1; // @[FixedPoint.scala 252:16]
  wire [18:0] _exp_T_3 = {15'h0,_leadingzeros_T}; // @[FixedPoint.scala 252:38]
  wire [18:0] _GEN_0 = {{15{_exp_T_2[3]}},_exp_T_2}; // @[FixedPoint.scala 252:23]
  wire [18:0] _exp_T_6 = $signed(_GEN_0) - $signed(_exp_T_3); // @[FixedPoint.scala 252:23]
  wire [18:0] _exp_T_9 = $signed(_exp_T_6) + 19'shf; // @[FixedPoint.scala 252:46]
  wire [15:0] _frac_T = io_in[15] ? _data_T_4 : io_in; // @[FixedPoint.scala 253:19]
  wire [18:0] _frac_T_2 = leadingzeros + 19'h1; // @[FixedPoint.scala 253:43]
  wire [524302:0] _GEN_3 = {{524287{_frac_T[15]}},_frac_T}; // @[FixedPoint.scala 253:26]
  wire [524302:0] _frac_T_3 = $signed(_GEN_3) << _frac_T_2; // @[FixedPoint.scala 253:26]
  wire [4:0] _frac_T_5 = 5'h10 - 5'ha; // @[FixedPoint.scala 253:75]
  wire [524302:0] _frac_T_6 = $signed(_frac_T_3) >>> _frac_T_5; // @[FixedPoint.scala 253:66]
  wire [4:0] _io_out_T_1 = _exp_T_9[4:0]; // @[FixedPoint.scala 255:30]
  wire [5:0] _io_out_T_2 = {io_in[15],_io_out_T_1}; // @[FixedPoint.scala 255:23]
  wire [9:0] _io_out_T_3 = _frac_T_6[9:0]; // @[FixedPoint.scala 255:44]
  CLZ16 clz16 ( // @[FixedPoint.scala 247:21]
    .io_in(clz16_io_in),
    .io_out(clz16_io_out)
  );
  assign io_out = {_io_out_T_2,_io_out_T_3}; // @[FixedPoint.scala 255:37]
  assign clz16_io_in = io_in[15] ? _data_T_4 : io_in; // @[FixedPoint.scala 244:14]
endmodule

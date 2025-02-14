module FixedToFloat64(
  input  [63:0] io_in,
  output [63:0] io_out
);
  wire [63:0] clz64_io_in; // @[FixedPoint.scala 301:21]
  wire [5:0] clz64_io_out; // @[FixedPoint.scala 301:21]
  wire [63:0] _data_T_2 = ~io_in; // @[FixedPoint.scala 299:35]
  wire [63:0] _data_T_4 = _data_T_2 + 64'h1; // @[FixedPoint.scala 299:50]
  wire [5:0] _leadingzeros_T = clz64_io_out; // @[FixedPoint.scala 304:47]
  wire [18:0] leadingzeros = {13'h0,_leadingzeros_T}; // @[FixedPoint.scala 304:32]
  wire [3:0] _exp_T_2 = 4'sh4 - 4'sh1; // @[FixedPoint.scala 306:16]
  wire [18:0] _exp_T_3 = {13'h0,_leadingzeros_T}; // @[FixedPoint.scala 306:38]
  wire [18:0] _GEN_0 = {{15{_exp_T_2[3]}},_exp_T_2}; // @[FixedPoint.scala 306:23]
  wire [18:0] _exp_T_6 = $signed(_GEN_0) - $signed(_exp_T_3); // @[FixedPoint.scala 306:23]
  wire [18:0] _exp_T_9 = $signed(_exp_T_6) + 19'sh3ff; // @[FixedPoint.scala 306:46]
  wire [63:0] _frac_T = io_in[63] ? _data_T_4 : io_in; // @[FixedPoint.scala 307:19]
  wire [18:0] _frac_T_2 = leadingzeros + 19'h1; // @[FixedPoint.scala 307:43]
  wire [524350:0] _GEN_3 = {{524287{_frac_T[63]}},_frac_T}; // @[FixedPoint.scala 307:26]
  wire [524350:0] _frac_T_3 = $signed(_GEN_3) << _frac_T_2; // @[FixedPoint.scala 307:26]
  wire [6:0] _frac_T_5 = 7'h40 - 7'h34; // @[FixedPoint.scala 307:75]
  wire [524350:0] _frac_T_6 = $signed(_frac_T_3) >>> _frac_T_5; // @[FixedPoint.scala 307:66]
  wire [10:0] _io_out_T_1 = _exp_T_9[10:0]; // @[FixedPoint.scala 309:30]
  wire [11:0] _io_out_T_2 = {io_in[63],_io_out_T_1}; // @[FixedPoint.scala 309:23]
  wire [51:0] _io_out_T_3 = _frac_T_6[51:0]; // @[FixedPoint.scala 309:44]
  CLZ64 clz64 ( // @[FixedPoint.scala 301:21]
    .io_in(clz64_io_in),
    .io_out(clz64_io_out)
  );
  assign io_out = {_io_out_T_2,_io_out_T_3}; // @[FixedPoint.scala 309:37]
  assign clz64_io_in = io_in[63] ? _data_T_4 : io_in; // @[FixedPoint.scala 299:14]
endmodule

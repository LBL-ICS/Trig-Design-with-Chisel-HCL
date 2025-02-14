module FixedToFloat128(
  input  [127:0] io_in,
  output [127:0] io_out
);
  wire [127:0] clz128_io_in; // @[FixedPoint.scala 329:22]
  wire [6:0] clz128_io_out; // @[FixedPoint.scala 329:22]
  wire [127:0] _data_T_2 = ~io_in; // @[FixedPoint.scala 327:36]
  wire [127:0] _data_T_4 = _data_T_2 + 128'h1; // @[FixedPoint.scala 327:51]
  wire [6:0] _leadingzeros_T = clz128_io_out; // @[FixedPoint.scala 335:50]
  wire [18:0] leadingzeros = {12'h0,_leadingzeros_T}; // @[FixedPoint.scala 335:34]
  wire [7:0] _exp_T_2 = 8'sh40 - 8'sh1; // @[FixedPoint.scala 339:19]
  wire [18:0] _exp_T_3 = {12'h0,_leadingzeros_T}; // @[FixedPoint.scala 339:41]
  wire [18:0] _GEN_0 = {{11{_exp_T_2[7]}},_exp_T_2}; // @[FixedPoint.scala 339:26]
  wire [18:0] _exp_T_6 = $signed(_GEN_0) - $signed(_exp_T_3); // @[FixedPoint.scala 339:26]
  wire [18:0] _exp_T_9 = $signed(_exp_T_6) + 19'sh3fff; // @[FixedPoint.scala 339:49]
  wire [127:0] _frac_T = io_in[127] ? _data_T_4 : io_in; // @[FixedPoint.scala 341:21]
  wire [18:0] _frac_T_2 = leadingzeros + 19'h1; // @[FixedPoint.scala 341:45]
  wire [524414:0] _GEN_3 = {{524287{_frac_T[127]}},_frac_T}; // @[FixedPoint.scala 341:28]
  wire [524414:0] _frac_T_3 = $signed(_GEN_3) << _frac_T_2; // @[FixedPoint.scala 341:28]
  wire [7:0] _frac_T_5 = 8'h80 - 8'h70; // @[FixedPoint.scala 341:78]
  wire [524414:0] _frac_T_6 = $signed(_frac_T_3) >>> _frac_T_5; // @[FixedPoint.scala 341:68]
  wire [14:0] _io_out_T_1 = _exp_T_9[14:0]; // @[FixedPoint.scala 343:33]
  wire [15:0] _io_out_T_2 = {io_in[127],_io_out_T_1}; // @[FixedPoint.scala 343:26]
  wire [111:0] _io_out_T_3 = _frac_T_6[111:0]; // @[FixedPoint.scala 343:47]
  CLZ128 clz128 ( // @[FixedPoint.scala 329:22]
    .io_in(clz128_io_in),
    .io_out(clz128_io_out)
  );
  assign io_out = {_io_out_T_2,_io_out_T_3}; // @[FixedPoint.scala 343:40]
  assign clz128_io_in = io_in[127] ? _data_T_4 : io_in; // @[FixedPoint.scala 327:14]
endmodule

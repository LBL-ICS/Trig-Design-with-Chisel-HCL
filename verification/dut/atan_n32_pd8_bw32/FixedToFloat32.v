module FixedToFloat32(
  input  [31:0] io_in,
  output [31:0] io_out
);
  wire [31:0] clz32_io_in; // @[FixedPoint.scala 275:21]
  wire [4:0] clz32_io_out; // @[FixedPoint.scala 275:21]
  wire [31:0] _data_T_2 = ~io_in; // @[FixedPoint.scala 272:35]
  wire [31:0] _data_T_4 = _data_T_2 + 32'h1; // @[FixedPoint.scala 272:50]
  wire [4:0] _leadingzeros_T = clz32_io_out; // @[FixedPoint.scala 278:47]
  wire [18:0] leadingzeros = {14'h0,_leadingzeros_T}; // @[FixedPoint.scala 278:32]
  wire [3:0] _exp_T_2 = 4'sh4 - 4'sh1; // @[FixedPoint.scala 280:16]
  wire [18:0] _exp_T_3 = {14'h0,_leadingzeros_T}; // @[FixedPoint.scala 280:38]
  wire [18:0] _GEN_0 = {{15{_exp_T_2[3]}},_exp_T_2}; // @[FixedPoint.scala 280:23]
  wire [18:0] _exp_T_6 = $signed(_GEN_0) - $signed(_exp_T_3); // @[FixedPoint.scala 280:23]
  wire [18:0] _exp_T_9 = $signed(_exp_T_6) + 19'sh7f; // @[FixedPoint.scala 280:46]
  wire [31:0] _frac_T = io_in[31] ? _data_T_4 : io_in; // @[FixedPoint.scala 281:19]
  wire [18:0] _frac_T_2 = leadingzeros + 19'h1; // @[FixedPoint.scala 281:43]
  wire [524318:0] _GEN_3 = {{524287{_frac_T[31]}},_frac_T}; // @[FixedPoint.scala 281:26]
  wire [524318:0] _frac_T_3 = $signed(_GEN_3) << _frac_T_2; // @[FixedPoint.scala 281:26]
  wire [4:0] _frac_T_5 = 5'h10 - 5'ha; // @[FixedPoint.scala 281:75]
  wire [524318:0] _frac_T_6 = $signed(_frac_T_3) >>> _frac_T_5; // @[FixedPoint.scala 281:66]
  wire [7:0] _io_out_T_1 = _exp_T_9[7:0]; // @[FixedPoint.scala 283:30]
  wire [22:0] frac = _frac_T_6[22:0]; // @[FixedPoint.scala 269:18 281:8]
  wire [18:0] _io_out_T_4 = {io_in[15],_io_out_T_1,frac[9:0]}; // @[FixedPoint.scala 283:37]
  CLZ32 clz32 ( // @[FixedPoint.scala 275:21]
    .io_in(clz32_io_in),
    .io_out(clz32_io_out)
  );
  assign io_out = {{13'd0}, _io_out_T_4}; // @[FixedPoint.scala 283:10]
  assign clz32_io_in = io_in[31] ? _data_T_4 : io_in; // @[FixedPoint.scala 272:14]
endmodule

module FP_extract(
  input  [127:0] io_in_a,
  output [127:0] io_out_frac
);
  wire [111:0] leadingOne_io_in; // @[FloatingPointDesigns.scala 894:28]
  wire [6:0] leadingOne_io_out; // @[FloatingPointDesigns.scala 894:28]
  wire [14:0] exp = io_in_a[126:112]; // @[FloatingPointDesigns.scala 888:19]
  wire [111:0] mant = io_in_a[111:0]; // @[FloatingPointDesigns.scala 890:20]
  wire [14:0] subres = exp - 15'h3fff; // @[FloatingPointDesigns.scala 898:21]
  wire [32878:0] _GEN_1 = {{32767'd0}, mant}; // @[FloatingPointDesigns.scala 901:27]
  wire [32878:0] _firstshiftf_T = _GEN_1 << subres; // @[FloatingPointDesigns.scala 901:27]
  wire [6:0] _new_exp_T_1 = 7'h70 - leadingOne_io_out; // @[FloatingPointDesigns.scala 904:39]
  wire [6:0] _new_exp_T_3 = _new_exp_T_1 + 7'h1; // @[FloatingPointDesigns.scala 904:59]
  wire [13:0] _GEN_5 = {{7'd0}, _new_exp_T_3}; // @[FloatingPointDesigns.scala 904:25]
  wire [13:0] _new_exp_T_5 = 14'h3fff - _GEN_5; // @[FloatingPointDesigns.scala 904:25]
  wire [111:0] firstshiftf = _firstshiftf_T[111:0]; // @[FloatingPointDesigns.scala 900:29 901:19]
  wire [238:0] _GEN_2 = {{127'd0}, firstshiftf}; // @[FloatingPointDesigns.scala 906:31]
  wire [238:0] _new_mant_T_4 = _GEN_2 << _new_exp_T_3; // @[FloatingPointDesigns.scala 906:31]
  wire [14:0] new_exp = {{1'd0}, _new_exp_T_5}; // @[FloatingPointDesigns.scala 903:25 904:15]
  wire [111:0] new_mant = _new_mant_T_4[111:0]; // @[FloatingPointDesigns.scala 905:26 906:16]
  wire [127:0] _result_frac_T_2 = {io_in_a[127],new_exp,new_mant}; // @[FloatingPointDesigns.scala 907:47]
  wire [14:0] _GEN_6 = {{8'd0}, _new_exp_T_3}; // @[FloatingPointDesigns.scala 913:22]
  wire [14:0] new_exp_1 = exp - _GEN_6; // @[FloatingPointDesigns.scala 913:22]
  wire [238:0] _GEN_3 = {{127'd0}, mant}; // @[FloatingPointDesigns.scala 915:24]
  wire [238:0] _new_mant_T_9 = _GEN_3 << _new_exp_T_3; // @[FloatingPointDesigns.scala 915:24]
  wire [111:0] new_mant_1 = _new_mant_T_9[111:0]; // @[FloatingPointDesigns.scala 914:26 915:16]
  wire [127:0] _result_frac_T_5 = {io_in_a[127],new_exp_1,new_mant_1}; // @[FloatingPointDesigns.scala 916:47]
  wire [127:0] _GEN_0 = exp < 15'h3fff ? io_in_a : _result_frac_T_5; // @[FloatingPointDesigns.scala 908:29 909:19 916:19]
  leadingOneDetector leadingOne ( // @[FloatingPointDesigns.scala 894:28]
    .io_in(leadingOne_io_in),
    .io_out(leadingOne_io_out)
  );
  assign io_out_frac = exp > 15'h3fff ? _result_frac_T_2 : _GEN_0; // @[FloatingPointDesigns.scala 896:24 907:19]
  assign leadingOne_io_in = exp > 15'h3fff ? firstshiftf : mant; // @[FloatingPointDesigns.scala 895:22 896:24 902:24]
endmodule

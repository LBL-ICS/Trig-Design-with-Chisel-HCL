module FP_extract(
  input  [15:0] io_in_a,
  output [15:0] io_out_frac
);
  wire [9:0] leadingOne_io_in; // @[FloatingPointDesigns.scala 894:28]
  wire [3:0] leadingOne_io_out; // @[FloatingPointDesigns.scala 894:28]
  wire [4:0] exp = io_in_a[14:10]; // @[FloatingPointDesigns.scala 888:19]
  wire [9:0] mant = io_in_a[9:0]; // @[FloatingPointDesigns.scala 890:20]
  wire [4:0] subres = exp - 5'hf; // @[FloatingPointDesigns.scala 898:21]
  wire [40:0] _GEN_1 = {{31'd0}, mant}; // @[FloatingPointDesigns.scala 901:27]
  wire [40:0] _firstshiftf_T = _GEN_1 << subres; // @[FloatingPointDesigns.scala 901:27]
  wire [3:0] _new_exp_T_1 = 4'ha - leadingOne_io_out; // @[FloatingPointDesigns.scala 904:39]
  wire [3:0] _new_exp_T_3 = _new_exp_T_1 + 4'h1; // @[FloatingPointDesigns.scala 904:59]
  wire [3:0] _new_exp_T_5 = 4'hf - _new_exp_T_3; // @[FloatingPointDesigns.scala 904:25]
  wire [9:0] firstshiftf = _firstshiftf_T[9:0]; // @[FloatingPointDesigns.scala 900:29 901:19]
  wire [24:0] _GEN_2 = {{15'd0}, firstshiftf}; // @[FloatingPointDesigns.scala 906:31]
  wire [24:0] _new_mant_T_4 = _GEN_2 << _new_exp_T_3; // @[FloatingPointDesigns.scala 906:31]
  wire [4:0] new_exp = {{1'd0}, _new_exp_T_5}; // @[FloatingPointDesigns.scala 903:25 904:15]
  wire [9:0] new_mant = _new_mant_T_4[9:0]; // @[FloatingPointDesigns.scala 905:26 906:16]
  wire [15:0] _result_frac_T_2 = {io_in_a[15],new_exp,new_mant}; // @[FloatingPointDesigns.scala 907:47]
  wire [4:0] _GEN_5 = {{1'd0}, _new_exp_T_3}; // @[FloatingPointDesigns.scala 913:22]
  wire [4:0] new_exp_1 = exp - _GEN_5; // @[FloatingPointDesigns.scala 913:22]
  wire [24:0] _GEN_3 = {{15'd0}, mant}; // @[FloatingPointDesigns.scala 915:24]
  wire [24:0] _new_mant_T_9 = _GEN_3 << _new_exp_T_3; // @[FloatingPointDesigns.scala 915:24]
  wire [9:0] new_mant_1 = _new_mant_T_9[9:0]; // @[FloatingPointDesigns.scala 914:26 915:16]
  wire [15:0] _result_frac_T_5 = {io_in_a[15],new_exp_1,new_mant_1}; // @[FloatingPointDesigns.scala 916:47]
  wire [15:0] _GEN_0 = exp < 5'hf ? io_in_a : _result_frac_T_5; // @[FloatingPointDesigns.scala 908:29 909:19 916:19]
  leadingOneDetector leadingOne ( // @[FloatingPointDesigns.scala 894:28]
    .io_in(leadingOne_io_in),
    .io_out(leadingOne_io_out)
  );
  assign io_out_frac = exp > 5'hf ? _result_frac_T_2 : _GEN_0; // @[FloatingPointDesigns.scala 896:24 907:19]
  assign leadingOne_io_in = exp > 5'hf ? firstshiftf : mant; // @[FloatingPointDesigns.scala 895:22 896:24 902:24]
endmodule

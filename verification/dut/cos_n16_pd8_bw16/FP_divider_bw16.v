module FP_divider_bw16(
  input         clock,
  input         reset,
  input  [15:0] io_in_a,
  output [15:0] io_out_s
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
`endif // RANDOMIZE_REG_INIT
  wire [4:0] postProcess_exp_subtractor_io_in_a; // @[FloatingPointDesigns2.scala 499:44]
  wire [4:0] postProcess_exp_subtractor_io_in_b; // @[FloatingPointDesigns2.scala 499:44]
  wire [4:0] postProcess_exp_subtractor_io_out_s; // @[FloatingPointDesigns2.scala 499:44]
  wire  postProcess_exp_subtractor_io_out_c; // @[FloatingPointDesigns2.scala 499:44]
  wire  divider_BW22_v3_clock; // @[FloatingPointDesigns2.scala 504:30]
  wire  divider_BW22_v3_reset; // @[FloatingPointDesigns2.scala 504:30]
  wire [21:0] divider_BW22_v3_io_in_a; // @[FloatingPointDesigns2.scala 504:30]
  wire [21:0] divider_BW22_v3_io_out_s; // @[FloatingPointDesigns2.scala 504:30]
  wire [4:0] _GEN_0 = io_in_a[14:10] < 5'h1 ? 5'h1 : io_in_a[14:10]; // @[FloatingPointDesigns2.scala 472:49 473:19 475:19]
  wire [9:0] frac_wire_0 = io_in_a[9:0]; // @[FloatingPointDesigns2.scala 487:28]
  wire [10:0] whole_frac_wire_0 = {1'h1,frac_wire_0}; // @[FloatingPointDesigns2.scala 492:31]
  reg  carry_flag_r; // @[Reg.scala 16:16]
  reg  carry_flag_r_1; // @[Reg.scala 16:16]
  reg  carry_flag_r_2; // @[Reg.scala 16:16]
  reg  carry_flag_r_3; // @[Reg.scala 16:16]
  reg  carry_flag_r_4; // @[Reg.scala 16:16]
  reg  carry_flag_r_5; // @[Reg.scala 16:16]
  reg  carry_flag_r_6; // @[Reg.scala 16:16]
  reg  carry_flag_r_7; // @[Reg.scala 16:16]
  reg  carry_flag_r_8; // @[Reg.scala 16:16]
  reg  carry_flag_r_9; // @[Reg.scala 16:16]
  reg  carry_flag; // @[Reg.scala 16:16]
  wire  msb_check = divider_BW22_v3_io_out_s[11]; // @[FloatingPointDesigns2.scala 513:39]
  reg [4:0] exp_sum_r; // @[Reg.scala 16:16]
  reg [4:0] exp_sum_r_1; // @[Reg.scala 16:16]
  reg [4:0] exp_sum_r_2; // @[Reg.scala 16:16]
  reg [4:0] exp_sum_r_3; // @[Reg.scala 16:16]
  reg [4:0] exp_sum_r_4; // @[Reg.scala 16:16]
  reg [4:0] exp_sum_r_5; // @[Reg.scala 16:16]
  reg [4:0] exp_sum_r_6; // @[Reg.scala 16:16]
  reg [4:0] exp_sum_r_7; // @[Reg.scala 16:16]
  reg [4:0] exp_sum_r_8; // @[Reg.scala 16:16]
  reg [4:0] exp_sum_r_9; // @[Reg.scala 16:16]
  reg [4:0] exp_sum; // @[Reg.scala 16:16]
  reg  new_sign_reg_r; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_1; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_2; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_3; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_4; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_5; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_6; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_7; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_8; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_9; // @[Reg.scala 16:16]
  reg  new_sign_reg; // @[Reg.scala 16:16]
  wire  _u_flag_reg_T_1 = ~msb_check; // @[FloatingPointDesigns2.scala 519:64]
  wire [4:0] _GEN_48 = {{4'd0}, _u_flag_reg_T_1}; // @[FloatingPointDesigns2.scala 519:60]
  wire [5:0] _u_flag_reg_T_2 = exp_sum - _GEN_48; // @[FloatingPointDesigns2.scala 519:60]
  wire  o_flag_reg = carry_flag | _u_flag_reg_T_2 < 6'h1; // @[FloatingPointDesigns2.scala 520:47]
  wire [4:0] _out_exp_T_1 = exp_sum - 5'h1; // @[FloatingPointDesigns2.scala 526:109]
  wire [4:0] _out_exp_T_2 = msb_check ? exp_sum : _out_exp_T_1; // @[FloatingPointDesigns2.scala 526:72]
  wire [4:0] out_exp = o_flag_reg ? 5'h1 : _out_exp_T_2; // @[FloatingPointDesigns2.scala 526:47]
  wire [9:0] _out_frac_T_2 = msb_check ? divider_BW22_v3_io_out_s[10:1] : divider_BW22_v3_io_out_s[9:0]; // @[FloatingPointDesigns2.scala 527:74]
  wire [9:0] out_frac = o_flag_reg ? 10'h0 : _out_frac_T_2; // @[FloatingPointDesigns2.scala 527:49]
  wire [5:0] _io_out_s_T = {new_sign_reg,out_exp}; // @[FloatingPointDesigns2.scala 528:26]
  full_subtractor postProcess_exp_subtractor ( // @[FloatingPointDesigns2.scala 499:44]
    .io_in_a(postProcess_exp_subtractor_io_in_a),
    .io_in_b(postProcess_exp_subtractor_io_in_b),
    .io_out_s(postProcess_exp_subtractor_io_out_s),
    .io_out_c(postProcess_exp_subtractor_io_out_c)
  );
  divider_BW22_v3 divider_BW22_v3 ( // @[FloatingPointDesigns2.scala 504:30]
    .clock(divider_BW22_v3_clock),
    .reset(divider_BW22_v3_reset),
    .io_in_a(divider_BW22_v3_io_in_a),
    .io_out_s(divider_BW22_v3_io_out_s)
  );
  assign io_out_s = {_io_out_s_T,out_frac}; // @[FloatingPointDesigns2.scala 528:37]
  assign postProcess_exp_subtractor_io_in_a = io_in_a[14:10] > 5'h1e ? 5'h1e : _GEN_0; // @[FloatingPointDesigns2.scala 470:47 471:19]
  assign postProcess_exp_subtractor_io_in_b = 5'h11 - 5'hf; // @[FloatingPointDesigns2.scala 501:55]
  assign divider_BW22_v3_clock = clock;
  assign divider_BW22_v3_reset = reset;
  assign divider_BW22_v3_io_in_a = {whole_frac_wire_0,11'h0}; // @[FloatingPointDesigns2.scala 508:45]
  always @(posedge clock) begin
    carry_flag_r <= postProcess_exp_subtractor_io_out_c; // @[FloatingPointDesigns2.scala 512:72]
    carry_flag_r_1 <= carry_flag_r; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_2 <= carry_flag_r_1; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_3 <= carry_flag_r_2; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_4 <= carry_flag_r_3; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_5 <= carry_flag_r_4; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_6 <= carry_flag_r_5; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_7 <= carry_flag_r_6; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_8 <= carry_flag_r_7; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_9 <= carry_flag_r_8; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag <= carry_flag_r_9; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r <= postProcess_exp_subtractor_io_out_s; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_1 <= exp_sum_r; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_2 <= exp_sum_r_1; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_3 <= exp_sum_r_2; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_4 <= exp_sum_r_3; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_5 <= exp_sum_r_4; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_6 <= exp_sum_r_5; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_7 <= exp_sum_r_6; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_8 <= exp_sum_r_7; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_9 <= exp_sum_r_8; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum <= exp_sum_r_9; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r <= io_in_a[15]; // @[FloatingPointDesigns2.scala 465:28]
    new_sign_reg_r_1 <= new_sign_reg_r; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_2 <= new_sign_reg_r_1; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_3 <= new_sign_reg_r_2; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_4 <= new_sign_reg_r_3; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_5 <= new_sign_reg_r_4; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_6 <= new_sign_reg_r_5; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_7 <= new_sign_reg_r_6; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_8 <= new_sign_reg_r_7; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_9 <= new_sign_reg_r_8; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg <= new_sign_reg_r_9; // @[Reg.scala 16:16 17:{18,22}]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  carry_flag_r = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  carry_flag_r_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  carry_flag_r_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  carry_flag_r_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  carry_flag_r_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  carry_flag_r_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  carry_flag_r_6 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  carry_flag_r_7 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  carry_flag_r_8 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  carry_flag_r_9 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  carry_flag = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  exp_sum_r = _RAND_11[4:0];
  _RAND_12 = {1{`RANDOM}};
  exp_sum_r_1 = _RAND_12[4:0];
  _RAND_13 = {1{`RANDOM}};
  exp_sum_r_2 = _RAND_13[4:0];
  _RAND_14 = {1{`RANDOM}};
  exp_sum_r_3 = _RAND_14[4:0];
  _RAND_15 = {1{`RANDOM}};
  exp_sum_r_4 = _RAND_15[4:0];
  _RAND_16 = {1{`RANDOM}};
  exp_sum_r_5 = _RAND_16[4:0];
  _RAND_17 = {1{`RANDOM}};
  exp_sum_r_6 = _RAND_17[4:0];
  _RAND_18 = {1{`RANDOM}};
  exp_sum_r_7 = _RAND_18[4:0];
  _RAND_19 = {1{`RANDOM}};
  exp_sum_r_8 = _RAND_19[4:0];
  _RAND_20 = {1{`RANDOM}};
  exp_sum_r_9 = _RAND_20[4:0];
  _RAND_21 = {1{`RANDOM}};
  exp_sum = _RAND_21[4:0];
  _RAND_22 = {1{`RANDOM}};
  new_sign_reg_r = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  new_sign_reg_r_1 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  new_sign_reg_r_2 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  new_sign_reg_r_3 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  new_sign_reg_r_4 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  new_sign_reg_r_5 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  new_sign_reg_r_6 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  new_sign_reg_r_7 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  new_sign_reg_r_8 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  new_sign_reg_r_9 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  new_sign_reg = _RAND_32[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

module FP_divider_bw64(
  input         clock,
  input         reset,
  input  [63:0] io_in_a,
  output [63:0] io_out_s
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
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
  reg [31:0] _RAND_152;
  reg [31:0] _RAND_153;
  reg [31:0] _RAND_154;
  reg [31:0] _RAND_155;
  reg [31:0] _RAND_156;
  reg [31:0] _RAND_157;
  reg [31:0] _RAND_158;
`endif // RANDOMIZE_REG_INIT
  wire [10:0] postProcess_exp_subtractor_io_in_a; // @[FloatingPointDesigns2.scala 499:44]
  wire [10:0] postProcess_exp_subtractor_io_in_b; // @[FloatingPointDesigns2.scala 499:44]
  wire [10:0] postProcess_exp_subtractor_io_out_s; // @[FloatingPointDesigns2.scala 499:44]
  wire  postProcess_exp_subtractor_io_out_c; // @[FloatingPointDesigns2.scala 499:44]
  wire  divider_BW106_v3_clock; // @[FloatingPointDesigns2.scala 504:30]
  wire  divider_BW106_v3_reset; // @[FloatingPointDesigns2.scala 504:30]
  wire [105:0] divider_BW106_v3_io_in_a; // @[FloatingPointDesigns2.scala 504:30]
  wire [105:0] divider_BW106_v3_io_out_s; // @[FloatingPointDesigns2.scala 504:30]
  wire [10:0] _GEN_0 = io_in_a[62:52] < 11'h1 ? 11'h1 : io_in_a[62:52]; // @[FloatingPointDesigns2.scala 472:49 473:19 475:19]
  wire [51:0] frac_wire_0 = io_in_a[51:0]; // @[FloatingPointDesigns2.scala 487:28]
  wire [52:0] whole_frac_wire_0 = {1'h1,frac_wire_0}; // @[FloatingPointDesigns2.scala 492:31]
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
  reg  carry_flag_r_10; // @[Reg.scala 16:16]
  reg  carry_flag_r_11; // @[Reg.scala 16:16]
  reg  carry_flag_r_12; // @[Reg.scala 16:16]
  reg  carry_flag_r_13; // @[Reg.scala 16:16]
  reg  carry_flag_r_14; // @[Reg.scala 16:16]
  reg  carry_flag_r_15; // @[Reg.scala 16:16]
  reg  carry_flag_r_16; // @[Reg.scala 16:16]
  reg  carry_flag_r_17; // @[Reg.scala 16:16]
  reg  carry_flag_r_18; // @[Reg.scala 16:16]
  reg  carry_flag_r_19; // @[Reg.scala 16:16]
  reg  carry_flag_r_20; // @[Reg.scala 16:16]
  reg  carry_flag_r_21; // @[Reg.scala 16:16]
  reg  carry_flag_r_22; // @[Reg.scala 16:16]
  reg  carry_flag_r_23; // @[Reg.scala 16:16]
  reg  carry_flag_r_24; // @[Reg.scala 16:16]
  reg  carry_flag_r_25; // @[Reg.scala 16:16]
  reg  carry_flag_r_26; // @[Reg.scala 16:16]
  reg  carry_flag_r_27; // @[Reg.scala 16:16]
  reg  carry_flag_r_28; // @[Reg.scala 16:16]
  reg  carry_flag_r_29; // @[Reg.scala 16:16]
  reg  carry_flag_r_30; // @[Reg.scala 16:16]
  reg  carry_flag_r_31; // @[Reg.scala 16:16]
  reg  carry_flag_r_32; // @[Reg.scala 16:16]
  reg  carry_flag_r_33; // @[Reg.scala 16:16]
  reg  carry_flag_r_34; // @[Reg.scala 16:16]
  reg  carry_flag_r_35; // @[Reg.scala 16:16]
  reg  carry_flag_r_36; // @[Reg.scala 16:16]
  reg  carry_flag_r_37; // @[Reg.scala 16:16]
  reg  carry_flag_r_38; // @[Reg.scala 16:16]
  reg  carry_flag_r_39; // @[Reg.scala 16:16]
  reg  carry_flag_r_40; // @[Reg.scala 16:16]
  reg  carry_flag_r_41; // @[Reg.scala 16:16]
  reg  carry_flag_r_42; // @[Reg.scala 16:16]
  reg  carry_flag_r_43; // @[Reg.scala 16:16]
  reg  carry_flag_r_44; // @[Reg.scala 16:16]
  reg  carry_flag_r_45; // @[Reg.scala 16:16]
  reg  carry_flag_r_46; // @[Reg.scala 16:16]
  reg  carry_flag_r_47; // @[Reg.scala 16:16]
  reg  carry_flag_r_48; // @[Reg.scala 16:16]
  reg  carry_flag_r_49; // @[Reg.scala 16:16]
  reg  carry_flag_r_50; // @[Reg.scala 16:16]
  reg  carry_flag_r_51; // @[Reg.scala 16:16]
  reg  carry_flag; // @[Reg.scala 16:16]
  wire  msb_check = divider_BW106_v3_io_out_s[53]; // @[FloatingPointDesigns2.scala 513:39]
  reg [10:0] exp_sum_r; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_1; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_2; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_3; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_4; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_5; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_6; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_7; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_8; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_9; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_10; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_11; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_12; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_13; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_14; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_15; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_16; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_17; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_18; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_19; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_20; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_21; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_22; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_23; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_24; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_25; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_26; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_27; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_28; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_29; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_30; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_31; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_32; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_33; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_34; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_35; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_36; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_37; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_38; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_39; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_40; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_41; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_42; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_43; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_44; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_45; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_46; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_47; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_48; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_49; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_50; // @[Reg.scala 16:16]
  reg [10:0] exp_sum_r_51; // @[Reg.scala 16:16]
  reg [10:0] exp_sum; // @[Reg.scala 16:16]
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
  reg  new_sign_reg_r_10; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_11; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_12; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_13; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_14; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_15; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_16; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_17; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_18; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_19; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_20; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_21; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_22; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_23; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_24; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_25; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_26; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_27; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_28; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_29; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_30; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_31; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_32; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_33; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_34; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_35; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_36; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_37; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_38; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_39; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_40; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_41; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_42; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_43; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_44; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_45; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_46; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_47; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_48; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_49; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_50; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_51; // @[Reg.scala 16:16]
  reg  new_sign_reg; // @[Reg.scala 16:16]
  wire  _u_flag_reg_T_1 = ~msb_check; // @[FloatingPointDesigns2.scala 519:64]
  wire [10:0] _GEN_216 = {{10'd0}, _u_flag_reg_T_1}; // @[FloatingPointDesigns2.scala 519:60]
  wire [11:0] _u_flag_reg_T_2 = exp_sum - _GEN_216; // @[FloatingPointDesigns2.scala 519:60]
  wire  o_flag_reg = carry_flag | _u_flag_reg_T_2 < 12'h1; // @[FloatingPointDesigns2.scala 520:47]
  wire [10:0] _out_exp_T_1 = exp_sum - 11'h1; // @[FloatingPointDesigns2.scala 526:109]
  wire [10:0] _out_exp_T_2 = msb_check ? exp_sum : _out_exp_T_1; // @[FloatingPointDesigns2.scala 526:72]
  wire [10:0] out_exp = o_flag_reg ? 11'h1 : _out_exp_T_2; // @[FloatingPointDesigns2.scala 526:47]
  wire [51:0] _out_frac_T_2 = msb_check ? divider_BW106_v3_io_out_s[52:1] : divider_BW106_v3_io_out_s[51:0]; // @[FloatingPointDesigns2.scala 527:74]
  wire [51:0] out_frac = o_flag_reg ? 52'h0 : _out_frac_T_2; // @[FloatingPointDesigns2.scala 527:49]
  wire [11:0] _io_out_s_T = {new_sign_reg,out_exp}; // @[FloatingPointDesigns2.scala 528:26]
  full_subtractor postProcess_exp_subtractor ( // @[FloatingPointDesigns2.scala 499:44]
    .io_in_a(postProcess_exp_subtractor_io_in_a),
    .io_in_b(postProcess_exp_subtractor_io_in_b),
    .io_out_s(postProcess_exp_subtractor_io_out_s),
    .io_out_c(postProcess_exp_subtractor_io_out_c)
  );
  divider_BW106_v3 divider_BW106_v3 ( // @[FloatingPointDesigns2.scala 504:30]
    .clock(divider_BW106_v3_clock),
    .reset(divider_BW106_v3_reset),
    .io_in_a(divider_BW106_v3_io_in_a),
    .io_out_s(divider_BW106_v3_io_out_s)
  );
  assign io_out_s = {_io_out_s_T,out_frac}; // @[FloatingPointDesigns2.scala 528:37]
  assign postProcess_exp_subtractor_io_in_a = io_in_a[62:52] > 11'h7fe ? 11'h7fe : _GEN_0; // @[FloatingPointDesigns2.scala 470:47 471:19]
  assign postProcess_exp_subtractor_io_in_b = 11'h401 - 11'h3ff; // @[FloatingPointDesigns2.scala 501:55]
  assign divider_BW106_v3_clock = clock;
  assign divider_BW106_v3_reset = reset;
  assign divider_BW106_v3_io_in_a = {whole_frac_wire_0,53'h0}; // @[FloatingPointDesigns2.scala 508:45]
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
    carry_flag_r_10 <= carry_flag_r_9; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_11 <= carry_flag_r_10; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_12 <= carry_flag_r_11; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_13 <= carry_flag_r_12; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_14 <= carry_flag_r_13; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_15 <= carry_flag_r_14; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_16 <= carry_flag_r_15; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_17 <= carry_flag_r_16; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_18 <= carry_flag_r_17; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_19 <= carry_flag_r_18; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_20 <= carry_flag_r_19; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_21 <= carry_flag_r_20; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_22 <= carry_flag_r_21; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_23 <= carry_flag_r_22; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_24 <= carry_flag_r_23; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_25 <= carry_flag_r_24; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_26 <= carry_flag_r_25; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_27 <= carry_flag_r_26; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_28 <= carry_flag_r_27; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_29 <= carry_flag_r_28; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_30 <= carry_flag_r_29; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_31 <= carry_flag_r_30; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_32 <= carry_flag_r_31; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_33 <= carry_flag_r_32; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_34 <= carry_flag_r_33; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_35 <= carry_flag_r_34; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_36 <= carry_flag_r_35; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_37 <= carry_flag_r_36; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_38 <= carry_flag_r_37; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_39 <= carry_flag_r_38; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_40 <= carry_flag_r_39; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_41 <= carry_flag_r_40; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_42 <= carry_flag_r_41; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_43 <= carry_flag_r_42; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_44 <= carry_flag_r_43; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_45 <= carry_flag_r_44; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_46 <= carry_flag_r_45; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_47 <= carry_flag_r_46; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_48 <= carry_flag_r_47; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_49 <= carry_flag_r_48; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_50 <= carry_flag_r_49; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_51 <= carry_flag_r_50; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag <= carry_flag_r_51; // @[Reg.scala 16:16 17:{18,22}]
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
    exp_sum_r_10 <= exp_sum_r_9; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_11 <= exp_sum_r_10; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_12 <= exp_sum_r_11; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_13 <= exp_sum_r_12; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_14 <= exp_sum_r_13; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_15 <= exp_sum_r_14; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_16 <= exp_sum_r_15; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_17 <= exp_sum_r_16; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_18 <= exp_sum_r_17; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_19 <= exp_sum_r_18; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_20 <= exp_sum_r_19; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_21 <= exp_sum_r_20; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_22 <= exp_sum_r_21; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_23 <= exp_sum_r_22; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_24 <= exp_sum_r_23; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_25 <= exp_sum_r_24; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_26 <= exp_sum_r_25; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_27 <= exp_sum_r_26; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_28 <= exp_sum_r_27; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_29 <= exp_sum_r_28; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_30 <= exp_sum_r_29; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_31 <= exp_sum_r_30; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_32 <= exp_sum_r_31; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_33 <= exp_sum_r_32; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_34 <= exp_sum_r_33; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_35 <= exp_sum_r_34; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_36 <= exp_sum_r_35; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_37 <= exp_sum_r_36; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_38 <= exp_sum_r_37; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_39 <= exp_sum_r_38; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_40 <= exp_sum_r_39; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_41 <= exp_sum_r_40; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_42 <= exp_sum_r_41; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_43 <= exp_sum_r_42; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_44 <= exp_sum_r_43; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_45 <= exp_sum_r_44; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_46 <= exp_sum_r_45; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_47 <= exp_sum_r_46; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_48 <= exp_sum_r_47; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_49 <= exp_sum_r_48; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_50 <= exp_sum_r_49; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_51 <= exp_sum_r_50; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum <= exp_sum_r_51; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r <= io_in_a[63]; // @[FloatingPointDesigns2.scala 465:28]
    new_sign_reg_r_1 <= new_sign_reg_r; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_2 <= new_sign_reg_r_1; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_3 <= new_sign_reg_r_2; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_4 <= new_sign_reg_r_3; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_5 <= new_sign_reg_r_4; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_6 <= new_sign_reg_r_5; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_7 <= new_sign_reg_r_6; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_8 <= new_sign_reg_r_7; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_9 <= new_sign_reg_r_8; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_10 <= new_sign_reg_r_9; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_11 <= new_sign_reg_r_10; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_12 <= new_sign_reg_r_11; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_13 <= new_sign_reg_r_12; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_14 <= new_sign_reg_r_13; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_15 <= new_sign_reg_r_14; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_16 <= new_sign_reg_r_15; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_17 <= new_sign_reg_r_16; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_18 <= new_sign_reg_r_17; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_19 <= new_sign_reg_r_18; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_20 <= new_sign_reg_r_19; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_21 <= new_sign_reg_r_20; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_22 <= new_sign_reg_r_21; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_23 <= new_sign_reg_r_22; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_24 <= new_sign_reg_r_23; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_25 <= new_sign_reg_r_24; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_26 <= new_sign_reg_r_25; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_27 <= new_sign_reg_r_26; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_28 <= new_sign_reg_r_27; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_29 <= new_sign_reg_r_28; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_30 <= new_sign_reg_r_29; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_31 <= new_sign_reg_r_30; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_32 <= new_sign_reg_r_31; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_33 <= new_sign_reg_r_32; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_34 <= new_sign_reg_r_33; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_35 <= new_sign_reg_r_34; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_36 <= new_sign_reg_r_35; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_37 <= new_sign_reg_r_36; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_38 <= new_sign_reg_r_37; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_39 <= new_sign_reg_r_38; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_40 <= new_sign_reg_r_39; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_41 <= new_sign_reg_r_40; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_42 <= new_sign_reg_r_41; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_43 <= new_sign_reg_r_42; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_44 <= new_sign_reg_r_43; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_45 <= new_sign_reg_r_44; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_46 <= new_sign_reg_r_45; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_47 <= new_sign_reg_r_46; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_48 <= new_sign_reg_r_47; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_49 <= new_sign_reg_r_48; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_50 <= new_sign_reg_r_49; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_51 <= new_sign_reg_r_50; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg <= new_sign_reg_r_51; // @[Reg.scala 16:16 17:{18,22}]
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
  carry_flag_r_10 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  carry_flag_r_11 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  carry_flag_r_12 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  carry_flag_r_13 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  carry_flag_r_14 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  carry_flag_r_15 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  carry_flag_r_16 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  carry_flag_r_17 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  carry_flag_r_18 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  carry_flag_r_19 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  carry_flag_r_20 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  carry_flag_r_21 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  carry_flag_r_22 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  carry_flag_r_23 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  carry_flag_r_24 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  carry_flag_r_25 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  carry_flag_r_26 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  carry_flag_r_27 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  carry_flag_r_28 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  carry_flag_r_29 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  carry_flag_r_30 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  carry_flag_r_31 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  carry_flag_r_32 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  carry_flag_r_33 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  carry_flag_r_34 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  carry_flag_r_35 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  carry_flag_r_36 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  carry_flag_r_37 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  carry_flag_r_38 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  carry_flag_r_39 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  carry_flag_r_40 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  carry_flag_r_41 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  carry_flag_r_42 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  carry_flag_r_43 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  carry_flag_r_44 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  carry_flag_r_45 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  carry_flag_r_46 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  carry_flag_r_47 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  carry_flag_r_48 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  carry_flag_r_49 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  carry_flag_r_50 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  carry_flag_r_51 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  carry_flag = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  exp_sum_r = _RAND_53[10:0];
  _RAND_54 = {1{`RANDOM}};
  exp_sum_r_1 = _RAND_54[10:0];
  _RAND_55 = {1{`RANDOM}};
  exp_sum_r_2 = _RAND_55[10:0];
  _RAND_56 = {1{`RANDOM}};
  exp_sum_r_3 = _RAND_56[10:0];
  _RAND_57 = {1{`RANDOM}};
  exp_sum_r_4 = _RAND_57[10:0];
  _RAND_58 = {1{`RANDOM}};
  exp_sum_r_5 = _RAND_58[10:0];
  _RAND_59 = {1{`RANDOM}};
  exp_sum_r_6 = _RAND_59[10:0];
  _RAND_60 = {1{`RANDOM}};
  exp_sum_r_7 = _RAND_60[10:0];
  _RAND_61 = {1{`RANDOM}};
  exp_sum_r_8 = _RAND_61[10:0];
  _RAND_62 = {1{`RANDOM}};
  exp_sum_r_9 = _RAND_62[10:0];
  _RAND_63 = {1{`RANDOM}};
  exp_sum_r_10 = _RAND_63[10:0];
  _RAND_64 = {1{`RANDOM}};
  exp_sum_r_11 = _RAND_64[10:0];
  _RAND_65 = {1{`RANDOM}};
  exp_sum_r_12 = _RAND_65[10:0];
  _RAND_66 = {1{`RANDOM}};
  exp_sum_r_13 = _RAND_66[10:0];
  _RAND_67 = {1{`RANDOM}};
  exp_sum_r_14 = _RAND_67[10:0];
  _RAND_68 = {1{`RANDOM}};
  exp_sum_r_15 = _RAND_68[10:0];
  _RAND_69 = {1{`RANDOM}};
  exp_sum_r_16 = _RAND_69[10:0];
  _RAND_70 = {1{`RANDOM}};
  exp_sum_r_17 = _RAND_70[10:0];
  _RAND_71 = {1{`RANDOM}};
  exp_sum_r_18 = _RAND_71[10:0];
  _RAND_72 = {1{`RANDOM}};
  exp_sum_r_19 = _RAND_72[10:0];
  _RAND_73 = {1{`RANDOM}};
  exp_sum_r_20 = _RAND_73[10:0];
  _RAND_74 = {1{`RANDOM}};
  exp_sum_r_21 = _RAND_74[10:0];
  _RAND_75 = {1{`RANDOM}};
  exp_sum_r_22 = _RAND_75[10:0];
  _RAND_76 = {1{`RANDOM}};
  exp_sum_r_23 = _RAND_76[10:0];
  _RAND_77 = {1{`RANDOM}};
  exp_sum_r_24 = _RAND_77[10:0];
  _RAND_78 = {1{`RANDOM}};
  exp_sum_r_25 = _RAND_78[10:0];
  _RAND_79 = {1{`RANDOM}};
  exp_sum_r_26 = _RAND_79[10:0];
  _RAND_80 = {1{`RANDOM}};
  exp_sum_r_27 = _RAND_80[10:0];
  _RAND_81 = {1{`RANDOM}};
  exp_sum_r_28 = _RAND_81[10:0];
  _RAND_82 = {1{`RANDOM}};
  exp_sum_r_29 = _RAND_82[10:0];
  _RAND_83 = {1{`RANDOM}};
  exp_sum_r_30 = _RAND_83[10:0];
  _RAND_84 = {1{`RANDOM}};
  exp_sum_r_31 = _RAND_84[10:0];
  _RAND_85 = {1{`RANDOM}};
  exp_sum_r_32 = _RAND_85[10:0];
  _RAND_86 = {1{`RANDOM}};
  exp_sum_r_33 = _RAND_86[10:0];
  _RAND_87 = {1{`RANDOM}};
  exp_sum_r_34 = _RAND_87[10:0];
  _RAND_88 = {1{`RANDOM}};
  exp_sum_r_35 = _RAND_88[10:0];
  _RAND_89 = {1{`RANDOM}};
  exp_sum_r_36 = _RAND_89[10:0];
  _RAND_90 = {1{`RANDOM}};
  exp_sum_r_37 = _RAND_90[10:0];
  _RAND_91 = {1{`RANDOM}};
  exp_sum_r_38 = _RAND_91[10:0];
  _RAND_92 = {1{`RANDOM}};
  exp_sum_r_39 = _RAND_92[10:0];
  _RAND_93 = {1{`RANDOM}};
  exp_sum_r_40 = _RAND_93[10:0];
  _RAND_94 = {1{`RANDOM}};
  exp_sum_r_41 = _RAND_94[10:0];
  _RAND_95 = {1{`RANDOM}};
  exp_sum_r_42 = _RAND_95[10:0];
  _RAND_96 = {1{`RANDOM}};
  exp_sum_r_43 = _RAND_96[10:0];
  _RAND_97 = {1{`RANDOM}};
  exp_sum_r_44 = _RAND_97[10:0];
  _RAND_98 = {1{`RANDOM}};
  exp_sum_r_45 = _RAND_98[10:0];
  _RAND_99 = {1{`RANDOM}};
  exp_sum_r_46 = _RAND_99[10:0];
  _RAND_100 = {1{`RANDOM}};
  exp_sum_r_47 = _RAND_100[10:0];
  _RAND_101 = {1{`RANDOM}};
  exp_sum_r_48 = _RAND_101[10:0];
  _RAND_102 = {1{`RANDOM}};
  exp_sum_r_49 = _RAND_102[10:0];
  _RAND_103 = {1{`RANDOM}};
  exp_sum_r_50 = _RAND_103[10:0];
  _RAND_104 = {1{`RANDOM}};
  exp_sum_r_51 = _RAND_104[10:0];
  _RAND_105 = {1{`RANDOM}};
  exp_sum = _RAND_105[10:0];
  _RAND_106 = {1{`RANDOM}};
  new_sign_reg_r = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  new_sign_reg_r_1 = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  new_sign_reg_r_2 = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  new_sign_reg_r_3 = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  new_sign_reg_r_4 = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  new_sign_reg_r_5 = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  new_sign_reg_r_6 = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  new_sign_reg_r_7 = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  new_sign_reg_r_8 = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  new_sign_reg_r_9 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  new_sign_reg_r_10 = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  new_sign_reg_r_11 = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  new_sign_reg_r_12 = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  new_sign_reg_r_13 = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  new_sign_reg_r_14 = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  new_sign_reg_r_15 = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  new_sign_reg_r_16 = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  new_sign_reg_r_17 = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  new_sign_reg_r_18 = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  new_sign_reg_r_19 = _RAND_125[0:0];
  _RAND_126 = {1{`RANDOM}};
  new_sign_reg_r_20 = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  new_sign_reg_r_21 = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  new_sign_reg_r_22 = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  new_sign_reg_r_23 = _RAND_129[0:0];
  _RAND_130 = {1{`RANDOM}};
  new_sign_reg_r_24 = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  new_sign_reg_r_25 = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  new_sign_reg_r_26 = _RAND_132[0:0];
  _RAND_133 = {1{`RANDOM}};
  new_sign_reg_r_27 = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  new_sign_reg_r_28 = _RAND_134[0:0];
  _RAND_135 = {1{`RANDOM}};
  new_sign_reg_r_29 = _RAND_135[0:0];
  _RAND_136 = {1{`RANDOM}};
  new_sign_reg_r_30 = _RAND_136[0:0];
  _RAND_137 = {1{`RANDOM}};
  new_sign_reg_r_31 = _RAND_137[0:0];
  _RAND_138 = {1{`RANDOM}};
  new_sign_reg_r_32 = _RAND_138[0:0];
  _RAND_139 = {1{`RANDOM}};
  new_sign_reg_r_33 = _RAND_139[0:0];
  _RAND_140 = {1{`RANDOM}};
  new_sign_reg_r_34 = _RAND_140[0:0];
  _RAND_141 = {1{`RANDOM}};
  new_sign_reg_r_35 = _RAND_141[0:0];
  _RAND_142 = {1{`RANDOM}};
  new_sign_reg_r_36 = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  new_sign_reg_r_37 = _RAND_143[0:0];
  _RAND_144 = {1{`RANDOM}};
  new_sign_reg_r_38 = _RAND_144[0:0];
  _RAND_145 = {1{`RANDOM}};
  new_sign_reg_r_39 = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  new_sign_reg_r_40 = _RAND_146[0:0];
  _RAND_147 = {1{`RANDOM}};
  new_sign_reg_r_41 = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  new_sign_reg_r_42 = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  new_sign_reg_r_43 = _RAND_149[0:0];
  _RAND_150 = {1{`RANDOM}};
  new_sign_reg_r_44 = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  new_sign_reg_r_45 = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  new_sign_reg_r_46 = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  new_sign_reg_r_47 = _RAND_153[0:0];
  _RAND_154 = {1{`RANDOM}};
  new_sign_reg_r_48 = _RAND_154[0:0];
  _RAND_155 = {1{`RANDOM}};
  new_sign_reg_r_49 = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  new_sign_reg_r_50 = _RAND_156[0:0];
  _RAND_157 = {1{`RANDOM}};
  new_sign_reg_r_51 = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  new_sign_reg = _RAND_158[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

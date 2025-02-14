module CORDIC(
  input         clock,
  input         reset,
  input  [63:0] io_in_z0,
  input  [63:0] io_in_mode,
  output [63:0] io_out_x,
  output [1:0]  io_out_mode
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [63:0] _RAND_23;
  reg [63:0] _RAND_24;
  reg [63:0] _RAND_25;
  reg [63:0] _RAND_26;
  reg [63:0] _RAND_27;
  reg [63:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [63:0] _RAND_30;
  reg [63:0] _RAND_31;
  reg [63:0] _RAND_32;
  reg [63:0] _RAND_33;
  reg [63:0] _RAND_34;
  reg [63:0] _RAND_35;
  reg [63:0] _RAND_36;
  reg [63:0] _RAND_37;
  reg [63:0] _RAND_38;
  reg [63:0] _RAND_39;
  reg [63:0] _RAND_40;
  reg [63:0] _RAND_41;
  reg [63:0] _RAND_42;
  reg [63:0] _RAND_43;
  reg [63:0] _RAND_44;
  reg [63:0] _RAND_45;
  reg [63:0] _RAND_46;
  reg [63:0] _RAND_47;
  reg [63:0] _RAND_48;
  reg [63:0] _RAND_49;
  reg [63:0] _RAND_50;
  reg [63:0] _RAND_51;
  reg [63:0] _RAND_52;
  reg [63:0] _RAND_53;
  reg [63:0] _RAND_54;
  reg [63:0] _RAND_55;
  reg [63:0] _RAND_56;
  reg [63:0] _RAND_57;
  reg [63:0] _RAND_58;
  reg [63:0] _RAND_59;
  reg [63:0] _RAND_60;
  reg [63:0] _RAND_61;
  reg [63:0] _RAND_62;
  reg [63:0] _RAND_63;
  reg [63:0] _RAND_64;
  reg [63:0] _RAND_65;
  reg [63:0] _RAND_66;
  reg [63:0] _RAND_67;
  reg [63:0] _RAND_68;
  reg [63:0] _RAND_69;
  reg [63:0] _RAND_70;
  reg [63:0] _RAND_71;
  reg [63:0] _RAND_72;
  reg [63:0] _RAND_73;
  reg [63:0] _RAND_74;
  reg [63:0] _RAND_75;
  reg [63:0] _RAND_76;
  reg [63:0] _RAND_77;
  reg [63:0] _RAND_78;
  reg [63:0] _RAND_79;
  reg [63:0] _RAND_80;
  reg [63:0] _RAND_81;
  reg [63:0] _RAND_82;
  reg [63:0] _RAND_83;
  reg [63:0] _RAND_84;
  reg [63:0] _RAND_85;
  reg [63:0] _RAND_86;
  reg [63:0] _RAND_87;
  reg [63:0] _RAND_88;
  reg [63:0] _RAND_89;
  reg [63:0] _RAND_90;
  reg [63:0] _RAND_91;
  reg [63:0] _RAND_92;
  reg [63:0] _RAND_93;
  reg [63:0] _RAND_94;
  reg [63:0] _RAND_95;
  reg [63:0] _RAND_96;
  reg [63:0] _RAND_97;
  reg [63:0] _RAND_98;
  reg [63:0] _RAND_99;
  reg [63:0] _RAND_100;
  reg [63:0] _RAND_101;
  reg [63:0] _RAND_102;
  reg [63:0] _RAND_103;
  reg [63:0] _RAND_104;
  reg [63:0] _RAND_105;
  reg [63:0] _RAND_106;
  reg [63:0] _RAND_107;
  reg [63:0] _RAND_108;
  reg [63:0] _RAND_109;
  reg [63:0] _RAND_110;
  reg [63:0] _RAND_111;
  reg [63:0] _RAND_112;
  reg [63:0] _RAND_113;
  reg [63:0] _RAND_114;
  reg [63:0] _RAND_115;
  reg [63:0] _RAND_116;
  reg [63:0] _RAND_117;
  reg [63:0] _RAND_118;
  reg [63:0] _RAND_119;
  reg [63:0] _RAND_120;
  reg [63:0] _RAND_121;
  reg [63:0] _RAND_122;
  reg [63:0] _RAND_123;
  reg [63:0] _RAND_124;
  reg [63:0] _RAND_125;
  reg [63:0] _RAND_126;
  reg [63:0] _RAND_127;
  reg [63:0] _RAND_128;
  reg [63:0] _RAND_129;
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
  reg [31:0] _RAND_159;
  reg [31:0] _RAND_160;
  reg [31:0] _RAND_161;
  reg [31:0] _RAND_162;
`endif // RANDOMIZE_REG_INIT
  wire [63:0] tofixedx0_io_in; // @[CORDIC.scala 337:27]
  wire [63:0] tofixedx0_io_out; // @[CORDIC.scala 337:27]
  wire [63:0] tofixedy0_io_in; // @[CORDIC.scala 338:27]
  wire [63:0] tofixedy0_io_out; // @[CORDIC.scala 338:27]
  wire [63:0] tofloatxout_io_in; // @[CORDIC.scala 731:29]
  wire [63:0] tofloatxout_io_out; // @[CORDIC.scala 731:29]
  wire [63:0] tofloatyout_io_in; // @[CORDIC.scala 732:29]
  wire [63:0] tofloatyout_io_out; // @[CORDIC.scala 732:29]
  wire [63:0] tofloatzout_io_in; // @[CORDIC.scala 733:29]
  wire [63:0] tofloatzout_io_out; // @[CORDIC.scala 733:29]
  reg [63:0] xr_0; // @[CORDIC.scala 269:19]
  reg [63:0] xr_1; // @[CORDIC.scala 269:19]
  reg [63:0] xr_2; // @[CORDIC.scala 269:19]
  reg [63:0] xr_3; // @[CORDIC.scala 269:19]
  reg [63:0] xr_4; // @[CORDIC.scala 269:19]
  reg [63:0] xr_5; // @[CORDIC.scala 269:19]
  reg [63:0] xr_6; // @[CORDIC.scala 269:19]
  reg [63:0] xr_7; // @[CORDIC.scala 269:19]
  reg [63:0] xr_8; // @[CORDIC.scala 269:19]
  reg [63:0] xr_9; // @[CORDIC.scala 269:19]
  reg [63:0] xr_10; // @[CORDIC.scala 269:19]
  reg [63:0] xr_11; // @[CORDIC.scala 269:19]
  reg [63:0] xr_12; // @[CORDIC.scala 269:19]
  reg [63:0] xr_13; // @[CORDIC.scala 269:19]
  reg [63:0] xr_14; // @[CORDIC.scala 269:19]
  reg [63:0] xr_15; // @[CORDIC.scala 269:19]
  reg [63:0] xr_16; // @[CORDIC.scala 269:19]
  reg [63:0] xr_17; // @[CORDIC.scala 269:19]
  reg [63:0] xr_18; // @[CORDIC.scala 269:19]
  reg [63:0] xr_19; // @[CORDIC.scala 269:19]
  reg [63:0] xr_20; // @[CORDIC.scala 269:19]
  reg [63:0] xr_21; // @[CORDIC.scala 269:19]
  reg [63:0] xr_22; // @[CORDIC.scala 269:19]
  reg [63:0] xr_23; // @[CORDIC.scala 269:19]
  reg [63:0] xr_24; // @[CORDIC.scala 269:19]
  reg [63:0] xr_25; // @[CORDIC.scala 269:19]
  reg [63:0] xr_26; // @[CORDIC.scala 269:19]
  reg [63:0] xr_27; // @[CORDIC.scala 269:19]
  reg [63:0] xr_28; // @[CORDIC.scala 269:19]
  reg [63:0] xr_29; // @[CORDIC.scala 269:19]
  reg [63:0] xr_30; // @[CORDIC.scala 269:19]
  reg [63:0] xr_31; // @[CORDIC.scala 269:19]
  reg [63:0] xr_32; // @[CORDIC.scala 269:19]
  reg [63:0] yr_0; // @[CORDIC.scala 270:19]
  reg [63:0] yr_1; // @[CORDIC.scala 270:19]
  reg [63:0] yr_2; // @[CORDIC.scala 270:19]
  reg [63:0] yr_3; // @[CORDIC.scala 270:19]
  reg [63:0] yr_4; // @[CORDIC.scala 270:19]
  reg [63:0] yr_5; // @[CORDIC.scala 270:19]
  reg [63:0] yr_6; // @[CORDIC.scala 270:19]
  reg [63:0] yr_7; // @[CORDIC.scala 270:19]
  reg [63:0] yr_8; // @[CORDIC.scala 270:19]
  reg [63:0] yr_9; // @[CORDIC.scala 270:19]
  reg [63:0] yr_10; // @[CORDIC.scala 270:19]
  reg [63:0] yr_11; // @[CORDIC.scala 270:19]
  reg [63:0] yr_12; // @[CORDIC.scala 270:19]
  reg [63:0] yr_13; // @[CORDIC.scala 270:19]
  reg [63:0] yr_14; // @[CORDIC.scala 270:19]
  reg [63:0] yr_15; // @[CORDIC.scala 270:19]
  reg [63:0] yr_16; // @[CORDIC.scala 270:19]
  reg [63:0] yr_17; // @[CORDIC.scala 270:19]
  reg [63:0] yr_18; // @[CORDIC.scala 270:19]
  reg [63:0] yr_19; // @[CORDIC.scala 270:19]
  reg [63:0] yr_20; // @[CORDIC.scala 270:19]
  reg [63:0] yr_21; // @[CORDIC.scala 270:19]
  reg [63:0] yr_22; // @[CORDIC.scala 270:19]
  reg [63:0] yr_23; // @[CORDIC.scala 270:19]
  reg [63:0] yr_24; // @[CORDIC.scala 270:19]
  reg [63:0] yr_25; // @[CORDIC.scala 270:19]
  reg [63:0] yr_26; // @[CORDIC.scala 270:19]
  reg [63:0] yr_27; // @[CORDIC.scala 270:19]
  reg [63:0] yr_28; // @[CORDIC.scala 270:19]
  reg [63:0] yr_29; // @[CORDIC.scala 270:19]
  reg [63:0] yr_30; // @[CORDIC.scala 270:19]
  reg [63:0] yr_31; // @[CORDIC.scala 270:19]
  reg [63:0] yr_32; // @[CORDIC.scala 270:19]
  reg [63:0] thetar_1; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_2; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_3; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_4; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_5; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_6; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_7; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_8; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_9; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_10; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_11; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_12; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_13; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_14; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_15; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_16; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_17; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_18; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_19; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_20; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_21; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_22; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_23; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_24; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_25; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_26; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_27; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_28; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_29; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_30; // @[CORDIC.scala 271:23]
  reg [63:0] thetar_31; // @[CORDIC.scala 271:23]
  reg [63:0] z0sr_0; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_1; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_2; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_3; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_4; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_5; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_6; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_7; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_8; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_9; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_10; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_11; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_12; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_13; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_14; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_15; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_16; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_17; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_18; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_19; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_20; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_21; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_22; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_23; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_24; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_25; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_26; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_27; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_28; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_29; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_30; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_31; // @[CORDIC.scala 272:21]
  reg [63:0] z0sr_32; // @[CORDIC.scala 272:21]
  reg [1:0] modesr_0; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_1; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_2; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_3; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_4; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_5; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_6; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_7; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_8; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_9; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_10; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_11; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_12; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_13; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_14; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_15; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_16; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_17; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_18; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_19; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_20; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_21; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_22; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_23; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_24; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_25; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_26; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_27; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_28; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_29; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_30; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_31; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_32; // @[CORDIC.scala 273:23]
  wire  _fxxterm_T = 64'sh0 > $signed(z0sr_0); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_3 = 64'sh0 - $signed(xr_0); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm = 64'sh0 > $signed(z0sr_0) ? $signed(_fxxterm_T_3) : $signed(xr_0); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_3 = 64'sh0 - $signed(yr_0); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm = _fxxterm_T ? $signed(_fxyterm_T_3) : $signed(yr_0); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_2 = 64'h0 - 64'hc90fdaa22168c00; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_1_T = _fxxterm_T ? _fxthetaterm_T_2 : 64'hc90fdaa22168c00; // @[CORDIC.scala 700:54]
  wire [64:0] _theta_1_T_1 = {{1{_theta_1_T[63]}},_theta_1_T}; // @[CORDIC.scala 700:40]
  wire [63:0] theta_1 = _theta_1_T_1[63:0]; // @[CORDIC.scala 700:40]
  wire [63:0] x_1 = $signed(xr_0) - $signed(fxyterm); // @[CORDIC.scala 701:32]
  wire [63:0] y_1 = $signed(fxxterm) + $signed(yr_0); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_4 = $signed(theta_1) > $signed(z0sr_0); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_7 = 64'sh0 - $signed(x_1); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_1 = $signed(theta_1) > $signed(z0sr_0) ? $signed(_fxxterm_T_7) : $signed(x_1); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_7 = 64'sh0 - $signed(y_1); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_1 = _fxxterm_T_4 ? $signed(_fxyterm_T_7) : $signed(y_1); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_5 = 64'h0 - 64'h76b19c1586ed3c0; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_2_T = _fxxterm_T_4 ? _fxthetaterm_T_5 : 64'h76b19c1586ed3c0; // @[CORDIC.scala 713:54]
  wire [63:0] theta_2 = $signed(theta_1) + $signed(_theta_2_T); // @[CORDIC.scala 713:40]
  wire [62:0] _GEN_0 = fxyterm_1[63:1]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_2_T = {{1{_GEN_0[62]}},_GEN_0}; // @[CORDIC.scala 714:43]
  wire [63:0] x_2 = $signed(x_1) - $signed(_x_2_T); // @[CORDIC.scala 714:32]
  wire [62:0] _GEN_1 = fxxterm_1[63:1]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_2_T = {{1{_GEN_1[62]}},_GEN_1}; // @[CORDIC.scala 715:32]
  wire [63:0] y_2 = $signed(_y_2_T) + $signed(y_1); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_8 = $signed(thetar_1) > $signed(z0sr_1); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_11 = 64'sh0 - $signed(xr_1); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_2 = $signed(thetar_1) > $signed(z0sr_1) ? $signed(_fxxterm_T_11) : $signed(xr_1); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_11 = 64'sh0 - $signed(yr_1); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_2 = _fxxterm_T_8 ? $signed(_fxyterm_T_11) : $signed(yr_1); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_8 = 64'h0 - 64'h3eb6ebf25901ba0; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_3_T = _fxxterm_T_8 ? _fxthetaterm_T_8 : 64'h3eb6ebf25901ba0; // @[CORDIC.scala 700:54]
  wire [63:0] theta_3 = $signed(thetar_1) + $signed(_theta_3_T); // @[CORDIC.scala 700:40]
  wire [61:0] _GEN_2 = fxyterm_2[63:2]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_3_T = {{2{_GEN_2[61]}},_GEN_2}; // @[CORDIC.scala 701:43]
  wire [63:0] x_3 = $signed(xr_1) - $signed(_x_3_T); // @[CORDIC.scala 701:32]
  wire [61:0] _GEN_3 = fxxterm_2[63:2]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_3_T = {{2{_GEN_3[61]}},_GEN_3}; // @[CORDIC.scala 702:32]
  wire [63:0] y_3 = $signed(_y_3_T) + $signed(yr_1); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_12 = $signed(theta_3) > $signed(z0sr_1); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_15 = 64'sh0 - $signed(x_3); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_3 = $signed(theta_3) > $signed(z0sr_1) ? $signed(_fxxterm_T_15) : $signed(x_3); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_15 = 64'sh0 - $signed(y_3); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_3 = _fxxterm_T_12 ? $signed(_fxyterm_T_15) : $signed(y_3); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_11 = 64'h0 - 64'h1fd5ba9aac2f6e0; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_4_T = _fxxterm_T_12 ? _fxthetaterm_T_11 : 64'h1fd5ba9aac2f6e0; // @[CORDIC.scala 713:54]
  wire [63:0] theta_4 = $signed(theta_3) + $signed(_theta_4_T); // @[CORDIC.scala 713:40]
  wire [60:0] _GEN_4 = fxyterm_3[63:3]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_4_T = {{3{_GEN_4[60]}},_GEN_4}; // @[CORDIC.scala 714:43]
  wire [63:0] x_4 = $signed(x_3) - $signed(_x_4_T); // @[CORDIC.scala 714:32]
  wire [60:0] _GEN_5 = fxxterm_3[63:3]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_4_T = {{3{_GEN_5[60]}},_GEN_5}; // @[CORDIC.scala 715:32]
  wire [63:0] y_4 = $signed(_y_4_T) + $signed(y_3); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_16 = $signed(thetar_2) > $signed(z0sr_2); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_19 = 64'sh0 - $signed(xr_2); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_4 = $signed(thetar_2) > $signed(z0sr_2) ? $signed(_fxxterm_T_19) : $signed(xr_2); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_19 = 64'sh0 - $signed(yr_2); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_4 = _fxxterm_T_16 ? $signed(_fxyterm_T_19) : $signed(yr_2); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_14 = 64'h0 - 64'hffaaddb967ef50; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_5_T = _fxxterm_T_16 ? _fxthetaterm_T_14 : 64'hffaaddb967ef50; // @[CORDIC.scala 700:54]
  wire [63:0] theta_5 = $signed(thetar_2) + $signed(_theta_5_T); // @[CORDIC.scala 700:40]
  wire [59:0] _GEN_6 = fxyterm_4[63:4]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_5_T = {{4{_GEN_6[59]}},_GEN_6}; // @[CORDIC.scala 701:43]
  wire [63:0] x_5 = $signed(xr_2) - $signed(_x_5_T); // @[CORDIC.scala 701:32]
  wire [59:0] _GEN_7 = fxxterm_4[63:4]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_5_T = {{4{_GEN_7[59]}},_GEN_7}; // @[CORDIC.scala 702:32]
  wire [63:0] y_5 = $signed(_y_5_T) + $signed(yr_2); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_20 = $signed(theta_5) > $signed(z0sr_2); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_23 = 64'sh0 - $signed(x_5); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_5 = $signed(theta_5) > $signed(z0sr_2) ? $signed(_fxxterm_T_23) : $signed(x_5); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_23 = 64'sh0 - $signed(y_5); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_5 = _fxxterm_T_20 ? $signed(_fxyterm_T_23) : $signed(y_5); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_17 = 64'h0 - 64'h7ff556eea5d894; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_6_T = _fxxterm_T_20 ? _fxthetaterm_T_17 : 64'h7ff556eea5d894; // @[CORDIC.scala 713:54]
  wire [63:0] theta_6 = $signed(theta_5) + $signed(_theta_6_T); // @[CORDIC.scala 713:40]
  wire [58:0] _GEN_8 = fxyterm_5[63:5]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_6_T = {{5{_GEN_8[58]}},_GEN_8}; // @[CORDIC.scala 714:43]
  wire [63:0] x_6 = $signed(x_5) - $signed(_x_6_T); // @[CORDIC.scala 714:32]
  wire [58:0] _GEN_9 = fxxterm_5[63:5]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_6_T = {{5{_GEN_9[58]}},_GEN_9}; // @[CORDIC.scala 715:32]
  wire [63:0] y_6 = $signed(_y_6_T) + $signed(y_5); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_24 = $signed(thetar_3) > $signed(z0sr_3); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_27 = 64'sh0 - $signed(xr_3); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_6 = $signed(thetar_3) > $signed(z0sr_3) ? $signed(_fxxterm_T_27) : $signed(xr_3); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_27 = 64'sh0 - $signed(yr_3); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_6 = _fxxterm_T_24 ? $signed(_fxyterm_T_27) : $signed(yr_3); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_20 = 64'h0 - 64'h3ffeaab776e536; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_7_T = _fxxterm_T_24 ? _fxthetaterm_T_20 : 64'h3ffeaab776e536; // @[CORDIC.scala 700:54]
  wire [63:0] theta_7 = $signed(thetar_3) + $signed(_theta_7_T); // @[CORDIC.scala 700:40]
  wire [57:0] _GEN_10 = fxyterm_6[63:6]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_7_T = {{6{_GEN_10[57]}},_GEN_10}; // @[CORDIC.scala 701:43]
  wire [63:0] x_7 = $signed(xr_3) - $signed(_x_7_T); // @[CORDIC.scala 701:32]
  wire [57:0] _GEN_11 = fxxterm_6[63:6]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_7_T = {{6{_GEN_11[57]}},_GEN_11}; // @[CORDIC.scala 702:32]
  wire [63:0] y_7 = $signed(_y_7_T) + $signed(yr_3); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_28 = $signed(theta_7) > $signed(z0sr_3); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_31 = 64'sh0 - $signed(x_7); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_7 = $signed(theta_7) > $signed(z0sr_3) ? $signed(_fxxterm_T_31) : $signed(x_7); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_31 = 64'sh0 - $signed(y_7); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_7 = _fxxterm_T_28 ? $signed(_fxyterm_T_31) : $signed(y_7); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_23 = 64'h0 - 64'h1fffd555bbba97; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_8_T = _fxxterm_T_28 ? _fxthetaterm_T_23 : 64'h1fffd555bbba97; // @[CORDIC.scala 713:54]
  wire [63:0] theta_8 = $signed(theta_7) + $signed(_theta_8_T); // @[CORDIC.scala 713:40]
  wire [56:0] _GEN_12 = fxyterm_7[63:7]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_8_T = {{7{_GEN_12[56]}},_GEN_12}; // @[CORDIC.scala 714:43]
  wire [63:0] x_8 = $signed(x_7) - $signed(_x_8_T); // @[CORDIC.scala 714:32]
  wire [56:0] _GEN_13 = fxxterm_7[63:7]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_8_T = {{7{_GEN_13[56]}},_GEN_13}; // @[CORDIC.scala 715:32]
  wire [63:0] y_8 = $signed(_y_8_T) + $signed(y_7); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_32 = $signed(thetar_4) > $signed(z0sr_4); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_35 = 64'sh0 - $signed(xr_4); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_8 = $signed(thetar_4) > $signed(z0sr_4) ? $signed(_fxxterm_T_35) : $signed(xr_4); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_35 = 64'sh0 - $signed(yr_4); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_8 = _fxxterm_T_32 ? $signed(_fxyterm_T_35) : $signed(yr_4); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_26 = 64'h0 - 64'hffffaaaaddddb; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_9_T = _fxxterm_T_32 ? _fxthetaterm_T_26 : 64'hffffaaaaddddb; // @[CORDIC.scala 700:54]
  wire [63:0] theta_9 = $signed(thetar_4) + $signed(_theta_9_T); // @[CORDIC.scala 700:40]
  wire [55:0] _GEN_14 = fxyterm_8[63:8]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_9_T = {{8{_GEN_14[55]}},_GEN_14}; // @[CORDIC.scala 701:43]
  wire [63:0] x_9 = $signed(xr_4) - $signed(_x_9_T); // @[CORDIC.scala 701:32]
  wire [55:0] _GEN_15 = fxxterm_8[63:8]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_9_T = {{8{_GEN_15[55]}},_GEN_15}; // @[CORDIC.scala 702:32]
  wire [63:0] y_9 = $signed(_y_9_T) + $signed(yr_4); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_36 = $signed(theta_9) > $signed(z0sr_4); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_39 = 64'sh0 - $signed(x_9); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_9 = $signed(theta_9) > $signed(z0sr_4) ? $signed(_fxxterm_T_39) : $signed(x_9); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_39 = 64'sh0 - $signed(y_9); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_9 = _fxxterm_T_36 ? $signed(_fxyterm_T_39) : $signed(y_9); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_29 = 64'h0 - 64'h7ffff55556eef; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_10_T = _fxxterm_T_36 ? _fxthetaterm_T_29 : 64'h7ffff55556eef; // @[CORDIC.scala 713:54]
  wire [63:0] theta_10 = $signed(theta_9) + $signed(_theta_10_T); // @[CORDIC.scala 713:40]
  wire [54:0] _GEN_16 = fxyterm_9[63:9]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_10_T = {{9{_GEN_16[54]}},_GEN_16}; // @[CORDIC.scala 714:43]
  wire [63:0] x_10 = $signed(x_9) - $signed(_x_10_T); // @[CORDIC.scala 714:32]
  wire [54:0] _GEN_17 = fxxterm_9[63:9]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_10_T = {{9{_GEN_17[54]}},_GEN_17}; // @[CORDIC.scala 715:32]
  wire [63:0] y_10 = $signed(_y_10_T) + $signed(y_9); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_40 = $signed(thetar_5) > $signed(z0sr_5); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_43 = 64'sh0 - $signed(xr_5); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_10 = $signed(thetar_5) > $signed(z0sr_5) ? $signed(_fxxterm_T_43) : $signed(xr_5); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_43 = 64'sh0 - $signed(yr_5); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_10 = _fxxterm_T_40 ? $signed(_fxyterm_T_43) : $signed(yr_5); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_32 = 64'h0 - 64'h3ffffeaaaab77; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_11_T = _fxxterm_T_40 ? _fxthetaterm_T_32 : 64'h3ffffeaaaab77; // @[CORDIC.scala 700:54]
  wire [63:0] theta_11 = $signed(thetar_5) + $signed(_theta_11_T); // @[CORDIC.scala 700:40]
  wire [53:0] _GEN_18 = fxyterm_10[63:10]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_11_T = {{10{_GEN_18[53]}},_GEN_18}; // @[CORDIC.scala 701:43]
  wire [63:0] x_11 = $signed(xr_5) - $signed(_x_11_T); // @[CORDIC.scala 701:32]
  wire [53:0] _GEN_19 = fxxterm_10[63:10]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_11_T = {{10{_GEN_19[53]}},_GEN_19}; // @[CORDIC.scala 702:32]
  wire [63:0] y_11 = $signed(_y_11_T) + $signed(yr_5); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_44 = $signed(theta_11) > $signed(z0sr_5); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_47 = 64'sh0 - $signed(x_11); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_11 = $signed(theta_11) > $signed(z0sr_5) ? $signed(_fxxterm_T_47) : $signed(x_11); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_47 = 64'sh0 - $signed(y_11); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_11 = _fxxterm_T_44 ? $signed(_fxyterm_T_47) : $signed(y_11); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_35 = 64'h0 - 64'h1fffffd55555b; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_12_T = _fxxterm_T_44 ? _fxthetaterm_T_35 : 64'h1fffffd55555b; // @[CORDIC.scala 713:54]
  wire [63:0] theta_12 = $signed(theta_11) + $signed(_theta_12_T); // @[CORDIC.scala 713:40]
  wire [52:0] _GEN_20 = fxyterm_11[63:11]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_12_T = {{11{_GEN_20[52]}},_GEN_20}; // @[CORDIC.scala 714:43]
  wire [63:0] x_12 = $signed(x_11) - $signed(_x_12_T); // @[CORDIC.scala 714:32]
  wire [52:0] _GEN_21 = fxxterm_11[63:11]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_12_T = {{11{_GEN_21[52]}},_GEN_21}; // @[CORDIC.scala 715:32]
  wire [63:0] y_12 = $signed(_y_12_T) + $signed(y_11); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_48 = $signed(thetar_6) > $signed(z0sr_6); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_51 = 64'sh0 - $signed(xr_6); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_12 = $signed(thetar_6) > $signed(z0sr_6) ? $signed(_fxxterm_T_51) : $signed(xr_6); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_51 = 64'sh0 - $signed(yr_6); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_12 = _fxxterm_T_48 ? $signed(_fxyterm_T_51) : $signed(yr_6); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_38 = 64'h0 - 64'hffffffaaaaaa; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_13_T = _fxxterm_T_48 ? _fxthetaterm_T_38 : 64'hffffffaaaaaa; // @[CORDIC.scala 700:54]
  wire [63:0] theta_13 = $signed(thetar_6) + $signed(_theta_13_T); // @[CORDIC.scala 700:40]
  wire [51:0] _GEN_22 = fxyterm_12[63:12]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_13_T = {{12{_GEN_22[51]}},_GEN_22}; // @[CORDIC.scala 701:43]
  wire [63:0] x_13 = $signed(xr_6) - $signed(_x_13_T); // @[CORDIC.scala 701:32]
  wire [51:0] _GEN_23 = fxxterm_12[63:12]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_13_T = {{12{_GEN_23[51]}},_GEN_23}; // @[CORDIC.scala 702:32]
  wire [63:0] y_13 = $signed(_y_13_T) + $signed(yr_6); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_52 = $signed(theta_13) > $signed(z0sr_6); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_55 = 64'sh0 - $signed(x_13); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_13 = $signed(theta_13) > $signed(z0sr_6) ? $signed(_fxxterm_T_55) : $signed(x_13); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_55 = 64'sh0 - $signed(y_13); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_13 = _fxxterm_T_52 ? $signed(_fxyterm_T_55) : $signed(y_13); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_41 = 64'h0 - 64'h7ffffff55555; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_14_T = _fxxterm_T_52 ? _fxthetaterm_T_41 : 64'h7ffffff55555; // @[CORDIC.scala 713:54]
  wire [63:0] theta_14 = $signed(theta_13) + $signed(_theta_14_T); // @[CORDIC.scala 713:40]
  wire [50:0] _GEN_24 = fxyterm_13[63:13]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_14_T = {{13{_GEN_24[50]}},_GEN_24}; // @[CORDIC.scala 714:43]
  wire [63:0] x_14 = $signed(x_13) - $signed(_x_14_T); // @[CORDIC.scala 714:32]
  wire [50:0] _GEN_25 = fxxterm_13[63:13]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_14_T = {{13{_GEN_25[50]}},_GEN_25}; // @[CORDIC.scala 715:32]
  wire [63:0] y_14 = $signed(_y_14_T) + $signed(y_13); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_56 = $signed(thetar_7) > $signed(z0sr_7); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_59 = 64'sh0 - $signed(xr_7); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_14 = $signed(thetar_7) > $signed(z0sr_7) ? $signed(_fxxterm_T_59) : $signed(xr_7); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_59 = 64'sh0 - $signed(yr_7); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_14 = _fxxterm_T_56 ? $signed(_fxyterm_T_59) : $signed(yr_7); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_44 = 64'h0 - 64'h3ffffffeaaaa; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_15_T = _fxxterm_T_56 ? _fxthetaterm_T_44 : 64'h3ffffffeaaaa; // @[CORDIC.scala 700:54]
  wire [63:0] theta_15 = $signed(thetar_7) + $signed(_theta_15_T); // @[CORDIC.scala 700:40]
  wire [49:0] _GEN_26 = fxyterm_14[63:14]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_15_T = {{14{_GEN_26[49]}},_GEN_26}; // @[CORDIC.scala 701:43]
  wire [63:0] x_15 = $signed(xr_7) - $signed(_x_15_T); // @[CORDIC.scala 701:32]
  wire [49:0] _GEN_27 = fxxterm_14[63:14]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_15_T = {{14{_GEN_27[49]}},_GEN_27}; // @[CORDIC.scala 702:32]
  wire [63:0] y_15 = $signed(_y_15_T) + $signed(yr_7); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_60 = $signed(theta_15) > $signed(z0sr_7); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_63 = 64'sh0 - $signed(x_15); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_15 = $signed(theta_15) > $signed(z0sr_7) ? $signed(_fxxterm_T_63) : $signed(x_15); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_63 = 64'sh0 - $signed(y_15); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_15 = _fxxterm_T_60 ? $signed(_fxyterm_T_63) : $signed(y_15); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_47 = 64'h0 - 64'h1fffffffd555; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_16_T = _fxxterm_T_60 ? _fxthetaterm_T_47 : 64'h1fffffffd555; // @[CORDIC.scala 713:54]
  wire [63:0] theta_16 = $signed(theta_15) + $signed(_theta_16_T); // @[CORDIC.scala 713:40]
  wire [48:0] _GEN_28 = fxyterm_15[63:15]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_16_T = {{15{_GEN_28[48]}},_GEN_28}; // @[CORDIC.scala 714:43]
  wire [63:0] x_16 = $signed(x_15) - $signed(_x_16_T); // @[CORDIC.scala 714:32]
  wire [48:0] _GEN_29 = fxxterm_15[63:15]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_16_T = {{15{_GEN_29[48]}},_GEN_29}; // @[CORDIC.scala 715:32]
  wire [63:0] y_16 = $signed(_y_16_T) + $signed(y_15); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_64 = $signed(thetar_8) > $signed(z0sr_8); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_67 = 64'sh0 - $signed(xr_8); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_16 = $signed(thetar_8) > $signed(z0sr_8) ? $signed(_fxxterm_T_67) : $signed(xr_8); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_67 = 64'sh0 - $signed(yr_8); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_16 = _fxxterm_T_64 ? $signed(_fxyterm_T_67) : $signed(yr_8); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_50 = 64'h0 - 64'hffffffffaaa; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_17_T = _fxxterm_T_64 ? _fxthetaterm_T_50 : 64'hffffffffaaa; // @[CORDIC.scala 700:54]
  wire [63:0] theta_17 = $signed(thetar_8) + $signed(_theta_17_T); // @[CORDIC.scala 700:40]
  wire [47:0] _GEN_30 = fxyterm_16[63:16]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_17_T = {{16{_GEN_30[47]}},_GEN_30}; // @[CORDIC.scala 701:43]
  wire [63:0] x_17 = $signed(xr_8) - $signed(_x_17_T); // @[CORDIC.scala 701:32]
  wire [47:0] _GEN_31 = fxxterm_16[63:16]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_17_T = {{16{_GEN_31[47]}},_GEN_31}; // @[CORDIC.scala 702:32]
  wire [63:0] y_17 = $signed(_y_17_T) + $signed(yr_8); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_68 = $signed(theta_17) > $signed(z0sr_8); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_71 = 64'sh0 - $signed(x_17); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_17 = $signed(theta_17) > $signed(z0sr_8) ? $signed(_fxxterm_T_71) : $signed(x_17); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_71 = 64'sh0 - $signed(y_17); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_17 = _fxxterm_T_68 ? $signed(_fxyterm_T_71) : $signed(y_17); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_53 = 64'h0 - 64'h7ffffffff55; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_18_T = _fxxterm_T_68 ? _fxthetaterm_T_53 : 64'h7ffffffff55; // @[CORDIC.scala 713:54]
  wire [63:0] theta_18 = $signed(theta_17) + $signed(_theta_18_T); // @[CORDIC.scala 713:40]
  wire [46:0] _GEN_32 = fxyterm_17[63:17]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_18_T = {{17{_GEN_32[46]}},_GEN_32}; // @[CORDIC.scala 714:43]
  wire [63:0] x_18 = $signed(x_17) - $signed(_x_18_T); // @[CORDIC.scala 714:32]
  wire [46:0] _GEN_33 = fxxterm_17[63:17]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_18_T = {{17{_GEN_33[46]}},_GEN_33}; // @[CORDIC.scala 715:32]
  wire [63:0] y_18 = $signed(_y_18_T) + $signed(y_17); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_72 = $signed(thetar_9) > $signed(z0sr_9); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_75 = 64'sh0 - $signed(xr_9); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_18 = $signed(thetar_9) > $signed(z0sr_9) ? $signed(_fxxterm_T_75) : $signed(xr_9); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_75 = 64'sh0 - $signed(yr_9); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_18 = _fxxterm_T_72 ? $signed(_fxyterm_T_75) : $signed(yr_9); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_56 = 64'h0 - 64'h3ffffffffea; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_19_T = _fxxterm_T_72 ? _fxthetaterm_T_56 : 64'h3ffffffffea; // @[CORDIC.scala 700:54]
  wire [63:0] theta_19 = $signed(thetar_9) + $signed(_theta_19_T); // @[CORDIC.scala 700:40]
  wire [45:0] _GEN_34 = fxyterm_18[63:18]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_19_T = {{18{_GEN_34[45]}},_GEN_34}; // @[CORDIC.scala 701:43]
  wire [63:0] x_19 = $signed(xr_9) - $signed(_x_19_T); // @[CORDIC.scala 701:32]
  wire [45:0] _GEN_35 = fxxterm_18[63:18]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_19_T = {{18{_GEN_35[45]}},_GEN_35}; // @[CORDIC.scala 702:32]
  wire [63:0] y_19 = $signed(_y_19_T) + $signed(yr_9); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_76 = $signed(theta_19) > $signed(z0sr_9); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_79 = 64'sh0 - $signed(x_19); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_19 = $signed(theta_19) > $signed(z0sr_9) ? $signed(_fxxterm_T_79) : $signed(x_19); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_79 = 64'sh0 - $signed(y_19); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_19 = _fxxterm_T_76 ? $signed(_fxyterm_T_79) : $signed(y_19); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_59 = 64'h0 - 64'h1fffffffffd; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_20_T = _fxxterm_T_76 ? _fxthetaterm_T_59 : 64'h1fffffffffd; // @[CORDIC.scala 713:54]
  wire [63:0] theta_20 = $signed(theta_19) + $signed(_theta_20_T); // @[CORDIC.scala 713:40]
  wire [44:0] _GEN_36 = fxyterm_19[63:19]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_20_T = {{19{_GEN_36[44]}},_GEN_36}; // @[CORDIC.scala 714:43]
  wire [63:0] x_20 = $signed(x_19) - $signed(_x_20_T); // @[CORDIC.scala 714:32]
  wire [44:0] _GEN_37 = fxxterm_19[63:19]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_20_T = {{19{_GEN_37[44]}},_GEN_37}; // @[CORDIC.scala 715:32]
  wire [63:0] y_20 = $signed(_y_20_T) + $signed(y_19); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_80 = $signed(thetar_10) > $signed(z0sr_10); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_83 = 64'sh0 - $signed(xr_10); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_20 = $signed(thetar_10) > $signed(z0sr_10) ? $signed(_fxxterm_T_83) : $signed(xr_10); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_83 = 64'sh0 - $signed(yr_10); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_20 = _fxxterm_T_80 ? $signed(_fxyterm_T_83) : $signed(yr_10); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_62 = 64'h0 - 64'hffffffffff; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_21_T = _fxxterm_T_80 ? _fxthetaterm_T_62 : 64'hffffffffff; // @[CORDIC.scala 700:54]
  wire [63:0] theta_21 = $signed(thetar_10) + $signed(_theta_21_T); // @[CORDIC.scala 700:40]
  wire [43:0] _GEN_38 = fxyterm_20[63:20]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_21_T = {{20{_GEN_38[43]}},_GEN_38}; // @[CORDIC.scala 701:43]
  wire [63:0] x_21 = $signed(xr_10) - $signed(_x_21_T); // @[CORDIC.scala 701:32]
  wire [43:0] _GEN_39 = fxxterm_20[63:20]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_21_T = {{20{_GEN_39[43]}},_GEN_39}; // @[CORDIC.scala 702:32]
  wire [63:0] y_21 = $signed(_y_21_T) + $signed(yr_10); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_84 = $signed(theta_21) > $signed(z0sr_10); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_87 = 64'sh0 - $signed(x_21); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_21 = $signed(theta_21) > $signed(z0sr_10) ? $signed(_fxxterm_T_87) : $signed(x_21); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_87 = 64'sh0 - $signed(y_21); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_21 = _fxxterm_T_84 ? $signed(_fxyterm_T_87) : $signed(y_21); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_65 = 64'h0 - 64'h7fffffffff; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_22_T = _fxxterm_T_84 ? _fxthetaterm_T_65 : 64'h7fffffffff; // @[CORDIC.scala 713:54]
  wire [63:0] theta_22 = $signed(theta_21) + $signed(_theta_22_T); // @[CORDIC.scala 713:40]
  wire [42:0] _GEN_40 = fxyterm_21[63:21]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_22_T = {{21{_GEN_40[42]}},_GEN_40}; // @[CORDIC.scala 714:43]
  wire [63:0] x_22 = $signed(x_21) - $signed(_x_22_T); // @[CORDIC.scala 714:32]
  wire [42:0] _GEN_41 = fxxterm_21[63:21]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_22_T = {{21{_GEN_41[42]}},_GEN_41}; // @[CORDIC.scala 715:32]
  wire [63:0] y_22 = $signed(_y_22_T) + $signed(y_21); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_88 = $signed(thetar_11) > $signed(z0sr_11); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_91 = 64'sh0 - $signed(xr_11); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_22 = $signed(thetar_11) > $signed(z0sr_11) ? $signed(_fxxterm_T_91) : $signed(xr_11); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_91 = 64'sh0 - $signed(yr_11); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_22 = _fxxterm_T_88 ? $signed(_fxyterm_T_91) : $signed(yr_11); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_68 = 64'h0 - 64'h3fffffffff; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_23_T = _fxxterm_T_88 ? _fxthetaterm_T_68 : 64'h3fffffffff; // @[CORDIC.scala 700:54]
  wire [63:0] theta_23 = $signed(thetar_11) + $signed(_theta_23_T); // @[CORDIC.scala 700:40]
  wire [41:0] _GEN_42 = fxyterm_22[63:22]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_23_T = {{22{_GEN_42[41]}},_GEN_42}; // @[CORDIC.scala 701:43]
  wire [63:0] x_23 = $signed(xr_11) - $signed(_x_23_T); // @[CORDIC.scala 701:32]
  wire [41:0] _GEN_43 = fxxterm_22[63:22]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_23_T = {{22{_GEN_43[41]}},_GEN_43}; // @[CORDIC.scala 702:32]
  wire [63:0] y_23 = $signed(_y_23_T) + $signed(yr_11); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_92 = $signed(theta_23) > $signed(z0sr_11); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_95 = 64'sh0 - $signed(x_23); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_23 = $signed(theta_23) > $signed(z0sr_11) ? $signed(_fxxterm_T_95) : $signed(x_23); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_95 = 64'sh0 - $signed(y_23); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_23 = _fxxterm_T_92 ? $signed(_fxyterm_T_95) : $signed(y_23); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_71 = 64'h0 - 64'h1fffffffff; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_24_T = _fxxterm_T_92 ? _fxthetaterm_T_71 : 64'h1fffffffff; // @[CORDIC.scala 713:54]
  wire [63:0] theta_24 = $signed(theta_23) + $signed(_theta_24_T); // @[CORDIC.scala 713:40]
  wire [40:0] _GEN_44 = fxyterm_23[63:23]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_24_T = {{23{_GEN_44[40]}},_GEN_44}; // @[CORDIC.scala 714:43]
  wire [63:0] x_24 = $signed(x_23) - $signed(_x_24_T); // @[CORDIC.scala 714:32]
  wire [40:0] _GEN_45 = fxxterm_23[63:23]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_24_T = {{23{_GEN_45[40]}},_GEN_45}; // @[CORDIC.scala 715:32]
  wire [63:0] y_24 = $signed(_y_24_T) + $signed(y_23); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_96 = $signed(thetar_12) > $signed(z0sr_12); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_99 = 64'sh0 - $signed(xr_12); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_24 = $signed(thetar_12) > $signed(z0sr_12) ? $signed(_fxxterm_T_99) : $signed(xr_12); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_99 = 64'sh0 - $signed(yr_12); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_24 = _fxxterm_T_96 ? $signed(_fxyterm_T_99) : $signed(yr_12); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_74 = 64'h0 - 64'hfffffffff; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_25_T = _fxxterm_T_96 ? _fxthetaterm_T_74 : 64'hfffffffff; // @[CORDIC.scala 700:54]
  wire [63:0] theta_25 = $signed(thetar_12) + $signed(_theta_25_T); // @[CORDIC.scala 700:40]
  wire [39:0] _GEN_46 = fxyterm_24[63:24]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_25_T = {{24{_GEN_46[39]}},_GEN_46}; // @[CORDIC.scala 701:43]
  wire [63:0] x_25 = $signed(xr_12) - $signed(_x_25_T); // @[CORDIC.scala 701:32]
  wire [39:0] _GEN_47 = fxxterm_24[63:24]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_25_T = {{24{_GEN_47[39]}},_GEN_47}; // @[CORDIC.scala 702:32]
  wire [63:0] y_25 = $signed(_y_25_T) + $signed(yr_12); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_100 = $signed(theta_25) > $signed(z0sr_12); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_103 = 64'sh0 - $signed(x_25); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_25 = $signed(theta_25) > $signed(z0sr_12) ? $signed(_fxxterm_T_103) : $signed(x_25); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_103 = 64'sh0 - $signed(y_25); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_25 = _fxxterm_T_100 ? $signed(_fxyterm_T_103) : $signed(y_25); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_77 = 64'h0 - 64'h7ffffffff; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_26_T = _fxxterm_T_100 ? _fxthetaterm_T_77 : 64'h7ffffffff; // @[CORDIC.scala 713:54]
  wire [63:0] theta_26 = $signed(theta_25) + $signed(_theta_26_T); // @[CORDIC.scala 713:40]
  wire [38:0] _GEN_48 = fxyterm_25[63:25]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_26_T = {{25{_GEN_48[38]}},_GEN_48}; // @[CORDIC.scala 714:43]
  wire [63:0] x_26 = $signed(x_25) - $signed(_x_26_T); // @[CORDIC.scala 714:32]
  wire [38:0] _GEN_49 = fxxterm_25[63:25]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_26_T = {{25{_GEN_49[38]}},_GEN_49}; // @[CORDIC.scala 715:32]
  wire [63:0] y_26 = $signed(_y_26_T) + $signed(y_25); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_104 = $signed(thetar_13) > $signed(z0sr_13); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_107 = 64'sh0 - $signed(xr_13); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_26 = $signed(thetar_13) > $signed(z0sr_13) ? $signed(_fxxterm_T_107) : $signed(xr_13); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_107 = 64'sh0 - $signed(yr_13); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_26 = _fxxterm_T_104 ? $signed(_fxyterm_T_107) : $signed(yr_13); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_80 = 64'h0 - 64'h3ffffffff; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_27_T = _fxxterm_T_104 ? _fxthetaterm_T_80 : 64'h3ffffffff; // @[CORDIC.scala 700:54]
  wire [63:0] theta_27 = $signed(thetar_13) + $signed(_theta_27_T); // @[CORDIC.scala 700:40]
  wire [37:0] _GEN_50 = fxyterm_26[63:26]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_27_T = {{26{_GEN_50[37]}},_GEN_50}; // @[CORDIC.scala 701:43]
  wire [63:0] x_27 = $signed(xr_13) - $signed(_x_27_T); // @[CORDIC.scala 701:32]
  wire [37:0] _GEN_51 = fxxterm_26[63:26]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_27_T = {{26{_GEN_51[37]}},_GEN_51}; // @[CORDIC.scala 702:32]
  wire [63:0] y_27 = $signed(_y_27_T) + $signed(yr_13); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_108 = $signed(theta_27) > $signed(z0sr_13); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_111 = 64'sh0 - $signed(x_27); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_27 = $signed(theta_27) > $signed(z0sr_13) ? $signed(_fxxterm_T_111) : $signed(x_27); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_111 = 64'sh0 - $signed(y_27); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_27 = _fxxterm_T_108 ? $signed(_fxyterm_T_111) : $signed(y_27); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_83 = 64'h0 - 64'h200000000; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_28_T = _fxxterm_T_108 ? _fxthetaterm_T_83 : 64'h200000000; // @[CORDIC.scala 713:54]
  wire [63:0] theta_28 = $signed(theta_27) + $signed(_theta_28_T); // @[CORDIC.scala 713:40]
  wire [36:0] _GEN_52 = fxyterm_27[63:27]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_28_T = {{27{_GEN_52[36]}},_GEN_52}; // @[CORDIC.scala 714:43]
  wire [63:0] x_28 = $signed(x_27) - $signed(_x_28_T); // @[CORDIC.scala 714:32]
  wire [36:0] _GEN_53 = fxxterm_27[63:27]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_28_T = {{27{_GEN_53[36]}},_GEN_53}; // @[CORDIC.scala 715:32]
  wire [63:0] y_28 = $signed(_y_28_T) + $signed(y_27); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_112 = $signed(thetar_14) > $signed(z0sr_14); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_115 = 64'sh0 - $signed(xr_14); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_28 = $signed(thetar_14) > $signed(z0sr_14) ? $signed(_fxxterm_T_115) : $signed(xr_14); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_115 = 64'sh0 - $signed(yr_14); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_28 = _fxxterm_T_112 ? $signed(_fxyterm_T_115) : $signed(yr_14); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_86 = 64'h0 - 64'h100000000; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_29_T = _fxxterm_T_112 ? _fxthetaterm_T_86 : 64'h100000000; // @[CORDIC.scala 700:54]
  wire [63:0] theta_29 = $signed(thetar_14) + $signed(_theta_29_T); // @[CORDIC.scala 700:40]
  wire [35:0] _GEN_54 = fxyterm_28[63:28]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_29_T = {{28{_GEN_54[35]}},_GEN_54}; // @[CORDIC.scala 701:43]
  wire [63:0] x_29 = $signed(xr_14) - $signed(_x_29_T); // @[CORDIC.scala 701:32]
  wire [35:0] _GEN_55 = fxxterm_28[63:28]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_29_T = {{28{_GEN_55[35]}},_GEN_55}; // @[CORDIC.scala 702:32]
  wire [63:0] y_29 = $signed(_y_29_T) + $signed(yr_14); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_116 = $signed(theta_29) > $signed(z0sr_14); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_119 = 64'sh0 - $signed(x_29); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_29 = $signed(theta_29) > $signed(z0sr_14) ? $signed(_fxxterm_T_119) : $signed(x_29); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_119 = 64'sh0 - $signed(y_29); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_29 = _fxxterm_T_116 ? $signed(_fxyterm_T_119) : $signed(y_29); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_89 = 64'h0 - 64'h80000000; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_30_T = _fxxterm_T_116 ? _fxthetaterm_T_89 : 64'h80000000; // @[CORDIC.scala 713:54]
  wire [63:0] theta_30 = $signed(theta_29) + $signed(_theta_30_T); // @[CORDIC.scala 713:40]
  wire [34:0] _GEN_56 = fxyterm_29[63:29]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_30_T = {{29{_GEN_56[34]}},_GEN_56}; // @[CORDIC.scala 714:43]
  wire [63:0] x_30 = $signed(x_29) - $signed(_x_30_T); // @[CORDIC.scala 714:32]
  wire [34:0] _GEN_57 = fxxterm_29[63:29]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_30_T = {{29{_GEN_57[34]}},_GEN_57}; // @[CORDIC.scala 715:32]
  wire [63:0] y_30 = $signed(_y_30_T) + $signed(y_29); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_120 = $signed(thetar_15) > $signed(z0sr_15); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_123 = 64'sh0 - $signed(xr_15); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_30 = $signed(thetar_15) > $signed(z0sr_15) ? $signed(_fxxterm_T_123) : $signed(xr_15); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_123 = 64'sh0 - $signed(yr_15); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_30 = _fxxterm_T_120 ? $signed(_fxyterm_T_123) : $signed(yr_15); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_92 = 64'h0 - 64'h40000000; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_31_T = _fxxterm_T_120 ? _fxthetaterm_T_92 : 64'h40000000; // @[CORDIC.scala 700:54]
  wire [63:0] theta_31 = $signed(thetar_15) + $signed(_theta_31_T); // @[CORDIC.scala 700:40]
  wire [33:0] _GEN_58 = fxyterm_30[63:30]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_31_T = {{30{_GEN_58[33]}},_GEN_58}; // @[CORDIC.scala 701:43]
  wire [63:0] x_31 = $signed(xr_15) - $signed(_x_31_T); // @[CORDIC.scala 701:32]
  wire [33:0] _GEN_59 = fxxterm_30[63:30]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_31_T = {{30{_GEN_59[33]}},_GEN_59}; // @[CORDIC.scala 702:32]
  wire [63:0] y_31 = $signed(_y_31_T) + $signed(yr_15); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_124 = $signed(theta_31) > $signed(z0sr_15); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_127 = 64'sh0 - $signed(x_31); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_31 = $signed(theta_31) > $signed(z0sr_15) ? $signed(_fxxterm_T_127) : $signed(x_31); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_127 = 64'sh0 - $signed(y_31); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_31 = _fxxterm_T_124 ? $signed(_fxyterm_T_127) : $signed(y_31); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_95 = 64'h0 - 64'h20000000; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_32_T = _fxxterm_T_124 ? _fxthetaterm_T_95 : 64'h20000000; // @[CORDIC.scala 713:54]
  wire [63:0] theta_32 = $signed(theta_31) + $signed(_theta_32_T); // @[CORDIC.scala 713:40]
  wire [32:0] _GEN_60 = fxyterm_31[63:31]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_32_T = {{31{_GEN_60[32]}},_GEN_60}; // @[CORDIC.scala 714:43]
  wire [63:0] x_32 = $signed(x_31) - $signed(_x_32_T); // @[CORDIC.scala 714:32]
  wire [32:0] _GEN_61 = fxxterm_31[63:31]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_32_T = {{31{_GEN_61[32]}},_GEN_61}; // @[CORDIC.scala 715:32]
  wire [63:0] y_32 = $signed(_y_32_T) + $signed(y_31); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_128 = $signed(thetar_16) > $signed(z0sr_16); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_131 = 64'sh0 - $signed(xr_16); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_32 = $signed(thetar_16) > $signed(z0sr_16) ? $signed(_fxxterm_T_131) : $signed(xr_16); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_131 = 64'sh0 - $signed(yr_16); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_32 = _fxxterm_T_128 ? $signed(_fxyterm_T_131) : $signed(yr_16); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_98 = 64'h0 - 64'h10000000; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_33_T = _fxxterm_T_128 ? _fxthetaterm_T_98 : 64'h10000000; // @[CORDIC.scala 700:54]
  wire [63:0] theta_33 = $signed(thetar_16) + $signed(_theta_33_T); // @[CORDIC.scala 700:40]
  wire [31:0] _GEN_62 = fxyterm_32[63:32]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_33_T = {{32{_GEN_62[31]}},_GEN_62}; // @[CORDIC.scala 701:43]
  wire [63:0] x_33 = $signed(xr_16) - $signed(_x_33_T); // @[CORDIC.scala 701:32]
  wire [31:0] _GEN_63 = fxxterm_32[63:32]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_33_T = {{32{_GEN_63[31]}},_GEN_63}; // @[CORDIC.scala 702:32]
  wire [63:0] y_33 = $signed(_y_33_T) + $signed(yr_16); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_132 = $signed(theta_33) > $signed(z0sr_16); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_135 = 64'sh0 - $signed(x_33); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_33 = $signed(theta_33) > $signed(z0sr_16) ? $signed(_fxxterm_T_135) : $signed(x_33); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_135 = 64'sh0 - $signed(y_33); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_33 = _fxxterm_T_132 ? $signed(_fxyterm_T_135) : $signed(y_33); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_101 = 64'h0 - 64'h8000000; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_34_T = _fxxterm_T_132 ? _fxthetaterm_T_101 : 64'h8000000; // @[CORDIC.scala 713:54]
  wire [63:0] theta_34 = $signed(theta_33) + $signed(_theta_34_T); // @[CORDIC.scala 713:40]
  wire [30:0] _GEN_64 = fxyterm_33[63:33]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_34_T = {{33{_GEN_64[30]}},_GEN_64}; // @[CORDIC.scala 714:43]
  wire [63:0] x_34 = $signed(x_33) - $signed(_x_34_T); // @[CORDIC.scala 714:32]
  wire [30:0] _GEN_65 = fxxterm_33[63:33]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_34_T = {{33{_GEN_65[30]}},_GEN_65}; // @[CORDIC.scala 715:32]
  wire [63:0] y_34 = $signed(_y_34_T) + $signed(y_33); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_136 = $signed(thetar_17) > $signed(z0sr_17); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_139 = 64'sh0 - $signed(xr_17); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_34 = $signed(thetar_17) > $signed(z0sr_17) ? $signed(_fxxterm_T_139) : $signed(xr_17); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_139 = 64'sh0 - $signed(yr_17); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_34 = _fxxterm_T_136 ? $signed(_fxyterm_T_139) : $signed(yr_17); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_104 = 64'h0 - 64'h4000000; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_35_T = _fxxterm_T_136 ? _fxthetaterm_T_104 : 64'h4000000; // @[CORDIC.scala 700:54]
  wire [63:0] theta_35 = $signed(thetar_17) + $signed(_theta_35_T); // @[CORDIC.scala 700:40]
  wire [29:0] _GEN_66 = fxyterm_34[63:34]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_35_T = {{34{_GEN_66[29]}},_GEN_66}; // @[CORDIC.scala 701:43]
  wire [63:0] x_35 = $signed(xr_17) - $signed(_x_35_T); // @[CORDIC.scala 701:32]
  wire [29:0] _GEN_67 = fxxterm_34[63:34]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_35_T = {{34{_GEN_67[29]}},_GEN_67}; // @[CORDIC.scala 702:32]
  wire [63:0] y_35 = $signed(_y_35_T) + $signed(yr_17); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_140 = $signed(theta_35) > $signed(z0sr_17); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_143 = 64'sh0 - $signed(x_35); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_35 = $signed(theta_35) > $signed(z0sr_17) ? $signed(_fxxterm_T_143) : $signed(x_35); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_143 = 64'sh0 - $signed(y_35); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_35 = _fxxterm_T_140 ? $signed(_fxyterm_T_143) : $signed(y_35); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_107 = 64'h0 - 64'h2000000; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_36_T = _fxxterm_T_140 ? _fxthetaterm_T_107 : 64'h2000000; // @[CORDIC.scala 713:54]
  wire [63:0] theta_36 = $signed(theta_35) + $signed(_theta_36_T); // @[CORDIC.scala 713:40]
  wire [28:0] _GEN_68 = fxyterm_35[63:35]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_36_T = {{35{_GEN_68[28]}},_GEN_68}; // @[CORDIC.scala 714:43]
  wire [63:0] x_36 = $signed(x_35) - $signed(_x_36_T); // @[CORDIC.scala 714:32]
  wire [28:0] _GEN_69 = fxxterm_35[63:35]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_36_T = {{35{_GEN_69[28]}},_GEN_69}; // @[CORDIC.scala 715:32]
  wire [63:0] y_36 = $signed(_y_36_T) + $signed(y_35); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_144 = $signed(thetar_18) > $signed(z0sr_18); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_147 = 64'sh0 - $signed(xr_18); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_36 = $signed(thetar_18) > $signed(z0sr_18) ? $signed(_fxxterm_T_147) : $signed(xr_18); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_147 = 64'sh0 - $signed(yr_18); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_36 = _fxxterm_T_144 ? $signed(_fxyterm_T_147) : $signed(yr_18); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_110 = 64'h0 - 64'h1000000; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_37_T = _fxxterm_T_144 ? _fxthetaterm_T_110 : 64'h1000000; // @[CORDIC.scala 700:54]
  wire [63:0] theta_37 = $signed(thetar_18) + $signed(_theta_37_T); // @[CORDIC.scala 700:40]
  wire [27:0] _GEN_70 = fxyterm_36[63:36]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_37_T = {{36{_GEN_70[27]}},_GEN_70}; // @[CORDIC.scala 701:43]
  wire [63:0] x_37 = $signed(xr_18) - $signed(_x_37_T); // @[CORDIC.scala 701:32]
  wire [27:0] _GEN_71 = fxxterm_36[63:36]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_37_T = {{36{_GEN_71[27]}},_GEN_71}; // @[CORDIC.scala 702:32]
  wire [63:0] y_37 = $signed(_y_37_T) + $signed(yr_18); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_148 = $signed(theta_37) > $signed(z0sr_18); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_151 = 64'sh0 - $signed(x_37); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_37 = $signed(theta_37) > $signed(z0sr_18) ? $signed(_fxxterm_T_151) : $signed(x_37); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_151 = 64'sh0 - $signed(y_37); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_37 = _fxxterm_T_148 ? $signed(_fxyterm_T_151) : $signed(y_37); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_113 = 64'h0 - 64'h800000; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_38_T = _fxxterm_T_148 ? _fxthetaterm_T_113 : 64'h800000; // @[CORDIC.scala 713:54]
  wire [63:0] theta_38 = $signed(theta_37) + $signed(_theta_38_T); // @[CORDIC.scala 713:40]
  wire [26:0] _GEN_72 = fxyterm_37[63:37]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_38_T = {{37{_GEN_72[26]}},_GEN_72}; // @[CORDIC.scala 714:43]
  wire [63:0] x_38 = $signed(x_37) - $signed(_x_38_T); // @[CORDIC.scala 714:32]
  wire [26:0] _GEN_73 = fxxterm_37[63:37]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_38_T = {{37{_GEN_73[26]}},_GEN_73}; // @[CORDIC.scala 715:32]
  wire [63:0] y_38 = $signed(_y_38_T) + $signed(y_37); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_152 = $signed(thetar_19) > $signed(z0sr_19); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_155 = 64'sh0 - $signed(xr_19); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_38 = $signed(thetar_19) > $signed(z0sr_19) ? $signed(_fxxterm_T_155) : $signed(xr_19); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_155 = 64'sh0 - $signed(yr_19); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_38 = _fxxterm_T_152 ? $signed(_fxyterm_T_155) : $signed(yr_19); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_116 = 64'h0 - 64'h400000; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_39_T = _fxxterm_T_152 ? _fxthetaterm_T_116 : 64'h400000; // @[CORDIC.scala 700:54]
  wire [63:0] theta_39 = $signed(thetar_19) + $signed(_theta_39_T); // @[CORDIC.scala 700:40]
  wire [25:0] _GEN_74 = fxyterm_38[63:38]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_39_T = {{38{_GEN_74[25]}},_GEN_74}; // @[CORDIC.scala 701:43]
  wire [63:0] x_39 = $signed(xr_19) - $signed(_x_39_T); // @[CORDIC.scala 701:32]
  wire [25:0] _GEN_75 = fxxterm_38[63:38]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_39_T = {{38{_GEN_75[25]}},_GEN_75}; // @[CORDIC.scala 702:32]
  wire [63:0] y_39 = $signed(_y_39_T) + $signed(yr_19); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_156 = $signed(theta_39) > $signed(z0sr_19); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_159 = 64'sh0 - $signed(x_39); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_39 = $signed(theta_39) > $signed(z0sr_19) ? $signed(_fxxterm_T_159) : $signed(x_39); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_159 = 64'sh0 - $signed(y_39); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_39 = _fxxterm_T_156 ? $signed(_fxyterm_T_159) : $signed(y_39); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_119 = 64'h0 - 64'h200000; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_40_T = _fxxterm_T_156 ? _fxthetaterm_T_119 : 64'h200000; // @[CORDIC.scala 713:54]
  wire [63:0] theta_40 = $signed(theta_39) + $signed(_theta_40_T); // @[CORDIC.scala 713:40]
  wire [24:0] _GEN_76 = fxyterm_39[63:39]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_40_T = {{39{_GEN_76[24]}},_GEN_76}; // @[CORDIC.scala 714:43]
  wire [63:0] x_40 = $signed(x_39) - $signed(_x_40_T); // @[CORDIC.scala 714:32]
  wire [24:0] _GEN_77 = fxxterm_39[63:39]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_40_T = {{39{_GEN_77[24]}},_GEN_77}; // @[CORDIC.scala 715:32]
  wire [63:0] y_40 = $signed(_y_40_T) + $signed(y_39); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_160 = $signed(thetar_20) > $signed(z0sr_20); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_163 = 64'sh0 - $signed(xr_20); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_40 = $signed(thetar_20) > $signed(z0sr_20) ? $signed(_fxxterm_T_163) : $signed(xr_20); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_163 = 64'sh0 - $signed(yr_20); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_40 = _fxxterm_T_160 ? $signed(_fxyterm_T_163) : $signed(yr_20); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_122 = 64'h0 - 64'h100000; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_41_T = _fxxterm_T_160 ? _fxthetaterm_T_122 : 64'h100000; // @[CORDIC.scala 700:54]
  wire [63:0] theta_41 = $signed(thetar_20) + $signed(_theta_41_T); // @[CORDIC.scala 700:40]
  wire [23:0] _GEN_78 = fxyterm_40[63:40]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_41_T = {{40{_GEN_78[23]}},_GEN_78}; // @[CORDIC.scala 701:43]
  wire [63:0] x_41 = $signed(xr_20) - $signed(_x_41_T); // @[CORDIC.scala 701:32]
  wire [23:0] _GEN_79 = fxxterm_40[63:40]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_41_T = {{40{_GEN_79[23]}},_GEN_79}; // @[CORDIC.scala 702:32]
  wire [63:0] y_41 = $signed(_y_41_T) + $signed(yr_20); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_164 = $signed(theta_41) > $signed(z0sr_20); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_167 = 64'sh0 - $signed(x_41); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_41 = $signed(theta_41) > $signed(z0sr_20) ? $signed(_fxxterm_T_167) : $signed(x_41); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_167 = 64'sh0 - $signed(y_41); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_41 = _fxxterm_T_164 ? $signed(_fxyterm_T_167) : $signed(y_41); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_125 = 64'h0 - 64'h80000; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_42_T = _fxxterm_T_164 ? _fxthetaterm_T_125 : 64'h80000; // @[CORDIC.scala 713:54]
  wire [63:0] theta_42 = $signed(theta_41) + $signed(_theta_42_T); // @[CORDIC.scala 713:40]
  wire [22:0] _GEN_80 = fxyterm_41[63:41]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_42_T = {{41{_GEN_80[22]}},_GEN_80}; // @[CORDIC.scala 714:43]
  wire [63:0] x_42 = $signed(x_41) - $signed(_x_42_T); // @[CORDIC.scala 714:32]
  wire [22:0] _GEN_81 = fxxterm_41[63:41]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_42_T = {{41{_GEN_81[22]}},_GEN_81}; // @[CORDIC.scala 715:32]
  wire [63:0] y_42 = $signed(_y_42_T) + $signed(y_41); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_168 = $signed(thetar_21) > $signed(z0sr_21); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_171 = 64'sh0 - $signed(xr_21); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_42 = $signed(thetar_21) > $signed(z0sr_21) ? $signed(_fxxterm_T_171) : $signed(xr_21); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_171 = 64'sh0 - $signed(yr_21); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_42 = _fxxterm_T_168 ? $signed(_fxyterm_T_171) : $signed(yr_21); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_128 = 64'h0 - 64'h40000; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_43_T = _fxxterm_T_168 ? _fxthetaterm_T_128 : 64'h40000; // @[CORDIC.scala 700:54]
  wire [63:0] theta_43 = $signed(thetar_21) + $signed(_theta_43_T); // @[CORDIC.scala 700:40]
  wire [21:0] _GEN_82 = fxyterm_42[63:42]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_43_T = {{42{_GEN_82[21]}},_GEN_82}; // @[CORDIC.scala 701:43]
  wire [63:0] x_43 = $signed(xr_21) - $signed(_x_43_T); // @[CORDIC.scala 701:32]
  wire [21:0] _GEN_83 = fxxterm_42[63:42]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_43_T = {{42{_GEN_83[21]}},_GEN_83}; // @[CORDIC.scala 702:32]
  wire [63:0] y_43 = $signed(_y_43_T) + $signed(yr_21); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_172 = $signed(theta_43) > $signed(z0sr_21); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_175 = 64'sh0 - $signed(x_43); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_43 = $signed(theta_43) > $signed(z0sr_21) ? $signed(_fxxterm_T_175) : $signed(x_43); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_175 = 64'sh0 - $signed(y_43); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_43 = _fxxterm_T_172 ? $signed(_fxyterm_T_175) : $signed(y_43); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_131 = 64'h0 - 64'h20000; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_44_T = _fxxterm_T_172 ? _fxthetaterm_T_131 : 64'h20000; // @[CORDIC.scala 713:54]
  wire [63:0] theta_44 = $signed(theta_43) + $signed(_theta_44_T); // @[CORDIC.scala 713:40]
  wire [20:0] _GEN_84 = fxyterm_43[63:43]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_44_T = {{43{_GEN_84[20]}},_GEN_84}; // @[CORDIC.scala 714:43]
  wire [63:0] x_44 = $signed(x_43) - $signed(_x_44_T); // @[CORDIC.scala 714:32]
  wire [20:0] _GEN_85 = fxxterm_43[63:43]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_44_T = {{43{_GEN_85[20]}},_GEN_85}; // @[CORDIC.scala 715:32]
  wire [63:0] y_44 = $signed(_y_44_T) + $signed(y_43); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_176 = $signed(thetar_22) > $signed(z0sr_22); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_179 = 64'sh0 - $signed(xr_22); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_44 = $signed(thetar_22) > $signed(z0sr_22) ? $signed(_fxxterm_T_179) : $signed(xr_22); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_179 = 64'sh0 - $signed(yr_22); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_44 = _fxxterm_T_176 ? $signed(_fxyterm_T_179) : $signed(yr_22); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_134 = 64'h0 - 64'h10000; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_45_T = _fxxterm_T_176 ? _fxthetaterm_T_134 : 64'h10000; // @[CORDIC.scala 700:54]
  wire [63:0] theta_45 = $signed(thetar_22) + $signed(_theta_45_T); // @[CORDIC.scala 700:40]
  wire [19:0] _GEN_86 = fxyterm_44[63:44]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_45_T = {{44{_GEN_86[19]}},_GEN_86}; // @[CORDIC.scala 701:43]
  wire [63:0] x_45 = $signed(xr_22) - $signed(_x_45_T); // @[CORDIC.scala 701:32]
  wire [19:0] _GEN_87 = fxxterm_44[63:44]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_45_T = {{44{_GEN_87[19]}},_GEN_87}; // @[CORDIC.scala 702:32]
  wire [63:0] y_45 = $signed(_y_45_T) + $signed(yr_22); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_180 = $signed(theta_45) > $signed(z0sr_22); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_183 = 64'sh0 - $signed(x_45); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_45 = $signed(theta_45) > $signed(z0sr_22) ? $signed(_fxxterm_T_183) : $signed(x_45); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_183 = 64'sh0 - $signed(y_45); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_45 = _fxxterm_T_180 ? $signed(_fxyterm_T_183) : $signed(y_45); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_137 = 64'h0 - 64'h8000; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_46_T = _fxxterm_T_180 ? _fxthetaterm_T_137 : 64'h8000; // @[CORDIC.scala 713:54]
  wire [63:0] theta_46 = $signed(theta_45) + $signed(_theta_46_T); // @[CORDIC.scala 713:40]
  wire [18:0] _GEN_88 = fxyterm_45[63:45]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_46_T = {{45{_GEN_88[18]}},_GEN_88}; // @[CORDIC.scala 714:43]
  wire [63:0] x_46 = $signed(x_45) - $signed(_x_46_T); // @[CORDIC.scala 714:32]
  wire [18:0] _GEN_89 = fxxterm_45[63:45]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_46_T = {{45{_GEN_89[18]}},_GEN_89}; // @[CORDIC.scala 715:32]
  wire [63:0] y_46 = $signed(_y_46_T) + $signed(y_45); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_184 = $signed(thetar_23) > $signed(z0sr_23); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_187 = 64'sh0 - $signed(xr_23); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_46 = $signed(thetar_23) > $signed(z0sr_23) ? $signed(_fxxterm_T_187) : $signed(xr_23); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_187 = 64'sh0 - $signed(yr_23); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_46 = _fxxterm_T_184 ? $signed(_fxyterm_T_187) : $signed(yr_23); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_140 = 64'h0 - 64'h4000; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_47_T = _fxxterm_T_184 ? _fxthetaterm_T_140 : 64'h4000; // @[CORDIC.scala 700:54]
  wire [63:0] theta_47 = $signed(thetar_23) + $signed(_theta_47_T); // @[CORDIC.scala 700:40]
  wire [17:0] _GEN_90 = fxyterm_46[63:46]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_47_T = {{46{_GEN_90[17]}},_GEN_90}; // @[CORDIC.scala 701:43]
  wire [63:0] x_47 = $signed(xr_23) - $signed(_x_47_T); // @[CORDIC.scala 701:32]
  wire [17:0] _GEN_91 = fxxterm_46[63:46]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_47_T = {{46{_GEN_91[17]}},_GEN_91}; // @[CORDIC.scala 702:32]
  wire [63:0] y_47 = $signed(_y_47_T) + $signed(yr_23); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_188 = $signed(theta_47) > $signed(z0sr_23); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_191 = 64'sh0 - $signed(x_47); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_47 = $signed(theta_47) > $signed(z0sr_23) ? $signed(_fxxterm_T_191) : $signed(x_47); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_191 = 64'sh0 - $signed(y_47); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_47 = _fxxterm_T_188 ? $signed(_fxyterm_T_191) : $signed(y_47); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_143 = 64'h0 - 64'h2000; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_48_T = _fxxterm_T_188 ? _fxthetaterm_T_143 : 64'h2000; // @[CORDIC.scala 713:54]
  wire [63:0] theta_48 = $signed(theta_47) + $signed(_theta_48_T); // @[CORDIC.scala 713:40]
  wire [16:0] _GEN_92 = fxyterm_47[63:47]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_48_T = {{47{_GEN_92[16]}},_GEN_92}; // @[CORDIC.scala 714:43]
  wire [63:0] x_48 = $signed(x_47) - $signed(_x_48_T); // @[CORDIC.scala 714:32]
  wire [16:0] _GEN_93 = fxxterm_47[63:47]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_48_T = {{47{_GEN_93[16]}},_GEN_93}; // @[CORDIC.scala 715:32]
  wire [63:0] y_48 = $signed(_y_48_T) + $signed(y_47); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_192 = $signed(thetar_24) > $signed(z0sr_24); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_195 = 64'sh0 - $signed(xr_24); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_48 = $signed(thetar_24) > $signed(z0sr_24) ? $signed(_fxxterm_T_195) : $signed(xr_24); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_195 = 64'sh0 - $signed(yr_24); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_48 = _fxxterm_T_192 ? $signed(_fxyterm_T_195) : $signed(yr_24); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_146 = 64'h0 - 64'h1000; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_49_T = _fxxterm_T_192 ? _fxthetaterm_T_146 : 64'h1000; // @[CORDIC.scala 700:54]
  wire [63:0] theta_49 = $signed(thetar_24) + $signed(_theta_49_T); // @[CORDIC.scala 700:40]
  wire [15:0] _GEN_94 = fxyterm_48[63:48]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_49_T = {{48{_GEN_94[15]}},_GEN_94}; // @[CORDIC.scala 701:43]
  wire [63:0] x_49 = $signed(xr_24) - $signed(_x_49_T); // @[CORDIC.scala 701:32]
  wire [15:0] _GEN_95 = fxxterm_48[63:48]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_49_T = {{48{_GEN_95[15]}},_GEN_95}; // @[CORDIC.scala 702:32]
  wire [63:0] y_49 = $signed(_y_49_T) + $signed(yr_24); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_196 = $signed(theta_49) > $signed(z0sr_24); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_199 = 64'sh0 - $signed(x_49); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_49 = $signed(theta_49) > $signed(z0sr_24) ? $signed(_fxxterm_T_199) : $signed(x_49); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_199 = 64'sh0 - $signed(y_49); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_49 = _fxxterm_T_196 ? $signed(_fxyterm_T_199) : $signed(y_49); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_149 = 64'h0 - 64'h800; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_50_T = _fxxterm_T_196 ? _fxthetaterm_T_149 : 64'h800; // @[CORDIC.scala 713:54]
  wire [63:0] theta_50 = $signed(theta_49) + $signed(_theta_50_T); // @[CORDIC.scala 713:40]
  wire [14:0] _GEN_96 = fxyterm_49[63:49]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_50_T = {{49{_GEN_96[14]}},_GEN_96}; // @[CORDIC.scala 714:43]
  wire [63:0] x_50 = $signed(x_49) - $signed(_x_50_T); // @[CORDIC.scala 714:32]
  wire [14:0] _GEN_97 = fxxterm_49[63:49]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_50_T = {{49{_GEN_97[14]}},_GEN_97}; // @[CORDIC.scala 715:32]
  wire [63:0] y_50 = $signed(_y_50_T) + $signed(y_49); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_200 = $signed(thetar_25) > $signed(z0sr_25); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_203 = 64'sh0 - $signed(xr_25); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_50 = $signed(thetar_25) > $signed(z0sr_25) ? $signed(_fxxterm_T_203) : $signed(xr_25); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_203 = 64'sh0 - $signed(yr_25); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_50 = _fxxterm_T_200 ? $signed(_fxyterm_T_203) : $signed(yr_25); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_152 = 64'h0 - 64'h400; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_51_T = _fxxterm_T_200 ? _fxthetaterm_T_152 : 64'h400; // @[CORDIC.scala 700:54]
  wire [63:0] theta_51 = $signed(thetar_25) + $signed(_theta_51_T); // @[CORDIC.scala 700:40]
  wire [13:0] _GEN_98 = fxyterm_50[63:50]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_51_T = {{50{_GEN_98[13]}},_GEN_98}; // @[CORDIC.scala 701:43]
  wire [63:0] x_51 = $signed(xr_25) - $signed(_x_51_T); // @[CORDIC.scala 701:32]
  wire [13:0] _GEN_99 = fxxterm_50[63:50]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_51_T = {{50{_GEN_99[13]}},_GEN_99}; // @[CORDIC.scala 702:32]
  wire [63:0] y_51 = $signed(_y_51_T) + $signed(yr_25); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_204 = $signed(theta_51) > $signed(z0sr_25); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_207 = 64'sh0 - $signed(x_51); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_51 = $signed(theta_51) > $signed(z0sr_25) ? $signed(_fxxterm_T_207) : $signed(x_51); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_207 = 64'sh0 - $signed(y_51); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_51 = _fxxterm_T_204 ? $signed(_fxyterm_T_207) : $signed(y_51); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_155 = 64'h0 - 64'h200; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_52_T = _fxxterm_T_204 ? _fxthetaterm_T_155 : 64'h200; // @[CORDIC.scala 713:54]
  wire [63:0] theta_52 = $signed(theta_51) + $signed(_theta_52_T); // @[CORDIC.scala 713:40]
  wire [12:0] _GEN_100 = fxyterm_51[63:51]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_52_T = {{51{_GEN_100[12]}},_GEN_100}; // @[CORDIC.scala 714:43]
  wire [63:0] x_52 = $signed(x_51) - $signed(_x_52_T); // @[CORDIC.scala 714:32]
  wire [12:0] _GEN_101 = fxxterm_51[63:51]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_52_T = {{51{_GEN_101[12]}},_GEN_101}; // @[CORDIC.scala 715:32]
  wire [63:0] y_52 = $signed(_y_52_T) + $signed(y_51); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_208 = $signed(thetar_26) > $signed(z0sr_26); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_211 = 64'sh0 - $signed(xr_26); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_52 = $signed(thetar_26) > $signed(z0sr_26) ? $signed(_fxxterm_T_211) : $signed(xr_26); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_211 = 64'sh0 - $signed(yr_26); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_52 = _fxxterm_T_208 ? $signed(_fxyterm_T_211) : $signed(yr_26); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_158 = 64'h0 - 64'h100; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_53_T = _fxxterm_T_208 ? _fxthetaterm_T_158 : 64'h100; // @[CORDIC.scala 700:54]
  wire [63:0] theta_53 = $signed(thetar_26) + $signed(_theta_53_T); // @[CORDIC.scala 700:40]
  wire [11:0] _GEN_102 = fxyterm_52[63:52]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_53_T = {{52{_GEN_102[11]}},_GEN_102}; // @[CORDIC.scala 701:43]
  wire [63:0] x_53 = $signed(xr_26) - $signed(_x_53_T); // @[CORDIC.scala 701:32]
  wire [11:0] _GEN_103 = fxxterm_52[63:52]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_53_T = {{52{_GEN_103[11]}},_GEN_103}; // @[CORDIC.scala 702:32]
  wire [63:0] y_53 = $signed(_y_53_T) + $signed(yr_26); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_212 = $signed(theta_53) > $signed(z0sr_26); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_215 = 64'sh0 - $signed(x_53); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_53 = $signed(theta_53) > $signed(z0sr_26) ? $signed(_fxxterm_T_215) : $signed(x_53); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_215 = 64'sh0 - $signed(y_53); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_53 = _fxxterm_T_212 ? $signed(_fxyterm_T_215) : $signed(y_53); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_161 = 64'h0 - 64'h80; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_54_T = _fxxterm_T_212 ? _fxthetaterm_T_161 : 64'h80; // @[CORDIC.scala 713:54]
  wire [63:0] theta_54 = $signed(theta_53) + $signed(_theta_54_T); // @[CORDIC.scala 713:40]
  wire [10:0] _GEN_104 = fxyterm_53[63:53]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_54_T = {{53{_GEN_104[10]}},_GEN_104}; // @[CORDIC.scala 714:43]
  wire [63:0] x_54 = $signed(x_53) - $signed(_x_54_T); // @[CORDIC.scala 714:32]
  wire [10:0] _GEN_105 = fxxterm_53[63:53]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_54_T = {{53{_GEN_105[10]}},_GEN_105}; // @[CORDIC.scala 715:32]
  wire [63:0] y_54 = $signed(_y_54_T) + $signed(y_53); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_216 = $signed(thetar_27) > $signed(z0sr_27); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_219 = 64'sh0 - $signed(xr_27); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_54 = $signed(thetar_27) > $signed(z0sr_27) ? $signed(_fxxterm_T_219) : $signed(xr_27); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_219 = 64'sh0 - $signed(yr_27); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_54 = _fxxterm_T_216 ? $signed(_fxyterm_T_219) : $signed(yr_27); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_164 = 64'h0 - 64'h40; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_55_T = _fxxterm_T_216 ? _fxthetaterm_T_164 : 64'h40; // @[CORDIC.scala 700:54]
  wire [63:0] theta_55 = $signed(thetar_27) + $signed(_theta_55_T); // @[CORDIC.scala 700:40]
  wire [9:0] _GEN_106 = fxyterm_54[63:54]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_55_T = {{54{_GEN_106[9]}},_GEN_106}; // @[CORDIC.scala 701:43]
  wire [63:0] x_55 = $signed(xr_27) - $signed(_x_55_T); // @[CORDIC.scala 701:32]
  wire [9:0] _GEN_107 = fxxterm_54[63:54]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_55_T = {{54{_GEN_107[9]}},_GEN_107}; // @[CORDIC.scala 702:32]
  wire [63:0] y_55 = $signed(_y_55_T) + $signed(yr_27); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_220 = $signed(theta_55) > $signed(z0sr_27); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_223 = 64'sh0 - $signed(x_55); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_55 = $signed(theta_55) > $signed(z0sr_27) ? $signed(_fxxterm_T_223) : $signed(x_55); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_223 = 64'sh0 - $signed(y_55); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_55 = _fxxterm_T_220 ? $signed(_fxyterm_T_223) : $signed(y_55); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_167 = 64'h0 - 64'h20; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_56_T = _fxxterm_T_220 ? _fxthetaterm_T_167 : 64'h20; // @[CORDIC.scala 713:54]
  wire [63:0] theta_56 = $signed(theta_55) + $signed(_theta_56_T); // @[CORDIC.scala 713:40]
  wire [8:0] _GEN_108 = fxyterm_55[63:55]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_56_T = {{55{_GEN_108[8]}},_GEN_108}; // @[CORDIC.scala 714:43]
  wire [63:0] x_56 = $signed(x_55) - $signed(_x_56_T); // @[CORDIC.scala 714:32]
  wire [8:0] _GEN_109 = fxxterm_55[63:55]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_56_T = {{55{_GEN_109[8]}},_GEN_109}; // @[CORDIC.scala 715:32]
  wire [63:0] y_56 = $signed(_y_56_T) + $signed(y_55); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_224 = $signed(thetar_28) > $signed(z0sr_28); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_227 = 64'sh0 - $signed(xr_28); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_56 = $signed(thetar_28) > $signed(z0sr_28) ? $signed(_fxxterm_T_227) : $signed(xr_28); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_227 = 64'sh0 - $signed(yr_28); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_56 = _fxxterm_T_224 ? $signed(_fxyterm_T_227) : $signed(yr_28); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_170 = 64'h0 - 64'h10; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_57_T = _fxxterm_T_224 ? _fxthetaterm_T_170 : 64'h10; // @[CORDIC.scala 700:54]
  wire [63:0] theta_57 = $signed(thetar_28) + $signed(_theta_57_T); // @[CORDIC.scala 700:40]
  wire [7:0] _GEN_110 = fxyterm_56[63:56]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_57_T = {{56{_GEN_110[7]}},_GEN_110}; // @[CORDIC.scala 701:43]
  wire [63:0] x_57 = $signed(xr_28) - $signed(_x_57_T); // @[CORDIC.scala 701:32]
  wire [7:0] _GEN_111 = fxxterm_56[63:56]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_57_T = {{56{_GEN_111[7]}},_GEN_111}; // @[CORDIC.scala 702:32]
  wire [63:0] y_57 = $signed(_y_57_T) + $signed(yr_28); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_228 = $signed(theta_57) > $signed(z0sr_28); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_231 = 64'sh0 - $signed(x_57); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_57 = $signed(theta_57) > $signed(z0sr_28) ? $signed(_fxxterm_T_231) : $signed(x_57); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_231 = 64'sh0 - $signed(y_57); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_57 = _fxxterm_T_228 ? $signed(_fxyterm_T_231) : $signed(y_57); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_173 = 64'h0 - 64'h8; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_58_T = _fxxterm_T_228 ? _fxthetaterm_T_173 : 64'h8; // @[CORDIC.scala 713:54]
  wire [63:0] theta_58 = $signed(theta_57) + $signed(_theta_58_T); // @[CORDIC.scala 713:40]
  wire [6:0] _GEN_112 = fxyterm_57[63:57]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_58_T = {{57{_GEN_112[6]}},_GEN_112}; // @[CORDIC.scala 714:43]
  wire [63:0] x_58 = $signed(x_57) - $signed(_x_58_T); // @[CORDIC.scala 714:32]
  wire [6:0] _GEN_113 = fxxterm_57[63:57]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_58_T = {{57{_GEN_113[6]}},_GEN_113}; // @[CORDIC.scala 715:32]
  wire [63:0] y_58 = $signed(_y_58_T) + $signed(y_57); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_232 = $signed(thetar_29) > $signed(z0sr_29); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_235 = 64'sh0 - $signed(xr_29); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_58 = $signed(thetar_29) > $signed(z0sr_29) ? $signed(_fxxterm_T_235) : $signed(xr_29); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_235 = 64'sh0 - $signed(yr_29); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_58 = _fxxterm_T_232 ? $signed(_fxyterm_T_235) : $signed(yr_29); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_176 = 64'h0 - 64'h4; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_59_T = _fxxterm_T_232 ? _fxthetaterm_T_176 : 64'h4; // @[CORDIC.scala 700:54]
  wire [63:0] theta_59 = $signed(thetar_29) + $signed(_theta_59_T); // @[CORDIC.scala 700:40]
  wire [5:0] _GEN_114 = fxyterm_58[63:58]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_59_T = {{58{_GEN_114[5]}},_GEN_114}; // @[CORDIC.scala 701:43]
  wire [63:0] x_59 = $signed(xr_29) - $signed(_x_59_T); // @[CORDIC.scala 701:32]
  wire [5:0] _GEN_115 = fxxterm_58[63:58]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_59_T = {{58{_GEN_115[5]}},_GEN_115}; // @[CORDIC.scala 702:32]
  wire [63:0] y_59 = $signed(_y_59_T) + $signed(yr_29); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_236 = $signed(theta_59) > $signed(z0sr_29); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_239 = 64'sh0 - $signed(x_59); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_59 = $signed(theta_59) > $signed(z0sr_29) ? $signed(_fxxterm_T_239) : $signed(x_59); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_239 = 64'sh0 - $signed(y_59); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_59 = _fxxterm_T_236 ? $signed(_fxyterm_T_239) : $signed(y_59); // @[CORDIC.scala 709:28]
  wire [63:0] _fxthetaterm_T_179 = 64'h0 - 64'h2; // @[CORDIC.scala 710:60]
  wire [63:0] _theta_60_T = _fxxterm_T_236 ? _fxthetaterm_T_179 : 64'h2; // @[CORDIC.scala 713:54]
  wire [63:0] theta_60 = $signed(theta_59) + $signed(_theta_60_T); // @[CORDIC.scala 713:40]
  wire [4:0] _GEN_116 = fxyterm_59[63:59]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_60_T = {{59{_GEN_116[4]}},_GEN_116}; // @[CORDIC.scala 714:43]
  wire [63:0] x_60 = $signed(x_59) - $signed(_x_60_T); // @[CORDIC.scala 714:32]
  wire [4:0] _GEN_117 = fxxterm_59[63:59]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_60_T = {{59{_GEN_117[4]}},_GEN_117}; // @[CORDIC.scala 715:32]
  wire [63:0] y_60 = $signed(_y_60_T) + $signed(y_59); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_240 = $signed(thetar_30) > $signed(z0sr_30); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_243 = 64'sh0 - $signed(xr_30); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_60 = $signed(thetar_30) > $signed(z0sr_30) ? $signed(_fxxterm_T_243) : $signed(xr_30); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_243 = 64'sh0 - $signed(yr_30); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_60 = _fxxterm_T_240 ? $signed(_fxyterm_T_243) : $signed(yr_30); // @[CORDIC.scala 697:28]
  wire [63:0] _fxthetaterm_T_182 = 64'h0 - 64'h1; // @[CORDIC.scala 698:60]
  wire [63:0] _theta_61_T = _fxxterm_T_240 ? _fxthetaterm_T_182 : 64'h1; // @[CORDIC.scala 700:54]
  wire [63:0] theta_61 = $signed(thetar_30) + $signed(_theta_61_T); // @[CORDIC.scala 700:40]
  wire [3:0] _GEN_118 = fxyterm_60[63:60]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_61_T = {{60{_GEN_118[3]}},_GEN_118}; // @[CORDIC.scala 701:43]
  wire [63:0] x_61 = $signed(xr_30) - $signed(_x_61_T); // @[CORDIC.scala 701:32]
  wire [3:0] _GEN_119 = fxxterm_60[63:60]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_61_T = {{60{_GEN_119[3]}},_GEN_119}; // @[CORDIC.scala 702:32]
  wire [63:0] y_61 = $signed(_y_61_T) + $signed(yr_30); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_244 = $signed(theta_61) > $signed(z0sr_30); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_247 = 64'sh0 - $signed(x_61); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_61 = $signed(theta_61) > $signed(z0sr_30) ? $signed(_fxxterm_T_247) : $signed(x_61); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_247 = 64'sh0 - $signed(y_61); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_61 = _fxxterm_T_244 ? $signed(_fxyterm_T_247) : $signed(y_61); // @[CORDIC.scala 709:28]
  wire [64:0] _theta_62_T_1 = {{1{theta_61[63]}},theta_61}; // @[CORDIC.scala 713:40]
  wire [63:0] theta_62 = _theta_62_T_1[63:0]; // @[CORDIC.scala 713:40]
  wire [2:0] _GEN_120 = fxyterm_61[63:61]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_62_T = {{61{_GEN_120[2]}},_GEN_120}; // @[CORDIC.scala 714:43]
  wire [63:0] x_62 = $signed(x_61) - $signed(_x_62_T); // @[CORDIC.scala 714:32]
  wire [2:0] _GEN_121 = fxxterm_61[63:61]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_62_T = {{61{_GEN_121[2]}},_GEN_121}; // @[CORDIC.scala 715:32]
  wire [63:0] y_62 = $signed(_y_62_T) + $signed(y_61); // @[CORDIC.scala 715:56]
  wire  _fxxterm_T_248 = $signed(thetar_31) > $signed(z0sr_31); // @[CORDIC.scala 696:42]
  wire [63:0] _fxxterm_T_251 = 64'sh0 - $signed(xr_31); // @[CORDIC.scala 696:56]
  wire [63:0] fxxterm_62 = $signed(thetar_31) > $signed(z0sr_31) ? $signed(_fxxterm_T_251) : $signed(xr_31); // @[CORDIC.scala 696:28]
  wire [63:0] _fxyterm_T_251 = 64'sh0 - $signed(yr_31); // @[CORDIC.scala 697:56]
  wire [63:0] fxyterm_62 = _fxxterm_T_248 ? $signed(_fxyterm_T_251) : $signed(yr_31); // @[CORDIC.scala 697:28]
  wire [64:0] _theta_63_T_1 = {{1{thetar_31[63]}},thetar_31}; // @[CORDIC.scala 700:40]
  wire [63:0] theta_63 = _theta_63_T_1[63:0]; // @[CORDIC.scala 700:40]
  wire [1:0] _GEN_122 = fxyterm_62[63:62]; // @[CORDIC.scala 701:43]
  wire [63:0] _x_63_T = {{62{_GEN_122[1]}},_GEN_122}; // @[CORDIC.scala 701:43]
  wire [63:0] x_63 = $signed(xr_31) - $signed(_x_63_T); // @[CORDIC.scala 701:32]
  wire [1:0] _GEN_123 = fxxterm_62[63:62]; // @[CORDIC.scala 702:32]
  wire [63:0] _y_63_T = {{62{_GEN_123[1]}},_GEN_123}; // @[CORDIC.scala 702:32]
  wire [63:0] y_63 = $signed(_y_63_T) + $signed(yr_31); // @[CORDIC.scala 702:56]
  wire  _fxxterm_T_252 = $signed(theta_63) > $signed(z0sr_31); // @[CORDIC.scala 708:42]
  wire [63:0] _fxxterm_T_255 = 64'sh0 - $signed(x_63); // @[CORDIC.scala 708:56]
  wire [63:0] fxxterm_63 = $signed(theta_63) > $signed(z0sr_31) ? $signed(_fxxterm_T_255) : $signed(x_63); // @[CORDIC.scala 708:28]
  wire [63:0] _fxyterm_T_255 = 64'sh0 - $signed(y_63); // @[CORDIC.scala 709:56]
  wire [63:0] fxyterm_63 = _fxxterm_T_252 ? $signed(_fxyterm_T_255) : $signed(y_63); // @[CORDIC.scala 709:28]
  wire  _GEN_124 = fxyterm_63[63]; // @[CORDIC.scala 714:43]
  wire [63:0] _x_64_T = {64{_GEN_124}}; // @[CORDIC.scala 714:43]
  wire [63:0] x_64 = $signed(x_63) - $signed(_x_64_T); // @[CORDIC.scala 714:32]
  wire  _GEN_125 = fxxterm_63[63]; // @[CORDIC.scala 715:32]
  wire [63:0] _y_64_T = {64{_GEN_125}}; // @[CORDIC.scala 715:32]
  wire [63:0] y_64 = $signed(_y_64_T) + $signed(y_63); // @[CORDIC.scala 715:56]
  wire [63:0] _GEN_126 = reset ? 64'h0 : io_in_mode; // @[CORDIC.scala 273:{23,23} 359:15]
  FloatToFixed64 tofixedx0 ( // @[CORDIC.scala 337:27]
    .io_in(tofixedx0_io_in),
    .io_out(tofixedx0_io_out)
  );
  FloatToFixed64 tofixedy0 ( // @[CORDIC.scala 338:27]
    .io_in(tofixedy0_io_in),
    .io_out(tofixedy0_io_out)
  );
  FixedToFloat64 tofloatxout ( // @[CORDIC.scala 731:29]
    .io_in(tofloatxout_io_in),
    .io_out(tofloatxout_io_out)
  );
  FixedToFloat64 tofloatyout ( // @[CORDIC.scala 732:29]
    .io_in(tofloatyout_io_in),
    .io_out(tofloatyout_io_out)
  );
  FixedToFloat64 tofloatzout ( // @[CORDIC.scala 733:29]
    .io_in(tofloatzout_io_in),
    .io_out(tofloatzout_io_out)
  );
  assign io_out_x = tofloatxout_io_out; // @[CORDIC.scala 740:14]
  assign io_out_mode = modesr_32; // @[CORDIC.scala 738:17]
  assign tofixedx0_io_in = 64'h3fe36e9dc0000000; // @[CORDIC.scala 341:21]
  assign tofixedy0_io_in = 64'h0; // @[CORDIC.scala 342:21]
  assign tofloatxout_io_in = xr_32; // @[CORDIC.scala 735:35]
  assign tofloatyout_io_in = yr_32; // @[CORDIC.scala 736:35]
  assign tofloatzout_io_in = z0sr_32; // @[CORDIC.scala 737:37]
  always @(posedge clock) begin
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_0 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_0 <= tofixedx0_io_out; // @[CORDIC.scala 356:11]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_1 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_1 <= x_2; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_2 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_2 <= x_4; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_3 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_3 <= x_6; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_4 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_4 <= x_8; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_5 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_5 <= x_10; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_6 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_6 <= x_12; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_7 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_7 <= x_14; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_8 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_8 <= x_16; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_9 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_9 <= x_18; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_10 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_10 <= x_20; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_11 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_11 <= x_22; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_12 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_12 <= x_24; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_13 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_13 <= x_26; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_14 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_14 <= x_28; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_15 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_15 <= x_30; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_16 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_16 <= x_32; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_17 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_17 <= x_34; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_18 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_18 <= x_36; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_19 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_19 <= x_38; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_20 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_20 <= x_40; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_21 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_21 <= x_42; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_22 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_22 <= x_44; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_23 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_23 <= x_46; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_24 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_24 <= x_48; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_25 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_25 <= x_50; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_26 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_26 <= x_52; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_27 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_27 <= x_54; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_28 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_28 <= x_56; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_29 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_29 <= x_58; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_30 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_30 <= x_60; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_31 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_31 <= x_62; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_32 <= 64'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_32 <= x_64; // @[CORDIC.scala 722:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_0 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_0 <= tofixedy0_io_out; // @[CORDIC.scala 357:11]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_1 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_1 <= y_2; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_2 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_2 <= y_4; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_3 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_3 <= y_6; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_4 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_4 <= y_8; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_5 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_5 <= y_10; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_6 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_6 <= y_12; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_7 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_7 <= y_14; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_8 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_8 <= y_16; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_9 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_9 <= y_18; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_10 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_10 <= y_20; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_11 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_11 <= y_22; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_12 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_12 <= y_24; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_13 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_13 <= y_26; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_14 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_14 <= y_28; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_15 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_15 <= y_30; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_16 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_16 <= y_32; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_17 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_17 <= y_34; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_18 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_18 <= y_36; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_19 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_19 <= y_38; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_20 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_20 <= y_40; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_21 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_21 <= y_42; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_22 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_22 <= y_44; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_23 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_23 <= y_46; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_24 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_24 <= y_48; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_25 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_25 <= y_50; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_26 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_26 <= y_52; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_27 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_27 <= y_54; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_28 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_28 <= y_56; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_29 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_29 <= y_58; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_30 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_30 <= y_60; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_31 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_31 <= y_62; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_32 <= 64'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_32 <= y_64; // @[CORDIC.scala 723:20]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_1 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_1 <= theta_2; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_2 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_2 <= theta_4; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_3 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_3 <= theta_6; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_4 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_4 <= theta_8; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_5 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_5 <= theta_10; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_6 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_6 <= theta_12; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_7 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_7 <= theta_14; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_8 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_8 <= theta_16; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_9 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_9 <= theta_18; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_10 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_10 <= theta_20; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_11 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_11 <= theta_22; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_12 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_12 <= theta_24; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_13 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_13 <= theta_26; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_14 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_14 <= theta_28; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_15 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_15 <= theta_30; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_16 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_16 <= theta_32; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_17 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_17 <= theta_34; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_18 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_18 <= theta_36; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_19 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_19 <= theta_38; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_20 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_20 <= theta_40; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_21 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_21 <= theta_42; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_22 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_22 <= theta_44; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_23 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_23 <= theta_46; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_24 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_24 <= theta_48; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_25 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_25 <= theta_50; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_26 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_26 <= theta_52; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_27 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_27 <= theta_54; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_28 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_28 <= theta_56; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_29 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_29 <= theta_58; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_30 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_30 <= theta_60; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_31 <= 64'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_31 <= theta_62; // @[CORDIC.scala 721:24]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_0 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_0 <= io_in_z0; // @[CORDIC.scala 358:13]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_1 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_1 <= z0sr_0; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_2 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_2 <= z0sr_1; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_3 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_3 <= z0sr_2; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_4 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_4 <= z0sr_3; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_5 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_5 <= z0sr_4; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_6 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_6 <= z0sr_5; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_7 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_7 <= z0sr_6; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_8 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_8 <= z0sr_7; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_9 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_9 <= z0sr_8; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_10 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_10 <= z0sr_9; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_11 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_11 <= z0sr_10; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_12 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_12 <= z0sr_11; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_13 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_13 <= z0sr_12; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_14 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_14 <= z0sr_13; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_15 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_15 <= z0sr_14; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_16 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_16 <= z0sr_15; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_17 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_17 <= z0sr_16; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_18 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_18 <= z0sr_17; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_19 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_19 <= z0sr_18; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_20 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_20 <= z0sr_19; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_21 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_21 <= z0sr_20; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_22 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_22 <= z0sr_21; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_23 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_23 <= z0sr_22; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_24 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_24 <= z0sr_23; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_25 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_25 <= z0sr_24; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_26 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_26 <= z0sr_25; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_27 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_27 <= z0sr_26; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_28 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_28 <= z0sr_27; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_29 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_29 <= z0sr_28; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_30 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_30 <= z0sr_29; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_31 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_31 <= z0sr_30; // @[CORDIC.scala 724:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_32 <= 64'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_32 <= z0sr_31; // @[CORDIC.scala 724:22]
    end
    modesr_0 <= _GEN_126[1:0]; // @[CORDIC.scala 273:{23,23} 359:15]
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_1 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_1 <= modesr_0; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_2 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_2 <= modesr_1; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_3 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_3 <= modesr_2; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_4 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_4 <= modesr_3; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_5 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_5 <= modesr_4; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_6 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_6 <= modesr_5; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_7 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_7 <= modesr_6; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_8 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_8 <= modesr_7; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_9 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_9 <= modesr_8; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_10 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_10 <= modesr_9; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_11 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_11 <= modesr_10; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_12 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_12 <= modesr_11; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_13 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_13 <= modesr_12; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_14 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_14 <= modesr_13; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_15 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_15 <= modesr_14; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_16 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_16 <= modesr_15; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_17 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_17 <= modesr_16; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_18 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_18 <= modesr_17; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_19 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_19 <= modesr_18; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_20 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_20 <= modesr_19; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_21 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_21 <= modesr_20; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_22 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_22 <= modesr_21; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_23 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_23 <= modesr_22; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_24 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_24 <= modesr_23; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_25 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_25 <= modesr_24; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_26 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_26 <= modesr_25; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_27 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_27 <= modesr_26; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_28 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_28 <= modesr_27; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_29 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_29 <= modesr_28; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_30 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_30 <= modesr_29; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_31 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_31 <= modesr_30; // @[CORDIC.scala 725:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_32 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_32 <= modesr_31; // @[CORDIC.scala 725:24]
    end
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
  _RAND_0 = {2{`RANDOM}};
  xr_0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  xr_1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  xr_2 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  xr_3 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  xr_4 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  xr_5 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  xr_6 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  xr_7 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  xr_8 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  xr_9 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  xr_10 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  xr_11 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  xr_12 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  xr_13 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  xr_14 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  xr_15 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  xr_16 = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  xr_17 = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  xr_18 = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  xr_19 = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  xr_20 = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  xr_21 = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  xr_22 = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  xr_23 = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  xr_24 = _RAND_24[63:0];
  _RAND_25 = {2{`RANDOM}};
  xr_25 = _RAND_25[63:0];
  _RAND_26 = {2{`RANDOM}};
  xr_26 = _RAND_26[63:0];
  _RAND_27 = {2{`RANDOM}};
  xr_27 = _RAND_27[63:0];
  _RAND_28 = {2{`RANDOM}};
  xr_28 = _RAND_28[63:0];
  _RAND_29 = {2{`RANDOM}};
  xr_29 = _RAND_29[63:0];
  _RAND_30 = {2{`RANDOM}};
  xr_30 = _RAND_30[63:0];
  _RAND_31 = {2{`RANDOM}};
  xr_31 = _RAND_31[63:0];
  _RAND_32 = {2{`RANDOM}};
  xr_32 = _RAND_32[63:0];
  _RAND_33 = {2{`RANDOM}};
  yr_0 = _RAND_33[63:0];
  _RAND_34 = {2{`RANDOM}};
  yr_1 = _RAND_34[63:0];
  _RAND_35 = {2{`RANDOM}};
  yr_2 = _RAND_35[63:0];
  _RAND_36 = {2{`RANDOM}};
  yr_3 = _RAND_36[63:0];
  _RAND_37 = {2{`RANDOM}};
  yr_4 = _RAND_37[63:0];
  _RAND_38 = {2{`RANDOM}};
  yr_5 = _RAND_38[63:0];
  _RAND_39 = {2{`RANDOM}};
  yr_6 = _RAND_39[63:0];
  _RAND_40 = {2{`RANDOM}};
  yr_7 = _RAND_40[63:0];
  _RAND_41 = {2{`RANDOM}};
  yr_8 = _RAND_41[63:0];
  _RAND_42 = {2{`RANDOM}};
  yr_9 = _RAND_42[63:0];
  _RAND_43 = {2{`RANDOM}};
  yr_10 = _RAND_43[63:0];
  _RAND_44 = {2{`RANDOM}};
  yr_11 = _RAND_44[63:0];
  _RAND_45 = {2{`RANDOM}};
  yr_12 = _RAND_45[63:0];
  _RAND_46 = {2{`RANDOM}};
  yr_13 = _RAND_46[63:0];
  _RAND_47 = {2{`RANDOM}};
  yr_14 = _RAND_47[63:0];
  _RAND_48 = {2{`RANDOM}};
  yr_15 = _RAND_48[63:0];
  _RAND_49 = {2{`RANDOM}};
  yr_16 = _RAND_49[63:0];
  _RAND_50 = {2{`RANDOM}};
  yr_17 = _RAND_50[63:0];
  _RAND_51 = {2{`RANDOM}};
  yr_18 = _RAND_51[63:0];
  _RAND_52 = {2{`RANDOM}};
  yr_19 = _RAND_52[63:0];
  _RAND_53 = {2{`RANDOM}};
  yr_20 = _RAND_53[63:0];
  _RAND_54 = {2{`RANDOM}};
  yr_21 = _RAND_54[63:0];
  _RAND_55 = {2{`RANDOM}};
  yr_22 = _RAND_55[63:0];
  _RAND_56 = {2{`RANDOM}};
  yr_23 = _RAND_56[63:0];
  _RAND_57 = {2{`RANDOM}};
  yr_24 = _RAND_57[63:0];
  _RAND_58 = {2{`RANDOM}};
  yr_25 = _RAND_58[63:0];
  _RAND_59 = {2{`RANDOM}};
  yr_26 = _RAND_59[63:0];
  _RAND_60 = {2{`RANDOM}};
  yr_27 = _RAND_60[63:0];
  _RAND_61 = {2{`RANDOM}};
  yr_28 = _RAND_61[63:0];
  _RAND_62 = {2{`RANDOM}};
  yr_29 = _RAND_62[63:0];
  _RAND_63 = {2{`RANDOM}};
  yr_30 = _RAND_63[63:0];
  _RAND_64 = {2{`RANDOM}};
  yr_31 = _RAND_64[63:0];
  _RAND_65 = {2{`RANDOM}};
  yr_32 = _RAND_65[63:0];
  _RAND_66 = {2{`RANDOM}};
  thetar_1 = _RAND_66[63:0];
  _RAND_67 = {2{`RANDOM}};
  thetar_2 = _RAND_67[63:0];
  _RAND_68 = {2{`RANDOM}};
  thetar_3 = _RAND_68[63:0];
  _RAND_69 = {2{`RANDOM}};
  thetar_4 = _RAND_69[63:0];
  _RAND_70 = {2{`RANDOM}};
  thetar_5 = _RAND_70[63:0];
  _RAND_71 = {2{`RANDOM}};
  thetar_6 = _RAND_71[63:0];
  _RAND_72 = {2{`RANDOM}};
  thetar_7 = _RAND_72[63:0];
  _RAND_73 = {2{`RANDOM}};
  thetar_8 = _RAND_73[63:0];
  _RAND_74 = {2{`RANDOM}};
  thetar_9 = _RAND_74[63:0];
  _RAND_75 = {2{`RANDOM}};
  thetar_10 = _RAND_75[63:0];
  _RAND_76 = {2{`RANDOM}};
  thetar_11 = _RAND_76[63:0];
  _RAND_77 = {2{`RANDOM}};
  thetar_12 = _RAND_77[63:0];
  _RAND_78 = {2{`RANDOM}};
  thetar_13 = _RAND_78[63:0];
  _RAND_79 = {2{`RANDOM}};
  thetar_14 = _RAND_79[63:0];
  _RAND_80 = {2{`RANDOM}};
  thetar_15 = _RAND_80[63:0];
  _RAND_81 = {2{`RANDOM}};
  thetar_16 = _RAND_81[63:0];
  _RAND_82 = {2{`RANDOM}};
  thetar_17 = _RAND_82[63:0];
  _RAND_83 = {2{`RANDOM}};
  thetar_18 = _RAND_83[63:0];
  _RAND_84 = {2{`RANDOM}};
  thetar_19 = _RAND_84[63:0];
  _RAND_85 = {2{`RANDOM}};
  thetar_20 = _RAND_85[63:0];
  _RAND_86 = {2{`RANDOM}};
  thetar_21 = _RAND_86[63:0];
  _RAND_87 = {2{`RANDOM}};
  thetar_22 = _RAND_87[63:0];
  _RAND_88 = {2{`RANDOM}};
  thetar_23 = _RAND_88[63:0];
  _RAND_89 = {2{`RANDOM}};
  thetar_24 = _RAND_89[63:0];
  _RAND_90 = {2{`RANDOM}};
  thetar_25 = _RAND_90[63:0];
  _RAND_91 = {2{`RANDOM}};
  thetar_26 = _RAND_91[63:0];
  _RAND_92 = {2{`RANDOM}};
  thetar_27 = _RAND_92[63:0];
  _RAND_93 = {2{`RANDOM}};
  thetar_28 = _RAND_93[63:0];
  _RAND_94 = {2{`RANDOM}};
  thetar_29 = _RAND_94[63:0];
  _RAND_95 = {2{`RANDOM}};
  thetar_30 = _RAND_95[63:0];
  _RAND_96 = {2{`RANDOM}};
  thetar_31 = _RAND_96[63:0];
  _RAND_97 = {2{`RANDOM}};
  z0sr_0 = _RAND_97[63:0];
  _RAND_98 = {2{`RANDOM}};
  z0sr_1 = _RAND_98[63:0];
  _RAND_99 = {2{`RANDOM}};
  z0sr_2 = _RAND_99[63:0];
  _RAND_100 = {2{`RANDOM}};
  z0sr_3 = _RAND_100[63:0];
  _RAND_101 = {2{`RANDOM}};
  z0sr_4 = _RAND_101[63:0];
  _RAND_102 = {2{`RANDOM}};
  z0sr_5 = _RAND_102[63:0];
  _RAND_103 = {2{`RANDOM}};
  z0sr_6 = _RAND_103[63:0];
  _RAND_104 = {2{`RANDOM}};
  z0sr_7 = _RAND_104[63:0];
  _RAND_105 = {2{`RANDOM}};
  z0sr_8 = _RAND_105[63:0];
  _RAND_106 = {2{`RANDOM}};
  z0sr_9 = _RAND_106[63:0];
  _RAND_107 = {2{`RANDOM}};
  z0sr_10 = _RAND_107[63:0];
  _RAND_108 = {2{`RANDOM}};
  z0sr_11 = _RAND_108[63:0];
  _RAND_109 = {2{`RANDOM}};
  z0sr_12 = _RAND_109[63:0];
  _RAND_110 = {2{`RANDOM}};
  z0sr_13 = _RAND_110[63:0];
  _RAND_111 = {2{`RANDOM}};
  z0sr_14 = _RAND_111[63:0];
  _RAND_112 = {2{`RANDOM}};
  z0sr_15 = _RAND_112[63:0];
  _RAND_113 = {2{`RANDOM}};
  z0sr_16 = _RAND_113[63:0];
  _RAND_114 = {2{`RANDOM}};
  z0sr_17 = _RAND_114[63:0];
  _RAND_115 = {2{`RANDOM}};
  z0sr_18 = _RAND_115[63:0];
  _RAND_116 = {2{`RANDOM}};
  z0sr_19 = _RAND_116[63:0];
  _RAND_117 = {2{`RANDOM}};
  z0sr_20 = _RAND_117[63:0];
  _RAND_118 = {2{`RANDOM}};
  z0sr_21 = _RAND_118[63:0];
  _RAND_119 = {2{`RANDOM}};
  z0sr_22 = _RAND_119[63:0];
  _RAND_120 = {2{`RANDOM}};
  z0sr_23 = _RAND_120[63:0];
  _RAND_121 = {2{`RANDOM}};
  z0sr_24 = _RAND_121[63:0];
  _RAND_122 = {2{`RANDOM}};
  z0sr_25 = _RAND_122[63:0];
  _RAND_123 = {2{`RANDOM}};
  z0sr_26 = _RAND_123[63:0];
  _RAND_124 = {2{`RANDOM}};
  z0sr_27 = _RAND_124[63:0];
  _RAND_125 = {2{`RANDOM}};
  z0sr_28 = _RAND_125[63:0];
  _RAND_126 = {2{`RANDOM}};
  z0sr_29 = _RAND_126[63:0];
  _RAND_127 = {2{`RANDOM}};
  z0sr_30 = _RAND_127[63:0];
  _RAND_128 = {2{`RANDOM}};
  z0sr_31 = _RAND_128[63:0];
  _RAND_129 = {2{`RANDOM}};
  z0sr_32 = _RAND_129[63:0];
  _RAND_130 = {1{`RANDOM}};
  modesr_0 = _RAND_130[1:0];
  _RAND_131 = {1{`RANDOM}};
  modesr_1 = _RAND_131[1:0];
  _RAND_132 = {1{`RANDOM}};
  modesr_2 = _RAND_132[1:0];
  _RAND_133 = {1{`RANDOM}};
  modesr_3 = _RAND_133[1:0];
  _RAND_134 = {1{`RANDOM}};
  modesr_4 = _RAND_134[1:0];
  _RAND_135 = {1{`RANDOM}};
  modesr_5 = _RAND_135[1:0];
  _RAND_136 = {1{`RANDOM}};
  modesr_6 = _RAND_136[1:0];
  _RAND_137 = {1{`RANDOM}};
  modesr_7 = _RAND_137[1:0];
  _RAND_138 = {1{`RANDOM}};
  modesr_8 = _RAND_138[1:0];
  _RAND_139 = {1{`RANDOM}};
  modesr_9 = _RAND_139[1:0];
  _RAND_140 = {1{`RANDOM}};
  modesr_10 = _RAND_140[1:0];
  _RAND_141 = {1{`RANDOM}};
  modesr_11 = _RAND_141[1:0];
  _RAND_142 = {1{`RANDOM}};
  modesr_12 = _RAND_142[1:0];
  _RAND_143 = {1{`RANDOM}};
  modesr_13 = _RAND_143[1:0];
  _RAND_144 = {1{`RANDOM}};
  modesr_14 = _RAND_144[1:0];
  _RAND_145 = {1{`RANDOM}};
  modesr_15 = _RAND_145[1:0];
  _RAND_146 = {1{`RANDOM}};
  modesr_16 = _RAND_146[1:0];
  _RAND_147 = {1{`RANDOM}};
  modesr_17 = _RAND_147[1:0];
  _RAND_148 = {1{`RANDOM}};
  modesr_18 = _RAND_148[1:0];
  _RAND_149 = {1{`RANDOM}};
  modesr_19 = _RAND_149[1:0];
  _RAND_150 = {1{`RANDOM}};
  modesr_20 = _RAND_150[1:0];
  _RAND_151 = {1{`RANDOM}};
  modesr_21 = _RAND_151[1:0];
  _RAND_152 = {1{`RANDOM}};
  modesr_22 = _RAND_152[1:0];
  _RAND_153 = {1{`RANDOM}};
  modesr_23 = _RAND_153[1:0];
  _RAND_154 = {1{`RANDOM}};
  modesr_24 = _RAND_154[1:0];
  _RAND_155 = {1{`RANDOM}};
  modesr_25 = _RAND_155[1:0];
  _RAND_156 = {1{`RANDOM}};
  modesr_26 = _RAND_156[1:0];
  _RAND_157 = {1{`RANDOM}};
  modesr_27 = _RAND_157[1:0];
  _RAND_158 = {1{`RANDOM}};
  modesr_28 = _RAND_158[1:0];
  _RAND_159 = {1{`RANDOM}};
  modesr_29 = _RAND_159[1:0];
  _RAND_160 = {1{`RANDOM}};
  modesr_30 = _RAND_160[1:0];
  _RAND_161 = {1{`RANDOM}};
  modesr_31 = _RAND_161[1:0];
  _RAND_162 = {1{`RANDOM}};
  modesr_32 = _RAND_162[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

module CORDIC(
  input          clock,
  input          reset,
  input  [127:0] io_in_z0,
  input  [127:0] io_in_mode,
  output [127:0] io_out_x,
  output [1:0]   io_out_mode
);
`ifdef RANDOMIZE_REG_INIT
  reg [127:0] _RAND_0;
  reg [127:0] _RAND_1;
  reg [127:0] _RAND_2;
  reg [127:0] _RAND_3;
  reg [127:0] _RAND_4;
  reg [127:0] _RAND_5;
  reg [127:0] _RAND_6;
  reg [127:0] _RAND_7;
  reg [127:0] _RAND_8;
  reg [127:0] _RAND_9;
  reg [127:0] _RAND_10;
  reg [127:0] _RAND_11;
  reg [127:0] _RAND_12;
  reg [127:0] _RAND_13;
  reg [127:0] _RAND_14;
  reg [127:0] _RAND_15;
  reg [127:0] _RAND_16;
  reg [127:0] _RAND_17;
  reg [127:0] _RAND_18;
  reg [127:0] _RAND_19;
  reg [127:0] _RAND_20;
  reg [127:0] _RAND_21;
  reg [127:0] _RAND_22;
  reg [127:0] _RAND_23;
  reg [127:0] _RAND_24;
  reg [127:0] _RAND_25;
  reg [127:0] _RAND_26;
  reg [127:0] _RAND_27;
  reg [127:0] _RAND_28;
  reg [127:0] _RAND_29;
  reg [127:0] _RAND_30;
  reg [127:0] _RAND_31;
  reg [127:0] _RAND_32;
  reg [127:0] _RAND_33;
  reg [127:0] _RAND_34;
  reg [127:0] _RAND_35;
  reg [127:0] _RAND_36;
  reg [127:0] _RAND_37;
  reg [127:0] _RAND_38;
  reg [127:0] _RAND_39;
  reg [127:0] _RAND_40;
  reg [127:0] _RAND_41;
  reg [127:0] _RAND_42;
  reg [127:0] _RAND_43;
  reg [127:0] _RAND_44;
  reg [127:0] _RAND_45;
  reg [127:0] _RAND_46;
  reg [127:0] _RAND_47;
  reg [127:0] _RAND_48;
  reg [127:0] _RAND_49;
  reg [127:0] _RAND_50;
  reg [127:0] _RAND_51;
  reg [127:0] _RAND_52;
  reg [127:0] _RAND_53;
  reg [127:0] _RAND_54;
  reg [127:0] _RAND_55;
  reg [127:0] _RAND_56;
  reg [127:0] _RAND_57;
  reg [127:0] _RAND_58;
  reg [127:0] _RAND_59;
  reg [127:0] _RAND_60;
  reg [127:0] _RAND_61;
  reg [127:0] _RAND_62;
  reg [127:0] _RAND_63;
  reg [127:0] _RAND_64;
  reg [127:0] _RAND_65;
  reg [127:0] _RAND_66;
  reg [127:0] _RAND_67;
  reg [127:0] _RAND_68;
  reg [127:0] _RAND_69;
  reg [127:0] _RAND_70;
  reg [127:0] _RAND_71;
  reg [127:0] _RAND_72;
  reg [127:0] _RAND_73;
  reg [127:0] _RAND_74;
  reg [127:0] _RAND_75;
  reg [127:0] _RAND_76;
  reg [127:0] _RAND_77;
  reg [127:0] _RAND_78;
  reg [127:0] _RAND_79;
  reg [127:0] _RAND_80;
  reg [127:0] _RAND_81;
  reg [127:0] _RAND_82;
  reg [127:0] _RAND_83;
  reg [127:0] _RAND_84;
  reg [127:0] _RAND_85;
  reg [127:0] _RAND_86;
  reg [127:0] _RAND_87;
  reg [127:0] _RAND_88;
  reg [127:0] _RAND_89;
  reg [127:0] _RAND_90;
  reg [127:0] _RAND_91;
  reg [127:0] _RAND_92;
  reg [127:0] _RAND_93;
  reg [127:0] _RAND_94;
  reg [127:0] _RAND_95;
  reg [127:0] _RAND_96;
  reg [127:0] _RAND_97;
  reg [127:0] _RAND_98;
  reg [127:0] _RAND_99;
  reg [127:0] _RAND_100;
  reg [127:0] _RAND_101;
  reg [127:0] _RAND_102;
  reg [127:0] _RAND_103;
  reg [127:0] _RAND_104;
  reg [127:0] _RAND_105;
  reg [127:0] _RAND_106;
  reg [127:0] _RAND_107;
  reg [127:0] _RAND_108;
  reg [127:0] _RAND_109;
  reg [127:0] _RAND_110;
  reg [127:0] _RAND_111;
  reg [127:0] _RAND_112;
  reg [127:0] _RAND_113;
  reg [127:0] _RAND_114;
  reg [127:0] _RAND_115;
  reg [127:0] _RAND_116;
  reg [127:0] _RAND_117;
  reg [127:0] _RAND_118;
  reg [127:0] _RAND_119;
  reg [127:0] _RAND_120;
  reg [127:0] _RAND_121;
  reg [127:0] _RAND_122;
  reg [127:0] _RAND_123;
  reg [127:0] _RAND_124;
  reg [127:0] _RAND_125;
  reg [127:0] _RAND_126;
  reg [127:0] _RAND_127;
  reg [127:0] _RAND_128;
  reg [127:0] _RAND_129;
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
  wire [127:0] tofixedx0_io_in; // @[CORDIC.scala 367:27]
  wire [127:0] tofixedx0_io_out; // @[CORDIC.scala 367:27]
  wire [127:0] tofixedy0_io_in; // @[CORDIC.scala 368:27]
  wire [127:0] tofixedy0_io_out; // @[CORDIC.scala 368:27]
  wire [127:0] tofloatxout_io_in; // @[CORDIC.scala 793:29]
  wire [127:0] tofloatxout_io_out; // @[CORDIC.scala 793:29]
  wire [127:0] tofloatyout_io_in; // @[CORDIC.scala 794:29]
  wire [127:0] tofloatyout_io_out; // @[CORDIC.scala 794:29]
  wire [127:0] tofloatzout_io_in; // @[CORDIC.scala 795:29]
  wire [127:0] tofloatzout_io_out; // @[CORDIC.scala 795:29]
  reg [127:0] xr_0; // @[CORDIC.scala 269:19]
  reg [127:0] xr_1; // @[CORDIC.scala 269:19]
  reg [127:0] xr_2; // @[CORDIC.scala 269:19]
  reg [127:0] xr_3; // @[CORDIC.scala 269:19]
  reg [127:0] xr_4; // @[CORDIC.scala 269:19]
  reg [127:0] xr_5; // @[CORDIC.scala 269:19]
  reg [127:0] xr_6; // @[CORDIC.scala 269:19]
  reg [127:0] xr_7; // @[CORDIC.scala 269:19]
  reg [127:0] xr_8; // @[CORDIC.scala 269:19]
  reg [127:0] xr_9; // @[CORDIC.scala 269:19]
  reg [127:0] xr_10; // @[CORDIC.scala 269:19]
  reg [127:0] xr_11; // @[CORDIC.scala 269:19]
  reg [127:0] xr_12; // @[CORDIC.scala 269:19]
  reg [127:0] xr_13; // @[CORDIC.scala 269:19]
  reg [127:0] xr_14; // @[CORDIC.scala 269:19]
  reg [127:0] xr_15; // @[CORDIC.scala 269:19]
  reg [127:0] xr_16; // @[CORDIC.scala 269:19]
  reg [127:0] xr_17; // @[CORDIC.scala 269:19]
  reg [127:0] xr_18; // @[CORDIC.scala 269:19]
  reg [127:0] xr_19; // @[CORDIC.scala 269:19]
  reg [127:0] xr_20; // @[CORDIC.scala 269:19]
  reg [127:0] xr_21; // @[CORDIC.scala 269:19]
  reg [127:0] xr_22; // @[CORDIC.scala 269:19]
  reg [127:0] xr_23; // @[CORDIC.scala 269:19]
  reg [127:0] xr_24; // @[CORDIC.scala 269:19]
  reg [127:0] xr_25; // @[CORDIC.scala 269:19]
  reg [127:0] xr_26; // @[CORDIC.scala 269:19]
  reg [127:0] xr_27; // @[CORDIC.scala 269:19]
  reg [127:0] xr_28; // @[CORDIC.scala 269:19]
  reg [127:0] xr_29; // @[CORDIC.scala 269:19]
  reg [127:0] xr_30; // @[CORDIC.scala 269:19]
  reg [127:0] xr_31; // @[CORDIC.scala 269:19]
  reg [127:0] xr_32; // @[CORDIC.scala 269:19]
  reg [127:0] yr_0; // @[CORDIC.scala 270:19]
  reg [127:0] yr_1; // @[CORDIC.scala 270:19]
  reg [127:0] yr_2; // @[CORDIC.scala 270:19]
  reg [127:0] yr_3; // @[CORDIC.scala 270:19]
  reg [127:0] yr_4; // @[CORDIC.scala 270:19]
  reg [127:0] yr_5; // @[CORDIC.scala 270:19]
  reg [127:0] yr_6; // @[CORDIC.scala 270:19]
  reg [127:0] yr_7; // @[CORDIC.scala 270:19]
  reg [127:0] yr_8; // @[CORDIC.scala 270:19]
  reg [127:0] yr_9; // @[CORDIC.scala 270:19]
  reg [127:0] yr_10; // @[CORDIC.scala 270:19]
  reg [127:0] yr_11; // @[CORDIC.scala 270:19]
  reg [127:0] yr_12; // @[CORDIC.scala 270:19]
  reg [127:0] yr_13; // @[CORDIC.scala 270:19]
  reg [127:0] yr_14; // @[CORDIC.scala 270:19]
  reg [127:0] yr_15; // @[CORDIC.scala 270:19]
  reg [127:0] yr_16; // @[CORDIC.scala 270:19]
  reg [127:0] yr_17; // @[CORDIC.scala 270:19]
  reg [127:0] yr_18; // @[CORDIC.scala 270:19]
  reg [127:0] yr_19; // @[CORDIC.scala 270:19]
  reg [127:0] yr_20; // @[CORDIC.scala 270:19]
  reg [127:0] yr_21; // @[CORDIC.scala 270:19]
  reg [127:0] yr_22; // @[CORDIC.scala 270:19]
  reg [127:0] yr_23; // @[CORDIC.scala 270:19]
  reg [127:0] yr_24; // @[CORDIC.scala 270:19]
  reg [127:0] yr_25; // @[CORDIC.scala 270:19]
  reg [127:0] yr_26; // @[CORDIC.scala 270:19]
  reg [127:0] yr_27; // @[CORDIC.scala 270:19]
  reg [127:0] yr_28; // @[CORDIC.scala 270:19]
  reg [127:0] yr_29; // @[CORDIC.scala 270:19]
  reg [127:0] yr_30; // @[CORDIC.scala 270:19]
  reg [127:0] yr_31; // @[CORDIC.scala 270:19]
  reg [127:0] yr_32; // @[CORDIC.scala 270:19]
  reg [127:0] thetar_1; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_2; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_3; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_4; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_5; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_6; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_7; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_8; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_9; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_10; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_11; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_12; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_13; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_14; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_15; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_16; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_17; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_18; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_19; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_20; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_21; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_22; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_23; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_24; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_25; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_26; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_27; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_28; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_29; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_30; // @[CORDIC.scala 271:23]
  reg [127:0] thetar_31; // @[CORDIC.scala 271:23]
  reg [127:0] z0sr_0; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_1; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_2; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_3; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_4; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_5; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_6; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_7; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_8; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_9; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_10; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_11; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_12; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_13; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_14; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_15; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_16; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_17; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_18; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_19; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_20; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_21; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_22; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_23; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_24; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_25; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_26; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_27; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_28; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_29; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_30; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_31; // @[CORDIC.scala 272:21]
  reg [127:0] z0sr_32; // @[CORDIC.scala 272:21]
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
  wire  _fxxterm_T = 128'sh0 > $signed(z0sr_0); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_3 = 128'sh0 - $signed(xr_0); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm = 128'sh0 > $signed(z0sr_0) ? $signed(_fxxterm_T_3) : $signed(xr_0); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_3 = 128'sh0 - $signed(yr_0); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm = _fxxterm_T ? $signed(_fxyterm_T_3) : $signed(yr_0); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_2 = 128'h0 - 128'hc90fdaa22168c000; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_1_T = _fxxterm_T ? _fxthetaterm_T_2 : 128'hc90fdaa22168c000; // @[CORDIC.scala 757:54]
  wire [128:0] _theta_1_T_1 = {{1{_theta_1_T[127]}},_theta_1_T}; // @[CORDIC.scala 757:40]
  wire [127:0] theta_1 = _theta_1_T_1[127:0]; // @[CORDIC.scala 757:40]
  wire [127:0] x_1 = $signed(xr_0) - $signed(fxyterm); // @[CORDIC.scala 758:32]
  wire [127:0] y_1 = $signed(fxxterm) + $signed(yr_0); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_4 = $signed(theta_1) > $signed(z0sr_0); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_7 = 128'sh0 - $signed(x_1); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_1 = $signed(theta_1) > $signed(z0sr_0) ? $signed(_fxxterm_T_7) : $signed(x_1); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_7 = 128'sh0 - $signed(y_1); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_1 = _fxxterm_T_4 ? $signed(_fxyterm_T_7) : $signed(y_1); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_5 = 128'h0 - 128'h76b19c1586ed3c00; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_2_T = _fxxterm_T_4 ? _fxthetaterm_T_5 : 128'h76b19c1586ed3c00; // @[CORDIC.scala 770:54]
  wire [127:0] theta_2 = $signed(theta_1) + $signed(_theta_2_T); // @[CORDIC.scala 770:40]
  wire [126:0] _GEN_0 = fxyterm_1[127:1]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_2_T = {{1{_GEN_0[126]}},_GEN_0}; // @[CORDIC.scala 771:43]
  wire [127:0] x_2 = $signed(x_1) - $signed(_x_2_T); // @[CORDIC.scala 771:32]
  wire [126:0] _GEN_1 = fxxterm_1[127:1]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_2_T = {{1{_GEN_1[126]}},_GEN_1}; // @[CORDIC.scala 772:32]
  wire [127:0] y_2 = $signed(_y_2_T) + $signed(y_1); // @[CORDIC.scala 772:56]
  wire  _T_1 = ~reset; // @[CORDIC.scala 776:17]
  wire  _fxxterm_T_8 = $signed(thetar_1) > $signed(z0sr_1); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_11 = 128'sh0 - $signed(xr_1); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_2 = $signed(thetar_1) > $signed(z0sr_1) ? $signed(_fxxterm_T_11) : $signed(xr_1); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_11 = 128'sh0 - $signed(yr_1); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_2 = _fxxterm_T_8 ? $signed(_fxyterm_T_11) : $signed(yr_1); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_8 = 128'h0 - 128'h3eb6ebf25901ba00; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_3_T = _fxxterm_T_8 ? _fxthetaterm_T_8 : 128'h3eb6ebf25901ba00; // @[CORDIC.scala 757:54]
  wire [127:0] theta_3 = $signed(thetar_1) + $signed(_theta_3_T); // @[CORDIC.scala 757:40]
  wire [125:0] _GEN_2 = fxyterm_2[127:2]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_3_T = {{2{_GEN_2[125]}},_GEN_2}; // @[CORDIC.scala 758:43]
  wire [127:0] x_3 = $signed(xr_1) - $signed(_x_3_T); // @[CORDIC.scala 758:32]
  wire [125:0] _GEN_3 = fxxterm_2[127:2]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_3_T = {{2{_GEN_3[125]}},_GEN_3}; // @[CORDIC.scala 759:32]
  wire [127:0] y_3 = $signed(_y_3_T) + $signed(yr_1); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_12 = $signed(theta_3) > $signed(z0sr_1); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_15 = 128'sh0 - $signed(x_3); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_3 = $signed(theta_3) > $signed(z0sr_1) ? $signed(_fxxterm_T_15) : $signed(x_3); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_15 = 128'sh0 - $signed(y_3); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_3 = _fxxterm_T_12 ? $signed(_fxyterm_T_15) : $signed(y_3); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_11 = 128'h0 - 128'h1fd5ba9aac2f6e00; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_4_T = _fxxterm_T_12 ? _fxthetaterm_T_11 : 128'h1fd5ba9aac2f6e00; // @[CORDIC.scala 770:54]
  wire [127:0] theta_4 = $signed(theta_3) + $signed(_theta_4_T); // @[CORDIC.scala 770:40]
  wire [124:0] _GEN_4 = fxyterm_3[127:3]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_4_T = {{3{_GEN_4[124]}},_GEN_4}; // @[CORDIC.scala 771:43]
  wire [127:0] x_4 = $signed(x_3) - $signed(_x_4_T); // @[CORDIC.scala 771:32]
  wire [124:0] _GEN_5 = fxxterm_3[127:3]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_4_T = {{3{_GEN_5[124]}},_GEN_5}; // @[CORDIC.scala 772:32]
  wire [127:0] y_4 = $signed(_y_4_T) + $signed(y_3); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_16 = $signed(thetar_2) > $signed(z0sr_2); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_19 = 128'sh0 - $signed(xr_2); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_4 = $signed(thetar_2) > $signed(z0sr_2) ? $signed(_fxxterm_T_19) : $signed(xr_2); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_19 = 128'sh0 - $signed(yr_2); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_4 = _fxxterm_T_16 ? $signed(_fxyterm_T_19) : $signed(yr_2); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_14 = 128'h0 - 128'hffaaddb967ef500; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_5_T = _fxxterm_T_16 ? _fxthetaterm_T_14 : 128'hffaaddb967ef500; // @[CORDIC.scala 757:54]
  wire [127:0] theta_5 = $signed(thetar_2) + $signed(_theta_5_T); // @[CORDIC.scala 757:40]
  wire [123:0] _GEN_6 = fxyterm_4[127:4]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_5_T = {{4{_GEN_6[123]}},_GEN_6}; // @[CORDIC.scala 758:43]
  wire [127:0] x_5 = $signed(xr_2) - $signed(_x_5_T); // @[CORDIC.scala 758:32]
  wire [123:0] _GEN_7 = fxxterm_4[127:4]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_5_T = {{4{_GEN_7[123]}},_GEN_7}; // @[CORDIC.scala 759:32]
  wire [127:0] y_5 = $signed(_y_5_T) + $signed(yr_2); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_20 = $signed(theta_5) > $signed(z0sr_2); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_23 = 128'sh0 - $signed(x_5); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_5 = $signed(theta_5) > $signed(z0sr_2) ? $signed(_fxxterm_T_23) : $signed(x_5); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_23 = 128'sh0 - $signed(y_5); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_5 = _fxxterm_T_20 ? $signed(_fxyterm_T_23) : $signed(y_5); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_17 = 128'h0 - 128'h7ff556eea5d8940; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_6_T = _fxxterm_T_20 ? _fxthetaterm_T_17 : 128'h7ff556eea5d8940; // @[CORDIC.scala 770:54]
  wire [127:0] theta_6 = $signed(theta_5) + $signed(_theta_6_T); // @[CORDIC.scala 770:40]
  wire [122:0] _GEN_8 = fxyterm_5[127:5]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_6_T = {{5{_GEN_8[122]}},_GEN_8}; // @[CORDIC.scala 771:43]
  wire [127:0] x_6 = $signed(x_5) - $signed(_x_6_T); // @[CORDIC.scala 771:32]
  wire [122:0] _GEN_9 = fxxterm_5[127:5]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_6_T = {{5{_GEN_9[122]}},_GEN_9}; // @[CORDIC.scala 772:32]
  wire [127:0] y_6 = $signed(_y_6_T) + $signed(y_5); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_24 = $signed(thetar_3) > $signed(z0sr_3); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_27 = 128'sh0 - $signed(xr_3); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_6 = $signed(thetar_3) > $signed(z0sr_3) ? $signed(_fxxterm_T_27) : $signed(xr_3); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_27 = 128'sh0 - $signed(yr_3); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_6 = _fxxterm_T_24 ? $signed(_fxyterm_T_27) : $signed(yr_3); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_20 = 128'h0 - 128'h3ffeaab776e5360; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_7_T = _fxxterm_T_24 ? _fxthetaterm_T_20 : 128'h3ffeaab776e5360; // @[CORDIC.scala 757:54]
  wire [127:0] theta_7 = $signed(thetar_3) + $signed(_theta_7_T); // @[CORDIC.scala 757:40]
  wire [121:0] _GEN_10 = fxyterm_6[127:6]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_7_T = {{6{_GEN_10[121]}},_GEN_10}; // @[CORDIC.scala 758:43]
  wire [127:0] x_7 = $signed(xr_3) - $signed(_x_7_T); // @[CORDIC.scala 758:32]
  wire [121:0] _GEN_11 = fxxterm_6[127:6]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_7_T = {{6{_GEN_11[121]}},_GEN_11}; // @[CORDIC.scala 759:32]
  wire [127:0] y_7 = $signed(_y_7_T) + $signed(yr_3); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_28 = $signed(theta_7) > $signed(z0sr_3); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_31 = 128'sh0 - $signed(x_7); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_7 = $signed(theta_7) > $signed(z0sr_3) ? $signed(_fxxterm_T_31) : $signed(x_7); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_31 = 128'sh0 - $signed(y_7); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_7 = _fxxterm_T_28 ? $signed(_fxyterm_T_31) : $signed(y_7); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_23 = 128'h0 - 128'h1fffd555bbba970; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_8_T = _fxxterm_T_28 ? _fxthetaterm_T_23 : 128'h1fffd555bbba970; // @[CORDIC.scala 770:54]
  wire [127:0] theta_8 = $signed(theta_7) + $signed(_theta_8_T); // @[CORDIC.scala 770:40]
  wire [120:0] _GEN_12 = fxyterm_7[127:7]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_8_T = {{7{_GEN_12[120]}},_GEN_12}; // @[CORDIC.scala 771:43]
  wire [127:0] x_8 = $signed(x_7) - $signed(_x_8_T); // @[CORDIC.scala 771:32]
  wire [120:0] _GEN_13 = fxxterm_7[127:7]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_8_T = {{7{_GEN_13[120]}},_GEN_13}; // @[CORDIC.scala 772:32]
  wire [127:0] y_8 = $signed(_y_8_T) + $signed(y_7); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_32 = $signed(thetar_4) > $signed(z0sr_4); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_35 = 128'sh0 - $signed(xr_4); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_8 = $signed(thetar_4) > $signed(z0sr_4) ? $signed(_fxxterm_T_35) : $signed(xr_4); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_35 = 128'sh0 - $signed(yr_4); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_8 = _fxxterm_T_32 ? $signed(_fxyterm_T_35) : $signed(yr_4); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_26 = 128'h0 - 128'hffffaaaaddddb8; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_9_T = _fxxterm_T_32 ? _fxthetaterm_T_26 : 128'hffffaaaaddddb8; // @[CORDIC.scala 757:54]
  wire [127:0] theta_9 = $signed(thetar_4) + $signed(_theta_9_T); // @[CORDIC.scala 757:40]
  wire [119:0] _GEN_14 = fxyterm_8[127:8]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_9_T = {{8{_GEN_14[119]}},_GEN_14}; // @[CORDIC.scala 758:43]
  wire [127:0] x_9 = $signed(xr_4) - $signed(_x_9_T); // @[CORDIC.scala 758:32]
  wire [119:0] _GEN_15 = fxxterm_8[127:8]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_9_T = {{8{_GEN_15[119]}},_GEN_15}; // @[CORDIC.scala 759:32]
  wire [127:0] y_9 = $signed(_y_9_T) + $signed(yr_4); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_36 = $signed(theta_9) > $signed(z0sr_4); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_39 = 128'sh0 - $signed(x_9); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_9 = $signed(theta_9) > $signed(z0sr_4) ? $signed(_fxxterm_T_39) : $signed(x_9); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_39 = 128'sh0 - $signed(y_9); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_9 = _fxxterm_T_36 ? $signed(_fxyterm_T_39) : $signed(y_9); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_29 = 128'h0 - 128'h7ffff55556eef0; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_10_T = _fxxterm_T_36 ? _fxthetaterm_T_29 : 128'h7ffff55556eef0; // @[CORDIC.scala 770:54]
  wire [127:0] theta_10 = $signed(theta_9) + $signed(_theta_10_T); // @[CORDIC.scala 770:40]
  wire [118:0] _GEN_16 = fxyterm_9[127:9]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_10_T = {{9{_GEN_16[118]}},_GEN_16}; // @[CORDIC.scala 771:43]
  wire [127:0] x_10 = $signed(x_9) - $signed(_x_10_T); // @[CORDIC.scala 771:32]
  wire [118:0] _GEN_17 = fxxterm_9[127:9]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_10_T = {{9{_GEN_17[118]}},_GEN_17}; // @[CORDIC.scala 772:32]
  wire [127:0] y_10 = $signed(_y_10_T) + $signed(y_9); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_40 = $signed(thetar_5) > $signed(z0sr_5); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_43 = 128'sh0 - $signed(xr_5); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_10 = $signed(thetar_5) > $signed(z0sr_5) ? $signed(_fxxterm_T_43) : $signed(xr_5); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_43 = 128'sh0 - $signed(yr_5); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_10 = _fxxterm_T_40 ? $signed(_fxyterm_T_43) : $signed(yr_5); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_32 = 128'h0 - 128'h3ffffeaaaab778; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_11_T = _fxxterm_T_40 ? _fxthetaterm_T_32 : 128'h3ffffeaaaab778; // @[CORDIC.scala 757:54]
  wire [127:0] theta_11 = $signed(thetar_5) + $signed(_theta_11_T); // @[CORDIC.scala 757:40]
  wire [117:0] _GEN_18 = fxyterm_10[127:10]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_11_T = {{10{_GEN_18[117]}},_GEN_18}; // @[CORDIC.scala 758:43]
  wire [127:0] x_11 = $signed(xr_5) - $signed(_x_11_T); // @[CORDIC.scala 758:32]
  wire [117:0] _GEN_19 = fxxterm_10[127:10]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_11_T = {{10{_GEN_19[117]}},_GEN_19}; // @[CORDIC.scala 759:32]
  wire [127:0] y_11 = $signed(_y_11_T) + $signed(yr_5); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_44 = $signed(theta_11) > $signed(z0sr_5); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_47 = 128'sh0 - $signed(x_11); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_11 = $signed(theta_11) > $signed(z0sr_5) ? $signed(_fxxterm_T_47) : $signed(x_11); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_47 = 128'sh0 - $signed(y_11); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_11 = _fxxterm_T_44 ? $signed(_fxyterm_T_47) : $signed(y_11); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_35 = 128'h0 - 128'h1fffffd55555bc; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_12_T = _fxxterm_T_44 ? _fxthetaterm_T_35 : 128'h1fffffd55555bc; // @[CORDIC.scala 770:54]
  wire [127:0] theta_12 = $signed(theta_11) + $signed(_theta_12_T); // @[CORDIC.scala 770:40]
  wire [116:0] _GEN_20 = fxyterm_11[127:11]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_12_T = {{11{_GEN_20[116]}},_GEN_20}; // @[CORDIC.scala 771:43]
  wire [127:0] x_12 = $signed(x_11) - $signed(_x_12_T); // @[CORDIC.scala 771:32]
  wire [116:0] _GEN_21 = fxxterm_11[127:11]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_12_T = {{11{_GEN_21[116]}},_GEN_21}; // @[CORDIC.scala 772:32]
  wire [127:0] y_12 = $signed(_y_12_T) + $signed(y_11); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_48 = $signed(thetar_6) > $signed(z0sr_6); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_51 = 128'sh0 - $signed(xr_6); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_12 = $signed(thetar_6) > $signed(z0sr_6) ? $signed(_fxxterm_T_51) : $signed(xr_6); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_51 = 128'sh0 - $signed(yr_6); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_12 = _fxxterm_T_48 ? $signed(_fxyterm_T_51) : $signed(yr_6); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_38 = 128'h0 - 128'hffffffaaaaaae; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_13_T = _fxxterm_T_48 ? _fxthetaterm_T_38 : 128'hffffffaaaaaae; // @[CORDIC.scala 757:54]
  wire [127:0] theta_13 = $signed(thetar_6) + $signed(_theta_13_T); // @[CORDIC.scala 757:40]
  wire [115:0] _GEN_22 = fxyterm_12[127:12]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_13_T = {{12{_GEN_22[115]}},_GEN_22}; // @[CORDIC.scala 758:43]
  wire [127:0] x_13 = $signed(xr_6) - $signed(_x_13_T); // @[CORDIC.scala 758:32]
  wire [115:0] _GEN_23 = fxxterm_12[127:12]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_13_T = {{12{_GEN_23[115]}},_GEN_23}; // @[CORDIC.scala 759:32]
  wire [127:0] y_13 = $signed(_y_13_T) + $signed(yr_6); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_52 = $signed(theta_13) > $signed(z0sr_6); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_55 = 128'sh0 - $signed(x_13); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_13 = $signed(theta_13) > $signed(z0sr_6) ? $signed(_fxxterm_T_55) : $signed(x_13); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_55 = 128'sh0 - $signed(y_13); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_13 = _fxxterm_T_52 ? $signed(_fxyterm_T_55) : $signed(y_13); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_41 = 128'h0 - 128'h7ffffff555555; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_14_T = _fxxterm_T_52 ? _fxthetaterm_T_41 : 128'h7ffffff555555; // @[CORDIC.scala 770:54]
  wire [127:0] theta_14 = $signed(theta_13) + $signed(_theta_14_T); // @[CORDIC.scala 770:40]
  wire [114:0] _GEN_24 = fxyterm_13[127:13]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_14_T = {{13{_GEN_24[114]}},_GEN_24}; // @[CORDIC.scala 771:43]
  wire [127:0] x_14 = $signed(x_13) - $signed(_x_14_T); // @[CORDIC.scala 771:32]
  wire [114:0] _GEN_25 = fxxterm_13[127:13]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_14_T = {{13{_GEN_25[114]}},_GEN_25}; // @[CORDIC.scala 772:32]
  wire [127:0] y_14 = $signed(_y_14_T) + $signed(y_13); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_56 = $signed(thetar_7) > $signed(z0sr_7); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_59 = 128'sh0 - $signed(xr_7); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_14 = $signed(thetar_7) > $signed(z0sr_7) ? $signed(_fxxterm_T_59) : $signed(xr_7); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_59 = 128'sh0 - $signed(yr_7); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_14 = _fxxterm_T_56 ? $signed(_fxyterm_T_59) : $signed(yr_7); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_44 = 128'h0 - 128'h3ffffffeaaaaa; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_15_T = _fxxterm_T_56 ? _fxthetaterm_T_44 : 128'h3ffffffeaaaaa; // @[CORDIC.scala 757:54]
  wire [127:0] theta_15 = $signed(thetar_7) + $signed(_theta_15_T); // @[CORDIC.scala 757:40]
  wire [113:0] _GEN_26 = fxyterm_14[127:14]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_15_T = {{14{_GEN_26[113]}},_GEN_26}; // @[CORDIC.scala 758:43]
  wire [127:0] x_15 = $signed(xr_7) - $signed(_x_15_T); // @[CORDIC.scala 758:32]
  wire [113:0] _GEN_27 = fxxterm_14[127:14]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_15_T = {{14{_GEN_27[113]}},_GEN_27}; // @[CORDIC.scala 759:32]
  wire [127:0] y_15 = $signed(_y_15_T) + $signed(yr_7); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_60 = $signed(theta_15) > $signed(z0sr_7); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_63 = 128'sh0 - $signed(x_15); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_15 = $signed(theta_15) > $signed(z0sr_7) ? $signed(_fxxterm_T_63) : $signed(x_15); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_63 = 128'sh0 - $signed(y_15); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_15 = _fxxterm_T_60 ? $signed(_fxyterm_T_63) : $signed(y_15); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_47 = 128'h0 - 128'h1fffffffd5555; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_16_T = _fxxterm_T_60 ? _fxthetaterm_T_47 : 128'h1fffffffd5555; // @[CORDIC.scala 770:54]
  wire [127:0] theta_16 = $signed(theta_15) + $signed(_theta_16_T); // @[CORDIC.scala 770:40]
  wire [112:0] _GEN_28 = fxyterm_15[127:15]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_16_T = {{15{_GEN_28[112]}},_GEN_28}; // @[CORDIC.scala 771:43]
  wire [127:0] x_16 = $signed(x_15) - $signed(_x_16_T); // @[CORDIC.scala 771:32]
  wire [112:0] _GEN_29 = fxxterm_15[127:15]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_16_T = {{15{_GEN_29[112]}},_GEN_29}; // @[CORDIC.scala 772:32]
  wire [127:0] y_16 = $signed(_y_16_T) + $signed(y_15); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_64 = $signed(thetar_8) > $signed(z0sr_8); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_67 = 128'sh0 - $signed(xr_8); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_16 = $signed(thetar_8) > $signed(z0sr_8) ? $signed(_fxxterm_T_67) : $signed(xr_8); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_67 = 128'sh0 - $signed(yr_8); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_16 = _fxxterm_T_64 ? $signed(_fxyterm_T_67) : $signed(yr_8); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_50 = 128'h0 - 128'hffffffffaaaa; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_17_T = _fxxterm_T_64 ? _fxthetaterm_T_50 : 128'hffffffffaaaa; // @[CORDIC.scala 757:54]
  wire [127:0] theta_17 = $signed(thetar_8) + $signed(_theta_17_T); // @[CORDIC.scala 757:40]
  wire [111:0] _GEN_30 = fxyterm_16[127:16]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_17_T = {{16{_GEN_30[111]}},_GEN_30}; // @[CORDIC.scala 758:43]
  wire [127:0] x_17 = $signed(xr_8) - $signed(_x_17_T); // @[CORDIC.scala 758:32]
  wire [111:0] _GEN_31 = fxxterm_16[127:16]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_17_T = {{16{_GEN_31[111]}},_GEN_31}; // @[CORDIC.scala 759:32]
  wire [127:0] y_17 = $signed(_y_17_T) + $signed(yr_8); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_68 = $signed(theta_17) > $signed(z0sr_8); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_71 = 128'sh0 - $signed(x_17); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_17 = $signed(theta_17) > $signed(z0sr_8) ? $signed(_fxxterm_T_71) : $signed(x_17); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_71 = 128'sh0 - $signed(y_17); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_17 = _fxxterm_T_68 ? $signed(_fxyterm_T_71) : $signed(y_17); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_53 = 128'h0 - 128'h7ffffffff555; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_18_T = _fxxterm_T_68 ? _fxthetaterm_T_53 : 128'h7ffffffff555; // @[CORDIC.scala 770:54]
  wire [127:0] theta_18 = $signed(theta_17) + $signed(_theta_18_T); // @[CORDIC.scala 770:40]
  wire [110:0] _GEN_32 = fxyterm_17[127:17]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_18_T = {{17{_GEN_32[110]}},_GEN_32}; // @[CORDIC.scala 771:43]
  wire [127:0] x_18 = $signed(x_17) - $signed(_x_18_T); // @[CORDIC.scala 771:32]
  wire [110:0] _GEN_33 = fxxterm_17[127:17]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_18_T = {{17{_GEN_33[110]}},_GEN_33}; // @[CORDIC.scala 772:32]
  wire [127:0] y_18 = $signed(_y_18_T) + $signed(y_17); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_72 = $signed(thetar_9) > $signed(z0sr_9); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_75 = 128'sh0 - $signed(xr_9); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_18 = $signed(thetar_9) > $signed(z0sr_9) ? $signed(_fxxterm_T_75) : $signed(xr_9); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_75 = 128'sh0 - $signed(yr_9); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_18 = _fxxterm_T_72 ? $signed(_fxyterm_T_75) : $signed(yr_9); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_56 = 128'h0 - 128'h3ffffffffeaa; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_19_T = _fxxterm_T_72 ? _fxthetaterm_T_56 : 128'h3ffffffffeaa; // @[CORDIC.scala 757:54]
  wire [127:0] theta_19 = $signed(thetar_9) + $signed(_theta_19_T); // @[CORDIC.scala 757:40]
  wire [109:0] _GEN_34 = fxyterm_18[127:18]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_19_T = {{18{_GEN_34[109]}},_GEN_34}; // @[CORDIC.scala 758:43]
  wire [127:0] x_19 = $signed(xr_9) - $signed(_x_19_T); // @[CORDIC.scala 758:32]
  wire [109:0] _GEN_35 = fxxterm_18[127:18]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_19_T = {{18{_GEN_35[109]}},_GEN_35}; // @[CORDIC.scala 759:32]
  wire [127:0] y_19 = $signed(_y_19_T) + $signed(yr_9); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_76 = $signed(theta_19) > $signed(z0sr_9); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_79 = 128'sh0 - $signed(x_19); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_19 = $signed(theta_19) > $signed(z0sr_9) ? $signed(_fxxterm_T_79) : $signed(x_19); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_79 = 128'sh0 - $signed(y_19); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_19 = _fxxterm_T_76 ? $signed(_fxyterm_T_79) : $signed(y_19); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_59 = 128'h0 - 128'h1fffffffffd5; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_20_T = _fxxterm_T_76 ? _fxthetaterm_T_59 : 128'h1fffffffffd5; // @[CORDIC.scala 770:54]
  wire [127:0] theta_20 = $signed(theta_19) + $signed(_theta_20_T); // @[CORDIC.scala 770:40]
  wire [108:0] _GEN_36 = fxyterm_19[127:19]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_20_T = {{19{_GEN_36[108]}},_GEN_36}; // @[CORDIC.scala 771:43]
  wire [127:0] x_20 = $signed(x_19) - $signed(_x_20_T); // @[CORDIC.scala 771:32]
  wire [108:0] _GEN_37 = fxxterm_19[127:19]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_20_T = {{19{_GEN_37[108]}},_GEN_37}; // @[CORDIC.scala 772:32]
  wire [127:0] y_20 = $signed(_y_20_T) + $signed(y_19); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_80 = $signed(thetar_10) > $signed(z0sr_10); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_83 = 128'sh0 - $signed(xr_10); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_20 = $signed(thetar_10) > $signed(z0sr_10) ? $signed(_fxxterm_T_83) : $signed(xr_10); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_83 = 128'sh0 - $signed(yr_10); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_20 = _fxxterm_T_80 ? $signed(_fxyterm_T_83) : $signed(yr_10); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_62 = 128'h0 - 128'hffffffffffa; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_21_T = _fxxterm_T_80 ? _fxthetaterm_T_62 : 128'hffffffffffa; // @[CORDIC.scala 757:54]
  wire [127:0] theta_21 = $signed(thetar_10) + $signed(_theta_21_T); // @[CORDIC.scala 757:40]
  wire [107:0] _GEN_38 = fxyterm_20[127:20]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_21_T = {{20{_GEN_38[107]}},_GEN_38}; // @[CORDIC.scala 758:43]
  wire [127:0] x_21 = $signed(xr_10) - $signed(_x_21_T); // @[CORDIC.scala 758:32]
  wire [107:0] _GEN_39 = fxxterm_20[127:20]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_21_T = {{20{_GEN_39[107]}},_GEN_39}; // @[CORDIC.scala 759:32]
  wire [127:0] y_21 = $signed(_y_21_T) + $signed(yr_10); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_84 = $signed(theta_21) > $signed(z0sr_10); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_87 = 128'sh0 - $signed(x_21); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_21 = $signed(theta_21) > $signed(z0sr_10) ? $signed(_fxxterm_T_87) : $signed(x_21); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_87 = 128'sh0 - $signed(y_21); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_21 = _fxxterm_T_84 ? $signed(_fxyterm_T_87) : $signed(y_21); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_65 = 128'h0 - 128'h7ffffffffff; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_22_T = _fxxterm_T_84 ? _fxthetaterm_T_65 : 128'h7ffffffffff; // @[CORDIC.scala 770:54]
  wire [127:0] theta_22 = $signed(theta_21) + $signed(_theta_22_T); // @[CORDIC.scala 770:40]
  wire [106:0] _GEN_40 = fxyterm_21[127:21]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_22_T = {{21{_GEN_40[106]}},_GEN_40}; // @[CORDIC.scala 771:43]
  wire [127:0] x_22 = $signed(x_21) - $signed(_x_22_T); // @[CORDIC.scala 771:32]
  wire [106:0] _GEN_41 = fxxterm_21[127:21]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_22_T = {{21{_GEN_41[106]}},_GEN_41}; // @[CORDIC.scala 772:32]
  wire [127:0] y_22 = $signed(_y_22_T) + $signed(y_21); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_88 = $signed(thetar_11) > $signed(z0sr_11); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_91 = 128'sh0 - $signed(xr_11); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_22 = $signed(thetar_11) > $signed(z0sr_11) ? $signed(_fxxterm_T_91) : $signed(xr_11); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_91 = 128'sh0 - $signed(yr_11); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_22 = _fxxterm_T_88 ? $signed(_fxyterm_T_91) : $signed(yr_11); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_68 = 128'h0 - 128'h3ffffffffff; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_23_T = _fxxterm_T_88 ? _fxthetaterm_T_68 : 128'h3ffffffffff; // @[CORDIC.scala 757:54]
  wire [127:0] theta_23 = $signed(thetar_11) + $signed(_theta_23_T); // @[CORDIC.scala 757:40]
  wire [105:0] _GEN_42 = fxyterm_22[127:22]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_23_T = {{22{_GEN_42[105]}},_GEN_42}; // @[CORDIC.scala 758:43]
  wire [127:0] x_23 = $signed(xr_11) - $signed(_x_23_T); // @[CORDIC.scala 758:32]
  wire [105:0] _GEN_43 = fxxterm_22[127:22]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_23_T = {{22{_GEN_43[105]}},_GEN_43}; // @[CORDIC.scala 759:32]
  wire [127:0] y_23 = $signed(_y_23_T) + $signed(yr_11); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_92 = $signed(theta_23) > $signed(z0sr_11); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_95 = 128'sh0 - $signed(x_23); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_23 = $signed(theta_23) > $signed(z0sr_11) ? $signed(_fxxterm_T_95) : $signed(x_23); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_95 = 128'sh0 - $signed(y_23); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_23 = _fxxterm_T_92 ? $signed(_fxyterm_T_95) : $signed(y_23); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_71 = 128'h0 - 128'h1ffffffffff; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_24_T = _fxxterm_T_92 ? _fxthetaterm_T_71 : 128'h1ffffffffff; // @[CORDIC.scala 770:54]
  wire [127:0] theta_24 = $signed(theta_23) + $signed(_theta_24_T); // @[CORDIC.scala 770:40]
  wire [104:0] _GEN_44 = fxyterm_23[127:23]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_24_T = {{23{_GEN_44[104]}},_GEN_44}; // @[CORDIC.scala 771:43]
  wire [127:0] x_24 = $signed(x_23) - $signed(_x_24_T); // @[CORDIC.scala 771:32]
  wire [104:0] _GEN_45 = fxxterm_23[127:23]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_24_T = {{23{_GEN_45[104]}},_GEN_45}; // @[CORDIC.scala 772:32]
  wire [127:0] y_24 = $signed(_y_24_T) + $signed(y_23); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_96 = $signed(thetar_12) > $signed(z0sr_12); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_99 = 128'sh0 - $signed(xr_12); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_24 = $signed(thetar_12) > $signed(z0sr_12) ? $signed(_fxxterm_T_99) : $signed(xr_12); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_99 = 128'sh0 - $signed(yr_12); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_24 = _fxxterm_T_96 ? $signed(_fxyterm_T_99) : $signed(yr_12); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_74 = 128'h0 - 128'hffffffffff; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_25_T = _fxxterm_T_96 ? _fxthetaterm_T_74 : 128'hffffffffff; // @[CORDIC.scala 757:54]
  wire [127:0] theta_25 = $signed(thetar_12) + $signed(_theta_25_T); // @[CORDIC.scala 757:40]
  wire [103:0] _GEN_46 = fxyterm_24[127:24]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_25_T = {{24{_GEN_46[103]}},_GEN_46}; // @[CORDIC.scala 758:43]
  wire [127:0] x_25 = $signed(xr_12) - $signed(_x_25_T); // @[CORDIC.scala 758:32]
  wire [103:0] _GEN_47 = fxxterm_24[127:24]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_25_T = {{24{_GEN_47[103]}},_GEN_47}; // @[CORDIC.scala 759:32]
  wire [127:0] y_25 = $signed(_y_25_T) + $signed(yr_12); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_100 = $signed(theta_25) > $signed(z0sr_12); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_103 = 128'sh0 - $signed(x_25); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_25 = $signed(theta_25) > $signed(z0sr_12) ? $signed(_fxxterm_T_103) : $signed(x_25); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_103 = 128'sh0 - $signed(y_25); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_25 = _fxxterm_T_100 ? $signed(_fxyterm_T_103) : $signed(y_25); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_77 = 128'h0 - 128'h7fffffffff; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_26_T = _fxxterm_T_100 ? _fxthetaterm_T_77 : 128'h7fffffffff; // @[CORDIC.scala 770:54]
  wire [127:0] theta_26 = $signed(theta_25) + $signed(_theta_26_T); // @[CORDIC.scala 770:40]
  wire [102:0] _GEN_48 = fxyterm_25[127:25]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_26_T = {{25{_GEN_48[102]}},_GEN_48}; // @[CORDIC.scala 771:43]
  wire [127:0] x_26 = $signed(x_25) - $signed(_x_26_T); // @[CORDIC.scala 771:32]
  wire [102:0] _GEN_49 = fxxterm_25[127:25]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_26_T = {{25{_GEN_49[102]}},_GEN_49}; // @[CORDIC.scala 772:32]
  wire [127:0] y_26 = $signed(_y_26_T) + $signed(y_25); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_104 = $signed(thetar_13) > $signed(z0sr_13); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_107 = 128'sh0 - $signed(xr_13); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_26 = $signed(thetar_13) > $signed(z0sr_13) ? $signed(_fxxterm_T_107) : $signed(xr_13); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_107 = 128'sh0 - $signed(yr_13); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_26 = _fxxterm_T_104 ? $signed(_fxyterm_T_107) : $signed(yr_13); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_80 = 128'h0 - 128'h3fffffffff; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_27_T = _fxxterm_T_104 ? _fxthetaterm_T_80 : 128'h3fffffffff; // @[CORDIC.scala 757:54]
  wire [127:0] theta_27 = $signed(thetar_13) + $signed(_theta_27_T); // @[CORDIC.scala 757:40]
  wire [101:0] _GEN_50 = fxyterm_26[127:26]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_27_T = {{26{_GEN_50[101]}},_GEN_50}; // @[CORDIC.scala 758:43]
  wire [127:0] x_27 = $signed(xr_13) - $signed(_x_27_T); // @[CORDIC.scala 758:32]
  wire [101:0] _GEN_51 = fxxterm_26[127:26]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_27_T = {{26{_GEN_51[101]}},_GEN_51}; // @[CORDIC.scala 759:32]
  wire [127:0] y_27 = $signed(_y_27_T) + $signed(yr_13); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_108 = $signed(theta_27) > $signed(z0sr_13); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_111 = 128'sh0 - $signed(x_27); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_27 = $signed(theta_27) > $signed(z0sr_13) ? $signed(_fxxterm_T_111) : $signed(x_27); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_111 = 128'sh0 - $signed(y_27); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_27 = _fxxterm_T_108 ? $signed(_fxyterm_T_111) : $signed(y_27); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_83 = 128'h0 - 128'h2000000000; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_28_T = _fxxterm_T_108 ? _fxthetaterm_T_83 : 128'h2000000000; // @[CORDIC.scala 770:54]
  wire [127:0] theta_28 = $signed(theta_27) + $signed(_theta_28_T); // @[CORDIC.scala 770:40]
  wire [100:0] _GEN_52 = fxyterm_27[127:27]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_28_T = {{27{_GEN_52[100]}},_GEN_52}; // @[CORDIC.scala 771:43]
  wire [127:0] x_28 = $signed(x_27) - $signed(_x_28_T); // @[CORDIC.scala 771:32]
  wire [100:0] _GEN_53 = fxxterm_27[127:27]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_28_T = {{27{_GEN_53[100]}},_GEN_53}; // @[CORDIC.scala 772:32]
  wire [127:0] y_28 = $signed(_y_28_T) + $signed(y_27); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_112 = $signed(thetar_14) > $signed(z0sr_14); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_115 = 128'sh0 - $signed(xr_14); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_28 = $signed(thetar_14) > $signed(z0sr_14) ? $signed(_fxxterm_T_115) : $signed(xr_14); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_115 = 128'sh0 - $signed(yr_14); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_28 = _fxxterm_T_112 ? $signed(_fxyterm_T_115) : $signed(yr_14); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_86 = 128'h0 - 128'h1000000000; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_29_T = _fxxterm_T_112 ? _fxthetaterm_T_86 : 128'h1000000000; // @[CORDIC.scala 757:54]
  wire [127:0] theta_29 = $signed(thetar_14) + $signed(_theta_29_T); // @[CORDIC.scala 757:40]
  wire [99:0] _GEN_54 = fxyterm_28[127:28]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_29_T = {{28{_GEN_54[99]}},_GEN_54}; // @[CORDIC.scala 758:43]
  wire [127:0] x_29 = $signed(xr_14) - $signed(_x_29_T); // @[CORDIC.scala 758:32]
  wire [99:0] _GEN_55 = fxxterm_28[127:28]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_29_T = {{28{_GEN_55[99]}},_GEN_55}; // @[CORDIC.scala 759:32]
  wire [127:0] y_29 = $signed(_y_29_T) + $signed(yr_14); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_116 = $signed(theta_29) > $signed(z0sr_14); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_119 = 128'sh0 - $signed(x_29); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_29 = $signed(theta_29) > $signed(z0sr_14) ? $signed(_fxxterm_T_119) : $signed(x_29); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_119 = 128'sh0 - $signed(y_29); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_29 = _fxxterm_T_116 ? $signed(_fxyterm_T_119) : $signed(y_29); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_89 = 128'h0 - 128'h800000000; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_30_T = _fxxterm_T_116 ? _fxthetaterm_T_89 : 128'h800000000; // @[CORDIC.scala 770:54]
  wire [127:0] theta_30 = $signed(theta_29) + $signed(_theta_30_T); // @[CORDIC.scala 770:40]
  wire [98:0] _GEN_56 = fxyterm_29[127:29]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_30_T = {{29{_GEN_56[98]}},_GEN_56}; // @[CORDIC.scala 771:43]
  wire [127:0] x_30 = $signed(x_29) - $signed(_x_30_T); // @[CORDIC.scala 771:32]
  wire [98:0] _GEN_57 = fxxterm_29[127:29]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_30_T = {{29{_GEN_57[98]}},_GEN_57}; // @[CORDIC.scala 772:32]
  wire [127:0] y_30 = $signed(_y_30_T) + $signed(y_29); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_120 = $signed(thetar_15) > $signed(z0sr_15); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_123 = 128'sh0 - $signed(xr_15); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_30 = $signed(thetar_15) > $signed(z0sr_15) ? $signed(_fxxterm_T_123) : $signed(xr_15); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_123 = 128'sh0 - $signed(yr_15); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_30 = _fxxterm_T_120 ? $signed(_fxyterm_T_123) : $signed(yr_15); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_92 = 128'h0 - 128'h400000000; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_31_T = _fxxterm_T_120 ? _fxthetaterm_T_92 : 128'h400000000; // @[CORDIC.scala 757:54]
  wire [127:0] theta_31 = $signed(thetar_15) + $signed(_theta_31_T); // @[CORDIC.scala 757:40]
  wire [97:0] _GEN_58 = fxyterm_30[127:30]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_31_T = {{30{_GEN_58[97]}},_GEN_58}; // @[CORDIC.scala 758:43]
  wire [127:0] x_31 = $signed(xr_15) - $signed(_x_31_T); // @[CORDIC.scala 758:32]
  wire [97:0] _GEN_59 = fxxterm_30[127:30]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_31_T = {{30{_GEN_59[97]}},_GEN_59}; // @[CORDIC.scala 759:32]
  wire [127:0] y_31 = $signed(_y_31_T) + $signed(yr_15); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_124 = $signed(theta_31) > $signed(z0sr_15); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_127 = 128'sh0 - $signed(x_31); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_31 = $signed(theta_31) > $signed(z0sr_15) ? $signed(_fxxterm_T_127) : $signed(x_31); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_127 = 128'sh0 - $signed(y_31); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_31 = _fxxterm_T_124 ? $signed(_fxyterm_T_127) : $signed(y_31); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_95 = 128'h0 - 128'h200000000; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_32_T = _fxxterm_T_124 ? _fxthetaterm_T_95 : 128'h200000000; // @[CORDIC.scala 770:54]
  wire [127:0] theta_32 = $signed(theta_31) + $signed(_theta_32_T); // @[CORDIC.scala 770:40]
  wire [96:0] _GEN_60 = fxyterm_31[127:31]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_32_T = {{31{_GEN_60[96]}},_GEN_60}; // @[CORDIC.scala 771:43]
  wire [127:0] x_32 = $signed(x_31) - $signed(_x_32_T); // @[CORDIC.scala 771:32]
  wire [96:0] _GEN_61 = fxxterm_31[127:31]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_32_T = {{31{_GEN_61[96]}},_GEN_61}; // @[CORDIC.scala 772:32]
  wire [127:0] y_32 = $signed(_y_32_T) + $signed(y_31); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_128 = $signed(thetar_16) > $signed(z0sr_16); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_131 = 128'sh0 - $signed(xr_16); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_32 = $signed(thetar_16) > $signed(z0sr_16) ? $signed(_fxxterm_T_131) : $signed(xr_16); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_131 = 128'sh0 - $signed(yr_16); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_32 = _fxxterm_T_128 ? $signed(_fxyterm_T_131) : $signed(yr_16); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_98 = 128'h0 - 128'h100000000; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_33_T = _fxxterm_T_128 ? _fxthetaterm_T_98 : 128'h100000000; // @[CORDIC.scala 757:54]
  wire [127:0] theta_33 = $signed(thetar_16) + $signed(_theta_33_T); // @[CORDIC.scala 757:40]
  wire [95:0] _GEN_62 = fxyterm_32[127:32]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_33_T = {{32{_GEN_62[95]}},_GEN_62}; // @[CORDIC.scala 758:43]
  wire [127:0] x_33 = $signed(xr_16) - $signed(_x_33_T); // @[CORDIC.scala 758:32]
  wire [95:0] _GEN_63 = fxxterm_32[127:32]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_33_T = {{32{_GEN_63[95]}},_GEN_63}; // @[CORDIC.scala 759:32]
  wire [127:0] y_33 = $signed(_y_33_T) + $signed(yr_16); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_132 = $signed(theta_33) > $signed(z0sr_16); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_135 = 128'sh0 - $signed(x_33); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_33 = $signed(theta_33) > $signed(z0sr_16) ? $signed(_fxxterm_T_135) : $signed(x_33); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_135 = 128'sh0 - $signed(y_33); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_33 = _fxxterm_T_132 ? $signed(_fxyterm_T_135) : $signed(y_33); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_101 = 128'h0 - 128'h80000000; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_34_T = _fxxterm_T_132 ? _fxthetaterm_T_101 : 128'h80000000; // @[CORDIC.scala 770:54]
  wire [127:0] theta_34 = $signed(theta_33) + $signed(_theta_34_T); // @[CORDIC.scala 770:40]
  wire [94:0] _GEN_64 = fxyterm_33[127:33]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_34_T = {{33{_GEN_64[94]}},_GEN_64}; // @[CORDIC.scala 771:43]
  wire [127:0] x_34 = $signed(x_33) - $signed(_x_34_T); // @[CORDIC.scala 771:32]
  wire [94:0] _GEN_65 = fxxterm_33[127:33]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_34_T = {{33{_GEN_65[94]}},_GEN_65}; // @[CORDIC.scala 772:32]
  wire [127:0] y_34 = $signed(_y_34_T) + $signed(y_33); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_136 = $signed(thetar_17) > $signed(z0sr_17); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_139 = 128'sh0 - $signed(xr_17); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_34 = $signed(thetar_17) > $signed(z0sr_17) ? $signed(_fxxterm_T_139) : $signed(xr_17); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_139 = 128'sh0 - $signed(yr_17); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_34 = _fxxterm_T_136 ? $signed(_fxyterm_T_139) : $signed(yr_17); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_104 = 128'h0 - 128'h40000000; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_35_T = _fxxterm_T_136 ? _fxthetaterm_T_104 : 128'h40000000; // @[CORDIC.scala 757:54]
  wire [127:0] theta_35 = $signed(thetar_17) + $signed(_theta_35_T); // @[CORDIC.scala 757:40]
  wire [93:0] _GEN_66 = fxyterm_34[127:34]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_35_T = {{34{_GEN_66[93]}},_GEN_66}; // @[CORDIC.scala 758:43]
  wire [127:0] x_35 = $signed(xr_17) - $signed(_x_35_T); // @[CORDIC.scala 758:32]
  wire [93:0] _GEN_67 = fxxterm_34[127:34]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_35_T = {{34{_GEN_67[93]}},_GEN_67}; // @[CORDIC.scala 759:32]
  wire [127:0] y_35 = $signed(_y_35_T) + $signed(yr_17); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_140 = $signed(theta_35) > $signed(z0sr_17); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_143 = 128'sh0 - $signed(x_35); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_35 = $signed(theta_35) > $signed(z0sr_17) ? $signed(_fxxterm_T_143) : $signed(x_35); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_143 = 128'sh0 - $signed(y_35); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_35 = _fxxterm_T_140 ? $signed(_fxyterm_T_143) : $signed(y_35); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_107 = 128'h0 - 128'h20000000; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_36_T = _fxxterm_T_140 ? _fxthetaterm_T_107 : 128'h20000000; // @[CORDIC.scala 770:54]
  wire [127:0] theta_36 = $signed(theta_35) + $signed(_theta_36_T); // @[CORDIC.scala 770:40]
  wire [92:0] _GEN_68 = fxyterm_35[127:35]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_36_T = {{35{_GEN_68[92]}},_GEN_68}; // @[CORDIC.scala 771:43]
  wire [127:0] x_36 = $signed(x_35) - $signed(_x_36_T); // @[CORDIC.scala 771:32]
  wire [92:0] _GEN_69 = fxxterm_35[127:35]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_36_T = {{35{_GEN_69[92]}},_GEN_69}; // @[CORDIC.scala 772:32]
  wire [127:0] y_36 = $signed(_y_36_T) + $signed(y_35); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_144 = $signed(thetar_18) > $signed(z0sr_18); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_147 = 128'sh0 - $signed(xr_18); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_36 = $signed(thetar_18) > $signed(z0sr_18) ? $signed(_fxxterm_T_147) : $signed(xr_18); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_147 = 128'sh0 - $signed(yr_18); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_36 = _fxxterm_T_144 ? $signed(_fxyterm_T_147) : $signed(yr_18); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_110 = 128'h0 - 128'h10000000; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_37_T = _fxxterm_T_144 ? _fxthetaterm_T_110 : 128'h10000000; // @[CORDIC.scala 757:54]
  wire [127:0] theta_37 = $signed(thetar_18) + $signed(_theta_37_T); // @[CORDIC.scala 757:40]
  wire [91:0] _GEN_70 = fxyterm_36[127:36]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_37_T = {{36{_GEN_70[91]}},_GEN_70}; // @[CORDIC.scala 758:43]
  wire [127:0] x_37 = $signed(xr_18) - $signed(_x_37_T); // @[CORDIC.scala 758:32]
  wire [91:0] _GEN_71 = fxxterm_36[127:36]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_37_T = {{36{_GEN_71[91]}},_GEN_71}; // @[CORDIC.scala 759:32]
  wire [127:0] y_37 = $signed(_y_37_T) + $signed(yr_18); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_148 = $signed(theta_37) > $signed(z0sr_18); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_151 = 128'sh0 - $signed(x_37); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_37 = $signed(theta_37) > $signed(z0sr_18) ? $signed(_fxxterm_T_151) : $signed(x_37); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_151 = 128'sh0 - $signed(y_37); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_37 = _fxxterm_T_148 ? $signed(_fxyterm_T_151) : $signed(y_37); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_113 = 128'h0 - 128'h8000000; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_38_T = _fxxterm_T_148 ? _fxthetaterm_T_113 : 128'h8000000; // @[CORDIC.scala 770:54]
  wire [127:0] theta_38 = $signed(theta_37) + $signed(_theta_38_T); // @[CORDIC.scala 770:40]
  wire [90:0] _GEN_72 = fxyterm_37[127:37]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_38_T = {{37{_GEN_72[90]}},_GEN_72}; // @[CORDIC.scala 771:43]
  wire [127:0] x_38 = $signed(x_37) - $signed(_x_38_T); // @[CORDIC.scala 771:32]
  wire [90:0] _GEN_73 = fxxterm_37[127:37]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_38_T = {{37{_GEN_73[90]}},_GEN_73}; // @[CORDIC.scala 772:32]
  wire [127:0] y_38 = $signed(_y_38_T) + $signed(y_37); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_152 = $signed(thetar_19) > $signed(z0sr_19); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_155 = 128'sh0 - $signed(xr_19); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_38 = $signed(thetar_19) > $signed(z0sr_19) ? $signed(_fxxterm_T_155) : $signed(xr_19); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_155 = 128'sh0 - $signed(yr_19); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_38 = _fxxterm_T_152 ? $signed(_fxyterm_T_155) : $signed(yr_19); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_116 = 128'h0 - 128'h4000000; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_39_T = _fxxterm_T_152 ? _fxthetaterm_T_116 : 128'h4000000; // @[CORDIC.scala 757:54]
  wire [127:0] theta_39 = $signed(thetar_19) + $signed(_theta_39_T); // @[CORDIC.scala 757:40]
  wire [89:0] _GEN_74 = fxyterm_38[127:38]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_39_T = {{38{_GEN_74[89]}},_GEN_74}; // @[CORDIC.scala 758:43]
  wire [127:0] x_39 = $signed(xr_19) - $signed(_x_39_T); // @[CORDIC.scala 758:32]
  wire [89:0] _GEN_75 = fxxterm_38[127:38]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_39_T = {{38{_GEN_75[89]}},_GEN_75}; // @[CORDIC.scala 759:32]
  wire [127:0] y_39 = $signed(_y_39_T) + $signed(yr_19); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_156 = $signed(theta_39) > $signed(z0sr_19); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_159 = 128'sh0 - $signed(x_39); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_39 = $signed(theta_39) > $signed(z0sr_19) ? $signed(_fxxterm_T_159) : $signed(x_39); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_159 = 128'sh0 - $signed(y_39); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_39 = _fxxterm_T_156 ? $signed(_fxyterm_T_159) : $signed(y_39); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_119 = 128'h0 - 128'h2000000; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_40_T = _fxxterm_T_156 ? _fxthetaterm_T_119 : 128'h2000000; // @[CORDIC.scala 770:54]
  wire [127:0] theta_40 = $signed(theta_39) + $signed(_theta_40_T); // @[CORDIC.scala 770:40]
  wire [88:0] _GEN_76 = fxyterm_39[127:39]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_40_T = {{39{_GEN_76[88]}},_GEN_76}; // @[CORDIC.scala 771:43]
  wire [127:0] x_40 = $signed(x_39) - $signed(_x_40_T); // @[CORDIC.scala 771:32]
  wire [88:0] _GEN_77 = fxxterm_39[127:39]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_40_T = {{39{_GEN_77[88]}},_GEN_77}; // @[CORDIC.scala 772:32]
  wire [127:0] y_40 = $signed(_y_40_T) + $signed(y_39); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_160 = $signed(thetar_20) > $signed(z0sr_20); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_163 = 128'sh0 - $signed(xr_20); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_40 = $signed(thetar_20) > $signed(z0sr_20) ? $signed(_fxxterm_T_163) : $signed(xr_20); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_163 = 128'sh0 - $signed(yr_20); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_40 = _fxxterm_T_160 ? $signed(_fxyterm_T_163) : $signed(yr_20); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_122 = 128'h0 - 128'h1000000; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_41_T = _fxxterm_T_160 ? _fxthetaterm_T_122 : 128'h1000000; // @[CORDIC.scala 757:54]
  wire [127:0] theta_41 = $signed(thetar_20) + $signed(_theta_41_T); // @[CORDIC.scala 757:40]
  wire [87:0] _GEN_78 = fxyterm_40[127:40]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_41_T = {{40{_GEN_78[87]}},_GEN_78}; // @[CORDIC.scala 758:43]
  wire [127:0] x_41 = $signed(xr_20) - $signed(_x_41_T); // @[CORDIC.scala 758:32]
  wire [87:0] _GEN_79 = fxxterm_40[127:40]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_41_T = {{40{_GEN_79[87]}},_GEN_79}; // @[CORDIC.scala 759:32]
  wire [127:0] y_41 = $signed(_y_41_T) + $signed(yr_20); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_164 = $signed(theta_41) > $signed(z0sr_20); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_167 = 128'sh0 - $signed(x_41); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_41 = $signed(theta_41) > $signed(z0sr_20) ? $signed(_fxxterm_T_167) : $signed(x_41); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_167 = 128'sh0 - $signed(y_41); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_41 = _fxxterm_T_164 ? $signed(_fxyterm_T_167) : $signed(y_41); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_125 = 128'h0 - 128'h800000; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_42_T = _fxxterm_T_164 ? _fxthetaterm_T_125 : 128'h800000; // @[CORDIC.scala 770:54]
  wire [127:0] theta_42 = $signed(theta_41) + $signed(_theta_42_T); // @[CORDIC.scala 770:40]
  wire [86:0] _GEN_80 = fxyterm_41[127:41]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_42_T = {{41{_GEN_80[86]}},_GEN_80}; // @[CORDIC.scala 771:43]
  wire [127:0] x_42 = $signed(x_41) - $signed(_x_42_T); // @[CORDIC.scala 771:32]
  wire [86:0] _GEN_81 = fxxterm_41[127:41]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_42_T = {{41{_GEN_81[86]}},_GEN_81}; // @[CORDIC.scala 772:32]
  wire [127:0] y_42 = $signed(_y_42_T) + $signed(y_41); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_168 = $signed(thetar_21) > $signed(z0sr_21); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_171 = 128'sh0 - $signed(xr_21); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_42 = $signed(thetar_21) > $signed(z0sr_21) ? $signed(_fxxterm_T_171) : $signed(xr_21); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_171 = 128'sh0 - $signed(yr_21); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_42 = _fxxterm_T_168 ? $signed(_fxyterm_T_171) : $signed(yr_21); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_128 = 128'h0 - 128'h400000; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_43_T = _fxxterm_T_168 ? _fxthetaterm_T_128 : 128'h400000; // @[CORDIC.scala 757:54]
  wire [127:0] theta_43 = $signed(thetar_21) + $signed(_theta_43_T); // @[CORDIC.scala 757:40]
  wire [85:0] _GEN_82 = fxyterm_42[127:42]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_43_T = {{42{_GEN_82[85]}},_GEN_82}; // @[CORDIC.scala 758:43]
  wire [127:0] x_43 = $signed(xr_21) - $signed(_x_43_T); // @[CORDIC.scala 758:32]
  wire [85:0] _GEN_83 = fxxterm_42[127:42]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_43_T = {{42{_GEN_83[85]}},_GEN_83}; // @[CORDIC.scala 759:32]
  wire [127:0] y_43 = $signed(_y_43_T) + $signed(yr_21); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_172 = $signed(theta_43) > $signed(z0sr_21); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_175 = 128'sh0 - $signed(x_43); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_43 = $signed(theta_43) > $signed(z0sr_21) ? $signed(_fxxterm_T_175) : $signed(x_43); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_175 = 128'sh0 - $signed(y_43); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_43 = _fxxterm_T_172 ? $signed(_fxyterm_T_175) : $signed(y_43); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_131 = 128'h0 - 128'h200000; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_44_T = _fxxterm_T_172 ? _fxthetaterm_T_131 : 128'h200000; // @[CORDIC.scala 770:54]
  wire [127:0] theta_44 = $signed(theta_43) + $signed(_theta_44_T); // @[CORDIC.scala 770:40]
  wire [84:0] _GEN_84 = fxyterm_43[127:43]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_44_T = {{43{_GEN_84[84]}},_GEN_84}; // @[CORDIC.scala 771:43]
  wire [127:0] x_44 = $signed(x_43) - $signed(_x_44_T); // @[CORDIC.scala 771:32]
  wire [84:0] _GEN_85 = fxxterm_43[127:43]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_44_T = {{43{_GEN_85[84]}},_GEN_85}; // @[CORDIC.scala 772:32]
  wire [127:0] y_44 = $signed(_y_44_T) + $signed(y_43); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_176 = $signed(thetar_22) > $signed(z0sr_22); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_179 = 128'sh0 - $signed(xr_22); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_44 = $signed(thetar_22) > $signed(z0sr_22) ? $signed(_fxxterm_T_179) : $signed(xr_22); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_179 = 128'sh0 - $signed(yr_22); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_44 = _fxxterm_T_176 ? $signed(_fxyterm_T_179) : $signed(yr_22); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_134 = 128'h0 - 128'h100000; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_45_T = _fxxterm_T_176 ? _fxthetaterm_T_134 : 128'h100000; // @[CORDIC.scala 757:54]
  wire [127:0] theta_45 = $signed(thetar_22) + $signed(_theta_45_T); // @[CORDIC.scala 757:40]
  wire [83:0] _GEN_86 = fxyterm_44[127:44]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_45_T = {{44{_GEN_86[83]}},_GEN_86}; // @[CORDIC.scala 758:43]
  wire [127:0] x_45 = $signed(xr_22) - $signed(_x_45_T); // @[CORDIC.scala 758:32]
  wire [83:0] _GEN_87 = fxxterm_44[127:44]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_45_T = {{44{_GEN_87[83]}},_GEN_87}; // @[CORDIC.scala 759:32]
  wire [127:0] y_45 = $signed(_y_45_T) + $signed(yr_22); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_180 = $signed(theta_45) > $signed(z0sr_22); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_183 = 128'sh0 - $signed(x_45); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_45 = $signed(theta_45) > $signed(z0sr_22) ? $signed(_fxxterm_T_183) : $signed(x_45); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_183 = 128'sh0 - $signed(y_45); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_45 = _fxxterm_T_180 ? $signed(_fxyterm_T_183) : $signed(y_45); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_137 = 128'h0 - 128'h80000; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_46_T = _fxxterm_T_180 ? _fxthetaterm_T_137 : 128'h80000; // @[CORDIC.scala 770:54]
  wire [127:0] theta_46 = $signed(theta_45) + $signed(_theta_46_T); // @[CORDIC.scala 770:40]
  wire [82:0] _GEN_88 = fxyterm_45[127:45]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_46_T = {{45{_GEN_88[82]}},_GEN_88}; // @[CORDIC.scala 771:43]
  wire [127:0] x_46 = $signed(x_45) - $signed(_x_46_T); // @[CORDIC.scala 771:32]
  wire [82:0] _GEN_89 = fxxterm_45[127:45]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_46_T = {{45{_GEN_89[82]}},_GEN_89}; // @[CORDIC.scala 772:32]
  wire [127:0] y_46 = $signed(_y_46_T) + $signed(y_45); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_184 = $signed(thetar_23) > $signed(z0sr_23); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_187 = 128'sh0 - $signed(xr_23); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_46 = $signed(thetar_23) > $signed(z0sr_23) ? $signed(_fxxterm_T_187) : $signed(xr_23); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_187 = 128'sh0 - $signed(yr_23); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_46 = _fxxterm_T_184 ? $signed(_fxyterm_T_187) : $signed(yr_23); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_140 = 128'h0 - 128'h40000; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_47_T = _fxxterm_T_184 ? _fxthetaterm_T_140 : 128'h40000; // @[CORDIC.scala 757:54]
  wire [127:0] theta_47 = $signed(thetar_23) + $signed(_theta_47_T); // @[CORDIC.scala 757:40]
  wire [81:0] _GEN_90 = fxyterm_46[127:46]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_47_T = {{46{_GEN_90[81]}},_GEN_90}; // @[CORDIC.scala 758:43]
  wire [127:0] x_47 = $signed(xr_23) - $signed(_x_47_T); // @[CORDIC.scala 758:32]
  wire [81:0] _GEN_91 = fxxterm_46[127:46]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_47_T = {{46{_GEN_91[81]}},_GEN_91}; // @[CORDIC.scala 759:32]
  wire [127:0] y_47 = $signed(_y_47_T) + $signed(yr_23); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_188 = $signed(theta_47) > $signed(z0sr_23); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_191 = 128'sh0 - $signed(x_47); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_47 = $signed(theta_47) > $signed(z0sr_23) ? $signed(_fxxterm_T_191) : $signed(x_47); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_191 = 128'sh0 - $signed(y_47); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_47 = _fxxterm_T_188 ? $signed(_fxyterm_T_191) : $signed(y_47); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_143 = 128'h0 - 128'h20000; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_48_T = _fxxterm_T_188 ? _fxthetaterm_T_143 : 128'h20000; // @[CORDIC.scala 770:54]
  wire [127:0] theta_48 = $signed(theta_47) + $signed(_theta_48_T); // @[CORDIC.scala 770:40]
  wire [80:0] _GEN_92 = fxyterm_47[127:47]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_48_T = {{47{_GEN_92[80]}},_GEN_92}; // @[CORDIC.scala 771:43]
  wire [127:0] x_48 = $signed(x_47) - $signed(_x_48_T); // @[CORDIC.scala 771:32]
  wire [80:0] _GEN_93 = fxxterm_47[127:47]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_48_T = {{47{_GEN_93[80]}},_GEN_93}; // @[CORDIC.scala 772:32]
  wire [127:0] y_48 = $signed(_y_48_T) + $signed(y_47); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_192 = $signed(thetar_24) > $signed(z0sr_24); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_195 = 128'sh0 - $signed(xr_24); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_48 = $signed(thetar_24) > $signed(z0sr_24) ? $signed(_fxxterm_T_195) : $signed(xr_24); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_195 = 128'sh0 - $signed(yr_24); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_48 = _fxxterm_T_192 ? $signed(_fxyterm_T_195) : $signed(yr_24); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_146 = 128'h0 - 128'h10000; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_49_T = _fxxterm_T_192 ? _fxthetaterm_T_146 : 128'h10000; // @[CORDIC.scala 757:54]
  wire [127:0] theta_49 = $signed(thetar_24) + $signed(_theta_49_T); // @[CORDIC.scala 757:40]
  wire [79:0] _GEN_94 = fxyterm_48[127:48]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_49_T = {{48{_GEN_94[79]}},_GEN_94}; // @[CORDIC.scala 758:43]
  wire [127:0] x_49 = $signed(xr_24) - $signed(_x_49_T); // @[CORDIC.scala 758:32]
  wire [79:0] _GEN_95 = fxxterm_48[127:48]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_49_T = {{48{_GEN_95[79]}},_GEN_95}; // @[CORDIC.scala 759:32]
  wire [127:0] y_49 = $signed(_y_49_T) + $signed(yr_24); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_196 = $signed(theta_49) > $signed(z0sr_24); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_199 = 128'sh0 - $signed(x_49); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_49 = $signed(theta_49) > $signed(z0sr_24) ? $signed(_fxxterm_T_199) : $signed(x_49); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_199 = 128'sh0 - $signed(y_49); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_49 = _fxxterm_T_196 ? $signed(_fxyterm_T_199) : $signed(y_49); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_149 = 128'h0 - 128'h8000; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_50_T = _fxxterm_T_196 ? _fxthetaterm_T_149 : 128'h8000; // @[CORDIC.scala 770:54]
  wire [127:0] theta_50 = $signed(theta_49) + $signed(_theta_50_T); // @[CORDIC.scala 770:40]
  wire [78:0] _GEN_96 = fxyterm_49[127:49]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_50_T = {{49{_GEN_96[78]}},_GEN_96}; // @[CORDIC.scala 771:43]
  wire [127:0] x_50 = $signed(x_49) - $signed(_x_50_T); // @[CORDIC.scala 771:32]
  wire [78:0] _GEN_97 = fxxterm_49[127:49]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_50_T = {{49{_GEN_97[78]}},_GEN_97}; // @[CORDIC.scala 772:32]
  wire [127:0] y_50 = $signed(_y_50_T) + $signed(y_49); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_200 = $signed(thetar_25) > $signed(z0sr_25); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_203 = 128'sh0 - $signed(xr_25); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_50 = $signed(thetar_25) > $signed(z0sr_25) ? $signed(_fxxterm_T_203) : $signed(xr_25); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_203 = 128'sh0 - $signed(yr_25); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_50 = _fxxterm_T_200 ? $signed(_fxyterm_T_203) : $signed(yr_25); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_152 = 128'h0 - 128'h4000; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_51_T = _fxxterm_T_200 ? _fxthetaterm_T_152 : 128'h4000; // @[CORDIC.scala 757:54]
  wire [127:0] theta_51 = $signed(thetar_25) + $signed(_theta_51_T); // @[CORDIC.scala 757:40]
  wire [77:0] _GEN_98 = fxyterm_50[127:50]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_51_T = {{50{_GEN_98[77]}},_GEN_98}; // @[CORDIC.scala 758:43]
  wire [127:0] x_51 = $signed(xr_25) - $signed(_x_51_T); // @[CORDIC.scala 758:32]
  wire [77:0] _GEN_99 = fxxterm_50[127:50]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_51_T = {{50{_GEN_99[77]}},_GEN_99}; // @[CORDIC.scala 759:32]
  wire [127:0] y_51 = $signed(_y_51_T) + $signed(yr_25); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_204 = $signed(theta_51) > $signed(z0sr_25); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_207 = 128'sh0 - $signed(x_51); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_51 = $signed(theta_51) > $signed(z0sr_25) ? $signed(_fxxterm_T_207) : $signed(x_51); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_207 = 128'sh0 - $signed(y_51); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_51 = _fxxterm_T_204 ? $signed(_fxyterm_T_207) : $signed(y_51); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_155 = 128'h0 - 128'h2000; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_52_T = _fxxterm_T_204 ? _fxthetaterm_T_155 : 128'h2000; // @[CORDIC.scala 770:54]
  wire [127:0] theta_52 = $signed(theta_51) + $signed(_theta_52_T); // @[CORDIC.scala 770:40]
  wire [76:0] _GEN_100 = fxyterm_51[127:51]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_52_T = {{51{_GEN_100[76]}},_GEN_100}; // @[CORDIC.scala 771:43]
  wire [127:0] x_52 = $signed(x_51) - $signed(_x_52_T); // @[CORDIC.scala 771:32]
  wire [76:0] _GEN_101 = fxxterm_51[127:51]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_52_T = {{51{_GEN_101[76]}},_GEN_101}; // @[CORDIC.scala 772:32]
  wire [127:0] y_52 = $signed(_y_52_T) + $signed(y_51); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_208 = $signed(thetar_26) > $signed(z0sr_26); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_211 = 128'sh0 - $signed(xr_26); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_52 = $signed(thetar_26) > $signed(z0sr_26) ? $signed(_fxxterm_T_211) : $signed(xr_26); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_211 = 128'sh0 - $signed(yr_26); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_52 = _fxxterm_T_208 ? $signed(_fxyterm_T_211) : $signed(yr_26); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_158 = 128'h0 - 128'h1000; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_53_T = _fxxterm_T_208 ? _fxthetaterm_T_158 : 128'h1000; // @[CORDIC.scala 757:54]
  wire [127:0] theta_53 = $signed(thetar_26) + $signed(_theta_53_T); // @[CORDIC.scala 757:40]
  wire [75:0] _GEN_102 = fxyterm_52[127:52]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_53_T = {{52{_GEN_102[75]}},_GEN_102}; // @[CORDIC.scala 758:43]
  wire [127:0] x_53 = $signed(xr_26) - $signed(_x_53_T); // @[CORDIC.scala 758:32]
  wire [75:0] _GEN_103 = fxxterm_52[127:52]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_53_T = {{52{_GEN_103[75]}},_GEN_103}; // @[CORDIC.scala 759:32]
  wire [127:0] y_53 = $signed(_y_53_T) + $signed(yr_26); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_212 = $signed(theta_53) > $signed(z0sr_26); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_215 = 128'sh0 - $signed(x_53); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_53 = $signed(theta_53) > $signed(z0sr_26) ? $signed(_fxxterm_T_215) : $signed(x_53); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_215 = 128'sh0 - $signed(y_53); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_53 = _fxxterm_T_212 ? $signed(_fxyterm_T_215) : $signed(y_53); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_161 = 128'h0 - 128'h800; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_54_T = _fxxterm_T_212 ? _fxthetaterm_T_161 : 128'h800; // @[CORDIC.scala 770:54]
  wire [127:0] theta_54 = $signed(theta_53) + $signed(_theta_54_T); // @[CORDIC.scala 770:40]
  wire [74:0] _GEN_104 = fxyterm_53[127:53]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_54_T = {{53{_GEN_104[74]}},_GEN_104}; // @[CORDIC.scala 771:43]
  wire [127:0] x_54 = $signed(x_53) - $signed(_x_54_T); // @[CORDIC.scala 771:32]
  wire [74:0] _GEN_105 = fxxterm_53[127:53]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_54_T = {{53{_GEN_105[74]}},_GEN_105}; // @[CORDIC.scala 772:32]
  wire [127:0] y_54 = $signed(_y_54_T) + $signed(y_53); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_216 = $signed(thetar_27) > $signed(z0sr_27); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_219 = 128'sh0 - $signed(xr_27); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_54 = $signed(thetar_27) > $signed(z0sr_27) ? $signed(_fxxterm_T_219) : $signed(xr_27); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_219 = 128'sh0 - $signed(yr_27); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_54 = _fxxterm_T_216 ? $signed(_fxyterm_T_219) : $signed(yr_27); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_164 = 128'h0 - 128'h400; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_55_T = _fxxterm_T_216 ? _fxthetaterm_T_164 : 128'h400; // @[CORDIC.scala 757:54]
  wire [127:0] theta_55 = $signed(thetar_27) + $signed(_theta_55_T); // @[CORDIC.scala 757:40]
  wire [73:0] _GEN_106 = fxyterm_54[127:54]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_55_T = {{54{_GEN_106[73]}},_GEN_106}; // @[CORDIC.scala 758:43]
  wire [127:0] x_55 = $signed(xr_27) - $signed(_x_55_T); // @[CORDIC.scala 758:32]
  wire [73:0] _GEN_107 = fxxterm_54[127:54]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_55_T = {{54{_GEN_107[73]}},_GEN_107}; // @[CORDIC.scala 759:32]
  wire [127:0] y_55 = $signed(_y_55_T) + $signed(yr_27); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_220 = $signed(theta_55) > $signed(z0sr_27); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_223 = 128'sh0 - $signed(x_55); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_55 = $signed(theta_55) > $signed(z0sr_27) ? $signed(_fxxterm_T_223) : $signed(x_55); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_223 = 128'sh0 - $signed(y_55); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_55 = _fxxterm_T_220 ? $signed(_fxyterm_T_223) : $signed(y_55); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_167 = 128'h0 - 128'h200; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_56_T = _fxxterm_T_220 ? _fxthetaterm_T_167 : 128'h200; // @[CORDIC.scala 770:54]
  wire [127:0] theta_56 = $signed(theta_55) + $signed(_theta_56_T); // @[CORDIC.scala 770:40]
  wire [72:0] _GEN_108 = fxyterm_55[127:55]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_56_T = {{55{_GEN_108[72]}},_GEN_108}; // @[CORDIC.scala 771:43]
  wire [127:0] x_56 = $signed(x_55) - $signed(_x_56_T); // @[CORDIC.scala 771:32]
  wire [72:0] _GEN_109 = fxxterm_55[127:55]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_56_T = {{55{_GEN_109[72]}},_GEN_109}; // @[CORDIC.scala 772:32]
  wire [127:0] y_56 = $signed(_y_56_T) + $signed(y_55); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_224 = $signed(thetar_28) > $signed(z0sr_28); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_227 = 128'sh0 - $signed(xr_28); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_56 = $signed(thetar_28) > $signed(z0sr_28) ? $signed(_fxxterm_T_227) : $signed(xr_28); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_227 = 128'sh0 - $signed(yr_28); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_56 = _fxxterm_T_224 ? $signed(_fxyterm_T_227) : $signed(yr_28); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_170 = 128'h0 - 128'h100; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_57_T = _fxxterm_T_224 ? _fxthetaterm_T_170 : 128'h100; // @[CORDIC.scala 757:54]
  wire [127:0] theta_57 = $signed(thetar_28) + $signed(_theta_57_T); // @[CORDIC.scala 757:40]
  wire [71:0] _GEN_110 = fxyterm_56[127:56]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_57_T = {{56{_GEN_110[71]}},_GEN_110}; // @[CORDIC.scala 758:43]
  wire [127:0] x_57 = $signed(xr_28) - $signed(_x_57_T); // @[CORDIC.scala 758:32]
  wire [71:0] _GEN_111 = fxxterm_56[127:56]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_57_T = {{56{_GEN_111[71]}},_GEN_111}; // @[CORDIC.scala 759:32]
  wire [127:0] y_57 = $signed(_y_57_T) + $signed(yr_28); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_228 = $signed(theta_57) > $signed(z0sr_28); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_231 = 128'sh0 - $signed(x_57); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_57 = $signed(theta_57) > $signed(z0sr_28) ? $signed(_fxxterm_T_231) : $signed(x_57); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_231 = 128'sh0 - $signed(y_57); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_57 = _fxxterm_T_228 ? $signed(_fxyterm_T_231) : $signed(y_57); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_173 = 128'h0 - 128'h80; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_58_T = _fxxterm_T_228 ? _fxthetaterm_T_173 : 128'h80; // @[CORDIC.scala 770:54]
  wire [127:0] theta_58 = $signed(theta_57) + $signed(_theta_58_T); // @[CORDIC.scala 770:40]
  wire [70:0] _GEN_112 = fxyterm_57[127:57]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_58_T = {{57{_GEN_112[70]}},_GEN_112}; // @[CORDIC.scala 771:43]
  wire [127:0] x_58 = $signed(x_57) - $signed(_x_58_T); // @[CORDIC.scala 771:32]
  wire [70:0] _GEN_113 = fxxterm_57[127:57]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_58_T = {{57{_GEN_113[70]}},_GEN_113}; // @[CORDIC.scala 772:32]
  wire [127:0] y_58 = $signed(_y_58_T) + $signed(y_57); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_232 = $signed(thetar_29) > $signed(z0sr_29); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_235 = 128'sh0 - $signed(xr_29); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_58 = $signed(thetar_29) > $signed(z0sr_29) ? $signed(_fxxterm_T_235) : $signed(xr_29); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_235 = 128'sh0 - $signed(yr_29); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_58 = _fxxterm_T_232 ? $signed(_fxyterm_T_235) : $signed(yr_29); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_176 = 128'h0 - 128'h40; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_59_T = _fxxterm_T_232 ? _fxthetaterm_T_176 : 128'h40; // @[CORDIC.scala 757:54]
  wire [127:0] theta_59 = $signed(thetar_29) + $signed(_theta_59_T); // @[CORDIC.scala 757:40]
  wire [69:0] _GEN_114 = fxyterm_58[127:58]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_59_T = {{58{_GEN_114[69]}},_GEN_114}; // @[CORDIC.scala 758:43]
  wire [127:0] x_59 = $signed(xr_29) - $signed(_x_59_T); // @[CORDIC.scala 758:32]
  wire [69:0] _GEN_115 = fxxterm_58[127:58]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_59_T = {{58{_GEN_115[69]}},_GEN_115}; // @[CORDIC.scala 759:32]
  wire [127:0] y_59 = $signed(_y_59_T) + $signed(yr_29); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_236 = $signed(theta_59) > $signed(z0sr_29); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_239 = 128'sh0 - $signed(x_59); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_59 = $signed(theta_59) > $signed(z0sr_29) ? $signed(_fxxterm_T_239) : $signed(x_59); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_239 = 128'sh0 - $signed(y_59); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_59 = _fxxterm_T_236 ? $signed(_fxyterm_T_239) : $signed(y_59); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_179 = 128'h0 - 128'h20; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_60_T = _fxxterm_T_236 ? _fxthetaterm_T_179 : 128'h20; // @[CORDIC.scala 770:54]
  wire [127:0] theta_60 = $signed(theta_59) + $signed(_theta_60_T); // @[CORDIC.scala 770:40]
  wire [68:0] _GEN_116 = fxyterm_59[127:59]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_60_T = {{59{_GEN_116[68]}},_GEN_116}; // @[CORDIC.scala 771:43]
  wire [127:0] x_60 = $signed(x_59) - $signed(_x_60_T); // @[CORDIC.scala 771:32]
  wire [68:0] _GEN_117 = fxxterm_59[127:59]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_60_T = {{59{_GEN_117[68]}},_GEN_117}; // @[CORDIC.scala 772:32]
  wire [127:0] y_60 = $signed(_y_60_T) + $signed(y_59); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_240 = $signed(thetar_30) > $signed(z0sr_30); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_243 = 128'sh0 - $signed(xr_30); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_60 = $signed(thetar_30) > $signed(z0sr_30) ? $signed(_fxxterm_T_243) : $signed(xr_30); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_243 = 128'sh0 - $signed(yr_30); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_60 = _fxxterm_T_240 ? $signed(_fxyterm_T_243) : $signed(yr_30); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_182 = 128'h0 - 128'h10; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_61_T = _fxxterm_T_240 ? _fxthetaterm_T_182 : 128'h10; // @[CORDIC.scala 757:54]
  wire [127:0] theta_61 = $signed(thetar_30) + $signed(_theta_61_T); // @[CORDIC.scala 757:40]
  wire [67:0] _GEN_118 = fxyterm_60[127:60]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_61_T = {{60{_GEN_118[67]}},_GEN_118}; // @[CORDIC.scala 758:43]
  wire [127:0] x_61 = $signed(xr_30) - $signed(_x_61_T); // @[CORDIC.scala 758:32]
  wire [67:0] _GEN_119 = fxxterm_60[127:60]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_61_T = {{60{_GEN_119[67]}},_GEN_119}; // @[CORDIC.scala 759:32]
  wire [127:0] y_61 = $signed(_y_61_T) + $signed(yr_30); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_244 = $signed(theta_61) > $signed(z0sr_30); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_247 = 128'sh0 - $signed(x_61); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_61 = $signed(theta_61) > $signed(z0sr_30) ? $signed(_fxxterm_T_247) : $signed(x_61); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_247 = 128'sh0 - $signed(y_61); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_61 = _fxxterm_T_244 ? $signed(_fxyterm_T_247) : $signed(y_61); // @[CORDIC.scala 766:28]
  wire [127:0] _fxthetaterm_T_185 = 128'h0 - 128'h8; // @[CORDIC.scala 767:60]
  wire [127:0] _theta_62_T = _fxxterm_T_244 ? _fxthetaterm_T_185 : 128'h8; // @[CORDIC.scala 770:54]
  wire [127:0] theta_62 = $signed(theta_61) + $signed(_theta_62_T); // @[CORDIC.scala 770:40]
  wire [66:0] _GEN_120 = fxyterm_61[127:61]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_62_T = {{61{_GEN_120[66]}},_GEN_120}; // @[CORDIC.scala 771:43]
  wire [127:0] x_62 = $signed(x_61) - $signed(_x_62_T); // @[CORDIC.scala 771:32]
  wire [66:0] _GEN_121 = fxxterm_61[127:61]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_62_T = {{61{_GEN_121[66]}},_GEN_121}; // @[CORDIC.scala 772:32]
  wire [127:0] y_62 = $signed(_y_62_T) + $signed(y_61); // @[CORDIC.scala 772:56]
  wire  _fxxterm_T_248 = $signed(thetar_31) > $signed(z0sr_31); // @[CORDIC.scala 753:42]
  wire [127:0] _fxxterm_T_251 = 128'sh0 - $signed(xr_31); // @[CORDIC.scala 753:56]
  wire [127:0] fxxterm_62 = $signed(thetar_31) > $signed(z0sr_31) ? $signed(_fxxterm_T_251) : $signed(xr_31); // @[CORDIC.scala 753:28]
  wire [127:0] _fxyterm_T_251 = 128'sh0 - $signed(yr_31); // @[CORDIC.scala 754:56]
  wire [127:0] fxyterm_62 = _fxxterm_T_248 ? $signed(_fxyterm_T_251) : $signed(yr_31); // @[CORDIC.scala 754:28]
  wire [127:0] _fxthetaterm_T_188 = 128'h0 - 128'h4; // @[CORDIC.scala 755:60]
  wire [127:0] _theta_63_T = _fxxterm_T_248 ? _fxthetaterm_T_188 : 128'h4; // @[CORDIC.scala 757:54]
  wire [127:0] theta_63 = $signed(thetar_31) + $signed(_theta_63_T); // @[CORDIC.scala 757:40]
  wire [65:0] _GEN_122 = fxyterm_62[127:62]; // @[CORDIC.scala 758:43]
  wire [127:0] _x_63_T = {{62{_GEN_122[65]}},_GEN_122}; // @[CORDIC.scala 758:43]
  wire [127:0] x_63 = $signed(xr_31) - $signed(_x_63_T); // @[CORDIC.scala 758:32]
  wire [65:0] _GEN_123 = fxxterm_62[127:62]; // @[CORDIC.scala 759:32]
  wire [127:0] _y_63_T = {{62{_GEN_123[65]}},_GEN_123}; // @[CORDIC.scala 759:32]
  wire [127:0] y_63 = $signed(_y_63_T) + $signed(yr_31); // @[CORDIC.scala 759:56]
  wire  _fxxterm_T_252 = $signed(theta_63) > $signed(z0sr_31); // @[CORDIC.scala 765:42]
  wire [127:0] _fxxterm_T_255 = 128'sh0 - $signed(x_63); // @[CORDIC.scala 765:56]
  wire [127:0] fxxterm_63 = $signed(theta_63) > $signed(z0sr_31) ? $signed(_fxxterm_T_255) : $signed(x_63); // @[CORDIC.scala 765:28]
  wire [127:0] _fxyterm_T_255 = 128'sh0 - $signed(y_63); // @[CORDIC.scala 766:56]
  wire [127:0] fxyterm_63 = _fxxterm_T_252 ? $signed(_fxyterm_T_255) : $signed(y_63); // @[CORDIC.scala 766:28]
  wire [64:0] _GEN_124 = fxyterm_63[127:63]; // @[CORDIC.scala 771:43]
  wire [127:0] _x_64_T = {{63{_GEN_124[64]}},_GEN_124}; // @[CORDIC.scala 771:43]
  wire [127:0] x_64 = $signed(x_63) - $signed(_x_64_T); // @[CORDIC.scala 771:32]
  wire [64:0] _GEN_125 = fxxterm_63[127:63]; // @[CORDIC.scala 772:32]
  wire [127:0] _y_64_T = {{63{_GEN_125[64]}},_GEN_125}; // @[CORDIC.scala 772:32]
  wire [127:0] y_64 = $signed(_y_64_T) + $signed(y_63); // @[CORDIC.scala 772:56]
  wire [127:0] _GEN_126 = reset ? 128'h0 : io_in_mode; // @[CORDIC.scala 273:{23,23} 389:15]
  FloatToFixed128 tofixedx0 ( // @[CORDIC.scala 367:27]
    .io_in(tofixedx0_io_in),
    .io_out(tofixedx0_io_out)
  );
  FloatToFixed128 tofixedy0 ( // @[CORDIC.scala 368:27]
    .io_in(tofixedy0_io_in),
    .io_out(tofixedy0_io_out)
  );
  FixedToFloat128 tofloatxout ( // @[CORDIC.scala 793:29]
    .io_in(tofloatxout_io_in),
    .io_out(tofloatxout_io_out)
  );
  FixedToFloat128 tofloatyout ( // @[CORDIC.scala 794:29]
    .io_in(tofloatyout_io_in),
    .io_out(tofloatyout_io_out)
  );
  FixedToFloat128 tofloatzout ( // @[CORDIC.scala 795:29]
    .io_in(tofloatzout_io_in),
    .io_out(tofloatzout_io_out)
  );
  assign io_out_x = tofloatxout_io_out; // @[CORDIC.scala 802:14]
  assign io_out_mode = modesr_32; // @[CORDIC.scala 800:17]
  assign tofixedx0_io_in = 128'h3ffe36e9dc0000000000000000000000; // @[CORDIC.scala 371:21]
  assign tofixedy0_io_in = 128'h0; // @[CORDIC.scala 372:21]
  assign tofloatxout_io_in = xr_32; // @[CORDIC.scala 797:35]
  assign tofloatyout_io_in = yr_32; // @[CORDIC.scala 798:35]
  assign tofloatzout_io_in = z0sr_32; // @[CORDIC.scala 799:37]
  always @(posedge clock) begin
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_0 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_0 <= tofixedx0_io_out; // @[CORDIC.scala 386:11]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_1 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_1 <= x_2; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_2 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_2 <= x_4; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_3 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_3 <= x_6; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_4 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_4 <= x_8; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_5 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_5 <= x_10; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_6 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_6 <= x_12; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_7 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_7 <= x_14; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_8 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_8 <= x_16; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_9 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_9 <= x_18; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_10 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_10 <= x_20; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_11 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_11 <= x_22; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_12 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_12 <= x_24; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_13 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_13 <= x_26; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_14 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_14 <= x_28; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_15 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_15 <= x_30; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_16 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_16 <= x_32; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_17 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_17 <= x_34; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_18 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_18 <= x_36; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_19 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_19 <= x_38; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_20 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_20 <= x_40; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_21 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_21 <= x_42; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_22 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_22 <= x_44; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_23 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_23 <= x_46; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_24 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_24 <= x_48; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_25 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_25 <= x_50; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_26 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_26 <= x_52; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_27 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_27 <= x_54; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_28 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_28 <= x_56; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_29 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_29 <= x_58; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_30 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_30 <= x_60; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_31 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_31 <= x_62; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_32 <= 128'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_32 <= x_64; // @[CORDIC.scala 784:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_0 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_0 <= tofixedy0_io_out; // @[CORDIC.scala 387:11]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_1 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_1 <= y_2; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_2 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_2 <= y_4; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_3 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_3 <= y_6; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_4 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_4 <= y_8; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_5 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_5 <= y_10; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_6 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_6 <= y_12; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_7 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_7 <= y_14; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_8 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_8 <= y_16; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_9 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_9 <= y_18; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_10 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_10 <= y_20; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_11 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_11 <= y_22; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_12 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_12 <= y_24; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_13 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_13 <= y_26; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_14 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_14 <= y_28; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_15 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_15 <= y_30; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_16 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_16 <= y_32; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_17 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_17 <= y_34; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_18 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_18 <= y_36; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_19 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_19 <= y_38; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_20 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_20 <= y_40; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_21 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_21 <= y_42; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_22 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_22 <= y_44; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_23 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_23 <= y_46; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_24 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_24 <= y_48; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_25 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_25 <= y_50; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_26 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_26 <= y_52; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_27 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_27 <= y_54; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_28 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_28 <= y_56; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_29 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_29 <= y_58; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_30 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_30 <= y_60; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_31 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_31 <= y_62; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_32 <= 128'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_32 <= y_64; // @[CORDIC.scala 785:20]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_1 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_1 <= theta_2; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_2 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_2 <= theta_4; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_3 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_3 <= theta_6; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_4 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_4 <= theta_8; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_5 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_5 <= theta_10; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_6 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_6 <= theta_12; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_7 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_7 <= theta_14; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_8 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_8 <= theta_16; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_9 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_9 <= theta_18; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_10 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_10 <= theta_20; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_11 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_11 <= theta_22; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_12 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_12 <= theta_24; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_13 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_13 <= theta_26; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_14 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_14 <= theta_28; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_15 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_15 <= theta_30; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_16 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_16 <= theta_32; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_17 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_17 <= theta_34; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_18 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_18 <= theta_36; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_19 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_19 <= theta_38; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_20 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_20 <= theta_40; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_21 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_21 <= theta_42; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_22 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_22 <= theta_44; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_23 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_23 <= theta_46; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_24 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_24 <= theta_48; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_25 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_25 <= theta_50; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_26 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_26 <= theta_52; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_27 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_27 <= theta_54; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_28 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_28 <= theta_56; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_29 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_29 <= theta_58; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_30 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_30 <= theta_60; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_31 <= 128'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_31 <= theta_62; // @[CORDIC.scala 783:24]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_0 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_0 <= io_in_z0; // @[CORDIC.scala 388:13]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_1 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_1 <= z0sr_0; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_2 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_2 <= z0sr_1; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_3 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_3 <= z0sr_2; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_4 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_4 <= z0sr_3; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_5 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_5 <= z0sr_4; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_6 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_6 <= z0sr_5; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_7 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_7 <= z0sr_6; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_8 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_8 <= z0sr_7; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_9 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_9 <= z0sr_8; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_10 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_10 <= z0sr_9; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_11 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_11 <= z0sr_10; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_12 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_12 <= z0sr_11; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_13 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_13 <= z0sr_12; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_14 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_14 <= z0sr_13; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_15 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_15 <= z0sr_14; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_16 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_16 <= z0sr_15; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_17 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_17 <= z0sr_16; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_18 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_18 <= z0sr_17; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_19 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_19 <= z0sr_18; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_20 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_20 <= z0sr_19; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_21 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_21 <= z0sr_20; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_22 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_22 <= z0sr_21; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_23 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_23 <= z0sr_22; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_24 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_24 <= z0sr_23; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_25 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_25 <= z0sr_24; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_26 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_26 <= z0sr_25; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_27 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_27 <= z0sr_26; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_28 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_28 <= z0sr_27; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_29 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_29 <= z0sr_28; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_30 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_30 <= z0sr_29; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_31 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_31 <= z0sr_30; // @[CORDIC.scala 786:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_32 <= 128'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_32 <= z0sr_31; // @[CORDIC.scala 786:22]
    end
    modesr_0 <= _GEN_126[1:0]; // @[CORDIC.scala 273:{23,23} 389:15]
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_1 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_1 <= modesr_0; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_2 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_2 <= modesr_1; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_3 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_3 <= modesr_2; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_4 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_4 <= modesr_3; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_5 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_5 <= modesr_4; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_6 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_6 <= modesr_5; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_7 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_7 <= modesr_6; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_8 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_8 <= modesr_7; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_9 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_9 <= modesr_8; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_10 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_10 <= modesr_9; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_11 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_11 <= modesr_10; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_12 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_12 <= modesr_11; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_13 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_13 <= modesr_12; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_14 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_14 <= modesr_13; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_15 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_15 <= modesr_14; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_16 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_16 <= modesr_15; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_17 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_17 <= modesr_16; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_18 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_18 <= modesr_17; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_19 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_19 <= modesr_18; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_20 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_20 <= modesr_19; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_21 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_21 <= modesr_20; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_22 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_22 <= modesr_21; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_23 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_23 <= modesr_22; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_24 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_24 <= modesr_23; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_25 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_25 <= modesr_24; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_26 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_26 <= modesr_25; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_27 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_27 <= modesr_26; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_28 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_28 <= modesr_27; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_29 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_29 <= modesr_28; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_30 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_30 <= modesr_29; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_31 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_31 <= modesr_30; // @[CORDIC.scala 787:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_32 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_32 <= modesr_31; // @[CORDIC.scala 787:24]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "x = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedx0_io_out,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
            ,x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39,x_40,x_41,
            x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58,x_59,x_60,x_61,x_62,
            x_63,x_64); // @[CORDIC.scala 776:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "y = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,tofixedy0_io_out,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20
            ,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_30,y_31,y_32,y_33,y_34,y_35,y_36,y_37,y_38,y_39,y_40,y_41,
            y_42,y_43,y_44,y_45,y_46,y_47,y_48,y_49,y_50,y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,
            y_63,y_64); // @[CORDIC.scala 777:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,
            "z = Vec(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)(n+i)"
            ,io_in_z0,z0sr_0,z0sr_0,z0sr_1,z0sr_1,z0sr_2,z0sr_2,z0sr_3,z0sr_3,z0sr_4,z0sr_4,z0sr_5,z0sr_5,z0sr_6,z0sr_6,
            z0sr_7,z0sr_7,z0sr_8,z0sr_8,z0sr_9,z0sr_9,z0sr_10,z0sr_10,z0sr_11,z0sr_11,z0sr_12,z0sr_12,z0sr_13,z0sr_13,
            z0sr_14,z0sr_14,z0sr_15,z0sr_15,z0sr_16,z0sr_16,z0sr_17,z0sr_17,z0sr_18,z0sr_18,z0sr_19,z0sr_19,z0sr_20,
            z0sr_20,z0sr_21,z0sr_21,z0sr_22,z0sr_22,z0sr_23,z0sr_23,z0sr_24,z0sr_24,z0sr_25,z0sr_25,z0sr_26,z0sr_26,
            z0sr_27,z0sr_27,z0sr_28,z0sr_28,z0sr_29,z0sr_29,z0sr_30,z0sr_30,z0sr_31,z0sr_31); // @[CORDIC.scala 778:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
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
  _RAND_0 = {4{`RANDOM}};
  xr_0 = _RAND_0[127:0];
  _RAND_1 = {4{`RANDOM}};
  xr_1 = _RAND_1[127:0];
  _RAND_2 = {4{`RANDOM}};
  xr_2 = _RAND_2[127:0];
  _RAND_3 = {4{`RANDOM}};
  xr_3 = _RAND_3[127:0];
  _RAND_4 = {4{`RANDOM}};
  xr_4 = _RAND_4[127:0];
  _RAND_5 = {4{`RANDOM}};
  xr_5 = _RAND_5[127:0];
  _RAND_6 = {4{`RANDOM}};
  xr_6 = _RAND_6[127:0];
  _RAND_7 = {4{`RANDOM}};
  xr_7 = _RAND_7[127:0];
  _RAND_8 = {4{`RANDOM}};
  xr_8 = _RAND_8[127:0];
  _RAND_9 = {4{`RANDOM}};
  xr_9 = _RAND_9[127:0];
  _RAND_10 = {4{`RANDOM}};
  xr_10 = _RAND_10[127:0];
  _RAND_11 = {4{`RANDOM}};
  xr_11 = _RAND_11[127:0];
  _RAND_12 = {4{`RANDOM}};
  xr_12 = _RAND_12[127:0];
  _RAND_13 = {4{`RANDOM}};
  xr_13 = _RAND_13[127:0];
  _RAND_14 = {4{`RANDOM}};
  xr_14 = _RAND_14[127:0];
  _RAND_15 = {4{`RANDOM}};
  xr_15 = _RAND_15[127:0];
  _RAND_16 = {4{`RANDOM}};
  xr_16 = _RAND_16[127:0];
  _RAND_17 = {4{`RANDOM}};
  xr_17 = _RAND_17[127:0];
  _RAND_18 = {4{`RANDOM}};
  xr_18 = _RAND_18[127:0];
  _RAND_19 = {4{`RANDOM}};
  xr_19 = _RAND_19[127:0];
  _RAND_20 = {4{`RANDOM}};
  xr_20 = _RAND_20[127:0];
  _RAND_21 = {4{`RANDOM}};
  xr_21 = _RAND_21[127:0];
  _RAND_22 = {4{`RANDOM}};
  xr_22 = _RAND_22[127:0];
  _RAND_23 = {4{`RANDOM}};
  xr_23 = _RAND_23[127:0];
  _RAND_24 = {4{`RANDOM}};
  xr_24 = _RAND_24[127:0];
  _RAND_25 = {4{`RANDOM}};
  xr_25 = _RAND_25[127:0];
  _RAND_26 = {4{`RANDOM}};
  xr_26 = _RAND_26[127:0];
  _RAND_27 = {4{`RANDOM}};
  xr_27 = _RAND_27[127:0];
  _RAND_28 = {4{`RANDOM}};
  xr_28 = _RAND_28[127:0];
  _RAND_29 = {4{`RANDOM}};
  xr_29 = _RAND_29[127:0];
  _RAND_30 = {4{`RANDOM}};
  xr_30 = _RAND_30[127:0];
  _RAND_31 = {4{`RANDOM}};
  xr_31 = _RAND_31[127:0];
  _RAND_32 = {4{`RANDOM}};
  xr_32 = _RAND_32[127:0];
  _RAND_33 = {4{`RANDOM}};
  yr_0 = _RAND_33[127:0];
  _RAND_34 = {4{`RANDOM}};
  yr_1 = _RAND_34[127:0];
  _RAND_35 = {4{`RANDOM}};
  yr_2 = _RAND_35[127:0];
  _RAND_36 = {4{`RANDOM}};
  yr_3 = _RAND_36[127:0];
  _RAND_37 = {4{`RANDOM}};
  yr_4 = _RAND_37[127:0];
  _RAND_38 = {4{`RANDOM}};
  yr_5 = _RAND_38[127:0];
  _RAND_39 = {4{`RANDOM}};
  yr_6 = _RAND_39[127:0];
  _RAND_40 = {4{`RANDOM}};
  yr_7 = _RAND_40[127:0];
  _RAND_41 = {4{`RANDOM}};
  yr_8 = _RAND_41[127:0];
  _RAND_42 = {4{`RANDOM}};
  yr_9 = _RAND_42[127:0];
  _RAND_43 = {4{`RANDOM}};
  yr_10 = _RAND_43[127:0];
  _RAND_44 = {4{`RANDOM}};
  yr_11 = _RAND_44[127:0];
  _RAND_45 = {4{`RANDOM}};
  yr_12 = _RAND_45[127:0];
  _RAND_46 = {4{`RANDOM}};
  yr_13 = _RAND_46[127:0];
  _RAND_47 = {4{`RANDOM}};
  yr_14 = _RAND_47[127:0];
  _RAND_48 = {4{`RANDOM}};
  yr_15 = _RAND_48[127:0];
  _RAND_49 = {4{`RANDOM}};
  yr_16 = _RAND_49[127:0];
  _RAND_50 = {4{`RANDOM}};
  yr_17 = _RAND_50[127:0];
  _RAND_51 = {4{`RANDOM}};
  yr_18 = _RAND_51[127:0];
  _RAND_52 = {4{`RANDOM}};
  yr_19 = _RAND_52[127:0];
  _RAND_53 = {4{`RANDOM}};
  yr_20 = _RAND_53[127:0];
  _RAND_54 = {4{`RANDOM}};
  yr_21 = _RAND_54[127:0];
  _RAND_55 = {4{`RANDOM}};
  yr_22 = _RAND_55[127:0];
  _RAND_56 = {4{`RANDOM}};
  yr_23 = _RAND_56[127:0];
  _RAND_57 = {4{`RANDOM}};
  yr_24 = _RAND_57[127:0];
  _RAND_58 = {4{`RANDOM}};
  yr_25 = _RAND_58[127:0];
  _RAND_59 = {4{`RANDOM}};
  yr_26 = _RAND_59[127:0];
  _RAND_60 = {4{`RANDOM}};
  yr_27 = _RAND_60[127:0];
  _RAND_61 = {4{`RANDOM}};
  yr_28 = _RAND_61[127:0];
  _RAND_62 = {4{`RANDOM}};
  yr_29 = _RAND_62[127:0];
  _RAND_63 = {4{`RANDOM}};
  yr_30 = _RAND_63[127:0];
  _RAND_64 = {4{`RANDOM}};
  yr_31 = _RAND_64[127:0];
  _RAND_65 = {4{`RANDOM}};
  yr_32 = _RAND_65[127:0];
  _RAND_66 = {4{`RANDOM}};
  thetar_1 = _RAND_66[127:0];
  _RAND_67 = {4{`RANDOM}};
  thetar_2 = _RAND_67[127:0];
  _RAND_68 = {4{`RANDOM}};
  thetar_3 = _RAND_68[127:0];
  _RAND_69 = {4{`RANDOM}};
  thetar_4 = _RAND_69[127:0];
  _RAND_70 = {4{`RANDOM}};
  thetar_5 = _RAND_70[127:0];
  _RAND_71 = {4{`RANDOM}};
  thetar_6 = _RAND_71[127:0];
  _RAND_72 = {4{`RANDOM}};
  thetar_7 = _RAND_72[127:0];
  _RAND_73 = {4{`RANDOM}};
  thetar_8 = _RAND_73[127:0];
  _RAND_74 = {4{`RANDOM}};
  thetar_9 = _RAND_74[127:0];
  _RAND_75 = {4{`RANDOM}};
  thetar_10 = _RAND_75[127:0];
  _RAND_76 = {4{`RANDOM}};
  thetar_11 = _RAND_76[127:0];
  _RAND_77 = {4{`RANDOM}};
  thetar_12 = _RAND_77[127:0];
  _RAND_78 = {4{`RANDOM}};
  thetar_13 = _RAND_78[127:0];
  _RAND_79 = {4{`RANDOM}};
  thetar_14 = _RAND_79[127:0];
  _RAND_80 = {4{`RANDOM}};
  thetar_15 = _RAND_80[127:0];
  _RAND_81 = {4{`RANDOM}};
  thetar_16 = _RAND_81[127:0];
  _RAND_82 = {4{`RANDOM}};
  thetar_17 = _RAND_82[127:0];
  _RAND_83 = {4{`RANDOM}};
  thetar_18 = _RAND_83[127:0];
  _RAND_84 = {4{`RANDOM}};
  thetar_19 = _RAND_84[127:0];
  _RAND_85 = {4{`RANDOM}};
  thetar_20 = _RAND_85[127:0];
  _RAND_86 = {4{`RANDOM}};
  thetar_21 = _RAND_86[127:0];
  _RAND_87 = {4{`RANDOM}};
  thetar_22 = _RAND_87[127:0];
  _RAND_88 = {4{`RANDOM}};
  thetar_23 = _RAND_88[127:0];
  _RAND_89 = {4{`RANDOM}};
  thetar_24 = _RAND_89[127:0];
  _RAND_90 = {4{`RANDOM}};
  thetar_25 = _RAND_90[127:0];
  _RAND_91 = {4{`RANDOM}};
  thetar_26 = _RAND_91[127:0];
  _RAND_92 = {4{`RANDOM}};
  thetar_27 = _RAND_92[127:0];
  _RAND_93 = {4{`RANDOM}};
  thetar_28 = _RAND_93[127:0];
  _RAND_94 = {4{`RANDOM}};
  thetar_29 = _RAND_94[127:0];
  _RAND_95 = {4{`RANDOM}};
  thetar_30 = _RAND_95[127:0];
  _RAND_96 = {4{`RANDOM}};
  thetar_31 = _RAND_96[127:0];
  _RAND_97 = {4{`RANDOM}};
  z0sr_0 = _RAND_97[127:0];
  _RAND_98 = {4{`RANDOM}};
  z0sr_1 = _RAND_98[127:0];
  _RAND_99 = {4{`RANDOM}};
  z0sr_2 = _RAND_99[127:0];
  _RAND_100 = {4{`RANDOM}};
  z0sr_3 = _RAND_100[127:0];
  _RAND_101 = {4{`RANDOM}};
  z0sr_4 = _RAND_101[127:0];
  _RAND_102 = {4{`RANDOM}};
  z0sr_5 = _RAND_102[127:0];
  _RAND_103 = {4{`RANDOM}};
  z0sr_6 = _RAND_103[127:0];
  _RAND_104 = {4{`RANDOM}};
  z0sr_7 = _RAND_104[127:0];
  _RAND_105 = {4{`RANDOM}};
  z0sr_8 = _RAND_105[127:0];
  _RAND_106 = {4{`RANDOM}};
  z0sr_9 = _RAND_106[127:0];
  _RAND_107 = {4{`RANDOM}};
  z0sr_10 = _RAND_107[127:0];
  _RAND_108 = {4{`RANDOM}};
  z0sr_11 = _RAND_108[127:0];
  _RAND_109 = {4{`RANDOM}};
  z0sr_12 = _RAND_109[127:0];
  _RAND_110 = {4{`RANDOM}};
  z0sr_13 = _RAND_110[127:0];
  _RAND_111 = {4{`RANDOM}};
  z0sr_14 = _RAND_111[127:0];
  _RAND_112 = {4{`RANDOM}};
  z0sr_15 = _RAND_112[127:0];
  _RAND_113 = {4{`RANDOM}};
  z0sr_16 = _RAND_113[127:0];
  _RAND_114 = {4{`RANDOM}};
  z0sr_17 = _RAND_114[127:0];
  _RAND_115 = {4{`RANDOM}};
  z0sr_18 = _RAND_115[127:0];
  _RAND_116 = {4{`RANDOM}};
  z0sr_19 = _RAND_116[127:0];
  _RAND_117 = {4{`RANDOM}};
  z0sr_20 = _RAND_117[127:0];
  _RAND_118 = {4{`RANDOM}};
  z0sr_21 = _RAND_118[127:0];
  _RAND_119 = {4{`RANDOM}};
  z0sr_22 = _RAND_119[127:0];
  _RAND_120 = {4{`RANDOM}};
  z0sr_23 = _RAND_120[127:0];
  _RAND_121 = {4{`RANDOM}};
  z0sr_24 = _RAND_121[127:0];
  _RAND_122 = {4{`RANDOM}};
  z0sr_25 = _RAND_122[127:0];
  _RAND_123 = {4{`RANDOM}};
  z0sr_26 = _RAND_123[127:0];
  _RAND_124 = {4{`RANDOM}};
  z0sr_27 = _RAND_124[127:0];
  _RAND_125 = {4{`RANDOM}};
  z0sr_28 = _RAND_125[127:0];
  _RAND_126 = {4{`RANDOM}};
  z0sr_29 = _RAND_126[127:0];
  _RAND_127 = {4{`RANDOM}};
  z0sr_30 = _RAND_127[127:0];
  _RAND_128 = {4{`RANDOM}};
  z0sr_31 = _RAND_128[127:0];
  _RAND_129 = {4{`RANDOM}};
  z0sr_32 = _RAND_129[127:0];
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

module CORDIC(
  input         clock,
  input         reset,
  input  [15:0] io_in_z0,
  input  [15:0] io_in_mode,
  output [15:0] io_out_x,
  output [1:0]  io_out_mode
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
`endif // RANDOMIZE_REG_INIT
  wire [15:0] tofixedx0_io_in; // @[CORDIC.scala 280:25]
  wire [15:0] tofixedx0_io_out; // @[CORDIC.scala 280:25]
  wire [15:0] tofixedy0_io_in; // @[CORDIC.scala 281:25]
  wire [15:0] tofixedy0_io_out; // @[CORDIC.scala 281:25]
  wire [15:0] tofloatxout_io_in; // @[CORDIC.scala 616:31]
  wire [15:0] tofloatxout_io_out; // @[CORDIC.scala 616:31]
  wire [15:0] tofloatyout_io_in; // @[CORDIC.scala 617:31]
  wire [15:0] tofloatyout_io_out; // @[CORDIC.scala 617:31]
  wire [15:0] tofloatzout_io_in; // @[CORDIC.scala 618:31]
  wire [15:0] tofloatzout_io_out; // @[CORDIC.scala 618:31]
  reg [15:0] xr_0; // @[CORDIC.scala 269:19]
  reg [15:0] xr_1; // @[CORDIC.scala 269:19]
  reg [15:0] xr_2; // @[CORDIC.scala 269:19]
  reg [15:0] xr_3; // @[CORDIC.scala 269:19]
  reg [15:0] xr_4; // @[CORDIC.scala 269:19]
  reg [15:0] xr_5; // @[CORDIC.scala 269:19]
  reg [15:0] xr_6; // @[CORDIC.scala 269:19]
  reg [15:0] xr_7; // @[CORDIC.scala 269:19]
  reg [15:0] xr_8; // @[CORDIC.scala 269:19]
  reg [15:0] yr_0; // @[CORDIC.scala 270:19]
  reg [15:0] yr_1; // @[CORDIC.scala 270:19]
  reg [15:0] yr_2; // @[CORDIC.scala 270:19]
  reg [15:0] yr_3; // @[CORDIC.scala 270:19]
  reg [15:0] yr_4; // @[CORDIC.scala 270:19]
  reg [15:0] yr_5; // @[CORDIC.scala 270:19]
  reg [15:0] yr_6; // @[CORDIC.scala 270:19]
  reg [15:0] yr_7; // @[CORDIC.scala 270:19]
  reg [15:0] yr_8; // @[CORDIC.scala 270:19]
  reg [15:0] thetar_1; // @[CORDIC.scala 271:23]
  reg [15:0] thetar_2; // @[CORDIC.scala 271:23]
  reg [15:0] thetar_3; // @[CORDIC.scala 271:23]
  reg [15:0] thetar_4; // @[CORDIC.scala 271:23]
  reg [15:0] thetar_5; // @[CORDIC.scala 271:23]
  reg [15:0] thetar_6; // @[CORDIC.scala 271:23]
  reg [15:0] thetar_7; // @[CORDIC.scala 271:23]
  reg [15:0] z0sr_0; // @[CORDIC.scala 272:21]
  reg [15:0] z0sr_1; // @[CORDIC.scala 272:21]
  reg [15:0] z0sr_2; // @[CORDIC.scala 272:21]
  reg [15:0] z0sr_3; // @[CORDIC.scala 272:21]
  reg [15:0] z0sr_4; // @[CORDIC.scala 272:21]
  reg [15:0] z0sr_5; // @[CORDIC.scala 272:21]
  reg [15:0] z0sr_6; // @[CORDIC.scala 272:21]
  reg [15:0] z0sr_7; // @[CORDIC.scala 272:21]
  reg [15:0] z0sr_8; // @[CORDIC.scala 272:21]
  reg [1:0] modesr_0; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_1; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_2; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_3; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_4; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_5; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_6; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_7; // @[CORDIC.scala 273:23]
  reg [1:0] modesr_8; // @[CORDIC.scala 273:23]
  wire  _fxxterm_T = 16'sh0 > $signed(z0sr_0); // @[CORDIC.scala 581:42]
  wire [15:0] _fxxterm_T_3 = 16'sh0 - $signed(xr_0); // @[CORDIC.scala 581:56]
  wire [15:0] fxxterm = 16'sh0 > $signed(z0sr_0) ? $signed(_fxxterm_T_3) : $signed(xr_0); // @[CORDIC.scala 581:28]
  wire [15:0] _fxyterm_T_3 = 16'sh0 - $signed(yr_0); // @[CORDIC.scala 582:56]
  wire [15:0] fxyterm = _fxxterm_T ? $signed(_fxyterm_T_3) : $signed(yr_0); // @[CORDIC.scala 582:28]
  wire [15:0] _fxthetaterm_T_2 = 16'h0 - 16'hc91; // @[CORDIC.scala 583:60]
  wire [15:0] _theta_1_T = _fxxterm_T ? _fxthetaterm_T_2 : 16'hc91; // @[CORDIC.scala 585:54]
  wire [16:0] _theta_1_T_1 = {{1{_theta_1_T[15]}},_theta_1_T}; // @[CORDIC.scala 585:40]
  wire [15:0] theta_1 = _theta_1_T_1[15:0]; // @[CORDIC.scala 585:40]
  wire [15:0] x_1 = $signed(xr_0) - $signed(fxyterm); // @[CORDIC.scala 586:32]
  wire [15:0] y_1 = $signed(fxxterm) + $signed(yr_0); // @[CORDIC.scala 587:56]
  wire  _fxxterm_T_4 = $signed(theta_1) > $signed(z0sr_0); // @[CORDIC.scala 593:42]
  wire [15:0] _fxxterm_T_7 = 16'sh0 - $signed(x_1); // @[CORDIC.scala 593:56]
  wire [15:0] fxxterm_1 = $signed(theta_1) > $signed(z0sr_0) ? $signed(_fxxterm_T_7) : $signed(x_1); // @[CORDIC.scala 593:28]
  wire [15:0] _fxyterm_T_7 = 16'sh0 - $signed(y_1); // @[CORDIC.scala 594:56]
  wire [15:0] fxyterm_1 = _fxxterm_T_4 ? $signed(_fxyterm_T_7) : $signed(y_1); // @[CORDIC.scala 594:28]
  wire [15:0] _fxthetaterm_T_5 = 16'h0 - 16'h648; // @[CORDIC.scala 595:60]
  wire [15:0] _theta_2_T = _fxxterm_T_4 ? _fxthetaterm_T_5 : 16'h648; // @[CORDIC.scala 598:54]
  wire [15:0] theta_2 = $signed(theta_1) + $signed(_theta_2_T); // @[CORDIC.scala 598:40]
  wire [14:0] _GEN_0 = fxyterm_1[15:1]; // @[CORDIC.scala 599:43]
  wire [15:0] _x_2_T = {{1{_GEN_0[14]}},_GEN_0}; // @[CORDIC.scala 599:43]
  wire [15:0] x_2 = $signed(x_1) - $signed(_x_2_T); // @[CORDIC.scala 599:32]
  wire [14:0] _GEN_1 = fxxterm_1[15:1]; // @[CORDIC.scala 600:32]
  wire [15:0] _y_2_T = {{1{_GEN_1[14]}},_GEN_1}; // @[CORDIC.scala 600:32]
  wire [15:0] y_2 = $signed(_y_2_T) + $signed(y_1); // @[CORDIC.scala 600:56]
  wire  _fxxterm_T_8 = $signed(thetar_1) > $signed(z0sr_1); // @[CORDIC.scala 581:42]
  wire [15:0] _fxxterm_T_11 = 16'sh0 - $signed(xr_1); // @[CORDIC.scala 581:56]
  wire [15:0] fxxterm_2 = $signed(thetar_1) > $signed(z0sr_1) ? $signed(_fxxterm_T_11) : $signed(xr_1); // @[CORDIC.scala 581:28]
  wire [15:0] _fxyterm_T_11 = 16'sh0 - $signed(yr_1); // @[CORDIC.scala 582:56]
  wire [15:0] fxyterm_2 = _fxxterm_T_8 ? $signed(_fxyterm_T_11) : $signed(yr_1); // @[CORDIC.scala 582:28]
  wire [15:0] _fxthetaterm_T_8 = 16'h0 - 16'h324; // @[CORDIC.scala 583:60]
  wire [15:0] _theta_3_T = _fxxterm_T_8 ? _fxthetaterm_T_8 : 16'h324; // @[CORDIC.scala 585:54]
  wire [15:0] theta_3 = $signed(thetar_1) + $signed(_theta_3_T); // @[CORDIC.scala 585:40]
  wire [13:0] _GEN_2 = fxyterm_2[15:2]; // @[CORDIC.scala 586:43]
  wire [15:0] _x_3_T = {{2{_GEN_2[13]}},_GEN_2}; // @[CORDIC.scala 586:43]
  wire [15:0] x_3 = $signed(xr_1) - $signed(_x_3_T); // @[CORDIC.scala 586:32]
  wire [13:0] _GEN_3 = fxxterm_2[15:2]; // @[CORDIC.scala 587:32]
  wire [15:0] _y_3_T = {{2{_GEN_3[13]}},_GEN_3}; // @[CORDIC.scala 587:32]
  wire [15:0] y_3 = $signed(_y_3_T) + $signed(yr_1); // @[CORDIC.scala 587:56]
  wire  _fxxterm_T_12 = $signed(theta_3) > $signed(z0sr_1); // @[CORDIC.scala 593:42]
  wire [15:0] _fxxterm_T_15 = 16'sh0 - $signed(x_3); // @[CORDIC.scala 593:56]
  wire [15:0] fxxterm_3 = $signed(theta_3) > $signed(z0sr_1) ? $signed(_fxxterm_T_15) : $signed(x_3); // @[CORDIC.scala 593:28]
  wire [15:0] _fxyterm_T_15 = 16'sh0 - $signed(y_3); // @[CORDIC.scala 594:56]
  wire [15:0] fxyterm_3 = _fxxterm_T_12 ? $signed(_fxyterm_T_15) : $signed(y_3); // @[CORDIC.scala 594:28]
  wire [15:0] _fxthetaterm_T_11 = 16'h0 - 16'h192; // @[CORDIC.scala 595:60]
  wire [15:0] _theta_4_T = _fxxterm_T_12 ? _fxthetaterm_T_11 : 16'h192; // @[CORDIC.scala 598:54]
  wire [15:0] theta_4 = $signed(theta_3) + $signed(_theta_4_T); // @[CORDIC.scala 598:40]
  wire [12:0] _GEN_4 = fxyterm_3[15:3]; // @[CORDIC.scala 599:43]
  wire [15:0] _x_4_T = {{3{_GEN_4[12]}},_GEN_4}; // @[CORDIC.scala 599:43]
  wire [15:0] x_4 = $signed(x_3) - $signed(_x_4_T); // @[CORDIC.scala 599:32]
  wire [12:0] _GEN_5 = fxxterm_3[15:3]; // @[CORDIC.scala 600:32]
  wire [15:0] _y_4_T = {{3{_GEN_5[12]}},_GEN_5}; // @[CORDIC.scala 600:32]
  wire [15:0] y_4 = $signed(_y_4_T) + $signed(y_3); // @[CORDIC.scala 600:56]
  wire  _fxxterm_T_16 = $signed(thetar_2) > $signed(z0sr_2); // @[CORDIC.scala 581:42]
  wire [15:0] _fxxterm_T_19 = 16'sh0 - $signed(xr_2); // @[CORDIC.scala 581:56]
  wire [15:0] fxxterm_4 = $signed(thetar_2) > $signed(z0sr_2) ? $signed(_fxxterm_T_19) : $signed(xr_2); // @[CORDIC.scala 581:28]
  wire [15:0] _fxyterm_T_19 = 16'sh0 - $signed(yr_2); // @[CORDIC.scala 582:56]
  wire [15:0] fxyterm_4 = _fxxterm_T_16 ? $signed(_fxyterm_T_19) : $signed(yr_2); // @[CORDIC.scala 582:28]
  wire [15:0] _fxthetaterm_T_14 = 16'h0 - 16'hc9; // @[CORDIC.scala 583:60]
  wire [15:0] _theta_5_T = _fxxterm_T_16 ? _fxthetaterm_T_14 : 16'hc9; // @[CORDIC.scala 585:54]
  wire [15:0] theta_5 = $signed(thetar_2) + $signed(_theta_5_T); // @[CORDIC.scala 585:40]
  wire [11:0] _GEN_6 = fxyterm_4[15:4]; // @[CORDIC.scala 586:43]
  wire [15:0] _x_5_T = {{4{_GEN_6[11]}},_GEN_6}; // @[CORDIC.scala 586:43]
  wire [15:0] x_5 = $signed(xr_2) - $signed(_x_5_T); // @[CORDIC.scala 586:32]
  wire [11:0] _GEN_7 = fxxterm_4[15:4]; // @[CORDIC.scala 587:32]
  wire [15:0] _y_5_T = {{4{_GEN_7[11]}},_GEN_7}; // @[CORDIC.scala 587:32]
  wire [15:0] y_5 = $signed(_y_5_T) + $signed(yr_2); // @[CORDIC.scala 587:56]
  wire  _fxxterm_T_20 = $signed(theta_5) > $signed(z0sr_2); // @[CORDIC.scala 593:42]
  wire [15:0] _fxxterm_T_23 = 16'sh0 - $signed(x_5); // @[CORDIC.scala 593:56]
  wire [15:0] fxxterm_5 = $signed(theta_5) > $signed(z0sr_2) ? $signed(_fxxterm_T_23) : $signed(x_5); // @[CORDIC.scala 593:28]
  wire [15:0] _fxyterm_T_23 = 16'sh0 - $signed(y_5); // @[CORDIC.scala 594:56]
  wire [15:0] fxyterm_5 = _fxxterm_T_20 ? $signed(_fxyterm_T_23) : $signed(y_5); // @[CORDIC.scala 594:28]
  wire [15:0] _fxthetaterm_T_17 = 16'h0 - 16'h65; // @[CORDIC.scala 595:60]
  wire [15:0] _theta_6_T = _fxxterm_T_20 ? _fxthetaterm_T_17 : 16'h65; // @[CORDIC.scala 598:54]
  wire [15:0] theta_6 = $signed(theta_5) + $signed(_theta_6_T); // @[CORDIC.scala 598:40]
  wire [10:0] _GEN_8 = fxyterm_5[15:5]; // @[CORDIC.scala 599:43]
  wire [15:0] _x_6_T = {{5{_GEN_8[10]}},_GEN_8}; // @[CORDIC.scala 599:43]
  wire [15:0] x_6 = $signed(x_5) - $signed(_x_6_T); // @[CORDIC.scala 599:32]
  wire [10:0] _GEN_9 = fxxterm_5[15:5]; // @[CORDIC.scala 600:32]
  wire [15:0] _y_6_T = {{5{_GEN_9[10]}},_GEN_9}; // @[CORDIC.scala 600:32]
  wire [15:0] y_6 = $signed(_y_6_T) + $signed(y_5); // @[CORDIC.scala 600:56]
  wire  _fxxterm_T_24 = $signed(thetar_3) > $signed(z0sr_3); // @[CORDIC.scala 581:42]
  wire [15:0] _fxxterm_T_27 = 16'sh0 - $signed(xr_3); // @[CORDIC.scala 581:56]
  wire [15:0] fxxterm_6 = $signed(thetar_3) > $signed(z0sr_3) ? $signed(_fxxterm_T_27) : $signed(xr_3); // @[CORDIC.scala 581:28]
  wire [15:0] _fxyterm_T_27 = 16'sh0 - $signed(yr_3); // @[CORDIC.scala 582:56]
  wire [15:0] fxyterm_6 = _fxxterm_T_24 ? $signed(_fxyterm_T_27) : $signed(yr_3); // @[CORDIC.scala 582:28]
  wire [15:0] _fxthetaterm_T_20 = 16'h0 - 16'h32; // @[CORDIC.scala 583:60]
  wire [15:0] _theta_7_T = _fxxterm_T_24 ? _fxthetaterm_T_20 : 16'h32; // @[CORDIC.scala 585:54]
  wire [15:0] theta_7 = $signed(thetar_3) + $signed(_theta_7_T); // @[CORDIC.scala 585:40]
  wire [9:0] _GEN_10 = fxyterm_6[15:6]; // @[CORDIC.scala 586:43]
  wire [15:0] _x_7_T = {{6{_GEN_10[9]}},_GEN_10}; // @[CORDIC.scala 586:43]
  wire [15:0] x_7 = $signed(xr_3) - $signed(_x_7_T); // @[CORDIC.scala 586:32]
  wire [9:0] _GEN_11 = fxxterm_6[15:6]; // @[CORDIC.scala 587:32]
  wire [15:0] _y_7_T = {{6{_GEN_11[9]}},_GEN_11}; // @[CORDIC.scala 587:32]
  wire [15:0] y_7 = $signed(_y_7_T) + $signed(yr_3); // @[CORDIC.scala 587:56]
  wire  _fxxterm_T_28 = $signed(theta_7) > $signed(z0sr_3); // @[CORDIC.scala 593:42]
  wire [15:0] _fxxterm_T_31 = 16'sh0 - $signed(x_7); // @[CORDIC.scala 593:56]
  wire [15:0] fxxterm_7 = $signed(theta_7) > $signed(z0sr_3) ? $signed(_fxxterm_T_31) : $signed(x_7); // @[CORDIC.scala 593:28]
  wire [15:0] _fxyterm_T_31 = 16'sh0 - $signed(y_7); // @[CORDIC.scala 594:56]
  wire [15:0] fxyterm_7 = _fxxterm_T_28 ? $signed(_fxyterm_T_31) : $signed(y_7); // @[CORDIC.scala 594:28]
  wire [15:0] _fxthetaterm_T_23 = 16'h0 - 16'h19; // @[CORDIC.scala 595:60]
  wire [15:0] _theta_8_T = _fxxterm_T_28 ? _fxthetaterm_T_23 : 16'h19; // @[CORDIC.scala 598:54]
  wire [15:0] theta_8 = $signed(theta_7) + $signed(_theta_8_T); // @[CORDIC.scala 598:40]
  wire [8:0] _GEN_12 = fxyterm_7[15:7]; // @[CORDIC.scala 599:43]
  wire [15:0] _x_8_T = {{7{_GEN_12[8]}},_GEN_12}; // @[CORDIC.scala 599:43]
  wire [15:0] x_8 = $signed(x_7) - $signed(_x_8_T); // @[CORDIC.scala 599:32]
  wire [8:0] _GEN_13 = fxxterm_7[15:7]; // @[CORDIC.scala 600:32]
  wire [15:0] _y_8_T = {{7{_GEN_13[8]}},_GEN_13}; // @[CORDIC.scala 600:32]
  wire [15:0] y_8 = $signed(_y_8_T) + $signed(y_7); // @[CORDIC.scala 600:56]
  wire  _fxxterm_T_32 = $signed(thetar_4) > $signed(z0sr_4); // @[CORDIC.scala 581:42]
  wire [15:0] _fxxterm_T_35 = 16'sh0 - $signed(xr_4); // @[CORDIC.scala 581:56]
  wire [15:0] fxxterm_8 = $signed(thetar_4) > $signed(z0sr_4) ? $signed(_fxxterm_T_35) : $signed(xr_4); // @[CORDIC.scala 581:28]
  wire [15:0] _fxyterm_T_35 = 16'sh0 - $signed(yr_4); // @[CORDIC.scala 582:56]
  wire [15:0] fxyterm_8 = _fxxterm_T_32 ? $signed(_fxyterm_T_35) : $signed(yr_4); // @[CORDIC.scala 582:28]
  wire [15:0] _fxthetaterm_T_26 = 16'h0 - 16'hd; // @[CORDIC.scala 583:60]
  wire [15:0] _theta_9_T = _fxxterm_T_32 ? _fxthetaterm_T_26 : 16'hd; // @[CORDIC.scala 585:54]
  wire [15:0] theta_9 = $signed(thetar_4) + $signed(_theta_9_T); // @[CORDIC.scala 585:40]
  wire [7:0] _GEN_14 = fxyterm_8[15:8]; // @[CORDIC.scala 586:43]
  wire [15:0] _x_9_T = {{8{_GEN_14[7]}},_GEN_14}; // @[CORDIC.scala 586:43]
  wire [15:0] x_9 = $signed(xr_4) - $signed(_x_9_T); // @[CORDIC.scala 586:32]
  wire [7:0] _GEN_15 = fxxterm_8[15:8]; // @[CORDIC.scala 587:32]
  wire [15:0] _y_9_T = {{8{_GEN_15[7]}},_GEN_15}; // @[CORDIC.scala 587:32]
  wire [15:0] y_9 = $signed(_y_9_T) + $signed(yr_4); // @[CORDIC.scala 587:56]
  wire  _fxxterm_T_36 = $signed(theta_9) > $signed(z0sr_4); // @[CORDIC.scala 593:42]
  wire [15:0] _fxxterm_T_39 = 16'sh0 - $signed(x_9); // @[CORDIC.scala 593:56]
  wire [15:0] fxxterm_9 = $signed(theta_9) > $signed(z0sr_4) ? $signed(_fxxterm_T_39) : $signed(x_9); // @[CORDIC.scala 593:28]
  wire [15:0] _fxyterm_T_39 = 16'sh0 - $signed(y_9); // @[CORDIC.scala 594:56]
  wire [15:0] fxyterm_9 = _fxxterm_T_36 ? $signed(_fxyterm_T_39) : $signed(y_9); // @[CORDIC.scala 594:28]
  wire [15:0] _fxthetaterm_T_29 = 16'h0 - 16'h6; // @[CORDIC.scala 595:60]
  wire [15:0] _theta_10_T = _fxxterm_T_36 ? _fxthetaterm_T_29 : 16'h6; // @[CORDIC.scala 598:54]
  wire [15:0] theta_10 = $signed(theta_9) + $signed(_theta_10_T); // @[CORDIC.scala 598:40]
  wire [6:0] _GEN_16 = fxyterm_9[15:9]; // @[CORDIC.scala 599:43]
  wire [15:0] _x_10_T = {{9{_GEN_16[6]}},_GEN_16}; // @[CORDIC.scala 599:43]
  wire [15:0] x_10 = $signed(x_9) - $signed(_x_10_T); // @[CORDIC.scala 599:32]
  wire [6:0] _GEN_17 = fxxterm_9[15:9]; // @[CORDIC.scala 600:32]
  wire [15:0] _y_10_T = {{9{_GEN_17[6]}},_GEN_17}; // @[CORDIC.scala 600:32]
  wire [15:0] y_10 = $signed(_y_10_T) + $signed(y_9); // @[CORDIC.scala 600:56]
  wire  _fxxterm_T_40 = $signed(thetar_5) > $signed(z0sr_5); // @[CORDIC.scala 581:42]
  wire [15:0] _fxxterm_T_43 = 16'sh0 - $signed(xr_5); // @[CORDIC.scala 581:56]
  wire [15:0] fxxterm_10 = $signed(thetar_5) > $signed(z0sr_5) ? $signed(_fxxterm_T_43) : $signed(xr_5); // @[CORDIC.scala 581:28]
  wire [15:0] _fxyterm_T_43 = 16'sh0 - $signed(yr_5); // @[CORDIC.scala 582:56]
  wire [15:0] fxyterm_10 = _fxxterm_T_40 ? $signed(_fxyterm_T_43) : $signed(yr_5); // @[CORDIC.scala 582:28]
  wire [15:0] _fxthetaterm_T_32 = 16'h0 - 16'h3; // @[CORDIC.scala 583:60]
  wire [15:0] _theta_11_T = _fxxterm_T_40 ? _fxthetaterm_T_32 : 16'h3; // @[CORDIC.scala 585:54]
  wire [15:0] theta_11 = $signed(thetar_5) + $signed(_theta_11_T); // @[CORDIC.scala 585:40]
  wire [5:0] _GEN_18 = fxyterm_10[15:10]; // @[CORDIC.scala 586:43]
  wire [15:0] _x_11_T = {{10{_GEN_18[5]}},_GEN_18}; // @[CORDIC.scala 586:43]
  wire [15:0] x_11 = $signed(xr_5) - $signed(_x_11_T); // @[CORDIC.scala 586:32]
  wire [5:0] _GEN_19 = fxxterm_10[15:10]; // @[CORDIC.scala 587:32]
  wire [15:0] _y_11_T = {{10{_GEN_19[5]}},_GEN_19}; // @[CORDIC.scala 587:32]
  wire [15:0] y_11 = $signed(_y_11_T) + $signed(yr_5); // @[CORDIC.scala 587:56]
  wire  _fxxterm_T_44 = $signed(theta_11) > $signed(z0sr_5); // @[CORDIC.scala 593:42]
  wire [15:0] _fxxterm_T_47 = 16'sh0 - $signed(x_11); // @[CORDIC.scala 593:56]
  wire [15:0] fxxterm_11 = $signed(theta_11) > $signed(z0sr_5) ? $signed(_fxxterm_T_47) : $signed(x_11); // @[CORDIC.scala 593:28]
  wire [15:0] _fxyterm_T_47 = 16'sh0 - $signed(y_11); // @[CORDIC.scala 594:56]
  wire [15:0] fxyterm_11 = _fxxterm_T_44 ? $signed(_fxyterm_T_47) : $signed(y_11); // @[CORDIC.scala 594:28]
  wire [15:0] _fxthetaterm_T_35 = 16'h0 - 16'h2; // @[CORDIC.scala 595:60]
  wire [15:0] _theta_12_T = _fxxterm_T_44 ? _fxthetaterm_T_35 : 16'h2; // @[CORDIC.scala 598:54]
  wire [15:0] theta_12 = $signed(theta_11) + $signed(_theta_12_T); // @[CORDIC.scala 598:40]
  wire [4:0] _GEN_20 = fxyterm_11[15:11]; // @[CORDIC.scala 599:43]
  wire [15:0] _x_12_T = {{11{_GEN_20[4]}},_GEN_20}; // @[CORDIC.scala 599:43]
  wire [15:0] x_12 = $signed(x_11) - $signed(_x_12_T); // @[CORDIC.scala 599:32]
  wire [4:0] _GEN_21 = fxxterm_11[15:11]; // @[CORDIC.scala 600:32]
  wire [15:0] _y_12_T = {{11{_GEN_21[4]}},_GEN_21}; // @[CORDIC.scala 600:32]
  wire [15:0] y_12 = $signed(_y_12_T) + $signed(y_11); // @[CORDIC.scala 600:56]
  wire  _fxxterm_T_48 = $signed(thetar_6) > $signed(z0sr_6); // @[CORDIC.scala 581:42]
  wire [15:0] _fxxterm_T_51 = 16'sh0 - $signed(xr_6); // @[CORDIC.scala 581:56]
  wire [15:0] fxxterm_12 = $signed(thetar_6) > $signed(z0sr_6) ? $signed(_fxxterm_T_51) : $signed(xr_6); // @[CORDIC.scala 581:28]
  wire [15:0] _fxyterm_T_51 = 16'sh0 - $signed(yr_6); // @[CORDIC.scala 582:56]
  wire [15:0] fxyterm_12 = _fxxterm_T_48 ? $signed(_fxyterm_T_51) : $signed(yr_6); // @[CORDIC.scala 582:28]
  wire [15:0] _fxthetaterm_T_38 = 16'h0 - 16'h1; // @[CORDIC.scala 583:60]
  wire [15:0] _theta_13_T = _fxxterm_T_48 ? _fxthetaterm_T_38 : 16'h1; // @[CORDIC.scala 585:54]
  wire [15:0] theta_13 = $signed(thetar_6) + $signed(_theta_13_T); // @[CORDIC.scala 585:40]
  wire [3:0] _GEN_22 = fxyterm_12[15:12]; // @[CORDIC.scala 586:43]
  wire [15:0] _x_13_T = {{12{_GEN_22[3]}},_GEN_22}; // @[CORDIC.scala 586:43]
  wire [15:0] x_13 = $signed(xr_6) - $signed(_x_13_T); // @[CORDIC.scala 586:32]
  wire [3:0] _GEN_23 = fxxterm_12[15:12]; // @[CORDIC.scala 587:32]
  wire [15:0] _y_13_T = {{12{_GEN_23[3]}},_GEN_23}; // @[CORDIC.scala 587:32]
  wire [15:0] y_13 = $signed(_y_13_T) + $signed(yr_6); // @[CORDIC.scala 587:56]
  wire  _fxxterm_T_52 = $signed(theta_13) > $signed(z0sr_6); // @[CORDIC.scala 593:42]
  wire [15:0] _fxxterm_T_55 = 16'sh0 - $signed(x_13); // @[CORDIC.scala 593:56]
  wire [15:0] fxxterm_13 = $signed(theta_13) > $signed(z0sr_6) ? $signed(_fxxterm_T_55) : $signed(x_13); // @[CORDIC.scala 593:28]
  wire [15:0] _fxyterm_T_55 = 16'sh0 - $signed(y_13); // @[CORDIC.scala 594:56]
  wire [15:0] fxyterm_13 = _fxxterm_T_52 ? $signed(_fxyterm_T_55) : $signed(y_13); // @[CORDIC.scala 594:28]
  wire [16:0] _theta_14_T_1 = {{1{theta_13[15]}},theta_13}; // @[CORDIC.scala 598:40]
  wire [15:0] theta_14 = _theta_14_T_1[15:0]; // @[CORDIC.scala 598:40]
  wire [2:0] _GEN_24 = fxyterm_13[15:13]; // @[CORDIC.scala 599:43]
  wire [15:0] _x_14_T = {{13{_GEN_24[2]}},_GEN_24}; // @[CORDIC.scala 599:43]
  wire [15:0] x_14 = $signed(x_13) - $signed(_x_14_T); // @[CORDIC.scala 599:32]
  wire [2:0] _GEN_25 = fxxterm_13[15:13]; // @[CORDIC.scala 600:32]
  wire [15:0] _y_14_T = {{13{_GEN_25[2]}},_GEN_25}; // @[CORDIC.scala 600:32]
  wire [15:0] y_14 = $signed(_y_14_T) + $signed(y_13); // @[CORDIC.scala 600:56]
  wire  _fxxterm_T_56 = $signed(thetar_7) > $signed(z0sr_7); // @[CORDIC.scala 581:42]
  wire [15:0] _fxxterm_T_59 = 16'sh0 - $signed(xr_7); // @[CORDIC.scala 581:56]
  wire [15:0] fxxterm_14 = $signed(thetar_7) > $signed(z0sr_7) ? $signed(_fxxterm_T_59) : $signed(xr_7); // @[CORDIC.scala 581:28]
  wire [15:0] _fxyterm_T_59 = 16'sh0 - $signed(yr_7); // @[CORDIC.scala 582:56]
  wire [15:0] fxyterm_14 = _fxxterm_T_56 ? $signed(_fxyterm_T_59) : $signed(yr_7); // @[CORDIC.scala 582:28]
  wire [16:0] _theta_15_T_1 = {{1{thetar_7[15]}},thetar_7}; // @[CORDIC.scala 585:40]
  wire [15:0] theta_15 = _theta_15_T_1[15:0]; // @[CORDIC.scala 585:40]
  wire [1:0] _GEN_26 = fxyterm_14[15:14]; // @[CORDIC.scala 586:43]
  wire [15:0] _x_15_T = {{14{_GEN_26[1]}},_GEN_26}; // @[CORDIC.scala 586:43]
  wire [15:0] x_15 = $signed(xr_7) - $signed(_x_15_T); // @[CORDIC.scala 586:32]
  wire [1:0] _GEN_27 = fxxterm_14[15:14]; // @[CORDIC.scala 587:32]
  wire [15:0] _y_15_T = {{14{_GEN_27[1]}},_GEN_27}; // @[CORDIC.scala 587:32]
  wire [15:0] y_15 = $signed(_y_15_T) + $signed(yr_7); // @[CORDIC.scala 587:56]
  wire  _fxxterm_T_60 = $signed(theta_15) > $signed(z0sr_7); // @[CORDIC.scala 593:42]
  wire [15:0] _fxxterm_T_63 = 16'sh0 - $signed(x_15); // @[CORDIC.scala 593:56]
  wire [15:0] fxxterm_15 = $signed(theta_15) > $signed(z0sr_7) ? $signed(_fxxterm_T_63) : $signed(x_15); // @[CORDIC.scala 593:28]
  wire [15:0] _fxyterm_T_63 = 16'sh0 - $signed(y_15); // @[CORDIC.scala 594:56]
  wire [15:0] fxyterm_15 = _fxxterm_T_60 ? $signed(_fxyterm_T_63) : $signed(y_15); // @[CORDIC.scala 594:28]
  wire  _GEN_28 = fxyterm_15[15]; // @[CORDIC.scala 599:43]
  wire [15:0] _x_16_T = {16{_GEN_28}}; // @[CORDIC.scala 599:43]
  wire [15:0] x_16 = $signed(x_15) - $signed(_x_16_T); // @[CORDIC.scala 599:32]
  wire  _GEN_29 = fxxterm_15[15]; // @[CORDIC.scala 600:32]
  wire [15:0] _y_16_T = {16{_GEN_29}}; // @[CORDIC.scala 600:32]
  wire [15:0] y_16 = $signed(_y_16_T) + $signed(y_15); // @[CORDIC.scala 600:56]
  wire [15:0] _GEN_30 = reset ? 16'h0 : io_in_mode; // @[CORDIC.scala 273:{23,23} 302:13]
  FloatToFixed16 tofixedx0 ( // @[CORDIC.scala 280:25]
    .io_in(tofixedx0_io_in),
    .io_out(tofixedx0_io_out)
  );
  FloatToFixed16 tofixedy0 ( // @[CORDIC.scala 281:25]
    .io_in(tofixedy0_io_in),
    .io_out(tofixedy0_io_out)
  );
  FixedToFloat16 tofloatxout ( // @[CORDIC.scala 616:31]
    .io_in(tofloatxout_io_in),
    .io_out(tofloatxout_io_out)
  );
  FixedToFloat16 tofloatyout ( // @[CORDIC.scala 617:31]
    .io_in(tofloatyout_io_in),
    .io_out(tofloatyout_io_out)
  );
  FixedToFloat16 tofloatzout ( // @[CORDIC.scala 618:31]
    .io_in(tofloatzout_io_in),
    .io_out(tofloatzout_io_out)
  );
  assign io_out_x = tofloatxout_io_out; // @[CORDIC.scala 625:16]
  assign io_out_mode = modesr_8; // @[CORDIC.scala 623:19]
  assign tofixedx0_io_in = 16'h38dc; // @[CORDIC.scala 284:19]
  assign tofixedy0_io_in = 16'h0; // @[CORDIC.scala 285:19]
  assign tofloatxout_io_in = xr_8; // @[CORDIC.scala 620:37]
  assign tofloatyout_io_in = yr_8; // @[CORDIC.scala 621:37]
  assign tofloatzout_io_in = z0sr_8; // @[CORDIC.scala 622:39]
  always @(posedge clock) begin
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_0 <= 16'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_0 <= tofixedx0_io_out; // @[CORDIC.scala 299:9]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_1 <= 16'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_1 <= x_2; // @[CORDIC.scala 607:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_2 <= 16'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_2 <= x_4; // @[CORDIC.scala 607:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_3 <= 16'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_3 <= x_6; // @[CORDIC.scala 607:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_4 <= 16'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_4 <= x_8; // @[CORDIC.scala 607:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_5 <= 16'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_5 <= x_10; // @[CORDIC.scala 607:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_6 <= 16'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_6 <= x_12; // @[CORDIC.scala 607:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_7 <= 16'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_7 <= x_14; // @[CORDIC.scala 607:20]
    end
    if (reset) begin // @[CORDIC.scala 269:19]
      xr_8 <= 16'sh0; // @[CORDIC.scala 269:19]
    end else begin
      xr_8 <= x_16; // @[CORDIC.scala 607:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_0 <= 16'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_0 <= tofixedy0_io_out; // @[CORDIC.scala 300:9]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_1 <= 16'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_1 <= y_2; // @[CORDIC.scala 608:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_2 <= 16'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_2 <= y_4; // @[CORDIC.scala 608:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_3 <= 16'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_3 <= y_6; // @[CORDIC.scala 608:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_4 <= 16'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_4 <= y_8; // @[CORDIC.scala 608:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_5 <= 16'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_5 <= y_10; // @[CORDIC.scala 608:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_6 <= 16'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_6 <= y_12; // @[CORDIC.scala 608:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_7 <= 16'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_7 <= y_14; // @[CORDIC.scala 608:20]
    end
    if (reset) begin // @[CORDIC.scala 270:19]
      yr_8 <= 16'sh0; // @[CORDIC.scala 270:19]
    end else begin
      yr_8 <= y_16; // @[CORDIC.scala 608:20]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_1 <= 16'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_1 <= theta_2; // @[CORDIC.scala 606:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_2 <= 16'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_2 <= theta_4; // @[CORDIC.scala 606:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_3 <= 16'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_3 <= theta_6; // @[CORDIC.scala 606:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_4 <= 16'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_4 <= theta_8; // @[CORDIC.scala 606:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_5 <= 16'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_5 <= theta_10; // @[CORDIC.scala 606:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_6 <= 16'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_6 <= theta_12; // @[CORDIC.scala 606:24]
    end
    if (reset) begin // @[CORDIC.scala 271:23]
      thetar_7 <= 16'sh0; // @[CORDIC.scala 271:23]
    end else begin
      thetar_7 <= theta_14; // @[CORDIC.scala 606:24]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_0 <= 16'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_0 <= io_in_z0; // @[CORDIC.scala 301:11]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_1 <= 16'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_1 <= z0sr_0; // @[CORDIC.scala 609:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_2 <= 16'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_2 <= z0sr_1; // @[CORDIC.scala 609:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_3 <= 16'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_3 <= z0sr_2; // @[CORDIC.scala 609:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_4 <= 16'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_4 <= z0sr_3; // @[CORDIC.scala 609:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_5 <= 16'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_5 <= z0sr_4; // @[CORDIC.scala 609:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_6 <= 16'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_6 <= z0sr_5; // @[CORDIC.scala 609:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_7 <= 16'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_7 <= z0sr_6; // @[CORDIC.scala 609:22]
    end
    if (reset) begin // @[CORDIC.scala 272:21]
      z0sr_8 <= 16'sh0; // @[CORDIC.scala 272:21]
    end else begin
      z0sr_8 <= z0sr_7; // @[CORDIC.scala 609:22]
    end
    modesr_0 <= _GEN_30[1:0]; // @[CORDIC.scala 273:{23,23} 302:13]
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_1 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_1 <= modesr_0; // @[CORDIC.scala 610:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_2 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_2 <= modesr_1; // @[CORDIC.scala 610:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_3 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_3 <= modesr_2; // @[CORDIC.scala 610:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_4 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_4 <= modesr_3; // @[CORDIC.scala 610:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_5 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_5 <= modesr_4; // @[CORDIC.scala 610:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_6 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_6 <= modesr_5; // @[CORDIC.scala 610:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_7 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_7 <= modesr_6; // @[CORDIC.scala 610:24]
    end
    if (reset) begin // @[CORDIC.scala 273:23]
      modesr_8 <= 2'h0; // @[CORDIC.scala 273:23]
    end else begin
      modesr_8 <= modesr_7; // @[CORDIC.scala 610:24]
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
  _RAND_0 = {1{`RANDOM}};
  xr_0 = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  xr_1 = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  xr_2 = _RAND_2[15:0];
  _RAND_3 = {1{`RANDOM}};
  xr_3 = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  xr_4 = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  xr_5 = _RAND_5[15:0];
  _RAND_6 = {1{`RANDOM}};
  xr_6 = _RAND_6[15:0];
  _RAND_7 = {1{`RANDOM}};
  xr_7 = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  xr_8 = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  yr_0 = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  yr_1 = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  yr_2 = _RAND_11[15:0];
  _RAND_12 = {1{`RANDOM}};
  yr_3 = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  yr_4 = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  yr_5 = _RAND_14[15:0];
  _RAND_15 = {1{`RANDOM}};
  yr_6 = _RAND_15[15:0];
  _RAND_16 = {1{`RANDOM}};
  yr_7 = _RAND_16[15:0];
  _RAND_17 = {1{`RANDOM}};
  yr_8 = _RAND_17[15:0];
  _RAND_18 = {1{`RANDOM}};
  thetar_1 = _RAND_18[15:0];
  _RAND_19 = {1{`RANDOM}};
  thetar_2 = _RAND_19[15:0];
  _RAND_20 = {1{`RANDOM}};
  thetar_3 = _RAND_20[15:0];
  _RAND_21 = {1{`RANDOM}};
  thetar_4 = _RAND_21[15:0];
  _RAND_22 = {1{`RANDOM}};
  thetar_5 = _RAND_22[15:0];
  _RAND_23 = {1{`RANDOM}};
  thetar_6 = _RAND_23[15:0];
  _RAND_24 = {1{`RANDOM}};
  thetar_7 = _RAND_24[15:0];
  _RAND_25 = {1{`RANDOM}};
  z0sr_0 = _RAND_25[15:0];
  _RAND_26 = {1{`RANDOM}};
  z0sr_1 = _RAND_26[15:0];
  _RAND_27 = {1{`RANDOM}};
  z0sr_2 = _RAND_27[15:0];
  _RAND_28 = {1{`RANDOM}};
  z0sr_3 = _RAND_28[15:0];
  _RAND_29 = {1{`RANDOM}};
  z0sr_4 = _RAND_29[15:0];
  _RAND_30 = {1{`RANDOM}};
  z0sr_5 = _RAND_30[15:0];
  _RAND_31 = {1{`RANDOM}};
  z0sr_6 = _RAND_31[15:0];
  _RAND_32 = {1{`RANDOM}};
  z0sr_7 = _RAND_32[15:0];
  _RAND_33 = {1{`RANDOM}};
  z0sr_8 = _RAND_33[15:0];
  _RAND_34 = {1{`RANDOM}};
  modesr_0 = _RAND_34[1:0];
  _RAND_35 = {1{`RANDOM}};
  modesr_1 = _RAND_35[1:0];
  _RAND_36 = {1{`RANDOM}};
  modesr_2 = _RAND_36[1:0];
  _RAND_37 = {1{`RANDOM}};
  modesr_3 = _RAND_37[1:0];
  _RAND_38 = {1{`RANDOM}};
  modesr_4 = _RAND_38[1:0];
  _RAND_39 = {1{`RANDOM}};
  modesr_5 = _RAND_39[1:0];
  _RAND_40 = {1{`RANDOM}};
  modesr_6 = _RAND_40[1:0];
  _RAND_41 = {1{`RANDOM}};
  modesr_7 = _RAND_41[1:0];
  _RAND_42 = {1{`RANDOM}};
  modesr_8 = _RAND_42[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

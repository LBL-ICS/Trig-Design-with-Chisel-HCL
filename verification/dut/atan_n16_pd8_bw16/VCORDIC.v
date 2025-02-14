module VCORDIC(
  input         clock,
  input         reset,
  input  [15:0] io_in_y0,
  output [15:0] io_out_z
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
`endif // RANDOMIZE_REG_INIT
  wire [15:0] tofixedx0_io_in; // @[VCORDIC.scala 270:27]
  wire [15:0] tofixedx0_io_out; // @[VCORDIC.scala 270:27]
  wire [15:0] tofixedy0_io_in; // @[VCORDIC.scala 271:27]
  wire [15:0] tofixedy0_io_out; // @[VCORDIC.scala 271:27]
  wire [15:0] tofixedz0_io_in; // @[VCORDIC.scala 272:27]
  wire [15:0] tofixedz0_io_out; // @[VCORDIC.scala 272:27]
  wire [15:0] tofloatxout_io_in; // @[VCORDIC.scala 567:29]
  wire [15:0] tofloatxout_io_out; // @[VCORDIC.scala 567:29]
  wire [15:0] tofloatyout_io_in; // @[VCORDIC.scala 568:29]
  wire [15:0] tofloatyout_io_out; // @[VCORDIC.scala 568:29]
  wire [15:0] tofloatzout_io_in; // @[VCORDIC.scala 569:29]
  wire [15:0] tofloatzout_io_out; // @[VCORDIC.scala 569:29]
  reg [15:0] xr_0; // @[VCORDIC.scala 264:19]
  reg [15:0] xr_1; // @[VCORDIC.scala 264:19]
  reg [15:0] xr_2; // @[VCORDIC.scala 264:19]
  reg [15:0] xr_3; // @[VCORDIC.scala 264:19]
  reg [15:0] xr_4; // @[VCORDIC.scala 264:19]
  reg [15:0] xr_5; // @[VCORDIC.scala 264:19]
  reg [15:0] xr_6; // @[VCORDIC.scala 264:19]
  reg [15:0] xr_7; // @[VCORDIC.scala 264:19]
  reg [15:0] xr_8; // @[VCORDIC.scala 264:19]
  reg [15:0] yr_0; // @[VCORDIC.scala 265:19]
  reg [15:0] yr_1; // @[VCORDIC.scala 265:19]
  reg [15:0] yr_2; // @[VCORDIC.scala 265:19]
  reg [15:0] yr_3; // @[VCORDIC.scala 265:19]
  reg [15:0] yr_4; // @[VCORDIC.scala 265:19]
  reg [15:0] yr_5; // @[VCORDIC.scala 265:19]
  reg [15:0] yr_6; // @[VCORDIC.scala 265:19]
  reg [15:0] yr_7; // @[VCORDIC.scala 265:19]
  reg [15:0] yr_8; // @[VCORDIC.scala 265:19]
  reg [15:0] zr_0; // @[VCORDIC.scala 266:19]
  reg [15:0] zr_1; // @[VCORDIC.scala 266:19]
  reg [15:0] zr_2; // @[VCORDIC.scala 266:19]
  reg [15:0] zr_3; // @[VCORDIC.scala 266:19]
  reg [15:0] zr_4; // @[VCORDIC.scala 266:19]
  reg [15:0] zr_5; // @[VCORDIC.scala 266:19]
  reg [15:0] zr_6; // @[VCORDIC.scala 266:19]
  reg [15:0] zr_7; // @[VCORDIC.scala 266:19]
  reg [15:0] zr_8; // @[VCORDIC.scala 266:19]
  wire  cond = $signed(yr_0) < 16'sh0; // @[VCORDIC.scala 538:31]
  wire [15:0] _xterm_T_2 = 16'sh0 - $signed(xr_0); // @[VCORDIC.scala 540:33]
  wire [15:0] xterm = cond ? $signed(_xterm_T_2) : $signed(xr_0); // @[VCORDIC.scala 540:26]
  wire [15:0] _yterm_T_2 = 16'sh0 - $signed(yr_0); // @[VCORDIC.scala 541:33]
  wire [15:0] yterm = cond ? $signed(_yterm_T_2) : $signed(yr_0); // @[VCORDIC.scala 541:26]
  wire [15:0] _zterm_T_1 = 16'h0 - 16'hc91; // @[VCORDIC.scala 542:33]
  wire [15:0] x_1 = $signed(xr_0) + $signed(yterm); // @[VCORDIC.scala 544:32]
  wire [15:0] y_1 = $signed(yr_0) - $signed(xterm); // @[VCORDIC.scala 545:32]
  wire [15:0] _z_1_T = cond ? _zterm_T_1 : 16'hc91; // @[VCORDIC.scala 546:40]
  wire [15:0] z_1 = $signed(zr_0) + $signed(_z_1_T); // @[VCORDIC.scala 546:32]
  wire  cond_1 = $signed(y_1) < 16'sh0; // @[VCORDIC.scala 549:31]
  wire [15:0] _xterm_T_5 = 16'sh0 - $signed(x_1); // @[VCORDIC.scala 550:33]
  wire [15:0] xterm_1 = cond_1 ? $signed(_xterm_T_5) : $signed(x_1); // @[VCORDIC.scala 550:26]
  wire [15:0] _yterm_T_5 = 16'sh0 - $signed(y_1); // @[VCORDIC.scala 551:33]
  wire [15:0] yterm_1 = cond_1 ? $signed(_yterm_T_5) : $signed(y_1); // @[VCORDIC.scala 551:26]
  wire [15:0] _zterm_T_3 = 16'h0 - 16'h648; // @[VCORDIC.scala 552:33]
  wire [14:0] _GEN_0 = yterm_1[15:1]; // @[VCORDIC.scala 554:41]
  wire [15:0] _x_2_T = {{1{_GEN_0[14]}},_GEN_0}; // @[VCORDIC.scala 554:41]
  wire [15:0] x_2 = $signed(x_1) + $signed(_x_2_T); // @[VCORDIC.scala 554:32]
  wire [14:0] _GEN_1 = xterm_1[15:1]; // @[VCORDIC.scala 555:41]
  wire [15:0] _y_2_T = {{1{_GEN_1[14]}},_GEN_1}; // @[VCORDIC.scala 555:41]
  wire [15:0] y_2 = $signed(y_1) - $signed(_y_2_T); // @[VCORDIC.scala 555:32]
  wire [15:0] _z_2_T = cond_1 ? _zterm_T_3 : 16'h648; // @[VCORDIC.scala 556:40]
  wire [15:0] z_2 = $signed(z_1) + $signed(_z_2_T); // @[VCORDIC.scala 556:32]
  wire  cond_2 = $signed(yr_1) < 16'sh0; // @[VCORDIC.scala 538:31]
  wire [15:0] _xterm_T_8 = 16'sh0 - $signed(xr_1); // @[VCORDIC.scala 540:33]
  wire [15:0] xterm_2 = cond_2 ? $signed(_xterm_T_8) : $signed(xr_1); // @[VCORDIC.scala 540:26]
  wire [15:0] _yterm_T_8 = 16'sh0 - $signed(yr_1); // @[VCORDIC.scala 541:33]
  wire [15:0] yterm_2 = cond_2 ? $signed(_yterm_T_8) : $signed(yr_1); // @[VCORDIC.scala 541:26]
  wire [15:0] _zterm_T_5 = 16'h0 - 16'h324; // @[VCORDIC.scala 542:33]
  wire [13:0] _GEN_2 = yterm_2[15:2]; // @[VCORDIC.scala 544:41]
  wire [15:0] _x_3_T = {{2{_GEN_2[13]}},_GEN_2}; // @[VCORDIC.scala 544:41]
  wire [15:0] x_3 = $signed(xr_1) + $signed(_x_3_T); // @[VCORDIC.scala 544:32]
  wire [13:0] _GEN_3 = xterm_2[15:2]; // @[VCORDIC.scala 545:41]
  wire [15:0] _y_3_T = {{2{_GEN_3[13]}},_GEN_3}; // @[VCORDIC.scala 545:41]
  wire [15:0] y_3 = $signed(yr_1) - $signed(_y_3_T); // @[VCORDIC.scala 545:32]
  wire [15:0] _z_3_T = cond_2 ? _zterm_T_5 : 16'h324; // @[VCORDIC.scala 546:40]
  wire [15:0] z_3 = $signed(zr_1) + $signed(_z_3_T); // @[VCORDIC.scala 546:32]
  wire  cond_3 = $signed(y_3) < 16'sh0; // @[VCORDIC.scala 549:31]
  wire [15:0] _xterm_T_11 = 16'sh0 - $signed(x_3); // @[VCORDIC.scala 550:33]
  wire [15:0] xterm_3 = cond_3 ? $signed(_xterm_T_11) : $signed(x_3); // @[VCORDIC.scala 550:26]
  wire [15:0] _yterm_T_11 = 16'sh0 - $signed(y_3); // @[VCORDIC.scala 551:33]
  wire [15:0] yterm_3 = cond_3 ? $signed(_yterm_T_11) : $signed(y_3); // @[VCORDIC.scala 551:26]
  wire [15:0] _zterm_T_7 = 16'h0 - 16'h192; // @[VCORDIC.scala 552:33]
  wire [12:0] _GEN_4 = yterm_3[15:3]; // @[VCORDIC.scala 554:41]
  wire [15:0] _x_4_T = {{3{_GEN_4[12]}},_GEN_4}; // @[VCORDIC.scala 554:41]
  wire [15:0] x_4 = $signed(x_3) + $signed(_x_4_T); // @[VCORDIC.scala 554:32]
  wire [12:0] _GEN_5 = xterm_3[15:3]; // @[VCORDIC.scala 555:41]
  wire [15:0] _y_4_T = {{3{_GEN_5[12]}},_GEN_5}; // @[VCORDIC.scala 555:41]
  wire [15:0] y_4 = $signed(y_3) - $signed(_y_4_T); // @[VCORDIC.scala 555:32]
  wire [15:0] _z_4_T = cond_3 ? _zterm_T_7 : 16'h192; // @[VCORDIC.scala 556:40]
  wire [15:0] z_4 = $signed(z_3) + $signed(_z_4_T); // @[VCORDIC.scala 556:32]
  wire  cond_4 = $signed(yr_2) < 16'sh0; // @[VCORDIC.scala 538:31]
  wire [15:0] _xterm_T_14 = 16'sh0 - $signed(xr_2); // @[VCORDIC.scala 540:33]
  wire [15:0] xterm_4 = cond_4 ? $signed(_xterm_T_14) : $signed(xr_2); // @[VCORDIC.scala 540:26]
  wire [15:0] _yterm_T_14 = 16'sh0 - $signed(yr_2); // @[VCORDIC.scala 541:33]
  wire [15:0] yterm_4 = cond_4 ? $signed(_yterm_T_14) : $signed(yr_2); // @[VCORDIC.scala 541:26]
  wire [15:0] _zterm_T_9 = 16'h0 - 16'hc9; // @[VCORDIC.scala 542:33]
  wire [11:0] _GEN_6 = yterm_4[15:4]; // @[VCORDIC.scala 544:41]
  wire [15:0] _x_5_T = {{4{_GEN_6[11]}},_GEN_6}; // @[VCORDIC.scala 544:41]
  wire [15:0] x_5 = $signed(xr_2) + $signed(_x_5_T); // @[VCORDIC.scala 544:32]
  wire [11:0] _GEN_7 = xterm_4[15:4]; // @[VCORDIC.scala 545:41]
  wire [15:0] _y_5_T = {{4{_GEN_7[11]}},_GEN_7}; // @[VCORDIC.scala 545:41]
  wire [15:0] y_5 = $signed(yr_2) - $signed(_y_5_T); // @[VCORDIC.scala 545:32]
  wire [15:0] _z_5_T = cond_4 ? _zterm_T_9 : 16'hc9; // @[VCORDIC.scala 546:40]
  wire [15:0] z_5 = $signed(zr_2) + $signed(_z_5_T); // @[VCORDIC.scala 546:32]
  wire  cond_5 = $signed(y_5) < 16'sh0; // @[VCORDIC.scala 549:31]
  wire [15:0] _xterm_T_17 = 16'sh0 - $signed(x_5); // @[VCORDIC.scala 550:33]
  wire [15:0] xterm_5 = cond_5 ? $signed(_xterm_T_17) : $signed(x_5); // @[VCORDIC.scala 550:26]
  wire [15:0] _yterm_T_17 = 16'sh0 - $signed(y_5); // @[VCORDIC.scala 551:33]
  wire [15:0] yterm_5 = cond_5 ? $signed(_yterm_T_17) : $signed(y_5); // @[VCORDIC.scala 551:26]
  wire [15:0] _zterm_T_11 = 16'h0 - 16'h65; // @[VCORDIC.scala 552:33]
  wire [10:0] _GEN_8 = yterm_5[15:5]; // @[VCORDIC.scala 554:41]
  wire [15:0] _x_6_T = {{5{_GEN_8[10]}},_GEN_8}; // @[VCORDIC.scala 554:41]
  wire [15:0] x_6 = $signed(x_5) + $signed(_x_6_T); // @[VCORDIC.scala 554:32]
  wire [10:0] _GEN_9 = xterm_5[15:5]; // @[VCORDIC.scala 555:41]
  wire [15:0] _y_6_T = {{5{_GEN_9[10]}},_GEN_9}; // @[VCORDIC.scala 555:41]
  wire [15:0] y_6 = $signed(y_5) - $signed(_y_6_T); // @[VCORDIC.scala 555:32]
  wire [15:0] _z_6_T = cond_5 ? _zterm_T_11 : 16'h65; // @[VCORDIC.scala 556:40]
  wire [15:0] z_6 = $signed(z_5) + $signed(_z_6_T); // @[VCORDIC.scala 556:32]
  wire  cond_6 = $signed(yr_3) < 16'sh0; // @[VCORDIC.scala 538:31]
  wire [15:0] _xterm_T_20 = 16'sh0 - $signed(xr_3); // @[VCORDIC.scala 540:33]
  wire [15:0] xterm_6 = cond_6 ? $signed(_xterm_T_20) : $signed(xr_3); // @[VCORDIC.scala 540:26]
  wire [15:0] _yterm_T_20 = 16'sh0 - $signed(yr_3); // @[VCORDIC.scala 541:33]
  wire [15:0] yterm_6 = cond_6 ? $signed(_yterm_T_20) : $signed(yr_3); // @[VCORDIC.scala 541:26]
  wire [15:0] _zterm_T_13 = 16'h0 - 16'h32; // @[VCORDIC.scala 542:33]
  wire [9:0] _GEN_10 = yterm_6[15:6]; // @[VCORDIC.scala 544:41]
  wire [15:0] _x_7_T = {{6{_GEN_10[9]}},_GEN_10}; // @[VCORDIC.scala 544:41]
  wire [15:0] x_7 = $signed(xr_3) + $signed(_x_7_T); // @[VCORDIC.scala 544:32]
  wire [9:0] _GEN_11 = xterm_6[15:6]; // @[VCORDIC.scala 545:41]
  wire [15:0] _y_7_T = {{6{_GEN_11[9]}},_GEN_11}; // @[VCORDIC.scala 545:41]
  wire [15:0] y_7 = $signed(yr_3) - $signed(_y_7_T); // @[VCORDIC.scala 545:32]
  wire [15:0] _z_7_T = cond_6 ? _zterm_T_13 : 16'h32; // @[VCORDIC.scala 546:40]
  wire [15:0] z_7 = $signed(zr_3) + $signed(_z_7_T); // @[VCORDIC.scala 546:32]
  wire  cond_7 = $signed(y_7) < 16'sh0; // @[VCORDIC.scala 549:31]
  wire [15:0] _xterm_T_23 = 16'sh0 - $signed(x_7); // @[VCORDIC.scala 550:33]
  wire [15:0] xterm_7 = cond_7 ? $signed(_xterm_T_23) : $signed(x_7); // @[VCORDIC.scala 550:26]
  wire [15:0] _yterm_T_23 = 16'sh0 - $signed(y_7); // @[VCORDIC.scala 551:33]
  wire [15:0] yterm_7 = cond_7 ? $signed(_yterm_T_23) : $signed(y_7); // @[VCORDIC.scala 551:26]
  wire [15:0] _zterm_T_15 = 16'h0 - 16'h19; // @[VCORDIC.scala 552:33]
  wire [8:0] _GEN_12 = yterm_7[15:7]; // @[VCORDIC.scala 554:41]
  wire [15:0] _x_8_T = {{7{_GEN_12[8]}},_GEN_12}; // @[VCORDIC.scala 554:41]
  wire [15:0] x_8 = $signed(x_7) + $signed(_x_8_T); // @[VCORDIC.scala 554:32]
  wire [8:0] _GEN_13 = xterm_7[15:7]; // @[VCORDIC.scala 555:41]
  wire [15:0] _y_8_T = {{7{_GEN_13[8]}},_GEN_13}; // @[VCORDIC.scala 555:41]
  wire [15:0] y_8 = $signed(y_7) - $signed(_y_8_T); // @[VCORDIC.scala 555:32]
  wire [15:0] _z_8_T = cond_7 ? _zterm_T_15 : 16'h19; // @[VCORDIC.scala 556:40]
  wire [15:0] z_8 = $signed(z_7) + $signed(_z_8_T); // @[VCORDIC.scala 556:32]
  wire  cond_8 = $signed(yr_4) < 16'sh0; // @[VCORDIC.scala 538:31]
  wire [15:0] _xterm_T_26 = 16'sh0 - $signed(xr_4); // @[VCORDIC.scala 540:33]
  wire [15:0] xterm_8 = cond_8 ? $signed(_xterm_T_26) : $signed(xr_4); // @[VCORDIC.scala 540:26]
  wire [15:0] _yterm_T_26 = 16'sh0 - $signed(yr_4); // @[VCORDIC.scala 541:33]
  wire [15:0] yterm_8 = cond_8 ? $signed(_yterm_T_26) : $signed(yr_4); // @[VCORDIC.scala 541:26]
  wire [15:0] _zterm_T_17 = 16'h0 - 16'hd; // @[VCORDIC.scala 542:33]
  wire [7:0] _GEN_14 = yterm_8[15:8]; // @[VCORDIC.scala 544:41]
  wire [15:0] _x_9_T = {{8{_GEN_14[7]}},_GEN_14}; // @[VCORDIC.scala 544:41]
  wire [15:0] x_9 = $signed(xr_4) + $signed(_x_9_T); // @[VCORDIC.scala 544:32]
  wire [7:0] _GEN_15 = xterm_8[15:8]; // @[VCORDIC.scala 545:41]
  wire [15:0] _y_9_T = {{8{_GEN_15[7]}},_GEN_15}; // @[VCORDIC.scala 545:41]
  wire [15:0] y_9 = $signed(yr_4) - $signed(_y_9_T); // @[VCORDIC.scala 545:32]
  wire [15:0] _z_9_T = cond_8 ? _zterm_T_17 : 16'hd; // @[VCORDIC.scala 546:40]
  wire [15:0] z_9 = $signed(zr_4) + $signed(_z_9_T); // @[VCORDIC.scala 546:32]
  wire  cond_9 = $signed(y_9) < 16'sh0; // @[VCORDIC.scala 549:31]
  wire [15:0] _xterm_T_29 = 16'sh0 - $signed(x_9); // @[VCORDIC.scala 550:33]
  wire [15:0] xterm_9 = cond_9 ? $signed(_xterm_T_29) : $signed(x_9); // @[VCORDIC.scala 550:26]
  wire [15:0] _yterm_T_29 = 16'sh0 - $signed(y_9); // @[VCORDIC.scala 551:33]
  wire [15:0] yterm_9 = cond_9 ? $signed(_yterm_T_29) : $signed(y_9); // @[VCORDIC.scala 551:26]
  wire [15:0] _zterm_T_19 = 16'h0 - 16'h6; // @[VCORDIC.scala 552:33]
  wire [6:0] _GEN_16 = yterm_9[15:9]; // @[VCORDIC.scala 554:41]
  wire [15:0] _x_10_T = {{9{_GEN_16[6]}},_GEN_16}; // @[VCORDIC.scala 554:41]
  wire [15:0] x_10 = $signed(x_9) + $signed(_x_10_T); // @[VCORDIC.scala 554:32]
  wire [6:0] _GEN_17 = xterm_9[15:9]; // @[VCORDIC.scala 555:41]
  wire [15:0] _y_10_T = {{9{_GEN_17[6]}},_GEN_17}; // @[VCORDIC.scala 555:41]
  wire [15:0] y_10 = $signed(y_9) - $signed(_y_10_T); // @[VCORDIC.scala 555:32]
  wire [15:0] _z_10_T = cond_9 ? _zterm_T_19 : 16'h6; // @[VCORDIC.scala 556:40]
  wire [15:0] z_10 = $signed(z_9) + $signed(_z_10_T); // @[VCORDIC.scala 556:32]
  wire  cond_10 = $signed(yr_5) < 16'sh0; // @[VCORDIC.scala 538:31]
  wire [15:0] _xterm_T_32 = 16'sh0 - $signed(xr_5); // @[VCORDIC.scala 540:33]
  wire [15:0] xterm_10 = cond_10 ? $signed(_xterm_T_32) : $signed(xr_5); // @[VCORDIC.scala 540:26]
  wire [15:0] _yterm_T_32 = 16'sh0 - $signed(yr_5); // @[VCORDIC.scala 541:33]
  wire [15:0] yterm_10 = cond_10 ? $signed(_yterm_T_32) : $signed(yr_5); // @[VCORDIC.scala 541:26]
  wire [15:0] _zterm_T_21 = 16'h0 - 16'h3; // @[VCORDIC.scala 542:33]
  wire [5:0] _GEN_18 = yterm_10[15:10]; // @[VCORDIC.scala 544:41]
  wire [15:0] _x_11_T = {{10{_GEN_18[5]}},_GEN_18}; // @[VCORDIC.scala 544:41]
  wire [15:0] x_11 = $signed(xr_5) + $signed(_x_11_T); // @[VCORDIC.scala 544:32]
  wire [5:0] _GEN_19 = xterm_10[15:10]; // @[VCORDIC.scala 545:41]
  wire [15:0] _y_11_T = {{10{_GEN_19[5]}},_GEN_19}; // @[VCORDIC.scala 545:41]
  wire [15:0] y_11 = $signed(yr_5) - $signed(_y_11_T); // @[VCORDIC.scala 545:32]
  wire [15:0] _z_11_T = cond_10 ? _zterm_T_21 : 16'h3; // @[VCORDIC.scala 546:40]
  wire [15:0] z_11 = $signed(zr_5) + $signed(_z_11_T); // @[VCORDIC.scala 546:32]
  wire  cond_11 = $signed(y_11) < 16'sh0; // @[VCORDIC.scala 549:31]
  wire [15:0] _xterm_T_35 = 16'sh0 - $signed(x_11); // @[VCORDIC.scala 550:33]
  wire [15:0] xterm_11 = cond_11 ? $signed(_xterm_T_35) : $signed(x_11); // @[VCORDIC.scala 550:26]
  wire [15:0] _yterm_T_35 = 16'sh0 - $signed(y_11); // @[VCORDIC.scala 551:33]
  wire [15:0] yterm_11 = cond_11 ? $signed(_yterm_T_35) : $signed(y_11); // @[VCORDIC.scala 551:26]
  wire [15:0] _zterm_T_23 = 16'h0 - 16'h2; // @[VCORDIC.scala 552:33]
  wire [4:0] _GEN_20 = yterm_11[15:11]; // @[VCORDIC.scala 554:41]
  wire [15:0] _x_12_T = {{11{_GEN_20[4]}},_GEN_20}; // @[VCORDIC.scala 554:41]
  wire [15:0] x_12 = $signed(x_11) + $signed(_x_12_T); // @[VCORDIC.scala 554:32]
  wire [4:0] _GEN_21 = xterm_11[15:11]; // @[VCORDIC.scala 555:41]
  wire [15:0] _y_12_T = {{11{_GEN_21[4]}},_GEN_21}; // @[VCORDIC.scala 555:41]
  wire [15:0] y_12 = $signed(y_11) - $signed(_y_12_T); // @[VCORDIC.scala 555:32]
  wire [15:0] _z_12_T = cond_11 ? _zterm_T_23 : 16'h2; // @[VCORDIC.scala 556:40]
  wire [15:0] z_12 = $signed(z_11) + $signed(_z_12_T); // @[VCORDIC.scala 556:32]
  wire  cond_12 = $signed(yr_6) < 16'sh0; // @[VCORDIC.scala 538:31]
  wire [15:0] _xterm_T_38 = 16'sh0 - $signed(xr_6); // @[VCORDIC.scala 540:33]
  wire [15:0] xterm_12 = cond_12 ? $signed(_xterm_T_38) : $signed(xr_6); // @[VCORDIC.scala 540:26]
  wire [15:0] _yterm_T_38 = 16'sh0 - $signed(yr_6); // @[VCORDIC.scala 541:33]
  wire [15:0] yterm_12 = cond_12 ? $signed(_yterm_T_38) : $signed(yr_6); // @[VCORDIC.scala 541:26]
  wire [15:0] _zterm_T_25 = 16'h0 - 16'h1; // @[VCORDIC.scala 542:33]
  wire [3:0] _GEN_22 = yterm_12[15:12]; // @[VCORDIC.scala 544:41]
  wire [15:0] _x_13_T = {{12{_GEN_22[3]}},_GEN_22}; // @[VCORDIC.scala 544:41]
  wire [15:0] x_13 = $signed(xr_6) + $signed(_x_13_T); // @[VCORDIC.scala 544:32]
  wire [3:0] _GEN_23 = xterm_12[15:12]; // @[VCORDIC.scala 545:41]
  wire [15:0] _y_13_T = {{12{_GEN_23[3]}},_GEN_23}; // @[VCORDIC.scala 545:41]
  wire [15:0] y_13 = $signed(yr_6) - $signed(_y_13_T); // @[VCORDIC.scala 545:32]
  wire [15:0] _z_13_T = cond_12 ? _zterm_T_25 : 16'h1; // @[VCORDIC.scala 546:40]
  wire [15:0] z_13 = $signed(zr_6) + $signed(_z_13_T); // @[VCORDIC.scala 546:32]
  wire  cond_13 = $signed(y_13) < 16'sh0; // @[VCORDIC.scala 549:31]
  wire [15:0] _xterm_T_41 = 16'sh0 - $signed(x_13); // @[VCORDIC.scala 550:33]
  wire [15:0] xterm_13 = cond_13 ? $signed(_xterm_T_41) : $signed(x_13); // @[VCORDIC.scala 550:26]
  wire [15:0] _yterm_T_41 = 16'sh0 - $signed(y_13); // @[VCORDIC.scala 551:33]
  wire [15:0] yterm_13 = cond_13 ? $signed(_yterm_T_41) : $signed(y_13); // @[VCORDIC.scala 551:26]
  wire [2:0] _GEN_24 = yterm_13[15:13]; // @[VCORDIC.scala 554:41]
  wire [15:0] _x_14_T = {{13{_GEN_24[2]}},_GEN_24}; // @[VCORDIC.scala 554:41]
  wire [15:0] x_14 = $signed(x_13) + $signed(_x_14_T); // @[VCORDIC.scala 554:32]
  wire [2:0] _GEN_25 = xterm_13[15:13]; // @[VCORDIC.scala 555:41]
  wire [15:0] _y_14_T = {{13{_GEN_25[2]}},_GEN_25}; // @[VCORDIC.scala 555:41]
  wire [15:0] y_14 = $signed(y_13) - $signed(_y_14_T); // @[VCORDIC.scala 555:32]
  wire [16:0] _z_14_T_1 = {{1{z_13[15]}},z_13}; // @[VCORDIC.scala 556:32]
  wire [15:0] z_14 = _z_14_T_1[15:0]; // @[VCORDIC.scala 556:32]
  wire  cond_14 = $signed(yr_7) < 16'sh0; // @[VCORDIC.scala 538:31]
  wire [15:0] _xterm_T_44 = 16'sh0 - $signed(xr_7); // @[VCORDIC.scala 540:33]
  wire [15:0] xterm_14 = cond_14 ? $signed(_xterm_T_44) : $signed(xr_7); // @[VCORDIC.scala 540:26]
  wire [15:0] _yterm_T_44 = 16'sh0 - $signed(yr_7); // @[VCORDIC.scala 541:33]
  wire [15:0] yterm_14 = cond_14 ? $signed(_yterm_T_44) : $signed(yr_7); // @[VCORDIC.scala 541:26]
  wire [1:0] _GEN_26 = yterm_14[15:14]; // @[VCORDIC.scala 544:41]
  wire [15:0] _x_15_T = {{14{_GEN_26[1]}},_GEN_26}; // @[VCORDIC.scala 544:41]
  wire [15:0] x_15 = $signed(xr_7) + $signed(_x_15_T); // @[VCORDIC.scala 544:32]
  wire [1:0] _GEN_27 = xterm_14[15:14]; // @[VCORDIC.scala 545:41]
  wire [15:0] _y_15_T = {{14{_GEN_27[1]}},_GEN_27}; // @[VCORDIC.scala 545:41]
  wire [15:0] y_15 = $signed(yr_7) - $signed(_y_15_T); // @[VCORDIC.scala 545:32]
  wire [16:0] _z_15_T_1 = {{1{zr_7[15]}},zr_7}; // @[VCORDIC.scala 546:32]
  wire [15:0] z_15 = _z_15_T_1[15:0]; // @[VCORDIC.scala 546:32]
  wire  cond_15 = $signed(y_15) < 16'sh0; // @[VCORDIC.scala 549:31]
  wire [15:0] _xterm_T_47 = 16'sh0 - $signed(x_15); // @[VCORDIC.scala 550:33]
  wire [15:0] xterm_15 = cond_15 ? $signed(_xterm_T_47) : $signed(x_15); // @[VCORDIC.scala 550:26]
  wire [15:0] _yterm_T_47 = 16'sh0 - $signed(y_15); // @[VCORDIC.scala 551:33]
  wire [15:0] yterm_15 = cond_15 ? $signed(_yterm_T_47) : $signed(y_15); // @[VCORDIC.scala 551:26]
  wire  _GEN_28 = yterm_15[15]; // @[VCORDIC.scala 554:41]
  wire [15:0] _x_16_T = {16{_GEN_28}}; // @[VCORDIC.scala 554:41]
  wire [15:0] x_16 = $signed(x_15) + $signed(_x_16_T); // @[VCORDIC.scala 554:32]
  wire  _GEN_29 = xterm_15[15]; // @[VCORDIC.scala 555:41]
  wire [15:0] _y_16_T = {16{_GEN_29}}; // @[VCORDIC.scala 555:41]
  wire [15:0] y_16 = $signed(y_15) - $signed(_y_16_T); // @[VCORDIC.scala 555:32]
  wire [16:0] _z_16_T_1 = {{1{z_15[15]}},z_15}; // @[VCORDIC.scala 556:32]
  wire [15:0] z_16 = _z_16_T_1[15:0]; // @[VCORDIC.scala 556:32]
  FloatToFixed16 tofixedx0 ( // @[VCORDIC.scala 270:27]
    .io_in(tofixedx0_io_in),
    .io_out(tofixedx0_io_out)
  );
  FloatToFixed16 tofixedy0 ( // @[VCORDIC.scala 271:27]
    .io_in(tofixedy0_io_in),
    .io_out(tofixedy0_io_out)
  );
  FloatToFixed16 tofixedz0 ( // @[VCORDIC.scala 272:27]
    .io_in(tofixedz0_io_in),
    .io_out(tofixedz0_io_out)
  );
  FixedToFloat16 tofloatxout ( // @[VCORDIC.scala 567:29]
    .io_in(tofloatxout_io_in),
    .io_out(tofloatxout_io_out)
  );
  FixedToFloat16 tofloatyout ( // @[VCORDIC.scala 568:29]
    .io_in(tofloatyout_io_in),
    .io_out(tofloatyout_io_out)
  );
  FixedToFloat16 tofloatzout ( // @[VCORDIC.scala 569:29]
    .io_in(tofloatzout_io_in),
    .io_out(tofloatzout_io_out)
  );
  assign io_out_z = tofloatzout_io_out; // @[VCORDIC.scala 578:14]
  assign tofixedx0_io_in = 16'h3c00; // @[VCORDIC.scala 274:21]
  assign tofixedy0_io_in = io_in_y0; // @[VCORDIC.scala 275:21]
  assign tofixedz0_io_in = 16'h0; // @[VCORDIC.scala 276:21]
  assign tofloatxout_io_in = xr_8; // @[VCORDIC.scala 572:35]
  assign tofloatyout_io_in = yr_8; // @[VCORDIC.scala 573:35]
  assign tofloatzout_io_in = zr_8; // @[VCORDIC.scala 574:35]
  always @(posedge clock) begin
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_0 <= 16'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_0 <= tofixedx0_io_out; // @[VCORDIC.scala 287:11]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_1 <= 16'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_1 <= x_2; // @[VCORDIC.scala 560:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_2 <= 16'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_2 <= x_4; // @[VCORDIC.scala 560:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_3 <= 16'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_3 <= x_6; // @[VCORDIC.scala 560:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_4 <= 16'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_4 <= x_8; // @[VCORDIC.scala 560:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_5 <= 16'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_5 <= x_10; // @[VCORDIC.scala 560:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_6 <= 16'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_6 <= x_12; // @[VCORDIC.scala 560:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_7 <= 16'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_7 <= x_14; // @[VCORDIC.scala 560:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_8 <= 16'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_8 <= x_16; // @[VCORDIC.scala 560:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_0 <= 16'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_0 <= tofixedy0_io_out; // @[VCORDIC.scala 288:11]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_1 <= 16'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_1 <= y_2; // @[VCORDIC.scala 561:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_2 <= 16'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_2 <= y_4; // @[VCORDIC.scala 561:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_3 <= 16'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_3 <= y_6; // @[VCORDIC.scala 561:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_4 <= 16'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_4 <= y_8; // @[VCORDIC.scala 561:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_5 <= 16'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_5 <= y_10; // @[VCORDIC.scala 561:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_6 <= 16'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_6 <= y_12; // @[VCORDIC.scala 561:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_7 <= 16'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_7 <= y_14; // @[VCORDIC.scala 561:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_8 <= 16'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_8 <= y_16; // @[VCORDIC.scala 561:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_0 <= 16'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_0 <= tofixedz0_io_out; // @[VCORDIC.scala 286:11]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_1 <= 16'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_1 <= z_2; // @[VCORDIC.scala 562:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_2 <= 16'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_2 <= z_4; // @[VCORDIC.scala 562:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_3 <= 16'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_3 <= z_6; // @[VCORDIC.scala 562:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_4 <= 16'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_4 <= z_8; // @[VCORDIC.scala 562:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_5 <= 16'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_5 <= z_10; // @[VCORDIC.scala 562:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_6 <= 16'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_6 <= z_12; // @[VCORDIC.scala 562:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_7 <= 16'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_7 <= z_14; // @[VCORDIC.scala 562:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_8 <= 16'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_8 <= z_16; // @[VCORDIC.scala 562:20]
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
  zr_0 = _RAND_18[15:0];
  _RAND_19 = {1{`RANDOM}};
  zr_1 = _RAND_19[15:0];
  _RAND_20 = {1{`RANDOM}};
  zr_2 = _RAND_20[15:0];
  _RAND_21 = {1{`RANDOM}};
  zr_3 = _RAND_21[15:0];
  _RAND_22 = {1{`RANDOM}};
  zr_4 = _RAND_22[15:0];
  _RAND_23 = {1{`RANDOM}};
  zr_5 = _RAND_23[15:0];
  _RAND_24 = {1{`RANDOM}};
  zr_6 = _RAND_24[15:0];
  _RAND_25 = {1{`RANDOM}};
  zr_7 = _RAND_25[15:0];
  _RAND_26 = {1{`RANDOM}};
  zr_8 = _RAND_26[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

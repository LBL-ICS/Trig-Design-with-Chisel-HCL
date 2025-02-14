module VCORDIC(
  input         clock,
  input         reset,
  input  [63:0] io_in_y0,
  output [63:0] io_out_z
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
`endif // RANDOMIZE_REG_INIT
  wire [63:0] tofixedx0_io_in; // @[VCORDIC.scala 318:27]
  wire [63:0] tofixedx0_io_out; // @[VCORDIC.scala 318:27]
  wire [63:0] tofixedy0_io_in; // @[VCORDIC.scala 319:27]
  wire [63:0] tofixedy0_io_out; // @[VCORDIC.scala 319:27]
  wire [63:0] tofixedz0_io_in; // @[VCORDIC.scala 320:27]
  wire [63:0] tofixedz0_io_out; // @[VCORDIC.scala 320:27]
  wire [63:0] tofloatxout_io_in; // @[VCORDIC.scala 670:29]
  wire [63:0] tofloatxout_io_out; // @[VCORDIC.scala 670:29]
  wire [63:0] tofloatyout_io_in; // @[VCORDIC.scala 671:29]
  wire [63:0] tofloatyout_io_out; // @[VCORDIC.scala 671:29]
  wire [63:0] tofloatzout_io_in; // @[VCORDIC.scala 672:29]
  wire [63:0] tofloatzout_io_out; // @[VCORDIC.scala 672:29]
  reg [63:0] xr_0; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_1; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_2; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_3; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_4; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_5; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_6; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_7; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_8; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_9; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_10; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_11; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_12; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_13; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_14; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_15; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_16; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_17; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_18; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_19; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_20; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_21; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_22; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_23; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_24; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_25; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_26; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_27; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_28; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_29; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_30; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_31; // @[VCORDIC.scala 264:19]
  reg [63:0] xr_32; // @[VCORDIC.scala 264:19]
  reg [63:0] yr_0; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_1; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_2; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_3; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_4; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_5; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_6; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_7; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_8; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_9; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_10; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_11; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_12; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_13; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_14; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_15; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_16; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_17; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_18; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_19; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_20; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_21; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_22; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_23; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_24; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_25; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_26; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_27; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_28; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_29; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_30; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_31; // @[VCORDIC.scala 265:19]
  reg [63:0] yr_32; // @[VCORDIC.scala 265:19]
  reg [63:0] zr_0; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_1; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_2; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_3; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_4; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_5; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_6; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_7; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_8; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_9; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_10; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_11; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_12; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_13; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_14; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_15; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_16; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_17; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_18; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_19; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_20; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_21; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_22; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_23; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_24; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_25; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_26; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_27; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_28; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_29; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_30; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_31; // @[VCORDIC.scala 266:19]
  reg [63:0] zr_32; // @[VCORDIC.scala 266:19]
  wire  cond = $signed(yr_0) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_2 = 64'sh0 - $signed(xr_0); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm = cond ? $signed(_xterm_T_2) : $signed(xr_0); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_2 = 64'sh0 - $signed(yr_0); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm = cond ? $signed(_yterm_T_2) : $signed(yr_0); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_1 = 64'h0 - 64'hc90fdaa22168c00; // @[VCORDIC.scala 645:33]
  wire [63:0] x_1 = $signed(xr_0) + $signed(yterm); // @[VCORDIC.scala 647:32]
  wire [63:0] y_1 = $signed(yr_0) - $signed(xterm); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_1_T = cond ? _zterm_T_1 : 64'hc90fdaa22168c00; // @[VCORDIC.scala 649:40]
  wire [63:0] z_1 = $signed(zr_0) + $signed(_z_1_T); // @[VCORDIC.scala 649:32]
  wire  cond_1 = $signed(y_1) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_5 = 64'sh0 - $signed(x_1); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_1 = cond_1 ? $signed(_xterm_T_5) : $signed(x_1); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_5 = 64'sh0 - $signed(y_1); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_1 = cond_1 ? $signed(_yterm_T_5) : $signed(y_1); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_3 = 64'h0 - 64'h76b19c1586ed3c0; // @[VCORDIC.scala 655:33]
  wire [62:0] _GEN_0 = yterm_1[63:1]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_2_T = {{1{_GEN_0[62]}},_GEN_0}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_2 = $signed(x_1) + $signed(_x_2_T); // @[VCORDIC.scala 657:32]
  wire [62:0] _GEN_1 = xterm_1[63:1]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_2_T = {{1{_GEN_1[62]}},_GEN_1}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_2 = $signed(y_1) - $signed(_y_2_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_2_T = cond_1 ? _zterm_T_3 : 64'h76b19c1586ed3c0; // @[VCORDIC.scala 659:40]
  wire [63:0] z_2 = $signed(z_1) + $signed(_z_2_T); // @[VCORDIC.scala 659:32]
  wire  cond_2 = $signed(yr_1) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_8 = 64'sh0 - $signed(xr_1); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_2 = cond_2 ? $signed(_xterm_T_8) : $signed(xr_1); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_8 = 64'sh0 - $signed(yr_1); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_2 = cond_2 ? $signed(_yterm_T_8) : $signed(yr_1); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_5 = 64'h0 - 64'h3eb6ebf25901ba0; // @[VCORDIC.scala 645:33]
  wire [61:0] _GEN_2 = yterm_2[63:2]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_3_T = {{2{_GEN_2[61]}},_GEN_2}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_3 = $signed(xr_1) + $signed(_x_3_T); // @[VCORDIC.scala 647:32]
  wire [61:0] _GEN_3 = xterm_2[63:2]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_3_T = {{2{_GEN_3[61]}},_GEN_3}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_3 = $signed(yr_1) - $signed(_y_3_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_3_T = cond_2 ? _zterm_T_5 : 64'h3eb6ebf25901ba0; // @[VCORDIC.scala 649:40]
  wire [63:0] z_3 = $signed(zr_1) + $signed(_z_3_T); // @[VCORDIC.scala 649:32]
  wire  cond_3 = $signed(y_3) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_11 = 64'sh0 - $signed(x_3); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_3 = cond_3 ? $signed(_xterm_T_11) : $signed(x_3); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_11 = 64'sh0 - $signed(y_3); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_3 = cond_3 ? $signed(_yterm_T_11) : $signed(y_3); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_7 = 64'h0 - 64'h1fd5ba9aac2f6e0; // @[VCORDIC.scala 655:33]
  wire [60:0] _GEN_4 = yterm_3[63:3]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_4_T = {{3{_GEN_4[60]}},_GEN_4}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_4 = $signed(x_3) + $signed(_x_4_T); // @[VCORDIC.scala 657:32]
  wire [60:0] _GEN_5 = xterm_3[63:3]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_4_T = {{3{_GEN_5[60]}},_GEN_5}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_4 = $signed(y_3) - $signed(_y_4_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_4_T = cond_3 ? _zterm_T_7 : 64'h1fd5ba9aac2f6e0; // @[VCORDIC.scala 659:40]
  wire [63:0] z_4 = $signed(z_3) + $signed(_z_4_T); // @[VCORDIC.scala 659:32]
  wire  cond_4 = $signed(yr_2) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_14 = 64'sh0 - $signed(xr_2); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_4 = cond_4 ? $signed(_xterm_T_14) : $signed(xr_2); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_14 = 64'sh0 - $signed(yr_2); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_4 = cond_4 ? $signed(_yterm_T_14) : $signed(yr_2); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_9 = 64'h0 - 64'hffaaddb967ef50; // @[VCORDIC.scala 645:33]
  wire [59:0] _GEN_6 = yterm_4[63:4]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_5_T = {{4{_GEN_6[59]}},_GEN_6}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_5 = $signed(xr_2) + $signed(_x_5_T); // @[VCORDIC.scala 647:32]
  wire [59:0] _GEN_7 = xterm_4[63:4]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_5_T = {{4{_GEN_7[59]}},_GEN_7}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_5 = $signed(yr_2) - $signed(_y_5_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_5_T = cond_4 ? _zterm_T_9 : 64'hffaaddb967ef50; // @[VCORDIC.scala 649:40]
  wire [63:0] z_5 = $signed(zr_2) + $signed(_z_5_T); // @[VCORDIC.scala 649:32]
  wire  cond_5 = $signed(y_5) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_17 = 64'sh0 - $signed(x_5); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_5 = cond_5 ? $signed(_xterm_T_17) : $signed(x_5); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_17 = 64'sh0 - $signed(y_5); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_5 = cond_5 ? $signed(_yterm_T_17) : $signed(y_5); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_11 = 64'h0 - 64'h7ff556eea5d894; // @[VCORDIC.scala 655:33]
  wire [58:0] _GEN_8 = yterm_5[63:5]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_6_T = {{5{_GEN_8[58]}},_GEN_8}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_6 = $signed(x_5) + $signed(_x_6_T); // @[VCORDIC.scala 657:32]
  wire [58:0] _GEN_9 = xterm_5[63:5]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_6_T = {{5{_GEN_9[58]}},_GEN_9}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_6 = $signed(y_5) - $signed(_y_6_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_6_T = cond_5 ? _zterm_T_11 : 64'h7ff556eea5d894; // @[VCORDIC.scala 659:40]
  wire [63:0] z_6 = $signed(z_5) + $signed(_z_6_T); // @[VCORDIC.scala 659:32]
  wire  cond_6 = $signed(yr_3) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_20 = 64'sh0 - $signed(xr_3); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_6 = cond_6 ? $signed(_xterm_T_20) : $signed(xr_3); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_20 = 64'sh0 - $signed(yr_3); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_6 = cond_6 ? $signed(_yterm_T_20) : $signed(yr_3); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_13 = 64'h0 - 64'h3ffeaab776e536; // @[VCORDIC.scala 645:33]
  wire [57:0] _GEN_10 = yterm_6[63:6]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_7_T = {{6{_GEN_10[57]}},_GEN_10}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_7 = $signed(xr_3) + $signed(_x_7_T); // @[VCORDIC.scala 647:32]
  wire [57:0] _GEN_11 = xterm_6[63:6]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_7_T = {{6{_GEN_11[57]}},_GEN_11}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_7 = $signed(yr_3) - $signed(_y_7_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_7_T = cond_6 ? _zterm_T_13 : 64'h3ffeaab776e536; // @[VCORDIC.scala 649:40]
  wire [63:0] z_7 = $signed(zr_3) + $signed(_z_7_T); // @[VCORDIC.scala 649:32]
  wire  cond_7 = $signed(y_7) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_23 = 64'sh0 - $signed(x_7); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_7 = cond_7 ? $signed(_xterm_T_23) : $signed(x_7); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_23 = 64'sh0 - $signed(y_7); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_7 = cond_7 ? $signed(_yterm_T_23) : $signed(y_7); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_15 = 64'h0 - 64'h1fffd555bbba97; // @[VCORDIC.scala 655:33]
  wire [56:0] _GEN_12 = yterm_7[63:7]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_8_T = {{7{_GEN_12[56]}},_GEN_12}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_8 = $signed(x_7) + $signed(_x_8_T); // @[VCORDIC.scala 657:32]
  wire [56:0] _GEN_13 = xterm_7[63:7]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_8_T = {{7{_GEN_13[56]}},_GEN_13}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_8 = $signed(y_7) - $signed(_y_8_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_8_T = cond_7 ? _zterm_T_15 : 64'h1fffd555bbba97; // @[VCORDIC.scala 659:40]
  wire [63:0] z_8 = $signed(z_7) + $signed(_z_8_T); // @[VCORDIC.scala 659:32]
  wire  cond_8 = $signed(yr_4) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_26 = 64'sh0 - $signed(xr_4); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_8 = cond_8 ? $signed(_xterm_T_26) : $signed(xr_4); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_26 = 64'sh0 - $signed(yr_4); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_8 = cond_8 ? $signed(_yterm_T_26) : $signed(yr_4); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_17 = 64'h0 - 64'hffffaaaaddddb; // @[VCORDIC.scala 645:33]
  wire [55:0] _GEN_14 = yterm_8[63:8]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_9_T = {{8{_GEN_14[55]}},_GEN_14}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_9 = $signed(xr_4) + $signed(_x_9_T); // @[VCORDIC.scala 647:32]
  wire [55:0] _GEN_15 = xterm_8[63:8]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_9_T = {{8{_GEN_15[55]}},_GEN_15}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_9 = $signed(yr_4) - $signed(_y_9_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_9_T = cond_8 ? _zterm_T_17 : 64'hffffaaaaddddb; // @[VCORDIC.scala 649:40]
  wire [63:0] z_9 = $signed(zr_4) + $signed(_z_9_T); // @[VCORDIC.scala 649:32]
  wire  cond_9 = $signed(y_9) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_29 = 64'sh0 - $signed(x_9); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_9 = cond_9 ? $signed(_xterm_T_29) : $signed(x_9); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_29 = 64'sh0 - $signed(y_9); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_9 = cond_9 ? $signed(_yterm_T_29) : $signed(y_9); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_19 = 64'h0 - 64'h7ffff55556eef; // @[VCORDIC.scala 655:33]
  wire [54:0] _GEN_16 = yterm_9[63:9]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_10_T = {{9{_GEN_16[54]}},_GEN_16}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_10 = $signed(x_9) + $signed(_x_10_T); // @[VCORDIC.scala 657:32]
  wire [54:0] _GEN_17 = xterm_9[63:9]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_10_T = {{9{_GEN_17[54]}},_GEN_17}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_10 = $signed(y_9) - $signed(_y_10_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_10_T = cond_9 ? _zterm_T_19 : 64'h7ffff55556eef; // @[VCORDIC.scala 659:40]
  wire [63:0] z_10 = $signed(z_9) + $signed(_z_10_T); // @[VCORDIC.scala 659:32]
  wire  cond_10 = $signed(yr_5) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_32 = 64'sh0 - $signed(xr_5); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_10 = cond_10 ? $signed(_xterm_T_32) : $signed(xr_5); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_32 = 64'sh0 - $signed(yr_5); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_10 = cond_10 ? $signed(_yterm_T_32) : $signed(yr_5); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_21 = 64'h0 - 64'h3ffffeaaaab77; // @[VCORDIC.scala 645:33]
  wire [53:0] _GEN_18 = yterm_10[63:10]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_11_T = {{10{_GEN_18[53]}},_GEN_18}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_11 = $signed(xr_5) + $signed(_x_11_T); // @[VCORDIC.scala 647:32]
  wire [53:0] _GEN_19 = xterm_10[63:10]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_11_T = {{10{_GEN_19[53]}},_GEN_19}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_11 = $signed(yr_5) - $signed(_y_11_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_11_T = cond_10 ? _zterm_T_21 : 64'h3ffffeaaaab77; // @[VCORDIC.scala 649:40]
  wire [63:0] z_11 = $signed(zr_5) + $signed(_z_11_T); // @[VCORDIC.scala 649:32]
  wire  cond_11 = $signed(y_11) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_35 = 64'sh0 - $signed(x_11); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_11 = cond_11 ? $signed(_xterm_T_35) : $signed(x_11); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_35 = 64'sh0 - $signed(y_11); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_11 = cond_11 ? $signed(_yterm_T_35) : $signed(y_11); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_23 = 64'h0 - 64'h1fffffd55555b; // @[VCORDIC.scala 655:33]
  wire [52:0] _GEN_20 = yterm_11[63:11]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_12_T = {{11{_GEN_20[52]}},_GEN_20}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_12 = $signed(x_11) + $signed(_x_12_T); // @[VCORDIC.scala 657:32]
  wire [52:0] _GEN_21 = xterm_11[63:11]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_12_T = {{11{_GEN_21[52]}},_GEN_21}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_12 = $signed(y_11) - $signed(_y_12_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_12_T = cond_11 ? _zterm_T_23 : 64'h1fffffd55555b; // @[VCORDIC.scala 659:40]
  wire [63:0] z_12 = $signed(z_11) + $signed(_z_12_T); // @[VCORDIC.scala 659:32]
  wire  cond_12 = $signed(yr_6) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_38 = 64'sh0 - $signed(xr_6); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_12 = cond_12 ? $signed(_xterm_T_38) : $signed(xr_6); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_38 = 64'sh0 - $signed(yr_6); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_12 = cond_12 ? $signed(_yterm_T_38) : $signed(yr_6); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_25 = 64'h0 - 64'hffffffaaaaaa; // @[VCORDIC.scala 645:33]
  wire [51:0] _GEN_22 = yterm_12[63:12]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_13_T = {{12{_GEN_22[51]}},_GEN_22}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_13 = $signed(xr_6) + $signed(_x_13_T); // @[VCORDIC.scala 647:32]
  wire [51:0] _GEN_23 = xterm_12[63:12]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_13_T = {{12{_GEN_23[51]}},_GEN_23}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_13 = $signed(yr_6) - $signed(_y_13_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_13_T = cond_12 ? _zterm_T_25 : 64'hffffffaaaaaa; // @[VCORDIC.scala 649:40]
  wire [63:0] z_13 = $signed(zr_6) + $signed(_z_13_T); // @[VCORDIC.scala 649:32]
  wire  cond_13 = $signed(y_13) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_41 = 64'sh0 - $signed(x_13); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_13 = cond_13 ? $signed(_xterm_T_41) : $signed(x_13); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_41 = 64'sh0 - $signed(y_13); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_13 = cond_13 ? $signed(_yterm_T_41) : $signed(y_13); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_27 = 64'h0 - 64'h7ffffff55555; // @[VCORDIC.scala 655:33]
  wire [50:0] _GEN_24 = yterm_13[63:13]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_14_T = {{13{_GEN_24[50]}},_GEN_24}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_14 = $signed(x_13) + $signed(_x_14_T); // @[VCORDIC.scala 657:32]
  wire [50:0] _GEN_25 = xterm_13[63:13]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_14_T = {{13{_GEN_25[50]}},_GEN_25}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_14 = $signed(y_13) - $signed(_y_14_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_14_T = cond_13 ? _zterm_T_27 : 64'h7ffffff55555; // @[VCORDIC.scala 659:40]
  wire [63:0] z_14 = $signed(z_13) + $signed(_z_14_T); // @[VCORDIC.scala 659:32]
  wire  cond_14 = $signed(yr_7) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_44 = 64'sh0 - $signed(xr_7); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_14 = cond_14 ? $signed(_xterm_T_44) : $signed(xr_7); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_44 = 64'sh0 - $signed(yr_7); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_14 = cond_14 ? $signed(_yterm_T_44) : $signed(yr_7); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_29 = 64'h0 - 64'h3ffffffeaaaa; // @[VCORDIC.scala 645:33]
  wire [49:0] _GEN_26 = yterm_14[63:14]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_15_T = {{14{_GEN_26[49]}},_GEN_26}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_15 = $signed(xr_7) + $signed(_x_15_T); // @[VCORDIC.scala 647:32]
  wire [49:0] _GEN_27 = xterm_14[63:14]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_15_T = {{14{_GEN_27[49]}},_GEN_27}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_15 = $signed(yr_7) - $signed(_y_15_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_15_T = cond_14 ? _zterm_T_29 : 64'h3ffffffeaaaa; // @[VCORDIC.scala 649:40]
  wire [63:0] z_15 = $signed(zr_7) + $signed(_z_15_T); // @[VCORDIC.scala 649:32]
  wire  cond_15 = $signed(y_15) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_47 = 64'sh0 - $signed(x_15); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_15 = cond_15 ? $signed(_xterm_T_47) : $signed(x_15); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_47 = 64'sh0 - $signed(y_15); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_15 = cond_15 ? $signed(_yterm_T_47) : $signed(y_15); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_31 = 64'h0 - 64'h1fffffffd555; // @[VCORDIC.scala 655:33]
  wire [48:0] _GEN_28 = yterm_15[63:15]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_16_T = {{15{_GEN_28[48]}},_GEN_28}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_16 = $signed(x_15) + $signed(_x_16_T); // @[VCORDIC.scala 657:32]
  wire [48:0] _GEN_29 = xterm_15[63:15]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_16_T = {{15{_GEN_29[48]}},_GEN_29}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_16 = $signed(y_15) - $signed(_y_16_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_16_T = cond_15 ? _zterm_T_31 : 64'h1fffffffd555; // @[VCORDIC.scala 659:40]
  wire [63:0] z_16 = $signed(z_15) + $signed(_z_16_T); // @[VCORDIC.scala 659:32]
  wire  cond_16 = $signed(yr_8) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_50 = 64'sh0 - $signed(xr_8); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_16 = cond_16 ? $signed(_xterm_T_50) : $signed(xr_8); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_50 = 64'sh0 - $signed(yr_8); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_16 = cond_16 ? $signed(_yterm_T_50) : $signed(yr_8); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_33 = 64'h0 - 64'hffffffffaaa; // @[VCORDIC.scala 645:33]
  wire [47:0] _GEN_30 = yterm_16[63:16]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_17_T = {{16{_GEN_30[47]}},_GEN_30}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_17 = $signed(xr_8) + $signed(_x_17_T); // @[VCORDIC.scala 647:32]
  wire [47:0] _GEN_31 = xterm_16[63:16]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_17_T = {{16{_GEN_31[47]}},_GEN_31}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_17 = $signed(yr_8) - $signed(_y_17_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_17_T = cond_16 ? _zterm_T_33 : 64'hffffffffaaa; // @[VCORDIC.scala 649:40]
  wire [63:0] z_17 = $signed(zr_8) + $signed(_z_17_T); // @[VCORDIC.scala 649:32]
  wire  cond_17 = $signed(y_17) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_53 = 64'sh0 - $signed(x_17); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_17 = cond_17 ? $signed(_xterm_T_53) : $signed(x_17); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_53 = 64'sh0 - $signed(y_17); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_17 = cond_17 ? $signed(_yterm_T_53) : $signed(y_17); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_35 = 64'h0 - 64'h7ffffffff55; // @[VCORDIC.scala 655:33]
  wire [46:0] _GEN_32 = yterm_17[63:17]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_18_T = {{17{_GEN_32[46]}},_GEN_32}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_18 = $signed(x_17) + $signed(_x_18_T); // @[VCORDIC.scala 657:32]
  wire [46:0] _GEN_33 = xterm_17[63:17]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_18_T = {{17{_GEN_33[46]}},_GEN_33}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_18 = $signed(y_17) - $signed(_y_18_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_18_T = cond_17 ? _zterm_T_35 : 64'h7ffffffff55; // @[VCORDIC.scala 659:40]
  wire [63:0] z_18 = $signed(z_17) + $signed(_z_18_T); // @[VCORDIC.scala 659:32]
  wire  cond_18 = $signed(yr_9) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_56 = 64'sh0 - $signed(xr_9); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_18 = cond_18 ? $signed(_xterm_T_56) : $signed(xr_9); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_56 = 64'sh0 - $signed(yr_9); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_18 = cond_18 ? $signed(_yterm_T_56) : $signed(yr_9); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_37 = 64'h0 - 64'h3ffffffffea; // @[VCORDIC.scala 645:33]
  wire [45:0] _GEN_34 = yterm_18[63:18]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_19_T = {{18{_GEN_34[45]}},_GEN_34}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_19 = $signed(xr_9) + $signed(_x_19_T); // @[VCORDIC.scala 647:32]
  wire [45:0] _GEN_35 = xterm_18[63:18]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_19_T = {{18{_GEN_35[45]}},_GEN_35}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_19 = $signed(yr_9) - $signed(_y_19_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_19_T = cond_18 ? _zterm_T_37 : 64'h3ffffffffea; // @[VCORDIC.scala 649:40]
  wire [63:0] z_19 = $signed(zr_9) + $signed(_z_19_T); // @[VCORDIC.scala 649:32]
  wire  cond_19 = $signed(y_19) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_59 = 64'sh0 - $signed(x_19); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_19 = cond_19 ? $signed(_xterm_T_59) : $signed(x_19); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_59 = 64'sh0 - $signed(y_19); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_19 = cond_19 ? $signed(_yterm_T_59) : $signed(y_19); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_39 = 64'h0 - 64'h1fffffffffd; // @[VCORDIC.scala 655:33]
  wire [44:0] _GEN_36 = yterm_19[63:19]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_20_T = {{19{_GEN_36[44]}},_GEN_36}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_20 = $signed(x_19) + $signed(_x_20_T); // @[VCORDIC.scala 657:32]
  wire [44:0] _GEN_37 = xterm_19[63:19]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_20_T = {{19{_GEN_37[44]}},_GEN_37}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_20 = $signed(y_19) - $signed(_y_20_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_20_T = cond_19 ? _zterm_T_39 : 64'h1fffffffffd; // @[VCORDIC.scala 659:40]
  wire [63:0] z_20 = $signed(z_19) + $signed(_z_20_T); // @[VCORDIC.scala 659:32]
  wire  cond_20 = $signed(yr_10) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_62 = 64'sh0 - $signed(xr_10); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_20 = cond_20 ? $signed(_xterm_T_62) : $signed(xr_10); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_62 = 64'sh0 - $signed(yr_10); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_20 = cond_20 ? $signed(_yterm_T_62) : $signed(yr_10); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_41 = 64'h0 - 64'hffffffffff; // @[VCORDIC.scala 645:33]
  wire [43:0] _GEN_38 = yterm_20[63:20]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_21_T = {{20{_GEN_38[43]}},_GEN_38}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_21 = $signed(xr_10) + $signed(_x_21_T); // @[VCORDIC.scala 647:32]
  wire [43:0] _GEN_39 = xterm_20[63:20]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_21_T = {{20{_GEN_39[43]}},_GEN_39}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_21 = $signed(yr_10) - $signed(_y_21_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_21_T = cond_20 ? _zterm_T_41 : 64'hffffffffff; // @[VCORDIC.scala 649:40]
  wire [63:0] z_21 = $signed(zr_10) + $signed(_z_21_T); // @[VCORDIC.scala 649:32]
  wire  cond_21 = $signed(y_21) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_65 = 64'sh0 - $signed(x_21); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_21 = cond_21 ? $signed(_xterm_T_65) : $signed(x_21); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_65 = 64'sh0 - $signed(y_21); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_21 = cond_21 ? $signed(_yterm_T_65) : $signed(y_21); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_43 = 64'h0 - 64'h7fffffffff; // @[VCORDIC.scala 655:33]
  wire [42:0] _GEN_40 = yterm_21[63:21]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_22_T = {{21{_GEN_40[42]}},_GEN_40}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_22 = $signed(x_21) + $signed(_x_22_T); // @[VCORDIC.scala 657:32]
  wire [42:0] _GEN_41 = xterm_21[63:21]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_22_T = {{21{_GEN_41[42]}},_GEN_41}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_22 = $signed(y_21) - $signed(_y_22_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_22_T = cond_21 ? _zterm_T_43 : 64'h7fffffffff; // @[VCORDIC.scala 659:40]
  wire [63:0] z_22 = $signed(z_21) + $signed(_z_22_T); // @[VCORDIC.scala 659:32]
  wire  cond_22 = $signed(yr_11) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_68 = 64'sh0 - $signed(xr_11); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_22 = cond_22 ? $signed(_xterm_T_68) : $signed(xr_11); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_68 = 64'sh0 - $signed(yr_11); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_22 = cond_22 ? $signed(_yterm_T_68) : $signed(yr_11); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_45 = 64'h0 - 64'h3fffffffff; // @[VCORDIC.scala 645:33]
  wire [41:0] _GEN_42 = yterm_22[63:22]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_23_T = {{22{_GEN_42[41]}},_GEN_42}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_23 = $signed(xr_11) + $signed(_x_23_T); // @[VCORDIC.scala 647:32]
  wire [41:0] _GEN_43 = xterm_22[63:22]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_23_T = {{22{_GEN_43[41]}},_GEN_43}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_23 = $signed(yr_11) - $signed(_y_23_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_23_T = cond_22 ? _zterm_T_45 : 64'h3fffffffff; // @[VCORDIC.scala 649:40]
  wire [63:0] z_23 = $signed(zr_11) + $signed(_z_23_T); // @[VCORDIC.scala 649:32]
  wire  cond_23 = $signed(y_23) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_71 = 64'sh0 - $signed(x_23); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_23 = cond_23 ? $signed(_xterm_T_71) : $signed(x_23); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_71 = 64'sh0 - $signed(y_23); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_23 = cond_23 ? $signed(_yterm_T_71) : $signed(y_23); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_47 = 64'h0 - 64'h1fffffffff; // @[VCORDIC.scala 655:33]
  wire [40:0] _GEN_44 = yterm_23[63:23]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_24_T = {{23{_GEN_44[40]}},_GEN_44}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_24 = $signed(x_23) + $signed(_x_24_T); // @[VCORDIC.scala 657:32]
  wire [40:0] _GEN_45 = xterm_23[63:23]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_24_T = {{23{_GEN_45[40]}},_GEN_45}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_24 = $signed(y_23) - $signed(_y_24_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_24_T = cond_23 ? _zterm_T_47 : 64'h1fffffffff; // @[VCORDIC.scala 659:40]
  wire [63:0] z_24 = $signed(z_23) + $signed(_z_24_T); // @[VCORDIC.scala 659:32]
  wire  cond_24 = $signed(yr_12) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_74 = 64'sh0 - $signed(xr_12); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_24 = cond_24 ? $signed(_xterm_T_74) : $signed(xr_12); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_74 = 64'sh0 - $signed(yr_12); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_24 = cond_24 ? $signed(_yterm_T_74) : $signed(yr_12); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_49 = 64'h0 - 64'hfffffffff; // @[VCORDIC.scala 645:33]
  wire [39:0] _GEN_46 = yterm_24[63:24]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_25_T = {{24{_GEN_46[39]}},_GEN_46}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_25 = $signed(xr_12) + $signed(_x_25_T); // @[VCORDIC.scala 647:32]
  wire [39:0] _GEN_47 = xterm_24[63:24]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_25_T = {{24{_GEN_47[39]}},_GEN_47}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_25 = $signed(yr_12) - $signed(_y_25_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_25_T = cond_24 ? _zterm_T_49 : 64'hfffffffff; // @[VCORDIC.scala 649:40]
  wire [63:0] z_25 = $signed(zr_12) + $signed(_z_25_T); // @[VCORDIC.scala 649:32]
  wire  cond_25 = $signed(y_25) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_77 = 64'sh0 - $signed(x_25); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_25 = cond_25 ? $signed(_xterm_T_77) : $signed(x_25); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_77 = 64'sh0 - $signed(y_25); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_25 = cond_25 ? $signed(_yterm_T_77) : $signed(y_25); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_51 = 64'h0 - 64'h7ffffffff; // @[VCORDIC.scala 655:33]
  wire [38:0] _GEN_48 = yterm_25[63:25]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_26_T = {{25{_GEN_48[38]}},_GEN_48}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_26 = $signed(x_25) + $signed(_x_26_T); // @[VCORDIC.scala 657:32]
  wire [38:0] _GEN_49 = xterm_25[63:25]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_26_T = {{25{_GEN_49[38]}},_GEN_49}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_26 = $signed(y_25) - $signed(_y_26_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_26_T = cond_25 ? _zterm_T_51 : 64'h7ffffffff; // @[VCORDIC.scala 659:40]
  wire [63:0] z_26 = $signed(z_25) + $signed(_z_26_T); // @[VCORDIC.scala 659:32]
  wire  cond_26 = $signed(yr_13) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_80 = 64'sh0 - $signed(xr_13); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_26 = cond_26 ? $signed(_xterm_T_80) : $signed(xr_13); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_80 = 64'sh0 - $signed(yr_13); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_26 = cond_26 ? $signed(_yterm_T_80) : $signed(yr_13); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_53 = 64'h0 - 64'h3ffffffff; // @[VCORDIC.scala 645:33]
  wire [37:0] _GEN_50 = yterm_26[63:26]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_27_T = {{26{_GEN_50[37]}},_GEN_50}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_27 = $signed(xr_13) + $signed(_x_27_T); // @[VCORDIC.scala 647:32]
  wire [37:0] _GEN_51 = xterm_26[63:26]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_27_T = {{26{_GEN_51[37]}},_GEN_51}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_27 = $signed(yr_13) - $signed(_y_27_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_27_T = cond_26 ? _zterm_T_53 : 64'h3ffffffff; // @[VCORDIC.scala 649:40]
  wire [63:0] z_27 = $signed(zr_13) + $signed(_z_27_T); // @[VCORDIC.scala 649:32]
  wire  cond_27 = $signed(y_27) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_83 = 64'sh0 - $signed(x_27); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_27 = cond_27 ? $signed(_xterm_T_83) : $signed(x_27); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_83 = 64'sh0 - $signed(y_27); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_27 = cond_27 ? $signed(_yterm_T_83) : $signed(y_27); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_55 = 64'h0 - 64'h200000000; // @[VCORDIC.scala 655:33]
  wire [36:0] _GEN_52 = yterm_27[63:27]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_28_T = {{27{_GEN_52[36]}},_GEN_52}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_28 = $signed(x_27) + $signed(_x_28_T); // @[VCORDIC.scala 657:32]
  wire [36:0] _GEN_53 = xterm_27[63:27]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_28_T = {{27{_GEN_53[36]}},_GEN_53}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_28 = $signed(y_27) - $signed(_y_28_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_28_T = cond_27 ? _zterm_T_55 : 64'h200000000; // @[VCORDIC.scala 659:40]
  wire [63:0] z_28 = $signed(z_27) + $signed(_z_28_T); // @[VCORDIC.scala 659:32]
  wire  cond_28 = $signed(yr_14) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_86 = 64'sh0 - $signed(xr_14); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_28 = cond_28 ? $signed(_xterm_T_86) : $signed(xr_14); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_86 = 64'sh0 - $signed(yr_14); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_28 = cond_28 ? $signed(_yterm_T_86) : $signed(yr_14); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_57 = 64'h0 - 64'h100000000; // @[VCORDIC.scala 645:33]
  wire [35:0] _GEN_54 = yterm_28[63:28]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_29_T = {{28{_GEN_54[35]}},_GEN_54}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_29 = $signed(xr_14) + $signed(_x_29_T); // @[VCORDIC.scala 647:32]
  wire [35:0] _GEN_55 = xterm_28[63:28]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_29_T = {{28{_GEN_55[35]}},_GEN_55}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_29 = $signed(yr_14) - $signed(_y_29_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_29_T = cond_28 ? _zterm_T_57 : 64'h100000000; // @[VCORDIC.scala 649:40]
  wire [63:0] z_29 = $signed(zr_14) + $signed(_z_29_T); // @[VCORDIC.scala 649:32]
  wire  cond_29 = $signed(y_29) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_89 = 64'sh0 - $signed(x_29); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_29 = cond_29 ? $signed(_xterm_T_89) : $signed(x_29); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_89 = 64'sh0 - $signed(y_29); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_29 = cond_29 ? $signed(_yterm_T_89) : $signed(y_29); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_59 = 64'h0 - 64'h80000000; // @[VCORDIC.scala 655:33]
  wire [34:0] _GEN_56 = yterm_29[63:29]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_30_T = {{29{_GEN_56[34]}},_GEN_56}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_30 = $signed(x_29) + $signed(_x_30_T); // @[VCORDIC.scala 657:32]
  wire [34:0] _GEN_57 = xterm_29[63:29]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_30_T = {{29{_GEN_57[34]}},_GEN_57}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_30 = $signed(y_29) - $signed(_y_30_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_30_T = cond_29 ? _zterm_T_59 : 64'h80000000; // @[VCORDIC.scala 659:40]
  wire [63:0] z_30 = $signed(z_29) + $signed(_z_30_T); // @[VCORDIC.scala 659:32]
  wire  cond_30 = $signed(yr_15) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_92 = 64'sh0 - $signed(xr_15); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_30 = cond_30 ? $signed(_xterm_T_92) : $signed(xr_15); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_92 = 64'sh0 - $signed(yr_15); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_30 = cond_30 ? $signed(_yterm_T_92) : $signed(yr_15); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_61 = 64'h0 - 64'h40000000; // @[VCORDIC.scala 645:33]
  wire [33:0] _GEN_58 = yterm_30[63:30]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_31_T = {{30{_GEN_58[33]}},_GEN_58}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_31 = $signed(xr_15) + $signed(_x_31_T); // @[VCORDIC.scala 647:32]
  wire [33:0] _GEN_59 = xterm_30[63:30]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_31_T = {{30{_GEN_59[33]}},_GEN_59}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_31 = $signed(yr_15) - $signed(_y_31_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_31_T = cond_30 ? _zterm_T_61 : 64'h40000000; // @[VCORDIC.scala 649:40]
  wire [63:0] z_31 = $signed(zr_15) + $signed(_z_31_T); // @[VCORDIC.scala 649:32]
  wire  cond_31 = $signed(y_31) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_95 = 64'sh0 - $signed(x_31); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_31 = cond_31 ? $signed(_xterm_T_95) : $signed(x_31); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_95 = 64'sh0 - $signed(y_31); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_31 = cond_31 ? $signed(_yterm_T_95) : $signed(y_31); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_63 = 64'h0 - 64'h20000000; // @[VCORDIC.scala 655:33]
  wire [32:0] _GEN_60 = yterm_31[63:31]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_32_T = {{31{_GEN_60[32]}},_GEN_60}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_32 = $signed(x_31) + $signed(_x_32_T); // @[VCORDIC.scala 657:32]
  wire [32:0] _GEN_61 = xterm_31[63:31]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_32_T = {{31{_GEN_61[32]}},_GEN_61}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_32 = $signed(y_31) - $signed(_y_32_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_32_T = cond_31 ? _zterm_T_63 : 64'h20000000; // @[VCORDIC.scala 659:40]
  wire [63:0] z_32 = $signed(z_31) + $signed(_z_32_T); // @[VCORDIC.scala 659:32]
  wire  cond_32 = $signed(yr_16) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_98 = 64'sh0 - $signed(xr_16); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_32 = cond_32 ? $signed(_xterm_T_98) : $signed(xr_16); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_98 = 64'sh0 - $signed(yr_16); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_32 = cond_32 ? $signed(_yterm_T_98) : $signed(yr_16); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_65 = 64'h0 - 64'h10000000; // @[VCORDIC.scala 645:33]
  wire [31:0] _GEN_62 = yterm_32[63:32]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_33_T = {{32{_GEN_62[31]}},_GEN_62}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_33 = $signed(xr_16) + $signed(_x_33_T); // @[VCORDIC.scala 647:32]
  wire [31:0] _GEN_63 = xterm_32[63:32]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_33_T = {{32{_GEN_63[31]}},_GEN_63}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_33 = $signed(yr_16) - $signed(_y_33_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_33_T = cond_32 ? _zterm_T_65 : 64'h10000000; // @[VCORDIC.scala 649:40]
  wire [63:0] z_33 = $signed(zr_16) + $signed(_z_33_T); // @[VCORDIC.scala 649:32]
  wire  cond_33 = $signed(y_33) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_101 = 64'sh0 - $signed(x_33); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_33 = cond_33 ? $signed(_xterm_T_101) : $signed(x_33); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_101 = 64'sh0 - $signed(y_33); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_33 = cond_33 ? $signed(_yterm_T_101) : $signed(y_33); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_67 = 64'h0 - 64'h8000000; // @[VCORDIC.scala 655:33]
  wire [30:0] _GEN_64 = yterm_33[63:33]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_34_T = {{33{_GEN_64[30]}},_GEN_64}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_34 = $signed(x_33) + $signed(_x_34_T); // @[VCORDIC.scala 657:32]
  wire [30:0] _GEN_65 = xterm_33[63:33]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_34_T = {{33{_GEN_65[30]}},_GEN_65}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_34 = $signed(y_33) - $signed(_y_34_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_34_T = cond_33 ? _zterm_T_67 : 64'h8000000; // @[VCORDIC.scala 659:40]
  wire [63:0] z_34 = $signed(z_33) + $signed(_z_34_T); // @[VCORDIC.scala 659:32]
  wire  cond_34 = $signed(yr_17) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_104 = 64'sh0 - $signed(xr_17); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_34 = cond_34 ? $signed(_xterm_T_104) : $signed(xr_17); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_104 = 64'sh0 - $signed(yr_17); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_34 = cond_34 ? $signed(_yterm_T_104) : $signed(yr_17); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_69 = 64'h0 - 64'h4000000; // @[VCORDIC.scala 645:33]
  wire [29:0] _GEN_66 = yterm_34[63:34]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_35_T = {{34{_GEN_66[29]}},_GEN_66}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_35 = $signed(xr_17) + $signed(_x_35_T); // @[VCORDIC.scala 647:32]
  wire [29:0] _GEN_67 = xterm_34[63:34]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_35_T = {{34{_GEN_67[29]}},_GEN_67}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_35 = $signed(yr_17) - $signed(_y_35_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_35_T = cond_34 ? _zterm_T_69 : 64'h4000000; // @[VCORDIC.scala 649:40]
  wire [63:0] z_35 = $signed(zr_17) + $signed(_z_35_T); // @[VCORDIC.scala 649:32]
  wire  cond_35 = $signed(y_35) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_107 = 64'sh0 - $signed(x_35); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_35 = cond_35 ? $signed(_xterm_T_107) : $signed(x_35); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_107 = 64'sh0 - $signed(y_35); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_35 = cond_35 ? $signed(_yterm_T_107) : $signed(y_35); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_71 = 64'h0 - 64'h2000000; // @[VCORDIC.scala 655:33]
  wire [28:0] _GEN_68 = yterm_35[63:35]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_36_T = {{35{_GEN_68[28]}},_GEN_68}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_36 = $signed(x_35) + $signed(_x_36_T); // @[VCORDIC.scala 657:32]
  wire [28:0] _GEN_69 = xterm_35[63:35]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_36_T = {{35{_GEN_69[28]}},_GEN_69}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_36 = $signed(y_35) - $signed(_y_36_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_36_T = cond_35 ? _zterm_T_71 : 64'h2000000; // @[VCORDIC.scala 659:40]
  wire [63:0] z_36 = $signed(z_35) + $signed(_z_36_T); // @[VCORDIC.scala 659:32]
  wire  cond_36 = $signed(yr_18) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_110 = 64'sh0 - $signed(xr_18); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_36 = cond_36 ? $signed(_xterm_T_110) : $signed(xr_18); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_110 = 64'sh0 - $signed(yr_18); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_36 = cond_36 ? $signed(_yterm_T_110) : $signed(yr_18); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_73 = 64'h0 - 64'h1000000; // @[VCORDIC.scala 645:33]
  wire [27:0] _GEN_70 = yterm_36[63:36]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_37_T = {{36{_GEN_70[27]}},_GEN_70}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_37 = $signed(xr_18) + $signed(_x_37_T); // @[VCORDIC.scala 647:32]
  wire [27:0] _GEN_71 = xterm_36[63:36]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_37_T = {{36{_GEN_71[27]}},_GEN_71}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_37 = $signed(yr_18) - $signed(_y_37_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_37_T = cond_36 ? _zterm_T_73 : 64'h1000000; // @[VCORDIC.scala 649:40]
  wire [63:0] z_37 = $signed(zr_18) + $signed(_z_37_T); // @[VCORDIC.scala 649:32]
  wire  cond_37 = $signed(y_37) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_113 = 64'sh0 - $signed(x_37); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_37 = cond_37 ? $signed(_xterm_T_113) : $signed(x_37); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_113 = 64'sh0 - $signed(y_37); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_37 = cond_37 ? $signed(_yterm_T_113) : $signed(y_37); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_75 = 64'h0 - 64'h800000; // @[VCORDIC.scala 655:33]
  wire [26:0] _GEN_72 = yterm_37[63:37]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_38_T = {{37{_GEN_72[26]}},_GEN_72}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_38 = $signed(x_37) + $signed(_x_38_T); // @[VCORDIC.scala 657:32]
  wire [26:0] _GEN_73 = xterm_37[63:37]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_38_T = {{37{_GEN_73[26]}},_GEN_73}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_38 = $signed(y_37) - $signed(_y_38_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_38_T = cond_37 ? _zterm_T_75 : 64'h800000; // @[VCORDIC.scala 659:40]
  wire [63:0] z_38 = $signed(z_37) + $signed(_z_38_T); // @[VCORDIC.scala 659:32]
  wire  cond_38 = $signed(yr_19) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_116 = 64'sh0 - $signed(xr_19); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_38 = cond_38 ? $signed(_xterm_T_116) : $signed(xr_19); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_116 = 64'sh0 - $signed(yr_19); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_38 = cond_38 ? $signed(_yterm_T_116) : $signed(yr_19); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_77 = 64'h0 - 64'h400000; // @[VCORDIC.scala 645:33]
  wire [25:0] _GEN_74 = yterm_38[63:38]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_39_T = {{38{_GEN_74[25]}},_GEN_74}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_39 = $signed(xr_19) + $signed(_x_39_T); // @[VCORDIC.scala 647:32]
  wire [25:0] _GEN_75 = xterm_38[63:38]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_39_T = {{38{_GEN_75[25]}},_GEN_75}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_39 = $signed(yr_19) - $signed(_y_39_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_39_T = cond_38 ? _zterm_T_77 : 64'h400000; // @[VCORDIC.scala 649:40]
  wire [63:0] z_39 = $signed(zr_19) + $signed(_z_39_T); // @[VCORDIC.scala 649:32]
  wire  cond_39 = $signed(y_39) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_119 = 64'sh0 - $signed(x_39); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_39 = cond_39 ? $signed(_xterm_T_119) : $signed(x_39); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_119 = 64'sh0 - $signed(y_39); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_39 = cond_39 ? $signed(_yterm_T_119) : $signed(y_39); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_79 = 64'h0 - 64'h200000; // @[VCORDIC.scala 655:33]
  wire [24:0] _GEN_76 = yterm_39[63:39]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_40_T = {{39{_GEN_76[24]}},_GEN_76}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_40 = $signed(x_39) + $signed(_x_40_T); // @[VCORDIC.scala 657:32]
  wire [24:0] _GEN_77 = xterm_39[63:39]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_40_T = {{39{_GEN_77[24]}},_GEN_77}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_40 = $signed(y_39) - $signed(_y_40_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_40_T = cond_39 ? _zterm_T_79 : 64'h200000; // @[VCORDIC.scala 659:40]
  wire [63:0] z_40 = $signed(z_39) + $signed(_z_40_T); // @[VCORDIC.scala 659:32]
  wire  cond_40 = $signed(yr_20) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_122 = 64'sh0 - $signed(xr_20); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_40 = cond_40 ? $signed(_xterm_T_122) : $signed(xr_20); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_122 = 64'sh0 - $signed(yr_20); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_40 = cond_40 ? $signed(_yterm_T_122) : $signed(yr_20); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_81 = 64'h0 - 64'h100000; // @[VCORDIC.scala 645:33]
  wire [23:0] _GEN_78 = yterm_40[63:40]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_41_T = {{40{_GEN_78[23]}},_GEN_78}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_41 = $signed(xr_20) + $signed(_x_41_T); // @[VCORDIC.scala 647:32]
  wire [23:0] _GEN_79 = xterm_40[63:40]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_41_T = {{40{_GEN_79[23]}},_GEN_79}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_41 = $signed(yr_20) - $signed(_y_41_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_41_T = cond_40 ? _zterm_T_81 : 64'h100000; // @[VCORDIC.scala 649:40]
  wire [63:0] z_41 = $signed(zr_20) + $signed(_z_41_T); // @[VCORDIC.scala 649:32]
  wire  cond_41 = $signed(y_41) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_125 = 64'sh0 - $signed(x_41); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_41 = cond_41 ? $signed(_xterm_T_125) : $signed(x_41); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_125 = 64'sh0 - $signed(y_41); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_41 = cond_41 ? $signed(_yterm_T_125) : $signed(y_41); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_83 = 64'h0 - 64'h80000; // @[VCORDIC.scala 655:33]
  wire [22:0] _GEN_80 = yterm_41[63:41]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_42_T = {{41{_GEN_80[22]}},_GEN_80}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_42 = $signed(x_41) + $signed(_x_42_T); // @[VCORDIC.scala 657:32]
  wire [22:0] _GEN_81 = xterm_41[63:41]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_42_T = {{41{_GEN_81[22]}},_GEN_81}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_42 = $signed(y_41) - $signed(_y_42_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_42_T = cond_41 ? _zterm_T_83 : 64'h80000; // @[VCORDIC.scala 659:40]
  wire [63:0] z_42 = $signed(z_41) + $signed(_z_42_T); // @[VCORDIC.scala 659:32]
  wire  cond_42 = $signed(yr_21) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_128 = 64'sh0 - $signed(xr_21); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_42 = cond_42 ? $signed(_xterm_T_128) : $signed(xr_21); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_128 = 64'sh0 - $signed(yr_21); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_42 = cond_42 ? $signed(_yterm_T_128) : $signed(yr_21); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_85 = 64'h0 - 64'h40000; // @[VCORDIC.scala 645:33]
  wire [21:0] _GEN_82 = yterm_42[63:42]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_43_T = {{42{_GEN_82[21]}},_GEN_82}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_43 = $signed(xr_21) + $signed(_x_43_T); // @[VCORDIC.scala 647:32]
  wire [21:0] _GEN_83 = xterm_42[63:42]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_43_T = {{42{_GEN_83[21]}},_GEN_83}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_43 = $signed(yr_21) - $signed(_y_43_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_43_T = cond_42 ? _zterm_T_85 : 64'h40000; // @[VCORDIC.scala 649:40]
  wire [63:0] z_43 = $signed(zr_21) + $signed(_z_43_T); // @[VCORDIC.scala 649:32]
  wire  cond_43 = $signed(y_43) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_131 = 64'sh0 - $signed(x_43); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_43 = cond_43 ? $signed(_xterm_T_131) : $signed(x_43); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_131 = 64'sh0 - $signed(y_43); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_43 = cond_43 ? $signed(_yterm_T_131) : $signed(y_43); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_87 = 64'h0 - 64'h20000; // @[VCORDIC.scala 655:33]
  wire [20:0] _GEN_84 = yterm_43[63:43]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_44_T = {{43{_GEN_84[20]}},_GEN_84}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_44 = $signed(x_43) + $signed(_x_44_T); // @[VCORDIC.scala 657:32]
  wire [20:0] _GEN_85 = xterm_43[63:43]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_44_T = {{43{_GEN_85[20]}},_GEN_85}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_44 = $signed(y_43) - $signed(_y_44_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_44_T = cond_43 ? _zterm_T_87 : 64'h20000; // @[VCORDIC.scala 659:40]
  wire [63:0] z_44 = $signed(z_43) + $signed(_z_44_T); // @[VCORDIC.scala 659:32]
  wire  cond_44 = $signed(yr_22) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_134 = 64'sh0 - $signed(xr_22); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_44 = cond_44 ? $signed(_xterm_T_134) : $signed(xr_22); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_134 = 64'sh0 - $signed(yr_22); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_44 = cond_44 ? $signed(_yterm_T_134) : $signed(yr_22); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_89 = 64'h0 - 64'h10000; // @[VCORDIC.scala 645:33]
  wire [19:0] _GEN_86 = yterm_44[63:44]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_45_T = {{44{_GEN_86[19]}},_GEN_86}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_45 = $signed(xr_22) + $signed(_x_45_T); // @[VCORDIC.scala 647:32]
  wire [19:0] _GEN_87 = xterm_44[63:44]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_45_T = {{44{_GEN_87[19]}},_GEN_87}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_45 = $signed(yr_22) - $signed(_y_45_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_45_T = cond_44 ? _zterm_T_89 : 64'h10000; // @[VCORDIC.scala 649:40]
  wire [63:0] z_45 = $signed(zr_22) + $signed(_z_45_T); // @[VCORDIC.scala 649:32]
  wire  cond_45 = $signed(y_45) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_137 = 64'sh0 - $signed(x_45); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_45 = cond_45 ? $signed(_xterm_T_137) : $signed(x_45); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_137 = 64'sh0 - $signed(y_45); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_45 = cond_45 ? $signed(_yterm_T_137) : $signed(y_45); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_91 = 64'h0 - 64'h8000; // @[VCORDIC.scala 655:33]
  wire [18:0] _GEN_88 = yterm_45[63:45]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_46_T = {{45{_GEN_88[18]}},_GEN_88}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_46 = $signed(x_45) + $signed(_x_46_T); // @[VCORDIC.scala 657:32]
  wire [18:0] _GEN_89 = xterm_45[63:45]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_46_T = {{45{_GEN_89[18]}},_GEN_89}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_46 = $signed(y_45) - $signed(_y_46_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_46_T = cond_45 ? _zterm_T_91 : 64'h8000; // @[VCORDIC.scala 659:40]
  wire [63:0] z_46 = $signed(z_45) + $signed(_z_46_T); // @[VCORDIC.scala 659:32]
  wire  cond_46 = $signed(yr_23) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_140 = 64'sh0 - $signed(xr_23); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_46 = cond_46 ? $signed(_xterm_T_140) : $signed(xr_23); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_140 = 64'sh0 - $signed(yr_23); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_46 = cond_46 ? $signed(_yterm_T_140) : $signed(yr_23); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_93 = 64'h0 - 64'h4000; // @[VCORDIC.scala 645:33]
  wire [17:0] _GEN_90 = yterm_46[63:46]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_47_T = {{46{_GEN_90[17]}},_GEN_90}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_47 = $signed(xr_23) + $signed(_x_47_T); // @[VCORDIC.scala 647:32]
  wire [17:0] _GEN_91 = xterm_46[63:46]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_47_T = {{46{_GEN_91[17]}},_GEN_91}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_47 = $signed(yr_23) - $signed(_y_47_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_47_T = cond_46 ? _zterm_T_93 : 64'h4000; // @[VCORDIC.scala 649:40]
  wire [63:0] z_47 = $signed(zr_23) + $signed(_z_47_T); // @[VCORDIC.scala 649:32]
  wire  cond_47 = $signed(y_47) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_143 = 64'sh0 - $signed(x_47); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_47 = cond_47 ? $signed(_xterm_T_143) : $signed(x_47); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_143 = 64'sh0 - $signed(y_47); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_47 = cond_47 ? $signed(_yterm_T_143) : $signed(y_47); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_95 = 64'h0 - 64'h2000; // @[VCORDIC.scala 655:33]
  wire [16:0] _GEN_92 = yterm_47[63:47]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_48_T = {{47{_GEN_92[16]}},_GEN_92}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_48 = $signed(x_47) + $signed(_x_48_T); // @[VCORDIC.scala 657:32]
  wire [16:0] _GEN_93 = xterm_47[63:47]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_48_T = {{47{_GEN_93[16]}},_GEN_93}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_48 = $signed(y_47) - $signed(_y_48_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_48_T = cond_47 ? _zterm_T_95 : 64'h2000; // @[VCORDIC.scala 659:40]
  wire [63:0] z_48 = $signed(z_47) + $signed(_z_48_T); // @[VCORDIC.scala 659:32]
  wire  cond_48 = $signed(yr_24) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_146 = 64'sh0 - $signed(xr_24); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_48 = cond_48 ? $signed(_xterm_T_146) : $signed(xr_24); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_146 = 64'sh0 - $signed(yr_24); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_48 = cond_48 ? $signed(_yterm_T_146) : $signed(yr_24); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_97 = 64'h0 - 64'h1000; // @[VCORDIC.scala 645:33]
  wire [15:0] _GEN_94 = yterm_48[63:48]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_49_T = {{48{_GEN_94[15]}},_GEN_94}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_49 = $signed(xr_24) + $signed(_x_49_T); // @[VCORDIC.scala 647:32]
  wire [15:0] _GEN_95 = xterm_48[63:48]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_49_T = {{48{_GEN_95[15]}},_GEN_95}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_49 = $signed(yr_24) - $signed(_y_49_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_49_T = cond_48 ? _zterm_T_97 : 64'h1000; // @[VCORDIC.scala 649:40]
  wire [63:0] z_49 = $signed(zr_24) + $signed(_z_49_T); // @[VCORDIC.scala 649:32]
  wire  cond_49 = $signed(y_49) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_149 = 64'sh0 - $signed(x_49); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_49 = cond_49 ? $signed(_xterm_T_149) : $signed(x_49); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_149 = 64'sh0 - $signed(y_49); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_49 = cond_49 ? $signed(_yterm_T_149) : $signed(y_49); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_99 = 64'h0 - 64'h800; // @[VCORDIC.scala 655:33]
  wire [14:0] _GEN_96 = yterm_49[63:49]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_50_T = {{49{_GEN_96[14]}},_GEN_96}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_50 = $signed(x_49) + $signed(_x_50_T); // @[VCORDIC.scala 657:32]
  wire [14:0] _GEN_97 = xterm_49[63:49]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_50_T = {{49{_GEN_97[14]}},_GEN_97}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_50 = $signed(y_49) - $signed(_y_50_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_50_T = cond_49 ? _zterm_T_99 : 64'h800; // @[VCORDIC.scala 659:40]
  wire [63:0] z_50 = $signed(z_49) + $signed(_z_50_T); // @[VCORDIC.scala 659:32]
  wire  cond_50 = $signed(yr_25) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_152 = 64'sh0 - $signed(xr_25); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_50 = cond_50 ? $signed(_xterm_T_152) : $signed(xr_25); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_152 = 64'sh0 - $signed(yr_25); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_50 = cond_50 ? $signed(_yterm_T_152) : $signed(yr_25); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_101 = 64'h0 - 64'h400; // @[VCORDIC.scala 645:33]
  wire [13:0] _GEN_98 = yterm_50[63:50]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_51_T = {{50{_GEN_98[13]}},_GEN_98}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_51 = $signed(xr_25) + $signed(_x_51_T); // @[VCORDIC.scala 647:32]
  wire [13:0] _GEN_99 = xterm_50[63:50]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_51_T = {{50{_GEN_99[13]}},_GEN_99}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_51 = $signed(yr_25) - $signed(_y_51_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_51_T = cond_50 ? _zterm_T_101 : 64'h400; // @[VCORDIC.scala 649:40]
  wire [63:0] z_51 = $signed(zr_25) + $signed(_z_51_T); // @[VCORDIC.scala 649:32]
  wire  cond_51 = $signed(y_51) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_155 = 64'sh0 - $signed(x_51); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_51 = cond_51 ? $signed(_xterm_T_155) : $signed(x_51); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_155 = 64'sh0 - $signed(y_51); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_51 = cond_51 ? $signed(_yterm_T_155) : $signed(y_51); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_103 = 64'h0 - 64'h200; // @[VCORDIC.scala 655:33]
  wire [12:0] _GEN_100 = yterm_51[63:51]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_52_T = {{51{_GEN_100[12]}},_GEN_100}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_52 = $signed(x_51) + $signed(_x_52_T); // @[VCORDIC.scala 657:32]
  wire [12:0] _GEN_101 = xterm_51[63:51]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_52_T = {{51{_GEN_101[12]}},_GEN_101}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_52 = $signed(y_51) - $signed(_y_52_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_52_T = cond_51 ? _zterm_T_103 : 64'h200; // @[VCORDIC.scala 659:40]
  wire [63:0] z_52 = $signed(z_51) + $signed(_z_52_T); // @[VCORDIC.scala 659:32]
  wire  cond_52 = $signed(yr_26) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_158 = 64'sh0 - $signed(xr_26); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_52 = cond_52 ? $signed(_xterm_T_158) : $signed(xr_26); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_158 = 64'sh0 - $signed(yr_26); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_52 = cond_52 ? $signed(_yterm_T_158) : $signed(yr_26); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_105 = 64'h0 - 64'h100; // @[VCORDIC.scala 645:33]
  wire [11:0] _GEN_102 = yterm_52[63:52]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_53_T = {{52{_GEN_102[11]}},_GEN_102}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_53 = $signed(xr_26) + $signed(_x_53_T); // @[VCORDIC.scala 647:32]
  wire [11:0] _GEN_103 = xterm_52[63:52]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_53_T = {{52{_GEN_103[11]}},_GEN_103}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_53 = $signed(yr_26) - $signed(_y_53_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_53_T = cond_52 ? _zterm_T_105 : 64'h100; // @[VCORDIC.scala 649:40]
  wire [63:0] z_53 = $signed(zr_26) + $signed(_z_53_T); // @[VCORDIC.scala 649:32]
  wire  cond_53 = $signed(y_53) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_161 = 64'sh0 - $signed(x_53); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_53 = cond_53 ? $signed(_xterm_T_161) : $signed(x_53); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_161 = 64'sh0 - $signed(y_53); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_53 = cond_53 ? $signed(_yterm_T_161) : $signed(y_53); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_107 = 64'h0 - 64'h80; // @[VCORDIC.scala 655:33]
  wire [10:0] _GEN_104 = yterm_53[63:53]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_54_T = {{53{_GEN_104[10]}},_GEN_104}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_54 = $signed(x_53) + $signed(_x_54_T); // @[VCORDIC.scala 657:32]
  wire [10:0] _GEN_105 = xterm_53[63:53]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_54_T = {{53{_GEN_105[10]}},_GEN_105}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_54 = $signed(y_53) - $signed(_y_54_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_54_T = cond_53 ? _zterm_T_107 : 64'h80; // @[VCORDIC.scala 659:40]
  wire [63:0] z_54 = $signed(z_53) + $signed(_z_54_T); // @[VCORDIC.scala 659:32]
  wire  cond_54 = $signed(yr_27) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_164 = 64'sh0 - $signed(xr_27); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_54 = cond_54 ? $signed(_xterm_T_164) : $signed(xr_27); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_164 = 64'sh0 - $signed(yr_27); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_54 = cond_54 ? $signed(_yterm_T_164) : $signed(yr_27); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_109 = 64'h0 - 64'h40; // @[VCORDIC.scala 645:33]
  wire [9:0] _GEN_106 = yterm_54[63:54]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_55_T = {{54{_GEN_106[9]}},_GEN_106}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_55 = $signed(xr_27) + $signed(_x_55_T); // @[VCORDIC.scala 647:32]
  wire [9:0] _GEN_107 = xterm_54[63:54]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_55_T = {{54{_GEN_107[9]}},_GEN_107}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_55 = $signed(yr_27) - $signed(_y_55_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_55_T = cond_54 ? _zterm_T_109 : 64'h40; // @[VCORDIC.scala 649:40]
  wire [63:0] z_55 = $signed(zr_27) + $signed(_z_55_T); // @[VCORDIC.scala 649:32]
  wire  cond_55 = $signed(y_55) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_167 = 64'sh0 - $signed(x_55); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_55 = cond_55 ? $signed(_xterm_T_167) : $signed(x_55); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_167 = 64'sh0 - $signed(y_55); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_55 = cond_55 ? $signed(_yterm_T_167) : $signed(y_55); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_111 = 64'h0 - 64'h20; // @[VCORDIC.scala 655:33]
  wire [8:0] _GEN_108 = yterm_55[63:55]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_56_T = {{55{_GEN_108[8]}},_GEN_108}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_56 = $signed(x_55) + $signed(_x_56_T); // @[VCORDIC.scala 657:32]
  wire [8:0] _GEN_109 = xterm_55[63:55]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_56_T = {{55{_GEN_109[8]}},_GEN_109}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_56 = $signed(y_55) - $signed(_y_56_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_56_T = cond_55 ? _zterm_T_111 : 64'h20; // @[VCORDIC.scala 659:40]
  wire [63:0] z_56 = $signed(z_55) + $signed(_z_56_T); // @[VCORDIC.scala 659:32]
  wire  cond_56 = $signed(yr_28) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_170 = 64'sh0 - $signed(xr_28); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_56 = cond_56 ? $signed(_xterm_T_170) : $signed(xr_28); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_170 = 64'sh0 - $signed(yr_28); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_56 = cond_56 ? $signed(_yterm_T_170) : $signed(yr_28); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_113 = 64'h0 - 64'h10; // @[VCORDIC.scala 645:33]
  wire [7:0] _GEN_110 = yterm_56[63:56]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_57_T = {{56{_GEN_110[7]}},_GEN_110}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_57 = $signed(xr_28) + $signed(_x_57_T); // @[VCORDIC.scala 647:32]
  wire [7:0] _GEN_111 = xterm_56[63:56]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_57_T = {{56{_GEN_111[7]}},_GEN_111}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_57 = $signed(yr_28) - $signed(_y_57_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_57_T = cond_56 ? _zterm_T_113 : 64'h10; // @[VCORDIC.scala 649:40]
  wire [63:0] z_57 = $signed(zr_28) + $signed(_z_57_T); // @[VCORDIC.scala 649:32]
  wire  cond_57 = $signed(y_57) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_173 = 64'sh0 - $signed(x_57); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_57 = cond_57 ? $signed(_xterm_T_173) : $signed(x_57); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_173 = 64'sh0 - $signed(y_57); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_57 = cond_57 ? $signed(_yterm_T_173) : $signed(y_57); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_115 = 64'h0 - 64'h8; // @[VCORDIC.scala 655:33]
  wire [6:0] _GEN_112 = yterm_57[63:57]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_58_T = {{57{_GEN_112[6]}},_GEN_112}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_58 = $signed(x_57) + $signed(_x_58_T); // @[VCORDIC.scala 657:32]
  wire [6:0] _GEN_113 = xterm_57[63:57]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_58_T = {{57{_GEN_113[6]}},_GEN_113}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_58 = $signed(y_57) - $signed(_y_58_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_58_T = cond_57 ? _zterm_T_115 : 64'h8; // @[VCORDIC.scala 659:40]
  wire [63:0] z_58 = $signed(z_57) + $signed(_z_58_T); // @[VCORDIC.scala 659:32]
  wire  cond_58 = $signed(yr_29) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_176 = 64'sh0 - $signed(xr_29); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_58 = cond_58 ? $signed(_xterm_T_176) : $signed(xr_29); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_176 = 64'sh0 - $signed(yr_29); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_58 = cond_58 ? $signed(_yterm_T_176) : $signed(yr_29); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_117 = 64'h0 - 64'h4; // @[VCORDIC.scala 645:33]
  wire [5:0] _GEN_114 = yterm_58[63:58]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_59_T = {{58{_GEN_114[5]}},_GEN_114}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_59 = $signed(xr_29) + $signed(_x_59_T); // @[VCORDIC.scala 647:32]
  wire [5:0] _GEN_115 = xterm_58[63:58]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_59_T = {{58{_GEN_115[5]}},_GEN_115}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_59 = $signed(yr_29) - $signed(_y_59_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_59_T = cond_58 ? _zterm_T_117 : 64'h4; // @[VCORDIC.scala 649:40]
  wire [63:0] z_59 = $signed(zr_29) + $signed(_z_59_T); // @[VCORDIC.scala 649:32]
  wire  cond_59 = $signed(y_59) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_179 = 64'sh0 - $signed(x_59); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_59 = cond_59 ? $signed(_xterm_T_179) : $signed(x_59); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_179 = 64'sh0 - $signed(y_59); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_59 = cond_59 ? $signed(_yterm_T_179) : $signed(y_59); // @[VCORDIC.scala 654:26]
  wire [63:0] _zterm_T_119 = 64'h0 - 64'h2; // @[VCORDIC.scala 655:33]
  wire [4:0] _GEN_116 = yterm_59[63:59]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_60_T = {{59{_GEN_116[4]}},_GEN_116}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_60 = $signed(x_59) + $signed(_x_60_T); // @[VCORDIC.scala 657:32]
  wire [4:0] _GEN_117 = xterm_59[63:59]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_60_T = {{59{_GEN_117[4]}},_GEN_117}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_60 = $signed(y_59) - $signed(_y_60_T); // @[VCORDIC.scala 658:32]
  wire [63:0] _z_60_T = cond_59 ? _zterm_T_119 : 64'h2; // @[VCORDIC.scala 659:40]
  wire [63:0] z_60 = $signed(z_59) + $signed(_z_60_T); // @[VCORDIC.scala 659:32]
  wire  cond_60 = $signed(yr_30) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_182 = 64'sh0 - $signed(xr_30); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_60 = cond_60 ? $signed(_xterm_T_182) : $signed(xr_30); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_182 = 64'sh0 - $signed(yr_30); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_60 = cond_60 ? $signed(_yterm_T_182) : $signed(yr_30); // @[VCORDIC.scala 644:26]
  wire [63:0] _zterm_T_121 = 64'h0 - 64'h1; // @[VCORDIC.scala 645:33]
  wire [3:0] _GEN_118 = yterm_60[63:60]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_61_T = {{60{_GEN_118[3]}},_GEN_118}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_61 = $signed(xr_30) + $signed(_x_61_T); // @[VCORDIC.scala 647:32]
  wire [3:0] _GEN_119 = xterm_60[63:60]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_61_T = {{60{_GEN_119[3]}},_GEN_119}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_61 = $signed(yr_30) - $signed(_y_61_T); // @[VCORDIC.scala 648:32]
  wire [63:0] _z_61_T = cond_60 ? _zterm_T_121 : 64'h1; // @[VCORDIC.scala 649:40]
  wire [63:0] z_61 = $signed(zr_30) + $signed(_z_61_T); // @[VCORDIC.scala 649:32]
  wire  cond_61 = $signed(y_61) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_185 = 64'sh0 - $signed(x_61); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_61 = cond_61 ? $signed(_xterm_T_185) : $signed(x_61); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_185 = 64'sh0 - $signed(y_61); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_61 = cond_61 ? $signed(_yterm_T_185) : $signed(y_61); // @[VCORDIC.scala 654:26]
  wire [2:0] _GEN_120 = yterm_61[63:61]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_62_T = {{61{_GEN_120[2]}},_GEN_120}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_62 = $signed(x_61) + $signed(_x_62_T); // @[VCORDIC.scala 657:32]
  wire [2:0] _GEN_121 = xterm_61[63:61]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_62_T = {{61{_GEN_121[2]}},_GEN_121}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_62 = $signed(y_61) - $signed(_y_62_T); // @[VCORDIC.scala 658:32]
  wire [64:0] _z_62_T_1 = {{1{z_61[63]}},z_61}; // @[VCORDIC.scala 659:32]
  wire [63:0] z_62 = _z_62_T_1[63:0]; // @[VCORDIC.scala 659:32]
  wire  cond_62 = $signed(yr_31) < 64'sh0; // @[VCORDIC.scala 641:31]
  wire [63:0] _xterm_T_188 = 64'sh0 - $signed(xr_31); // @[VCORDIC.scala 643:33]
  wire [63:0] xterm_62 = cond_62 ? $signed(_xterm_T_188) : $signed(xr_31); // @[VCORDIC.scala 643:26]
  wire [63:0] _yterm_T_188 = 64'sh0 - $signed(yr_31); // @[VCORDIC.scala 644:33]
  wire [63:0] yterm_62 = cond_62 ? $signed(_yterm_T_188) : $signed(yr_31); // @[VCORDIC.scala 644:26]
  wire [1:0] _GEN_122 = yterm_62[63:62]; // @[VCORDIC.scala 647:41]
  wire [63:0] _x_63_T = {{62{_GEN_122[1]}},_GEN_122}; // @[VCORDIC.scala 647:41]
  wire [63:0] x_63 = $signed(xr_31) + $signed(_x_63_T); // @[VCORDIC.scala 647:32]
  wire [1:0] _GEN_123 = xterm_62[63:62]; // @[VCORDIC.scala 648:41]
  wire [63:0] _y_63_T = {{62{_GEN_123[1]}},_GEN_123}; // @[VCORDIC.scala 648:41]
  wire [63:0] y_63 = $signed(yr_31) - $signed(_y_63_T); // @[VCORDIC.scala 648:32]
  wire [64:0] _z_63_T_1 = {{1{zr_31[63]}},zr_31}; // @[VCORDIC.scala 649:32]
  wire [63:0] z_63 = _z_63_T_1[63:0]; // @[VCORDIC.scala 649:32]
  wire  cond_63 = $signed(y_63) < 64'sh0; // @[VCORDIC.scala 652:31]
  wire [63:0] _xterm_T_191 = 64'sh0 - $signed(x_63); // @[VCORDIC.scala 653:33]
  wire [63:0] xterm_63 = cond_63 ? $signed(_xterm_T_191) : $signed(x_63); // @[VCORDIC.scala 653:26]
  wire [63:0] _yterm_T_191 = 64'sh0 - $signed(y_63); // @[VCORDIC.scala 654:33]
  wire [63:0] yterm_63 = cond_63 ? $signed(_yterm_T_191) : $signed(y_63); // @[VCORDIC.scala 654:26]
  wire  _GEN_124 = yterm_63[63]; // @[VCORDIC.scala 657:41]
  wire [63:0] _x_64_T = {64{_GEN_124}}; // @[VCORDIC.scala 657:41]
  wire [63:0] x_64 = $signed(x_63) + $signed(_x_64_T); // @[VCORDIC.scala 657:32]
  wire  _GEN_125 = xterm_63[63]; // @[VCORDIC.scala 658:41]
  wire [63:0] _y_64_T = {64{_GEN_125}}; // @[VCORDIC.scala 658:41]
  wire [63:0] y_64 = $signed(y_63) - $signed(_y_64_T); // @[VCORDIC.scala 658:32]
  wire [64:0] _z_64_T_1 = {{1{z_63[63]}},z_63}; // @[VCORDIC.scala 659:32]
  wire [63:0] z_64 = _z_64_T_1[63:0]; // @[VCORDIC.scala 659:32]
  FloatToFixed64 tofixedx0 ( // @[VCORDIC.scala 318:27]
    .io_in(tofixedx0_io_in),
    .io_out(tofixedx0_io_out)
  );
  FloatToFixed64 tofixedy0 ( // @[VCORDIC.scala 319:27]
    .io_in(tofixedy0_io_in),
    .io_out(tofixedy0_io_out)
  );
  FloatToFixed64 tofixedz0 ( // @[VCORDIC.scala 320:27]
    .io_in(tofixedz0_io_in),
    .io_out(tofixedz0_io_out)
  );
  FixedToFloat64 tofloatxout ( // @[VCORDIC.scala 670:29]
    .io_in(tofloatxout_io_in),
    .io_out(tofloatxout_io_out)
  );
  FixedToFloat64 tofloatyout ( // @[VCORDIC.scala 671:29]
    .io_in(tofloatyout_io_in),
    .io_out(tofloatyout_io_out)
  );
  FixedToFloat64 tofloatzout ( // @[VCORDIC.scala 672:29]
    .io_in(tofloatzout_io_in),
    .io_out(tofloatzout_io_out)
  );
  assign io_out_z = tofloatzout_io_out; // @[VCORDIC.scala 681:14]
  assign tofixedx0_io_in = 64'h3ff0000000000000; // @[VCORDIC.scala 322:21]
  assign tofixedy0_io_in = io_in_y0; // @[VCORDIC.scala 323:21]
  assign tofixedz0_io_in = 64'h0; // @[VCORDIC.scala 324:21]
  assign tofloatxout_io_in = xr_32; // @[VCORDIC.scala 675:35]
  assign tofloatyout_io_in = yr_32; // @[VCORDIC.scala 676:35]
  assign tofloatzout_io_in = zr_32; // @[VCORDIC.scala 677:35]
  always @(posedge clock) begin
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_0 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_0 <= tofixedx0_io_out; // @[VCORDIC.scala 335:11]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_1 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_1 <= x_2; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_2 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_2 <= x_4; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_3 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_3 <= x_6; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_4 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_4 <= x_8; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_5 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_5 <= x_10; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_6 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_6 <= x_12; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_7 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_7 <= x_14; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_8 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_8 <= x_16; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_9 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_9 <= x_18; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_10 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_10 <= x_20; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_11 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_11 <= x_22; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_12 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_12 <= x_24; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_13 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_13 <= x_26; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_14 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_14 <= x_28; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_15 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_15 <= x_30; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_16 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_16 <= x_32; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_17 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_17 <= x_34; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_18 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_18 <= x_36; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_19 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_19 <= x_38; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_20 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_20 <= x_40; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_21 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_21 <= x_42; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_22 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_22 <= x_44; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_23 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_23 <= x_46; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_24 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_24 <= x_48; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_25 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_25 <= x_50; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_26 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_26 <= x_52; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_27 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_27 <= x_54; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_28 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_28 <= x_56; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_29 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_29 <= x_58; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_30 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_30 <= x_60; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_31 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_31 <= x_62; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 264:19]
      xr_32 <= 64'sh0; // @[VCORDIC.scala 264:19]
    end else begin
      xr_32 <= x_64; // @[VCORDIC.scala 663:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_0 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_0 <= tofixedy0_io_out; // @[VCORDIC.scala 336:11]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_1 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_1 <= y_2; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_2 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_2 <= y_4; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_3 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_3 <= y_6; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_4 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_4 <= y_8; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_5 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_5 <= y_10; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_6 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_6 <= y_12; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_7 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_7 <= y_14; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_8 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_8 <= y_16; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_9 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_9 <= y_18; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_10 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_10 <= y_20; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_11 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_11 <= y_22; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_12 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_12 <= y_24; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_13 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_13 <= y_26; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_14 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_14 <= y_28; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_15 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_15 <= y_30; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_16 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_16 <= y_32; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_17 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_17 <= y_34; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_18 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_18 <= y_36; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_19 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_19 <= y_38; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_20 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_20 <= y_40; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_21 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_21 <= y_42; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_22 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_22 <= y_44; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_23 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_23 <= y_46; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_24 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_24 <= y_48; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_25 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_25 <= y_50; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_26 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_26 <= y_52; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_27 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_27 <= y_54; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_28 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_28 <= y_56; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_29 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_29 <= y_58; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_30 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_30 <= y_60; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_31 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_31 <= y_62; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 265:19]
      yr_32 <= 64'sh0; // @[VCORDIC.scala 265:19]
    end else begin
      yr_32 <= y_64; // @[VCORDIC.scala 664:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_0 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_0 <= tofixedz0_io_out; // @[VCORDIC.scala 334:11]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_1 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_1 <= z_2; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_2 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_2 <= z_4; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_3 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_3 <= z_6; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_4 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_4 <= z_8; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_5 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_5 <= z_10; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_6 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_6 <= z_12; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_7 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_7 <= z_14; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_8 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_8 <= z_16; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_9 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_9 <= z_18; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_10 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_10 <= z_20; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_11 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_11 <= z_22; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_12 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_12 <= z_24; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_13 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_13 <= z_26; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_14 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_14 <= z_28; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_15 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_15 <= z_30; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_16 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_16 <= z_32; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_17 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_17 <= z_34; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_18 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_18 <= z_36; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_19 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_19 <= z_38; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_20 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_20 <= z_40; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_21 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_21 <= z_42; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_22 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_22 <= z_44; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_23 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_23 <= z_46; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_24 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_24 <= z_48; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_25 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_25 <= z_50; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_26 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_26 <= z_52; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_27 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_27 <= z_54; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_28 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_28 <= z_56; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_29 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_29 <= z_58; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_30 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_30 <= z_60; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_31 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_31 <= z_62; // @[VCORDIC.scala 665:20]
    end
    if (reset) begin // @[VCORDIC.scala 266:19]
      zr_32 <= 64'sh0; // @[VCORDIC.scala 266:19]
    end else begin
      zr_32 <= z_64; // @[VCORDIC.scala 665:20]
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
  zr_0 = _RAND_66[63:0];
  _RAND_67 = {2{`RANDOM}};
  zr_1 = _RAND_67[63:0];
  _RAND_68 = {2{`RANDOM}};
  zr_2 = _RAND_68[63:0];
  _RAND_69 = {2{`RANDOM}};
  zr_3 = _RAND_69[63:0];
  _RAND_70 = {2{`RANDOM}};
  zr_4 = _RAND_70[63:0];
  _RAND_71 = {2{`RANDOM}};
  zr_5 = _RAND_71[63:0];
  _RAND_72 = {2{`RANDOM}};
  zr_6 = _RAND_72[63:0];
  _RAND_73 = {2{`RANDOM}};
  zr_7 = _RAND_73[63:0];
  _RAND_74 = {2{`RANDOM}};
  zr_8 = _RAND_74[63:0];
  _RAND_75 = {2{`RANDOM}};
  zr_9 = _RAND_75[63:0];
  _RAND_76 = {2{`RANDOM}};
  zr_10 = _RAND_76[63:0];
  _RAND_77 = {2{`RANDOM}};
  zr_11 = _RAND_77[63:0];
  _RAND_78 = {2{`RANDOM}};
  zr_12 = _RAND_78[63:0];
  _RAND_79 = {2{`RANDOM}};
  zr_13 = _RAND_79[63:0];
  _RAND_80 = {2{`RANDOM}};
  zr_14 = _RAND_80[63:0];
  _RAND_81 = {2{`RANDOM}};
  zr_15 = _RAND_81[63:0];
  _RAND_82 = {2{`RANDOM}};
  zr_16 = _RAND_82[63:0];
  _RAND_83 = {2{`RANDOM}};
  zr_17 = _RAND_83[63:0];
  _RAND_84 = {2{`RANDOM}};
  zr_18 = _RAND_84[63:0];
  _RAND_85 = {2{`RANDOM}};
  zr_19 = _RAND_85[63:0];
  _RAND_86 = {2{`RANDOM}};
  zr_20 = _RAND_86[63:0];
  _RAND_87 = {2{`RANDOM}};
  zr_21 = _RAND_87[63:0];
  _RAND_88 = {2{`RANDOM}};
  zr_22 = _RAND_88[63:0];
  _RAND_89 = {2{`RANDOM}};
  zr_23 = _RAND_89[63:0];
  _RAND_90 = {2{`RANDOM}};
  zr_24 = _RAND_90[63:0];
  _RAND_91 = {2{`RANDOM}};
  zr_25 = _RAND_91[63:0];
  _RAND_92 = {2{`RANDOM}};
  zr_26 = _RAND_92[63:0];
  _RAND_93 = {2{`RANDOM}};
  zr_27 = _RAND_93[63:0];
  _RAND_94 = {2{`RANDOM}};
  zr_28 = _RAND_94[63:0];
  _RAND_95 = {2{`RANDOM}};
  zr_29 = _RAND_95[63:0];
  _RAND_96 = {2{`RANDOM}};
  zr_30 = _RAND_96[63:0];
  _RAND_97 = {2{`RANDOM}};
  zr_31 = _RAND_97[63:0];
  _RAND_98 = {2{`RANDOM}};
  zr_32 = _RAND_98[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

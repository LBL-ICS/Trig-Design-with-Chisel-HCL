module divider_BW22_v3(
  input         clock,
  input         reset,
  input  [21:0] io_in_a,
  output [21:0] io_out_s
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
`endif // RANDOMIZE_REG_INIT
  reg [21:0] a_aux_reg_r_0; // @[BinaryDesigns2.scala 171:30]
  reg [21:0] a_aux_reg_r_1; // @[BinaryDesigns2.scala 171:30]
  reg [21:0] a_aux_reg_r_2; // @[BinaryDesigns2.scala 171:30]
  reg [21:0] a_aux_reg_r_3; // @[BinaryDesigns2.scala 171:30]
  reg [21:0] a_aux_reg_r_4; // @[BinaryDesigns2.scala 171:30]
  reg [21:0] a_aux_reg_r_5; // @[BinaryDesigns2.scala 171:30]
  reg [21:0] a_aux_reg_r_6; // @[BinaryDesigns2.scala 171:30]
  reg [21:0] a_aux_reg_r_7; // @[BinaryDesigns2.scala 171:30]
  reg [21:0] a_aux_reg_r_8; // @[BinaryDesigns2.scala 171:30]
  reg [21:0] a_aux_reg_r_9; // @[BinaryDesigns2.scala 171:30]
  reg [21:0] b_aux_reg_r_0; // @[BinaryDesigns2.scala 176:30]
  reg [21:0] b_aux_reg_r_1; // @[BinaryDesigns2.scala 176:30]
  reg [21:0] b_aux_reg_r_2; // @[BinaryDesigns2.scala 176:30]
  reg [21:0] b_aux_reg_r_3; // @[BinaryDesigns2.scala 176:30]
  reg [21:0] b_aux_reg_r_4; // @[BinaryDesigns2.scala 176:30]
  reg [21:0] b_aux_reg_r_5; // @[BinaryDesigns2.scala 176:30]
  reg [21:0] b_aux_reg_r_6; // @[BinaryDesigns2.scala 176:30]
  reg [21:0] b_aux_reg_r_7; // @[BinaryDesigns2.scala 176:30]
  reg [21:0] b_aux_reg_r_8; // @[BinaryDesigns2.scala 176:30]
  reg [21:0] b_aux_reg_r_9; // @[BinaryDesigns2.scala 176:30]
  reg [21:0] result_reg_r_1; // @[BinaryDesigns2.scala 181:31]
  reg [21:0] result_reg_r_2; // @[BinaryDesigns2.scala 181:31]
  reg [21:0] result_reg_r_3; // @[BinaryDesigns2.scala 181:31]
  reg [21:0] result_reg_r_4; // @[BinaryDesigns2.scala 181:31]
  reg [21:0] result_reg_r_5; // @[BinaryDesigns2.scala 181:31]
  reg [21:0] result_reg_r_6; // @[BinaryDesigns2.scala 181:31]
  reg [21:0] result_reg_r_7; // @[BinaryDesigns2.scala 181:31]
  reg [21:0] result_reg_r_8; // @[BinaryDesigns2.scala 181:31]
  reg [21:0] result_reg_r_9; // @[BinaryDesigns2.scala 181:31]
  reg [21:0] result_reg_r_10; // @[BinaryDesigns2.scala 181:31]
  wire [40:0] _T_488 = {b_aux_reg_r_0, 19'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [40:0] _GEN_264 = {{19'd0}, a_aux_reg_r_0}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_1_19 = _GEN_264 >= _T_488; // @[BinaryDesigns2.scala 224:35]
  wire [21:0] result_reg_w_1 = {2'h0,wire_res_1_19,3'h0,5'h0,11'h0}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_2_0 = result_reg_w_1[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_1 = result_reg_w_1[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_2 = result_reg_w_1[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_3 = result_reg_w_1[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_4 = result_reg_w_1[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_5 = result_reg_w_1[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_6 = result_reg_w_1[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_7 = result_reg_w_1[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_8 = result_reg_w_1[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_9 = result_reg_w_1[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_10 = result_reg_w_1[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_11 = result_reg_w_1[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_12 = result_reg_w_1[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_13 = result_reg_w_1[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_14 = result_reg_w_1[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_15 = result_reg_w_1[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_16 = result_reg_w_1[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_17 = result_reg_w_1[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_19 = result_reg_w_1[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_20 = result_reg_w_1[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_21 = result_reg_w_1[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_0 = result_reg_r_1[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_1 = result_reg_r_1[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_2 = result_reg_r_1[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_3 = result_reg_r_1[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_4 = result_reg_r_1[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_5 = result_reg_r_1[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_6 = result_reg_r_1[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_7 = result_reg_r_1[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_8 = result_reg_r_1[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_9 = result_reg_r_1[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_10 = result_reg_r_1[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_11 = result_reg_r_1[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_12 = result_reg_r_1[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_13 = result_reg_r_1[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_14 = result_reg_r_1[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_15 = result_reg_r_1[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_16 = result_reg_r_1[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_18 = result_reg_r_1[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_19 = result_reg_r_1[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_20 = result_reg_r_1[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_21 = result_reg_r_1[21]; // @[BinaryDesigns2.scala 192:62]
  wire [38:0] _T_492 = {b_aux_reg_r_1, 17'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [38:0] _GEN_265 = {{17'd0}, a_aux_reg_r_1}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_3_17 = _GEN_265 >= _T_492; // @[BinaryDesigns2.scala 224:35]
  wire [4:0] result_reg_w_2_hi_lo = {wire_res_3_15,wire_res_3_14,wire_res_3_13,wire_res_3_12,wire_res_3_11}; // @[BinaryDesigns2.scala 231:46]
  wire [4:0] result_reg_w_2_lo_lo = {wire_res_3_4,wire_res_3_3,wire_res_3_2,wire_res_3_1,wire_res_3_0}; // @[BinaryDesigns2.scala 231:46]
  wire [10:0] result_reg_w_2_lo = {wire_res_3_10,wire_res_3_9,wire_res_3_8,wire_res_3_7,wire_res_3_6,wire_res_3_5,
    result_reg_w_2_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [21:0] result_reg_w_2 = {wire_res_3_21,wire_res_3_20,wire_res_3_19,wire_res_3_18,wire_res_3_17,wire_res_3_16,
    result_reg_w_2_hi_lo,result_reg_w_2_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_4_0 = result_reg_w_2[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_1 = result_reg_w_2[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_2 = result_reg_w_2[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_3 = result_reg_w_2[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_4 = result_reg_w_2[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_5 = result_reg_w_2[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_6 = result_reg_w_2[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_7 = result_reg_w_2[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_8 = result_reg_w_2[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_9 = result_reg_w_2[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_10 = result_reg_w_2[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_11 = result_reg_w_2[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_12 = result_reg_w_2[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_13 = result_reg_w_2[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_14 = result_reg_w_2[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_15 = result_reg_w_2[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_17 = result_reg_w_2[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_18 = result_reg_w_2[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_19 = result_reg_w_2[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_20 = result_reg_w_2[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_21 = result_reg_w_2[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_0 = result_reg_r_2[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_1 = result_reg_r_2[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_2 = result_reg_r_2[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_3 = result_reg_r_2[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_4 = result_reg_r_2[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_5 = result_reg_r_2[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_6 = result_reg_r_2[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_7 = result_reg_r_2[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_8 = result_reg_r_2[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_9 = result_reg_r_2[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_10 = result_reg_r_2[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_11 = result_reg_r_2[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_12 = result_reg_r_2[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_13 = result_reg_r_2[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_14 = result_reg_r_2[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_16 = result_reg_r_2[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_17 = result_reg_r_2[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_18 = result_reg_r_2[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_19 = result_reg_r_2[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_20 = result_reg_r_2[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_21 = result_reg_r_2[21]; // @[BinaryDesigns2.scala 192:62]
  wire [36:0] _T_496 = {b_aux_reg_r_2, 15'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [36:0] _GEN_266 = {{15'd0}, a_aux_reg_r_2}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_5_15 = _GEN_266 >= _T_496; // @[BinaryDesigns2.scala 224:35]
  wire [4:0] result_reg_w_3_hi_lo = {wire_res_5_15,wire_res_5_14,wire_res_5_13,wire_res_5_12,wire_res_5_11}; // @[BinaryDesigns2.scala 231:46]
  wire [4:0] result_reg_w_3_lo_lo = {wire_res_5_4,wire_res_5_3,wire_res_5_2,wire_res_5_1,wire_res_5_0}; // @[BinaryDesigns2.scala 231:46]
  wire [10:0] result_reg_w_3_lo = {wire_res_5_10,wire_res_5_9,wire_res_5_8,wire_res_5_7,wire_res_5_6,wire_res_5_5,
    result_reg_w_3_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [21:0] result_reg_w_3 = {wire_res_5_21,wire_res_5_20,wire_res_5_19,wire_res_5_18,wire_res_5_17,wire_res_5_16,
    result_reg_w_3_hi_lo,result_reg_w_3_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_6_0 = result_reg_w_3[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_1 = result_reg_w_3[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_2 = result_reg_w_3[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_3 = result_reg_w_3[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_4 = result_reg_w_3[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_5 = result_reg_w_3[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_6 = result_reg_w_3[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_7 = result_reg_w_3[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_8 = result_reg_w_3[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_9 = result_reg_w_3[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_10 = result_reg_w_3[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_11 = result_reg_w_3[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_12 = result_reg_w_3[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_13 = result_reg_w_3[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_15 = result_reg_w_3[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_16 = result_reg_w_3[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_17 = result_reg_w_3[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_18 = result_reg_w_3[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_19 = result_reg_w_3[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_20 = result_reg_w_3[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_21 = result_reg_w_3[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_0 = result_reg_r_3[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_1 = result_reg_r_3[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_2 = result_reg_r_3[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_3 = result_reg_r_3[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_4 = result_reg_r_3[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_5 = result_reg_r_3[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_6 = result_reg_r_3[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_7 = result_reg_r_3[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_8 = result_reg_r_3[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_9 = result_reg_r_3[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_10 = result_reg_r_3[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_11 = result_reg_r_3[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_12 = result_reg_r_3[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_14 = result_reg_r_3[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_15 = result_reg_r_3[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_16 = result_reg_r_3[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_17 = result_reg_r_3[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_18 = result_reg_r_3[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_19 = result_reg_r_3[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_20 = result_reg_r_3[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_21 = result_reg_r_3[21]; // @[BinaryDesigns2.scala 192:62]
  wire [34:0] _T_500 = {b_aux_reg_r_3, 13'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [34:0] _GEN_267 = {{13'd0}, a_aux_reg_r_3}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_7_13 = _GEN_267 >= _T_500; // @[BinaryDesigns2.scala 224:35]
  wire [4:0] result_reg_w_4_hi_lo = {wire_res_7_15,wire_res_7_14,wire_res_7_13,wire_res_7_12,wire_res_7_11}; // @[BinaryDesigns2.scala 231:46]
  wire [4:0] result_reg_w_4_lo_lo = {wire_res_7_4,wire_res_7_3,wire_res_7_2,wire_res_7_1,wire_res_7_0}; // @[BinaryDesigns2.scala 231:46]
  wire [10:0] result_reg_w_4_lo = {wire_res_7_10,wire_res_7_9,wire_res_7_8,wire_res_7_7,wire_res_7_6,wire_res_7_5,
    result_reg_w_4_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [21:0] result_reg_w_4 = {wire_res_7_21,wire_res_7_20,wire_res_7_19,wire_res_7_18,wire_res_7_17,wire_res_7_16,
    result_reg_w_4_hi_lo,result_reg_w_4_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_8_0 = result_reg_w_4[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_1 = result_reg_w_4[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_2 = result_reg_w_4[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_3 = result_reg_w_4[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_4 = result_reg_w_4[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_5 = result_reg_w_4[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_6 = result_reg_w_4[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_7 = result_reg_w_4[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_8 = result_reg_w_4[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_9 = result_reg_w_4[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_10 = result_reg_w_4[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_11 = result_reg_w_4[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_13 = result_reg_w_4[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_14 = result_reg_w_4[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_15 = result_reg_w_4[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_16 = result_reg_w_4[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_17 = result_reg_w_4[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_18 = result_reg_w_4[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_19 = result_reg_w_4[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_20 = result_reg_w_4[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_21 = result_reg_w_4[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_0 = result_reg_r_4[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_1 = result_reg_r_4[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_2 = result_reg_r_4[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_3 = result_reg_r_4[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_4 = result_reg_r_4[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_5 = result_reg_r_4[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_6 = result_reg_r_4[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_7 = result_reg_r_4[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_8 = result_reg_r_4[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_9 = result_reg_r_4[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_10 = result_reg_r_4[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_12 = result_reg_r_4[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_13 = result_reg_r_4[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_14 = result_reg_r_4[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_15 = result_reg_r_4[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_16 = result_reg_r_4[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_17 = result_reg_r_4[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_18 = result_reg_r_4[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_19 = result_reg_r_4[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_20 = result_reg_r_4[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_21 = result_reg_r_4[21]; // @[BinaryDesigns2.scala 192:62]
  wire [32:0] _T_504 = {b_aux_reg_r_4, 11'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [32:0] _GEN_268 = {{11'd0}, a_aux_reg_r_4}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_9_11 = _GEN_268 >= _T_504; // @[BinaryDesigns2.scala 224:35]
  wire [4:0] result_reg_w_5_hi_lo = {wire_res_9_15,wire_res_9_14,wire_res_9_13,wire_res_9_12,wire_res_9_11}; // @[BinaryDesigns2.scala 231:46]
  wire [4:0] result_reg_w_5_lo_lo = {wire_res_9_4,wire_res_9_3,wire_res_9_2,wire_res_9_1,wire_res_9_0}; // @[BinaryDesigns2.scala 231:46]
  wire [10:0] result_reg_w_5_lo = {wire_res_9_10,wire_res_9_9,wire_res_9_8,wire_res_9_7,wire_res_9_6,wire_res_9_5,
    result_reg_w_5_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [21:0] result_reg_w_5 = {wire_res_9_21,wire_res_9_20,wire_res_9_19,wire_res_9_18,wire_res_9_17,wire_res_9_16,
    result_reg_w_5_hi_lo,result_reg_w_5_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_10_0 = result_reg_w_5[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_1 = result_reg_w_5[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_2 = result_reg_w_5[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_3 = result_reg_w_5[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_4 = result_reg_w_5[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_5 = result_reg_w_5[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_6 = result_reg_w_5[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_7 = result_reg_w_5[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_8 = result_reg_w_5[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_9 = result_reg_w_5[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_11 = result_reg_w_5[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_12 = result_reg_w_5[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_13 = result_reg_w_5[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_14 = result_reg_w_5[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_15 = result_reg_w_5[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_16 = result_reg_w_5[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_17 = result_reg_w_5[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_18 = result_reg_w_5[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_19 = result_reg_w_5[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_20 = result_reg_w_5[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_21 = result_reg_w_5[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_0 = result_reg_r_5[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_1 = result_reg_r_5[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_2 = result_reg_r_5[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_3 = result_reg_r_5[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_4 = result_reg_r_5[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_5 = result_reg_r_5[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_6 = result_reg_r_5[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_7 = result_reg_r_5[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_8 = result_reg_r_5[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_10 = result_reg_r_5[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_11 = result_reg_r_5[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_12 = result_reg_r_5[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_13 = result_reg_r_5[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_14 = result_reg_r_5[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_15 = result_reg_r_5[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_16 = result_reg_r_5[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_17 = result_reg_r_5[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_18 = result_reg_r_5[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_19 = result_reg_r_5[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_20 = result_reg_r_5[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_21 = result_reg_r_5[21]; // @[BinaryDesigns2.scala 192:62]
  wire [4:0] result_reg_w_6_hi_lo = {wire_res_11_15,wire_res_11_14,wire_res_11_13,wire_res_11_12,wire_res_11_11}; // @[BinaryDesigns2.scala 231:46]
  wire [30:0] _T_508 = {b_aux_reg_r_5, 9'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [30:0] _GEN_269 = {{9'd0}, a_aux_reg_r_5}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_11_9 = _GEN_269 >= _T_508; // @[BinaryDesigns2.scala 224:35]
  wire [4:0] result_reg_w_6_lo_lo = {wire_res_11_4,wire_res_11_3,wire_res_11_2,wire_res_11_1,wire_res_11_0}; // @[BinaryDesigns2.scala 231:46]
  wire [10:0] result_reg_w_6_lo = {wire_res_11_10,wire_res_11_9,wire_res_11_8,wire_res_11_7,wire_res_11_6,wire_res_11_5,
    result_reg_w_6_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [21:0] result_reg_w_6 = {wire_res_11_21,wire_res_11_20,wire_res_11_19,wire_res_11_18,wire_res_11_17,
    wire_res_11_16,result_reg_w_6_hi_lo,result_reg_w_6_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_12_0 = result_reg_w_6[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_1 = result_reg_w_6[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_2 = result_reg_w_6[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_3 = result_reg_w_6[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_4 = result_reg_w_6[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_5 = result_reg_w_6[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_6 = result_reg_w_6[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_7 = result_reg_w_6[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_9 = result_reg_w_6[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_10 = result_reg_w_6[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_11 = result_reg_w_6[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_12 = result_reg_w_6[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_13 = result_reg_w_6[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_14 = result_reg_w_6[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_15 = result_reg_w_6[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_16 = result_reg_w_6[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_17 = result_reg_w_6[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_18 = result_reg_w_6[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_19 = result_reg_w_6[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_20 = result_reg_w_6[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_21 = result_reg_w_6[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_0 = result_reg_r_6[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_1 = result_reg_r_6[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_2 = result_reg_r_6[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_3 = result_reg_r_6[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_4 = result_reg_r_6[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_5 = result_reg_r_6[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_6 = result_reg_r_6[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_8 = result_reg_r_6[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_9 = result_reg_r_6[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_10 = result_reg_r_6[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_11 = result_reg_r_6[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_12 = result_reg_r_6[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_13 = result_reg_r_6[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_14 = result_reg_r_6[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_15 = result_reg_r_6[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_16 = result_reg_r_6[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_17 = result_reg_r_6[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_18 = result_reg_r_6[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_19 = result_reg_r_6[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_20 = result_reg_r_6[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_21 = result_reg_r_6[21]; // @[BinaryDesigns2.scala 192:62]
  wire [4:0] result_reg_w_7_hi_lo = {wire_res_13_15,wire_res_13_14,wire_res_13_13,wire_res_13_12,wire_res_13_11}; // @[BinaryDesigns2.scala 231:46]
  wire [28:0] _T_512 = {b_aux_reg_r_6, 7'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [28:0] _GEN_270 = {{7'd0}, a_aux_reg_r_6}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_13_7 = _GEN_270 >= _T_512; // @[BinaryDesigns2.scala 224:35]
  wire [4:0] result_reg_w_7_lo_lo = {wire_res_13_4,wire_res_13_3,wire_res_13_2,wire_res_13_1,wire_res_13_0}; // @[BinaryDesigns2.scala 231:46]
  wire [10:0] result_reg_w_7_lo = {wire_res_13_10,wire_res_13_9,wire_res_13_8,wire_res_13_7,wire_res_13_6,wire_res_13_5,
    result_reg_w_7_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [21:0] result_reg_w_7 = {wire_res_13_21,wire_res_13_20,wire_res_13_19,wire_res_13_18,wire_res_13_17,
    wire_res_13_16,result_reg_w_7_hi_lo,result_reg_w_7_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_14_0 = result_reg_w_7[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_1 = result_reg_w_7[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_2 = result_reg_w_7[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_3 = result_reg_w_7[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_4 = result_reg_w_7[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_5 = result_reg_w_7[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_7 = result_reg_w_7[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_8 = result_reg_w_7[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_9 = result_reg_w_7[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_10 = result_reg_w_7[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_11 = result_reg_w_7[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_12 = result_reg_w_7[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_13 = result_reg_w_7[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_14 = result_reg_w_7[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_15 = result_reg_w_7[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_16 = result_reg_w_7[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_17 = result_reg_w_7[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_18 = result_reg_w_7[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_19 = result_reg_w_7[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_20 = result_reg_w_7[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_21 = result_reg_w_7[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_0 = result_reg_r_7[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_1 = result_reg_r_7[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_2 = result_reg_r_7[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_3 = result_reg_r_7[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_4 = result_reg_r_7[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_6 = result_reg_r_7[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_7 = result_reg_r_7[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_8 = result_reg_r_7[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_9 = result_reg_r_7[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_10 = result_reg_r_7[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_11 = result_reg_r_7[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_12 = result_reg_r_7[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_13 = result_reg_r_7[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_14 = result_reg_r_7[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_15 = result_reg_r_7[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_16 = result_reg_r_7[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_17 = result_reg_r_7[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_18 = result_reg_r_7[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_19 = result_reg_r_7[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_20 = result_reg_r_7[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_21 = result_reg_r_7[21]; // @[BinaryDesigns2.scala 192:62]
  wire [4:0] result_reg_w_8_hi_lo = {wire_res_15_15,wire_res_15_14,wire_res_15_13,wire_res_15_12,wire_res_15_11}; // @[BinaryDesigns2.scala 231:46]
  wire [26:0] _T_516 = {b_aux_reg_r_7, 5'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [26:0] _GEN_271 = {{5'd0}, a_aux_reg_r_7}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_15_5 = _GEN_271 >= _T_516; // @[BinaryDesigns2.scala 224:35]
  wire [4:0] result_reg_w_8_lo_lo = {wire_res_15_4,wire_res_15_3,wire_res_15_2,wire_res_15_1,wire_res_15_0}; // @[BinaryDesigns2.scala 231:46]
  wire [10:0] result_reg_w_8_lo = {wire_res_15_10,wire_res_15_9,wire_res_15_8,wire_res_15_7,wire_res_15_6,wire_res_15_5,
    result_reg_w_8_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [21:0] result_reg_w_8 = {wire_res_15_21,wire_res_15_20,wire_res_15_19,wire_res_15_18,wire_res_15_17,
    wire_res_15_16,result_reg_w_8_hi_lo,result_reg_w_8_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_16_0 = result_reg_w_8[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_1 = result_reg_w_8[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_2 = result_reg_w_8[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_3 = result_reg_w_8[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_5 = result_reg_w_8[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_6 = result_reg_w_8[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_7 = result_reg_w_8[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_8 = result_reg_w_8[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_9 = result_reg_w_8[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_10 = result_reg_w_8[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_11 = result_reg_w_8[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_12 = result_reg_w_8[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_13 = result_reg_w_8[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_14 = result_reg_w_8[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_15 = result_reg_w_8[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_16 = result_reg_w_8[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_17 = result_reg_w_8[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_18 = result_reg_w_8[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_19 = result_reg_w_8[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_20 = result_reg_w_8[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_21 = result_reg_w_8[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_0 = result_reg_r_8[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_1 = result_reg_r_8[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_2 = result_reg_r_8[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_4 = result_reg_r_8[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_5 = result_reg_r_8[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_6 = result_reg_r_8[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_7 = result_reg_r_8[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_8 = result_reg_r_8[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_9 = result_reg_r_8[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_10 = result_reg_r_8[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_11 = result_reg_r_8[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_12 = result_reg_r_8[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_13 = result_reg_r_8[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_14 = result_reg_r_8[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_15 = result_reg_r_8[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_16 = result_reg_r_8[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_17 = result_reg_r_8[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_18 = result_reg_r_8[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_19 = result_reg_r_8[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_20 = result_reg_r_8[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_21 = result_reg_r_8[21]; // @[BinaryDesigns2.scala 192:62]
  wire [4:0] result_reg_w_9_hi_lo = {wire_res_17_15,wire_res_17_14,wire_res_17_13,wire_res_17_12,wire_res_17_11}; // @[BinaryDesigns2.scala 231:46]
  wire [24:0] _T_520 = {b_aux_reg_r_8, 3'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [24:0] _GEN_272 = {{3'd0}, a_aux_reg_r_8}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_17_3 = _GEN_272 >= _T_520; // @[BinaryDesigns2.scala 224:35]
  wire [4:0] result_reg_w_9_lo_lo = {wire_res_17_4,wire_res_17_3,wire_res_17_2,wire_res_17_1,wire_res_17_0}; // @[BinaryDesigns2.scala 231:46]
  wire [10:0] result_reg_w_9_lo = {wire_res_17_10,wire_res_17_9,wire_res_17_8,wire_res_17_7,wire_res_17_6,wire_res_17_5,
    result_reg_w_9_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [21:0] result_reg_w_9 = {wire_res_17_21,wire_res_17_20,wire_res_17_19,wire_res_17_18,wire_res_17_17,
    wire_res_17_16,result_reg_w_9_hi_lo,result_reg_w_9_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_18_0 = result_reg_w_9[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_1 = result_reg_w_9[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_3 = result_reg_w_9[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_4 = result_reg_w_9[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_5 = result_reg_w_9[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_6 = result_reg_w_9[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_7 = result_reg_w_9[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_8 = result_reg_w_9[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_9 = result_reg_w_9[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_10 = result_reg_w_9[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_11 = result_reg_w_9[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_12 = result_reg_w_9[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_13 = result_reg_w_9[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_14 = result_reg_w_9[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_15 = result_reg_w_9[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_16 = result_reg_w_9[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_17 = result_reg_w_9[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_18 = result_reg_w_9[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_19 = result_reg_w_9[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_20 = result_reg_w_9[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_21 = result_reg_w_9[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_0 = result_reg_r_9[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_2 = result_reg_r_9[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_3 = result_reg_r_9[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_4 = result_reg_r_9[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_5 = result_reg_r_9[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_6 = result_reg_r_9[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_7 = result_reg_r_9[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_8 = result_reg_r_9[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_9 = result_reg_r_9[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_10 = result_reg_r_9[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_11 = result_reg_r_9[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_12 = result_reg_r_9[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_13 = result_reg_r_9[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_14 = result_reg_r_9[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_15 = result_reg_r_9[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_16 = result_reg_r_9[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_17 = result_reg_r_9[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_18 = result_reg_r_9[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_19 = result_reg_r_9[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_20 = result_reg_r_9[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_21 = result_reg_r_9[21]; // @[BinaryDesigns2.scala 192:62]
  wire [4:0] result_reg_w_10_hi_lo = {wire_res_19_15,wire_res_19_14,wire_res_19_13,wire_res_19_12,wire_res_19_11}; // @[BinaryDesigns2.scala 231:46]
  wire [22:0] _T_524 = {b_aux_reg_r_9, 1'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [22:0] _GEN_273 = {{1'd0}, a_aux_reg_r_9}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_19_1 = _GEN_273 >= _T_524; // @[BinaryDesigns2.scala 224:35]
  wire [4:0] result_reg_w_10_lo_lo = {wire_res_19_4,wire_res_19_3,wire_res_19_2,wire_res_19_1,wire_res_19_0}; // @[BinaryDesigns2.scala 231:46]
  wire [10:0] result_reg_w_10_lo = {wire_res_19_10,wire_res_19_9,wire_res_19_8,wire_res_19_7,wire_res_19_6,wire_res_19_5
    ,result_reg_w_10_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [21:0] result_reg_w_10 = {wire_res_19_21,wire_res_19_20,wire_res_19_19,wire_res_19_18,wire_res_19_17,
    wire_res_19_16,result_reg_w_10_hi_lo,result_reg_w_10_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_20_1 = result_reg_w_10[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_2 = result_reg_w_10[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_3 = result_reg_w_10[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_4 = result_reg_w_10[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_5 = result_reg_w_10[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_6 = result_reg_w_10[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_7 = result_reg_w_10[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_8 = result_reg_w_10[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_9 = result_reg_w_10[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_10 = result_reg_w_10[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_11 = result_reg_w_10[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_12 = result_reg_w_10[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_13 = result_reg_w_10[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_14 = result_reg_w_10[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_15 = result_reg_w_10[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_16 = result_reg_w_10[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_17 = result_reg_w_10[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_18 = result_reg_w_10[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_19 = result_reg_w_10[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_20 = result_reg_w_10[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_21 = result_reg_w_10[21]; // @[BinaryDesigns2.scala 192:62]
  wire [42:0] _GEN_274 = {{21'd0}, io_in_a}; // @[BinaryDesigns2.scala 211:39]
  wire [21:0] a_aux_reg_w_0 = _GEN_274[21:0]; // @[BinaryDesigns2.scala 169:27]
  wire [41:0] _GEN_275 = {{20'd0}, a_aux_reg_w_0}; // @[BinaryDesigns2.scala 225:48]
  wire [40:0] _a_aux_reg_w_1_T_2 = _GEN_264 - _T_488; // @[BinaryDesigns2.scala 225:48]
  wire [40:0] _GEN_4 = wire_res_1_19 ? _a_aux_reg_w_1_T_2 : {{19'd0}, a_aux_reg_r_0}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [39:0] _T_490 = {b_aux_reg_r_0, 18'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [21:0] a_aux_reg_w_1 = _GEN_4[21:0]; // @[BinaryDesigns2.scala 169:27]
  wire [39:0] _GEN_277 = {{18'd0}, a_aux_reg_w_1}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_2_18 = _GEN_277 >= _T_490; // @[BinaryDesigns2.scala 224:35]
  wire [39:0] _a_aux_reg_r_1_T_2 = _GEN_277 - _T_490; // @[BinaryDesigns2.scala 225:48]
  wire [39:0] _GEN_6 = wire_res_2_18 ? _a_aux_reg_r_1_T_2 : {{18'd0}, a_aux_reg_w_1}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [4:0] result_reg_r_1_lo_lo = {wire_res_2_4,wire_res_2_3,wire_res_2_2,wire_res_2_1,wire_res_2_0}; // @[BinaryDesigns2.scala 231:46]
  wire [10:0] result_reg_r_1_lo = {wire_res_2_10,wire_res_2_9,wire_res_2_8,wire_res_2_7,wire_res_2_6,wire_res_2_5,
    result_reg_r_1_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [4:0] result_reg_r_1_hi_lo = {wire_res_2_15,wire_res_2_14,wire_res_2_13,wire_res_2_12,wire_res_2_11}; // @[BinaryDesigns2.scala 231:46]
  wire [21:0] _result_reg_r_1_T = {wire_res_2_21,wire_res_2_20,wire_res_2_19,wire_res_2_18,wire_res_2_17,wire_res_2_16,
    result_reg_r_1_hi_lo,result_reg_r_1_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [38:0] _a_aux_reg_w_2_T_2 = _GEN_265 - _T_492; // @[BinaryDesigns2.scala 225:48]
  wire [38:0] _GEN_8 = wire_res_3_17 ? _a_aux_reg_w_2_T_2 : {{17'd0}, a_aux_reg_r_1}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [37:0] _T_494 = {b_aux_reg_r_1, 16'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [21:0] a_aux_reg_w_2 = _GEN_8[21:0]; // @[BinaryDesigns2.scala 169:27]
  wire [37:0] _GEN_280 = {{16'd0}, a_aux_reg_w_2}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_4_16 = _GEN_280 >= _T_494; // @[BinaryDesigns2.scala 224:35]
  wire [37:0] _a_aux_reg_r_2_T_2 = _GEN_280 - _T_494; // @[BinaryDesigns2.scala 225:48]
  wire [37:0] _GEN_10 = wire_res_4_16 ? _a_aux_reg_r_2_T_2 : {{16'd0}, a_aux_reg_w_2}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [4:0] result_reg_r_2_lo_lo = {wire_res_4_4,wire_res_4_3,wire_res_4_2,wire_res_4_1,wire_res_4_0}; // @[BinaryDesigns2.scala 231:46]
  wire [10:0] result_reg_r_2_lo = {wire_res_4_10,wire_res_4_9,wire_res_4_8,wire_res_4_7,wire_res_4_6,wire_res_4_5,
    result_reg_r_2_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [4:0] result_reg_r_2_hi_lo = {wire_res_4_15,wire_res_4_14,wire_res_4_13,wire_res_4_12,wire_res_4_11}; // @[BinaryDesigns2.scala 231:46]
  wire [21:0] _result_reg_r_2_T = {wire_res_4_21,wire_res_4_20,wire_res_4_19,wire_res_4_18,wire_res_4_17,wire_res_4_16,
    result_reg_r_2_hi_lo,result_reg_r_2_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [36:0] _a_aux_reg_w_3_T_2 = _GEN_266 - _T_496; // @[BinaryDesigns2.scala 225:48]
  wire [36:0] _GEN_12 = wire_res_5_15 ? _a_aux_reg_w_3_T_2 : {{15'd0}, a_aux_reg_r_2}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [35:0] _T_498 = {b_aux_reg_r_2, 14'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [21:0] a_aux_reg_w_3 = _GEN_12[21:0]; // @[BinaryDesigns2.scala 169:27]
  wire [35:0] _GEN_283 = {{14'd0}, a_aux_reg_w_3}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_6_14 = _GEN_283 >= _T_498; // @[BinaryDesigns2.scala 224:35]
  wire [35:0] _a_aux_reg_r_3_T_2 = _GEN_283 - _T_498; // @[BinaryDesigns2.scala 225:48]
  wire [35:0] _GEN_14 = wire_res_6_14 ? _a_aux_reg_r_3_T_2 : {{14'd0}, a_aux_reg_w_3}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [4:0] result_reg_r_3_lo_lo = {wire_res_6_4,wire_res_6_3,wire_res_6_2,wire_res_6_1,wire_res_6_0}; // @[BinaryDesigns2.scala 231:46]
  wire [10:0] result_reg_r_3_lo = {wire_res_6_10,wire_res_6_9,wire_res_6_8,wire_res_6_7,wire_res_6_6,wire_res_6_5,
    result_reg_r_3_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [4:0] result_reg_r_3_hi_lo = {wire_res_6_15,wire_res_6_14,wire_res_6_13,wire_res_6_12,wire_res_6_11}; // @[BinaryDesigns2.scala 231:46]
  wire [21:0] _result_reg_r_3_T = {wire_res_6_21,wire_res_6_20,wire_res_6_19,wire_res_6_18,wire_res_6_17,wire_res_6_16,
    result_reg_r_3_hi_lo,result_reg_r_3_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [34:0] _a_aux_reg_w_4_T_2 = _GEN_267 - _T_500; // @[BinaryDesigns2.scala 225:48]
  wire [34:0] _GEN_16 = wire_res_7_13 ? _a_aux_reg_w_4_T_2 : {{13'd0}, a_aux_reg_r_3}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [33:0] _T_502 = {b_aux_reg_r_3, 12'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [21:0] a_aux_reg_w_4 = _GEN_16[21:0]; // @[BinaryDesigns2.scala 169:27]
  wire [33:0] _GEN_286 = {{12'd0}, a_aux_reg_w_4}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_8_12 = _GEN_286 >= _T_502; // @[BinaryDesigns2.scala 224:35]
  wire [33:0] _a_aux_reg_r_4_T_2 = _GEN_286 - _T_502; // @[BinaryDesigns2.scala 225:48]
  wire [33:0] _GEN_18 = wire_res_8_12 ? _a_aux_reg_r_4_T_2 : {{12'd0}, a_aux_reg_w_4}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [4:0] result_reg_r_4_lo_lo = {wire_res_8_4,wire_res_8_3,wire_res_8_2,wire_res_8_1,wire_res_8_0}; // @[BinaryDesigns2.scala 231:46]
  wire [10:0] result_reg_r_4_lo = {wire_res_8_10,wire_res_8_9,wire_res_8_8,wire_res_8_7,wire_res_8_6,wire_res_8_5,
    result_reg_r_4_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [4:0] result_reg_r_4_hi_lo = {wire_res_8_15,wire_res_8_14,wire_res_8_13,wire_res_8_12,wire_res_8_11}; // @[BinaryDesigns2.scala 231:46]
  wire [21:0] _result_reg_r_4_T = {wire_res_8_21,wire_res_8_20,wire_res_8_19,wire_res_8_18,wire_res_8_17,wire_res_8_16,
    result_reg_r_4_hi_lo,result_reg_r_4_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [32:0] _a_aux_reg_w_5_T_2 = _GEN_268 - _T_504; // @[BinaryDesigns2.scala 225:48]
  wire [32:0] _GEN_20 = wire_res_9_11 ? _a_aux_reg_w_5_T_2 : {{11'd0}, a_aux_reg_r_4}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [31:0] _T_506 = {b_aux_reg_r_4, 10'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [21:0] a_aux_reg_w_5 = _GEN_20[21:0]; // @[BinaryDesigns2.scala 169:27]
  wire [31:0] _GEN_289 = {{10'd0}, a_aux_reg_w_5}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_10_10 = _GEN_289 >= _T_506; // @[BinaryDesigns2.scala 224:35]
  wire [31:0] _a_aux_reg_r_5_T_2 = _GEN_289 - _T_506; // @[BinaryDesigns2.scala 225:48]
  wire [31:0] _GEN_22 = wire_res_10_10 ? _a_aux_reg_r_5_T_2 : {{10'd0}, a_aux_reg_w_5}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [4:0] result_reg_r_5_lo_lo = {wire_res_10_4,wire_res_10_3,wire_res_10_2,wire_res_10_1,wire_res_10_0}; // @[BinaryDesigns2.scala 231:46]
  wire [10:0] result_reg_r_5_lo = {wire_res_10_10,wire_res_10_9,wire_res_10_8,wire_res_10_7,wire_res_10_6,wire_res_10_5,
    result_reg_r_5_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [4:0] result_reg_r_5_hi_lo = {wire_res_10_15,wire_res_10_14,wire_res_10_13,wire_res_10_12,wire_res_10_11}; // @[BinaryDesigns2.scala 231:46]
  wire [21:0] _result_reg_r_5_T = {wire_res_10_21,wire_res_10_20,wire_res_10_19,wire_res_10_18,wire_res_10_17,
    wire_res_10_16,result_reg_r_5_hi_lo,result_reg_r_5_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [30:0] _a_aux_reg_w_6_T_2 = _GEN_269 - _T_508; // @[BinaryDesigns2.scala 225:48]
  wire [30:0] _GEN_24 = wire_res_11_9 ? _a_aux_reg_w_6_T_2 : {{9'd0}, a_aux_reg_r_5}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [29:0] _T_510 = {b_aux_reg_r_5, 8'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [21:0] a_aux_reg_w_6 = _GEN_24[21:0]; // @[BinaryDesigns2.scala 169:27]
  wire [29:0] _GEN_292 = {{8'd0}, a_aux_reg_w_6}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_12_8 = _GEN_292 >= _T_510; // @[BinaryDesigns2.scala 224:35]
  wire [29:0] _a_aux_reg_r_6_T_2 = _GEN_292 - _T_510; // @[BinaryDesigns2.scala 225:48]
  wire [29:0] _GEN_26 = wire_res_12_8 ? _a_aux_reg_r_6_T_2 : {{8'd0}, a_aux_reg_w_6}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [4:0] result_reg_r_6_lo_lo = {wire_res_12_4,wire_res_12_3,wire_res_12_2,wire_res_12_1,wire_res_12_0}; // @[BinaryDesigns2.scala 231:46]
  wire [10:0] result_reg_r_6_lo = {wire_res_12_10,wire_res_12_9,wire_res_12_8,wire_res_12_7,wire_res_12_6,wire_res_12_5,
    result_reg_r_6_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [4:0] result_reg_r_6_hi_lo = {wire_res_12_15,wire_res_12_14,wire_res_12_13,wire_res_12_12,wire_res_12_11}; // @[BinaryDesigns2.scala 231:46]
  wire [21:0] _result_reg_r_6_T = {wire_res_12_21,wire_res_12_20,wire_res_12_19,wire_res_12_18,wire_res_12_17,
    wire_res_12_16,result_reg_r_6_hi_lo,result_reg_r_6_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [28:0] _a_aux_reg_w_7_T_2 = _GEN_270 - _T_512; // @[BinaryDesigns2.scala 225:48]
  wire [28:0] _GEN_28 = wire_res_13_7 ? _a_aux_reg_w_7_T_2 : {{7'd0}, a_aux_reg_r_6}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [27:0] _T_514 = {b_aux_reg_r_6, 6'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [21:0] a_aux_reg_w_7 = _GEN_28[21:0]; // @[BinaryDesigns2.scala 169:27]
  wire [27:0] _GEN_295 = {{6'd0}, a_aux_reg_w_7}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_14_6 = _GEN_295 >= _T_514; // @[BinaryDesigns2.scala 224:35]
  wire [27:0] _a_aux_reg_r_7_T_2 = _GEN_295 - _T_514; // @[BinaryDesigns2.scala 225:48]
  wire [27:0] _GEN_30 = wire_res_14_6 ? _a_aux_reg_r_7_T_2 : {{6'd0}, a_aux_reg_w_7}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [4:0] result_reg_r_7_lo_lo = {wire_res_14_4,wire_res_14_3,wire_res_14_2,wire_res_14_1,wire_res_14_0}; // @[BinaryDesigns2.scala 231:46]
  wire [10:0] result_reg_r_7_lo = {wire_res_14_10,wire_res_14_9,wire_res_14_8,wire_res_14_7,wire_res_14_6,wire_res_14_5,
    result_reg_r_7_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [4:0] result_reg_r_7_hi_lo = {wire_res_14_15,wire_res_14_14,wire_res_14_13,wire_res_14_12,wire_res_14_11}; // @[BinaryDesigns2.scala 231:46]
  wire [21:0] _result_reg_r_7_T = {wire_res_14_21,wire_res_14_20,wire_res_14_19,wire_res_14_18,wire_res_14_17,
    wire_res_14_16,result_reg_r_7_hi_lo,result_reg_r_7_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [26:0] _a_aux_reg_w_8_T_2 = _GEN_271 - _T_516; // @[BinaryDesigns2.scala 225:48]
  wire [26:0] _GEN_32 = wire_res_15_5 ? _a_aux_reg_w_8_T_2 : {{5'd0}, a_aux_reg_r_7}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [25:0] _T_518 = {b_aux_reg_r_7, 4'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [21:0] a_aux_reg_w_8 = _GEN_32[21:0]; // @[BinaryDesigns2.scala 169:27]
  wire [25:0] _GEN_298 = {{4'd0}, a_aux_reg_w_8}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_16_4 = _GEN_298 >= _T_518; // @[BinaryDesigns2.scala 224:35]
  wire [25:0] _a_aux_reg_r_8_T_2 = _GEN_298 - _T_518; // @[BinaryDesigns2.scala 225:48]
  wire [25:0] _GEN_34 = wire_res_16_4 ? _a_aux_reg_r_8_T_2 : {{4'd0}, a_aux_reg_w_8}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [4:0] result_reg_r_8_lo_lo = {wire_res_16_4,wire_res_16_3,wire_res_16_2,wire_res_16_1,wire_res_16_0}; // @[BinaryDesigns2.scala 231:46]
  wire [10:0] result_reg_r_8_lo = {wire_res_16_10,wire_res_16_9,wire_res_16_8,wire_res_16_7,wire_res_16_6,wire_res_16_5,
    result_reg_r_8_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [4:0] result_reg_r_8_hi_lo = {wire_res_16_15,wire_res_16_14,wire_res_16_13,wire_res_16_12,wire_res_16_11}; // @[BinaryDesigns2.scala 231:46]
  wire [21:0] _result_reg_r_8_T = {wire_res_16_21,wire_res_16_20,wire_res_16_19,wire_res_16_18,wire_res_16_17,
    wire_res_16_16,result_reg_r_8_hi_lo,result_reg_r_8_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [24:0] _a_aux_reg_w_9_T_2 = _GEN_272 - _T_520; // @[BinaryDesigns2.scala 225:48]
  wire [24:0] _GEN_36 = wire_res_17_3 ? _a_aux_reg_w_9_T_2 : {{3'd0}, a_aux_reg_r_8}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [23:0] _T_522 = {b_aux_reg_r_8, 2'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [21:0] a_aux_reg_w_9 = _GEN_36[21:0]; // @[BinaryDesigns2.scala 169:27]
  wire [23:0] _GEN_301 = {{2'd0}, a_aux_reg_w_9}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_18_2 = _GEN_301 >= _T_522; // @[BinaryDesigns2.scala 224:35]
  wire [23:0] _a_aux_reg_r_9_T_2 = _GEN_301 - _T_522; // @[BinaryDesigns2.scala 225:48]
  wire [23:0] _GEN_38 = wire_res_18_2 ? _a_aux_reg_r_9_T_2 : {{2'd0}, a_aux_reg_w_9}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [4:0] result_reg_r_9_lo_lo = {wire_res_18_4,wire_res_18_3,wire_res_18_2,wire_res_18_1,wire_res_18_0}; // @[BinaryDesigns2.scala 231:46]
  wire [10:0] result_reg_r_9_lo = {wire_res_18_10,wire_res_18_9,wire_res_18_8,wire_res_18_7,wire_res_18_6,wire_res_18_5,
    result_reg_r_9_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [4:0] result_reg_r_9_hi_lo = {wire_res_18_15,wire_res_18_14,wire_res_18_13,wire_res_18_12,wire_res_18_11}; // @[BinaryDesigns2.scala 231:46]
  wire [21:0] _result_reg_r_9_T = {wire_res_18_21,wire_res_18_20,wire_res_18_19,wire_res_18_18,wire_res_18_17,
    wire_res_18_16,result_reg_r_9_hi_lo,result_reg_r_9_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [22:0] _a_aux_reg_w_10_T_2 = _GEN_273 - _T_524; // @[BinaryDesigns2.scala 225:48]
  wire [22:0] _GEN_40 = wire_res_19_1 ? _a_aux_reg_w_10_T_2 : {{1'd0}, a_aux_reg_r_9}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [21:0] a_aux_reg_w_10 = _GEN_40[21:0]; // @[BinaryDesigns2.scala 169:27]
  wire  wire_res_20_0 = a_aux_reg_w_10 >= b_aux_reg_r_9; // @[BinaryDesigns2.scala 224:35]
  wire [4:0] result_reg_r_10_lo_lo = {wire_res_20_4,wire_res_20_3,wire_res_20_2,wire_res_20_1,wire_res_20_0}; // @[BinaryDesigns2.scala 231:46]
  wire [10:0] result_reg_r_10_lo = {wire_res_20_10,wire_res_20_9,wire_res_20_8,wire_res_20_7,wire_res_20_6,wire_res_20_5
    ,result_reg_r_10_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [4:0] result_reg_r_10_hi_lo = {wire_res_20_15,wire_res_20_14,wire_res_20_13,wire_res_20_12,wire_res_20_11}; // @[BinaryDesigns2.scala 231:46]
  wire [21:0] _result_reg_r_10_T = {wire_res_20_21,wire_res_20_20,wire_res_20_19,wire_res_20_18,wire_res_20_17,
    wire_res_20_16,result_reg_r_10_hi_lo,result_reg_r_10_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [41:0] _GEN_304 = reset ? 42'h0 : _GEN_275; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [39:0] _GEN_305 = reset ? 40'h0 : _GEN_6; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [37:0] _GEN_306 = reset ? 38'h0 : _GEN_10; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [35:0] _GEN_307 = reset ? 36'h0 : _GEN_14; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [33:0] _GEN_308 = reset ? 34'h0 : _GEN_18; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [31:0] _GEN_309 = reset ? 32'h0 : _GEN_22; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [29:0] _GEN_310 = reset ? 30'h0 : _GEN_26; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [27:0] _GEN_311 = reset ? 28'h0 : _GEN_30; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [25:0] _GEN_312 = reset ? 26'h0 : _GEN_34; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [23:0] _GEN_313 = reset ? 24'h0 : _GEN_38; // @[BinaryDesigns2.scala 171:{30,30}]
  assign io_out_s = result_reg_r_10; // @[BinaryDesigns2.scala 195:14]
  always @(posedge clock) begin
    a_aux_reg_r_0 <= _GEN_304[21:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_1 <= _GEN_305[21:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_2 <= _GEN_306[21:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_3 <= _GEN_307[21:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_4 <= _GEN_308[21:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_5 <= _GEN_309[21:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_6 <= _GEN_310[21:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_7 <= _GEN_311[21:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_8 <= _GEN_312[21:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_9 <= _GEN_313[21:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_0 <= 22'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_0 <= 22'h648;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_1 <= 22'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_1 <= b_aux_reg_r_0;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_2 <= 22'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_2 <= b_aux_reg_r_1;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_3 <= 22'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_3 <= b_aux_reg_r_2;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_4 <= 22'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_4 <= b_aux_reg_r_3;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_5 <= 22'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_5 <= b_aux_reg_r_4;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_6 <= 22'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_6 <= b_aux_reg_r_5;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_7 <= 22'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_7 <= b_aux_reg_r_6;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_8 <= 22'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_8 <= b_aux_reg_r_7;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_9 <= 22'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_9 <= b_aux_reg_r_8;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_1 <= 22'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_1 <= _result_reg_r_1_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_2 <= 22'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_2 <= _result_reg_r_2_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_3 <= 22'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_3 <= _result_reg_r_3_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_4 <= 22'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_4 <= _result_reg_r_4_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_5 <= 22'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_5 <= _result_reg_r_5_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_6 <= 22'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_6 <= _result_reg_r_6_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_7 <= 22'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_7 <= _result_reg_r_7_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_8 <= 22'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_8 <= _result_reg_r_8_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_9 <= 22'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_9 <= _result_reg_r_9_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_10 <= 22'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_10 <= _result_reg_r_10_T;
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
  a_aux_reg_r_0 = _RAND_0[21:0];
  _RAND_1 = {1{`RANDOM}};
  a_aux_reg_r_1 = _RAND_1[21:0];
  _RAND_2 = {1{`RANDOM}};
  a_aux_reg_r_2 = _RAND_2[21:0];
  _RAND_3 = {1{`RANDOM}};
  a_aux_reg_r_3 = _RAND_3[21:0];
  _RAND_4 = {1{`RANDOM}};
  a_aux_reg_r_4 = _RAND_4[21:0];
  _RAND_5 = {1{`RANDOM}};
  a_aux_reg_r_5 = _RAND_5[21:0];
  _RAND_6 = {1{`RANDOM}};
  a_aux_reg_r_6 = _RAND_6[21:0];
  _RAND_7 = {1{`RANDOM}};
  a_aux_reg_r_7 = _RAND_7[21:0];
  _RAND_8 = {1{`RANDOM}};
  a_aux_reg_r_8 = _RAND_8[21:0];
  _RAND_9 = {1{`RANDOM}};
  a_aux_reg_r_9 = _RAND_9[21:0];
  _RAND_10 = {1{`RANDOM}};
  b_aux_reg_r_0 = _RAND_10[21:0];
  _RAND_11 = {1{`RANDOM}};
  b_aux_reg_r_1 = _RAND_11[21:0];
  _RAND_12 = {1{`RANDOM}};
  b_aux_reg_r_2 = _RAND_12[21:0];
  _RAND_13 = {1{`RANDOM}};
  b_aux_reg_r_3 = _RAND_13[21:0];
  _RAND_14 = {1{`RANDOM}};
  b_aux_reg_r_4 = _RAND_14[21:0];
  _RAND_15 = {1{`RANDOM}};
  b_aux_reg_r_5 = _RAND_15[21:0];
  _RAND_16 = {1{`RANDOM}};
  b_aux_reg_r_6 = _RAND_16[21:0];
  _RAND_17 = {1{`RANDOM}};
  b_aux_reg_r_7 = _RAND_17[21:0];
  _RAND_18 = {1{`RANDOM}};
  b_aux_reg_r_8 = _RAND_18[21:0];
  _RAND_19 = {1{`RANDOM}};
  b_aux_reg_r_9 = _RAND_19[21:0];
  _RAND_20 = {1{`RANDOM}};
  result_reg_r_1 = _RAND_20[21:0];
  _RAND_21 = {1{`RANDOM}};
  result_reg_r_2 = _RAND_21[21:0];
  _RAND_22 = {1{`RANDOM}};
  result_reg_r_3 = _RAND_22[21:0];
  _RAND_23 = {1{`RANDOM}};
  result_reg_r_4 = _RAND_23[21:0];
  _RAND_24 = {1{`RANDOM}};
  result_reg_r_5 = _RAND_24[21:0];
  _RAND_25 = {1{`RANDOM}};
  result_reg_r_6 = _RAND_25[21:0];
  _RAND_26 = {1{`RANDOM}};
  result_reg_r_7 = _RAND_26[21:0];
  _RAND_27 = {1{`RANDOM}};
  result_reg_r_8 = _RAND_27[21:0];
  _RAND_28 = {1{`RANDOM}};
  result_reg_r_9 = _RAND_28[21:0];
  _RAND_29 = {1{`RANDOM}};
  result_reg_r_10 = _RAND_29[21:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

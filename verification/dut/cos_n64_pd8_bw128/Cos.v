module Cos(
  input          clock,
  input          reset,
  input  [127:0] io_in,
  input          io_ready,
  output [127:0] io_out,
  output         io_valid
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
  reg [127:0] _RAND_130;
  reg [127:0] _RAND_131;
  reg [127:0] _RAND_132;
  reg [127:0] _RAND_133;
  reg [127:0] _RAND_134;
  reg [127:0] _RAND_135;
  reg [127:0] _RAND_136;
  reg [127:0] _RAND_137;
  reg [127:0] _RAND_138;
  reg [127:0] _RAND_139;
  reg [127:0] _RAND_140;
  reg [127:0] _RAND_141;
  reg [127:0] _RAND_142;
  reg [127:0] _RAND_143;
  reg [127:0] _RAND_144;
  reg [127:0] _RAND_145;
  reg [127:0] _RAND_146;
  reg [127:0] _RAND_147;
  reg [127:0] _RAND_148;
  reg [127:0] _RAND_149;
  reg [127:0] _RAND_150;
  reg [127:0] _RAND_151;
  reg [127:0] _RAND_152;
  reg [127:0] _RAND_153;
  reg [127:0] _RAND_154;
  reg [127:0] _RAND_155;
  reg [127:0] _RAND_156;
`endif // RANDOMIZE_REG_INIT
  wire  reducer_clock; // @[Cos.scala 24:31]
  wire  reducer_reset; // @[Cos.scala 24:31]
  wire [127:0] reducer_io_in; // @[Cos.scala 24:31]
  wire [127:0] reducer_io_out; // @[Cos.scala 24:31]
  wire [127:0] tofixedz0_io_in; // @[Cos.scala 151:27]
  wire [127:0] tofixedz0_io_out; // @[Cos.scala 151:27]
  wire  cordic_clock; // @[Cos.scala 154:24]
  wire  cordic_reset; // @[Cos.scala 154:24]
  wire [127:0] cordic_io_in_z0; // @[Cos.scala 154:24]
  wire [127:0] cordic_io_in_mode; // @[Cos.scala 154:24]
  wire [127:0] cordic_io_out_x; // @[Cos.scala 154:24]
  wire [1:0] cordic_io_out_mode; // @[Cos.scala 154:24]
  wire [127:0] _theta_T_5 = $signed(tofixedz0_io_out) + 128'sh6487ed5110bba8000; // @[Cos.scala 157:76]
  wire [127:0] theta = $signed(tofixedz0_io_out) < 128'sh0 ? $signed(_theta_T_5) : $signed(tofixedz0_io_out); // @[Cos.scala 157:20]
  wire [127:0] _cordic_io_in_z0_T_3 = $signed(theta) - 128'sh6487ed5110bba8000; // @[Cos.scala 161:43]
  wire  _T_3 = $signed(theta) >= 128'sh1921fb5443d6f4000 & $signed(theta) < 128'sh4b65f1fccc34c8000; // @[Cos.scala 162:36]
  wire [127:0] _cordic_io_in_z0_T_7 = 128'sh3243f6a8885dd4000 - $signed(theta); // @[Cos.scala 164:39]
  wire [127:0] _cordic_io_in_z0_T_8 = $signed(tofixedz0_io_out) < 128'sh0 ? $signed(_theta_T_5) : $signed(
    tofixedz0_io_out); // @[Cos.scala 166:32]
  wire [127:0] _GEN_1 = $signed(theta) >= 128'sh1921fb5443d6f4000 & $signed(theta) < 128'sh4b65f1fccc34c8000 ?
    _cordic_io_in_z0_T_7 : _cordic_io_in_z0_T_8; // @[Cos.scala 162:65 164:23 166:23]
  wire [1:0] _GEN_2 = $signed(theta) >= 128'sh4b65f1fccc34c8000 ? 2'h2 : {{1'd0}, _T_3}; // @[Cos.scala 159:37 160:25]
  wire  _io_out_T_1 = ~cordic_io_out_x[127]; // @[Cos.scala 173:17]
  wire [127:0] _io_out_T_3 = {_io_out_T_1,cordic_io_out_x[126:0]}; // @[Cos.scala 173:39]
  wire [127:0] _GEN_4 = cordic_io_out_mode == 2'h1 ? _io_out_T_3 : cordic_io_out_x; // @[Cos.scala 172:33 173:14 175:14]
  reg [127:0] shift_reg_0; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_1; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_2; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_3; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_4; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_5; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_6; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_7; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_8; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_9; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_10; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_11; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_12; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_13; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_14; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_15; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_16; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_17; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_18; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_19; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_20; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_21; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_22; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_23; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_24; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_25; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_26; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_27; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_28; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_29; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_30; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_31; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_32; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_33; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_34; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_35; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_36; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_37; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_38; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_39; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_40; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_41; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_42; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_43; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_44; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_45; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_46; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_47; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_48; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_49; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_50; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_51; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_52; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_53; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_54; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_55; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_56; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_57; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_58; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_59; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_60; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_61; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_62; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_63; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_64; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_65; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_66; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_67; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_68; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_69; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_70; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_71; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_72; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_73; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_74; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_75; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_76; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_77; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_78; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_79; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_80; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_81; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_82; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_83; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_84; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_85; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_86; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_87; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_88; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_89; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_90; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_91; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_92; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_93; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_94; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_95; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_96; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_97; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_98; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_99; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_100; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_101; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_102; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_103; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_104; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_105; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_106; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_107; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_108; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_109; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_110; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_111; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_112; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_113; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_114; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_115; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_116; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_117; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_118; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_119; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_120; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_121; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_122; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_123; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_124; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_125; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_126; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_127; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_128; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_129; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_130; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_131; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_132; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_133; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_134; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_135; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_136; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_137; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_138; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_139; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_140; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_141; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_142; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_143; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_144; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_145; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_146; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_147; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_148; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_149; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_150; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_151; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_152; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_153; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_154; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_155; // @[Cos.scala 232:26]
  reg [127:0] shift_reg_156; // @[Cos.scala 232:26]
  TrigRangeReducer reducer ( // @[Cos.scala 24:31]
    .clock(reducer_clock),
    .reset(reducer_reset),
    .io_in(reducer_io_in),
    .io_out(reducer_io_out)
  );
  FloatToFixed128 tofixedz0 ( // @[Cos.scala 151:27]
    .io_in(tofixedz0_io_in),
    .io_out(tofixedz0_io_out)
  );
  CORDIC cordic ( // @[Cos.scala 154:24]
    .clock(cordic_clock),
    .reset(cordic_reset),
    .io_in_z0(cordic_io_in_z0),
    .io_in_mode(cordic_io_in_mode),
    .io_out_x(cordic_io_out_x),
    .io_out_mode(cordic_io_out_mode)
  );
  assign io_out = cordic_io_out_mode == 2'h2 ? cordic_io_out_x : _GEN_4; // @[Cos.scala 170:27 171:14]
  assign io_valid = shift_reg_156[0]; // @[Cos.scala 237:12]
  assign reducer_clock = clock;
  assign reducer_reset = reset;
  assign reducer_io_in = io_in; // @[Cos.scala 152:19]
  assign tofixedz0_io_in = reducer_io_out; // @[Cos.scala 153:21]
  assign cordic_clock = clock;
  assign cordic_reset = reset;
  assign cordic_io_in_z0 = $signed(theta) >= 128'sh4b65f1fccc34c8000 ? _cordic_io_in_z0_T_3 : _GEN_1; // @[Cos.scala 159:37 161:23]
  assign cordic_io_in_mode = {{126'd0}, _GEN_2};
  always @(posedge clock) begin
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_0 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_0 <= {{127'd0}, io_ready}; // @[Cos.scala 233:16]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_1 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_1 <= shift_reg_0; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_2 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_2 <= shift_reg_1; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_3 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_3 <= shift_reg_2; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_4 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_4 <= shift_reg_3; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_5 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_5 <= shift_reg_4; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_6 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_6 <= shift_reg_5; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_7 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_7 <= shift_reg_6; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_8 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_8 <= shift_reg_7; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_9 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_9 <= shift_reg_8; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_10 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_10 <= shift_reg_9; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_11 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_11 <= shift_reg_10; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_12 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_12 <= shift_reg_11; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_13 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_13 <= shift_reg_12; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_14 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_14 <= shift_reg_13; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_15 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_15 <= shift_reg_14; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_16 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_16 <= shift_reg_15; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_17 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_17 <= shift_reg_16; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_18 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_18 <= shift_reg_17; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_19 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_19 <= shift_reg_18; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_20 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_20 <= shift_reg_19; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_21 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_21 <= shift_reg_20; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_22 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_22 <= shift_reg_21; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_23 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_23 <= shift_reg_22; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_24 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_24 <= shift_reg_23; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_25 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_25 <= shift_reg_24; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_26 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_26 <= shift_reg_25; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_27 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_27 <= shift_reg_26; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_28 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_28 <= shift_reg_27; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_29 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_29 <= shift_reg_28; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_30 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_30 <= shift_reg_29; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_31 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_31 <= shift_reg_30; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_32 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_32 <= shift_reg_31; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_33 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_33 <= shift_reg_32; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_34 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_34 <= shift_reg_33; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_35 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_35 <= shift_reg_34; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_36 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_36 <= shift_reg_35; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_37 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_37 <= shift_reg_36; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_38 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_38 <= shift_reg_37; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_39 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_39 <= shift_reg_38; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_40 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_40 <= shift_reg_39; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_41 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_41 <= shift_reg_40; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_42 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_42 <= shift_reg_41; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_43 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_43 <= shift_reg_42; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_44 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_44 <= shift_reg_43; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_45 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_45 <= shift_reg_44; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_46 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_46 <= shift_reg_45; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_47 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_47 <= shift_reg_46; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_48 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_48 <= shift_reg_47; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_49 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_49 <= shift_reg_48; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_50 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_50 <= shift_reg_49; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_51 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_51 <= shift_reg_50; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_52 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_52 <= shift_reg_51; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_53 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_53 <= shift_reg_52; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_54 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_54 <= shift_reg_53; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_55 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_55 <= shift_reg_54; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_56 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_56 <= shift_reg_55; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_57 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_57 <= shift_reg_56; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_58 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_58 <= shift_reg_57; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_59 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_59 <= shift_reg_58; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_60 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_60 <= shift_reg_59; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_61 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_61 <= shift_reg_60; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_62 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_62 <= shift_reg_61; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_63 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_63 <= shift_reg_62; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_64 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_64 <= shift_reg_63; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_65 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_65 <= shift_reg_64; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_66 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_66 <= shift_reg_65; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_67 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_67 <= shift_reg_66; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_68 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_68 <= shift_reg_67; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_69 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_69 <= shift_reg_68; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_70 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_70 <= shift_reg_69; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_71 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_71 <= shift_reg_70; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_72 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_72 <= shift_reg_71; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_73 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_73 <= shift_reg_72; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_74 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_74 <= shift_reg_73; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_75 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_75 <= shift_reg_74; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_76 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_76 <= shift_reg_75; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_77 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_77 <= shift_reg_76; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_78 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_78 <= shift_reg_77; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_79 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_79 <= shift_reg_78; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_80 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_80 <= shift_reg_79; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_81 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_81 <= shift_reg_80; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_82 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_82 <= shift_reg_81; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_83 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_83 <= shift_reg_82; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_84 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_84 <= shift_reg_83; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_85 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_85 <= shift_reg_84; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_86 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_86 <= shift_reg_85; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_87 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_87 <= shift_reg_86; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_88 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_88 <= shift_reg_87; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_89 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_89 <= shift_reg_88; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_90 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_90 <= shift_reg_89; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_91 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_91 <= shift_reg_90; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_92 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_92 <= shift_reg_91; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_93 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_93 <= shift_reg_92; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_94 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_94 <= shift_reg_93; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_95 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_95 <= shift_reg_94; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_96 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_96 <= shift_reg_95; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_97 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_97 <= shift_reg_96; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_98 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_98 <= shift_reg_97; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_99 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_99 <= shift_reg_98; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_100 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_100 <= shift_reg_99; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_101 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_101 <= shift_reg_100; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_102 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_102 <= shift_reg_101; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_103 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_103 <= shift_reg_102; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_104 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_104 <= shift_reg_103; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_105 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_105 <= shift_reg_104; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_106 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_106 <= shift_reg_105; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_107 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_107 <= shift_reg_106; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_108 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_108 <= shift_reg_107; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_109 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_109 <= shift_reg_108; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_110 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_110 <= shift_reg_109; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_111 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_111 <= shift_reg_110; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_112 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_112 <= shift_reg_111; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_113 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_113 <= shift_reg_112; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_114 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_114 <= shift_reg_113; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_115 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_115 <= shift_reg_114; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_116 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_116 <= shift_reg_115; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_117 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_117 <= shift_reg_116; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_118 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_118 <= shift_reg_117; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_119 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_119 <= shift_reg_118; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_120 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_120 <= shift_reg_119; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_121 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_121 <= shift_reg_120; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_122 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_122 <= shift_reg_121; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_123 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_123 <= shift_reg_122; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_124 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_124 <= shift_reg_123; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_125 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_125 <= shift_reg_124; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_126 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_126 <= shift_reg_125; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_127 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_127 <= shift_reg_126; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_128 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_128 <= shift_reg_127; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_129 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_129 <= shift_reg_128; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_130 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_130 <= shift_reg_129; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_131 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_131 <= shift_reg_130; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_132 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_132 <= shift_reg_131; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_133 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_133 <= shift_reg_132; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_134 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_134 <= shift_reg_133; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_135 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_135 <= shift_reg_134; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_136 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_136 <= shift_reg_135; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_137 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_137 <= shift_reg_136; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_138 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_138 <= shift_reg_137; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_139 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_139 <= shift_reg_138; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_140 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_140 <= shift_reg_139; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_141 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_141 <= shift_reg_140; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_142 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_142 <= shift_reg_141; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_143 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_143 <= shift_reg_142; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_144 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_144 <= shift_reg_143; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_145 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_145 <= shift_reg_144; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_146 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_146 <= shift_reg_145; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_147 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_147 <= shift_reg_146; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_148 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_148 <= shift_reg_147; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_149 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_149 <= shift_reg_148; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_150 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_150 <= shift_reg_149; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_151 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_151 <= shift_reg_150; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_152 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_152 <= shift_reg_151; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_153 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_153 <= shift_reg_152; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_154 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_154 <= shift_reg_153; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_155 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_155 <= shift_reg_154; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_156 <= 128'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_156 <= shift_reg_155; // @[Cos.scala 235:18]
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
  _RAND_0 = {4{`RANDOM}};
  shift_reg_0 = _RAND_0[127:0];
  _RAND_1 = {4{`RANDOM}};
  shift_reg_1 = _RAND_1[127:0];
  _RAND_2 = {4{`RANDOM}};
  shift_reg_2 = _RAND_2[127:0];
  _RAND_3 = {4{`RANDOM}};
  shift_reg_3 = _RAND_3[127:0];
  _RAND_4 = {4{`RANDOM}};
  shift_reg_4 = _RAND_4[127:0];
  _RAND_5 = {4{`RANDOM}};
  shift_reg_5 = _RAND_5[127:0];
  _RAND_6 = {4{`RANDOM}};
  shift_reg_6 = _RAND_6[127:0];
  _RAND_7 = {4{`RANDOM}};
  shift_reg_7 = _RAND_7[127:0];
  _RAND_8 = {4{`RANDOM}};
  shift_reg_8 = _RAND_8[127:0];
  _RAND_9 = {4{`RANDOM}};
  shift_reg_9 = _RAND_9[127:0];
  _RAND_10 = {4{`RANDOM}};
  shift_reg_10 = _RAND_10[127:0];
  _RAND_11 = {4{`RANDOM}};
  shift_reg_11 = _RAND_11[127:0];
  _RAND_12 = {4{`RANDOM}};
  shift_reg_12 = _RAND_12[127:0];
  _RAND_13 = {4{`RANDOM}};
  shift_reg_13 = _RAND_13[127:0];
  _RAND_14 = {4{`RANDOM}};
  shift_reg_14 = _RAND_14[127:0];
  _RAND_15 = {4{`RANDOM}};
  shift_reg_15 = _RAND_15[127:0];
  _RAND_16 = {4{`RANDOM}};
  shift_reg_16 = _RAND_16[127:0];
  _RAND_17 = {4{`RANDOM}};
  shift_reg_17 = _RAND_17[127:0];
  _RAND_18 = {4{`RANDOM}};
  shift_reg_18 = _RAND_18[127:0];
  _RAND_19 = {4{`RANDOM}};
  shift_reg_19 = _RAND_19[127:0];
  _RAND_20 = {4{`RANDOM}};
  shift_reg_20 = _RAND_20[127:0];
  _RAND_21 = {4{`RANDOM}};
  shift_reg_21 = _RAND_21[127:0];
  _RAND_22 = {4{`RANDOM}};
  shift_reg_22 = _RAND_22[127:0];
  _RAND_23 = {4{`RANDOM}};
  shift_reg_23 = _RAND_23[127:0];
  _RAND_24 = {4{`RANDOM}};
  shift_reg_24 = _RAND_24[127:0];
  _RAND_25 = {4{`RANDOM}};
  shift_reg_25 = _RAND_25[127:0];
  _RAND_26 = {4{`RANDOM}};
  shift_reg_26 = _RAND_26[127:0];
  _RAND_27 = {4{`RANDOM}};
  shift_reg_27 = _RAND_27[127:0];
  _RAND_28 = {4{`RANDOM}};
  shift_reg_28 = _RAND_28[127:0];
  _RAND_29 = {4{`RANDOM}};
  shift_reg_29 = _RAND_29[127:0];
  _RAND_30 = {4{`RANDOM}};
  shift_reg_30 = _RAND_30[127:0];
  _RAND_31 = {4{`RANDOM}};
  shift_reg_31 = _RAND_31[127:0];
  _RAND_32 = {4{`RANDOM}};
  shift_reg_32 = _RAND_32[127:0];
  _RAND_33 = {4{`RANDOM}};
  shift_reg_33 = _RAND_33[127:0];
  _RAND_34 = {4{`RANDOM}};
  shift_reg_34 = _RAND_34[127:0];
  _RAND_35 = {4{`RANDOM}};
  shift_reg_35 = _RAND_35[127:0];
  _RAND_36 = {4{`RANDOM}};
  shift_reg_36 = _RAND_36[127:0];
  _RAND_37 = {4{`RANDOM}};
  shift_reg_37 = _RAND_37[127:0];
  _RAND_38 = {4{`RANDOM}};
  shift_reg_38 = _RAND_38[127:0];
  _RAND_39 = {4{`RANDOM}};
  shift_reg_39 = _RAND_39[127:0];
  _RAND_40 = {4{`RANDOM}};
  shift_reg_40 = _RAND_40[127:0];
  _RAND_41 = {4{`RANDOM}};
  shift_reg_41 = _RAND_41[127:0];
  _RAND_42 = {4{`RANDOM}};
  shift_reg_42 = _RAND_42[127:0];
  _RAND_43 = {4{`RANDOM}};
  shift_reg_43 = _RAND_43[127:0];
  _RAND_44 = {4{`RANDOM}};
  shift_reg_44 = _RAND_44[127:0];
  _RAND_45 = {4{`RANDOM}};
  shift_reg_45 = _RAND_45[127:0];
  _RAND_46 = {4{`RANDOM}};
  shift_reg_46 = _RAND_46[127:0];
  _RAND_47 = {4{`RANDOM}};
  shift_reg_47 = _RAND_47[127:0];
  _RAND_48 = {4{`RANDOM}};
  shift_reg_48 = _RAND_48[127:0];
  _RAND_49 = {4{`RANDOM}};
  shift_reg_49 = _RAND_49[127:0];
  _RAND_50 = {4{`RANDOM}};
  shift_reg_50 = _RAND_50[127:0];
  _RAND_51 = {4{`RANDOM}};
  shift_reg_51 = _RAND_51[127:0];
  _RAND_52 = {4{`RANDOM}};
  shift_reg_52 = _RAND_52[127:0];
  _RAND_53 = {4{`RANDOM}};
  shift_reg_53 = _RAND_53[127:0];
  _RAND_54 = {4{`RANDOM}};
  shift_reg_54 = _RAND_54[127:0];
  _RAND_55 = {4{`RANDOM}};
  shift_reg_55 = _RAND_55[127:0];
  _RAND_56 = {4{`RANDOM}};
  shift_reg_56 = _RAND_56[127:0];
  _RAND_57 = {4{`RANDOM}};
  shift_reg_57 = _RAND_57[127:0];
  _RAND_58 = {4{`RANDOM}};
  shift_reg_58 = _RAND_58[127:0];
  _RAND_59 = {4{`RANDOM}};
  shift_reg_59 = _RAND_59[127:0];
  _RAND_60 = {4{`RANDOM}};
  shift_reg_60 = _RAND_60[127:0];
  _RAND_61 = {4{`RANDOM}};
  shift_reg_61 = _RAND_61[127:0];
  _RAND_62 = {4{`RANDOM}};
  shift_reg_62 = _RAND_62[127:0];
  _RAND_63 = {4{`RANDOM}};
  shift_reg_63 = _RAND_63[127:0];
  _RAND_64 = {4{`RANDOM}};
  shift_reg_64 = _RAND_64[127:0];
  _RAND_65 = {4{`RANDOM}};
  shift_reg_65 = _RAND_65[127:0];
  _RAND_66 = {4{`RANDOM}};
  shift_reg_66 = _RAND_66[127:0];
  _RAND_67 = {4{`RANDOM}};
  shift_reg_67 = _RAND_67[127:0];
  _RAND_68 = {4{`RANDOM}};
  shift_reg_68 = _RAND_68[127:0];
  _RAND_69 = {4{`RANDOM}};
  shift_reg_69 = _RAND_69[127:0];
  _RAND_70 = {4{`RANDOM}};
  shift_reg_70 = _RAND_70[127:0];
  _RAND_71 = {4{`RANDOM}};
  shift_reg_71 = _RAND_71[127:0];
  _RAND_72 = {4{`RANDOM}};
  shift_reg_72 = _RAND_72[127:0];
  _RAND_73 = {4{`RANDOM}};
  shift_reg_73 = _RAND_73[127:0];
  _RAND_74 = {4{`RANDOM}};
  shift_reg_74 = _RAND_74[127:0];
  _RAND_75 = {4{`RANDOM}};
  shift_reg_75 = _RAND_75[127:0];
  _RAND_76 = {4{`RANDOM}};
  shift_reg_76 = _RAND_76[127:0];
  _RAND_77 = {4{`RANDOM}};
  shift_reg_77 = _RAND_77[127:0];
  _RAND_78 = {4{`RANDOM}};
  shift_reg_78 = _RAND_78[127:0];
  _RAND_79 = {4{`RANDOM}};
  shift_reg_79 = _RAND_79[127:0];
  _RAND_80 = {4{`RANDOM}};
  shift_reg_80 = _RAND_80[127:0];
  _RAND_81 = {4{`RANDOM}};
  shift_reg_81 = _RAND_81[127:0];
  _RAND_82 = {4{`RANDOM}};
  shift_reg_82 = _RAND_82[127:0];
  _RAND_83 = {4{`RANDOM}};
  shift_reg_83 = _RAND_83[127:0];
  _RAND_84 = {4{`RANDOM}};
  shift_reg_84 = _RAND_84[127:0];
  _RAND_85 = {4{`RANDOM}};
  shift_reg_85 = _RAND_85[127:0];
  _RAND_86 = {4{`RANDOM}};
  shift_reg_86 = _RAND_86[127:0];
  _RAND_87 = {4{`RANDOM}};
  shift_reg_87 = _RAND_87[127:0];
  _RAND_88 = {4{`RANDOM}};
  shift_reg_88 = _RAND_88[127:0];
  _RAND_89 = {4{`RANDOM}};
  shift_reg_89 = _RAND_89[127:0];
  _RAND_90 = {4{`RANDOM}};
  shift_reg_90 = _RAND_90[127:0];
  _RAND_91 = {4{`RANDOM}};
  shift_reg_91 = _RAND_91[127:0];
  _RAND_92 = {4{`RANDOM}};
  shift_reg_92 = _RAND_92[127:0];
  _RAND_93 = {4{`RANDOM}};
  shift_reg_93 = _RAND_93[127:0];
  _RAND_94 = {4{`RANDOM}};
  shift_reg_94 = _RAND_94[127:0];
  _RAND_95 = {4{`RANDOM}};
  shift_reg_95 = _RAND_95[127:0];
  _RAND_96 = {4{`RANDOM}};
  shift_reg_96 = _RAND_96[127:0];
  _RAND_97 = {4{`RANDOM}};
  shift_reg_97 = _RAND_97[127:0];
  _RAND_98 = {4{`RANDOM}};
  shift_reg_98 = _RAND_98[127:0];
  _RAND_99 = {4{`RANDOM}};
  shift_reg_99 = _RAND_99[127:0];
  _RAND_100 = {4{`RANDOM}};
  shift_reg_100 = _RAND_100[127:0];
  _RAND_101 = {4{`RANDOM}};
  shift_reg_101 = _RAND_101[127:0];
  _RAND_102 = {4{`RANDOM}};
  shift_reg_102 = _RAND_102[127:0];
  _RAND_103 = {4{`RANDOM}};
  shift_reg_103 = _RAND_103[127:0];
  _RAND_104 = {4{`RANDOM}};
  shift_reg_104 = _RAND_104[127:0];
  _RAND_105 = {4{`RANDOM}};
  shift_reg_105 = _RAND_105[127:0];
  _RAND_106 = {4{`RANDOM}};
  shift_reg_106 = _RAND_106[127:0];
  _RAND_107 = {4{`RANDOM}};
  shift_reg_107 = _RAND_107[127:0];
  _RAND_108 = {4{`RANDOM}};
  shift_reg_108 = _RAND_108[127:0];
  _RAND_109 = {4{`RANDOM}};
  shift_reg_109 = _RAND_109[127:0];
  _RAND_110 = {4{`RANDOM}};
  shift_reg_110 = _RAND_110[127:0];
  _RAND_111 = {4{`RANDOM}};
  shift_reg_111 = _RAND_111[127:0];
  _RAND_112 = {4{`RANDOM}};
  shift_reg_112 = _RAND_112[127:0];
  _RAND_113 = {4{`RANDOM}};
  shift_reg_113 = _RAND_113[127:0];
  _RAND_114 = {4{`RANDOM}};
  shift_reg_114 = _RAND_114[127:0];
  _RAND_115 = {4{`RANDOM}};
  shift_reg_115 = _RAND_115[127:0];
  _RAND_116 = {4{`RANDOM}};
  shift_reg_116 = _RAND_116[127:0];
  _RAND_117 = {4{`RANDOM}};
  shift_reg_117 = _RAND_117[127:0];
  _RAND_118 = {4{`RANDOM}};
  shift_reg_118 = _RAND_118[127:0];
  _RAND_119 = {4{`RANDOM}};
  shift_reg_119 = _RAND_119[127:0];
  _RAND_120 = {4{`RANDOM}};
  shift_reg_120 = _RAND_120[127:0];
  _RAND_121 = {4{`RANDOM}};
  shift_reg_121 = _RAND_121[127:0];
  _RAND_122 = {4{`RANDOM}};
  shift_reg_122 = _RAND_122[127:0];
  _RAND_123 = {4{`RANDOM}};
  shift_reg_123 = _RAND_123[127:0];
  _RAND_124 = {4{`RANDOM}};
  shift_reg_124 = _RAND_124[127:0];
  _RAND_125 = {4{`RANDOM}};
  shift_reg_125 = _RAND_125[127:0];
  _RAND_126 = {4{`RANDOM}};
  shift_reg_126 = _RAND_126[127:0];
  _RAND_127 = {4{`RANDOM}};
  shift_reg_127 = _RAND_127[127:0];
  _RAND_128 = {4{`RANDOM}};
  shift_reg_128 = _RAND_128[127:0];
  _RAND_129 = {4{`RANDOM}};
  shift_reg_129 = _RAND_129[127:0];
  _RAND_130 = {4{`RANDOM}};
  shift_reg_130 = _RAND_130[127:0];
  _RAND_131 = {4{`RANDOM}};
  shift_reg_131 = _RAND_131[127:0];
  _RAND_132 = {4{`RANDOM}};
  shift_reg_132 = _RAND_132[127:0];
  _RAND_133 = {4{`RANDOM}};
  shift_reg_133 = _RAND_133[127:0];
  _RAND_134 = {4{`RANDOM}};
  shift_reg_134 = _RAND_134[127:0];
  _RAND_135 = {4{`RANDOM}};
  shift_reg_135 = _RAND_135[127:0];
  _RAND_136 = {4{`RANDOM}};
  shift_reg_136 = _RAND_136[127:0];
  _RAND_137 = {4{`RANDOM}};
  shift_reg_137 = _RAND_137[127:0];
  _RAND_138 = {4{`RANDOM}};
  shift_reg_138 = _RAND_138[127:0];
  _RAND_139 = {4{`RANDOM}};
  shift_reg_139 = _RAND_139[127:0];
  _RAND_140 = {4{`RANDOM}};
  shift_reg_140 = _RAND_140[127:0];
  _RAND_141 = {4{`RANDOM}};
  shift_reg_141 = _RAND_141[127:0];
  _RAND_142 = {4{`RANDOM}};
  shift_reg_142 = _RAND_142[127:0];
  _RAND_143 = {4{`RANDOM}};
  shift_reg_143 = _RAND_143[127:0];
  _RAND_144 = {4{`RANDOM}};
  shift_reg_144 = _RAND_144[127:0];
  _RAND_145 = {4{`RANDOM}};
  shift_reg_145 = _RAND_145[127:0];
  _RAND_146 = {4{`RANDOM}};
  shift_reg_146 = _RAND_146[127:0];
  _RAND_147 = {4{`RANDOM}};
  shift_reg_147 = _RAND_147[127:0];
  _RAND_148 = {4{`RANDOM}};
  shift_reg_148 = _RAND_148[127:0];
  _RAND_149 = {4{`RANDOM}};
  shift_reg_149 = _RAND_149[127:0];
  _RAND_150 = {4{`RANDOM}};
  shift_reg_150 = _RAND_150[127:0];
  _RAND_151 = {4{`RANDOM}};
  shift_reg_151 = _RAND_151[127:0];
  _RAND_152 = {4{`RANDOM}};
  shift_reg_152 = _RAND_152[127:0];
  _RAND_153 = {4{`RANDOM}};
  shift_reg_153 = _RAND_153[127:0];
  _RAND_154 = {4{`RANDOM}};
  shift_reg_154 = _RAND_154[127:0];
  _RAND_155 = {4{`RANDOM}};
  shift_reg_155 = _RAND_155[127:0];
  _RAND_156 = {4{`RANDOM}};
  shift_reg_156 = _RAND_156[127:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

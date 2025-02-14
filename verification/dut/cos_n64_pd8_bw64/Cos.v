module Cos(
  input         clock,
  input         reset,
  input  [63:0] io_in,
  input         io_ready,
  output [63:0] io_out,
  output        io_valid
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
`endif // RANDOMIZE_REG_INIT
  wire  reducer_clock; // @[Cos.scala 24:31]
  wire  reducer_reset; // @[Cos.scala 24:31]
  wire [63:0] reducer_io_in; // @[Cos.scala 24:31]
  wire [63:0] reducer_io_out; // @[Cos.scala 24:31]
  wire [63:0] tofixedz0_io_in; // @[Cos.scala 110:27]
  wire [63:0] tofixedz0_io_out; // @[Cos.scala 110:27]
  wire  cordic_clock; // @[Cos.scala 113:24]
  wire  cordic_reset; // @[Cos.scala 113:24]
  wire [63:0] cordic_io_in_z0; // @[Cos.scala 113:24]
  wire [63:0] cordic_io_in_mode; // @[Cos.scala 113:24]
  wire [63:0] cordic_io_out_x; // @[Cos.scala 113:24]
  wire [1:0] cordic_io_out_mode; // @[Cos.scala 113:24]
  wire [63:0] _theta_T_5 = $signed(tofixedz0_io_out) + 64'sh6487ed5110bba800; // @[Cos.scala 116:76]
  wire [63:0] theta = $signed(tofixedz0_io_out) < 64'sh0 ? $signed(_theta_T_5) : $signed(tofixedz0_io_out); // @[Cos.scala 116:20]
  wire [63:0] _cordic_io_in_z0_T_3 = $signed(theta) - 64'sh6487ed5110bba800; // @[Cos.scala 120:43]
  wire  _T_3 = $signed(theta) >= 64'sh1921fafc8b007a00 & $signed(theta) < 64'sh4b65f1fccc34c800; // @[Cos.scala 121:36]
  wire [63:0] _cordic_io_in_z0_T_7 = 64'sh3243f6a8885dd400 - $signed(theta); // @[Cos.scala 123:39]
  wire [63:0] _cordic_io_in_z0_T_8 = $signed(tofixedz0_io_out) < 64'sh0 ? $signed(_theta_T_5) : $signed(tofixedz0_io_out
    ); // @[Cos.scala 125:32]
  wire [63:0] _GEN_1 = $signed(theta) >= 64'sh1921fafc8b007a00 & $signed(theta) < 64'sh4b65f1fccc34c800 ?
    _cordic_io_in_z0_T_7 : _cordic_io_in_z0_T_8; // @[Cos.scala 121:65 123:23 125:23]
  wire [1:0] _GEN_2 = $signed(theta) >= 64'sh4b65f1fccc34c800 ? 2'h2 : {{1'd0}, _T_3}; // @[Cos.scala 118:37 119:25]
  wire  _io_out_T_1 = ~cordic_io_out_x[63]; // @[Cos.scala 132:17]
  wire [63:0] _io_out_T_3 = {_io_out_T_1,cordic_io_out_x[62:0]}; // @[Cos.scala 132:38]
  wire [63:0] _GEN_4 = cordic_io_out_mode == 2'h1 ? _io_out_T_3 : cordic_io_out_x; // @[Cos.scala 131:33 132:14 134:14]
  reg [63:0] shift_reg_0; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_1; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_2; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_3; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_4; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_5; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_6; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_7; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_8; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_9; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_10; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_11; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_12; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_13; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_14; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_15; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_16; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_17; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_18; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_19; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_20; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_21; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_22; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_23; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_24; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_25; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_26; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_27; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_28; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_29; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_30; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_31; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_32; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_33; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_34; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_35; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_36; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_37; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_38; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_39; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_40; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_41; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_42; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_43; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_44; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_45; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_46; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_47; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_48; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_49; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_50; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_51; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_52; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_53; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_54; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_55; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_56; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_57; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_58; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_59; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_60; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_61; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_62; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_63; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_64; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_65; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_66; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_67; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_68; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_69; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_70; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_71; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_72; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_73; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_74; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_75; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_76; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_77; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_78; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_79; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_80; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_81; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_82; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_83; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_84; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_85; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_86; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_87; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_88; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_89; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_90; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_91; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_92; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_93; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_94; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_95; // @[Cos.scala 232:26]
  reg [63:0] shift_reg_96; // @[Cos.scala 232:26]
  TrigRangeReducer reducer ( // @[Cos.scala 24:31]
    .clock(reducer_clock),
    .reset(reducer_reset),
    .io_in(reducer_io_in),
    .io_out(reducer_io_out)
  );
  FloatToFixed64 tofixedz0 ( // @[Cos.scala 110:27]
    .io_in(tofixedz0_io_in),
    .io_out(tofixedz0_io_out)
  );
  CORDIC cordic ( // @[Cos.scala 113:24]
    .clock(cordic_clock),
    .reset(cordic_reset),
    .io_in_z0(cordic_io_in_z0),
    .io_in_mode(cordic_io_in_mode),
    .io_out_x(cordic_io_out_x),
    .io_out_mode(cordic_io_out_mode)
  );
  assign io_out = cordic_io_out_mode == 2'h2 ? cordic_io_out_x : _GEN_4; // @[Cos.scala 129:27 130:14]
  assign io_valid = shift_reg_96[0]; // @[Cos.scala 237:12]
  assign reducer_clock = clock;
  assign reducer_reset = reset;
  assign reducer_io_in = io_in; // @[Cos.scala 111:19]
  assign tofixedz0_io_in = reducer_io_out; // @[Cos.scala 112:21]
  assign cordic_clock = clock;
  assign cordic_reset = reset;
  assign cordic_io_in_z0 = $signed(theta) >= 64'sh4b65f1fccc34c800 ? _cordic_io_in_z0_T_3 : _GEN_1; // @[Cos.scala 118:37 120:23]
  assign cordic_io_in_mode = {{62'd0}, _GEN_2};
  always @(posedge clock) begin
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_0 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_0 <= {{63'd0}, io_ready}; // @[Cos.scala 233:16]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_1 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_1 <= shift_reg_0; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_2 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_2 <= shift_reg_1; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_3 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_3 <= shift_reg_2; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_4 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_4 <= shift_reg_3; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_5 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_5 <= shift_reg_4; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_6 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_6 <= shift_reg_5; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_7 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_7 <= shift_reg_6; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_8 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_8 <= shift_reg_7; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_9 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_9 <= shift_reg_8; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_10 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_10 <= shift_reg_9; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_11 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_11 <= shift_reg_10; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_12 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_12 <= shift_reg_11; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_13 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_13 <= shift_reg_12; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_14 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_14 <= shift_reg_13; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_15 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_15 <= shift_reg_14; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_16 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_16 <= shift_reg_15; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_17 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_17 <= shift_reg_16; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_18 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_18 <= shift_reg_17; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_19 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_19 <= shift_reg_18; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_20 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_20 <= shift_reg_19; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_21 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_21 <= shift_reg_20; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_22 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_22 <= shift_reg_21; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_23 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_23 <= shift_reg_22; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_24 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_24 <= shift_reg_23; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_25 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_25 <= shift_reg_24; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_26 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_26 <= shift_reg_25; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_27 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_27 <= shift_reg_26; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_28 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_28 <= shift_reg_27; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_29 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_29 <= shift_reg_28; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_30 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_30 <= shift_reg_29; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_31 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_31 <= shift_reg_30; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_32 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_32 <= shift_reg_31; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_33 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_33 <= shift_reg_32; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_34 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_34 <= shift_reg_33; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_35 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_35 <= shift_reg_34; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_36 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_36 <= shift_reg_35; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_37 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_37 <= shift_reg_36; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_38 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_38 <= shift_reg_37; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_39 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_39 <= shift_reg_38; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_40 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_40 <= shift_reg_39; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_41 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_41 <= shift_reg_40; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_42 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_42 <= shift_reg_41; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_43 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_43 <= shift_reg_42; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_44 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_44 <= shift_reg_43; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_45 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_45 <= shift_reg_44; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_46 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_46 <= shift_reg_45; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_47 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_47 <= shift_reg_46; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_48 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_48 <= shift_reg_47; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_49 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_49 <= shift_reg_48; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_50 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_50 <= shift_reg_49; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_51 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_51 <= shift_reg_50; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_52 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_52 <= shift_reg_51; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_53 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_53 <= shift_reg_52; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_54 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_54 <= shift_reg_53; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_55 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_55 <= shift_reg_54; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_56 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_56 <= shift_reg_55; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_57 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_57 <= shift_reg_56; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_58 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_58 <= shift_reg_57; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_59 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_59 <= shift_reg_58; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_60 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_60 <= shift_reg_59; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_61 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_61 <= shift_reg_60; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_62 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_62 <= shift_reg_61; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_63 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_63 <= shift_reg_62; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_64 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_64 <= shift_reg_63; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_65 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_65 <= shift_reg_64; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_66 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_66 <= shift_reg_65; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_67 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_67 <= shift_reg_66; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_68 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_68 <= shift_reg_67; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_69 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_69 <= shift_reg_68; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_70 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_70 <= shift_reg_69; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_71 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_71 <= shift_reg_70; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_72 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_72 <= shift_reg_71; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_73 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_73 <= shift_reg_72; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_74 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_74 <= shift_reg_73; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_75 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_75 <= shift_reg_74; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_76 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_76 <= shift_reg_75; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_77 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_77 <= shift_reg_76; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_78 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_78 <= shift_reg_77; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_79 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_79 <= shift_reg_78; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_80 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_80 <= shift_reg_79; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_81 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_81 <= shift_reg_80; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_82 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_82 <= shift_reg_81; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_83 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_83 <= shift_reg_82; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_84 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_84 <= shift_reg_83; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_85 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_85 <= shift_reg_84; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_86 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_86 <= shift_reg_85; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_87 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_87 <= shift_reg_86; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_88 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_88 <= shift_reg_87; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_89 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_89 <= shift_reg_88; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_90 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_90 <= shift_reg_89; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_91 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_91 <= shift_reg_90; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_92 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_92 <= shift_reg_91; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_93 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_93 <= shift_reg_92; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_94 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_94 <= shift_reg_93; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_95 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_95 <= shift_reg_94; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_96 <= 64'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_96 <= shift_reg_95; // @[Cos.scala 235:18]
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
  shift_reg_0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  shift_reg_1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  shift_reg_2 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  shift_reg_3 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  shift_reg_4 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  shift_reg_5 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  shift_reg_6 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  shift_reg_7 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  shift_reg_8 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  shift_reg_9 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  shift_reg_10 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  shift_reg_11 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  shift_reg_12 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  shift_reg_13 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  shift_reg_14 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  shift_reg_15 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  shift_reg_16 = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  shift_reg_17 = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  shift_reg_18 = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  shift_reg_19 = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  shift_reg_20 = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  shift_reg_21 = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  shift_reg_22 = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  shift_reg_23 = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  shift_reg_24 = _RAND_24[63:0];
  _RAND_25 = {2{`RANDOM}};
  shift_reg_25 = _RAND_25[63:0];
  _RAND_26 = {2{`RANDOM}};
  shift_reg_26 = _RAND_26[63:0];
  _RAND_27 = {2{`RANDOM}};
  shift_reg_27 = _RAND_27[63:0];
  _RAND_28 = {2{`RANDOM}};
  shift_reg_28 = _RAND_28[63:0];
  _RAND_29 = {2{`RANDOM}};
  shift_reg_29 = _RAND_29[63:0];
  _RAND_30 = {2{`RANDOM}};
  shift_reg_30 = _RAND_30[63:0];
  _RAND_31 = {2{`RANDOM}};
  shift_reg_31 = _RAND_31[63:0];
  _RAND_32 = {2{`RANDOM}};
  shift_reg_32 = _RAND_32[63:0];
  _RAND_33 = {2{`RANDOM}};
  shift_reg_33 = _RAND_33[63:0];
  _RAND_34 = {2{`RANDOM}};
  shift_reg_34 = _RAND_34[63:0];
  _RAND_35 = {2{`RANDOM}};
  shift_reg_35 = _RAND_35[63:0];
  _RAND_36 = {2{`RANDOM}};
  shift_reg_36 = _RAND_36[63:0];
  _RAND_37 = {2{`RANDOM}};
  shift_reg_37 = _RAND_37[63:0];
  _RAND_38 = {2{`RANDOM}};
  shift_reg_38 = _RAND_38[63:0];
  _RAND_39 = {2{`RANDOM}};
  shift_reg_39 = _RAND_39[63:0];
  _RAND_40 = {2{`RANDOM}};
  shift_reg_40 = _RAND_40[63:0];
  _RAND_41 = {2{`RANDOM}};
  shift_reg_41 = _RAND_41[63:0];
  _RAND_42 = {2{`RANDOM}};
  shift_reg_42 = _RAND_42[63:0];
  _RAND_43 = {2{`RANDOM}};
  shift_reg_43 = _RAND_43[63:0];
  _RAND_44 = {2{`RANDOM}};
  shift_reg_44 = _RAND_44[63:0];
  _RAND_45 = {2{`RANDOM}};
  shift_reg_45 = _RAND_45[63:0];
  _RAND_46 = {2{`RANDOM}};
  shift_reg_46 = _RAND_46[63:0];
  _RAND_47 = {2{`RANDOM}};
  shift_reg_47 = _RAND_47[63:0];
  _RAND_48 = {2{`RANDOM}};
  shift_reg_48 = _RAND_48[63:0];
  _RAND_49 = {2{`RANDOM}};
  shift_reg_49 = _RAND_49[63:0];
  _RAND_50 = {2{`RANDOM}};
  shift_reg_50 = _RAND_50[63:0];
  _RAND_51 = {2{`RANDOM}};
  shift_reg_51 = _RAND_51[63:0];
  _RAND_52 = {2{`RANDOM}};
  shift_reg_52 = _RAND_52[63:0];
  _RAND_53 = {2{`RANDOM}};
  shift_reg_53 = _RAND_53[63:0];
  _RAND_54 = {2{`RANDOM}};
  shift_reg_54 = _RAND_54[63:0];
  _RAND_55 = {2{`RANDOM}};
  shift_reg_55 = _RAND_55[63:0];
  _RAND_56 = {2{`RANDOM}};
  shift_reg_56 = _RAND_56[63:0];
  _RAND_57 = {2{`RANDOM}};
  shift_reg_57 = _RAND_57[63:0];
  _RAND_58 = {2{`RANDOM}};
  shift_reg_58 = _RAND_58[63:0];
  _RAND_59 = {2{`RANDOM}};
  shift_reg_59 = _RAND_59[63:0];
  _RAND_60 = {2{`RANDOM}};
  shift_reg_60 = _RAND_60[63:0];
  _RAND_61 = {2{`RANDOM}};
  shift_reg_61 = _RAND_61[63:0];
  _RAND_62 = {2{`RANDOM}};
  shift_reg_62 = _RAND_62[63:0];
  _RAND_63 = {2{`RANDOM}};
  shift_reg_63 = _RAND_63[63:0];
  _RAND_64 = {2{`RANDOM}};
  shift_reg_64 = _RAND_64[63:0];
  _RAND_65 = {2{`RANDOM}};
  shift_reg_65 = _RAND_65[63:0];
  _RAND_66 = {2{`RANDOM}};
  shift_reg_66 = _RAND_66[63:0];
  _RAND_67 = {2{`RANDOM}};
  shift_reg_67 = _RAND_67[63:0];
  _RAND_68 = {2{`RANDOM}};
  shift_reg_68 = _RAND_68[63:0];
  _RAND_69 = {2{`RANDOM}};
  shift_reg_69 = _RAND_69[63:0];
  _RAND_70 = {2{`RANDOM}};
  shift_reg_70 = _RAND_70[63:0];
  _RAND_71 = {2{`RANDOM}};
  shift_reg_71 = _RAND_71[63:0];
  _RAND_72 = {2{`RANDOM}};
  shift_reg_72 = _RAND_72[63:0];
  _RAND_73 = {2{`RANDOM}};
  shift_reg_73 = _RAND_73[63:0];
  _RAND_74 = {2{`RANDOM}};
  shift_reg_74 = _RAND_74[63:0];
  _RAND_75 = {2{`RANDOM}};
  shift_reg_75 = _RAND_75[63:0];
  _RAND_76 = {2{`RANDOM}};
  shift_reg_76 = _RAND_76[63:0];
  _RAND_77 = {2{`RANDOM}};
  shift_reg_77 = _RAND_77[63:0];
  _RAND_78 = {2{`RANDOM}};
  shift_reg_78 = _RAND_78[63:0];
  _RAND_79 = {2{`RANDOM}};
  shift_reg_79 = _RAND_79[63:0];
  _RAND_80 = {2{`RANDOM}};
  shift_reg_80 = _RAND_80[63:0];
  _RAND_81 = {2{`RANDOM}};
  shift_reg_81 = _RAND_81[63:0];
  _RAND_82 = {2{`RANDOM}};
  shift_reg_82 = _RAND_82[63:0];
  _RAND_83 = {2{`RANDOM}};
  shift_reg_83 = _RAND_83[63:0];
  _RAND_84 = {2{`RANDOM}};
  shift_reg_84 = _RAND_84[63:0];
  _RAND_85 = {2{`RANDOM}};
  shift_reg_85 = _RAND_85[63:0];
  _RAND_86 = {2{`RANDOM}};
  shift_reg_86 = _RAND_86[63:0];
  _RAND_87 = {2{`RANDOM}};
  shift_reg_87 = _RAND_87[63:0];
  _RAND_88 = {2{`RANDOM}};
  shift_reg_88 = _RAND_88[63:0];
  _RAND_89 = {2{`RANDOM}};
  shift_reg_89 = _RAND_89[63:0];
  _RAND_90 = {2{`RANDOM}};
  shift_reg_90 = _RAND_90[63:0];
  _RAND_91 = {2{`RANDOM}};
  shift_reg_91 = _RAND_91[63:0];
  _RAND_92 = {2{`RANDOM}};
  shift_reg_92 = _RAND_92[63:0];
  _RAND_93 = {2{`RANDOM}};
  shift_reg_93 = _RAND_93[63:0];
  _RAND_94 = {2{`RANDOM}};
  shift_reg_94 = _RAND_94[63:0];
  _RAND_95 = {2{`RANDOM}};
  shift_reg_95 = _RAND_95[63:0];
  _RAND_96 = {2{`RANDOM}};
  shift_reg_96 = _RAND_96[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

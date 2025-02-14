module Sin(
  input         clock,
  input         reset,
  input  [31:0] io_in,
  input         io_ready,
  output [31:0] io_out,
  output        io_valid
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
`endif // RANDOMIZE_REG_INIT
  wire  reducer_clock; // @[Sin.scala 24:31]
  wire  reducer_reset; // @[Sin.scala 24:31]
  wire [31:0] reducer_io_in; // @[Sin.scala 24:31]
  wire [31:0] reducer_io_out; // @[Sin.scala 24:31]
  wire [31:0] tofixedz0_io_in; // @[Sin.scala 76:27]
  wire [31:0] tofixedz0_io_out; // @[Sin.scala 76:27]
  wire  cordic_clock; // @[Sin.scala 79:24]
  wire  cordic_reset; // @[Sin.scala 79:24]
  wire [31:0] cordic_io_in_z0; // @[Sin.scala 79:24]
  wire [31:0] cordic_io_in_mode; // @[Sin.scala 79:24]
  wire [31:0] cordic_io_out_x; // @[Sin.scala 79:24]
  wire [1:0] cordic_io_out_mode; // @[Sin.scala 79:24]
  wire [31:0] adjangle = 32'sh1921fb60 - $signed(tofixedz0_io_out); // @[Sin.scala 82:31]
  wire [31:0] _theta_T_3 = $signed(adjangle) + 32'sh6487ed80; // @[Sin.scala 83:46]
  wire [31:0] theta = $signed(adjangle) < 32'sh0 ? $signed(_theta_T_3) : $signed(adjangle); // @[Sin.scala 83:20]
  wire [31:0] _cordic_io_in_z0_T_3 = $signed(theta) - 32'sh6487ed80; // @[Sin.scala 87:43]
  wire  _T_3 = $signed(theta) >= 32'sh1921fb60 & $signed(theta) < 32'sh4b65f200; // @[Sin.scala 88:36]
  wire [31:0] _cordic_io_in_z0_T_7 = 32'sh3243f6c0 - $signed(theta); // @[Sin.scala 90:39]
  wire [31:0] _cordic_io_in_z0_T_8 = $signed(adjangle) < 32'sh0 ? $signed(_theta_T_3) : $signed(adjangle); // @[Sin.scala 92:32]
  wire [31:0] _GEN_1 = $signed(theta) >= 32'sh1921fb60 & $signed(theta) < 32'sh4b65f200 ? _cordic_io_in_z0_T_7 :
    _cordic_io_in_z0_T_8; // @[Sin.scala 88:65 90:23 92:23]
  wire [1:0] _GEN_2 = $signed(theta) >= 32'sh4b65f200 ? 2'h2 : {{1'd0}, _T_3}; // @[Sin.scala 85:37 86:25]
  wire  _io_out_T_1 = ~cordic_io_out_x[31]; // @[Sin.scala 99:17]
  wire [31:0] _io_out_T_3 = {_io_out_T_1,cordic_io_out_x[30:0]}; // @[Sin.scala 99:38]
  wire [31:0] _GEN_4 = cordic_io_out_mode == 2'h1 ? _io_out_T_3 : cordic_io_out_x; // @[Sin.scala 101:14 98:33 99:14]
  reg [31:0] shift_reg_0; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_1; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_2; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_3; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_4; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_5; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_6; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_7; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_8; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_9; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_10; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_11; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_12; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_13; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_14; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_15; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_16; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_17; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_18; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_19; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_20; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_21; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_22; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_23; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_24; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_25; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_26; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_27; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_28; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_29; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_30; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_31; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_32; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_33; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_34; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_35; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_36; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_37; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_38; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_39; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_40; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_41; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_42; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_43; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_44; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_45; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_46; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_47; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_48; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_49; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_50; // @[Sin.scala 236:26]
  reg [31:0] shift_reg_51; // @[Sin.scala 236:26]
  TrigRangeReducer reducer ( // @[Sin.scala 24:31]
    .clock(reducer_clock),
    .reset(reducer_reset),
    .io_in(reducer_io_in),
    .io_out(reducer_io_out)
  );
  FloatToFixed32 tofixedz0 ( // @[Sin.scala 76:27]
    .io_in(tofixedz0_io_in),
    .io_out(tofixedz0_io_out)
  );
  CORDIC cordic ( // @[Sin.scala 79:24]
    .clock(cordic_clock),
    .reset(cordic_reset),
    .io_in_z0(cordic_io_in_z0),
    .io_in_mode(cordic_io_in_mode),
    .io_out_x(cordic_io_out_x),
    .io_out_mode(cordic_io_out_mode)
  );
  assign io_out = cordic_io_out_mode == 2'h2 ? cordic_io_out_x : _GEN_4; // @[Sin.scala 96:27 97:14]
  assign io_valid = shift_reg_51[0]; // @[Sin.scala 241:12]
  assign reducer_clock = clock;
  assign reducer_reset = reset;
  assign reducer_io_in = io_in; // @[Sin.scala 77:19]
  assign tofixedz0_io_in = reducer_io_out; // @[Sin.scala 78:21]
  assign cordic_clock = clock;
  assign cordic_reset = reset;
  assign cordic_io_in_z0 = $signed(theta) >= 32'sh4b65f200 ? _cordic_io_in_z0_T_3 : _GEN_1; // @[Sin.scala 85:37 87:23]
  assign cordic_io_in_mode = {{30'd0}, _GEN_2};
  always @(posedge clock) begin
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_0 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_0 <= {{31'd0}, io_ready}; // @[Sin.scala 237:16]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_1 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_1 <= shift_reg_0; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_2 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_2 <= shift_reg_1; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_3 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_3 <= shift_reg_2; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_4 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_4 <= shift_reg_3; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_5 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_5 <= shift_reg_4; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_6 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_6 <= shift_reg_5; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_7 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_7 <= shift_reg_6; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_8 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_8 <= shift_reg_7; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_9 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_9 <= shift_reg_8; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_10 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_10 <= shift_reg_9; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_11 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_11 <= shift_reg_10; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_12 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_12 <= shift_reg_11; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_13 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_13 <= shift_reg_12; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_14 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_14 <= shift_reg_13; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_15 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_15 <= shift_reg_14; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_16 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_16 <= shift_reg_15; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_17 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_17 <= shift_reg_16; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_18 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_18 <= shift_reg_17; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_19 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_19 <= shift_reg_18; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_20 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_20 <= shift_reg_19; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_21 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_21 <= shift_reg_20; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_22 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_22 <= shift_reg_21; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_23 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_23 <= shift_reg_22; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_24 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_24 <= shift_reg_23; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_25 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_25 <= shift_reg_24; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_26 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_26 <= shift_reg_25; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_27 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_27 <= shift_reg_26; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_28 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_28 <= shift_reg_27; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_29 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_29 <= shift_reg_28; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_30 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_30 <= shift_reg_29; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_31 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_31 <= shift_reg_30; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_32 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_32 <= shift_reg_31; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_33 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_33 <= shift_reg_32; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_34 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_34 <= shift_reg_33; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_35 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_35 <= shift_reg_34; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_36 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_36 <= shift_reg_35; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_37 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_37 <= shift_reg_36; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_38 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_38 <= shift_reg_37; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_39 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_39 <= shift_reg_38; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_40 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_40 <= shift_reg_39; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_41 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_41 <= shift_reg_40; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_42 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_42 <= shift_reg_41; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_43 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_43 <= shift_reg_42; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_44 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_44 <= shift_reg_43; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_45 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_45 <= shift_reg_44; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_46 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_46 <= shift_reg_45; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_47 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_47 <= shift_reg_46; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_48 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_48 <= shift_reg_47; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_49 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_49 <= shift_reg_48; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_50 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_50 <= shift_reg_49; // @[Sin.scala 239:18]
    end
    if (reset) begin // @[Sin.scala 236:26]
      shift_reg_51 <= 32'h0; // @[Sin.scala 236:26]
    end else begin
      shift_reg_51 <= shift_reg_50; // @[Sin.scala 239:18]
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
  shift_reg_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  shift_reg_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  shift_reg_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  shift_reg_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  shift_reg_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  shift_reg_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  shift_reg_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  shift_reg_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  shift_reg_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  shift_reg_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  shift_reg_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  shift_reg_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  shift_reg_12 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  shift_reg_13 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  shift_reg_14 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  shift_reg_15 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  shift_reg_16 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  shift_reg_17 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  shift_reg_18 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  shift_reg_19 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  shift_reg_20 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  shift_reg_21 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  shift_reg_22 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  shift_reg_23 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  shift_reg_24 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  shift_reg_25 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  shift_reg_26 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  shift_reg_27 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  shift_reg_28 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  shift_reg_29 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  shift_reg_30 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  shift_reg_31 = _RAND_31[31:0];
  _RAND_32 = {1{`RANDOM}};
  shift_reg_32 = _RAND_32[31:0];
  _RAND_33 = {1{`RANDOM}};
  shift_reg_33 = _RAND_33[31:0];
  _RAND_34 = {1{`RANDOM}};
  shift_reg_34 = _RAND_34[31:0];
  _RAND_35 = {1{`RANDOM}};
  shift_reg_35 = _RAND_35[31:0];
  _RAND_36 = {1{`RANDOM}};
  shift_reg_36 = _RAND_36[31:0];
  _RAND_37 = {1{`RANDOM}};
  shift_reg_37 = _RAND_37[31:0];
  _RAND_38 = {1{`RANDOM}};
  shift_reg_38 = _RAND_38[31:0];
  _RAND_39 = {1{`RANDOM}};
  shift_reg_39 = _RAND_39[31:0];
  _RAND_40 = {1{`RANDOM}};
  shift_reg_40 = _RAND_40[31:0];
  _RAND_41 = {1{`RANDOM}};
  shift_reg_41 = _RAND_41[31:0];
  _RAND_42 = {1{`RANDOM}};
  shift_reg_42 = _RAND_42[31:0];
  _RAND_43 = {1{`RANDOM}};
  shift_reg_43 = _RAND_43[31:0];
  _RAND_44 = {1{`RANDOM}};
  shift_reg_44 = _RAND_44[31:0];
  _RAND_45 = {1{`RANDOM}};
  shift_reg_45 = _RAND_45[31:0];
  _RAND_46 = {1{`RANDOM}};
  shift_reg_46 = _RAND_46[31:0];
  _RAND_47 = {1{`RANDOM}};
  shift_reg_47 = _RAND_47[31:0];
  _RAND_48 = {1{`RANDOM}};
  shift_reg_48 = _RAND_48[31:0];
  _RAND_49 = {1{`RANDOM}};
  shift_reg_49 = _RAND_49[31:0];
  _RAND_50 = {1{`RANDOM}};
  shift_reg_50 = _RAND_50[31:0];
  _RAND_51 = {1{`RANDOM}};
  shift_reg_51 = _RAND_51[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

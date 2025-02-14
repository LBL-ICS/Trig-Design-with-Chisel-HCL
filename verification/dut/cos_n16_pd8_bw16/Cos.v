module Cos(
  input         clock,
  input         reset,
  input  [15:0] io_in,
  input         io_ready,
  output [15:0] io_out,
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
`endif // RANDOMIZE_REG_INIT
  wire  reducer_clock; // @[Cos.scala 24:31]
  wire  reducer_reset; // @[Cos.scala 24:31]
  wire [15:0] reducer_io_in; // @[Cos.scala 24:31]
  wire [15:0] reducer_io_out; // @[Cos.scala 24:31]
  wire [15:0] tofixedz0_io_in; // @[Cos.scala 38:25]
  wire [15:0] tofixedz0_io_out; // @[Cos.scala 38:25]
  wire  cordic_clock; // @[Cos.scala 42:22]
  wire  cordic_reset; // @[Cos.scala 42:22]
  wire [15:0] cordic_io_in_z0; // @[Cos.scala 42:22]
  wire [15:0] cordic_io_in_mode; // @[Cos.scala 42:22]
  wire [15:0] cordic_io_out_x; // @[Cos.scala 42:22]
  wire [1:0] cordic_io_out_mode; // @[Cos.scala 42:22]
  wire [15:0] _theta_T_5 = $signed(tofixedz0_io_out) + 16'sh6488; // @[Cos.scala 45:75]
  wire [15:0] theta = $signed(tofixedz0_io_out) < 16'sh0 ? $signed(_theta_T_5) : $signed(tofixedz0_io_out); // @[Cos.scala 45:19]
  wire [15:0] _cordic_io_in_z0_T_3 = $signed(theta) - 16'sh6488; // @[Cos.scala 51:41]
  wire  _T_3 = $signed(theta) >= 16'sh1922 & $signed(theta) < 16'sh4b66; // @[Cos.scala 52:34]
  wire [15:0] _cordic_io_in_z0_T_7 = 16'sh3244 - $signed(theta); // @[Cos.scala 54:37]
  wire [15:0] _cordic_io_in_z0_T_8 = $signed(tofixedz0_io_out) < 16'sh0 ? $signed(_theta_T_5) : $signed(tofixedz0_io_out
    ); // @[Cos.scala 56:30]
  wire [15:0] _GEN_1 = $signed(theta) >= 16'sh1922 & $signed(theta) < 16'sh4b66 ? _cordic_io_in_z0_T_7 :
    _cordic_io_in_z0_T_8; // @[Cos.scala 52:63 54:21 56:21]
  wire [1:0] _GEN_2 = $signed(theta) >= 16'sh4b66 ? 2'h2 : {{1'd0}, _T_3}; // @[Cos.scala 49:35 50:23]
  wire  _io_out_T_1 = ~cordic_io_out_x[15]; // @[Cos.scala 63:15]
  wire [15:0] _io_out_T_3 = {_io_out_T_1,cordic_io_out_x[14:0]}; // @[Cos.scala 63:36]
  wire [15:0] _GEN_4 = cordic_io_out_mode == 2'h1 ? _io_out_T_3 : cordic_io_out_x; // @[Cos.scala 62:31 63:12 65:12]
  reg [15:0] shift_reg_0; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_1; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_2; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_3; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_4; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_5; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_6; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_7; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_8; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_9; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_10; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_11; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_12; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_13; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_14; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_15; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_16; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_17; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_18; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_19; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_20; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_21; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_22; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_23; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_24; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_25; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_26; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_27; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_28; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_29; // @[Cos.scala 232:26]
  reg [15:0] shift_reg_30; // @[Cos.scala 232:26]
  TrigRangeReducer reducer ( // @[Cos.scala 24:31]
    .clock(reducer_clock),
    .reset(reducer_reset),
    .io_in(reducer_io_in),
    .io_out(reducer_io_out)
  );
  FloatToFixed16 tofixedz0 ( // @[Cos.scala 38:25]
    .io_in(tofixedz0_io_in),
    .io_out(tofixedz0_io_out)
  );
  CORDIC cordic ( // @[Cos.scala 42:22]
    .clock(cordic_clock),
    .reset(cordic_reset),
    .io_in_z0(cordic_io_in_z0),
    .io_in_mode(cordic_io_in_mode),
    .io_out_x(cordic_io_out_x),
    .io_out_mode(cordic_io_out_mode)
  );
  assign io_out = cordic_io_out_mode == 2'h2 ? cordic_io_out_x : _GEN_4; // @[Cos.scala 60:25 61:12]
  assign io_valid = shift_reg_30[0]; // @[Cos.scala 237:12]
  assign reducer_clock = clock;
  assign reducer_reset = reset;
  assign reducer_io_in = io_in; // @[Cos.scala 39:17]
  assign tofixedz0_io_in = reducer_io_out; // @[Cos.scala 40:19]
  assign cordic_clock = clock;
  assign cordic_reset = reset;
  assign cordic_io_in_z0 = $signed(theta) >= 16'sh4b66 ? _cordic_io_in_z0_T_3 : _GEN_1; // @[Cos.scala 49:35 51:21]
  assign cordic_io_in_mode = {{14'd0}, _GEN_2};
  always @(posedge clock) begin
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_0 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_0 <= {{15'd0}, io_ready}; // @[Cos.scala 233:16]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_1 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_1 <= shift_reg_0; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_2 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_2 <= shift_reg_1; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_3 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_3 <= shift_reg_2; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_4 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_4 <= shift_reg_3; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_5 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_5 <= shift_reg_4; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_6 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_6 <= shift_reg_5; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_7 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_7 <= shift_reg_6; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_8 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_8 <= shift_reg_7; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_9 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_9 <= shift_reg_8; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_10 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_10 <= shift_reg_9; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_11 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_11 <= shift_reg_10; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_12 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_12 <= shift_reg_11; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_13 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_13 <= shift_reg_12; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_14 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_14 <= shift_reg_13; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_15 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_15 <= shift_reg_14; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_16 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_16 <= shift_reg_15; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_17 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_17 <= shift_reg_16; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_18 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_18 <= shift_reg_17; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_19 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_19 <= shift_reg_18; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_20 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_20 <= shift_reg_19; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_21 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_21 <= shift_reg_20; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_22 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_22 <= shift_reg_21; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_23 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_23 <= shift_reg_22; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_24 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_24 <= shift_reg_23; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_25 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_25 <= shift_reg_24; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_26 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_26 <= shift_reg_25; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_27 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_27 <= shift_reg_26; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_28 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_28 <= shift_reg_27; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_29 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_29 <= shift_reg_28; // @[Cos.scala 235:18]
    end
    if (reset) begin // @[Cos.scala 232:26]
      shift_reg_30 <= 16'h0; // @[Cos.scala 232:26]
    end else begin
      shift_reg_30 <= shift_reg_29; // @[Cos.scala 235:18]
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
  shift_reg_0 = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  shift_reg_1 = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  shift_reg_2 = _RAND_2[15:0];
  _RAND_3 = {1{`RANDOM}};
  shift_reg_3 = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  shift_reg_4 = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  shift_reg_5 = _RAND_5[15:0];
  _RAND_6 = {1{`RANDOM}};
  shift_reg_6 = _RAND_6[15:0];
  _RAND_7 = {1{`RANDOM}};
  shift_reg_7 = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  shift_reg_8 = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  shift_reg_9 = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  shift_reg_10 = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  shift_reg_11 = _RAND_11[15:0];
  _RAND_12 = {1{`RANDOM}};
  shift_reg_12 = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  shift_reg_13 = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  shift_reg_14 = _RAND_14[15:0];
  _RAND_15 = {1{`RANDOM}};
  shift_reg_15 = _RAND_15[15:0];
  _RAND_16 = {1{`RANDOM}};
  shift_reg_16 = _RAND_16[15:0];
  _RAND_17 = {1{`RANDOM}};
  shift_reg_17 = _RAND_17[15:0];
  _RAND_18 = {1{`RANDOM}};
  shift_reg_18 = _RAND_18[15:0];
  _RAND_19 = {1{`RANDOM}};
  shift_reg_19 = _RAND_19[15:0];
  _RAND_20 = {1{`RANDOM}};
  shift_reg_20 = _RAND_20[15:0];
  _RAND_21 = {1{`RANDOM}};
  shift_reg_21 = _RAND_21[15:0];
  _RAND_22 = {1{`RANDOM}};
  shift_reg_22 = _RAND_22[15:0];
  _RAND_23 = {1{`RANDOM}};
  shift_reg_23 = _RAND_23[15:0];
  _RAND_24 = {1{`RANDOM}};
  shift_reg_24 = _RAND_24[15:0];
  _RAND_25 = {1{`RANDOM}};
  shift_reg_25 = _RAND_25[15:0];
  _RAND_26 = {1{`RANDOM}};
  shift_reg_26 = _RAND_26[15:0];
  _RAND_27 = {1{`RANDOM}};
  shift_reg_27 = _RAND_27[15:0];
  _RAND_28 = {1{`RANDOM}};
  shift_reg_28 = _RAND_28[15:0];
  _RAND_29 = {1{`RANDOM}};
  shift_reg_29 = _RAND_29[15:0];
  _RAND_30 = {1{`RANDOM}};
  shift_reg_30 = _RAND_30[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

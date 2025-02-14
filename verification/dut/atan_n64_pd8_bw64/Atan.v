module Atan(
  input         clock,
  input         reset,
  input  [63:0] io_in,
  output [63:0] io_out,
  input         io_ready,
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
`endif // RANDOMIZE_REG_INIT
  wire  vcordic_clock; // @[Atan.scala 82:25]
  wire  vcordic_reset; // @[Atan.scala 82:25]
  wire [63:0] vcordic_io_in_y0; // @[Atan.scala 82:25]
  wire [63:0] vcordic_io_out_z; // @[Atan.scala 82:25]
  wire  inputsign = io_in[63]; // @[Atan.scala 80:26]
  wire [63:0] _vcordic_io_in_y0_T = {1'h0,io_in[62:0]}; // @[Atan.scala 89:38]
  wire [63:0] _vcordic_io_in_y0_T_2 = {inputsign,63'h4202a05f20000000}; // @[Atan.scala 89:73]
  wire [63:0] _vcordic_io_in_y0_T_5 = {inputsign,63'h3da5fd7fe1796495}; // @[Atan.scala 90:56]
  wire [63:0] _vcordic_io_in_y0_T_6 = $signed(_vcordic_io_in_y0_T) <= 64'sh3da5fd7fe1796495 ? _vcordic_io_in_y0_T_5 :
    io_in; // @[Atan.scala 90:10]
  reg [63:0] shift_reg_0; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_1; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_2; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_3; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_4; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_5; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_6; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_7; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_8; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_9; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_10; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_11; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_12; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_13; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_14; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_15; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_16; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_17; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_18; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_19; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_20; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_21; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_22; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_23; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_24; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_25; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_26; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_27; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_28; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_29; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_30; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_31; // @[Atan.scala 212:26]
  reg [63:0] shift_reg_32; // @[Atan.scala 212:26]
  VCORDIC vcordic ( // @[Atan.scala 82:25]
    .clock(vcordic_clock),
    .reset(vcordic_reset),
    .io_in_y0(vcordic_io_in_y0),
    .io_out_z(vcordic_io_out_z)
  );
  assign io_out = vcordic_io_out_z; // @[Atan.scala 94:12]
  assign io_valid = shift_reg_32[0]; // @[Atan.scala 217:12]
  assign vcordic_clock = clock;
  assign vcordic_reset = reset;
  assign vcordic_io_in_y0 = $signed(_vcordic_io_in_y0_T) > 64'sh4202a05f20000000 ? _vcordic_io_in_y0_T_2 :
    _vcordic_io_in_y0_T_6; // @[Atan.scala 89:28]
  always @(posedge clock) begin
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_0 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_0 <= {{63'd0}, io_ready}; // @[Atan.scala 213:16]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_1 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_1 <= shift_reg_0; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_2 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_2 <= shift_reg_1; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_3 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_3 <= shift_reg_2; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_4 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_4 <= shift_reg_3; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_5 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_5 <= shift_reg_4; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_6 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_6 <= shift_reg_5; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_7 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_7 <= shift_reg_6; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_8 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_8 <= shift_reg_7; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_9 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_9 <= shift_reg_8; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_10 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_10 <= shift_reg_9; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_11 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_11 <= shift_reg_10; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_12 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_12 <= shift_reg_11; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_13 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_13 <= shift_reg_12; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_14 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_14 <= shift_reg_13; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_15 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_15 <= shift_reg_14; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_16 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_16 <= shift_reg_15; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_17 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_17 <= shift_reg_16; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_18 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_18 <= shift_reg_17; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_19 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_19 <= shift_reg_18; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_20 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_20 <= shift_reg_19; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_21 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_21 <= shift_reg_20; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_22 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_22 <= shift_reg_21; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_23 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_23 <= shift_reg_22; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_24 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_24 <= shift_reg_23; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_25 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_25 <= shift_reg_24; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_26 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_26 <= shift_reg_25; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_27 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_27 <= shift_reg_26; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_28 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_28 <= shift_reg_27; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_29 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_29 <= shift_reg_28; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_30 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_30 <= shift_reg_29; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_31 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_31 <= shift_reg_30; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_32 <= 64'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_32 <= shift_reg_31; // @[Atan.scala 215:18]
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
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

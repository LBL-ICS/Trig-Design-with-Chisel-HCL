module Atan(
  input          clock,
  input          reset,
  input  [127:0] io_in,
  output [127:0] io_out,
  input          io_ready,
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
`endif // RANDOMIZE_REG_INIT
  wire  vcordic_clock; // @[Atan.scala 132:25]
  wire  vcordic_reset; // @[Atan.scala 132:25]
  wire [127:0] vcordic_io_in_y0; // @[Atan.scala 132:25]
  wire [127:0] vcordic_io_out_z; // @[Atan.scala 132:25]
  wire  inputsign = io_in[127]; // @[Atan.scala 130:26]
  wire [127:0] _vcordic_io_in_y0_T = {1'h0,io_in[126:0]}; // @[Atan.scala 139:38]
  wire [127:0] _vcordic_io_in_y0_T_2 = {inputsign,127'h402a2309ce5400000000000000000000}; // @[Atan.scala 139:73]
  wire [127:0] _vcordic_io_in_y0_T_5 = {inputsign,127'h3fd06849b86a12b9b01ea70909833de7}; // @[Atan.scala 140:56]
  wire [127:0] _vcordic_io_in_y0_T_6 = $signed(_vcordic_io_in_y0_T) <= 128'sh3fd06849b86a12b9b01ea70909833de7 ?
    _vcordic_io_in_y0_T_5 : io_in; // @[Atan.scala 140:10]
  reg [127:0] shift_reg_0; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_1; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_2; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_3; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_4; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_5; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_6; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_7; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_8; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_9; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_10; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_11; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_12; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_13; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_14; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_15; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_16; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_17; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_18; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_19; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_20; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_21; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_22; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_23; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_24; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_25; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_26; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_27; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_28; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_29; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_30; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_31; // @[Atan.scala 212:26]
  reg [127:0] shift_reg_32; // @[Atan.scala 212:26]
  VCORDIC vcordic ( // @[Atan.scala 132:25]
    .clock(vcordic_clock),
    .reset(vcordic_reset),
    .io_in_y0(vcordic_io_in_y0),
    .io_out_z(vcordic_io_out_z)
  );
  assign io_out = vcordic_io_out_z; // @[Atan.scala 144:12]
  assign io_valid = shift_reg_32[0]; // @[Atan.scala 217:12]
  assign vcordic_clock = clock;
  assign vcordic_reset = reset;
  assign vcordic_io_in_y0 = $signed(_vcordic_io_in_y0_T) > 128'sh402a2309ce5400000000000000000000 ?
    _vcordic_io_in_y0_T_2 : _vcordic_io_in_y0_T_6; // @[Atan.scala 139:28]
  always @(posedge clock) begin
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_0 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_0 <= {{127'd0}, io_ready}; // @[Atan.scala 213:16]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_1 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_1 <= shift_reg_0; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_2 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_2 <= shift_reg_1; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_3 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_3 <= shift_reg_2; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_4 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_4 <= shift_reg_3; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_5 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_5 <= shift_reg_4; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_6 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_6 <= shift_reg_5; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_7 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_7 <= shift_reg_6; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_8 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_8 <= shift_reg_7; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_9 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_9 <= shift_reg_8; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_10 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_10 <= shift_reg_9; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_11 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_11 <= shift_reg_10; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_12 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_12 <= shift_reg_11; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_13 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_13 <= shift_reg_12; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_14 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_14 <= shift_reg_13; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_15 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_15 <= shift_reg_14; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_16 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_16 <= shift_reg_15; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_17 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_17 <= shift_reg_16; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_18 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_18 <= shift_reg_17; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_19 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_19 <= shift_reg_18; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_20 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_20 <= shift_reg_19; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_21 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_21 <= shift_reg_20; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_22 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_22 <= shift_reg_21; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_23 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_23 <= shift_reg_22; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_24 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_24 <= shift_reg_23; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_25 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_25 <= shift_reg_24; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_26 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_26 <= shift_reg_25; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_27 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_27 <= shift_reg_26; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_28 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_28 <= shift_reg_27; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_29 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_29 <= shift_reg_28; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_30 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_30 <= shift_reg_29; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_31 <= 128'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_31 <= shift_reg_30; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_32 <= 128'h0; // @[Atan.scala 212:26]
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
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

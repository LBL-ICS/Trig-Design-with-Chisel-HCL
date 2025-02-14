module Atan(
  input         clock,
  input         reset,
  input  [31:0] io_in,
  output [31:0] io_out,
  input         io_ready,
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
`endif // RANDOMIZE_REG_INIT
  wire  vcordic_clock; // @[Atan.scala 59:25]
  wire  vcordic_reset; // @[Atan.scala 59:25]
  wire [31:0] vcordic_io_in_y0; // @[Atan.scala 59:25]
  wire [31:0] vcordic_io_out_z; // @[Atan.scala 59:25]
  wire  inputsign = io_in[31]; // @[Atan.scala 57:26]
  wire [31:0] _vcordic_io_in_y0_T = {1'h0,io_in[30:0]}; // @[Atan.scala 67:38]
  wire [31:0] _vcordic_io_in_y0_T_2 = {inputsign,31'h4b189680}; // @[Atan.scala 67:73]
  wire [31:0] _vcordic_io_in_y0_T_5 = {inputsign,31'h322bcc77}; // @[Atan.scala 68:56]
  wire [31:0] _vcordic_io_in_y0_T_6 = $signed(_vcordic_io_in_y0_T) <= 32'sh322bcc77 ? _vcordic_io_in_y0_T_5 : io_in; // @[Atan.scala 68:10]
  reg [31:0] shift_reg_0; // @[Atan.scala 212:26]
  reg [31:0] shift_reg_1; // @[Atan.scala 212:26]
  reg [31:0] shift_reg_2; // @[Atan.scala 212:26]
  reg [31:0] shift_reg_3; // @[Atan.scala 212:26]
  reg [31:0] shift_reg_4; // @[Atan.scala 212:26]
  reg [31:0] shift_reg_5; // @[Atan.scala 212:26]
  reg [31:0] shift_reg_6; // @[Atan.scala 212:26]
  reg [31:0] shift_reg_7; // @[Atan.scala 212:26]
  reg [31:0] shift_reg_8; // @[Atan.scala 212:26]
  reg [31:0] shift_reg_9; // @[Atan.scala 212:26]
  reg [31:0] shift_reg_10; // @[Atan.scala 212:26]
  reg [31:0] shift_reg_11; // @[Atan.scala 212:26]
  reg [31:0] shift_reg_12; // @[Atan.scala 212:26]
  reg [31:0] shift_reg_13; // @[Atan.scala 212:26]
  reg [31:0] shift_reg_14; // @[Atan.scala 212:26]
  reg [31:0] shift_reg_15; // @[Atan.scala 212:26]
  reg [31:0] shift_reg_16; // @[Atan.scala 212:26]
  reg [31:0] shift_reg_17; // @[Atan.scala 212:26]
  VCORDIC vcordic ( // @[Atan.scala 59:25]
    .clock(vcordic_clock),
    .reset(vcordic_reset),
    .io_in_y0(vcordic_io_in_y0),
    .io_out_z(vcordic_io_out_z)
  );
  assign io_out = vcordic_io_out_z; // @[Atan.scala 72:12]
  assign io_valid = shift_reg_17[0]; // @[Atan.scala 217:12]
  assign vcordic_clock = clock;
  assign vcordic_reset = reset;
  assign vcordic_io_in_y0 = $signed(_vcordic_io_in_y0_T) > 32'sh4b189680 ? _vcordic_io_in_y0_T_2 : _vcordic_io_in_y0_T_6
    ; // @[Atan.scala 67:28]
  always @(posedge clock) begin
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_0 <= 32'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_0 <= {{31'd0}, io_ready}; // @[Atan.scala 213:16]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_1 <= 32'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_1 <= shift_reg_0; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_2 <= 32'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_2 <= shift_reg_1; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_3 <= 32'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_3 <= shift_reg_2; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_4 <= 32'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_4 <= shift_reg_3; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_5 <= 32'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_5 <= shift_reg_4; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_6 <= 32'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_6 <= shift_reg_5; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_7 <= 32'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_7 <= shift_reg_6; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_8 <= 32'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_8 <= shift_reg_7; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_9 <= 32'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_9 <= shift_reg_8; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_10 <= 32'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_10 <= shift_reg_9; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_11 <= 32'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_11 <= shift_reg_10; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_12 <= 32'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_12 <= shift_reg_11; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_13 <= 32'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_13 <= shift_reg_12; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_14 <= 32'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_14 <= shift_reg_13; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_15 <= 32'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_15 <= shift_reg_14; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_16 <= 32'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_16 <= shift_reg_15; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_17 <= 32'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_17 <= shift_reg_16; // @[Atan.scala 215:18]
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
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

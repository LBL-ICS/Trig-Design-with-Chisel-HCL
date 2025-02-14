module Atan(
  input         clock,
  input         reset,
  input  [15:0] io_in,
  output [15:0] io_out,
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
`endif // RANDOMIZE_REG_INIT
  wire  vcordic_clock; // @[Atan.scala 36:25]
  wire  vcordic_reset; // @[Atan.scala 36:25]
  wire [15:0] vcordic_io_in_y0; // @[Atan.scala 36:25]
  wire [15:0] vcordic_io_out_z; // @[Atan.scala 36:25]
  wire  inputsign = io_in[15]; // @[Atan.scala 34:26]
  wire [15:0] _vcordic_io_in_y0_T = {1'h0,io_in[14:0]}; // @[Atan.scala 44:38]
  wire [15:0] _vcordic_io_in_y0_T_2 = {inputsign,15'h70e2}; // @[Atan.scala 44:73]
  wire [15:0] _vcordic_io_in_y0_T_5 = {inputsign,15'ha8}; // @[Atan.scala 45:56]
  wire [15:0] _vcordic_io_in_y0_T_6 = $signed(_vcordic_io_in_y0_T) <= 16'sha8 ? _vcordic_io_in_y0_T_5 : io_in; // @[Atan.scala 45:10]
  reg [15:0] shift_reg_0; // @[Atan.scala 212:26]
  reg [15:0] shift_reg_1; // @[Atan.scala 212:26]
  reg [15:0] shift_reg_2; // @[Atan.scala 212:26]
  reg [15:0] shift_reg_3; // @[Atan.scala 212:26]
  reg [15:0] shift_reg_4; // @[Atan.scala 212:26]
  reg [15:0] shift_reg_5; // @[Atan.scala 212:26]
  reg [15:0] shift_reg_6; // @[Atan.scala 212:26]
  reg [15:0] shift_reg_7; // @[Atan.scala 212:26]
  reg [15:0] shift_reg_8; // @[Atan.scala 212:26]
  VCORDIC vcordic ( // @[Atan.scala 36:25]
    .clock(vcordic_clock),
    .reset(vcordic_reset),
    .io_in_y0(vcordic_io_in_y0),
    .io_out_z(vcordic_io_out_z)
  );
  assign io_out = vcordic_io_out_z; // @[Atan.scala 49:12]
  assign io_valid = shift_reg_8[0]; // @[Atan.scala 217:12]
  assign vcordic_clock = clock;
  assign vcordic_reset = reset;
  assign vcordic_io_in_y0 = $signed(_vcordic_io_in_y0_T) > 16'sh70e2 ? _vcordic_io_in_y0_T_2 : _vcordic_io_in_y0_T_6; // @[Atan.scala 44:28]
  always @(posedge clock) begin
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_0 <= 16'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_0 <= {{15'd0}, io_ready}; // @[Atan.scala 213:16]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_1 <= 16'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_1 <= shift_reg_0; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_2 <= 16'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_2 <= shift_reg_1; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_3 <= 16'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_3 <= shift_reg_2; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_4 <= 16'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_4 <= shift_reg_3; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_5 <= 16'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_5 <= shift_reg_4; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_6 <= 16'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_6 <= shift_reg_5; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_7 <= 16'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_7 <= shift_reg_6; // @[Atan.scala 215:18]
    end
    if (reset) begin // @[Atan.scala 212:26]
      shift_reg_8 <= 16'h0; // @[Atan.scala 212:26]
    end else begin
      shift_reg_8 <= shift_reg_7; // @[Atan.scala 215:18]
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
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

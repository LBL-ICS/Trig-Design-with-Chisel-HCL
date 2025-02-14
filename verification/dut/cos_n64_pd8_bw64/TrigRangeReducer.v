module TrigRangeReducer(
  input         clock,
  input         reset,
  input  [63:0] io_in,
  output [63:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  divider_clock; // @[TrigRangeReducer.scala 24:23]
  wire  divider_reset; // @[TrigRangeReducer.scala 24:23]
  wire [63:0] divider_io_in_a; // @[TrigRangeReducer.scala 24:23]
  wire [63:0] divider_io_out_s; // @[TrigRangeReducer.scala 24:23]
  wire [63:0] extractor_io_in_a; // @[TrigRangeReducer.scala 25:25]
  wire [63:0] extractor_io_out_frac; // @[TrigRangeReducer.scala 25:25]
  wire  mul_clock; // @[TrigRangeReducer.scala 26:19]
  wire  mul_reset; // @[TrigRangeReducer.scala 26:19]
  wire [63:0] mul_io_in_a; // @[TrigRangeReducer.scala 26:19]
  wire [63:0] mul_io_out_s; // @[TrigRangeReducer.scala 26:19]
  reg [63:0] reg1; // @[TrigRangeReducer.scala 84:19]
  FP_divider_bw64 divider ( // @[TrigRangeReducer.scala 24:23]
    .clock(divider_clock),
    .reset(divider_reset),
    .io_in_a(divider_io_in_a),
    .io_out_s(divider_io_out_s)
  );
  FP_extract extractor ( // @[TrigRangeReducer.scala 25:25]
    .io_in_a(extractor_io_in_a),
    .io_out_frac(extractor_io_out_frac)
  );
  FP_multiplier_bw64 mul ( // @[TrigRangeReducer.scala 26:19]
    .clock(mul_clock),
    .reset(mul_reset),
    .io_in_a(mul_io_in_a),
    .io_out_s(mul_io_out_s)
  );
  assign io_out = mul_io_out_s; // @[TrigRangeReducer.scala 94:12]
  assign divider_clock = clock;
  assign divider_reset = reset;
  assign divider_io_in_a = io_in; // @[TrigRangeReducer.scala 81:21]
  assign extractor_io_in_a = reg1; // @[TrigRangeReducer.scala 88:23]
  assign mul_clock = clock;
  assign mul_reset = reset;
  assign mul_io_in_a = extractor_io_out_frac; // @[TrigRangeReducer.scala 92:17]
  always @(posedge clock) begin
    reg1 <= divider_io_out_s; // @[TrigRangeReducer.scala 86:10]
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
  reg1 = _RAND_0[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

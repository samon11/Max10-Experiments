// adapted from https://www.fpga4fun.com/Counters3.html

module random
#(parameter SEED = 8'd1)  // must be non-zero)

(
  input clk_in,
  output logic[3:0] lfsr_out
);

logic [7:0] LFSR = SEED;

wire feedback = LFSR[7];

assign lfsr_out = LFSR;

always @(posedge clk_in) begin
	LFSR[0] <= feedback;
	LFSR[1] <= LFSR[3];
	LFSR[2] <= LFSR[6] ^ feedback;
	LFSR[3] <= LFSR[2] ^ feedback;
	LFSR[4] <= LFSR[0] ^ feedback;
	LFSR[5] <= ~(LFSR[4] & feedback);
	LFSR[6] <= ~(LFSR[1] & feedback);
	LFSR[7] <= LFSR[5];
end
endmodule
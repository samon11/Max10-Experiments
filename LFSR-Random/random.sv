// adapted from https://www.fpga4fun.com/Counters3.html

module random(
  input clk_in,
  output reg[7:0] LFSR_OUT
);

logic[7:0] LFSR = 255;

wire feedback = LFSR[7];

assign LFSR_OUT = LFSR;

always @(posedge clk_in) begin
	LFSR[0] <= feedback;
	LFSR[1] <= LFSR[3];
	LFSR[2] <= LFSR[6] ^ feedback;
	LFSR[3] <= LFSR[2] ^ feedback;
	LFSR[4] <= LFSR[0] ^ feedback;
	LFSR[5] <= ~(LFSR[4] & feedback);
	LFSR[6] <= LFSR[1];
	LFSR[7] <= LFSR[5];
end
endmodule
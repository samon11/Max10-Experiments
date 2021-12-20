module DE10_LITE(

	//////////// CLOCK //////////
	input 		          		ADC_CLK_10,

	//////////// KEY //////////
	input 		     [1:0]		KEY,

	//////////// LED //////////
	output		     [9:0]		LEDR,

	//////////// SW //////////
	input 		     [9:0]		SW
);

logic CLK_OUT;
reg [7:0] result;

clock CLOCK0 (.clk_in(ADC_CLK_10), .rst(), .clk_out(CLK_OUT));
random RAND0(.clk_in(CLK_OUT), .LFSR_OUT(result));

assign LEDR = result;


endmodule

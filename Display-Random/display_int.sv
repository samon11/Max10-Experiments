module display_int (
    input logic[3:0] int_in,
    output logic[7:0] dsp_out
);

logic [7:0] DISPLAY;
assign dsp_out = DISPLAY;

always @(*) begin
    case (int_in) 
        4'd0: DISPLAY = 8'b11000000;
        4'd1: DISPLAY = 8'b11111001;
        4'd2: DISPLAY = 8'b10100100;
        4'd3: DISPLAY = 8'b10110000;
        4'd4: DISPLAY = 8'b10011001;
        4'd5: DISPLAY = 8'b10010010;
        4'd6: DISPLAY = 8'b10000010;
        4'd7: DISPLAY = 8'b11111000;
        4'd8: DISPLAY = 8'b10000000;
        4'd9: DISPLAY = 8'b10010000;
        default : DISPLAY = 8'b11000000;
    endcase
end


endmodule
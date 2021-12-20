module clock(input clk_in, input rst, output clk_out);

logic[23:0] cnt = 0;
logic clk = 0;
assign clk_out = clk;

always @(posedge clk_in) begin
    if (cnt == 10000000) begin
        cnt = 0;
        clk = ~clk;
    end
    else
        cnt = cnt + 1;
end

endmodule
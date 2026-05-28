`timescale 1ns/10ps
module flopenr(clk, reset, en, d, q);

input clk, reset, en;
input [7:0] d;
output reg [7:0] q;

always @(posedge clk) begin
    if (reset)
        q <= 8'b0;
    else if (en)
        q <= d;
end


endmodule

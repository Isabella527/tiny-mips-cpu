`timescale 1ns/10ps

module regfile (
    clk,
    regwrite,
    ra1,
    ra2,
    wa,
    wd,
    rd1,
    rd2
);

input clk;
input regwrite;

input [2:0] ra1;
input [2:0] ra2;
input [2:0] wa;

input [7:0] wd;

output [7:0] rd1;
output [7:0] rd2;

// 8 registers, 8 bits each
reg [7:0] REGS [7:0];

integer i;

// --------------------------------------------------
// Initialize registers to zero
// --------------------------------------------------
initial begin
    for (i = 0; i < 8; i = i + 1)
        REGS[i] = 8'b0;
end

// --------------------------------------------------
// WRITE
// --------------------------------------------------
always @(posedge clk) begin
    if (regwrite && (wa != 3'b000))
        REGS[wa] <= wd;
end

// --------------------------------------------------
// READ (asynchronous)
// Register 0 is hardwired to zero
// --------------------------------------------------
assign rd1 = (ra1 == 3'b000) ? 8'b0 : REGS[ra1];
assign rd2 = (ra2 == 3'b000) ? 8'b0 : REGS[ra2];

endmodule

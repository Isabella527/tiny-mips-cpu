`timescale 1ns/10ps

module alu (a, b, alucont, result) ;

   input [7:0] a, b ;
   input [2:0] alucont ;
   output [7:0] result ;


   reg [7:0] result ;
   wire [7:0] b2, sum, slt ;

// 1. Prepare 'b' for subtraction/slt if necessary
    // If alucont[2] is 1 (common for sub/slt codes), we invert b.
    assign b2 = alucont[2] ? ~b : b;
    
    // 2. Perform the Addition/Subtraction
    // Adding alucont[2] acts as the '+1' for two's complement subtraction
    assign sum = a + b2 + alucont[2];

    // 3. Set Less Than logic
    // If the result of (a - b) is negative, then a < b.
    // In 8-bit, the most significant bit (index 7) is the sign bit.
    assign slt = sum[7]; 

    // 4. Select the operation based on alucont
    always @(*) begin
        case (alucont)
            3'b000: result = a & b;     // AND
            3'b001: result = a | b;     // OR
            3'b010: result = sum;       // ADD
            3'b110: result = sum;       // SUB (uses the same sum wire)
            3'b111: result = {7'b0, slt}; // SLT (result is 00000001 or 00000000)
            default: result = 8'b0;
        endcase
    end

endmodule



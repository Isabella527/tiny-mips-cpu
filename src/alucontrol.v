`timescale 1ns/10ps
module alucontrol( aluop, funct, alucont ) ;


// this module decodes the 'funct' field from the assembly instruction
// it then determines the type of instruction it is: R, I, J
// and creates a 3-bit control line (alucont) for the ALU itself.


// the ALU will rely only on the alucont line and not the funct line.

   input [1:0] aluop ;
   input [5:0] funct ;
   output [2:0] alucont ;


   reg [2:0] alucont ;


   always @(*) begin
        case (aluop)
            2'b00: alucont = 3'b010; // Load/Store -> ADD
            2'b01: alucont = 3'b110; // Branch Equal -> SUB
            
            2'b10: begin // R-type: look at funct field
                case (funct)
                    6'b100000: alucont = 3'b010; // ADD
                    6'b100010: alucont = 3'b110; // SUB
                    6'b100100: alucont = 3'b000; // AND
                    6'b100101: alucont = 3'b001; // OR
                    6'b101010: alucont = 3'b111; // SLT
                    default:   alucont = 3'b010;
                endcase
            end
            
            default: alucont = 3'b000; // Default to AND or safe state
        endcase
    end

endmodule

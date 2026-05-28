`timescale 1ns/10ps

module mux4(d0, d1, d2, d3, s, y);

input [1:0] s;
input [7:0] d0, d1, d2, d3;
output [7:0] y;

// nesting ternary operators: 
assign y = (s == 2'b00) ? d0 :
           (s == 2'b01) ? d1 :
           (s == 2'b10) ? d2 :
                          d3;

endmodule

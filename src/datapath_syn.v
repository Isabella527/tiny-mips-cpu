/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sun May 10 13:34:18 2026
/////////////////////////////////////////////////////////////


module mux23 ( d0, d1, s, y );
  input [2:0] d0;
  input [2:0] d1;
  output [2:0] y;
  input s;
  wire   n5, n6, n7, n4;

  AOI22X1 U5 ( .A(d0[2]), .B(n4), .C(s), .D(d1[2]), .Y(n5) );
  AOI22X1 U6 ( .A(d0[1]), .B(n4), .C(d1[1]), .D(s), .Y(n6) );
  AOI22X1 U7 ( .A(d0[0]), .B(n4), .C(d1[0]), .D(s), .Y(n7) );
  INVX2 U1 ( .A(n5), .Y(y[2]) );
  INVX2 U2 ( .A(n6), .Y(y[1]) );
  INVX2 U3 ( .A(n7), .Y(y[0]) );
  INVX2 U4 ( .A(s), .Y(n4) );
endmodule


module flopen_0 ( clk, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, en;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13, n14, n15, n16,
         n17;

  DFFPOSX1 \q_reg[7]  ( .D(n2), .CLK(clk), .Q(q[7]) );
  DFFPOSX1 \q_reg[6]  ( .D(n10), .CLK(clk), .Q(q[6]) );
  DFFPOSX1 \q_reg[5]  ( .D(n11), .CLK(clk), .Q(q[5]) );
  DFFPOSX1 \q_reg[4]  ( .D(n12), .CLK(clk), .Q(q[4]) );
  DFFPOSX1 \q_reg[3]  ( .D(n13), .CLK(clk), .Q(q[3]) );
  DFFPOSX1 \q_reg[2]  ( .D(n14), .CLK(clk), .Q(q[2]) );
  DFFPOSX1 \q_reg[1]  ( .D(n15), .CLK(clk), .Q(q[1]) );
  DFFPOSX1 \q_reg[0]  ( .D(n16), .CLK(clk), .Q(q[0]) );
  AOI22X1 U3 ( .A(en), .B(d[0]), .C(q[0]), .D(n17), .Y(n1) );
  AOI22X1 U5 ( .A(d[1]), .B(en), .C(q[1]), .D(n17), .Y(n3) );
  AOI22X1 U7 ( .A(d[2]), .B(en), .C(q[2]), .D(n17), .Y(n4) );
  AOI22X1 U9 ( .A(d[3]), .B(en), .C(q[3]), .D(n17), .Y(n5) );
  AOI22X1 U11 ( .A(d[4]), .B(en), .C(q[4]), .D(n17), .Y(n6) );
  AOI22X1 U13 ( .A(d[5]), .B(en), .C(q[5]), .D(n17), .Y(n7) );
  AOI22X1 U15 ( .A(d[6]), .B(en), .C(q[6]), .D(n17), .Y(n8) );
  AOI22X1 U17 ( .A(d[7]), .B(en), .C(q[7]), .D(n17), .Y(n9) );
  INVX2 U2 ( .A(n9), .Y(n2) );
  INVX2 U4 ( .A(n8), .Y(n10) );
  INVX2 U6 ( .A(n7), .Y(n11) );
  INVX2 U8 ( .A(n6), .Y(n12) );
  INVX2 U10 ( .A(n5), .Y(n13) );
  INVX2 U12 ( .A(n4), .Y(n14) );
  INVX2 U14 ( .A(n3), .Y(n15) );
  INVX2 U16 ( .A(n1), .Y(n16) );
  INVX2 U18 ( .A(en), .Y(n17) );
endmodule


module flopen_3 ( clk, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, en;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25;

  DFFPOSX1 \q_reg[7]  ( .D(n2), .CLK(clk), .Q(q[7]) );
  DFFPOSX1 \q_reg[6]  ( .D(n10), .CLK(clk), .Q(q[6]) );
  DFFPOSX1 \q_reg[5]  ( .D(n11), .CLK(clk), .Q(q[5]) );
  DFFPOSX1 \q_reg[4]  ( .D(n12), .CLK(clk), .Q(q[4]) );
  DFFPOSX1 \q_reg[3]  ( .D(n13), .CLK(clk), .Q(q[3]) );
  DFFPOSX1 \q_reg[2]  ( .D(n14), .CLK(clk), .Q(q[2]) );
  DFFPOSX1 \q_reg[1]  ( .D(n15), .CLK(clk), .Q(q[1]) );
  DFFPOSX1 \q_reg[0]  ( .D(n16), .CLK(clk), .Q(q[0]) );
  AOI22X1 U3 ( .A(en), .B(d[0]), .C(q[0]), .D(n17), .Y(n25) );
  AOI22X1 U5 ( .A(d[1]), .B(en), .C(q[1]), .D(n17), .Y(n24) );
  AOI22X1 U7 ( .A(d[2]), .B(en), .C(q[2]), .D(n17), .Y(n23) );
  AOI22X1 U9 ( .A(d[3]), .B(en), .C(q[3]), .D(n17), .Y(n22) );
  AOI22X1 U11 ( .A(d[4]), .B(en), .C(q[4]), .D(n17), .Y(n21) );
  AOI22X1 U13 ( .A(d[5]), .B(en), .C(q[5]), .D(n17), .Y(n20) );
  AOI22X1 U15 ( .A(d[6]), .B(en), .C(q[6]), .D(n17), .Y(n19) );
  AOI22X1 U17 ( .A(d[7]), .B(en), .C(q[7]), .D(n17), .Y(n18) );
  INVX2 U2 ( .A(n18), .Y(n2) );
  INVX2 U4 ( .A(n19), .Y(n10) );
  INVX2 U6 ( .A(n20), .Y(n11) );
  INVX2 U8 ( .A(n21), .Y(n12) );
  INVX2 U10 ( .A(n22), .Y(n13) );
  INVX2 U12 ( .A(n23), .Y(n14) );
  INVX2 U14 ( .A(n24), .Y(n15) );
  INVX2 U16 ( .A(n25), .Y(n16) );
  INVX2 U18 ( .A(en), .Y(n17) );
endmodule


module flopen_2 ( clk, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, en;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25;

  DFFPOSX1 \q_reg[7]  ( .D(n2), .CLK(clk), .Q(q[7]) );
  DFFPOSX1 \q_reg[6]  ( .D(n10), .CLK(clk), .Q(q[6]) );
  DFFPOSX1 \q_reg[5]  ( .D(n11), .CLK(clk), .Q(q[5]) );
  DFFPOSX1 \q_reg[4]  ( .D(n12), .CLK(clk), .Q(q[4]) );
  DFFPOSX1 \q_reg[3]  ( .D(n13), .CLK(clk), .Q(q[3]) );
  DFFPOSX1 \q_reg[2]  ( .D(n14), .CLK(clk), .Q(q[2]) );
  DFFPOSX1 \q_reg[1]  ( .D(n15), .CLK(clk), .Q(q[1]) );
  DFFPOSX1 \q_reg[0]  ( .D(n16), .CLK(clk), .Q(q[0]) );
  AOI22X1 U3 ( .A(en), .B(d[0]), .C(q[0]), .D(n17), .Y(n25) );
  AOI22X1 U5 ( .A(d[1]), .B(en), .C(q[1]), .D(n17), .Y(n24) );
  AOI22X1 U7 ( .A(d[2]), .B(en), .C(q[2]), .D(n17), .Y(n23) );
  AOI22X1 U9 ( .A(d[3]), .B(en), .C(q[3]), .D(n17), .Y(n22) );
  AOI22X1 U11 ( .A(d[4]), .B(en), .C(q[4]), .D(n17), .Y(n21) );
  AOI22X1 U13 ( .A(d[5]), .B(en), .C(q[5]), .D(n17), .Y(n20) );
  AOI22X1 U15 ( .A(d[6]), .B(en), .C(q[6]), .D(n17), .Y(n19) );
  AOI22X1 U17 ( .A(d[7]), .B(en), .C(q[7]), .D(n17), .Y(n18) );
  INVX2 U2 ( .A(n18), .Y(n2) );
  INVX2 U4 ( .A(n19), .Y(n10) );
  INVX2 U6 ( .A(n20), .Y(n11) );
  INVX2 U8 ( .A(n21), .Y(n12) );
  INVX2 U10 ( .A(n22), .Y(n13) );
  INVX2 U12 ( .A(n23), .Y(n14) );
  INVX2 U14 ( .A(n24), .Y(n15) );
  INVX2 U16 ( .A(n25), .Y(n16) );
  INVX2 U18 ( .A(en), .Y(n17) );
endmodule


module flopen_1 ( clk, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, en;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25;

  DFFPOSX1 \q_reg[7]  ( .D(n2), .CLK(clk), .Q(q[7]) );
  DFFPOSX1 \q_reg[6]  ( .D(n10), .CLK(clk), .Q(q[6]) );
  DFFPOSX1 \q_reg[5]  ( .D(n11), .CLK(clk), .Q(q[5]) );
  DFFPOSX1 \q_reg[4]  ( .D(n12), .CLK(clk), .Q(q[4]) );
  DFFPOSX1 \q_reg[3]  ( .D(n13), .CLK(clk), .Q(q[3]) );
  DFFPOSX1 \q_reg[2]  ( .D(n14), .CLK(clk), .Q(q[2]) );
  DFFPOSX1 \q_reg[1]  ( .D(n15), .CLK(clk), .Q(q[1]) );
  DFFPOSX1 \q_reg[0]  ( .D(n16), .CLK(clk), .Q(q[0]) );
  AOI22X1 U3 ( .A(en), .B(d[0]), .C(q[0]), .D(n17), .Y(n25) );
  AOI22X1 U5 ( .A(d[1]), .B(en), .C(q[1]), .D(n17), .Y(n24) );
  AOI22X1 U7 ( .A(d[2]), .B(en), .C(q[2]), .D(n17), .Y(n23) );
  AOI22X1 U9 ( .A(d[3]), .B(en), .C(q[3]), .D(n17), .Y(n22) );
  AOI22X1 U11 ( .A(d[4]), .B(en), .C(q[4]), .D(n17), .Y(n21) );
  AOI22X1 U13 ( .A(d[5]), .B(en), .C(q[5]), .D(n17), .Y(n20) );
  AOI22X1 U15 ( .A(d[6]), .B(en), .C(q[6]), .D(n17), .Y(n19) );
  AOI22X1 U17 ( .A(d[7]), .B(en), .C(q[7]), .D(n17), .Y(n18) );
  INVX2 U2 ( .A(n18), .Y(n2) );
  INVX2 U4 ( .A(n19), .Y(n10) );
  INVX2 U6 ( .A(n20), .Y(n11) );
  INVX2 U8 ( .A(n21), .Y(n12) );
  INVX2 U10 ( .A(n22), .Y(n13) );
  INVX2 U12 ( .A(n23), .Y(n14) );
  INVX2 U14 ( .A(n24), .Y(n15) );
  INVX2 U16 ( .A(n25), .Y(n16) );
  INVX2 U18 ( .A(en), .Y(n17) );
endmodule


module flopenr ( clk, reset, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, reset, en;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n20;

  DFFPOSX1 \q_reg[7]  ( .D(n3), .CLK(clk), .Q(q[7]) );
  DFFPOSX1 \q_reg[6]  ( .D(n4), .CLK(clk), .Q(q[6]) );
  DFFPOSX1 \q_reg[5]  ( .D(n5), .CLK(clk), .Q(q[5]) );
  DFFPOSX1 \q_reg[4]  ( .D(n6), .CLK(clk), .Q(q[4]) );
  DFFPOSX1 \q_reg[3]  ( .D(n7), .CLK(clk), .Q(q[3]) );
  DFFPOSX1 \q_reg[2]  ( .D(n8), .CLK(clk), .Q(q[2]) );
  DFFPOSX1 \q_reg[1]  ( .D(n9), .CLK(clk), .Q(q[1]) );
  DFFPOSX1 \q_reg[0]  ( .D(n2), .CLK(clk), .Q(q[0]) );
  AOI22X1 U12 ( .A(d[0]), .B(n1), .C(q[0]), .D(n12), .Y(n10) );
  AOI22X1 U13 ( .A(d[1]), .B(n1), .C(q[1]), .D(n12), .Y(n13) );
  AOI22X1 U14 ( .A(d[2]), .B(n1), .C(q[2]), .D(n12), .Y(n14) );
  AOI22X1 U15 ( .A(d[3]), .B(n1), .C(q[3]), .D(n12), .Y(n15) );
  AOI22X1 U16 ( .A(d[4]), .B(n1), .C(q[4]), .D(n12), .Y(n16) );
  AOI22X1 U17 ( .A(d[5]), .B(n1), .C(q[5]), .D(n12), .Y(n17) );
  AOI22X1 U18 ( .A(d[6]), .B(n1), .C(q[6]), .D(n12), .Y(n18) );
  AOI22X1 U19 ( .A(d[7]), .B(n1), .C(q[7]), .D(n12), .Y(n19) );
  NOR2X1 U20 ( .A(reset), .B(n1), .Y(n12) );
  NOR2X1 U21 ( .A(n20), .B(reset), .Y(n11) );
  BUFX2 U3 ( .A(n11), .Y(n1) );
  INVX2 U4 ( .A(n10), .Y(n2) );
  INVX2 U5 ( .A(n19), .Y(n3) );
  INVX2 U6 ( .A(n18), .Y(n4) );
  INVX2 U7 ( .A(n17), .Y(n5) );
  INVX2 U8 ( .A(n16), .Y(n6) );
  INVX2 U9 ( .A(n15), .Y(n7) );
  INVX2 U10 ( .A(n14), .Y(n8) );
  INVX2 U11 ( .A(n13), .Y(n9) );
  INVX2 U22 ( .A(en), .Y(n20) );
endmodule


module flop_0 ( clk, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk;


  DFFPOSX1 \q_reg[7]  ( .D(d[7]), .CLK(clk), .Q(q[7]) );
  DFFPOSX1 \q_reg[6]  ( .D(d[6]), .CLK(clk), .Q(q[6]) );
  DFFPOSX1 \q_reg[5]  ( .D(d[5]), .CLK(clk), .Q(q[5]) );
  DFFPOSX1 \q_reg[4]  ( .D(d[4]), .CLK(clk), .Q(q[4]) );
  DFFPOSX1 \q_reg[3]  ( .D(d[3]), .CLK(clk), .Q(q[3]) );
  DFFPOSX1 \q_reg[2]  ( .D(d[2]), .CLK(clk), .Q(q[2]) );
  DFFPOSX1 \q_reg[1]  ( .D(d[1]), .CLK(clk), .Q(q[1]) );
  DFFPOSX1 \q_reg[0]  ( .D(d[0]), .CLK(clk), .Q(q[0]) );
endmodule


module flop_3 ( clk, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk;


  DFFPOSX1 \q_reg[7]  ( .D(d[7]), .CLK(clk), .Q(q[7]) );
  DFFPOSX1 \q_reg[6]  ( .D(d[6]), .CLK(clk), .Q(q[6]) );
  DFFPOSX1 \q_reg[5]  ( .D(d[5]), .CLK(clk), .Q(q[5]) );
  DFFPOSX1 \q_reg[4]  ( .D(d[4]), .CLK(clk), .Q(q[4]) );
  DFFPOSX1 \q_reg[3]  ( .D(d[3]), .CLK(clk), .Q(q[3]) );
  DFFPOSX1 \q_reg[2]  ( .D(d[2]), .CLK(clk), .Q(q[2]) );
  DFFPOSX1 \q_reg[1]  ( .D(d[1]), .CLK(clk), .Q(q[1]) );
  DFFPOSX1 \q_reg[0]  ( .D(d[0]), .CLK(clk), .Q(q[0]) );
endmodule


module flop_2 ( clk, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk;


  DFFPOSX1 \q_reg[7]  ( .D(d[7]), .CLK(clk), .Q(q[7]) );
  DFFPOSX1 \q_reg[6]  ( .D(d[6]), .CLK(clk), .Q(q[6]) );
  DFFPOSX1 \q_reg[5]  ( .D(d[5]), .CLK(clk), .Q(q[5]) );
  DFFPOSX1 \q_reg[4]  ( .D(d[4]), .CLK(clk), .Q(q[4]) );
  DFFPOSX1 \q_reg[3]  ( .D(d[3]), .CLK(clk), .Q(q[3]) );
  DFFPOSX1 \q_reg[2]  ( .D(d[2]), .CLK(clk), .Q(q[2]) );
  DFFPOSX1 \q_reg[1]  ( .D(d[1]), .CLK(clk), .Q(q[1]) );
  DFFPOSX1 \q_reg[0]  ( .D(d[0]), .CLK(clk), .Q(q[0]) );
endmodule


module flop_1 ( clk, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk;


  DFFPOSX1 \q_reg[7]  ( .D(d[7]), .CLK(clk), .Q(q[7]) );
  DFFPOSX1 \q_reg[6]  ( .D(d[6]), .CLK(clk), .Q(q[6]) );
  DFFPOSX1 \q_reg[5]  ( .D(d[5]), .CLK(clk), .Q(q[5]) );
  DFFPOSX1 \q_reg[4]  ( .D(d[4]), .CLK(clk), .Q(q[4]) );
  DFFPOSX1 \q_reg[3]  ( .D(d[3]), .CLK(clk), .Q(q[3]) );
  DFFPOSX1 \q_reg[2]  ( .D(d[2]), .CLK(clk), .Q(q[2]) );
  DFFPOSX1 \q_reg[1]  ( .D(d[1]), .CLK(clk), .Q(q[1]) );
  DFFPOSX1 \q_reg[0]  ( .D(d[0]), .CLK(clk), .Q(q[0]) );
endmodule


module mux2_0 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n9;

  AOI22X1 U10 ( .A(d0[7]), .B(n9), .C(s), .D(d1[7]), .Y(n10) );
  AOI22X1 U11 ( .A(d0[6]), .B(n9), .C(d1[6]), .D(s), .Y(n11) );
  AOI22X1 U12 ( .A(d0[5]), .B(n9), .C(d1[5]), .D(s), .Y(n12) );
  AOI22X1 U13 ( .A(d0[4]), .B(n9), .C(d1[4]), .D(s), .Y(n13) );
  AOI22X1 U14 ( .A(d0[3]), .B(n9), .C(d1[3]), .D(s), .Y(n14) );
  AOI22X1 U15 ( .A(d0[2]), .B(n9), .C(d1[2]), .D(s), .Y(n15) );
  AOI22X1 U16 ( .A(d0[1]), .B(n9), .C(d1[1]), .D(s), .Y(n16) );
  AOI22X1 U17 ( .A(d0[0]), .B(n9), .C(d1[0]), .D(s), .Y(n17) );
  INVX2 U1 ( .A(n10), .Y(y[7]) );
  INVX2 U2 ( .A(n11), .Y(y[6]) );
  INVX2 U3 ( .A(n12), .Y(y[5]) );
  INVX2 U4 ( .A(n13), .Y(y[4]) );
  INVX2 U5 ( .A(n14), .Y(y[3]) );
  INVX2 U6 ( .A(n15), .Y(y[2]) );
  INVX2 U7 ( .A(n16), .Y(y[1]) );
  INVX2 U8 ( .A(n17), .Y(y[0]) );
  INVX2 U9 ( .A(s), .Y(n9) );
endmodule


module mux2_2 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n9, n18, n19, n20, n21, n22, n23, n24, n25;

  AOI22X1 U10 ( .A(d0[7]), .B(n9), .C(s), .D(d1[7]), .Y(n25) );
  AOI22X1 U11 ( .A(d0[6]), .B(n9), .C(d1[6]), .D(s), .Y(n24) );
  AOI22X1 U12 ( .A(d0[5]), .B(n9), .C(d1[5]), .D(s), .Y(n23) );
  AOI22X1 U13 ( .A(d0[4]), .B(n9), .C(d1[4]), .D(s), .Y(n22) );
  AOI22X1 U14 ( .A(d0[3]), .B(n9), .C(d1[3]), .D(s), .Y(n21) );
  AOI22X1 U15 ( .A(d0[2]), .B(n9), .C(d1[2]), .D(s), .Y(n20) );
  AOI22X1 U16 ( .A(d0[1]), .B(n9), .C(d1[1]), .D(s), .Y(n19) );
  AOI22X1 U17 ( .A(d0[0]), .B(n9), .C(d1[0]), .D(s), .Y(n18) );
  INVX2 U1 ( .A(n25), .Y(y[7]) );
  INVX2 U2 ( .A(n24), .Y(y[6]) );
  INVX2 U3 ( .A(n23), .Y(y[5]) );
  INVX2 U4 ( .A(n22), .Y(y[4]) );
  INVX2 U5 ( .A(n21), .Y(y[3]) );
  INVX2 U6 ( .A(n20), .Y(y[2]) );
  INVX2 U7 ( .A(n19), .Y(y[1]) );
  INVX2 U8 ( .A(n18), .Y(y[0]) );
  INVX2 U9 ( .A(s), .Y(n9) );
endmodule


module mux4_0 ( d0, d1, d2, d3, s, y );
  input [7:0] d0;
  input [7:0] d1;
  input [7:0] d2;
  input [7:0] d3;
  input [1:0] s;
  output [7:0] y;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n1;

  AND2X2 U1 ( .A(s[1]), .B(n1), .Y(n5) );
  AND2X2 U2 ( .A(s[1]), .B(s[0]), .Y(n4) );
  NAND2X1 U4 ( .A(n2), .B(n3), .Y(y[7]) );
  AOI22X1 U5 ( .A(d3[7]), .B(n4), .C(d2[7]), .D(n5), .Y(n3) );
  AOI22X1 U6 ( .A(d1[7]), .B(n6), .C(d0[7]), .D(n7), .Y(n2) );
  NAND2X1 U7 ( .A(n8), .B(n9), .Y(y[6]) );
  AOI22X1 U8 ( .A(d3[6]), .B(n4), .C(d2[6]), .D(n5), .Y(n9) );
  AOI22X1 U9 ( .A(d1[6]), .B(n6), .C(d0[6]), .D(n7), .Y(n8) );
  NAND2X1 U10 ( .A(n10), .B(n11), .Y(y[5]) );
  AOI22X1 U11 ( .A(d3[5]), .B(n4), .C(d2[5]), .D(n5), .Y(n11) );
  AOI22X1 U12 ( .A(d1[5]), .B(n6), .C(d0[5]), .D(n7), .Y(n10) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Y(y[4]) );
  AOI22X1 U14 ( .A(d3[4]), .B(n4), .C(d2[4]), .D(n5), .Y(n13) );
  AOI22X1 U15 ( .A(d1[4]), .B(n6), .C(d0[4]), .D(n7), .Y(n12) );
  NAND2X1 U16 ( .A(n14), .B(n15), .Y(y[3]) );
  AOI22X1 U17 ( .A(d3[3]), .B(n4), .C(d2[3]), .D(n5), .Y(n15) );
  AOI22X1 U18 ( .A(d1[3]), .B(n6), .C(d0[3]), .D(n7), .Y(n14) );
  NAND2X1 U19 ( .A(n16), .B(n17), .Y(y[2]) );
  AOI22X1 U20 ( .A(d3[2]), .B(n4), .C(d2[2]), .D(n5), .Y(n17) );
  AOI22X1 U21 ( .A(d1[2]), .B(n6), .C(d0[2]), .D(n7), .Y(n16) );
  NAND2X1 U22 ( .A(n18), .B(n19), .Y(y[1]) );
  AOI22X1 U23 ( .A(d3[1]), .B(n4), .C(d2[1]), .D(n5), .Y(n19) );
  AOI22X1 U24 ( .A(d1[1]), .B(n6), .C(d0[1]), .D(n7), .Y(n18) );
  NAND2X1 U25 ( .A(n20), .B(n21), .Y(y[0]) );
  AOI22X1 U26 ( .A(d3[0]), .B(n4), .C(d2[0]), .D(n5), .Y(n21) );
  AOI22X1 U27 ( .A(d1[0]), .B(n6), .C(d0[0]), .D(n7), .Y(n20) );
  NOR2X1 U28 ( .A(s[1]), .B(s[0]), .Y(n7) );
  NOR2X1 U29 ( .A(n1), .B(s[1]), .Y(n6) );
  INVX2 U3 ( .A(s[0]), .Y(n1) );
endmodule


module mux4_1 ( d0, d1, d2, d3, s, y );
  input [7:0] d0;
  input [7:0] d1;
  input [7:0] d2;
  input [7:0] d3;
  input [1:0] s;
  output [7:0] y;
  wire   n1, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41;

  AND2X2 U1 ( .A(s[1]), .B(n1), .Y(n38) );
  AND2X2 U2 ( .A(s[1]), .B(s[0]), .Y(n39) );
  NAND2X1 U4 ( .A(n41), .B(n40), .Y(y[7]) );
  AOI22X1 U5 ( .A(d3[7]), .B(n39), .C(d2[7]), .D(n38), .Y(n40) );
  AOI22X1 U6 ( .A(d1[7]), .B(n37), .C(d0[7]), .D(n36), .Y(n41) );
  NAND2X1 U7 ( .A(n35), .B(n34), .Y(y[6]) );
  AOI22X1 U8 ( .A(d3[6]), .B(n39), .C(d2[6]), .D(n38), .Y(n34) );
  AOI22X1 U9 ( .A(d1[6]), .B(n37), .C(d0[6]), .D(n36), .Y(n35) );
  NAND2X1 U10 ( .A(n33), .B(n32), .Y(y[5]) );
  AOI22X1 U11 ( .A(d3[5]), .B(n39), .C(d2[5]), .D(n38), .Y(n32) );
  AOI22X1 U12 ( .A(d1[5]), .B(n37), .C(d0[5]), .D(n36), .Y(n33) );
  NAND2X1 U13 ( .A(n31), .B(n30), .Y(y[4]) );
  AOI22X1 U14 ( .A(d3[4]), .B(n39), .C(d2[4]), .D(n38), .Y(n30) );
  AOI22X1 U15 ( .A(d1[4]), .B(n37), .C(d0[4]), .D(n36), .Y(n31) );
  NAND2X1 U16 ( .A(n29), .B(n28), .Y(y[3]) );
  AOI22X1 U17 ( .A(d3[3]), .B(n39), .C(d2[3]), .D(n38), .Y(n28) );
  AOI22X1 U18 ( .A(d1[3]), .B(n37), .C(d0[3]), .D(n36), .Y(n29) );
  NAND2X1 U19 ( .A(n27), .B(n26), .Y(y[2]) );
  AOI22X1 U20 ( .A(d3[2]), .B(n39), .C(d2[2]), .D(n38), .Y(n26) );
  AOI22X1 U21 ( .A(d1[2]), .B(n37), .C(d0[2]), .D(n36), .Y(n27) );
  NAND2X1 U22 ( .A(n25), .B(n24), .Y(y[1]) );
  AOI22X1 U23 ( .A(d3[1]), .B(n39), .C(d2[1]), .D(n38), .Y(n24) );
  AOI22X1 U24 ( .A(d1[1]), .B(n37), .C(d0[1]), .D(n36), .Y(n25) );
  NAND2X1 U25 ( .A(n23), .B(n22), .Y(y[0]) );
  AOI22X1 U26 ( .A(d3[0]), .B(n39), .C(d2[0]), .D(n38), .Y(n22) );
  AOI22X1 U27 ( .A(d1[0]), .B(n37), .C(d0[0]), .D(n36), .Y(n23) );
  NOR2X1 U28 ( .A(s[1]), .B(s[0]), .Y(n36) );
  NOR2X1 U29 ( .A(n1), .B(s[1]), .Y(n37) );
  INVX2 U3 ( .A(s[0]), .Y(n1) );
endmodule


module mux2_1 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n9, n18, n19, n20, n21, n22, n23, n24, n25;

  AOI22X1 U10 ( .A(d0[7]), .B(n9), .C(s), .D(d1[7]), .Y(n25) );
  AOI22X1 U11 ( .A(d0[6]), .B(n9), .C(d1[6]), .D(s), .Y(n24) );
  AOI22X1 U12 ( .A(d0[5]), .B(n9), .C(d1[5]), .D(s), .Y(n23) );
  AOI22X1 U13 ( .A(d0[4]), .B(n9), .C(d1[4]), .D(s), .Y(n22) );
  AOI22X1 U14 ( .A(d0[3]), .B(n9), .C(d1[3]), .D(s), .Y(n21) );
  AOI22X1 U15 ( .A(d0[2]), .B(n9), .C(d1[2]), .D(s), .Y(n20) );
  AOI22X1 U16 ( .A(d0[1]), .B(n9), .C(d1[1]), .D(s), .Y(n19) );
  AOI22X1 U17 ( .A(d0[0]), .B(n9), .C(d1[0]), .D(s), .Y(n18) );
  INVX2 U1 ( .A(n25), .Y(y[7]) );
  INVX2 U2 ( .A(n24), .Y(y[6]) );
  INVX2 U3 ( .A(n23), .Y(y[5]) );
  INVX2 U4 ( .A(n22), .Y(y[4]) );
  INVX2 U5 ( .A(n21), .Y(y[3]) );
  INVX2 U6 ( .A(n20), .Y(y[2]) );
  INVX2 U7 ( .A(n19), .Y(y[1]) );
  INVX2 U8 ( .A(n18), .Y(y[0]) );
  INVX2 U9 ( .A(s), .Y(n9) );
endmodule


module regfile ( clk, regwrite, ra1, ra2, wa, wd, rd1, rd2 );
  input [2:0] ra1;
  input [2:0] ra2;
  input [2:0] wa;
  input [7:0] wd;
  output [7:0] rd1;
  output [7:0] rd2;
  input clk, regwrite;
  wire   N13, N14, N15, N16, N17, N18, \REGS[7][7] , \REGS[7][6] ,
         \REGS[7][5] , \REGS[7][4] , \REGS[7][3] , \REGS[7][2] , \REGS[7][1] ,
         \REGS[7][0] , \REGS[6][7] , \REGS[6][6] , \REGS[6][5] , \REGS[6][4] ,
         \REGS[6][3] , \REGS[6][2] , \REGS[6][1] , \REGS[6][0] , \REGS[5][7] ,
         \REGS[5][6] , \REGS[5][5] , \REGS[5][4] , \REGS[5][3] , \REGS[5][2] ,
         \REGS[5][1] , \REGS[5][0] , \REGS[4][7] , \REGS[4][6] , \REGS[4][5] ,
         \REGS[4][4] , \REGS[4][3] , \REGS[4][2] , \REGS[4][1] , \REGS[4][0] ,
         \REGS[3][7] , \REGS[3][6] , \REGS[3][5] , \REGS[3][4] , \REGS[3][3] ,
         \REGS[3][2] , \REGS[3][1] , \REGS[3][0] , \REGS[2][7] , \REGS[2][6] ,
         \REGS[2][5] , \REGS[2][4] , \REGS[2][3] , \REGS[2][2] , \REGS[2][1] ,
         \REGS[2][0] , \REGS[1][7] , \REGS[1][6] , \REGS[1][5] , \REGS[1][4] ,
         \REGS[1][3] , \REGS[1][2] , \REGS[1][1] , \REGS[1][0] , \REGS[0][7] ,
         \REGS[0][6] , \REGS[0][5] , \REGS[0][4] , \REGS[0][3] , \REGS[0][2] ,
         \REGS[0][1] , \REGS[0][0] , N37, N38, N39, N40, N41, N42, N43, N44,
         N45, N46, N47, N48, N49, N50, N51, N52, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266;
  assign N13 = ra1[0];
  assign N14 = ra1[1];
  assign N15 = ra1[2];
  assign N16 = ra2[0];
  assign N17 = ra2[1];
  assign N18 = ra2[2];

  DFFPOSX1 \REGS_reg[7][7]  ( .D(n138), .CLK(clk), .Q(\REGS[7][7] ) );
  DFFPOSX1 \REGS_reg[7][6]  ( .D(n137), .CLK(clk), .Q(\REGS[7][6] ) );
  DFFPOSX1 \REGS_reg[7][5]  ( .D(n136), .CLK(clk), .Q(\REGS[7][5] ) );
  DFFPOSX1 \REGS_reg[7][4]  ( .D(n135), .CLK(clk), .Q(\REGS[7][4] ) );
  DFFPOSX1 \REGS_reg[7][3]  ( .D(n134), .CLK(clk), .Q(\REGS[7][3] ) );
  DFFPOSX1 \REGS_reg[7][2]  ( .D(n133), .CLK(clk), .Q(\REGS[7][2] ) );
  DFFPOSX1 \REGS_reg[7][1]  ( .D(n132), .CLK(clk), .Q(\REGS[7][1] ) );
  DFFPOSX1 \REGS_reg[7][0]  ( .D(n131), .CLK(clk), .Q(\REGS[7][0] ) );
  DFFPOSX1 \REGS_reg[6][7]  ( .D(n130), .CLK(clk), .Q(\REGS[6][7] ) );
  DFFPOSX1 \REGS_reg[6][6]  ( .D(n129), .CLK(clk), .Q(\REGS[6][6] ) );
  DFFPOSX1 \REGS_reg[6][5]  ( .D(n128), .CLK(clk), .Q(\REGS[6][5] ) );
  DFFPOSX1 \REGS_reg[6][4]  ( .D(n127), .CLK(clk), .Q(\REGS[6][4] ) );
  DFFPOSX1 \REGS_reg[6][3]  ( .D(n126), .CLK(clk), .Q(\REGS[6][3] ) );
  DFFPOSX1 \REGS_reg[6][2]  ( .D(n125), .CLK(clk), .Q(\REGS[6][2] ) );
  DFFPOSX1 \REGS_reg[6][1]  ( .D(n124), .CLK(clk), .Q(\REGS[6][1] ) );
  DFFPOSX1 \REGS_reg[6][0]  ( .D(n123), .CLK(clk), .Q(\REGS[6][0] ) );
  DFFPOSX1 \REGS_reg[5][7]  ( .D(n122), .CLK(clk), .Q(\REGS[5][7] ) );
  DFFPOSX1 \REGS_reg[5][6]  ( .D(n121), .CLK(clk), .Q(\REGS[5][6] ) );
  DFFPOSX1 \REGS_reg[5][5]  ( .D(n120), .CLK(clk), .Q(\REGS[5][5] ) );
  DFFPOSX1 \REGS_reg[5][4]  ( .D(n119), .CLK(clk), .Q(\REGS[5][4] ) );
  DFFPOSX1 \REGS_reg[5][3]  ( .D(n118), .CLK(clk), .Q(\REGS[5][3] ) );
  DFFPOSX1 \REGS_reg[5][2]  ( .D(n117), .CLK(clk), .Q(\REGS[5][2] ) );
  DFFPOSX1 \REGS_reg[5][1]  ( .D(n116), .CLK(clk), .Q(\REGS[5][1] ) );
  DFFPOSX1 \REGS_reg[5][0]  ( .D(n115), .CLK(clk), .Q(\REGS[5][0] ) );
  DFFPOSX1 \REGS_reg[4][7]  ( .D(n114), .CLK(clk), .Q(\REGS[4][7] ) );
  DFFPOSX1 \REGS_reg[4][6]  ( .D(n113), .CLK(clk), .Q(\REGS[4][6] ) );
  DFFPOSX1 \REGS_reg[4][5]  ( .D(n112), .CLK(clk), .Q(\REGS[4][5] ) );
  DFFPOSX1 \REGS_reg[4][4]  ( .D(n111), .CLK(clk), .Q(\REGS[4][4] ) );
  DFFPOSX1 \REGS_reg[4][3]  ( .D(n110), .CLK(clk), .Q(\REGS[4][3] ) );
  DFFPOSX1 \REGS_reg[4][2]  ( .D(n109), .CLK(clk), .Q(\REGS[4][2] ) );
  DFFPOSX1 \REGS_reg[4][1]  ( .D(n108), .CLK(clk), .Q(\REGS[4][1] ) );
  DFFPOSX1 \REGS_reg[4][0]  ( .D(n107), .CLK(clk), .Q(\REGS[4][0] ) );
  DFFPOSX1 \REGS_reg[3][7]  ( .D(n106), .CLK(clk), .Q(\REGS[3][7] ) );
  DFFPOSX1 \REGS_reg[3][6]  ( .D(n105), .CLK(clk), .Q(\REGS[3][6] ) );
  DFFPOSX1 \REGS_reg[3][5]  ( .D(n104), .CLK(clk), .Q(\REGS[3][5] ) );
  DFFPOSX1 \REGS_reg[3][4]  ( .D(n103), .CLK(clk), .Q(\REGS[3][4] ) );
  DFFPOSX1 \REGS_reg[3][3]  ( .D(n102), .CLK(clk), .Q(\REGS[3][3] ) );
  DFFPOSX1 \REGS_reg[3][2]  ( .D(n101), .CLK(clk), .Q(\REGS[3][2] ) );
  DFFPOSX1 \REGS_reg[3][1]  ( .D(n100), .CLK(clk), .Q(\REGS[3][1] ) );
  DFFPOSX1 \REGS_reg[3][0]  ( .D(n99), .CLK(clk), .Q(\REGS[3][0] ) );
  DFFPOSX1 \REGS_reg[2][7]  ( .D(n98), .CLK(clk), .Q(\REGS[2][7] ) );
  DFFPOSX1 \REGS_reg[2][6]  ( .D(n97), .CLK(clk), .Q(\REGS[2][6] ) );
  DFFPOSX1 \REGS_reg[2][5]  ( .D(n96), .CLK(clk), .Q(\REGS[2][5] ) );
  DFFPOSX1 \REGS_reg[2][4]  ( .D(n95), .CLK(clk), .Q(\REGS[2][4] ) );
  DFFPOSX1 \REGS_reg[2][3]  ( .D(n94), .CLK(clk), .Q(\REGS[2][3] ) );
  DFFPOSX1 \REGS_reg[2][2]  ( .D(n93), .CLK(clk), .Q(\REGS[2][2] ) );
  DFFPOSX1 \REGS_reg[2][1]  ( .D(n92), .CLK(clk), .Q(\REGS[2][1] ) );
  DFFPOSX1 \REGS_reg[2][0]  ( .D(n91), .CLK(clk), .Q(\REGS[2][0] ) );
  DFFPOSX1 \REGS_reg[1][7]  ( .D(n90), .CLK(clk), .Q(\REGS[1][7] ) );
  DFFPOSX1 \REGS_reg[1][6]  ( .D(n89), .CLK(clk), .Q(\REGS[1][6] ) );
  DFFPOSX1 \REGS_reg[1][5]  ( .D(n88), .CLK(clk), .Q(\REGS[1][5] ) );
  DFFPOSX1 \REGS_reg[1][4]  ( .D(n87), .CLK(clk), .Q(\REGS[1][4] ) );
  DFFPOSX1 \REGS_reg[1][3]  ( .D(n86), .CLK(clk), .Q(\REGS[1][3] ) );
  DFFPOSX1 \REGS_reg[1][2]  ( .D(n85), .CLK(clk), .Q(\REGS[1][2] ) );
  DFFPOSX1 \REGS_reg[1][1]  ( .D(n84), .CLK(clk), .Q(\REGS[1][1] ) );
  DFFPOSX1 \REGS_reg[1][0]  ( .D(n83), .CLK(clk), .Q(\REGS[1][0] ) );
  DFFPOSX1 \REGS_reg[0][7]  ( .D(\REGS[0][7] ), .CLK(clk), .Q(\REGS[0][7] ) );
  DFFPOSX1 \REGS_reg[0][6]  ( .D(\REGS[0][6] ), .CLK(clk), .Q(\REGS[0][6] ) );
  DFFPOSX1 \REGS_reg[0][5]  ( .D(\REGS[0][5] ), .CLK(clk), .Q(\REGS[0][5] ) );
  DFFPOSX1 \REGS_reg[0][4]  ( .D(\REGS[0][4] ), .CLK(clk), .Q(\REGS[0][4] ) );
  DFFPOSX1 \REGS_reg[0][3]  ( .D(\REGS[0][3] ), .CLK(clk), .Q(\REGS[0][3] ) );
  DFFPOSX1 \REGS_reg[0][2]  ( .D(\REGS[0][2] ), .CLK(clk), .Q(\REGS[0][2] ) );
  DFFPOSX1 \REGS_reg[0][1]  ( .D(\REGS[0][1] ), .CLK(clk), .Q(\REGS[0][1] ) );
  DFFPOSX1 \REGS_reg[0][0]  ( .D(\REGS[0][0] ), .CLK(clk), .Q(\REGS[0][0] ) );
  AND2X2 U2 ( .A(N45), .B(n266), .Y(rd2[7]) );
  AND2X2 U3 ( .A(N46), .B(n266), .Y(rd2[6]) );
  AND2X2 U4 ( .A(N47), .B(n266), .Y(rd2[5]) );
  AND2X2 U5 ( .A(N48), .B(n266), .Y(rd2[4]) );
  AND2X2 U6 ( .A(N49), .B(n266), .Y(rd2[3]) );
  AND2X2 U7 ( .A(N50), .B(n266), .Y(rd2[2]) );
  AND2X2 U8 ( .A(N51), .B(n266), .Y(rd2[1]) );
  AND2X2 U9 ( .A(N52), .B(n266), .Y(rd2[0]) );
  AND2X2 U10 ( .A(N37), .B(n265), .Y(rd1[7]) );
  AND2X2 U11 ( .A(N38), .B(n265), .Y(rd1[6]) );
  AND2X2 U12 ( .A(N39), .B(n265), .Y(rd1[5]) );
  AND2X2 U13 ( .A(N40), .B(n265), .Y(rd1[4]) );
  AND2X2 U14 ( .A(N41), .B(n265), .Y(rd1[3]) );
  AND2X2 U15 ( .A(N42), .B(n265), .Y(rd1[2]) );
  AND2X2 U16 ( .A(N43), .B(n265), .Y(rd1[1]) );
  AND2X2 U17 ( .A(N44), .B(n265), .Y(rd1[0]) );
  NOR3X1 U31 ( .A(N17), .B(N18), .C(N16), .Y(n14) );
  NOR3X1 U32 ( .A(N14), .B(N15), .C(N13), .Y(n15) );
  OAI21X1 U33 ( .A(n16), .B(n258), .C(n17), .Y(n86) );
  NAND2X1 U34 ( .A(\REGS[1][3] ), .B(n16), .Y(n17) );
  OAI21X1 U35 ( .A(n16), .B(n257), .C(n18), .Y(n87) );
  NAND2X1 U36 ( .A(\REGS[1][4] ), .B(n16), .Y(n18) );
  OAI21X1 U37 ( .A(n16), .B(n256), .C(n19), .Y(n88) );
  NAND2X1 U38 ( .A(\REGS[1][5] ), .B(n16), .Y(n19) );
  OAI21X1 U39 ( .A(n16), .B(n255), .C(n20), .Y(n89) );
  NAND2X1 U40 ( .A(\REGS[1][6] ), .B(n16), .Y(n20) );
  OAI21X1 U41 ( .A(n16), .B(n254), .C(n21), .Y(n90) );
  NAND2X1 U42 ( .A(\REGS[1][7] ), .B(n16), .Y(n21) );
  OAI21X1 U43 ( .A(n22), .B(n261), .C(n23), .Y(n91) );
  NAND2X1 U44 ( .A(\REGS[2][0] ), .B(n22), .Y(n23) );
  OAI21X1 U45 ( .A(n22), .B(n260), .C(n24), .Y(n92) );
  NAND2X1 U46 ( .A(\REGS[2][1] ), .B(n22), .Y(n24) );
  OAI21X1 U47 ( .A(n22), .B(n259), .C(n25), .Y(n93) );
  NAND2X1 U48 ( .A(\REGS[2][2] ), .B(n22), .Y(n25) );
  OAI21X1 U49 ( .A(n258), .B(n22), .C(n26), .Y(n94) );
  NAND2X1 U50 ( .A(\REGS[2][3] ), .B(n22), .Y(n26) );
  OAI21X1 U51 ( .A(n257), .B(n22), .C(n27), .Y(n95) );
  NAND2X1 U52 ( .A(\REGS[2][4] ), .B(n22), .Y(n27) );
  OAI21X1 U53 ( .A(n256), .B(n22), .C(n28), .Y(n96) );
  NAND2X1 U54 ( .A(\REGS[2][5] ), .B(n22), .Y(n28) );
  OAI21X1 U55 ( .A(n255), .B(n22), .C(n29), .Y(n97) );
  NAND2X1 U56 ( .A(\REGS[2][6] ), .B(n22), .Y(n29) );
  OAI21X1 U57 ( .A(n254), .B(n22), .C(n30), .Y(n98) );
  NAND2X1 U58 ( .A(\REGS[2][7] ), .B(n22), .Y(n30) );
  NAND2X1 U59 ( .A(n31), .B(n264), .Y(n22) );
  OAI21X1 U60 ( .A(n261), .B(n253), .C(n33), .Y(n99) );
  NAND2X1 U61 ( .A(\REGS[3][0] ), .B(n253), .Y(n33) );
  OAI21X1 U62 ( .A(n260), .B(n253), .C(n34), .Y(n100) );
  NAND2X1 U63 ( .A(\REGS[3][1] ), .B(n253), .Y(n34) );
  OAI21X1 U64 ( .A(n259), .B(n253), .C(n35), .Y(n101) );
  NAND2X1 U65 ( .A(\REGS[3][2] ), .B(n253), .Y(n35) );
  OAI21X1 U66 ( .A(n258), .B(n253), .C(n36), .Y(n102) );
  NAND2X1 U67 ( .A(\REGS[3][3] ), .B(n253), .Y(n36) );
  OAI21X1 U68 ( .A(n257), .B(n253), .C(n37), .Y(n103) );
  NAND2X1 U69 ( .A(\REGS[3][4] ), .B(n253), .Y(n37) );
  OAI21X1 U70 ( .A(n256), .B(n253), .C(n38), .Y(n104) );
  NAND2X1 U71 ( .A(\REGS[3][5] ), .B(n253), .Y(n38) );
  OAI21X1 U72 ( .A(n255), .B(n253), .C(n39), .Y(n105) );
  NAND2X1 U73 ( .A(\REGS[3][6] ), .B(n253), .Y(n39) );
  OAI21X1 U74 ( .A(n254), .B(n253), .C(n40), .Y(n106) );
  NAND2X1 U75 ( .A(\REGS[3][7] ), .B(n253), .Y(n40) );
  NAND3X1 U76 ( .A(wa[0]), .B(n31), .C(wa[1]), .Y(n32) );
  OAI21X1 U77 ( .A(n261), .B(n251), .C(n42), .Y(n107) );
  NAND2X1 U78 ( .A(\REGS[4][0] ), .B(n251), .Y(n42) );
  OAI21X1 U79 ( .A(n260), .B(n251), .C(n43), .Y(n108) );
  NAND2X1 U80 ( .A(\REGS[4][1] ), .B(n251), .Y(n43) );
  OAI21X1 U81 ( .A(n259), .B(n251), .C(n44), .Y(n109) );
  NAND2X1 U82 ( .A(\REGS[4][2] ), .B(n251), .Y(n44) );
  OAI21X1 U83 ( .A(n258), .B(n251), .C(n45), .Y(n110) );
  NAND2X1 U84 ( .A(\REGS[4][3] ), .B(n251), .Y(n45) );
  OAI21X1 U85 ( .A(n257), .B(n251), .C(n46), .Y(n111) );
  NAND2X1 U86 ( .A(\REGS[4][4] ), .B(n251), .Y(n46) );
  OAI21X1 U87 ( .A(n256), .B(n251), .C(n47), .Y(n112) );
  NAND2X1 U88 ( .A(\REGS[4][5] ), .B(n251), .Y(n47) );
  OAI21X1 U89 ( .A(n255), .B(n251), .C(n48), .Y(n113) );
  NAND2X1 U90 ( .A(\REGS[4][6] ), .B(n251), .Y(n48) );
  OAI21X1 U91 ( .A(n254), .B(n251), .C(n49), .Y(n114) );
  NAND2X1 U92 ( .A(\REGS[4][7] ), .B(n251), .Y(n49) );
  NAND3X1 U93 ( .A(n264), .B(n263), .C(n50), .Y(n41) );
  OAI21X1 U94 ( .A(n261), .B(n249), .C(n52), .Y(n115) );
  NAND2X1 U95 ( .A(\REGS[5][0] ), .B(n249), .Y(n52) );
  OAI21X1 U96 ( .A(n260), .B(n249), .C(n53), .Y(n116) );
  NAND2X1 U97 ( .A(\REGS[5][1] ), .B(n249), .Y(n53) );
  OAI21X1 U98 ( .A(n259), .B(n249), .C(n54), .Y(n117) );
  NAND2X1 U99 ( .A(\REGS[5][2] ), .B(n249), .Y(n54) );
  OAI21X1 U100 ( .A(n258), .B(n249), .C(n55), .Y(n118) );
  NAND2X1 U101 ( .A(\REGS[5][3] ), .B(n249), .Y(n55) );
  OAI21X1 U102 ( .A(n257), .B(n249), .C(n56), .Y(n119) );
  NAND2X1 U103 ( .A(\REGS[5][4] ), .B(n249), .Y(n56) );
  OAI21X1 U104 ( .A(n256), .B(n249), .C(n57), .Y(n120) );
  NAND2X1 U105 ( .A(\REGS[5][5] ), .B(n249), .Y(n57) );
  OAI21X1 U106 ( .A(n255), .B(n249), .C(n58), .Y(n121) );
  NAND2X1 U107 ( .A(\REGS[5][6] ), .B(n249), .Y(n58) );
  OAI21X1 U108 ( .A(n254), .B(n249), .C(n59), .Y(n122) );
  NAND2X1 U109 ( .A(\REGS[5][7] ), .B(n249), .Y(n59) );
  NAND3X1 U110 ( .A(wa[0]), .B(n263), .C(n50), .Y(n51) );
  OAI21X1 U111 ( .A(n261), .B(n247), .C(n61), .Y(n123) );
  NAND2X1 U112 ( .A(\REGS[6][0] ), .B(n247), .Y(n61) );
  OAI21X1 U113 ( .A(n260), .B(n247), .C(n62), .Y(n124) );
  NAND2X1 U114 ( .A(\REGS[6][1] ), .B(n247), .Y(n62) );
  OAI21X1 U115 ( .A(n259), .B(n247), .C(n63), .Y(n125) );
  NAND2X1 U116 ( .A(\REGS[6][2] ), .B(n247), .Y(n63) );
  OAI21X1 U117 ( .A(n258), .B(n247), .C(n64), .Y(n126) );
  NAND2X1 U118 ( .A(\REGS[6][3] ), .B(n247), .Y(n64) );
  OAI21X1 U119 ( .A(n257), .B(n247), .C(n65), .Y(n127) );
  NAND2X1 U120 ( .A(\REGS[6][4] ), .B(n247), .Y(n65) );
  OAI21X1 U121 ( .A(n256), .B(n247), .C(n66), .Y(n128) );
  NAND2X1 U122 ( .A(\REGS[6][5] ), .B(n247), .Y(n66) );
  OAI21X1 U123 ( .A(n255), .B(n247), .C(n67), .Y(n129) );
  NAND2X1 U124 ( .A(\REGS[6][6] ), .B(n247), .Y(n67) );
  OAI21X1 U125 ( .A(n254), .B(n247), .C(n68), .Y(n130) );
  NAND2X1 U126 ( .A(\REGS[6][7] ), .B(n247), .Y(n68) );
  NAND3X1 U127 ( .A(wa[1]), .B(n264), .C(n50), .Y(n60) );
  OAI21X1 U128 ( .A(n261), .B(n245), .C(n70), .Y(n131) );
  NAND2X1 U129 ( .A(\REGS[7][0] ), .B(n245), .Y(n70) );
  OAI21X1 U130 ( .A(n260), .B(n245), .C(n71), .Y(n132) );
  NAND2X1 U131 ( .A(\REGS[7][1] ), .B(n245), .Y(n71) );
  OAI21X1 U132 ( .A(n259), .B(n245), .C(n72), .Y(n133) );
  NAND2X1 U133 ( .A(\REGS[7][2] ), .B(n245), .Y(n72) );
  OAI21X1 U134 ( .A(n258), .B(n245), .C(n73), .Y(n134) );
  NAND2X1 U135 ( .A(\REGS[7][3] ), .B(n245), .Y(n73) );
  OAI21X1 U136 ( .A(n257), .B(n245), .C(n74), .Y(n135) );
  NAND2X1 U137 ( .A(\REGS[7][4] ), .B(n245), .Y(n74) );
  OAI21X1 U138 ( .A(n256), .B(n245), .C(n75), .Y(n136) );
  NAND2X1 U139 ( .A(\REGS[7][5] ), .B(n245), .Y(n75) );
  OAI21X1 U140 ( .A(n255), .B(n245), .C(n76), .Y(n137) );
  NAND2X1 U141 ( .A(\REGS[7][6] ), .B(n245), .Y(n76) );
  OAI21X1 U142 ( .A(n254), .B(n245), .C(n77), .Y(n138) );
  NAND2X1 U143 ( .A(\REGS[7][7] ), .B(n245), .Y(n77) );
  NAND3X1 U144 ( .A(wa[1]), .B(wa[0]), .C(n50), .Y(n69) );
  NOR2X1 U145 ( .A(n262), .B(n78), .Y(n50) );
  OAI21X1 U146 ( .A(n16), .B(n261), .C(n79), .Y(n83) );
  NAND2X1 U147 ( .A(\REGS[1][0] ), .B(n16), .Y(n79) );
  OAI21X1 U148 ( .A(n16), .B(n260), .C(n80), .Y(n84) );
  NAND2X1 U149 ( .A(\REGS[1][1] ), .B(n16), .Y(n80) );
  OAI21X1 U150 ( .A(n16), .B(n259), .C(n81), .Y(n85) );
  NAND2X1 U151 ( .A(\REGS[1][2] ), .B(n16), .Y(n81) );
  NAND2X1 U152 ( .A(n31), .B(n263), .Y(n16) );
  NOR2X1 U153 ( .A(n78), .B(wa[2]), .Y(n31) );
  OAI21X1 U154 ( .A(wa[0]), .B(n82), .C(regwrite), .Y(n78) );
  NAND2X1 U155 ( .A(n263), .B(n262), .Y(n82) );
  INVX2 U18 ( .A(n1), .Y(n241) );
  INVX2 U19 ( .A(n250), .Y(n251) );
  INVX2 U20 ( .A(n41), .Y(n250) );
  INVX2 U21 ( .A(n2), .Y(n186) );
  OR2X1 U22 ( .A(n239), .B(n238), .Y(n1) );
  INVX2 U23 ( .A(n3), .Y(n243) );
  INVX2 U24 ( .A(n4), .Y(n240) );
  INVX2 U25 ( .A(n5), .Y(n242) );
  INVX2 U26 ( .A(n252), .Y(n253) );
  INVX2 U27 ( .A(n32), .Y(n252) );
  INVX2 U28 ( .A(n248), .Y(n249) );
  INVX2 U29 ( .A(n51), .Y(n248) );
  INVX2 U30 ( .A(n246), .Y(n247) );
  INVX2 U156 ( .A(n60), .Y(n246) );
  INVX2 U157 ( .A(n244), .Y(n245) );
  INVX2 U158 ( .A(n69), .Y(n244) );
  OR2X1 U159 ( .A(n184), .B(n183), .Y(n2) );
  INVX2 U160 ( .A(n6), .Y(n188) );
  INVX2 U161 ( .A(n7), .Y(n185) );
  INVX2 U162 ( .A(n8), .Y(n187) );
  OR2X1 U163 ( .A(n238), .B(N18), .Y(n3) );
  OR2X1 U164 ( .A(n239), .B(N17), .Y(n4) );
  OR2X1 U165 ( .A(N17), .B(N18), .Y(n5) );
  OR2X1 U166 ( .A(n183), .B(N15), .Y(n6) );
  OR2X1 U167 ( .A(n184), .B(N14), .Y(n7) );
  OR2X1 U168 ( .A(N14), .B(N15), .Y(n8) );
  AOI22X1 U169 ( .A(\REGS[4][0] ), .B(n185), .C(\REGS[6][0] ), .D(n186), .Y(
        n10) );
  AOI22X1 U170 ( .A(\REGS[0][0] ), .B(n187), .C(\REGS[2][0] ), .D(n188), .Y(n9) );
  AOI21X1 U171 ( .A(n10), .B(n9), .C(N13), .Y(n139) );
  AOI22X1 U172 ( .A(\REGS[5][0] ), .B(n185), .C(\REGS[7][0] ), .D(n186), .Y(
        n12) );
  AOI22X1 U173 ( .A(\REGS[1][0] ), .B(n187), .C(\REGS[3][0] ), .D(n188), .Y(
        n11) );
  AOI21X1 U174 ( .A(n12), .B(n11), .C(n182), .Y(n13) );
  OR2X1 U175 ( .A(n139), .B(n13), .Y(N44) );
  AOI22X1 U176 ( .A(\REGS[4][1] ), .B(n185), .C(\REGS[6][1] ), .D(n186), .Y(
        n141) );
  AOI22X1 U177 ( .A(\REGS[0][1] ), .B(n187), .C(\REGS[2][1] ), .D(n188), .Y(
        n140) );
  AOI21X1 U178 ( .A(n141), .B(n140), .C(N13), .Y(n145) );
  AOI22X1 U179 ( .A(\REGS[5][1] ), .B(n185), .C(\REGS[7][1] ), .D(n186), .Y(
        n143) );
  AOI22X1 U180 ( .A(\REGS[1][1] ), .B(n187), .C(\REGS[3][1] ), .D(n188), .Y(
        n142) );
  AOI21X1 U181 ( .A(n143), .B(n142), .C(n182), .Y(n144) );
  OR2X1 U182 ( .A(n145), .B(n144), .Y(N43) );
  AOI22X1 U183 ( .A(\REGS[4][2] ), .B(n185), .C(\REGS[6][2] ), .D(n186), .Y(
        n147) );
  AOI22X1 U184 ( .A(\REGS[0][2] ), .B(n187), .C(\REGS[2][2] ), .D(n188), .Y(
        n146) );
  AOI21X1 U185 ( .A(n147), .B(n146), .C(N13), .Y(n151) );
  AOI22X1 U186 ( .A(\REGS[5][2] ), .B(n185), .C(\REGS[7][2] ), .D(n186), .Y(
        n149) );
  AOI22X1 U187 ( .A(\REGS[1][2] ), .B(n187), .C(\REGS[3][2] ), .D(n188), .Y(
        n148) );
  AOI21X1 U188 ( .A(n149), .B(n148), .C(n182), .Y(n150) );
  OR2X1 U189 ( .A(n151), .B(n150), .Y(N42) );
  AOI22X1 U190 ( .A(\REGS[4][3] ), .B(n185), .C(\REGS[6][3] ), .D(n186), .Y(
        n153) );
  AOI22X1 U191 ( .A(\REGS[0][3] ), .B(n187), .C(\REGS[2][3] ), .D(n188), .Y(
        n152) );
  AOI21X1 U192 ( .A(n153), .B(n152), .C(N13), .Y(n157) );
  AOI22X1 U193 ( .A(\REGS[5][3] ), .B(n185), .C(\REGS[7][3] ), .D(n186), .Y(
        n155) );
  AOI22X1 U194 ( .A(\REGS[1][3] ), .B(n187), .C(\REGS[3][3] ), .D(n188), .Y(
        n154) );
  AOI21X1 U195 ( .A(n155), .B(n154), .C(n182), .Y(n156) );
  OR2X1 U196 ( .A(n157), .B(n156), .Y(N41) );
  AOI22X1 U197 ( .A(\REGS[4][4] ), .B(n185), .C(\REGS[6][4] ), .D(n186), .Y(
        n159) );
  AOI22X1 U198 ( .A(\REGS[0][4] ), .B(n187), .C(\REGS[2][4] ), .D(n188), .Y(
        n158) );
  AOI21X1 U199 ( .A(n159), .B(n158), .C(N13), .Y(n163) );
  AOI22X1 U200 ( .A(\REGS[5][4] ), .B(n185), .C(\REGS[7][4] ), .D(n186), .Y(
        n161) );
  AOI22X1 U201 ( .A(\REGS[1][4] ), .B(n187), .C(\REGS[3][4] ), .D(n188), .Y(
        n160) );
  AOI21X1 U202 ( .A(n161), .B(n160), .C(n182), .Y(n162) );
  OR2X1 U203 ( .A(n163), .B(n162), .Y(N40) );
  AOI22X1 U204 ( .A(\REGS[4][5] ), .B(n185), .C(\REGS[6][5] ), .D(n186), .Y(
        n165) );
  AOI22X1 U205 ( .A(\REGS[0][5] ), .B(n187), .C(\REGS[2][5] ), .D(n188), .Y(
        n164) );
  AOI21X1 U206 ( .A(n165), .B(n164), .C(N13), .Y(n169) );
  AOI22X1 U207 ( .A(\REGS[5][5] ), .B(n185), .C(\REGS[7][5] ), .D(n186), .Y(
        n167) );
  AOI22X1 U208 ( .A(\REGS[1][5] ), .B(n187), .C(\REGS[3][5] ), .D(n188), .Y(
        n166) );
  AOI21X1 U209 ( .A(n167), .B(n166), .C(n182), .Y(n168) );
  OR2X1 U210 ( .A(n169), .B(n168), .Y(N39) );
  AOI22X1 U211 ( .A(\REGS[4][6] ), .B(n185), .C(\REGS[6][6] ), .D(n186), .Y(
        n171) );
  AOI22X1 U212 ( .A(\REGS[0][6] ), .B(n187), .C(\REGS[2][6] ), .D(n188), .Y(
        n170) );
  AOI21X1 U213 ( .A(n171), .B(n170), .C(N13), .Y(n175) );
  AOI22X1 U214 ( .A(\REGS[5][6] ), .B(n185), .C(\REGS[7][6] ), .D(n186), .Y(
        n173) );
  AOI22X1 U215 ( .A(\REGS[1][6] ), .B(n187), .C(\REGS[3][6] ), .D(n188), .Y(
        n172) );
  AOI21X1 U216 ( .A(n173), .B(n172), .C(n182), .Y(n174) );
  OR2X1 U217 ( .A(n175), .B(n174), .Y(N38) );
  AOI22X1 U218 ( .A(\REGS[4][7] ), .B(n185), .C(\REGS[6][7] ), .D(n186), .Y(
        n177) );
  AOI22X1 U219 ( .A(\REGS[0][7] ), .B(n187), .C(\REGS[2][7] ), .D(n188), .Y(
        n176) );
  AOI21X1 U220 ( .A(n177), .B(n176), .C(N13), .Y(n181) );
  AOI22X1 U221 ( .A(\REGS[5][7] ), .B(n185), .C(\REGS[7][7] ), .D(n186), .Y(
        n179) );
  AOI22X1 U222 ( .A(\REGS[1][7] ), .B(n187), .C(\REGS[3][7] ), .D(n188), .Y(
        n178) );
  AOI21X1 U223 ( .A(n179), .B(n178), .C(n182), .Y(n180) );
  OR2X1 U224 ( .A(n181), .B(n180), .Y(N37) );
  INVX2 U225 ( .A(N13), .Y(n182) );
  INVX2 U226 ( .A(N14), .Y(n183) );
  INVX2 U227 ( .A(N15), .Y(n184) );
  AOI22X1 U228 ( .A(\REGS[4][0] ), .B(n240), .C(\REGS[6][0] ), .D(n241), .Y(
        n190) );
  AOI22X1 U229 ( .A(\REGS[0][0] ), .B(n242), .C(\REGS[2][0] ), .D(n243), .Y(
        n189) );
  AOI21X1 U230 ( .A(n190), .B(n189), .C(N16), .Y(n194) );
  AOI22X1 U231 ( .A(\REGS[5][0] ), .B(n240), .C(\REGS[7][0] ), .D(n241), .Y(
        n192) );
  AOI22X1 U232 ( .A(\REGS[1][0] ), .B(n242), .C(\REGS[3][0] ), .D(n243), .Y(
        n191) );
  AOI21X1 U233 ( .A(n192), .B(n191), .C(n237), .Y(n193) );
  OR2X1 U234 ( .A(n194), .B(n193), .Y(N52) );
  AOI22X1 U235 ( .A(\REGS[4][1] ), .B(n240), .C(\REGS[6][1] ), .D(n241), .Y(
        n196) );
  AOI22X1 U236 ( .A(\REGS[0][1] ), .B(n242), .C(\REGS[2][1] ), .D(n243), .Y(
        n195) );
  AOI21X1 U237 ( .A(n196), .B(n195), .C(N16), .Y(n200) );
  AOI22X1 U238 ( .A(\REGS[5][1] ), .B(n240), .C(\REGS[7][1] ), .D(n241), .Y(
        n198) );
  AOI22X1 U239 ( .A(\REGS[1][1] ), .B(n242), .C(\REGS[3][1] ), .D(n243), .Y(
        n197) );
  AOI21X1 U240 ( .A(n198), .B(n197), .C(n237), .Y(n199) );
  OR2X1 U241 ( .A(n200), .B(n199), .Y(N51) );
  AOI22X1 U242 ( .A(\REGS[4][2] ), .B(n240), .C(\REGS[6][2] ), .D(n241), .Y(
        n202) );
  AOI22X1 U243 ( .A(\REGS[0][2] ), .B(n242), .C(\REGS[2][2] ), .D(n243), .Y(
        n201) );
  AOI21X1 U244 ( .A(n202), .B(n201), .C(N16), .Y(n206) );
  AOI22X1 U245 ( .A(\REGS[5][2] ), .B(n240), .C(\REGS[7][2] ), .D(n241), .Y(
        n204) );
  AOI22X1 U246 ( .A(\REGS[1][2] ), .B(n242), .C(\REGS[3][2] ), .D(n243), .Y(
        n203) );
  AOI21X1 U247 ( .A(n204), .B(n203), .C(n237), .Y(n205) );
  OR2X1 U248 ( .A(n206), .B(n205), .Y(N50) );
  AOI22X1 U249 ( .A(\REGS[4][3] ), .B(n240), .C(\REGS[6][3] ), .D(n241), .Y(
        n208) );
  AOI22X1 U250 ( .A(\REGS[0][3] ), .B(n242), .C(\REGS[2][3] ), .D(n243), .Y(
        n207) );
  AOI21X1 U251 ( .A(n208), .B(n207), .C(N16), .Y(n212) );
  AOI22X1 U252 ( .A(\REGS[5][3] ), .B(n240), .C(\REGS[7][3] ), .D(n241), .Y(
        n210) );
  AOI22X1 U253 ( .A(\REGS[1][3] ), .B(n242), .C(\REGS[3][3] ), .D(n243), .Y(
        n209) );
  AOI21X1 U254 ( .A(n210), .B(n209), .C(n237), .Y(n211) );
  OR2X1 U255 ( .A(n212), .B(n211), .Y(N49) );
  AOI22X1 U256 ( .A(\REGS[4][4] ), .B(n240), .C(\REGS[6][4] ), .D(n241), .Y(
        n214) );
  AOI22X1 U257 ( .A(\REGS[0][4] ), .B(n242), .C(\REGS[2][4] ), .D(n243), .Y(
        n213) );
  AOI21X1 U258 ( .A(n214), .B(n213), .C(N16), .Y(n218) );
  AOI22X1 U259 ( .A(\REGS[5][4] ), .B(n240), .C(\REGS[7][4] ), .D(n241), .Y(
        n216) );
  AOI22X1 U260 ( .A(\REGS[1][4] ), .B(n242), .C(\REGS[3][4] ), .D(n243), .Y(
        n215) );
  AOI21X1 U261 ( .A(n216), .B(n215), .C(n237), .Y(n217) );
  OR2X1 U262 ( .A(n218), .B(n217), .Y(N48) );
  AOI22X1 U263 ( .A(\REGS[4][5] ), .B(n240), .C(\REGS[6][5] ), .D(n241), .Y(
        n220) );
  AOI22X1 U264 ( .A(\REGS[0][5] ), .B(n242), .C(\REGS[2][5] ), .D(n243), .Y(
        n219) );
  AOI21X1 U265 ( .A(n220), .B(n219), .C(N16), .Y(n224) );
  AOI22X1 U266 ( .A(\REGS[5][5] ), .B(n240), .C(\REGS[7][5] ), .D(n241), .Y(
        n222) );
  AOI22X1 U267 ( .A(\REGS[1][5] ), .B(n242), .C(\REGS[3][5] ), .D(n243), .Y(
        n221) );
  AOI21X1 U268 ( .A(n222), .B(n221), .C(n237), .Y(n223) );
  OR2X1 U269 ( .A(n224), .B(n223), .Y(N47) );
  AOI22X1 U270 ( .A(\REGS[4][6] ), .B(n240), .C(\REGS[6][6] ), .D(n241), .Y(
        n226) );
  AOI22X1 U271 ( .A(\REGS[0][6] ), .B(n242), .C(\REGS[2][6] ), .D(n243), .Y(
        n225) );
  AOI21X1 U272 ( .A(n226), .B(n225), .C(N16), .Y(n230) );
  AOI22X1 U273 ( .A(\REGS[5][6] ), .B(n240), .C(\REGS[7][6] ), .D(n241), .Y(
        n228) );
  AOI22X1 U274 ( .A(\REGS[1][6] ), .B(n242), .C(\REGS[3][6] ), .D(n243), .Y(
        n227) );
  AOI21X1 U275 ( .A(n228), .B(n227), .C(n237), .Y(n229) );
  OR2X1 U276 ( .A(n230), .B(n229), .Y(N46) );
  AOI22X1 U277 ( .A(\REGS[4][7] ), .B(n240), .C(\REGS[6][7] ), .D(n241), .Y(
        n232) );
  AOI22X1 U278 ( .A(\REGS[0][7] ), .B(n242), .C(\REGS[2][7] ), .D(n243), .Y(
        n231) );
  AOI21X1 U279 ( .A(n232), .B(n231), .C(N16), .Y(n236) );
  AOI22X1 U280 ( .A(\REGS[5][7] ), .B(n240), .C(\REGS[7][7] ), .D(n241), .Y(
        n234) );
  AOI22X1 U281 ( .A(\REGS[1][7] ), .B(n242), .C(\REGS[3][7] ), .D(n243), .Y(
        n233) );
  AOI21X1 U282 ( .A(n234), .B(n233), .C(n237), .Y(n235) );
  OR2X1 U283 ( .A(n236), .B(n235), .Y(N45) );
  INVX2 U284 ( .A(N16), .Y(n237) );
  INVX2 U285 ( .A(N17), .Y(n238) );
  INVX2 U286 ( .A(N18), .Y(n239) );
  INVX2 U287 ( .A(wd[7]), .Y(n254) );
  INVX2 U288 ( .A(wd[6]), .Y(n255) );
  INVX2 U289 ( .A(wd[5]), .Y(n256) );
  INVX2 U290 ( .A(wd[4]), .Y(n257) );
  INVX2 U291 ( .A(wd[3]), .Y(n258) );
  INVX2 U292 ( .A(wd[2]), .Y(n259) );
  INVX2 U293 ( .A(wd[1]), .Y(n260) );
  INVX2 U294 ( .A(wd[0]), .Y(n261) );
  INVX2 U295 ( .A(wa[2]), .Y(n262) );
  INVX2 U296 ( .A(wa[1]), .Y(n263) );
  INVX2 U297 ( .A(wa[0]), .Y(n264) );
  INVX2 U298 ( .A(n15), .Y(n265) );
  INVX2 U299 ( .A(n14), .Y(n266) );
endmodule


module alu_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;

  wire   [7:1] carry;

  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(carry[1]), .YC(carry[2]), .YS(SUM[1]) );
  FAX1 U1_0 ( .A(A[0]), .B(B[0]), .C(CI), .YC(carry[1]), .YS(SUM[0]) );
endmodule


module alu ( a, b, alucont, result );
  input [7:0] a;
  input [7:0] b;
  input [2:0] alucont;
  output [7:0] result;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11;
  wire   [7:0] b2;
  wire   [7:0] sum;

  AND2X2 U2 ( .A(alucont[1]), .B(sum[7]), .Y(n36) );
  NAND3X1 U14 ( .A(n14), .B(n15), .C(n16), .Y(result[7]) );
  OAI21X1 U15 ( .A(b[7]), .B(a[7]), .C(n8), .Y(n16) );
  NAND3X1 U16 ( .A(alucont[1]), .B(n11), .C(sum[7]), .Y(n15) );
  NAND3X1 U17 ( .A(b[7]), .B(a[7]), .C(n17), .Y(n14) );
  NOR2X1 U18 ( .A(alucont[2]), .B(alucont[1]), .Y(n17) );
  OAI21X1 U19 ( .A(n18), .B(n1), .C(n19), .Y(result[6]) );
  AOI22X1 U20 ( .A(b[6]), .B(n20), .C(sum[6]), .D(n21), .Y(n19) );
  OAI21X1 U21 ( .A(n22), .B(n1), .C(n18), .Y(n20) );
  OAI21X1 U22 ( .A(n18), .B(n2), .C(n23), .Y(result[5]) );
  AOI22X1 U23 ( .A(b[5]), .B(n24), .C(sum[5]), .D(n21), .Y(n23) );
  OAI21X1 U24 ( .A(n22), .B(n2), .C(n18), .Y(n24) );
  OAI21X1 U25 ( .A(n18), .B(n3), .C(n25), .Y(result[4]) );
  AOI22X1 U26 ( .A(b[4]), .B(n26), .C(sum[4]), .D(n21), .Y(n25) );
  OAI21X1 U27 ( .A(n22), .B(n3), .C(n18), .Y(n26) );
  OAI21X1 U28 ( .A(n18), .B(n4), .C(n27), .Y(result[3]) );
  AOI22X1 U29 ( .A(b[3]), .B(n28), .C(sum[3]), .D(n21), .Y(n27) );
  OAI21X1 U30 ( .A(n22), .B(n4), .C(n18), .Y(n28) );
  OAI21X1 U31 ( .A(n18), .B(n5), .C(n29), .Y(result[2]) );
  AOI22X1 U32 ( .A(b[2]), .B(n30), .C(sum[2]), .D(n21), .Y(n29) );
  OAI21X1 U33 ( .A(n22), .B(n5), .C(n18), .Y(n30) );
  OAI21X1 U34 ( .A(n18), .B(n6), .C(n31), .Y(result[1]) );
  AOI22X1 U35 ( .A(b[1]), .B(n32), .C(sum[1]), .D(n21), .Y(n31) );
  OAI21X1 U36 ( .A(n22), .B(n6), .C(n18), .Y(n32) );
  NAND2X1 U37 ( .A(n33), .B(n34), .Y(result[0]) );
  AOI22X1 U38 ( .A(n35), .B(n36), .C(b[0]), .D(n37), .Y(n34) );
  OAI21X1 U39 ( .A(n22), .B(n7), .C(n18), .Y(n37) );
  NAND2X1 U40 ( .A(n10), .B(n9), .Y(n22) );
  NOR2X1 U41 ( .A(n11), .B(n9), .Y(n35) );
  AOI22X1 U42 ( .A(sum[0]), .B(n21), .C(a[0]), .D(n8), .Y(n33) );
  NAND3X1 U43 ( .A(n10), .B(n9), .C(alucont[0]), .Y(n18) );
  NOR2X1 U44 ( .A(n10), .B(alucont[0]), .Y(n21) );
  XNOR2X1 U45 ( .A(b[7]), .B(n9), .Y(b2[7]) );
  XNOR2X1 U46 ( .A(b[6]), .B(n9), .Y(b2[6]) );
  XNOR2X1 U47 ( .A(b[5]), .B(n9), .Y(b2[5]) );
  XNOR2X1 U48 ( .A(b[4]), .B(n9), .Y(b2[4]) );
  XNOR2X1 U49 ( .A(b[3]), .B(n9), .Y(b2[3]) );
  XNOR2X1 U50 ( .A(b[2]), .B(n9), .Y(b2[2]) );
  XNOR2X1 U51 ( .A(b[1]), .B(n9), .Y(b2[1]) );
  XNOR2X1 U52 ( .A(b[0]), .B(n9), .Y(b2[0]) );
  alu_DW01_add_0 add_1_root_add_19_2 ( .A(a), .B(b2), .CI(alucont[2]), .SUM(
        sum) );
  INVX2 U3 ( .A(alucont[2]), .Y(n9) );
  INVX2 U4 ( .A(a[6]), .Y(n1) );
  INVX2 U5 ( .A(a[5]), .Y(n2) );
  INVX2 U6 ( .A(a[4]), .Y(n3) );
  INVX2 U7 ( .A(a[3]), .Y(n4) );
  INVX2 U8 ( .A(a[2]), .Y(n5) );
  INVX2 U9 ( .A(a[1]), .Y(n6) );
  INVX2 U10 ( .A(a[0]), .Y(n7) );
  INVX2 U11 ( .A(n18), .Y(n8) );
  INVX2 U12 ( .A(alucont[1]), .Y(n10) );
  INVX2 U13 ( .A(alucont[0]), .Y(n11) );
endmodule


module zerodetect ( a, y );
  input [7:0] a;
  output y;
  wire   n1, n2, n3, n4, n5, n6;

  NOR2X1 U1 ( .A(n1), .B(n2), .Y(y) );
  NAND2X1 U2 ( .A(n3), .B(n4), .Y(n2) );
  NOR2X1 U3 ( .A(a[3]), .B(a[2]), .Y(n4) );
  NOR2X1 U4 ( .A(a[1]), .B(a[0]), .Y(n3) );
  NAND2X1 U5 ( .A(n5), .B(n6), .Y(n1) );
  NOR2X1 U6 ( .A(a[7]), .B(a[6]), .Y(n6) );
  NOR2X1 U7 ( .A(a[5]), .B(a[4]), .Y(n5) );
endmodule


module datapath ( clk, reset, memdata, alusrca, memtoreg, iord, pcen, regwrite, 
        regdst, pcsource, alusrcb, irwrite, alucont, zero, instr, adr, 
        writedata );
  input [7:0] memdata;
  input [1:0] pcsource;
  input [1:0] alusrcb;
  input [3:0] irwrite;
  input [2:0] alucont;
  output [31:0] instr;
  output [7:0] adr;
  output [7:0] writedata;
  input clk, reset, alusrca, memtoreg, iord, pcen, regwrite, regdst;
  output zero;

  wire   [2:0] wa;
  wire   [7:0] nextpc;
  wire   [7:0] pc;
  wire   [7:0] md;
  wire   [7:0] rd1;
  wire   [7:0] a;
  wire   [7:0] rd2;
  wire   [7:0] aluresult;
  wire   [7:0] aluout;
  wire   [7:0] src1;
  wire   [7:0] src2;
  wire   [7:0] wd;

  mux23 regmux ( .d0(instr[18:16]), .d1(instr[13:11]), .s(regdst), .y(wa) );
  flopen_0 ir0 ( .clk(clk), .en(irwrite[0]), .d(memdata), .q(instr[7:0]) );
  flopen_3 ir1 ( .clk(clk), .en(irwrite[1]), .d(memdata), .q(instr[15:8]) );
  flopen_2 ir2 ( .clk(clk), .en(irwrite[2]), .d(memdata), .q(instr[23:16]) );
  flopen_1 ir3 ( .clk(clk), .en(irwrite[3]), .d(memdata), .q(instr[31:24]) );
  flopenr pcreg ( .clk(clk), .reset(reset), .en(pcen), .d(nextpc), .q(pc) );
  flop_0 mdr ( .clk(clk), .d(memdata), .q(md) );
  flop_3 areg ( .clk(clk), .d(rd1), .q(a) );
  flop_2 wrd ( .clk(clk), .d(rd2), .q(writedata) );
  flop_1 res ( .clk(clk), .d(aluresult), .q(aluout) );
  mux2_0 adrmux ( .d0(pc), .d1(aluout), .s(iord), .y(adr) );
  mux2_2 src1mux ( .d0(pc), .d1(a), .s(alusrca), .y(src1) );
  mux4_0 src2mux ( .d0(rd2), .d1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b1}), .d2(instr[7:0]), .d3({instr[5:0], 1'b0, 1'b0}), .s(alusrcb), 
        .y(src2) );
  mux4_1 pcmux ( .d0(aluresult), .d1(aluout), .d2({instr[5:0], 1'b0, 1'b0}), 
        .d3({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s(pcsource), 
        .y(nextpc) );
  mux2_1 wdmux ( .d0(aluout), .d1(md), .s(memtoreg), .y(wd) );
  regfile rf ( .clk(clk), .regwrite(regwrite), .ra1(instr[23:21]), .ra2(
        instr[18:16]), .wa(wa), .wd(wd), .rd1(rd1), .rd2(rd2) );
  alu main_alu ( .a(src1), .b(src2), .alucont(alucont), .result(aluresult) );
  zerodetect zd ( .a(aluresult), .y(zero) );
endmodule


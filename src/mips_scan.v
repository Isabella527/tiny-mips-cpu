/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sun May 10 14:07:18 2026
/////////////////////////////////////////////////////////////


module controller ( clk, reset, op, zero, memread, memwrite, alusrca, memtoreg, 
        iord, pcen, regwrite, regdst, pcsource, alusrcb, aluop, irwrite );
  input [5:0] op;
  output [1:0] pcsource;
  output [1:0] alusrcb;
  output [1:0] aluop;
  output [3:0] irwrite;
  input clk, reset, zero;
  output memread, memwrite, alusrca, memtoreg, iord, pcen, regwrite, regdst;
  wire   n19, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54;
  wire   [3:0] state;
  wire   [3:0] nextstate;
  assign aluop[0] = pcsource[0];

  DFFSR state_reg_3_ ( .D(nextstate[3]), .CLK(clk), .R(n19), .S(1'b1), .Q(
        state[3]) );
  DFFSR state_reg_1_ ( .D(nextstate[1]), .CLK(clk), .R(n19), .S(1'b1), .Q(
        state[1]) );
  DFFSR state_reg_2_ ( .D(nextstate[2]), .CLK(clk), .R(n19), .S(1'b1), .Q(
        state[2]) );
  DFFSR state_reg_0_ ( .D(nextstate[0]), .CLK(clk), .R(n19), .S(1'b1), .Q(
        state[0]) );
  NAND2X1 U76 ( .A(n1), .B(n2), .Y(regwrite) );
  INVX1 U77 ( .A(n1), .Y(regdst) );
  NAND3X1 U78 ( .A(state[1]), .B(n3), .C(n4), .Y(n1) );
  INVX1 U79 ( .A(n5), .Y(pcsource[1]) );
  NAND3X1 U80 ( .A(n6), .B(n5), .C(n7), .Y(pcen) );
  NAND2X1 U81 ( .A(zero), .B(pcsource[0]), .Y(n7) );
  NAND3X1 U82 ( .A(state[3]), .B(state[2]), .C(n8), .Y(n5) );
  NAND3X1 U83 ( .A(n9), .B(n10), .C(n11), .Y(nextstate[3]) );
  AOI22X1 U84 ( .A(n12), .B(n13), .C(n14), .D(n15), .Y(n11) );
  INVX1 U85 ( .A(n16), .Y(n12) );
  OR2X1 U86 ( .A(n17), .B(n18), .Y(nextstate[2]) );
  OAI21X1 U87 ( .A(n16), .B(n13), .C(n20), .Y(n18) );
  OAI21X1 U88 ( .A(n21), .B(n22), .C(n23), .Y(n17) );
  NAND2X1 U89 ( .A(n14), .B(n15), .Y(n22) );
  INVX1 U90 ( .A(op[5]), .Y(n15) );
  NAND3X1 U91 ( .A(n24), .B(n25), .C(n26), .Y(nextstate[1]) );
  INVX1 U92 ( .A(n27), .Y(n26) );
  OAI22X1 U93 ( .A(n28), .B(state[2]), .C(n13), .D(n16), .Y(n27) );
  NAND3X1 U94 ( .A(n29), .B(n30), .C(op[5]), .Y(n13) );
  INVX1 U95 ( .A(op[2]), .Y(n30) );
  INVX1 U96 ( .A(n31), .Y(n29) );
  AND2X1 U97 ( .A(n32), .B(n9), .Y(n24) );
  OR2X1 U98 ( .A(n33), .B(n34), .Y(nextstate[0]) );
  OAI21X1 U99 ( .A(state[0]), .B(n6), .C(n20), .Y(n34) );
  INVX1 U100 ( .A(n35), .Y(n20) );
  OAI21X1 U101 ( .A(n36), .B(n37), .C(n25), .Y(n35) );
  NAND2X1 U102 ( .A(op[5]), .B(n21), .Y(n37) );
  INVX1 U103 ( .A(op[1]), .Y(n21) );
  OAI21X1 U104 ( .A(op[1]), .B(n38), .C(n9), .Y(n33) );
  NAND3X1 U105 ( .A(op[2]), .B(n39), .C(n40), .Y(n9) );
  NOR2X1 U106 ( .A(op[5]), .B(n31), .Y(n40) );
  NAND3X1 U107 ( .A(n41), .B(n42), .C(n43), .Y(n31) );
  NOR2X1 U108 ( .A(op[1]), .B(op[0]), .Y(n43) );
  INVX1 U109 ( .A(op[4]), .Y(n42) );
  INVX1 U110 ( .A(op[3]), .Y(n41) );
  INVX1 U111 ( .A(n14), .Y(n38) );
  NOR2X1 U112 ( .A(n36), .B(op[3]), .Y(n14) );
  NAND3X1 U113 ( .A(n39), .B(n44), .C(n45), .Y(n36) );
  NOR2X1 U114 ( .A(op[4]), .B(op[2]), .Y(n45) );
  INVX1 U115 ( .A(op[0]), .Y(n44) );
  INVX1 U116 ( .A(reset), .Y(n19) );
  INVX1 U117 ( .A(n46), .Y(memwrite) );
  INVX1 U118 ( .A(n2), .Y(memtoreg) );
  NAND3X1 U119 ( .A(n47), .B(n48), .C(state[2]), .Y(n2) );
  NAND2X1 U120 ( .A(n6), .B(n25), .Y(memread) );
  INVX1 U121 ( .A(n23), .Y(irwrite[3]) );
  NAND2X1 U122 ( .A(n49), .B(n47), .Y(n23) );
  INVX1 U123 ( .A(n32), .Y(irwrite[2]) );
  NAND3X1 U124 ( .A(state[1]), .B(n3), .C(n49), .Y(n32) );
  NOR2X1 U125 ( .A(n28), .B(n6), .Y(irwrite[1]) );
  INVX1 U126 ( .A(n49), .Y(n6) );
  INVX1 U127 ( .A(n50), .Y(n28) );
  AND2X1 U128 ( .A(n8), .B(n49), .Y(irwrite[0]) );
  NAND2X1 U129 ( .A(n46), .B(n25), .Y(iord) );
  NAND3X1 U130 ( .A(state[2]), .B(state[1]), .C(n51), .Y(n25) );
  NOR2X1 U131 ( .A(state[3]), .B(state[0]), .Y(n51) );
  NAND2X1 U132 ( .A(n8), .B(n4), .Y(n46) );
  NOR2X1 U133 ( .A(state[0]), .B(state[1]), .Y(n8) );
  OR2X1 U134 ( .A(n49), .B(n39), .Y(alusrcb[0]) );
  NOR2X1 U135 ( .A(n52), .B(state[0]), .Y(n39) );
  NOR2X1 U136 ( .A(state[3]), .B(state[2]), .Y(n49) );
  NAND3X1 U137 ( .A(n53), .B(n10), .C(n16), .Y(alusrca) );
  NAND2X1 U138 ( .A(alusrcb[1]), .B(state[0]), .Y(n16) );
  INVX1 U139 ( .A(n52), .Y(alusrcb[1]) );
  NAND3X1 U140 ( .A(n54), .B(n48), .C(state[2]), .Y(n52) );
  INVX1 U141 ( .A(n10), .Y(aluop[1]) );
  NAND2X1 U142 ( .A(n50), .B(n4), .Y(n10) );
  NOR2X1 U143 ( .A(n3), .B(state[1]), .Y(n50) );
  INVX1 U144 ( .A(n53), .Y(pcsource[0]) );
  NAND2X1 U145 ( .A(n4), .B(n47), .Y(n53) );
  NOR2X1 U146 ( .A(n54), .B(n3), .Y(n47) );
  INVX1 U147 ( .A(state[0]), .Y(n3) );
  INVX1 U148 ( .A(state[1]), .Y(n54) );
  NOR2X1 U149 ( .A(n48), .B(state[2]), .Y(n4) );
  INVX1 U150 ( .A(state[3]), .Y(n48) );
endmodule


module alucontrol ( aluop, funct, alucont );
  input [1:0] aluop;
  input [5:0] funct;
  output [2:0] alucont;
  wire   n17, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16;

  BUFX2 U18 ( .A(n17), .Y(alucont[2]) );
  OAI22X1 U19 ( .A(aluop[1]), .B(n2), .C(n3), .D(n4), .Y(n17) );
  NAND2X1 U20 ( .A(aluop[1]), .B(n5), .Y(alucont[1]) );
  OAI21X1 U21 ( .A(n6), .B(n7), .C(n2), .Y(n5) );
  INVX1 U22 ( .A(aluop[0]), .Y(n2) );
  NAND2X1 U23 ( .A(funct[2]), .B(funct[5]), .Y(n7) );
  NAND3X1 U24 ( .A(n8), .B(n9), .C(n10), .Y(n6) );
  INVX1 U25 ( .A(funct[4]), .Y(n9) );
  NOR2X1 U26 ( .A(n11), .B(n4), .Y(alucont[0]) );
  NAND3X1 U27 ( .A(funct[5]), .B(aluop[1]), .C(n12), .Y(n4) );
  NOR2X1 U28 ( .A(funct[4]), .B(aluop[0]), .Y(n12) );
  INVX1 U29 ( .A(n13), .Y(n11) );
  MUX2X1 U30 ( .B(n3), .A(n14), .S(n8), .Y(n13) );
  INVX1 U31 ( .A(funct[3]), .Y(n8) );
  NAND3X1 U32 ( .A(funct[2]), .B(n10), .C(funct[0]), .Y(n14) );
  INVX1 U33 ( .A(funct[1]), .Y(n10) );
  NAND3X1 U34 ( .A(n15), .B(n16), .C(funct[1]), .Y(n3) );
  INVX1 U35 ( .A(funct[2]), .Y(n16) );
  INVX1 U36 ( .A(funct[0]), .Y(n15) );
endmodule


module mux23 ( d0, d1, s, y );
  input [2:0] d0;
  input [2:0] d1;
  output [2:0] y;
  input s;
  wire   n1, n2, n3;

  INVX1 U8 ( .A(n1), .Y(y[2]) );
  MUX2X1 U9 ( .B(d0[2]), .A(d1[2]), .S(s), .Y(n1) );
  INVX1 U10 ( .A(n2), .Y(y[1]) );
  MUX2X1 U11 ( .B(d0[1]), .A(d1[1]), .S(s), .Y(n2) );
  INVX1 U12 ( .A(n3), .Y(y[0]) );
  MUX2X1 U13 ( .B(d0[0]), .A(d1[0]), .S(s), .Y(n3) );
endmodule


module mux2_0 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  INVX1 U18 ( .A(n1), .Y(y[7]) );
  MUX2X1 U19 ( .B(d0[7]), .A(d1[7]), .S(s), .Y(n1) );
  INVX1 U20 ( .A(n2), .Y(y[6]) );
  MUX2X1 U21 ( .B(d0[6]), .A(d1[6]), .S(s), .Y(n2) );
  INVX1 U22 ( .A(n3), .Y(y[5]) );
  MUX2X1 U23 ( .B(d0[5]), .A(d1[5]), .S(s), .Y(n3) );
  INVX1 U24 ( .A(n4), .Y(y[4]) );
  MUX2X1 U25 ( .B(d0[4]), .A(d1[4]), .S(s), .Y(n4) );
  INVX1 U26 ( .A(n5), .Y(y[3]) );
  MUX2X1 U27 ( .B(d0[3]), .A(d1[3]), .S(s), .Y(n5) );
  INVX1 U28 ( .A(n6), .Y(y[2]) );
  MUX2X1 U29 ( .B(d0[2]), .A(d1[2]), .S(s), .Y(n6) );
  INVX1 U30 ( .A(n7), .Y(y[1]) );
  MUX2X1 U31 ( .B(d0[1]), .A(d1[1]), .S(s), .Y(n7) );
  INVX1 U32 ( .A(n8), .Y(y[0]) );
  MUX2X1 U33 ( .B(d0[0]), .A(d1[0]), .S(s), .Y(n8) );
endmodule


module mux2_2 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  INVX1 U18 ( .A(n1), .Y(y[7]) );
  MUX2X1 U19 ( .B(d0[7]), .A(d1[7]), .S(s), .Y(n1) );
  INVX1 U20 ( .A(n2), .Y(y[6]) );
  MUX2X1 U21 ( .B(d0[6]), .A(d1[6]), .S(s), .Y(n2) );
  INVX1 U22 ( .A(n3), .Y(y[5]) );
  MUX2X1 U23 ( .B(d0[5]), .A(d1[5]), .S(s), .Y(n3) );
  INVX1 U24 ( .A(n4), .Y(y[4]) );
  MUX2X1 U25 ( .B(d0[4]), .A(d1[4]), .S(s), .Y(n4) );
  INVX1 U26 ( .A(n5), .Y(y[3]) );
  MUX2X1 U27 ( .B(d0[3]), .A(d1[3]), .S(s), .Y(n5) );
  INVX1 U28 ( .A(n6), .Y(y[2]) );
  MUX2X1 U29 ( .B(d0[2]), .A(d1[2]), .S(s), .Y(n6) );
  INVX1 U30 ( .A(n7), .Y(y[1]) );
  MUX2X1 U31 ( .B(d0[1]), .A(d1[1]), .S(s), .Y(n7) );
  INVX1 U32 ( .A(n8), .Y(y[0]) );
  MUX2X1 U33 ( .B(d0[0]), .A(d1[0]), .S(s), .Y(n8) );
endmodule


module mux4_0 ( d0, d1, d2, d3, s, y );
  input [7:0] d0;
  input [7:0] d1;
  input [7:0] d2;
  input [7:0] d3;
  input [1:0] s;
  output [7:0] y;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21;

  NAND2X1 U30 ( .A(n1), .B(n2), .Y(y[7]) );
  AOI22X1 U31 ( .A(d3[7]), .B(n3), .C(d2[7]), .D(n4), .Y(n2) );
  AOI22X1 U32 ( .A(d1[7]), .B(n5), .C(d0[7]), .D(n6), .Y(n1) );
  NAND2X1 U33 ( .A(n7), .B(n8), .Y(y[6]) );
  AOI22X1 U34 ( .A(d3[6]), .B(n3), .C(d2[6]), .D(n4), .Y(n8) );
  AOI22X1 U35 ( .A(d1[6]), .B(n5), .C(d0[6]), .D(n6), .Y(n7) );
  NAND2X1 U36 ( .A(n9), .B(n10), .Y(y[5]) );
  AOI22X1 U37 ( .A(d3[5]), .B(n3), .C(d2[5]), .D(n4), .Y(n10) );
  AOI22X1 U38 ( .A(d1[5]), .B(n5), .C(d0[5]), .D(n6), .Y(n9) );
  NAND2X1 U39 ( .A(n11), .B(n12), .Y(y[4]) );
  AOI22X1 U40 ( .A(d3[4]), .B(n3), .C(d2[4]), .D(n4), .Y(n12) );
  AOI22X1 U41 ( .A(d1[4]), .B(n5), .C(d0[4]), .D(n6), .Y(n11) );
  NAND2X1 U42 ( .A(n13), .B(n14), .Y(y[3]) );
  AOI22X1 U43 ( .A(d3[3]), .B(n3), .C(d2[3]), .D(n4), .Y(n14) );
  AOI22X1 U44 ( .A(d1[3]), .B(n5), .C(d0[3]), .D(n6), .Y(n13) );
  NAND2X1 U45 ( .A(n15), .B(n16), .Y(y[2]) );
  AOI22X1 U46 ( .A(d3[2]), .B(n3), .C(d2[2]), .D(n4), .Y(n16) );
  AOI22X1 U47 ( .A(d1[2]), .B(n5), .C(d0[2]), .D(n6), .Y(n15) );
  NAND2X1 U48 ( .A(n17), .B(n18), .Y(y[1]) );
  AOI22X1 U49 ( .A(d3[1]), .B(n3), .C(d2[1]), .D(n4), .Y(n18) );
  AOI22X1 U50 ( .A(d1[1]), .B(n5), .C(d0[1]), .D(n6), .Y(n17) );
  NAND2X1 U51 ( .A(n19), .B(n20), .Y(y[0]) );
  AOI22X1 U52 ( .A(d3[0]), .B(n3), .C(d2[0]), .D(n4), .Y(n20) );
  AND2X1 U53 ( .A(s[1]), .B(n21), .Y(n4) );
  AND2X1 U54 ( .A(s[1]), .B(s[0]), .Y(n3) );
  AOI22X1 U55 ( .A(d1[0]), .B(n5), .C(d0[0]), .D(n6), .Y(n19) );
  NOR2X1 U56 ( .A(s[0]), .B(s[1]), .Y(n6) );
  NOR2X1 U57 ( .A(n21), .B(s[1]), .Y(n5) );
  INVX1 U58 ( .A(s[0]), .Y(n21) );
endmodule


module mux4_1 ( d0, d1, d2, d3, s, y );
  input [7:0] d0;
  input [7:0] d1;
  input [7:0] d2;
  input [7:0] d3;
  input [1:0] s;
  output [7:0] y;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21;

  NAND2X1 U30 ( .A(n1), .B(n2), .Y(y[7]) );
  AOI22X1 U31 ( .A(d3[7]), .B(n3), .C(d2[7]), .D(n4), .Y(n2) );
  AOI22X1 U32 ( .A(d1[7]), .B(n5), .C(d0[7]), .D(n6), .Y(n1) );
  NAND2X1 U33 ( .A(n7), .B(n8), .Y(y[6]) );
  AOI22X1 U34 ( .A(d3[6]), .B(n3), .C(d2[6]), .D(n4), .Y(n8) );
  AOI22X1 U35 ( .A(d1[6]), .B(n5), .C(d0[6]), .D(n6), .Y(n7) );
  NAND2X1 U36 ( .A(n9), .B(n10), .Y(y[5]) );
  AOI22X1 U37 ( .A(d3[5]), .B(n3), .C(d2[5]), .D(n4), .Y(n10) );
  AOI22X1 U38 ( .A(d1[5]), .B(n5), .C(d0[5]), .D(n6), .Y(n9) );
  NAND2X1 U39 ( .A(n11), .B(n12), .Y(y[4]) );
  AOI22X1 U40 ( .A(d3[4]), .B(n3), .C(d2[4]), .D(n4), .Y(n12) );
  AOI22X1 U41 ( .A(d1[4]), .B(n5), .C(d0[4]), .D(n6), .Y(n11) );
  NAND2X1 U42 ( .A(n13), .B(n14), .Y(y[3]) );
  AOI22X1 U43 ( .A(d3[3]), .B(n3), .C(d2[3]), .D(n4), .Y(n14) );
  AOI22X1 U44 ( .A(d1[3]), .B(n5), .C(d0[3]), .D(n6), .Y(n13) );
  NAND2X1 U45 ( .A(n15), .B(n16), .Y(y[2]) );
  AOI22X1 U46 ( .A(d3[2]), .B(n3), .C(d2[2]), .D(n4), .Y(n16) );
  AOI22X1 U47 ( .A(d1[2]), .B(n5), .C(d0[2]), .D(n6), .Y(n15) );
  NAND2X1 U48 ( .A(n17), .B(n18), .Y(y[1]) );
  AOI22X1 U49 ( .A(d3[1]), .B(n3), .C(d2[1]), .D(n4), .Y(n18) );
  AOI22X1 U50 ( .A(d1[1]), .B(n5), .C(d0[1]), .D(n6), .Y(n17) );
  NAND2X1 U51 ( .A(n19), .B(n20), .Y(y[0]) );
  AOI22X1 U52 ( .A(d3[0]), .B(n3), .C(d2[0]), .D(n4), .Y(n20) );
  AND2X1 U53 ( .A(s[1]), .B(n21), .Y(n4) );
  AND2X1 U54 ( .A(s[1]), .B(s[0]), .Y(n3) );
  AOI22X1 U55 ( .A(d1[0]), .B(n5), .C(d0[0]), .D(n6), .Y(n19) );
  NOR2X1 U56 ( .A(s[0]), .B(s[1]), .Y(n6) );
  NOR2X1 U57 ( .A(n21), .B(s[1]), .Y(n5) );
  INVX1 U58 ( .A(s[0]), .Y(n21) );
endmodule


module mux2_1 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  INVX1 U18 ( .A(n1), .Y(y[7]) );
  MUX2X1 U19 ( .B(d0[7]), .A(d1[7]), .S(s), .Y(n1) );
  INVX1 U20 ( .A(n2), .Y(y[6]) );
  MUX2X1 U21 ( .B(d0[6]), .A(d1[6]), .S(s), .Y(n2) );
  INVX1 U22 ( .A(n3), .Y(y[5]) );
  MUX2X1 U23 ( .B(d0[5]), .A(d1[5]), .S(s), .Y(n3) );
  INVX1 U24 ( .A(n4), .Y(y[4]) );
  MUX2X1 U25 ( .B(d0[4]), .A(d1[4]), .S(s), .Y(n4) );
  INVX1 U26 ( .A(n5), .Y(y[3]) );
  MUX2X1 U27 ( .B(d0[3]), .A(d1[3]), .S(s), .Y(n5) );
  INVX1 U28 ( .A(n6), .Y(y[2]) );
  MUX2X1 U29 ( .B(d0[2]), .A(d1[2]), .S(s), .Y(n6) );
  INVX1 U30 ( .A(n7), .Y(y[1]) );
  MUX2X1 U31 ( .B(d0[1]), .A(d1[1]), .S(s), .Y(n7) );
  INVX1 U32 ( .A(n8), .Y(y[0]) );
  MUX2X1 U33 ( .B(d0[0]), .A(d1[0]), .S(s), .Y(n8) );
endmodule


module alu_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33;

  XOR2X1 U42 ( .A(n1), .B(n2), .Y(SUM[7]) );
  XOR2X1 U43 ( .A(B[7]), .B(A[7]), .Y(n2) );
  OAI21X1 U44 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  OAI21X1 U45 ( .A(A[6]), .B(n6), .C(B[6]), .Y(n5) );
  XNOR2X1 U46 ( .A(n3), .B(n7), .Y(SUM[6]) );
  XNOR2X1 U47 ( .A(B[6]), .B(n4), .Y(n7) );
  INVX1 U48 ( .A(A[6]), .Y(n4) );
  INVX1 U49 ( .A(n6), .Y(n3) );
  OAI21X1 U50 ( .A(n8), .B(n9), .C(n10), .Y(n6) );
  OAI21X1 U51 ( .A(n11), .B(A[5]), .C(B[5]), .Y(n10) );
  INVX1 U52 ( .A(n8), .Y(n11) );
  XNOR2X1 U53 ( .A(n8), .B(n12), .Y(SUM[5]) );
  XNOR2X1 U54 ( .A(B[5]), .B(n9), .Y(n12) );
  INVX1 U55 ( .A(A[5]), .Y(n9) );
  OAI21X1 U56 ( .A(A[4]), .B(n13), .C(n14), .Y(n8) );
  INVX1 U57 ( .A(n15), .Y(n14) );
  AOI21X1 U58 ( .A(n13), .B(A[4]), .C(B[4]), .Y(n15) );
  XOR2X1 U59 ( .A(n13), .B(n16), .Y(SUM[4]) );
  XOR2X1 U60 ( .A(B[4]), .B(A[4]), .Y(n16) );
  OAI21X1 U61 ( .A(n17), .B(n18), .C(n19), .Y(n13) );
  OAI21X1 U62 ( .A(n20), .B(A[3]), .C(B[3]), .Y(n19) );
  INVX1 U63 ( .A(n17), .Y(n20) );
  XNOR2X1 U64 ( .A(n17), .B(n21), .Y(SUM[3]) );
  XNOR2X1 U65 ( .A(B[3]), .B(n18), .Y(n21) );
  INVX1 U66 ( .A(A[3]), .Y(n18) );
  OAI21X1 U67 ( .A(A[2]), .B(n22), .C(n23), .Y(n17) );
  INVX1 U68 ( .A(n24), .Y(n23) );
  AOI21X1 U69 ( .A(n22), .B(A[2]), .C(B[2]), .Y(n24) );
  XOR2X1 U70 ( .A(n22), .B(n25), .Y(SUM[2]) );
  XOR2X1 U71 ( .A(B[2]), .B(A[2]), .Y(n25) );
  OAI21X1 U72 ( .A(n26), .B(n27), .C(n28), .Y(n22) );
  OAI21X1 U73 ( .A(n29), .B(A[1]), .C(B[1]), .Y(n28) );
  INVX1 U74 ( .A(n26), .Y(n29) );
  XNOR2X1 U75 ( .A(n26), .B(n30), .Y(SUM[1]) );
  XNOR2X1 U76 ( .A(B[1]), .B(n27), .Y(n30) );
  INVX1 U77 ( .A(A[1]), .Y(n27) );
  OAI21X1 U78 ( .A(B[0]), .B(A[0]), .C(n31), .Y(n26) );
  INVX1 U79 ( .A(n32), .Y(n31) );
  AOI21X1 U80 ( .A(A[0]), .B(B[0]), .C(CI), .Y(n32) );
  XOR2X1 U81 ( .A(A[0]), .B(n33), .Y(SUM[0]) );
  XOR2X1 U82 ( .A(CI), .B(B[0]), .Y(n33) );
endmodule


module alu ( a, b, alucont, result );
  input [7:0] a;
  input [7:0] b;
  input [2:0] alucont;
  output [7:0] result;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33;
  wire   [7:0] b2;
  wire   [7:0] sum;

  alu_DW01_add_0 add_1_root_add_19_2 ( .A(a), .B(b2), .CI(alucont[2]), .SUM(
        sum) );
  AND2X2 U57 ( .A(sum[7]), .B(alucont[2]), .Y(n27) );
  OR2X2 U58 ( .A(alucont[2]), .B(alucont[1]), .Y(n6) );
  OAI21X1 U59 ( .A(n1), .B(n2), .C(n3), .Y(result[7]) );
  AOI22X1 U60 ( .A(b[7]), .B(n4), .C(sum[7]), .D(n5), .Y(n3) );
  OAI21X1 U61 ( .A(n6), .B(n1), .C(n2), .Y(n4) );
  INVX1 U62 ( .A(a[7]), .Y(n1) );
  OAI21X1 U63 ( .A(n2), .B(n7), .C(n8), .Y(result[6]) );
  AOI22X1 U64 ( .A(b[6]), .B(n9), .C(sum[6]), .D(n5), .Y(n8) );
  OAI21X1 U65 ( .A(n6), .B(n7), .C(n2), .Y(n9) );
  INVX1 U66 ( .A(a[6]), .Y(n7) );
  OAI21X1 U67 ( .A(n2), .B(n10), .C(n11), .Y(result[5]) );
  AOI22X1 U68 ( .A(b[5]), .B(n12), .C(sum[5]), .D(n5), .Y(n11) );
  OAI21X1 U69 ( .A(n6), .B(n10), .C(n2), .Y(n12) );
  INVX1 U70 ( .A(a[5]), .Y(n10) );
  OAI21X1 U71 ( .A(n2), .B(n13), .C(n14), .Y(result[4]) );
  AOI22X1 U72 ( .A(b[4]), .B(n15), .C(sum[4]), .D(n5), .Y(n14) );
  OAI21X1 U73 ( .A(n6), .B(n13), .C(n2), .Y(n15) );
  INVX1 U74 ( .A(a[4]), .Y(n13) );
  OAI21X1 U75 ( .A(n2), .B(n16), .C(n17), .Y(result[3]) );
  AOI22X1 U76 ( .A(b[3]), .B(n18), .C(sum[3]), .D(n5), .Y(n17) );
  OAI21X1 U77 ( .A(n6), .B(n16), .C(n2), .Y(n18) );
  INVX1 U78 ( .A(a[3]), .Y(n16) );
  OAI21X1 U79 ( .A(n2), .B(n19), .C(n20), .Y(result[2]) );
  AOI22X1 U80 ( .A(b[2]), .B(n21), .C(sum[2]), .D(n5), .Y(n20) );
  OAI21X1 U81 ( .A(n6), .B(n19), .C(n2), .Y(n21) );
  INVX1 U82 ( .A(a[2]), .Y(n19) );
  OAI21X1 U83 ( .A(n2), .B(n22), .C(n23), .Y(result[1]) );
  AOI22X1 U84 ( .A(b[1]), .B(n24), .C(sum[1]), .D(n5), .Y(n23) );
  OAI21X1 U85 ( .A(n6), .B(n22), .C(n2), .Y(n24) );
  INVX1 U86 ( .A(a[1]), .Y(n22) );
  NAND2X1 U87 ( .A(n25), .B(n26), .Y(result[0]) );
  AOI22X1 U88 ( .A(n27), .B(n28), .C(b[0]), .D(n29), .Y(n26) );
  OAI21X1 U89 ( .A(n6), .B(n30), .C(n2), .Y(n29) );
  INVX1 U90 ( .A(n31), .Y(n2) );
  INVX1 U91 ( .A(a[0]), .Y(n30) );
  NOR2X1 U92 ( .A(n32), .B(n33), .Y(n28) );
  AOI22X1 U93 ( .A(sum[0]), .B(n5), .C(a[0]), .D(n31), .Y(n25) );
  NOR2X1 U94 ( .A(n32), .B(n6), .Y(n31) );
  INVX1 U95 ( .A(alucont[0]), .Y(n32) );
  NOR2X1 U96 ( .A(n33), .B(alucont[0]), .Y(n5) );
  INVX1 U97 ( .A(alucont[1]), .Y(n33) );
  XOR2X1 U98 ( .A(b[7]), .B(alucont[2]), .Y(b2[7]) );
  XOR2X1 U99 ( .A(b[6]), .B(alucont[2]), .Y(b2[6]) );
  XOR2X1 U100 ( .A(b[5]), .B(alucont[2]), .Y(b2[5]) );
  XOR2X1 U101 ( .A(b[4]), .B(alucont[2]), .Y(b2[4]) );
  XOR2X1 U102 ( .A(b[3]), .B(alucont[2]), .Y(b2[3]) );
  XOR2X1 U103 ( .A(b[2]), .B(alucont[2]), .Y(b2[2]) );
  XOR2X1 U104 ( .A(b[1]), .B(alucont[2]), .Y(b2[1]) );
  XOR2X1 U105 ( .A(b[0]), .B(alucont[2]), .Y(b2[0]) );
endmodule


module zerodetect ( a, y );
  input [7:0] a;
  output y;
  wire   n1, n2, n3, n4, n5, n6;

  NOR2X1 U8 ( .A(n1), .B(n2), .Y(y) );
  NAND2X1 U9 ( .A(n3), .B(n4), .Y(n2) );
  NOR2X1 U10 ( .A(a[3]), .B(a[2]), .Y(n4) );
  NOR2X1 U11 ( .A(a[1]), .B(a[0]), .Y(n3) );
  NAND2X1 U12 ( .A(n5), .B(n6), .Y(n1) );
  NOR2X1 U13 ( .A(a[7]), .B(a[6]), .Y(n6) );
  NOR2X1 U14 ( .A(a[5]), .B(a[4]), .Y(n5) );
endmodule


module flopen_0_test_1 ( clk, en, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, en, test_si, test_se;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;

  DFFPOSX1_SCAN q_reg_7_ ( .D(n1), .TI(q[6]), .TE(test_se), .CLK(clk), .Q(q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(n2), .TI(q[5]), .TE(test_se), .CLK(clk), .Q(q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(n3), .TI(q[4]), .TE(test_se), .CLK(clk), .Q(q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(n4), .TI(q[3]), .TE(test_se), .CLK(clk), .Q(q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(n5), .TI(q[2]), .TE(test_se), .CLK(clk), .Q(q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(n6), .TI(q[1]), .TE(test_se), .CLK(clk), .Q(q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(n7), .TI(q[0]), .TE(test_se), .CLK(clk), .Q(q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(n8), .TI(test_si), .TE(test_se), .CLK(clk), .Q(
        q[0]) );
  INVX1 U18 ( .A(n9), .Y(n8) );
  MUX2X1 U19 ( .B(q[0]), .A(d[0]), .S(en), .Y(n9) );
  INVX1 U20 ( .A(n10), .Y(n7) );
  MUX2X1 U21 ( .B(q[1]), .A(d[1]), .S(en), .Y(n10) );
  INVX1 U22 ( .A(n11), .Y(n6) );
  MUX2X1 U23 ( .B(q[2]), .A(d[2]), .S(en), .Y(n11) );
  INVX1 U24 ( .A(n12), .Y(n5) );
  MUX2X1 U25 ( .B(q[3]), .A(d[3]), .S(en), .Y(n12) );
  INVX1 U26 ( .A(n13), .Y(n4) );
  MUX2X1 U27 ( .B(q[4]), .A(d[4]), .S(en), .Y(n13) );
  INVX1 U28 ( .A(n14), .Y(n3) );
  MUX2X1 U29 ( .B(q[5]), .A(d[5]), .S(en), .Y(n14) );
  INVX1 U30 ( .A(n15), .Y(n2) );
  MUX2X1 U31 ( .B(q[6]), .A(d[6]), .S(en), .Y(n15) );
  INVX1 U32 ( .A(n16), .Y(n1) );
  MUX2X1 U33 ( .B(q[7]), .A(d[7]), .S(en), .Y(n16) );
endmodule


module flopen_3_test_1 ( clk, en, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, en, test_si, test_se;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18;

  DFFPOSX1_SCAN q_reg_7_ ( .D(n1), .TI(q[6]), .TE(test_se), .CLK(n9), .Q(q[7])
         );
  DFFPOSX1_SCAN q_reg_6_ ( .D(n2), .TI(q[5]), .TE(test_se), .CLK(n9), .Q(q[6])
         );
  DFFPOSX1_SCAN q_reg_5_ ( .D(n3), .TI(q[4]), .TE(test_se), .CLK(n9), .Q(q[5])
         );
  DFFPOSX1_SCAN q_reg_4_ ( .D(n4), .TI(q[3]), .TE(test_se), .CLK(n9), .Q(q[4])
         );
  DFFPOSX1_SCAN q_reg_3_ ( .D(n5), .TI(q[2]), .TE(test_se), .CLK(n9), .Q(q[3])
         );
  DFFPOSX1_SCAN q_reg_2_ ( .D(n6), .TI(q[1]), .TE(test_se), .CLK(n9), .Q(q[2])
         );
  DFFPOSX1_SCAN q_reg_1_ ( .D(n7), .TI(q[0]), .TE(test_se), .CLK(n9), .Q(q[1])
         );
  DFFPOSX1_SCAN q_reg_0_ ( .D(n8), .TI(test_si), .TE(test_se), .CLK(n9), .Q(
        q[0]) );
  INVX2 U18 ( .A(n10), .Y(n9) );
  INVX2 U19 ( .A(clk), .Y(n10) );
  INVX1 U20 ( .A(n11), .Y(n8) );
  MUX2X1 U21 ( .B(q[0]), .A(d[0]), .S(en), .Y(n11) );
  INVX1 U22 ( .A(n12), .Y(n7) );
  MUX2X1 U23 ( .B(q[1]), .A(d[1]), .S(en), .Y(n12) );
  INVX1 U24 ( .A(n13), .Y(n6) );
  MUX2X1 U25 ( .B(q[2]), .A(d[2]), .S(en), .Y(n13) );
  INVX1 U26 ( .A(n14), .Y(n5) );
  MUX2X1 U27 ( .B(q[3]), .A(d[3]), .S(en), .Y(n14) );
  INVX1 U28 ( .A(n15), .Y(n4) );
  MUX2X1 U29 ( .B(q[4]), .A(d[4]), .S(en), .Y(n15) );
  INVX1 U30 ( .A(n16), .Y(n3) );
  MUX2X1 U31 ( .B(q[5]), .A(d[5]), .S(en), .Y(n16) );
  INVX1 U32 ( .A(n17), .Y(n2) );
  MUX2X1 U33 ( .B(q[6]), .A(d[6]), .S(en), .Y(n17) );
  INVX1 U34 ( .A(n18), .Y(n1) );
  MUX2X1 U35 ( .B(q[7]), .A(d[7]), .S(en), .Y(n18) );
endmodule


module flopen_2_test_1 ( clk, en, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, en, test_si, test_se;
  wire   n37, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n35;

  DFFPOSX1_SCAN q_reg_7_ ( .D(n1), .TI(q[6]), .TE(test_se), .CLK(clk), .Q(q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(n2), .TI(q[5]), .TE(test_se), .CLK(clk), .Q(q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(n3), .TI(q[4]), .TE(test_se), .CLK(clk), .Q(q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(n4), .TI(q[3]), .TE(test_se), .CLK(clk), .Q(q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(n5), .TI(q[2]), .TE(test_se), .CLK(clk), .Q(q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(n6), .TI(q[1]), .TE(test_se), .CLK(clk), .Q(q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(n7), .TI(n37), .TE(test_se), .CLK(clk), .Q(q[1])
         );
  DFFPOSX1_SCAN q_reg_0_ ( .D(n8), .TI(test_si), .TE(test_se), .CLK(clk), .Q(
        n37) );
  INVX1 U18 ( .A(n9), .Y(n8) );
  MUX2X1 U19 ( .B(q[0]), .A(d[0]), .S(en), .Y(n9) );
  INVX1 U20 ( .A(n10), .Y(n7) );
  MUX2X1 U21 ( .B(q[1]), .A(d[1]), .S(en), .Y(n10) );
  INVX1 U22 ( .A(n11), .Y(n6) );
  MUX2X1 U23 ( .B(q[2]), .A(d[2]), .S(en), .Y(n11) );
  INVX1 U24 ( .A(n12), .Y(n5) );
  MUX2X1 U25 ( .B(q[3]), .A(d[3]), .S(en), .Y(n12) );
  INVX1 U26 ( .A(n13), .Y(n4) );
  MUX2X1 U27 ( .B(q[4]), .A(d[4]), .S(en), .Y(n13) );
  INVX1 U28 ( .A(n14), .Y(n3) );
  MUX2X1 U29 ( .B(q[5]), .A(d[5]), .S(en), .Y(n14) );
  INVX1 U30 ( .A(n15), .Y(n2) );
  MUX2X1 U31 ( .B(q[6]), .A(d[6]), .S(en), .Y(n15) );
  INVX1 U32 ( .A(n16), .Y(n1) );
  MUX2X1 U33 ( .B(q[7]), .A(d[7]), .S(en), .Y(n16) );
  INVX1 U50 ( .A(n37), .Y(n35) );
  INVX1 U51 ( .A(n35), .Y(q[0]) );
endmodule


module flopen_1_test_1 ( clk, en, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, en, test_si, test_se;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18;

  DFFPOSX1_SCAN q_reg_7_ ( .D(n1), .TI(q[6]), .TE(test_se), .CLK(n9), .Q(q[7])
         );
  DFFPOSX1_SCAN q_reg_6_ ( .D(n2), .TI(q[5]), .TE(test_se), .CLK(n9), .Q(q[6])
         );
  DFFPOSX1_SCAN q_reg_5_ ( .D(n3), .TI(q[4]), .TE(test_se), .CLK(n9), .Q(q[5])
         );
  DFFPOSX1_SCAN q_reg_4_ ( .D(n4), .TI(q[3]), .TE(test_se), .CLK(n9), .Q(q[4])
         );
  DFFPOSX1_SCAN q_reg_3_ ( .D(n5), .TI(q[2]), .TE(test_se), .CLK(n9), .Q(q[3])
         );
  DFFPOSX1_SCAN q_reg_2_ ( .D(n6), .TI(q[1]), .TE(test_se), .CLK(n9), .Q(q[2])
         );
  DFFPOSX1_SCAN q_reg_1_ ( .D(n7), .TI(q[0]), .TE(test_se), .CLK(n9), .Q(q[1])
         );
  DFFPOSX1_SCAN q_reg_0_ ( .D(n8), .TI(test_si), .TE(test_se), .CLK(n9), .Q(
        q[0]) );
  INVX2 U18 ( .A(n10), .Y(n9) );
  INVX2 U19 ( .A(clk), .Y(n10) );
  INVX1 U20 ( .A(n11), .Y(n8) );
  MUX2X1 U21 ( .B(q[0]), .A(d[0]), .S(en), .Y(n11) );
  INVX1 U22 ( .A(n12), .Y(n7) );
  MUX2X1 U23 ( .B(q[1]), .A(d[1]), .S(en), .Y(n12) );
  INVX1 U24 ( .A(n13), .Y(n6) );
  MUX2X1 U25 ( .B(q[2]), .A(d[2]), .S(en), .Y(n13) );
  INVX1 U26 ( .A(n14), .Y(n5) );
  MUX2X1 U27 ( .B(q[3]), .A(d[3]), .S(en), .Y(n14) );
  INVX1 U28 ( .A(n15), .Y(n4) );
  MUX2X1 U29 ( .B(q[4]), .A(d[4]), .S(en), .Y(n15) );
  INVX1 U30 ( .A(n16), .Y(n3) );
  MUX2X1 U31 ( .B(q[5]), .A(d[5]), .S(en), .Y(n16) );
  INVX1 U32 ( .A(n17), .Y(n2) );
  MUX2X1 U33 ( .B(q[6]), .A(d[6]), .S(en), .Y(n17) );
  INVX1 U34 ( .A(n18), .Y(n1) );
  MUX2X1 U35 ( .B(q[7]), .A(d[7]), .S(en), .Y(n18) );
endmodule


module flop_0_test_1 ( clk, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, test_si, test_se;
  wire   n1, n2;

  DFFPOSX1_SCAN q_reg_7_ ( .D(d[7]), .TI(q[6]), .TE(test_se), .CLK(n1), .Q(
        q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(d[6]), .TI(q[5]), .TE(test_se), .CLK(n1), .Q(
        q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(d[5]), .TI(q[4]), .TE(test_se), .CLK(n1), .Q(
        q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(d[4]), .TI(q[3]), .TE(test_se), .CLK(n1), .Q(
        q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(d[3]), .TI(q[2]), .TE(test_se), .CLK(n1), .Q(
        q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(d[2]), .TI(q[1]), .TE(test_se), .CLK(n1), .Q(
        q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(d[1]), .TI(q[0]), .TE(test_se), .CLK(n1), .Q(
        q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(d[0]), .TI(test_si), .TE(test_se), .CLK(n1), .Q(
        q[0]) );
  INVX2 U1 ( .A(n2), .Y(n1) );
  INVX2 U2 ( .A(clk), .Y(n2) );
endmodule


module flopenr_test_1 ( clk, reset, en, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, reset, en, test_si, test_se;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19;

  DFFPOSX1_SCAN q_reg_7_ ( .D(n1), .TI(q[6]), .TE(test_se), .CLK(clk), .Q(q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(n2), .TI(q[5]), .TE(test_se), .CLK(clk), .Q(q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(n3), .TI(q[4]), .TE(test_se), .CLK(clk), .Q(q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(n4), .TI(q[3]), .TE(test_se), .CLK(clk), .Q(q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(n5), .TI(q[2]), .TE(test_se), .CLK(clk), .Q(q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(n6), .TI(q[1]), .TE(test_se), .CLK(clk), .Q(q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(n7), .TI(q[0]), .TE(test_se), .CLK(clk), .Q(q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(n8), .TI(test_si), .TE(test_se), .CLK(clk), .Q(
        q[0]) );
  INVX1 U20 ( .A(n9), .Y(n8) );
  AOI22X1 U21 ( .A(q[0]), .B(n10), .C(d[0]), .D(n11), .Y(n9) );
  INVX1 U22 ( .A(n12), .Y(n7) );
  AOI22X1 U23 ( .A(q[1]), .B(n10), .C(d[1]), .D(n11), .Y(n12) );
  INVX1 U24 ( .A(n13), .Y(n6) );
  AOI22X1 U25 ( .A(q[2]), .B(n10), .C(d[2]), .D(n11), .Y(n13) );
  INVX1 U26 ( .A(n14), .Y(n5) );
  AOI22X1 U27 ( .A(q[3]), .B(n10), .C(d[3]), .D(n11), .Y(n14) );
  INVX1 U28 ( .A(n15), .Y(n4) );
  AOI22X1 U29 ( .A(q[4]), .B(n10), .C(d[4]), .D(n11), .Y(n15) );
  INVX1 U30 ( .A(n16), .Y(n3) );
  AOI22X1 U31 ( .A(q[5]), .B(n10), .C(d[5]), .D(n11), .Y(n16) );
  INVX1 U32 ( .A(n17), .Y(n2) );
  AOI22X1 U33 ( .A(q[6]), .B(n10), .C(d[6]), .D(n11), .Y(n17) );
  INVX1 U34 ( .A(n18), .Y(n1) );
  AOI22X1 U35 ( .A(q[7]), .B(n10), .C(d[7]), .D(n11), .Y(n18) );
  NOR2X1 U36 ( .A(n11), .B(reset), .Y(n10) );
  NOR2X1 U37 ( .A(n19), .B(reset), .Y(n11) );
  INVX1 U38 ( .A(en), .Y(n19) );
endmodule


module flop_1_test_1 ( clk, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, test_si, test_se;


  DFFPOSX1_SCAN q_reg_7_ ( .D(d[7]), .TI(q[6]), .TE(test_se), .CLK(clk), .Q(
        q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(d[6]), .TI(q[5]), .TE(test_se), .CLK(clk), .Q(
        q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(d[5]), .TI(q[4]), .TE(test_se), .CLK(clk), .Q(
        q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(d[4]), .TI(q[3]), .TE(test_se), .CLK(clk), .Q(
        q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(d[3]), .TI(q[2]), .TE(test_se), .CLK(clk), .Q(
        q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(d[2]), .TI(q[1]), .TE(test_se), .CLK(clk), .Q(
        q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(d[1]), .TI(q[0]), .TE(test_se), .CLK(clk), .Q(
        q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(d[0]), .TI(test_si), .TE(test_se), .CLK(clk), 
        .Q(q[0]) );
endmodule


module regfile_test_1 ( clk, regwrite, ra1, ra2, wa, wd, rd1, rd2, test_si, 
        test_so, test_se );
  input [2:0] ra1;
  input [2:0] ra2;
  input [2:0] wa;
  input [7:0] wd;
  output [7:0] rd1;
  output [7:0] rd2;
  input clk, regwrite, test_si, test_se;
  output test_so;
  wire   REGS_7__6_, REGS_7__5_, REGS_7__4_, REGS_7__3_, REGS_7__2_,
         REGS_7__1_, REGS_7__0_, REGS_6__7_, REGS_6__6_, REGS_6__5_,
         REGS_6__4_, REGS_6__3_, REGS_6__2_, REGS_6__1_, REGS_6__0_,
         REGS_5__7_, REGS_5__6_, REGS_5__5_, REGS_5__4_, REGS_5__3_,
         REGS_5__2_, REGS_5__1_, REGS_5__0_, REGS_4__7_, REGS_4__6_,
         REGS_4__5_, REGS_4__4_, REGS_4__3_, REGS_4__2_, REGS_4__1_,
         REGS_4__0_, REGS_3__7_, REGS_3__6_, REGS_3__5_, REGS_3__4_,
         REGS_3__3_, REGS_3__2_, REGS_3__1_, REGS_3__0_, REGS_2__7_,
         REGS_2__6_, REGS_2__5_, REGS_2__4_, REGS_2__3_, REGS_2__2_,
         REGS_2__1_, REGS_2__0_, REGS_1__7_, REGS_1__6_, REGS_1__5_,
         REGS_1__4_, REGS_1__3_, REGS_1__2_, REGS_1__1_, REGS_1__0_, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n25, n26, n27,
         n28, n29, n30, n31, n32, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n107, n108, n109, n110, n111, n112,
         n113, n114, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235;

  DFFPOSX1_SCAN REGS_reg_7__7_ ( .D(n138), .TI(REGS_7__6_), .TE(test_se), 
        .CLK(n5), .Q(test_so) );
  DFFPOSX1_SCAN REGS_reg_7__6_ ( .D(n137), .TI(REGS_7__5_), .TE(test_se), 
        .CLK(n8), .Q(REGS_7__6_) );
  DFFPOSX1_SCAN REGS_reg_7__5_ ( .D(n136), .TI(REGS_7__4_), .TE(test_se), 
        .CLK(n8), .Q(REGS_7__5_) );
  DFFPOSX1_SCAN REGS_reg_7__4_ ( .D(n135), .TI(REGS_7__3_), .TE(test_se), 
        .CLK(n7), .Q(REGS_7__4_) );
  DFFPOSX1_SCAN REGS_reg_7__3_ ( .D(n134), .TI(REGS_7__2_), .TE(test_se), 
        .CLK(n6), .Q(REGS_7__3_) );
  DFFPOSX1_SCAN REGS_reg_7__2_ ( .D(n133), .TI(REGS_7__1_), .TE(test_se), 
        .CLK(n6), .Q(REGS_7__2_) );
  DFFPOSX1_SCAN REGS_reg_7__1_ ( .D(n132), .TI(REGS_7__0_), .TE(test_se), 
        .CLK(n5), .Q(REGS_7__1_) );
  DFFPOSX1_SCAN REGS_reg_7__0_ ( .D(n131), .TI(REGS_6__7_), .TE(test_se), 
        .CLK(n9), .Q(REGS_7__0_) );
  DFFPOSX1_SCAN REGS_reg_6__7_ ( .D(n130), .TI(REGS_6__6_), .TE(test_se), 
        .CLK(n5), .Q(REGS_6__7_) );
  DFFPOSX1_SCAN REGS_reg_6__6_ ( .D(n129), .TI(REGS_6__5_), .TE(test_se), 
        .CLK(n8), .Q(REGS_6__6_) );
  DFFPOSX1_SCAN REGS_reg_6__5_ ( .D(n128), .TI(REGS_6__4_), .TE(test_se), 
        .CLK(n8), .Q(REGS_6__5_) );
  DFFPOSX1_SCAN REGS_reg_6__4_ ( .D(n127), .TI(REGS_6__3_), .TE(test_se), 
        .CLK(n7), .Q(REGS_6__4_) );
  DFFPOSX1_SCAN REGS_reg_6__3_ ( .D(n126), .TI(REGS_6__2_), .TE(test_se), 
        .CLK(n7), .Q(REGS_6__3_) );
  DFFPOSX1_SCAN REGS_reg_6__2_ ( .D(n125), .TI(REGS_6__1_), .TE(test_se), 
        .CLK(n6), .Q(REGS_6__2_) );
  DFFPOSX1_SCAN REGS_reg_6__1_ ( .D(n124), .TI(REGS_6__0_), .TE(test_se), 
        .CLK(n5), .Q(REGS_6__1_) );
  DFFPOSX1_SCAN REGS_reg_6__0_ ( .D(n123), .TI(REGS_5__7_), .TE(test_se), 
        .CLK(n9), .Q(REGS_6__0_) );
  DFFPOSX1_SCAN REGS_reg_5__7_ ( .D(n122), .TI(REGS_5__6_), .TE(test_se), 
        .CLK(n5), .Q(REGS_5__7_) );
  DFFPOSX1_SCAN REGS_reg_5__6_ ( .D(n121), .TI(REGS_5__5_), .TE(test_se), 
        .CLK(n8), .Q(REGS_5__6_) );
  DFFPOSX1_SCAN REGS_reg_5__5_ ( .D(n120), .TI(REGS_5__4_), .TE(test_se), 
        .CLK(n8), .Q(REGS_5__5_) );
  DFFPOSX1_SCAN REGS_reg_5__4_ ( .D(n119), .TI(REGS_5__3_), .TE(test_se), 
        .CLK(n7), .Q(REGS_5__4_) );
  DFFPOSX1_SCAN REGS_reg_5__3_ ( .D(n118), .TI(REGS_5__2_), .TE(test_se), 
        .CLK(n7), .Q(REGS_5__3_) );
  DFFPOSX1_SCAN REGS_reg_5__2_ ( .D(n117), .TI(REGS_5__1_), .TE(test_se), 
        .CLK(n6), .Q(REGS_5__2_) );
  DFFPOSX1_SCAN REGS_reg_5__1_ ( .D(n116), .TI(REGS_5__0_), .TE(test_se), 
        .CLK(n5), .Q(REGS_5__1_) );
  DFFPOSX1_SCAN REGS_reg_5__0_ ( .D(n115), .TI(REGS_4__7_), .TE(test_se), 
        .CLK(n9), .Q(REGS_5__0_) );
  DFFPOSX1_SCAN REGS_reg_4__7_ ( .D(n25), .TI(REGS_4__6_), .TE(test_se), .CLK(
        n5), .Q(REGS_4__7_) );
  DFFPOSX1_SCAN REGS_reg_4__6_ ( .D(n26), .TI(REGS_4__5_), .TE(test_se), .CLK(
        n9), .Q(REGS_4__6_) );
  DFFPOSX1_SCAN REGS_reg_4__5_ ( .D(n27), .TI(REGS_4__4_), .TE(test_se), .CLK(
        n8), .Q(REGS_4__5_) );
  DFFPOSX1_SCAN REGS_reg_4__4_ ( .D(n28), .TI(REGS_4__3_), .TE(test_se), .CLK(
        n7), .Q(REGS_4__4_) );
  DFFPOSX1_SCAN REGS_reg_4__3_ ( .D(n29), .TI(REGS_4__2_), .TE(test_se), .CLK(
        n7), .Q(REGS_4__3_) );
  DFFPOSX1_SCAN REGS_reg_4__2_ ( .D(n30), .TI(REGS_4__1_), .TE(test_se), .CLK(
        n6), .Q(REGS_4__2_) );
  DFFPOSX1_SCAN REGS_reg_4__1_ ( .D(n31), .TI(REGS_4__0_), .TE(test_se), .CLK(
        n6), .Q(REGS_4__1_) );
  DFFPOSX1_SCAN REGS_reg_4__0_ ( .D(n32), .TI(REGS_3__7_), .TE(test_se), .CLK(
        n9), .Q(REGS_4__0_) );
  DFFPOSX1_SCAN REGS_reg_3__7_ ( .D(n106), .TI(REGS_3__6_), .TE(test_se), 
        .CLK(n5), .Q(REGS_3__7_) );
  DFFPOSX1_SCAN REGS_reg_3__6_ ( .D(n105), .TI(REGS_3__5_), .TE(test_se), 
        .CLK(n8), .Q(REGS_3__6_) );
  DFFPOSX1_SCAN REGS_reg_3__5_ ( .D(n104), .TI(REGS_3__4_), .TE(test_se), 
        .CLK(n8), .Q(REGS_3__5_) );
  DFFPOSX1_SCAN REGS_reg_3__4_ ( .D(n103), .TI(REGS_3__3_), .TE(test_se), 
        .CLK(n7), .Q(REGS_3__4_) );
  DFFPOSX1_SCAN REGS_reg_3__3_ ( .D(n102), .TI(REGS_3__2_), .TE(test_se), 
        .CLK(n7), .Q(REGS_3__3_) );
  DFFPOSX1_SCAN REGS_reg_3__2_ ( .D(n101), .TI(REGS_3__1_), .TE(test_se), 
        .CLK(n6), .Q(REGS_3__2_) );
  DFFPOSX1_SCAN REGS_reg_3__1_ ( .D(n100), .TI(REGS_3__0_), .TE(test_se), 
        .CLK(n6), .Q(REGS_3__1_) );
  DFFPOSX1_SCAN REGS_reg_3__0_ ( .D(n99), .TI(REGS_2__7_), .TE(test_se), .CLK(
        n9), .Q(REGS_3__0_) );
  DFFPOSX1_SCAN REGS_reg_2__7_ ( .D(n98), .TI(REGS_2__6_), .TE(test_se), .CLK(
        n5), .Q(REGS_2__7_) );
  DFFPOSX1_SCAN REGS_reg_2__6_ ( .D(n97), .TI(REGS_2__5_), .TE(test_se), .CLK(
        n8), .Q(REGS_2__6_) );
  DFFPOSX1_SCAN REGS_reg_2__5_ ( .D(n96), .TI(REGS_2__4_), .TE(test_se), .CLK(
        n7), .Q(REGS_2__5_) );
  DFFPOSX1_SCAN REGS_reg_2__4_ ( .D(n95), .TI(REGS_2__3_), .TE(test_se), .CLK(
        n7), .Q(REGS_2__4_) );
  DFFPOSX1_SCAN REGS_reg_2__3_ ( .D(n94), .TI(REGS_2__2_), .TE(test_se), .CLK(
        n6), .Q(REGS_2__3_) );
  DFFPOSX1_SCAN REGS_reg_2__2_ ( .D(n93), .TI(REGS_2__1_), .TE(test_se), .CLK(
        n6), .Q(REGS_2__2_) );
  DFFPOSX1_SCAN REGS_reg_2__1_ ( .D(n92), .TI(REGS_2__0_), .TE(test_se), .CLK(
        n5), .Q(REGS_2__1_) );
  DFFPOSX1_SCAN REGS_reg_2__0_ ( .D(n91), .TI(REGS_1__7_), .TE(test_se), .CLK(
        n9), .Q(REGS_2__0_) );
  DFFPOSX1_SCAN REGS_reg_1__7_ ( .D(n90), .TI(REGS_1__6_), .TE(test_se), .CLK(
        n5), .Q(REGS_1__7_) );
  DFFPOSX1_SCAN REGS_reg_1__6_ ( .D(n89), .TI(REGS_1__5_), .TE(test_se), .CLK(
        n8), .Q(REGS_1__6_) );
  DFFPOSX1_SCAN REGS_reg_1__5_ ( .D(n88), .TI(REGS_1__4_), .TE(test_se), .CLK(
        n8), .Q(REGS_1__5_) );
  DFFPOSX1_SCAN REGS_reg_1__4_ ( .D(n87), .TI(REGS_1__3_), .TE(test_se), .CLK(
        n7), .Q(REGS_1__4_) );
  DFFPOSX1_SCAN REGS_reg_1__3_ ( .D(n86), .TI(REGS_1__2_), .TE(test_se), .CLK(
        n6), .Q(REGS_1__3_) );
  DFFPOSX1_SCAN REGS_reg_1__2_ ( .D(n85), .TI(REGS_1__1_), .TE(test_se), .CLK(
        n6), .Q(REGS_1__2_) );
  DFFPOSX1_SCAN REGS_reg_1__1_ ( .D(n84), .TI(REGS_1__0_), .TE(test_se), .CLK(
        n5), .Q(REGS_1__1_) );
  DFFPOSX1_SCAN REGS_reg_1__0_ ( .D(n83), .TI(test_si), .TE(test_se), .CLK(n9), 
        .Q(REGS_1__0_) );
  BUFX2 U250 ( .A(n16), .Y(n1) );
  BUFX2 U251 ( .A(n165), .Y(n2) );
  BUFX2 U252 ( .A(n18), .Y(n3) );
  BUFX2 U253 ( .A(n166), .Y(n4) );
  BUFX2 U254 ( .A(clk), .Y(n6) );
  BUFX2 U255 ( .A(clk), .Y(n7) );
  BUFX2 U256 ( .A(clk), .Y(n8) );
  BUFX2 U257 ( .A(clk), .Y(n5) );
  BUFX2 U258 ( .A(clk), .Y(n9) );
  MUX2X1 U259 ( .B(n10), .A(n11), .S(ra2[0]), .Y(rd2[7]) );
  NOR2X1 U260 ( .A(n12), .B(n13), .Y(n11) );
  OAI22X1 U261 ( .A(n14), .B(n15), .C(n1), .D(n17), .Y(n13) );
  OAI22X1 U262 ( .A(n3), .B(n19), .C(n20), .D(n21), .Y(n12) );
  AOI21X1 U263 ( .A(REGS_4__7_), .B(n22), .C(n23), .Y(n10) );
  OAI22X1 U264 ( .A(n1), .B(n24), .C(n3), .D(n33), .Y(n23) );
  MUX2X1 U265 ( .B(n34), .A(n35), .S(ra2[0]), .Y(rd2[6]) );
  NOR2X1 U266 ( .A(n36), .B(n37), .Y(n35) );
  OAI22X1 U267 ( .A(n14), .B(n38), .C(n1), .D(n39), .Y(n37) );
  OAI22X1 U268 ( .A(n3), .B(n40), .C(n20), .D(n41), .Y(n36) );
  AOI21X1 U269 ( .A(REGS_4__6_), .B(n22), .C(n42), .Y(n34) );
  OAI22X1 U270 ( .A(n1), .B(n43), .C(n3), .D(n44), .Y(n42) );
  MUX2X1 U271 ( .B(n45), .A(n46), .S(ra2[0]), .Y(rd2[5]) );
  NOR2X1 U272 ( .A(n47), .B(n48), .Y(n46) );
  OAI22X1 U273 ( .A(n14), .B(n49), .C(n1), .D(n50), .Y(n48) );
  OAI22X1 U274 ( .A(n3), .B(n51), .C(n20), .D(n52), .Y(n47) );
  AOI21X1 U275 ( .A(REGS_4__5_), .B(n22), .C(n53), .Y(n45) );
  OAI22X1 U276 ( .A(n1), .B(n54), .C(n3), .D(n55), .Y(n53) );
  MUX2X1 U277 ( .B(n56), .A(n57), .S(ra2[0]), .Y(rd2[4]) );
  NOR2X1 U278 ( .A(n58), .B(n59), .Y(n57) );
  OAI22X1 U279 ( .A(n14), .B(n60), .C(n1), .D(n61), .Y(n59) );
  OAI22X1 U280 ( .A(n3), .B(n62), .C(n20), .D(n63), .Y(n58) );
  AOI21X1 U281 ( .A(REGS_4__4_), .B(n22), .C(n64), .Y(n56) );
  OAI22X1 U282 ( .A(n1), .B(n65), .C(n3), .D(n66), .Y(n64) );
  MUX2X1 U283 ( .B(n67), .A(n68), .S(ra2[0]), .Y(rd2[3]) );
  NOR2X1 U284 ( .A(n69), .B(n70), .Y(n68) );
  OAI22X1 U285 ( .A(n14), .B(n71), .C(n1), .D(n72), .Y(n70) );
  OAI22X1 U286 ( .A(n3), .B(n73), .C(n20), .D(n74), .Y(n69) );
  AOI21X1 U287 ( .A(REGS_4__3_), .B(n22), .C(n75), .Y(n67) );
  OAI22X1 U288 ( .A(n1), .B(n76), .C(n3), .D(n77), .Y(n75) );
  MUX2X1 U289 ( .B(n78), .A(n79), .S(ra2[0]), .Y(rd2[2]) );
  NOR2X1 U290 ( .A(n80), .B(n81), .Y(n79) );
  OAI22X1 U291 ( .A(n14), .B(n82), .C(n1), .D(n107), .Y(n81) );
  OAI22X1 U292 ( .A(n3), .B(n108), .C(n20), .D(n109), .Y(n80) );
  AOI21X1 U293 ( .A(REGS_4__2_), .B(n22), .C(n110), .Y(n78) );
  OAI22X1 U294 ( .A(n1), .B(n111), .C(n3), .D(n112), .Y(n110) );
  MUX2X1 U295 ( .B(n113), .A(n114), .S(ra2[0]), .Y(rd2[1]) );
  NOR2X1 U296 ( .A(n139), .B(n140), .Y(n114) );
  OAI22X1 U297 ( .A(n14), .B(n141), .C(n1), .D(n142), .Y(n140) );
  OAI22X1 U298 ( .A(n3), .B(n143), .C(n20), .D(n144), .Y(n139) );
  AOI21X1 U299 ( .A(REGS_4__1_), .B(n22), .C(n145), .Y(n113) );
  OAI22X1 U300 ( .A(n1), .B(n146), .C(n3), .D(n147), .Y(n145) );
  MUX2X1 U301 ( .B(n148), .A(n149), .S(ra2[0]), .Y(rd2[0]) );
  NOR2X1 U302 ( .A(n150), .B(n151), .Y(n149) );
  OAI22X1 U303 ( .A(n14), .B(n152), .C(n1), .D(n153), .Y(n151) );
  INVX1 U304 ( .A(n22), .Y(n14) );
  OAI22X1 U305 ( .A(n3), .B(n154), .C(n20), .D(n155), .Y(n150) );
  OR2X1 U306 ( .A(ra2[2]), .B(ra2[1]), .Y(n20) );
  AOI21X1 U307 ( .A(REGS_4__0_), .B(n22), .C(n156), .Y(n148) );
  OAI22X1 U308 ( .A(n1), .B(n157), .C(n3), .D(n158), .Y(n156) );
  NAND2X1 U309 ( .A(ra2[1]), .B(n159), .Y(n18) );
  NAND2X1 U310 ( .A(ra2[2]), .B(ra2[1]), .Y(n16) );
  NOR2X1 U311 ( .A(n159), .B(ra2[1]), .Y(n22) );
  INVX1 U312 ( .A(ra2[2]), .Y(n159) );
  MUX2X1 U313 ( .B(n160), .A(n161), .S(ra1[0]), .Y(rd1[7]) );
  NOR2X1 U314 ( .A(n162), .B(n163), .Y(n161) );
  OAI22X1 U315 ( .A(n15), .B(n164), .C(n17), .D(n2), .Y(n163) );
  OAI22X1 U316 ( .A(n19), .B(n4), .C(n21), .D(n167), .Y(n162) );
  AOI21X1 U317 ( .A(n168), .B(REGS_4__7_), .C(n169), .Y(n160) );
  OAI22X1 U318 ( .A(n24), .B(n2), .C(n33), .D(n4), .Y(n169) );
  MUX2X1 U319 ( .B(n170), .A(n171), .S(ra1[0]), .Y(rd1[6]) );
  NOR2X1 U320 ( .A(n172), .B(n173), .Y(n171) );
  OAI22X1 U321 ( .A(n38), .B(n164), .C(n39), .D(n2), .Y(n173) );
  OAI22X1 U322 ( .A(n40), .B(n4), .C(n41), .D(n167), .Y(n172) );
  AOI21X1 U323 ( .A(n168), .B(REGS_4__6_), .C(n174), .Y(n170) );
  OAI22X1 U324 ( .A(n43), .B(n2), .C(n44), .D(n4), .Y(n174) );
  MUX2X1 U325 ( .B(n175), .A(n176), .S(ra1[0]), .Y(rd1[5]) );
  NOR2X1 U326 ( .A(n177), .B(n178), .Y(n176) );
  OAI22X1 U327 ( .A(n49), .B(n164), .C(n50), .D(n2), .Y(n178) );
  OAI22X1 U328 ( .A(n51), .B(n4), .C(n52), .D(n167), .Y(n177) );
  AOI21X1 U329 ( .A(n168), .B(REGS_4__5_), .C(n179), .Y(n175) );
  OAI22X1 U330 ( .A(n54), .B(n2), .C(n55), .D(n4), .Y(n179) );
  MUX2X1 U331 ( .B(n180), .A(n181), .S(ra1[0]), .Y(rd1[4]) );
  NOR2X1 U332 ( .A(n182), .B(n183), .Y(n181) );
  OAI22X1 U333 ( .A(n60), .B(n164), .C(n61), .D(n2), .Y(n183) );
  OAI22X1 U334 ( .A(n62), .B(n4), .C(n63), .D(n167), .Y(n182) );
  AOI21X1 U335 ( .A(n168), .B(REGS_4__4_), .C(n184), .Y(n180) );
  OAI22X1 U336 ( .A(n65), .B(n2), .C(n66), .D(n4), .Y(n184) );
  MUX2X1 U337 ( .B(n185), .A(n186), .S(ra1[0]), .Y(rd1[3]) );
  NOR2X1 U338 ( .A(n187), .B(n188), .Y(n186) );
  OAI22X1 U339 ( .A(n71), .B(n164), .C(n72), .D(n2), .Y(n188) );
  OAI22X1 U340 ( .A(n73), .B(n4), .C(n74), .D(n167), .Y(n187) );
  AOI21X1 U341 ( .A(n168), .B(REGS_4__3_), .C(n189), .Y(n185) );
  OAI22X1 U342 ( .A(n76), .B(n2), .C(n77), .D(n4), .Y(n189) );
  MUX2X1 U343 ( .B(n190), .A(n191), .S(ra1[0]), .Y(rd1[2]) );
  NOR2X1 U344 ( .A(n192), .B(n193), .Y(n191) );
  OAI22X1 U345 ( .A(n82), .B(n164), .C(n107), .D(n2), .Y(n193) );
  OAI22X1 U346 ( .A(n108), .B(n4), .C(n109), .D(n167), .Y(n192) );
  AOI21X1 U347 ( .A(n168), .B(REGS_4__2_), .C(n194), .Y(n190) );
  OAI22X1 U348 ( .A(n111), .B(n2), .C(n112), .D(n4), .Y(n194) );
  MUX2X1 U349 ( .B(n195), .A(n196), .S(ra1[0]), .Y(rd1[1]) );
  NOR2X1 U350 ( .A(n197), .B(n198), .Y(n196) );
  OAI22X1 U351 ( .A(n141), .B(n164), .C(n142), .D(n2), .Y(n198) );
  OAI22X1 U352 ( .A(n143), .B(n4), .C(n144), .D(n167), .Y(n197) );
  AOI21X1 U353 ( .A(n168), .B(REGS_4__1_), .C(n199), .Y(n195) );
  OAI22X1 U354 ( .A(n146), .B(n2), .C(n147), .D(n4), .Y(n199) );
  MUX2X1 U355 ( .B(n200), .A(n201), .S(ra1[0]), .Y(rd1[0]) );
  NOR2X1 U356 ( .A(n202), .B(n203), .Y(n201) );
  OAI22X1 U357 ( .A(n152), .B(n164), .C(n153), .D(n2), .Y(n203) );
  INVX1 U358 ( .A(n168), .Y(n164) );
  OAI22X1 U359 ( .A(n154), .B(n4), .C(n155), .D(n167), .Y(n202) );
  OR2X1 U360 ( .A(ra1[2]), .B(ra1[1]), .Y(n167) );
  AOI21X1 U361 ( .A(n168), .B(REGS_4__0_), .C(n204), .Y(n200) );
  OAI22X1 U362 ( .A(n157), .B(n2), .C(n158), .D(n4), .Y(n204) );
  NAND2X1 U363 ( .A(ra1[1]), .B(n205), .Y(n166) );
  NAND2X1 U364 ( .A(ra1[2]), .B(ra1[1]), .Y(n165) );
  NOR2X1 U365 ( .A(n205), .B(ra1[1]), .Y(n168) );
  INVX1 U366 ( .A(ra1[2]), .Y(n205) );
  MUX2X1 U367 ( .B(n206), .A(n154), .S(n207), .Y(n99) );
  INVX1 U368 ( .A(REGS_3__0_), .Y(n154) );
  MUX2X1 U369 ( .B(n33), .A(n208), .S(n209), .Y(n98) );
  INVX1 U370 ( .A(REGS_2__7_), .Y(n33) );
  MUX2X1 U371 ( .B(n44), .A(n210), .S(n209), .Y(n97) );
  INVX1 U372 ( .A(REGS_2__6_), .Y(n44) );
  MUX2X1 U373 ( .B(n55), .A(n211), .S(n209), .Y(n96) );
  INVX1 U374 ( .A(REGS_2__5_), .Y(n55) );
  MUX2X1 U375 ( .B(n66), .A(n212), .S(n209), .Y(n95) );
  INVX1 U376 ( .A(REGS_2__4_), .Y(n66) );
  MUX2X1 U377 ( .B(n77), .A(n213), .S(n209), .Y(n94) );
  INVX1 U378 ( .A(REGS_2__3_), .Y(n77) );
  MUX2X1 U379 ( .B(n112), .A(n214), .S(n209), .Y(n93) );
  INVX1 U380 ( .A(REGS_2__2_), .Y(n112) );
  MUX2X1 U381 ( .B(n147), .A(n215), .S(n209), .Y(n92) );
  INVX1 U382 ( .A(REGS_2__1_), .Y(n147) );
  MUX2X1 U383 ( .B(n158), .A(n206), .S(n209), .Y(n91) );
  AND2X1 U384 ( .A(n216), .B(n217), .Y(n209) );
  INVX1 U385 ( .A(REGS_2__0_), .Y(n158) );
  MUX2X1 U386 ( .B(n21), .A(n208), .S(n218), .Y(n90) );
  INVX1 U387 ( .A(REGS_1__7_), .Y(n21) );
  MUX2X1 U388 ( .B(n41), .A(n210), .S(n218), .Y(n89) );
  INVX1 U389 ( .A(REGS_1__6_), .Y(n41) );
  MUX2X1 U390 ( .B(n52), .A(n211), .S(n218), .Y(n88) );
  INVX1 U391 ( .A(REGS_1__5_), .Y(n52) );
  MUX2X1 U392 ( .B(n63), .A(n212), .S(n218), .Y(n87) );
  INVX1 U393 ( .A(REGS_1__4_), .Y(n63) );
  MUX2X1 U394 ( .B(n74), .A(n213), .S(n218), .Y(n86) );
  INVX1 U395 ( .A(REGS_1__3_), .Y(n74) );
  MUX2X1 U396 ( .B(n109), .A(n214), .S(n218), .Y(n85) );
  INVX1 U397 ( .A(REGS_1__2_), .Y(n109) );
  MUX2X1 U398 ( .B(n144), .A(n215), .S(n218), .Y(n84) );
  INVX1 U399 ( .A(REGS_1__1_), .Y(n144) );
  MUX2X1 U400 ( .B(n155), .A(n206), .S(n218), .Y(n83) );
  AND2X1 U401 ( .A(n216), .B(n219), .Y(n218) );
  INVX1 U402 ( .A(REGS_1__0_), .Y(n155) );
  INVX1 U403 ( .A(n220), .Y(n32) );
  MUX2X1 U404 ( .B(wd[0]), .A(REGS_4__0_), .S(n221), .Y(n220) );
  INVX1 U405 ( .A(n222), .Y(n31) );
  MUX2X1 U406 ( .B(wd[1]), .A(REGS_4__1_), .S(n221), .Y(n222) );
  INVX1 U407 ( .A(n223), .Y(n30) );
  MUX2X1 U408 ( .B(wd[2]), .A(REGS_4__2_), .S(n221), .Y(n223) );
  INVX1 U409 ( .A(n224), .Y(n29) );
  MUX2X1 U410 ( .B(wd[3]), .A(REGS_4__3_), .S(n221), .Y(n224) );
  INVX1 U411 ( .A(n225), .Y(n28) );
  MUX2X1 U412 ( .B(wd[4]), .A(REGS_4__4_), .S(n221), .Y(n225) );
  INVX1 U413 ( .A(n226), .Y(n27) );
  MUX2X1 U414 ( .B(wd[5]), .A(REGS_4__5_), .S(n221), .Y(n226) );
  INVX1 U415 ( .A(n227), .Y(n26) );
  MUX2X1 U416 ( .B(wd[6]), .A(REGS_4__6_), .S(n221), .Y(n227) );
  INVX1 U417 ( .A(n228), .Y(n25) );
  MUX2X1 U418 ( .B(wd[7]), .A(REGS_4__7_), .S(n221), .Y(n228) );
  NAND3X1 U419 ( .A(n217), .B(n219), .C(n229), .Y(n221) );
  MUX2X1 U420 ( .B(n208), .A(n17), .S(n230), .Y(n138) );
  INVX1 U421 ( .A(test_so), .Y(n17) );
  MUX2X1 U422 ( .B(n210), .A(n39), .S(n230), .Y(n137) );
  INVX1 U423 ( .A(REGS_7__6_), .Y(n39) );
  MUX2X1 U424 ( .B(n211), .A(n50), .S(n230), .Y(n136) );
  INVX1 U425 ( .A(REGS_7__5_), .Y(n50) );
  MUX2X1 U426 ( .B(n212), .A(n61), .S(n230), .Y(n135) );
  INVX1 U427 ( .A(REGS_7__4_), .Y(n61) );
  MUX2X1 U428 ( .B(n213), .A(n72), .S(n230), .Y(n134) );
  INVX1 U429 ( .A(REGS_7__3_), .Y(n72) );
  MUX2X1 U430 ( .B(n214), .A(n107), .S(n230), .Y(n133) );
  INVX1 U431 ( .A(REGS_7__2_), .Y(n107) );
  MUX2X1 U432 ( .B(n215), .A(n142), .S(n230), .Y(n132) );
  INVX1 U433 ( .A(REGS_7__1_), .Y(n142) );
  MUX2X1 U434 ( .B(n206), .A(n153), .S(n230), .Y(n131) );
  NAND3X1 U435 ( .A(wa[1]), .B(wa[0]), .C(n229), .Y(n230) );
  INVX1 U436 ( .A(REGS_7__0_), .Y(n153) );
  MUX2X1 U437 ( .B(n208), .A(n24), .S(n231), .Y(n130) );
  INVX1 U438 ( .A(REGS_6__7_), .Y(n24) );
  MUX2X1 U439 ( .B(n210), .A(n43), .S(n231), .Y(n129) );
  INVX1 U440 ( .A(REGS_6__6_), .Y(n43) );
  MUX2X1 U441 ( .B(n211), .A(n54), .S(n231), .Y(n128) );
  INVX1 U442 ( .A(REGS_6__5_), .Y(n54) );
  MUX2X1 U443 ( .B(n212), .A(n65), .S(n231), .Y(n127) );
  INVX1 U444 ( .A(REGS_6__4_), .Y(n65) );
  MUX2X1 U445 ( .B(n213), .A(n76), .S(n231), .Y(n126) );
  INVX1 U446 ( .A(REGS_6__3_), .Y(n76) );
  MUX2X1 U447 ( .B(n214), .A(n111), .S(n231), .Y(n125) );
  INVX1 U448 ( .A(REGS_6__2_), .Y(n111) );
  MUX2X1 U449 ( .B(n215), .A(n146), .S(n231), .Y(n124) );
  INVX1 U450 ( .A(REGS_6__1_), .Y(n146) );
  MUX2X1 U451 ( .B(n206), .A(n157), .S(n231), .Y(n123) );
  NAND3X1 U452 ( .A(wa[1]), .B(n217), .C(n229), .Y(n231) );
  INVX1 U453 ( .A(wa[0]), .Y(n217) );
  INVX1 U454 ( .A(REGS_6__0_), .Y(n157) );
  MUX2X1 U455 ( .B(n208), .A(n15), .S(n232), .Y(n122) );
  INVX1 U456 ( .A(REGS_5__7_), .Y(n15) );
  MUX2X1 U457 ( .B(n210), .A(n38), .S(n232), .Y(n121) );
  INVX1 U458 ( .A(REGS_5__6_), .Y(n38) );
  MUX2X1 U459 ( .B(n211), .A(n49), .S(n232), .Y(n120) );
  INVX1 U460 ( .A(REGS_5__5_), .Y(n49) );
  MUX2X1 U461 ( .B(n212), .A(n60), .S(n232), .Y(n119) );
  INVX1 U462 ( .A(REGS_5__4_), .Y(n60) );
  MUX2X1 U463 ( .B(n213), .A(n71), .S(n232), .Y(n118) );
  INVX1 U464 ( .A(REGS_5__3_), .Y(n71) );
  MUX2X1 U465 ( .B(n214), .A(n82), .S(n232), .Y(n117) );
  INVX1 U466 ( .A(REGS_5__2_), .Y(n82) );
  MUX2X1 U467 ( .B(n215), .A(n141), .S(n232), .Y(n116) );
  INVX1 U468 ( .A(REGS_5__1_), .Y(n141) );
  MUX2X1 U469 ( .B(n206), .A(n152), .S(n232), .Y(n115) );
  NAND3X1 U470 ( .A(wa[0]), .B(n219), .C(n229), .Y(n232) );
  NOR2X1 U471 ( .A(n233), .B(n234), .Y(n229) );
  INVX1 U472 ( .A(REGS_5__0_), .Y(n152) );
  INVX1 U473 ( .A(wd[0]), .Y(n206) );
  MUX2X1 U474 ( .B(n208), .A(n19), .S(n207), .Y(n106) );
  INVX1 U475 ( .A(REGS_3__7_), .Y(n19) );
  INVX1 U476 ( .A(wd[7]), .Y(n208) );
  MUX2X1 U477 ( .B(n210), .A(n40), .S(n207), .Y(n105) );
  INVX1 U478 ( .A(REGS_3__6_), .Y(n40) );
  INVX1 U479 ( .A(wd[6]), .Y(n210) );
  MUX2X1 U480 ( .B(n211), .A(n51), .S(n207), .Y(n104) );
  INVX1 U481 ( .A(REGS_3__5_), .Y(n51) );
  INVX1 U482 ( .A(wd[5]), .Y(n211) );
  MUX2X1 U483 ( .B(n212), .A(n62), .S(n207), .Y(n103) );
  INVX1 U484 ( .A(REGS_3__4_), .Y(n62) );
  INVX1 U485 ( .A(wd[4]), .Y(n212) );
  MUX2X1 U486 ( .B(n213), .A(n73), .S(n207), .Y(n102) );
  INVX1 U487 ( .A(REGS_3__3_), .Y(n73) );
  INVX1 U488 ( .A(wd[3]), .Y(n213) );
  MUX2X1 U489 ( .B(n214), .A(n108), .S(n207), .Y(n101) );
  INVX1 U490 ( .A(REGS_3__2_), .Y(n108) );
  INVX1 U491 ( .A(wd[2]), .Y(n214) );
  MUX2X1 U492 ( .B(n215), .A(n143), .S(n207), .Y(n100) );
  NAND3X1 U493 ( .A(wa[0]), .B(n216), .C(wa[1]), .Y(n207) );
  NOR2X1 U494 ( .A(n234), .B(wa[2]), .Y(n216) );
  OAI21X1 U495 ( .A(wa[0]), .B(n235), .C(regwrite), .Y(n234) );
  NAND2X1 U496 ( .A(n219), .B(n233), .Y(n235) );
  INVX1 U497 ( .A(wa[2]), .Y(n233) );
  INVX1 U498 ( .A(wa[1]), .Y(n219) );
  INVX1 U499 ( .A(REGS_3__1_), .Y(n143) );
  INVX1 U500 ( .A(wd[1]), .Y(n215) );
endmodule


module flop_2_test_1 ( clk, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, test_si, test_se;
  wire   n1, n2;

  DFFPOSX1_SCAN q_reg_7_ ( .D(d[7]), .TI(q[6]), .TE(test_se), .CLK(n1), .Q(
        q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(d[6]), .TI(q[5]), .TE(test_se), .CLK(n1), .Q(
        q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(d[5]), .TI(q[4]), .TE(test_se), .CLK(n1), .Q(
        q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(d[4]), .TI(q[3]), .TE(test_se), .CLK(n1), .Q(
        q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(d[3]), .TI(q[2]), .TE(test_se), .CLK(n1), .Q(
        q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(d[2]), .TI(q[1]), .TE(test_se), .CLK(n1), .Q(
        q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(d[1]), .TI(q[0]), .TE(test_se), .CLK(n1), .Q(
        q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(d[0]), .TI(test_si), .TE(test_se), .CLK(n1), .Q(
        q[0]) );
  INVX2 U1 ( .A(n2), .Y(n1) );
  INVX2 U2 ( .A(clk), .Y(n2) );
endmodule


module flop_3_test_1 ( clk, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, test_si, test_se;


  DFFPOSX1_SCAN q_reg_7_ ( .D(d[7]), .TI(q[6]), .TE(test_se), .CLK(clk), .Q(
        q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(d[6]), .TI(q[5]), .TE(test_se), .CLK(clk), .Q(
        q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(d[5]), .TI(q[4]), .TE(test_se), .CLK(clk), .Q(
        q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(d[4]), .TI(q[3]), .TE(test_se), .CLK(clk), .Q(
        q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(d[3]), .TI(q[2]), .TE(test_se), .CLK(clk), .Q(
        q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(d[2]), .TI(q[1]), .TE(test_se), .CLK(clk), .Q(
        q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(d[1]), .TI(q[0]), .TE(test_se), .CLK(clk), .Q(
        q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(d[0]), .TI(test_si), .TE(test_se), .CLK(clk), 
        .Q(q[0]) );
endmodule


module datapath_test_1 ( clk, reset, memdata, alusrca, memtoreg, iord, pcen, 
        regwrite, regdst, pcsource, alusrcb, irwrite, alucont, zero, instr, 
        adr, writedata, test_si, test_se );
  input [7:0] memdata;
  input [1:0] pcsource;
  input [1:0] alusrcb;
  input [3:0] irwrite;
  input [2:0] alucont;
  output [31:0] instr;
  output [7:0] adr;
  output [7:0] writedata;
  input clk, reset, alusrca, memtoreg, iord, pcen, regwrite, regdst, test_si,
         test_se;
  output zero;
  wire   n1, n2, n3, n4, n6;
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
  flopen_0_test_1 ir0 ( .clk(n1), .en(irwrite[0]), .d(memdata), .q(instr[7:0]), 
        .test_si(a[7]), .test_se(test_se) );
  flopen_3_test_1 ir1 ( .clk(n1), .en(irwrite[1]), .d(memdata), .q(instr[15:8]), .test_si(instr[7]), .test_se(test_se) );
  flopen_2_test_1 ir2 ( .clk(n2), .en(irwrite[2]), .d(memdata), .q(
        instr[23:16]), .test_si(instr[15]), .test_se(test_se) );
  flopen_1_test_1 ir3 ( .clk(n2), .en(irwrite[3]), .d(memdata), .q(
        instr[31:24]), .test_si(instr[23]), .test_se(test_se) );
  flopenr_test_1 pcreg ( .clk(n3), .reset(reset), .en(pcen), .d(nextpc), .q(pc), .test_si(md[7]), .test_se(test_se) );
  flop_0_test_1 mdr ( .clk(n3), .d(memdata), .q(md), .test_si(instr[31]), 
        .test_se(test_se) );
  flop_3_test_1 areg ( .clk(n4), .d(rd1), .q(a), .test_si(test_si), .test_se(
        test_se) );
  flop_2_test_1 wrd ( .clk(n4), .d(rd2), .q(writedata), .test_si(n6), 
        .test_se(test_se) );
  flop_1_test_1 res ( .clk(clk), .d(aluresult), .q(aluout), .test_si(pc[7]), 
        .test_se(test_se) );
  mux2_0 adrmux ( .d0(pc), .d1(aluout), .s(iord), .y(adr) );
  mux2_2 src1mux ( .d0(pc), .d1(a), .s(alusrca), .y(src1) );
  mux4_0 src2mux ( .d0(rd2), .d1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b1}), .d2(instr[7:0]), .d3({instr[5:0], 1'b0, 1'b0}), .s(alusrcb), 
        .y(src2) );
  mux4_1 pcmux ( .d0(aluresult), .d1(aluout), .d2({instr[5:0], 1'b0, 1'b0}), 
        .d3({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s(pcsource), 
        .y(nextpc) );
  mux2_1 wdmux ( .d0(aluout), .d1(md), .s(memtoreg), .y(wd) );
  regfile_test_1 rf ( .clk(n1), .regwrite(regwrite), .ra1(instr[23:21]), .ra2(
        instr[18:16]), .wa(wa), .wd(wd), .rd1(rd1), .rd2(rd2), .test_si(
        aluout[7]), .test_so(n6), .test_se(test_se) );
  alu main_alu ( .a(src1), .b(src2), .alucont(alucont), .result(aluresult) );
  zerodetect zd ( .a(aluresult), .y(zero) );
  BUFX2 U1 ( .A(clk), .Y(n1) );
  BUFX2 U2 ( .A(clk), .Y(n4) );
  BUFX2 U3 ( .A(clk), .Y(n3) );
  BUFX2 U4 ( .A(clk), .Y(n2) );
endmodule


module mips ( clk, reset, memdata, memread, memwrite, adr, writedata, test_si, 
        test_so, test_se );
  input [7:0] memdata;
  output [7:0] adr;
  output [7:0] writedata;
  input clk, reset, test_si, test_se;
  output memread, memwrite, test_so;
  wire   zero, alusrca, memtoreg, iord, pcen, regwrite, regdst,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20;
  wire   [31:0] instr;
  wire   [1:0] pcsource;
  wire   [1:0] alusrcb;
  wire   [1:0] aluop;
  wire   [3:0] irwrite;
  wire   [2:0] alucont;
  assign test_so = writedata[7];

  controller cont ( .clk(clk), .reset(reset), .op(instr[31:26]), .zero(zero), 
        .memread(memread), .memwrite(memwrite), .alusrca(alusrca), .memtoreg(
        memtoreg), .iord(iord), .pcen(pcen), .regwrite(regwrite), .regdst(
        regdst), .pcsource(pcsource), .alusrcb(alusrcb), .aluop(aluop), 
        .irwrite(irwrite) );
  alucontrol ac ( .aluop(aluop), .funct(instr[5:0]), .alucont(alucont) );
  datapath_test_1 dp ( .clk(clk), .reset(reset), .memdata(memdata), .alusrca(
        alusrca), .memtoreg(memtoreg), .iord(iord), .pcen(pcen), .regwrite(
        regwrite), .regdst(regdst), .pcsource(pcsource), .alusrcb(alusrcb), 
        .irwrite(irwrite), .alucont(alucont), .zero(zero), .instr({
        instr[31:26], SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, 
        SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, 
        SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, 
        SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, 
        SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, instr[5:0]}), .adr(
        adr), .writedata(writedata), .test_si(test_si), .test_se(test_se) );
endmodule


/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sun May 10 13:34:03 2026
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
  wire   n4, n7, \pcsource[0] , n12, n13, n14, n15, n18, n20, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75;
  wire   [3:0] state;
  wire   [3:0] nextstate;
  assign aluop[0] = \pcsource[0] ;
  assign pcsource[0] = \pcsource[0] ;

  DFFSR \state_reg[0]  ( .D(nextstate[0]), .CLK(clk), .R(n4), .S(1'b1), .Q(
        state[0]) );
  DFFSR \state_reg[3]  ( .D(nextstate[3]), .CLK(clk), .R(n4), .S(1'b1), .Q(
        state[3]) );
  DFFSR \state_reg[1]  ( .D(nextstate[1]), .CLK(clk), .R(n4), .S(1'b1), .Q(
        state[1]) );
  DFFSR \state_reg[2]  ( .D(nextstate[2]), .CLK(clk), .R(n4), .S(1'b1), .Q(
        state[2]) );
  INVX1 U6 ( .A(reset), .Y(n4) );
  AND2X2 U8 ( .A(n74), .B(state[2]), .Y(n67) );
  INVX2 U9 ( .A(n62), .Y(pcsource[1]) );
  INVX2 U10 ( .A(n54), .Y(n7) );
  INVX2 U11 ( .A(n64), .Y(\pcsource[0] ) );
  INVX2 U12 ( .A(n36), .Y(aluop[1]) );
  INVX2 U13 ( .A(n66), .Y(memwrite) );
  INVX2 U14 ( .A(n32), .Y(regdst) );
  INVX2 U15 ( .A(n44), .Y(n12) );
  INVX2 U16 ( .A(n51), .Y(n13) );
  INVX2 U17 ( .A(n61), .Y(n14) );
  INVX2 U18 ( .A(n41), .Y(n15) );
  INVX2 U19 ( .A(n73), .Y(alusrcb[1]) );
  INVX2 U20 ( .A(n33), .Y(memtoreg) );
  INVX2 U21 ( .A(state[3]), .Y(n18) );
  INVX2 U22 ( .A(n70), .Y(irwrite[0]) );
  INVX2 U23 ( .A(n69), .Y(n20) );
  INVX2 U24 ( .A(n65), .Y(irwrite[1]) );
  INVX2 U25 ( .A(n72), .Y(irwrite[2]) );
  INVX2 U26 ( .A(n43), .Y(irwrite[3]) );
  INVX2 U27 ( .A(n57), .Y(n24) );
  INVX2 U28 ( .A(n74), .Y(n25) );
  INVX2 U29 ( .A(n75), .Y(n26) );
  INVX2 U30 ( .A(n38), .Y(n27) );
  INVX2 U31 ( .A(op[5]), .Y(n28) );
  INVX2 U32 ( .A(n60), .Y(n29) );
  INVX2 U33 ( .A(op[3]), .Y(n30) );
  INVX2 U34 ( .A(op[1]), .Y(n31) );
  NAND2X1 U35 ( .A(n32), .B(n33), .Y(regwrite) );
  NAND3X1 U36 ( .A(n74), .B(n26), .C(n34), .Y(n32) );
  NAND2X1 U37 ( .A(n35), .B(n20), .Y(pcen) );
  AOI21X1 U38 ( .A(zero), .B(\pcsource[0] ), .C(pcsource[1]), .Y(n35) );
  NAND3X1 U39 ( .A(n13), .B(n36), .C(n37), .Y(nextstate[3]) );
  AOI22X1 U40 ( .A(n12), .B(n28), .C(n15), .D(n38), .Y(n37) );
  OR2X1 U41 ( .A(n39), .B(n40), .Y(nextstate[2]) );
  OAI21X1 U42 ( .A(n41), .B(n38), .C(n7), .Y(n40) );
  OAI21X1 U43 ( .A(n31), .B(n42), .C(n43), .Y(n39) );
  NAND2X1 U44 ( .A(n12), .B(n28), .Y(n42) );
  NAND3X1 U45 ( .A(n45), .B(n46), .C(n47), .Y(nextstate[1]) );
  AOI22X1 U46 ( .A(n48), .B(n75), .C(n27), .D(n15), .Y(n47) );
  NAND3X1 U47 ( .A(n49), .B(n31), .C(n50), .Y(n38) );
  NOR2X1 U48 ( .A(n29), .B(n28), .Y(n50) );
  NOR2X1 U49 ( .A(op[3]), .B(op[2]), .Y(n49) );
  NOR2X1 U50 ( .A(state[2]), .B(n74), .Y(n48) );
  NOR2X1 U51 ( .A(n51), .B(irwrite[2]), .Y(n45) );
  OR2X1 U52 ( .A(n52), .B(n53), .Y(nextstate[0]) );
  OAI21X1 U53 ( .A(n75), .B(n24), .C(n7), .Y(n53) );
  OAI21X1 U54 ( .A(n28), .B(n55), .C(n46), .Y(n54) );
  NAND2X1 U55 ( .A(n56), .B(n31), .Y(n55) );
  OAI21X1 U56 ( .A(op[1]), .B(n44), .C(n13), .Y(n52) );
  NOR2X1 U57 ( .A(n58), .B(n59), .Y(n51) );
  NAND3X1 U58 ( .A(n60), .B(n14), .C(op[2]), .Y(n59) );
  NAND3X1 U59 ( .A(n30), .B(n28), .C(n31), .Y(n58) );
  NAND2X1 U60 ( .A(n56), .B(n30), .Y(n44) );
  NOR3X1 U61 ( .A(n61), .B(op[2]), .C(n29), .Y(n56) );
  NOR2X1 U62 ( .A(op[4]), .B(op[0]), .Y(n60) );
  NAND3X1 U63 ( .A(state[3]), .B(state[2]), .C(n63), .Y(n62) );
  NAND3X1 U64 ( .A(n75), .B(n18), .C(n67), .Y(n33) );
  NAND2X1 U65 ( .A(n20), .B(n46), .Y(memread) );
  NAND2X1 U66 ( .A(n66), .B(n46), .Y(iord) );
  NAND3X1 U67 ( .A(state[2]), .B(n74), .C(n68), .Y(n46) );
  NOR2X1 U68 ( .A(state[3]), .B(n75), .Y(n68) );
  NAND2X1 U69 ( .A(n63), .B(n34), .Y(n66) );
  NAND2X1 U70 ( .A(n20), .B(n61), .Y(alusrcb[0]) );
  NAND2X1 U71 ( .A(alusrcb[1]), .B(n26), .Y(n61) );
  NAND3X1 U72 ( .A(n65), .B(n70), .C(n71), .Y(n69) );
  NOR2X1 U73 ( .A(irwrite[2]), .B(irwrite[3]), .Y(n71) );
  NAND3X1 U74 ( .A(n74), .B(n75), .C(n57), .Y(n43) );
  NAND3X1 U75 ( .A(n74), .B(n26), .C(n57), .Y(n72) );
  NAND3X1 U76 ( .A(n75), .B(n25), .C(n57), .Y(n65) );
  NAND3X1 U77 ( .A(n64), .B(n36), .C(n41), .Y(alusrca) );
  NAND2X1 U78 ( .A(alusrcb[1]), .B(n75), .Y(n41) );
  NAND3X1 U79 ( .A(n25), .B(n18), .C(state[2]), .Y(n73) );
  NAND3X1 U80 ( .A(n75), .B(n25), .C(n34), .Y(n36) );
  NAND3X1 U81 ( .A(n74), .B(n75), .C(n34), .Y(n64) );
  NOR2X1 U82 ( .A(n18), .B(state[2]), .Y(n34) );
  NAND2X1 U83 ( .A(n57), .B(n63), .Y(n70) );
  NOR2X1 U84 ( .A(n75), .B(n74), .Y(n63) );
  NOR2X1 U85 ( .A(state[3]), .B(state[2]), .Y(n57) );
  BUFX2 U86 ( .A(state[0]), .Y(n75) );
  BUFX2 U87 ( .A(state[1]), .Y(n74) );
endmodule


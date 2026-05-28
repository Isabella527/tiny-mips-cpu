/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sun May 10 13:32:14 2026
/////////////////////////////////////////////////////////////


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
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48;
  wire   [7:0] b2;
  wire   [7:0] sum;

  AND2X2 U2 ( .A(alucont[1]), .B(sum[7]), .Y(n36) );
  NAND3X1 U14 ( .A(n14), .B(n15), .C(n16), .Y(result[7]) );
  OAI21X1 U15 ( .A(b[7]), .B(a[7]), .C(n38), .Y(n16) );
  NAND3X1 U16 ( .A(alucont[1]), .B(n48), .C(sum[7]), .Y(n15) );
  NAND3X1 U17 ( .A(b[7]), .B(a[7]), .C(n17), .Y(n14) );
  NOR2X1 U18 ( .A(alucont[2]), .B(alucont[1]), .Y(n17) );
  OAI21X1 U19 ( .A(n18), .B(n39), .C(n19), .Y(result[6]) );
  AOI22X1 U20 ( .A(b[6]), .B(n20), .C(sum[6]), .D(n21), .Y(n19) );
  OAI21X1 U21 ( .A(n22), .B(n39), .C(n18), .Y(n20) );
  OAI21X1 U22 ( .A(n18), .B(n40), .C(n23), .Y(result[5]) );
  AOI22X1 U23 ( .A(b[5]), .B(n24), .C(sum[5]), .D(n21), .Y(n23) );
  OAI21X1 U24 ( .A(n22), .B(n40), .C(n18), .Y(n24) );
  OAI21X1 U25 ( .A(n18), .B(n41), .C(n25), .Y(result[4]) );
  AOI22X1 U26 ( .A(b[4]), .B(n26), .C(sum[4]), .D(n21), .Y(n25) );
  OAI21X1 U27 ( .A(n22), .B(n41), .C(n18), .Y(n26) );
  OAI21X1 U28 ( .A(n18), .B(n42), .C(n27), .Y(result[3]) );
  AOI22X1 U29 ( .A(b[3]), .B(n28), .C(sum[3]), .D(n21), .Y(n27) );
  OAI21X1 U30 ( .A(n22), .B(n42), .C(n18), .Y(n28) );
  OAI21X1 U31 ( .A(n18), .B(n43), .C(n29), .Y(result[2]) );
  AOI22X1 U32 ( .A(b[2]), .B(n30), .C(sum[2]), .D(n21), .Y(n29) );
  OAI21X1 U33 ( .A(n22), .B(n43), .C(n18), .Y(n30) );
  OAI21X1 U34 ( .A(n18), .B(n44), .C(n31), .Y(result[1]) );
  AOI22X1 U35 ( .A(b[1]), .B(n32), .C(sum[1]), .D(n21), .Y(n31) );
  OAI21X1 U36 ( .A(n22), .B(n44), .C(n18), .Y(n32) );
  NAND2X1 U37 ( .A(n33), .B(n34), .Y(result[0]) );
  AOI22X1 U38 ( .A(n35), .B(n36), .C(b[0]), .D(n37), .Y(n34) );
  OAI21X1 U39 ( .A(n22), .B(n45), .C(n18), .Y(n37) );
  NAND2X1 U40 ( .A(n47), .B(n46), .Y(n22) );
  NOR2X1 U41 ( .A(n48), .B(n46), .Y(n35) );
  AOI22X1 U42 ( .A(sum[0]), .B(n21), .C(a[0]), .D(n38), .Y(n33) );
  NAND3X1 U43 ( .A(n47), .B(n46), .C(alucont[0]), .Y(n18) );
  NOR2X1 U44 ( .A(n47), .B(alucont[0]), .Y(n21) );
  XNOR2X1 U45 ( .A(b[7]), .B(n46), .Y(b2[7]) );
  XNOR2X1 U46 ( .A(b[6]), .B(n46), .Y(b2[6]) );
  XNOR2X1 U47 ( .A(b[5]), .B(n46), .Y(b2[5]) );
  XNOR2X1 U48 ( .A(b[4]), .B(n46), .Y(b2[4]) );
  XNOR2X1 U49 ( .A(b[3]), .B(n46), .Y(b2[3]) );
  XNOR2X1 U50 ( .A(b[2]), .B(n46), .Y(b2[2]) );
  XNOR2X1 U51 ( .A(b[1]), .B(n46), .Y(b2[1]) );
  XNOR2X1 U52 ( .A(b[0]), .B(n46), .Y(b2[0]) );
  alu_DW01_add_0 add_1_root_add_19_2 ( .A(a), .B(b2), .CI(alucont[2]), .SUM(
        sum) );
  INVX2 U53 ( .A(alucont[2]), .Y(n46) );
  INVX2 U54 ( .A(n18), .Y(n38) );
  INVX2 U55 ( .A(a[6]), .Y(n39) );
  INVX2 U56 ( .A(a[5]), .Y(n40) );
  INVX2 U57 ( .A(a[4]), .Y(n41) );
  INVX2 U58 ( .A(a[3]), .Y(n42) );
  INVX2 U59 ( .A(a[2]), .Y(n43) );
  INVX2 U60 ( .A(a[1]), .Y(n44) );
  INVX2 U61 ( .A(a[0]), .Y(n45) );
  INVX2 U62 ( .A(alucont[1]), .Y(n47) );
  INVX2 U63 ( .A(alucont[0]), .Y(n48) );
endmodule


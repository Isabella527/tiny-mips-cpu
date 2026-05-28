`timescale 1ns/10ps

module datapath(
    clk,
    reset,
    memdata,
    alusrca,
    memtoreg,
    iord,
    pcen,
    regwrite,
    regdst,
    pcsource,
    alusrcb,
    irwrite,
    alucont,
    zero,
    instr,
    adr,
    writedata
);

input clk, reset;
input [7:0] memdata;

input alusrca;
input memtoreg;
input iord;
input pcen;
input regwrite;
input regdst;

input [1:0] pcsource;
input [1:0] alusrcb;

input [3:0] irwrite;
input [2:0] alucont;

output zero;
output [31:0] instr;
output [7:0] adr;
output [7:0] writedata;

// ======================================================
// CONSTANTS
// ======================================================

parameter CONST_ZERO = 8'b00000000;
parameter CONST_ONE  = 8'b00000001;

// ======================================================
// INTERNAL WIRES
// ======================================================

wire [2:0] ra1;
wire [2:0] ra2;
wire [2:0] wa;

wire [7:0] pc;
wire [7:0] nextpc;

wire [7:0] md;

wire [7:0] rd1;
wire [7:0] rd2;

wire [7:0] wd;

wire [7:0] a;

wire [7:0] src1;
wire [7:0] src2;

wire [7:0] aluresult;
wire [7:0] aluout;

wire [7:0] signimm;
wire [7:0] branchimm;
wire [7:0] jump_target;

// ======================================================
// INSTRUCTION FIELD EXTRACTION
// ======================================================

// rs field
assign ra1 = instr[23:21];

// rt field
assign ra2 = instr[18:16];

// immediate field
assign signimm = instr[7:0];

// branch offset = imm << 2
assign branchimm = signimm << 2;

// jump target = instruction index << 2
// converts word address to byte address
assign jump_target = {instr[5:0], 2'b00};

// ======================================================
// REGISTER DESTINATION MUX
// ======================================================

// regdst = 0 -> rt
// regdst = 1 -> rd

mux23 regmux(
    instr[18:16],
    instr[13:11],
    regdst,
    wa
);

// ======================================================
// INSTRUCTION REGISTER
// ======================================================

flopen ir0(
    clk,
    irwrite[0],
    memdata,
    instr[7:0]
);

flopen ir1(
    clk,
    irwrite[1],
    memdata,
    instr[15:8]
);

flopen ir2(
    clk,
    irwrite[2],
    memdata,
    instr[23:16]
);

flopen ir3(
    clk,
    irwrite[3],
    memdata,
    instr[31:24]
);

// ======================================================
// MAIN REGISTERS
// ======================================================

flopenr pcreg(
    clk,
    reset,
    pcen,
    nextpc,
    pc
);

flop mdr(
    clk,
    memdata,
    md
);

flop areg(
    clk,
    rd1,
    a
);

flop wrd(
    clk,
    rd2,
    writedata
);

flop res(
    clk,
    aluresult,
    aluout
);

// ======================================================
// ADDRESS MUX
// ======================================================

// iord = 0 -> PC
// iord = 1 -> ALUOUT

mux2 adrmux(
    pc,
    aluout,
    iord,
    adr
);

// ======================================================
// ALU SOURCE A MUX
// ======================================================

// alusrca = 0 -> PC
// alusrca = 1 -> register A

mux2 src1mux(
    pc,
    a,
    alusrca,
    src1
);

// ======================================================
// ALU SOURCE B MUX
// ======================================================

// 00 -> register B (rd2)
// 01 -> constant 1
// 10 -> immediate
// 11 -> branch immediate

mux4 src2mux(
    rd2,
    CONST_ONE,
    signimm,
    branchimm,
    alusrcb,
    src2
);

// ======================================================
// PC SOURCE MUX
// ======================================================

// 00 -> ALU result
// 01 -> ALUOUT (branch target)
// 10 -> jump target
// 11 -> zero

mux4 pcmux(
    aluresult,
    aluout,
    jump_target,
    CONST_ZERO,
    pcsource,
    nextpc
);

// ======================================================
// WRITEBACK MUX
// ======================================================

// memtoreg = 0 -> ALUOUT
// memtoreg = 1 -> memory data

mux2 wdmux(
    aluout,
    md,
    memtoreg,
    wd
);

// ======================================================
// REGISTER FILE
// ======================================================

regfile rf(
    clk,
    regwrite,
    ra1,
    ra2,
    wa,
    wd,
    rd1,
    rd2
);

// ======================================================
// ALU
// ======================================================

alu main_alu(
    src1,
    src2,
    alucont,
    aluresult
);

// ======================================================
// ZERO DETECTOR
// ======================================================

zerodetect zd(
    aluresult,
    zero
);

endmodule

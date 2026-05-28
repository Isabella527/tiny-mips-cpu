`timescale 1ns/10ps

module controller(
    clk,
    reset,
    op,
    zero,
    memread,
    memwrite,
    alusrca,
    memtoreg,
    iord,
    pcen,
    regwrite,
    regdst,
    pcsource,
    alusrcb,
    aluop,
    irwrite
);

// ======================================================
// INPUTS
// ======================================================

input [5:0] op;
input clk;
input reset;
input zero;

// ======================================================
// OUTPUTS
// ======================================================

output reg memread;
output reg memwrite;

output reg alusrca;
output reg memtoreg;

output reg iord;

output reg pcen;

output reg regwrite;
output reg regdst;

output reg [1:0] pcsource;
output reg [1:0] alusrcb;
output reg [1:0] aluop;

output reg [3:0] irwrite;

// ======================================================
// INTERNAL CONTROL
// ======================================================

reg pcwrite;
reg pcwritecond;

reg [3:0] state;
reg [3:0] nextstate;

// ======================================================
// STATE DEFINITIONS
// ======================================================

parameter FETCH0  = 4'd0;
parameter FETCH1  = 4'd1;
parameter FETCH2  = 4'd2;
parameter FETCH3  = 4'd3;

parameter DECODE  = 4'd4;
parameter MEMADR  = 4'd5;
parameter MEMRD   = 4'd6;
parameter MEMWB   = 4'd7;
parameter MEMWR   = 4'd8;
parameter EXEC    = 4'd9;
parameter ALUWB   = 4'd10;
parameter BRANCH  = 4'd11;
parameter JUMP    = 4'd12;

// ======================================================
// OPCODES
// ======================================================

parameter RTYPE = 6'b000000;
parameter LB    = 6'b100000;
parameter SB    = 6'b101000;
parameter BEQ   = 6'b000100;
parameter J     = 6'b000010;

// ======================================================
// STATE REGISTER
// ======================================================

always @(posedge clk or posedge reset) begin

    if(reset)
        state <= FETCH0;
    else
        state <= nextstate;

end

// ======================================================
// NEXT STATE LOGIC
// ======================================================

always @(*) begin

    case(state)

        FETCH0:
            nextstate = FETCH1;

        FETCH1:
            nextstate = FETCH2;

        FETCH2:
            nextstate = FETCH3;

        FETCH3:
            nextstate = DECODE;

        DECODE: begin

            case(op)

                RTYPE:
                    nextstate = EXEC;

                LB:
                    nextstate = MEMADR;

                SB:
                    nextstate = MEMADR;

                BEQ:
                    nextstate = BRANCH;

                J:
                    nextstate = JUMP;

                default:
                    nextstate = FETCH0;

            endcase
        end

        EXEC:
            nextstate = ALUWB;

        ALUWB:
            nextstate = FETCH0;

        MEMADR: begin

            if(op == LB)
                nextstate = MEMRD;
            else
                nextstate = MEMWR;

        end

        MEMRD:
            nextstate = MEMWB;

        MEMWB:
            nextstate = FETCH0;

        MEMWR:
            nextstate = FETCH0;

        BRANCH:
            nextstate = FETCH0;

        JUMP:
            nextstate = FETCH0;

        default:
            nextstate = FETCH0;

    endcase

end

// ======================================================
// OUTPUT LOGIC
// ======================================================

always @(*) begin

    // --------------------------------------------------
    // DEFAULTS
    // --------------------------------------------------

    memread      = 0;
    memwrite     = 0;

    alusrca      = 0;
    alusrcb      = 2'b00;

    aluop        = 2'b00;

    iord         = 0;

    irwrite      = 4'b0000;

    memtoreg     = 0;

    pcsource     = 2'b00;

    regwrite     = 0;
    regdst       = 0;

    pcwrite      = 0;
    pcwritecond  = 0;

    // --------------------------------------------------
    // STATE ACTIONS
    // --------------------------------------------------

    case(state)

        // ==================================================
        // FETCH BYTE 0
        // ==================================================

        FETCH0: begin

            memread  = 1;
            irwrite  = 4'b0001;

            // PC + 1
            alusrca  = 0;
            alusrcb  = 2'b01;
            aluop    = 2'b00;

            pcsource = 2'b00;

            // increment PC
            pcwrite  = 1;

            iord     = 0;

        end

        // ==================================================
        // FETCH BYTE 1
        // ==================================================

        FETCH1: begin

            memread  = 1;
            irwrite  = 4'b0010;

            // PC + 1
            alusrca  = 0;
            alusrcb  = 2'b01;
            aluop    = 2'b00;

            pcsource = 2'b00;

            // increment PC
            pcwrite  = 1;

            iord     = 0;

        end

        // ==================================================
        // FETCH BYTE 2
        // ==================================================

        FETCH2: begin

            memread  = 1;
            irwrite  = 4'b0100;

            // PC + 1
            alusrca  = 0;
            alusrcb  = 2'b01;
            aluop    = 2'b00;

            pcsource = 2'b00;

            // increment PC
            pcwrite  = 1;

            iord     = 0;

        end

        // ==================================================
        // FETCH BYTE 3
        // ==================================================
           FETCH3: begin

    memread = 1;
    irwrite = 4'b1000;

    // Increment PC
    alusrca  = 0;
    alusrcb  = 2'b01;
    aluop    = 2'b00;

    pcsource = 2'b00;
    pcwrite  = 1;

    // nextstate = DECODE;

end
        

        // ==================================================
        // DECODE
        // ==================================================

        DECODE: begin

            alusrca = 0;
            alusrcb = 2'b11;
            aluop   = 2'b00;

        end

        // ==================================================
        // EXECUTE
        // ==================================================

        EXEC: begin

            alusrca = 1;
            alusrcb = 2'b00;
            aluop   = 2'b10;

        end

        // ==================================================
        // ALU WRITEBACK
        // ==================================================

        ALUWB: begin

            regwrite = 1;
            regdst   = 1;
            memtoreg = 0;

        end

        // ==================================================
        // MEMORY ADDRESS
        // ==================================================

        MEMADR: begin

            alusrca = 1;
            alusrcb = 2'b10;
            aluop   = 2'b00;

        end

        // ==================================================
        // MEMORY READ
        // ==================================================

        MEMRD: begin

            memread = 1;
            iord    = 1;

        end

        // ==================================================
        // MEMORY WRITEBACK
        // ==================================================

        MEMWB: begin

            regwrite = 1;
            regdst   = 0;
            memtoreg = 1;

        end

        // ==================================================
        // MEMORY WRITE
        // ==================================================

        MEMWR: begin

            memwrite = 1;
            iord     = 1;

        end

        // ==================================================
        // BRANCH
        // ==================================================

        BRANCH: begin

            alusrca = 1;
            alusrcb = 2'b00;
            aluop   = 2'b01;

            pcwritecond = 1;

            // branch target from ALUOUT
            pcsource = 2'b01;

        end

        // ==================================================
        // JUMP
        // ==================================================

        JUMP: begin

            pcwrite = 1;

            // jump target
            pcsource = 2'b10;

        end

    endcase

end

// ======================================================
// PC ENABLE
// ======================================================

always @(*) begin

    pcen = pcwrite | (pcwritecond & zero);

end

endmodule

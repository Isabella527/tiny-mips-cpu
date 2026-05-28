`timescale 1ns/1ps

module testbench();

reg clk;
reg reset;

wire memread;
wire memwrite;
wire [7:0] adr;
wire [7:0] writedata;
wire [7:0] memdata;

integer cycles;
integer pass_count;

// ============================================================
// DUT
// ============================================================

mips uut (
    .clk(clk),
    .reset(reset),
    .memdata(memdata),
    .memread(memread),
    .memwrite(memwrite),
    .adr(adr),
    .writedata(writedata)
);

// ============================================================
// RAM
// ============================================================

ram memory (
    .memdata(memdata),
    .memwrite(memwrite),
    .adr(adr),
    .writedata(writedata),
    .clk(clk)
);

// ============================================================
// Clock
// ============================================================

always #5 clk = ~clk;

// ============================================================
// Cycle Counter
// ============================================================

always @(posedge clk) begin
    cycles <= cycles + 1;
end

// ============================================================
// Self-Checking Logic
// ============================================================

always @(posedge clk) begin

    // Ignore checks during reset
    if (!reset) begin

        // ----------------------------------------------------
        // Detect X values
        // ----------------------------------------------------

        if (^adr === 1'bx) begin
            $display("ERROR: adr contains X at time %0t", $time);
            $finish;
        end

        if (^memwrite === 1'bx) begin
            $display("ERROR: memwrite contains X at time %0t", $time);
            $finish;
        end

        if (^memread === 1'bx) begin
            $display("ERROR: memread contains X at time %0t", $time);
            $finish;
        end

        // ----------------------------------------------------
        // Watch memory writes
        // ----------------------------------------------------

        if (memwrite) begin

            $display(
                "WRITE: time=%0t addr=%h data=%h",
                $time,
                adr,
                writedata
            );

            // ------------------------------------------------
            // ADD TEST
            // mem[ff] = 29
            // ------------------------------------------------

            if ((adr == 8'hff) && (writedata == 8'h29)) begin

                $display("ADD test passed");

                pass_count = pass_count + 1;

            end

            // ------------------------------------------------
            // SUB TEST
            // mem[fe] = 10
            // ------------------------------------------------

            else if ((adr == 8'hfe) && (writedata == 8'h10)) begin

                $display("SUB test passed");

                pass_count = pass_count + 1;

            end

            // ------------------------------------------------
            // AND TEST
            // mem[fd] = 00
            // ------------------------------------------------

            else if ((adr == 8'hfd) && (writedata == 8'h00)) begin

                $display("AND test passed");

                pass_count = pass_count + 1;

            end

            // ------------------------------------------------
            // BEQ TEST
            // mem[fc] = 05
            // ------------------------------------------------

            else if ((adr == 8'hfc) && (writedata == 8'h05)) begin

                $display("BEQ test passed");

                pass_count = pass_count + 1;

            end

            // ------------------------------------------------
            // JUMP TEST
            // mem[fb] = 2a
            // ------------------------------------------------

            else if ((adr == 8'hfb) && (writedata == 8'h2a)) begin

                $display("JUMP test passed");

                pass_count = pass_count + 1;

            end

            // ------------------------------------------------
            // Unexpected write
            // ------------------------------------------------

            else begin

                $display("----------------------------------------");
                $display("TEST FAILED");
                $display("Unexpected memory write");
                $display("Address = %h", adr);
                $display("Data    = %h", writedata);
                $display("----------------------------------------");

                $finish;

            end

            // ------------------------------------------------
            // ALL TESTS PASSED
            // ------------------------------------------------

            if (pass_count == 5) begin

                $display("----------------------------------------");
                $display("ALL CPU TESTS PASSED");
                $display("Cycles = %0d", cycles);
                $display("----------------------------------------");

                $finish;

            end
        end
    end
end

// ============================================================
// Main Test Sequence
// ============================================================

initial begin

    clk        = 0;
    reset      = 1;
    cycles     = 0;
    pass_count = 0;

    // Hold reset
    #20;
    reset = 0;

    // Timeout protection
    #10000;

    $display("----------------------------------------");
    $display("TEST FAILED");
    $display("Simulation timeout");
    $display("CPU never completed all tests");
    $display("----------------------------------------");

    $finish;

end

endmodule

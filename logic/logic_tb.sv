`timescale 1ns/1ns

module testbench;
    logic out;

    initial begin
        $dumpfile("logic.vcd");
        $dumpvars(0, out); // Level 0, All variables of latch

        out <= 0;
        #10;
        out <= 1;
        #10;
        out <= 1'bx;
        #10;
        out <= 1'bz;
        #10;
    end
endmodule

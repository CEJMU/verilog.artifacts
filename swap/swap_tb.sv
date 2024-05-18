//`timescale 1ns/1ns

module testbench;
    logic clk;

    swap sw (.clk(clk));

    initial begin
        $dumpfile("swap.vcd");
        $dumpvars(0, sw); // Level 0, All variables of latch

        clk <= 0;
        #10;
        clk <= 1;
        #10;
        clk <= 0;
        #10;
        clk <= 1;
        #10;
        clk <= 0;
        #10;
    end
endmodule

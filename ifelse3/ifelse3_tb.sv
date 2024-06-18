`timescale 1ns/1ns

module testbench;
    logic a,b,c,d; // inputs
    logic y; // output

    ifelse3 dut (.a(a), .b(b), .c(c), .d(d), .y(y));

    initial begin
        $dumpfile("ifelse3.vcd");
        $dumpvars(0, dut); // Level 0, All variables of ifelse2

        a <= 0;
        b <= 0;
        c <= 0;
        d <= 0;
        #10;
        a <= 1;
        b <= 0;
        c <= 0;
        d <= 1;
        #10;
        assert(y==a) else $error("y not equal a");
    end
endmodule

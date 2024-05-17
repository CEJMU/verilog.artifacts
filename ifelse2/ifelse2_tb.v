module testbench;
    reg a,b,c,d; // inputs
    wire y; // output

    ifelse2 dut (.a(a), .b(b), .c(c), .d(d), .y(y));

    initial begin
        $dumpfile("ifelse2.vcd");
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
    end
endmodule
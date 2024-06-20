`timescale 1ns/1ns

module testbench;
    logic r, s; // inputs
    logic q, n; // output

    rslatch latch (.s(s), .r(r), .q(q), .n(n));

    initial begin
        $dumpfile("rslatch.vcd");
        $dumpvars(0, latch); // Level 0, All variables of latch

        s <= 0;
        r <= 1;
        #10;
        s <= 1;
        r <= 0;
        #10;
        s <= 0;
        r <= 0;
        #10;
        assert (q == 1) else $error ("q!=1");
        assert (n == 0) else $error ("n!=0");
    end
endmodule

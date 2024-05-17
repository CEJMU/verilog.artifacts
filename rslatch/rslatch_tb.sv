module testbench;
    reg r; // inputs
    reg s;
    wire q; // output
    wire n;

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
    end
endmodule

module comb (input logic in1, in2, output logic out);
    always_comb begin
        if (in1 == in2)
            out = 1;
        else
            out = 0;
    end
endmodule

module hierarchy (input logic in1, in2, output logic out1, out2);
    logic signal;
    comb c1(in1,out2,out1);
    comb c2(in1,in2,out2);
endmodule

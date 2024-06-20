module blocking (input logic d, output logic q1, q2, q3);
    always_comb begin
        q1 <= d;
        q2 <= q1;
        q3 <= q2;
    end 
endmodule


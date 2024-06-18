module rslatch (input logic r, s, output logic q, n);
    always_comb begin
        q = ~(r|n); // Use = instead of <=
    end
    always_comb begin
        n = ~(s|q);
    end
endmodule

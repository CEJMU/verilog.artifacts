module rslatch (input logic r, s, output logic q, n);
    always @ (r,s,q,n) begin
        q <= ~(r|n);
        n <= ~(s|q);
    end
endmodule

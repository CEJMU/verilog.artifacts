module rslatch (input logic r, s, output logic q, n);
    always @*
    begin
        q <= ~(r|n);
        n <= ~(s|q);
    end
endmodule

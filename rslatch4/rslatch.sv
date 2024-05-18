module rslatch (input logic r, s, output logic q, n);
    assign q = ~(r|n); 
    assign n = ~(s|q);
endmodule
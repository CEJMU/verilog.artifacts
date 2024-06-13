module rslatch (input logic r, s, output logic q, n);
    nor(q,r,n); // out,in1,in2
    nor(n,s,q);
endmodule

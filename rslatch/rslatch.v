module rslatch (input r, s, output reg q, n);
    always @ (r,s,q,n) begin
	    q <= ~(r|n);
        n <= ~(s|q);
    end
endmodule

module ifelse2 (input a,b,c,d, output reg y);
    always @ (a,b,c,d) begin
        if ((c==1) & (d==1)) begin
            y <= b;
        end else begin
            y <= a;
        end
    end
endmodule
module ifelse3 (
        input logic a,b,c,d,
        output logic y
    );
    always_comb begin
        y=0;
        if      (a==0 && b==0 && c==0 && d==0) y = 0;
        else if (a==0 && b==0 && c==0 && d==1) y = 0;
        else if (a==0 && b==0 && c==1 && d==0) y = 0;
        else if (a==0 && b==0 && c==1 && d==1) y = 0;
        else if (a==0 && b==1 && c==0 && d==0) y = 0;
        else if (a==0 && b==1 && c==0 && d==1) y = 0;
        else if (a==0 && b==1 && c==1 && d==0) y = 0;
        else if (a==0 && b==1 && c==1 && d==1) y = 1;
        else if (a==1 && b==0 && c==0 && d==0) y = 1;
        else if (a==1 && b==0 && c==0 && d==1) y = 1;
        else if (a==1 && b==0 && c==1 && d==0) y = 1;
        else if (a==1 && b==0 && c==1 && d==1) y = 0;
        else if (a==1 && b==1 && c==0 && d==0) y = 1;
        else if (a==1 && b==1 && c==0 && d==1) y = 1;
        else if (a==1 && b==1 && c==1 && d==0) y = 1;
        else if (a==1 && b==1 && c==1 && d==1) y = 1;
    end
endmodule

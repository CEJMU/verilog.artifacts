module inferedlatch2 (
        input logic x, enable,
        output logic y
        );
    always_comb begin
        if (enable==1)
            y <= x;
        else
            y <= 0;
    end
endmodule

module inferedlatch1 (
        input logic x, enable,
        output logic y
        );
    always_comb begin
        if (enable==1)
            y <= x;
    end
endmodule

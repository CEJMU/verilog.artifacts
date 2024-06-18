module inferedlatch3 (
        input logic x, enable,
        output logic y, z
        );
    always_comb begin
        if (enable==1) begin
            y = x;
            z = x;
        end else
            y = 0;
    end
endmodule

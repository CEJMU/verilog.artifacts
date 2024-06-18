module inferedlatch4 (
        input logic x, enable,
        output logic y, z
        );
    always_comb begin
        if (enable==1) begin
            y = x;
            z = x;
        end else begin
            y = 0;
            z = 0;
        end
    end
endmodule

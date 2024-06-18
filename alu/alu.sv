module alu (
        input logic  [3:0] x, y,
        input logic  [1:0] s,
        output logic [7:0] z
    );
    always_comb begin
        if (s == 1'b00) 
            z <= x+y;
        if (s == 1'b01) 
            z <= x-y;
        if (s == 1'b10) 
            z <= x*y;
        else
            z <= 1'b00;
    end
endmodule

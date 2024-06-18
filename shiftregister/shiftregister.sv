module shiftregister (
        input logic clk, s_in,
        output logic s_out
    );
    logic [3:0] regs;
    always_ff @(posedge clk) begin
        regs <= {s_in, regs[3:1]};
        s_out <= regs[0];
    end
endmodule

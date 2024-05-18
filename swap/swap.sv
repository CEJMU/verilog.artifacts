
module swap(input logic clk);

    logic a = 0;
    logic b = 1;

    always_ff @(posedge clk) begin
        a <= b;
        b <= a;
    end

    initial begin
        $monitor ("@%g clk = %b a = %h b = %h", $time, clk, a, b);
    end

endmodule

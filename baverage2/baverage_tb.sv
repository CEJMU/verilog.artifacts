`timescale 1ns/1ns

module testbench;
    logic clk;
    logic rst;
    logic [1:0] x = 1'b00;
    logic y;

    baverage dut (.rst(rst), .clk(clk), .x(x), .y(y));

    always begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    initial begin
        $dumpfile("baverage.vcd");
        $dumpvars(0, dut); 
        rst <= 0;
        #1 rst <= 1;
        #1 rst <= 0;

        #4; x<=2'b01;
        #2; x<=2'b01;
        #2; x<=2'b01;
        #10;
        assert(y==1) else $error("y not equal 1");
        $finish;
    end
endmodule

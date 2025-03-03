`timescale 1ns/1ns

module testbench;
    logic [3:0] x,y; // inputs
    logic [1:0] s; // select bit
    logic [7:0] z; // output

    alu dut (.x(x), .y(y), .s(s), .z(z));

    initial begin
        $dumpfile("alu.vcd");
        $dumpvars(0, dut); // Level 0, All variables of alu

        // Addition 4 + 5
        s <= 2'b00;
        x <= 4'd4;
        y <= 5'd5;
        #10;
        assert(z==8'd9) else $error("z not equal 4 + 5");

        // Subtraction 10 - 2
        s <= 2'b01;
        x <= 4'd10;
        y <= 5'd2;
        #10;
        assert(z==8'd8) else $error("z not equal 10 - 2");

        // Subtraction 3 - 5
        s <= 2'b01;
        x <= 4'd3;
        y <= 5'd5;
        #10;
        assert($signed(z)==-2) else $error("z not equal 3 - 5");

        // Multiplication 4 * 7
        s <= 2'b10;
        x <= 4'd4;
        y <= 5'd7;
        #10;
        assert(z==8'd28) else $error("z not equal 4 * 7");

        // Redundant case
        s <= 2'b11;
        x <= 4'd4;
        y <= 5'd7;
        #10;
        assert(z==4'd0) else $error("z not equal 0");
    end
endmodule

module baverage (
        input logic [1:0] x,
        input logic clk,
        output logic y
    );
    
    logic [1:0] state = 2'b00;

    // State Calculation
    always_ff @ (posedge clk) begin
        if(x == 2'b00) begin
            state <= state;
        end else if(x == 2'b01) begin // 50 cent
            case(state)
                2'b00 : state <= 2'b01; // 0 -> 0.5
                2'b01 : state <= 2'b10; // 0.5 -> 1
                2'b10 : state <= 2'b11; // 1 -> >=1.5
                2'b11 : state <= state; // 1.5 ...
            endcase
        end else if(x == 2'b10) begin // 1 Euro
            case(state)
                2'b00 : state <= 2'b10; // 0 -> 1
                2'b01 : state <= 2'b11; // 0.5 -> >=1.5
                2'b10 : state <= 2'b11; // 1 -> >=1.5
                2'b11 : state <= state; // 1.5 ...
            endcase
        end else
            state <= state;
    end

    // Lambda:
    always_ff @ (posedge clk) begin
        if(state == 2'b11)
            y <= 1;
        else
            y <= 0;     
    end
endmodule

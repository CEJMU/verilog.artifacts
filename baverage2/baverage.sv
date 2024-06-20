module baverage (
        input logic [1:0] x,
        input logic clk,
        input logic rst,
        output logic y
    );
    
    typedef enum {z0,z50,z100,z150} mystate;
    mystate state_d ; // Neuer Zustand
    (* fsm_encoding = "binary" *)
    mystate state_q ; // Alter Zustand

    always_ff @ (posedge clk) begin
        if (rst) 
            state_q <= z0;
        else
            state_q <= state_d;
    end
    // Lambda:
    always_comb begin
        y = 0;     
        if(state_q == 2'b11)
            y = 1;
    end
    // Delta
    always_comb begin
        state_d = state_q; // Default
        if(x == 2'b01) begin // 50 cent
            case(state_q)
                z0   : state_d = z50;
                z50  : state_d = z100;
                z100 : state_d = z150; 
                z150 : state_d = state_q; 
            endcase
        end else if(x == 2'b10) begin // 1 Euro
            case(state_q)
                z0   : state_d = z100; 
                z50  : state_d = z150; 
                z100 : state_d = z150;
                z150 : state_d = state_q;
            endcase
        end 
    end
endmodule

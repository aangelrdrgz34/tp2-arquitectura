`timescale 1ns / 1ps

module uart_rx(
    input wire clk,
    input wire rx,
    input wire s_tick,
    output reg [7:0] dout,
    output reg rx_done_tick
);

    parameter IDLE  = 2'b00;
    parameter START = 2'b01;
    parameter DATA  = 2'b10;
    parameter STOP  = 2'b11;
    
    parameter D_BIT = 8; 
    parameter SB_TICK = 16; 

    reg [1:0] state = IDLE, next_state;
    reg [3:0] s = 0, next_s;
    reg [2:0] n = 0, next_n;
    reg [7:0] b = 0, next_b;

    // Registre synchrone
    always @(posedge clk) begin
        state <= next_state;
        s     <= next_s;
        n     <= next_n;
        b     <= next_b;
    end

    // Logique combinatoire du prochain état
    always @* begin
        next_state   = state;
        next_s       = s;
        next_n       = n;
        next_b       = b;
        rx_done_tick = 1'b0;

        case (state)
            IDLE: begin
                if (rx == 1'b0) begin
                    next_s     = 0;
                    next_state = START;
                end
            end
            
            START: begin
                if (s_tick) begin
                    if (s == 7) begin
                        next_s     = 0;
                        next_n     = 0;
                        next_state = DATA;
                    end else begin
                        next_s = s + 1;
                    end
                end
            end
            
            DATA: begin
                if (s_tick) begin
                    if (s == 15) begin
                        next_s = 0;
                        next_b = {rx, b[7:1]};
                        if (n == D_BIT - 1) begin
                            next_state = STOP;
                        end else begin
                            next_n = n + 1;
                        end
                    end else begin
                        next_s = s + 1;
                    end
                end
            end
            
            STOP: begin
                if (s_tick) begin
                    if (s == SB_TICK - 1) begin
                        rx_done_tick = 1'b1;
                        next_state   = IDLE;
                    end else begin
                        next_s = s + 1;
                    end
                end
            end
            
            default: next_state = IDLE;
        endcase
        dout = b;
    end

endmodule
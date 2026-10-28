`timescale 1ns / 1ps

module intf(
    input wire clk,
    input wire rst,
    
    // UART RX
    input wire [7:0] r_data,
    input wire rx_done,
    
    // UART TX
    output reg [7:0] w_data,
    output reg tx_start,
    input wire tx_done,
    
    // ALU
    output reg [7:0] alu_op_a,
    output reg [7:0] alu_op_b,
    output reg [5:0] alu_opcode,
    input wire [7:0] alu_result
);

    localparam WAIT_A   = 3'd0;
    localparam WAIT_B   = 3'd1;
    localparam WAIT_OP  = 3'd2;
    localparam START_TX = 3'd3;
    localparam WAIT_TX  = 3'd4;

    reg [2:0] state = WAIT_A;

    always @(posedge clk) begin
        if (rst) begin
            state      <= WAIT_A;
            tx_start   <= 1'b0;
            w_data     <= 8'h00;
            alu_op_a   <= 8'h00;
            alu_op_b   <= 8'h00;
            alu_opcode <= 6'b000000;
        end else begin
            tx_start <= 1'b0;

            case (state)
                WAIT_A: begin
                    if (rx_done) begin
                        alu_op_a <= r_data;
                        state    <= WAIT_B;
                    end
                end

                WAIT_B: begin
                    if (rx_done) begin
                        alu_op_b <= r_data;
                        state    <= WAIT_OP;
                    end
                end

                WAIT_OP: begin
                    if (rx_done) begin
                        alu_opcode <= r_data[5:0];
                        w_data     <= alu_result;
                        tx_start   <= 1'b1; // Déclenchement direct de la transmission
                        state      <= WAIT_TX;
                    end
                end

                WAIT_TX: begin
                    if (tx_done) begin
                        state <= WAIT_A;
                    end
                end

                default: state <= WAIT_A;
            endcase
        end
    end

endmodule
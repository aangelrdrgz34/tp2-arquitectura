`timescale 1ns / 1ps

module ALU_top(
    input  wire        clk,
    input  wire        rst,
    input  wire        rx,
    output wire        tx,
    output wire [15:0] leds     // Bus de 16 LEDs mis à jour
);

    wire tick_wire;
    wire [7:0] rx_data_wire;
    wire rx_done_wire;
    
    wire [7:0] tx_data_wire;
    wire tx_start_wire;
    wire tx_done_wire;
    wire tx_full_wire;
    
    wire [7:0] alu_a_wire;
    wire [7:0] alu_b_wire;
    wire [5:0] alu_opcode_wire;
    wire [7:0] alu_res_wire;
    
    wire zero_wire;
    wire carry_wire;
    wire overflow_wire;

    baud_rate_generator BRG (
        .clk(clk),
        .tick(tick_wire)
    );

    uart_rx RX (
        .clk(clk),
        .rx(rx),
        .s_tick(tick_wire),
        .dout(rx_data_wire),
        .rx_done_tick(rx_done_wire)
    );

    uart_tx TX (
        .clk(clk),
        .s_tick(tick_wire),
        .tx_start(tx_start_wire),
        .d_in(tx_data_wire),
        .tx(tx),
        .tx_done(tx_done_wire),
        .tx_full(tx_full_wire)
    );

    intf INTERFACE (
        .clk(clk),
        .rst(rst),
        .r_data(rx_data_wire),
        .rx_done(rx_done_wire),
        .w_data(tx_data_wire),
        .tx_start(tx_start_wire),
        .tx_done(tx_done_wire),
        .alu_op_a(alu_a_wire),
        .alu_op_b(alu_b_wire),
        .alu_opcode(alu_opcode_wire),
        .alu_result(alu_res_wire)
    );

    ALU #(
        .NB_BITS(8)
    ) MON_ALU (
        .i_op_a(alu_a_wire),
        .i_op_b(alu_b_wire),
        .i_opcode(alu_opcode_wire),
        .o_result(alu_res_wire),
        .o_zero(zero_wire),
        .o_carry(carry_wire),
        .o_overflow(overflow_wire)
    );

    // --- Assignations de sortie ---
    // Résultat binaire (8 bits) sur LD0 -> LD7
    assign leds[7:0]   = alu_res_wire;

    // LEDs intermédiaires désactivées (LD8 à LD12)
    assign leds[12:8]  = 5'b00000;

    // Flags sur les LEDs tout à gauche
    assign leds[13]    = zero_wire;     // LD13 = Zero
    assign leds[14]    = carry_wire;    // LD14 = Carry
    assign leds[15]    = overflow_wire; // LD15 = Overflow

endmodule
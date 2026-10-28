`timescale 1ns / 1ps

module reg_Nbits #(
    parameter NB_BITS = 6
)(
    input  wire                 i_clk,
    input  wire                 i_rst,
    input  wire                 i_enable,
    input  wire [NB_BITS-1:0]   i_d,
    output reg  [NB_BITS-1:0]   o_q
);

    // Réinitialisation synchrone lors du Reset, ou écriture lors de l'appui sur le bouton
    always @(posedge i_clk) begin
        if (i_rst) begin
            o_q <= {NB_BITS{1'b0}};
        end else if (i_enable) begin
            o_q <= i_d;
        end
    end

endmodule
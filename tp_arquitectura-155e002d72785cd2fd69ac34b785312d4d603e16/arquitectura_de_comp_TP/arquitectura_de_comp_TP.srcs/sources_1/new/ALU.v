`timescale 1ns / 1ps

module ALU #(
    parameter NB_BITS = 6
)(
    input  wire [NB_BITS-1:0] i_op_a,
    input  wire [NB_BITS-1:0] i_op_b,
    input  wire [5:0]         i_opcode,
    output reg  [NB_BITS-1:0] o_result,
    output reg                o_zero,
    output reg                o_carry,
    output reg                o_overflow
);

    // Définition des codes d'opération (Opcodes)
    localparam ADD = 6'b100000;
    localparam SUB = 6'b100010;
    localparam AND = 6'b100100;
    localparam OR  = 6'b100101;
    localparam XOR = 6'b100110;
    localparam SRA = 6'b000011;
    localparam SRL = 6'b000010;
    localparam NOR = 6'b100111;

    reg [NB_BITS:0] aux_result;

    always @(*) begin
        // Valeurs par défaut
        aux_result = {(NB_BITS+1){1'b0}};
        o_carry    = 1'b0;
        o_overflow = 1'b0;

        case (i_opcode)
            ADD: begin
                aux_result = i_op_a + i_op_b;
                o_carry    = aux_result[NB_BITS];
                // Dépassement de signe pour addition
                o_overflow = (i_op_a[NB_BITS-1] == i_op_b[NB_BITS-1]) && 
                             (aux_result[NB_BITS-1] != i_op_a[NB_BITS-1]);
                o_result   = aux_result[NB_BITS-1:0];
            end

            SUB: begin
                aux_result = i_op_a - i_op_b;
                o_carry    = aux_result[NB_BITS];
                // Dépassement de signe pour soustraction
                o_overflow = (i_op_a[NB_BITS-1] != i_op_b[NB_BITS-1]) && 
                             (aux_result[NB_BITS-1] != i_op_a[NB_BITS-1]);
                o_result   = aux_result[NB_BITS-1:0];
            end

            AND: o_result = i_op_a & i_op_b;
            OR:  o_result = i_op_a | i_op_b;
            XOR: o_result = i_op_a ^ i_op_b;
            NOR: o_result = ~(i_op_a | i_op_b);

            // Décalage logique à droite
            SRL: o_result = i_op_a >> i_op_b;

            // Décalage arithmétique à droite (maintient le bit de signe)
            SRA: o_result = $signed(i_op_a) >>> i_op_b;

            default: o_result = {NB_BITS{1'b0}};
        endcase

        // Flag Zero
        o_zero = (o_result == {NB_BITS{1'b0}});
    end

endmodule
`timescale 1ns / 1ps

module tb_alu;

    parameter NB_BITS = 8;

    // Entrées (reg dans le testbench)
    reg [NB_BITS-1:0] i_op_a;
    reg [NB_BITS-1:0] i_op_b;
    reg [5:0]         i_opcode;

    // Sorties (wire dans le testbench)
    wire [NB_BITS-1:0] o_result;
    wire               o_zero;
    wire               o_carry;
    wire               o_overflow;

    // Instanciation du module ALU
    ALU #(
        .NB_BITS(NB_BITS)
    ) uut (
        .i_op_a(i_op_a),
        .i_op_b(i_op_b),
        .i_opcode(i_opcode),
        .o_result(o_result),
        .o_zero(o_zero),
        .o_carry(o_carry),
        .o_overflow(o_overflow)
    );

    // Opcodes supportés
    localparam ADD = 6'b100000;
    localparam SUB = 6'b100010;
    localparam AND = 6'b100100;
    localparam OR  = 6'b100101;
    localparam XOR = 6'b100110;
    localparam SRA = 6'b000011;
    localparam SRL = 6'b000010;
    localparam NOR = 6'b100111;

    reg [5:0] opcodes [0:7];
    reg [NB_BITS-1:0] expected_result;
    integer i;

    initial begin
        // Tableau d'opcodes
        opcodes[0] = ADD;
        opcodes[1] = SUB;
        opcodes[2] = AND;
        opcodes[3] = OR;
        opcodes[4] = XOR;
        opcodes[5] = SRA;
        opcodes[6] = SRL;
        opcodes[7] = NOR;

        $display("--- DEBUT DE LA SIMULATION ALU ---");

        // 100 tests aléatoires
        for (i = 0; i < 100; i = i + 1) begin
            i_op_a   = $random;
            i_op_b   = $random;
            i_opcode = opcodes[$unsigned($random) % 8];

            #10; // Pause pour laisser la logique combinatoire se stabiliser

            // Calcul du résultat attendu
            case (i_opcode)
                ADD: expected_result = i_op_a + i_op_b;
                SUB: expected_result = i_op_a - i_op_b;
                AND: expected_result = i_op_a & i_op_b;
                OR:  expected_result = i_op_a | i_op_b;
                XOR: expected_result = i_op_a ^ i_op_b;
                NOR: expected_result = ~(i_op_a | i_op_b);
                SRL: expected_result = i_op_a >> i_op_b;
                SRA: expected_result = $signed(i_op_a) >>> i_op_b;
                default: expected_result = 0;
            endcase

            // Chequeo automático (Vérification automatique)
            if (o_result !== expected_result) begin
                $display("ERREUR ! Opcode: %b | A: %h | B: %h | Obtenu: %h | Attendu: %h", 
                         i_opcode, i_op_a, i_op_b, o_result, expected_result);
            end
        end

        $display("--- FIN DE LA SIMULATION (SUCCES SI PAS D'ERREURS DESSUS) ---");
        $finish;
    end

endmodule
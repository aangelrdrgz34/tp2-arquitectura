`timescale 1ns / 1ps

module uart_tx(
    input wire clk,
    input wire s_tick,       // Signal d'échantillonnage (issu du baud_rate_generator)
    input wire tx_start,     // Signal déclenchant le début de la transmission
    input wire [7:0] d_in,   // Donnée de 8 bits à transmettre
    output reg tx,           // Ligne de transmission série
    output reg tx_done,      // Impulsion d'horloge indiquant la fin de transmission
    output wire tx_full      // Indique si le transmetteur est occupé
);

    // Définition des états de la FSM (Encodage binaire)
    localparam [1:0] 
        IDLE  = 2'b00,
        START = 2'b01,
        DATA  = 2'b10,
        STOP  = 2'b11;
        
    // Constantes
    localparam D_BIT = 8;      // Nombre de bits de données
    localparam SB_TICK = 16;   // Nombre de ticks pour 1 bit (Suréchantillonnage 16x)

    // Variables d'état et registres
    reg [1:0] state, next_state;
    reg [3:0] s, next_s;       // Compteur de ticks (0 à 15)
    reg [2:0] n, next_n;       // Compteur de bits de données (0 à 7)
    reg [7:0] b, next_b;       // Registre à décalage pour la donnée
    reg tx_reg, next_tx_reg;   // Registre du bit de sortie

    // Assigner tx_full : le transmetteur est occupé s'il n'est pas en IDLE
    assign tx_full = (state != IDLE);

    // Registres de mémorisation (Mise à jour synchrone)
    always @(posedge clk) begin
        state  <= next_state;
        s      <= next_s;
        n      <= next_n;
        b      <= next_b;
        tx_reg <= next_tx_reg;
    end

    // Logique combinatoire du prochain état
    always @* begin
        // Valeurs par défaut
        next_state  = state;
        next_s      = s;
        next_n      = n;
        next_b      = b;
        next_tx_reg = tx_reg;
        tx_done     = 1'b0;

        case (state)
            IDLE: begin
                next_tx_reg = 1'b1; // Ligne au repos (état haut)
                if (tx_start) begin
                    next_s = 0;
                    next_b = d_in;
                    next_state = START;
                end
            end
            
            START: begin
                next_tx_reg = 1'b0; // Bit de Start (état bas)
                if (s_tick) begin
                    if (s == 15) begin
                        next_s = 0;
                        next_n = 0;
                        next_state = DATA;
                    end else begin
                        next_s = s + 1;
                    end
                end
            end
            
            DATA: begin
                next_tx_reg = b[0]; // Envoi du bit de poids faible (LSB) en premier
                if (s_tick) begin
                    if (s == 15) begin
                        next_s = 0;
                        next_b = b >> 1; // Décalage à droite pour le bit suivant
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
                next_tx_reg = 1'b1; // Bit de Stop (état haut)
                if (s_tick) begin
                    if (s == SB_TICK - 1) begin
                        tx_done = 1'b1; // Transmission terminée
                        next_state = IDLE;
                    end else begin
                        next_s = s + 1;
                    end
                end
            end
            
            default: next_state = IDLE; // Sécurité en cas d'erreur d'état
        endcase
    end

    // Assignation de la sortie
    always @* begin
        tx = tx_reg;
    end

endmodule
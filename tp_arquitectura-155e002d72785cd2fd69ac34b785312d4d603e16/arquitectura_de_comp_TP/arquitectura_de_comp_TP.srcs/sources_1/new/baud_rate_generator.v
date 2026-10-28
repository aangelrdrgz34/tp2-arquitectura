`timescale 1ns / 1ps

module baud_rate_generator(
    input wire clk,
    output reg tick
);
    // Compteur pour 100 MHz @ 19200 bauds (100MHz / (19200 * 16) = 325,5 cycles / 10 = 325)
    reg [8:0] counter = 0;

    always @(posedge clk) begin
        if (counter == 324) begin 
            counter <= 0;
            tick <= 1'b1;
        end else begin
            counter <= counter + 1'b1;
            tick <= 1'b0;
        end
    end
endmodule
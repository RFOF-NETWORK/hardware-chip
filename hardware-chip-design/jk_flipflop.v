// Echter Halbleiter-Code für ein J.K.-Flipflop (Physikalische Gatter-Ebene)
module jk_flipflop (
    input wire clk,   // Physischer Takt-Pin am Computerchip
    input wire j,     // Physischer Eingang J
    input wire k,     // Physischer Eingang K
    output reg q      // Physischer Ausgang Q (Gespeichertes Bit)
);

    always @(posedge clk) begin
        case ({j, k})
            2'b00 : q <= q;    // Zustand halten
            2'b01 : q <= 1'b0; // Reset auf Bit 0
            2'b10 : q <= 1'b1; // Set auf Bit 1
            2'b11 : q <= ~q;   // Toggle (Invertieren)
        endcase
    end

endmodule

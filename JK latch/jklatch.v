module JK_latch (
    input wire J,
    input wire K,
    input wire enable,
    output reg Q
);

always @ (J, K, enable)
	begin
		if (enable) begin
        case ({J, K})
            2'b00: Q <= Q;    // No change
            2'b01: Q <= 1'b0; // Reset
            2'b10: Q <= 1'b1; // Set
            2'b11: Q <= ~Q;   // Toggle
        endcase
		end
	end

endmodule
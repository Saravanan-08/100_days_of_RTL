module BitwiseOperations(
    input [3:0] A,
    input [3:0] B,
    input [1:0] Op,
    output reg [3:0] Y
);

always @(*) begin
    case (Op)
        2'b00: Y=A&B;
        2'b01: Y=A|B;
        2'b10: Y=~A;
        2'b11: Y=~B;
        default: Y=4'b0000;
    endcase
end

endmodule

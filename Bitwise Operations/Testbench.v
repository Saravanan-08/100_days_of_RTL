module BitwiseOperations_tb;
    reg [3:0] A;
    reg [3:0] B;
    reg [1:0] Op;

    wire [3:0] Y;

    BitwiseOperations uut (
        .A(A),
        .B(B),
        .Op(Op),
        .Y(Y)
    );

    initial begin
        $monitor("A = %b, B = %b, Op = %b => Y = %b", A, B, Op, Y);

        A=4'b1010;
        B=4'b1100:
        Op=2'b00; 
        #10;

        A=4'b1010;
        B=4'b1100; 
        Op=2'b01; 
        #10;

        A=4'b1010;
        B=4'b1100; 
        Op=2'b10; 
        #10;

        A=4'b1010; 
        B=4'b1100;
        Op=2'b11; 
        #10;

        A=4'b1111;
        B=4'b0000;
        Op=2'b00; 
        #10;
      
        A=4'b1111;
        B=4'b0000;
        Op=2'b01;  
        #10;

        A=4'b0000;
        B=4'b1111; 
        Op=2'b10;
        #10;
      
        A=4'b0000;
        B=4'b1111;
        Op=2'b11;
        #10;

        $finish;
    end

endmodule

module pri8_3_tb();
    reg [7:0] I;  
    wire A, B, C, V;  
    pri8_3 DUT (.I(I), .A(A), .B(B), .C(C), .V(V));
    task initialize;
    begin
        I = 8'b0;
    end
    endtask
    task set_input(input [7:0] X);
    begin
        I = X;
    end
    endtask
    initial begin
        initialize;  
        #10;
        set_input(8'b10101000);  
        #30;
        set_input(8'b01001000);  
        #30;
        set_input(8'b00000010);  
        #30;
        set_input(8'b00000001);  
        #30;
        set_input(8'b00000000);
		  end    
    initial
    $monitor("I=%b | OUTPUT A=%b, B=%b, C=%b, V=%b", I, A, B, C, V);
endmodule

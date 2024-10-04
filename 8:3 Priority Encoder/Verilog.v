module pri8_3(input [7:0] I, output reg A,B,C,V); 
always@(*)
begin
if(I[7])
{A,B,C} = 3'b111;
else if(I[6])
{A,B,C} = 3'b110;
else if(I[5])
{A,B,C} = 3'b101;
else if(I[4])
{A,B,C} = 3'b100;
else if(I[3])
{A,B,C} = 3'b011;
else if(I[2])
{A,B,C} = 3'b010;
else if(I[1])
{A,B,C} = 3'b001;
else if(I[0])
{A,B,C} = 3'b000;
else
V =0;
end
endmodule

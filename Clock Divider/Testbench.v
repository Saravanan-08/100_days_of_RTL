module clock_divider_tb;
    reg clk_in;
    reg rst;
    wire clk_out;

    clock_divider uut (
        .clk_in(clk_in),
        .rst(rst),
        .clk_out(clk_out)
    );

    initial begin
        clk_in = 0;
        forever #10 clk_in = ~clk_in;
    end

    initial begin
        rst = 1;
        #30;
        rst = 0;
        #200;
        rst = 1;
        #20;
        rst = 0;
        #100;
        $finish;
    end

endmodule

module counter_tester (
    output reg clk,
    output reg rst,
    input [2:0] count 
);

    always #10 clk = ~clk;

    initial begin
        $dumpfile("simulacion_counter.vcd");
        $dumpvars();
        rst = 1;
        clk = 0;
        #35
        rst = 0;
        #200
        $finish;
    end
endmodule
module tester (
    output reg A,
    output reg B,
    input Out
);
    initial begin
        $dumpfile("simulacion.vcd");
        $dumpvars();
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;
        $finish;
    end
endmodule

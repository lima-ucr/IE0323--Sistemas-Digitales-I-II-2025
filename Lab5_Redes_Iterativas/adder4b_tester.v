module adder4b_tester (
    output reg [3:0] A,
    output reg [3:0] B,
    output reg Cin,
    input [3:0] S,
    input Cout
);
    initial begin
        $dumpfile("simulacion_adder4b.vcd");
        $dumpvars();
        A = 7; B = 8; Cin = 0; #10;
        A = 7; B = 8; Cin = 1; #10;
        A = 11; B = 6; Cin = 0; #10;
        A = 3; B = 9; Cin = 1; #10;
        $finish;
    end
endmodule
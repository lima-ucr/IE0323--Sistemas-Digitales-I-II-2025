module fulladder_tester (
    output reg A,
    output reg B,
    output reg Cin,
    input S,
    input Cout
);
    initial begin
        $dumpfile("simulacion_div3.vcd");
        $dumpvars();
        {A,B,Cin} = 0; #10
        {A,B,Cin} = 1; #10
        {A,B,Cin} = 2; #10
        {A,B,Cin} = 3; #10
        {A,B,Cin} = 4; #10
        {A,B,Cin} = 5; #10
        {A,B,Cin} = 6; #10
        {A,B,Cin} = 7; #10
        $finish;
    end
endmodule
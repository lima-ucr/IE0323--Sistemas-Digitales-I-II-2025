module div3_tester (
    output reg A,
    output reg B,
    output reg C,
    output reg D,
    input Y
);
    initial begin
        $dumpfile("simulacion_div3.vcd");
        $dumpvars();
        {A,B,C,D} = 0; #10
        {A,B,C,D} = 1; #10
        {A,B,C,D} = 2; #10
        {A,B,C,D} = 3; #10
        {A,B,C,D} = 4; #10
        {A,B,C,D} = 5; #10
        {A,B,C,D} = 6; #10
        {A,B,C,D} = 7; #10
        {A,B,C,D} = 8; #10
        {A,B,C,D} = 9; #10
        {A,B,C,D} = 10; #10
        {A,B,C,D} = 11; #10
        {A,B,C,D} = 12; #10
        {A,B,C,D} = 13; #10
        {A,B,C,D} = 14; #10
        {A,B,C,D} = 15; #10
        $finish;
    end
endmodule
module mux_2x1_tester (
    output reg A,
    output reg B,
    output reg S,
    input Y
);
    initial begin
        $dumpfile("simulacion_mux_2x1.vcd");
        $dumpvars();
        {A,B,S} = 0; #10
        {A,B,S} = 1; #10
        {A,B,S} = 2; #10
        {A,B,S} = 3; #10
        {A,B,S} = 4; #10
        {A,B,S} = 5; #10
        {A,B,S} = 6; #10
        {A,B,S} = 7; #10
        $finish;
    end
endmodule
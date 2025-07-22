`include "ejemplo_2.v"
`include "tester.v"

module tb;

    wire A, B, Out;

    ejemplo_2 dut (A, B, Out);
    tester tester (A, B, Out);

endmodule

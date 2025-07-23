`include "fulladder.v"

module adder4b (
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] S,
    output Cout
);
    wire c_01, c_12, c_23;

    fulladder adder0(
        .A(A[0]), .B(B[0]), .Cin(Cin),
        .S(S[0]), .Cout(c_01)
    );

    fulladder adder1(
        .A(A[1]), .B(B[1]), .Cin(c_01),
        .S(S[1]), .Cout(c_12)
    );

    fulladder adder2(
        .A(A[2]), .B(B[2]), .Cin(c_12),
        .S(S[2]), .Cout(c_23)
    );

    fulladder adder3(
        .A(A[3]), .B(B[3]), .Cin(c_23),
        .S(S[3]), .Cout(Cout)
    );

endmodule
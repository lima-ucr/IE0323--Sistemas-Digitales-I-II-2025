module fulladder (
    input A,
    input B,
    input Cin,
    output S,
    output Cout
);
    wire A_and_Cin, B_and_Cin, A_and_B;

    xor G1 (S, A, B, Cin);
    and G2 (A_and_Cin, A, Cin);
    and G3 (B_and_Cin, B, Cin);
    and G4 (A_and_B, A, B);
    or  G5 (Cout, A_and_Cin, B_and_Cin, A_and_B);

endmodule
module ejemplo_2 (
    input A,
    input B,
    output Out
);
    wire notA, notB, n1, n2;

    not G1 (notA, A);
    not G2 (notB, B);
    and G3 (n1, notA, B);
    and G4 (n2, A, notB);
    or  G5 (Out, n1, n2);

endmodule
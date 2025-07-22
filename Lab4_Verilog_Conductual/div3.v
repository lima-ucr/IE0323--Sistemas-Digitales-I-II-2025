//Declaración del módulo
module div3 (
    //Interfaz del módulo
    input A,
    input B,
    input C,
    input D,
    output Y
);
    //Declaración de señales intermedias
    wire notA, notB, notD;
    wire notA_and_notB, C_xnor_D, term_1;
    wire B_and_notD, A_xor_C, term_2;
    wire A_and_D, B_xnor_C, term_3;

    //Entradas Invertidas
    not G1 (notA, A);
    not G2 (notB, B);
    not G3 (notD, D);

    //Primer Término
    and  G4 (notA_and_notB, notA, notB);
    xnor G5 (C_xnor_D, C, D);
    and  G6 (term_1, notA_and_notB, C_xnor_D);

    //Segundo Término
    and G7 (B_and_notD, B, notD);
    xor G8 (A_xor_C, A, C);
    and G9 (term_2, B_and_notD, A_xor_C);

    //Tercer Término
    and  G10 (A_and_D, A, D);
    xnor G11 (B_xnor_C, B, C);
    and  G12 (term_3, A_and_D, B_xnor_C);

    //OR de los tres
    or G13 (Y, term_1, term_2, term_3);

endmodule
`include "adder4b.v"
`include "adder4b_tester.v"

module adder4b_tb;
    //Cables que se utilizarán para interconectar los módulos
    wire [3:0] A, B, S;
    wire Cin, Cout;

    //Instancia del módulo bajo prueba
    adder4b dut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );

    //Instaciación del tester
    adder4b_tester tester (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );
    
endmodule
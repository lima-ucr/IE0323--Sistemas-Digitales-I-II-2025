`include "fulladder.v"
`include "fulladder_tester.v"

module fulladder_tb;
    //Cables que se utilizarán para interconectar los módulos
    wire A, B, Cin, S, Cout;

    //Instancia del módulo bajo prueba
    fulladder dut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );

    //Instaciación del tester
    fulladder_tester tester (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );
    
endmodule
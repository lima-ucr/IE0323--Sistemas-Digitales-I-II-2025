`include "mux_2x1.v"
`include "mux_2x1_tester.v"

module mux_2x1_tb;
    //Cables que se utilizarán para interconectar los módulos
    wire A, B, S, Y;

    //Instancia del módulo bajo prueba
    mux_2x1 dut (
        .A(A),
        .B(B),
        .S(S),
        .Y(Y)
    );

    //Instaciación del tester
    mux_2x1_tester tester (
        .A(A),
        .B(B),
        .S(S),
        .Y(Y)
    );
    
endmodule
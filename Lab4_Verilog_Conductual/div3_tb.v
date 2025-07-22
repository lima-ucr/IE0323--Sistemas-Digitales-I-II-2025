`include "div3.v"
`include "div3_tester.v"

module div3_tb;
    //Cables que se utilizarán para interconectar los módulos
    wire A, B, C, D, Y;

    //Instancia del módulo bajo prueba
    //Este tipo de instanciación se llama "por nombre"
    //En este caso los nombres de los wires en el tb 
    //y los puertos en el dut coinciden, pero no es necesario
    //que eso ocurra
    div3 dut (
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .Y(Y)
    );

    //Instaciación del tester
    //Este tipo de instanciación se llama "por orden"
    //Las señales se deben pasar en el mismo orden en el que
    //fueron declaradas en el módulo
    //Esta forma es más compacta, pero la otra es más legible
    div3_tester tester (A, B, C, D, Y);
    
endmodule
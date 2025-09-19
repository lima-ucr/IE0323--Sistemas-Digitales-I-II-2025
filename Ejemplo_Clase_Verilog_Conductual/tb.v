// incluir modulos a utilizar
`include "div3.v"
`include "tester.v"

module tb();

// Cables para conexión de interfaces 
// de ambos modulos (div3 y tester)
wire A,B,C,D,Y;


// Instancias y conexiones de div3 y tester (por orden)
div3 dut (A,B,C,D,Y);
tester tester (A,B,C,D,Y);


endmodule

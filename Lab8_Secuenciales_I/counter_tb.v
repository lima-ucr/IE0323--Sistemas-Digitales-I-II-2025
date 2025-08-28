`include "counter.v"
`include "counter_tester.v"

module counter_tb;
    //Cables que se utilizarán para interconectar los módulos
    wire clk, rst;
    wire [2:0] count;

    //Instancia del módulo bajo prueba
    counter dut (
        .clk(clk),
        .rst(rst),
        .count(count)
    );

    //Instaciación del tester
    counter_tester tester (
        .clk(clk),
        .rst(rst),
        .count(count)
    );
    
endmodule
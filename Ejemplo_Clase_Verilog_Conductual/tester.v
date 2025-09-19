module tester (
    // Interfaz con entradas/salidas invertidas respecto al DUT
    output reg A ,
    output reg B ,
    output reg C ,
    output reg D ,
    input Y
);

// iterador (colocar afuera de initial begin)
integer i;

    initial begin
        $dumpfile("signals.vcd");
        $dumpvars();
        // Inicio del estímulo

        // A = 0;  B = 0; C = 0; D = 0; #10; // Es lo mismo que poner {A,B,C,D} = 0;

        // A = 0; B = 0; C = 0; D = 1; #10;

        // A = 0; B = 0; C = 1; D = 0; #10;

        // A = 0; B = 0; C = 1; D = 1; #10;

        // A = 0; B = 1; C = 0; D = 0; #10;

        for(i=0; i<16; i=i+1) begin
            {A,B,C,D} = i;
            #10; 

            if({A,B,C,D} % 3 == 0) begin
                $display("%d SI es divisible por 3", {A,B,C,D});
                    if(Y == 1)
                        $display("Y = 1, resultado CORRECTO");
                    else 
                        $display("Y = 0, resultado INCORRECTO");
                end else begin
                    $display("%d NO es divisible por 3", {A,B,C,D});
                    if(Y == 1)
                        $display("Y = 1, resultado INCORRECTO");
                    else 
                        $display("Y = 0, resultado CORRECTO");
            end
                
            $display("");

        end


        $finish;
    end

endmodule

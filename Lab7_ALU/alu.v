module alu (
    input [3:0] A,
    input [3:0] B,
    input sum_notsub,
    output reg [7:0] HEX0,
    output reg [7:0] HEX1
);

    //Aqui deberá instanciar las conexiones intermedias necesarias
    //Probablemente varios wire de tamaños distintos

    //Este es el módulo +/- 
    //Este módulo se encarga de efectuar las sumas y restas
    //Produce dos salidas: el resultado (de 4 bits) y el rebase.
    //Asigne las señales necesarias en su interfaz
    add_sub inst0 (
        .A(),
        .B(),
        .sum_notsub(),
        .overflow(),
        .result()
    );

    //Este es el módilo res_to_sign_mag
    //Toma el resultado de la operación, en complemento a 2, y lo transforma en dos:
    //el signo (1 bit) y la magnitud (4 bits). 
    //Asigne las señales necesarias en su interfaz
    res_to_sign_mag inst1 (
        .result(),
        .sign(),
        .magnitude()
    );

    //Este es el módulo sign_2_seg
    //Toma el signo del resultado y los transforma en la señal que se enviará al display para representar el signo.
    //Ya sea todos los segmentos apagados (para signos positivos), o el segmento 6 encendido (para signos negativos).
    //Asigne las señales necesarias en su interfaz
    sign_2_seg inst2 (
        .sign(),
        .seg()
    );

    //Este es el modulo bin_2_seg
    //Toma la magnitud del resultado (un número binario entre 0 y 8)
    // y lo transforma en la señal que se enviará al display para representar la magnitud.
    //Asigne las señales necesarias en su interfaz
    bin_2_seg inst3 (
        .binary(),
        .segments()
    );

    //Estos son los multiplexores que se encargan de decidir qué enviar a cada uno de los display
    //Estos multiplexores se escribieron usando un parámetro para su ancho
    //Note que la sintaxis de la instancia es un poco distinta
    //Asigne las señales necesarias en su interfaz
    mux2x1_param #( .WIDTH(8) ) inst4  (
        .D0(), //Este es probablemente una constante
        .D1(),
        .sel(),
        .Y()
    );

    //Necesitamos dos muxes de estos
    mux2x1_param #( .WIDTH(8) ) inst5  (
        .D0(), //Este es probablemente una constante
        .D1(),
        .sel(),
        .Y()
    );


endmodule
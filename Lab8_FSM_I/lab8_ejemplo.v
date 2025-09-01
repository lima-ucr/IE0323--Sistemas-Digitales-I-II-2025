module lab8_ejemplo ( clk , rst , enter , in , out );
	// Las entradas son :
	// Reloj , reset , boton de enter y dato del switch
	input clk , rst , enter , in ;
	// La salida es el LED
	output reg out ;
	// Codificacion estados
	localparam S0 = 3'b000; 	localparam S1 = 3'b001;
	localparam S2 = 3'b010;		localparam S3 = 3'b011;
	localparam S4 = 3'b100;		localparam S5 = 3'b101;
	//Registros de estado actual y proximo estado	
	reg [ 2 : 0 ] state , next_state ;

	// Cuando llega un reset , o se presiona el boton
	always @ ( negedge enter , negedge rst ) begin
		// Si hay reset , vuelva a S0
		if (rst == 0) next_state = S0 ;
		// Sino , siga el diagrama de estados
		else begin
			case ( state )
				S0 : begin
					if (in == 1) next_state = S1 ;
					else next_state = S0 ;
				end
				S1 : begin
					if (in == 1) next_state = S1 ;
					else next_state = S2 ;
				end
				S2 : begin
					if (in == 1) next_state = S1 ;
					else next_state = S3 ;
				end
				S3 : begin
					if (in == 0) next_state = S0 ;
					else next_state = S4 ;
				end
				S4 : begin
					if (in == 0) next_state = S0 ;
					else next_state = S5 ;
				end
				S5 : next_state = state ;
				default: next_state = state ;
			endcase
		end
	end

	// Cada flanco positivo del reloj
	always @ ( posedge clk ) begin
		// Actualice el estado
		state <= next_state ;
		// Si esta en S5 , encienda el LED
		if ( state == S5 ) out <= 1;
		// Sino apaguelo
		else out <= 0;
	end

endmodule
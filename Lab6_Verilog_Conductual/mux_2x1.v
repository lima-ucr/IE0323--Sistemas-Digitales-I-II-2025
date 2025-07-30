module mux_2x1 (
    input A,
    input B,
    input S,
    output reg Y
);

    always @(*) begin
        if (S == 0) Y = A;
        else Y = B;
    end
    
endmodule
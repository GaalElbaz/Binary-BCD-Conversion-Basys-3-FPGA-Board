`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: two_bit_counter
// 
//////////////////////////////////////////////////////////////////////////////////


module two_bit_counter(
    input slow_clk,
    output logic [1:0] out
    );
    
    always_ff @(posedge slow_clk) begin
        out <= out + 2'b01;
        if(out == 2'b11) 
            out <= 2'b00;
    end
endmodule

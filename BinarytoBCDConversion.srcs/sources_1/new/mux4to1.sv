`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: mux4to1
// 
//////////////////////////////////////////////////////////////////////////////////


module mux4to1(
    input [1:0] sel,
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    output logic [3:0] Y
    );
    
    always_comb begin
        case(sel)
            2'b00: Y = A;
            2'b01: Y = B;
            2'b10: Y = C;
            2'b11: Y = D;
        endcase
    end
endmodule

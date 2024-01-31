`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Module Name: shift_add3
// Description: 
// Full desc. on git page
// 
//////////////////////////////////////////////////////////////////////////////////


module shift_add3(
    input [3:0] in,
    output logic [3:0] out
    );
    
    
    always_comb begin
        case(in)
        4'b0000: out = 0000; //0
        4'b0001: out = 0001; //1
        4'b0010: out = 0010 ;//2
        4'b0011: out = 0011; //3
        4'b0100: out = 0100; //4
        4'b0101: out = 1000; //5
        4'b0110: out = 1001; //6
        4'b0111: out = 1010; //7
        4'b1000: out = 1011; //8
        4'b1001: out = 1100; //9
        endcase
    end
endmodule

`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Module Name: decoder
//////////////////////////////////////////////////////////////////////////////////


module decoder(
    input [1:0] in,
    output logic [3:0] enableSeg
    );
    
    always_comb begin
    case(in)
        2'b00: enableSeg = 4'b1110;
        2'b01: enableSeg = 4'b1101;
        2'b10: enableSeg = 4'b1011;
        2'b11: enableSeg = 4'b0111;
    endcase
    end
endmodule

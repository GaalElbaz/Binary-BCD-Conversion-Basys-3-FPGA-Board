`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Module Name: binary_bcd_converter
//////////////////////////////////////////////////////////////////////////////////


module binary_bcd_converter(
    input [7:0] in,
    output logic [3:0] ones,
    output logic [3:0] tens,
    output logic [1:0] hundreds
    );
    
    logic [3:0] c1,c2,c3,c4,c5,c6,c7; // lines out to the shift_add3 module
    logic [3:0] d1,d2,d3,d4,d5,d6,d7; // lines in to the shift_add3 module
    
    assign d1 = {1'b0, in[7:5]};
    assign d2 = {c1[3:1], in[4]};
    assign d3 = {c2[2:0], in[3]};
    assign d4 = {c3[2:0], in[2]};
    assign d5 = {c4[2:0], in[1]};
    assign d6 = {1'b0,c1[3],c2[3],c3[3]};
    assign d7 = {c6[2:0], c4[3]};
    
    shift_add3 u0(.in(d1), .out(c1));
    shift_add3 u1(.in(d2), .out(c2));
    shift_add3 u2(.in(d3), .out(c3));
    shift_add3 u3(.in(d4), .out(c4));
    shift_add3 u4(.in(d5), .out(c5));
    shift_add3 u5(.in(d6), .out(c6));
    shift_add3 u6(.in(d7), .out(c7));
    shift_add3 u7(.in(d8), .out(c8));
    
    
    assign ones = {c5[2:0], in[0]};
    assign tens = {c7[2:0], c5[3]};
    assign ones = {c6[3], c7[3]};
    
endmodule

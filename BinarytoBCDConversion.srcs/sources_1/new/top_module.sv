`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: top_module
//////////////////////////////////////////////////////////////////////////////////


module top_module(
    input clk,
    input [7:0] sw,
    output [3:0] an,
    output [6:0] disp
    );
    
    localparam logic [3:0] zeros = 4'b0000;
    
    logic slowClk;
    logic [3:0] B,C,D,muxOut,disp;
    logic [1:0] countOut;
    logic [3:0] an;
    
    slow_clock           U0 (.clk_in(clk), .clk_out(slowClk));
    binary_bcd_converter U1(.in(sw), .ones(B), .tens(C), .hundreds(D));
    mux4to1              U2(.A(zeros), .B(B), .C(C), .D(D), .sel(countOut), .Y(muxOut));
    sevenSegDisp         U3(.in(muxOut), .disp(disp));
    two_bit_counter      U4(.slow_clk(slowClk), .out(countOut));
    decoder              U5(.in(countOut), .enableSeg(an));
  
endmodule

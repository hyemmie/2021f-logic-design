`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:22:53 10/13/2021 
// Design Name: 
// Module Name:    mux2_1_4bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux2_1_4bit(
    input [3:0] a,
    input [3:0] b,
    input selection,
    output [3:0] out
    );

	assign out = (selection == 1'b1) ? a : b;

endmodule

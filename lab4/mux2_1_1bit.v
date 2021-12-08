`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:18:55 10/13/2021 
// Design Name: 
// Module Name:    mux2_1_1bit 
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
module mux2_1_1bit(
    input a,
    input b,
    input selection,
    output out
    );

	assign out = (selection == 1'b1) ? a : b;

endmodule


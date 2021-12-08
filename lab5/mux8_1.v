`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:44:43 10/13/2021 
// Design Name: 
// Module Name:    mux8_1 
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
module mux8_1(
    input [3:0] i0,
    input [3:0] i1,
    input [3:0] i2,
    input [3:0] i3,
    input [3:0] i4,
    input [3:0] i5,
    input [3:0] i6,
    input [3:0] i7,
    output [3:0] y,
    input [2:0] sel
    );
	 
	 wire [3:0] higher_out;
	 wire [3:0] lower_out;
	 
	 mux4_1_4bit higher(i4, i5, i6, i7, sel[1:0], higher_out);
	 mux4_1_4bit lower(i0, i1, i2, i3, sel[1:0], lower_out);
	 mux2_1 final(lower_out, higher_out, sel[2], y);

endmodule

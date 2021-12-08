`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:48:23 10/13/2021 
// Design Name: 
// Module Name:    mux4_1_4bit 
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
module mux4_1_4bit(
    input [3:0] i0,
    input [3:0] i1,
    input [3:0] i2,
    input [3:0] i3,
    input [1:0] sel,
    output reg [3:0] y
    );
	 
	 always @(*)
	 begin
		 case (sel)
		  0: y = i0;
		  1: y = i1;
		  2: y = i2;
		  3: y = i3;
		 endcase
	 end
endmodule

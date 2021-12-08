`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:33:58 10/13/2021 
// Design Name: 
// Module Name:    mux4_1 
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
module mux4_1(
    input [1:0] sel,
    input d0,
    input d1,
    input d2,
    input d3,
    output reg y
    );
	 
	 always @(*)
	 begin
		 case (sel)
		  0: y = d0;
		  1: y = d1;
		  2: y = d2;
		  3: y = d3;
		 endcase
	 end

endmodule

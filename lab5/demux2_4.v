`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:07:02 10/13/2021 
// Design Name: 
// Module Name:    demux2_4 
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
module demux2_4(
    input a,
    output reg [3:0] y,
    input [1:0] sel
    );
	 
	 always @(*)
		begin
		  case(sel)
			0: y = a * 4'b0001;
			1: y = a * 4'b0010;
			2: y = a * 4'b0100;
			3: y = a * 4'b1000;
		  endcase
	 end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:42:35 10/15/2021 
// Design Name: 
// Module Name:    stringPatternCounter_Moore 
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
module stringPatternCounter_Moore(
    input clk,
    input in,
    input reset,
    output reg [3:0] out
    );
	 
	 initial begin
		out = 0;
	 end
	 
	 wire temp;
	 
	 recognizer_Moore rec(clk, in, reset, temp);
	 
	 always @ (*) begin
		if (temp == 1'b1) 
		begin 
			out = out + 1;
		end
	 end
	 
endmodule

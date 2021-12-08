`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:25:16 10/13/2021 
// Design Name: 
// Module Name:    blockCipher_4bit 
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
module blockCipher_4bit(
    input [3:0] p,
    input [3:0] k,
    output [3:0] c
    );
	 
	 wire [3:0] temp;
	 
	 assign temp = p ^ k;
	 assign c[3:0] = ((temp[3:0] & 4'b1010) >> 1) + ((temp[3:0] & 4'b0101) << 1);

endmodule

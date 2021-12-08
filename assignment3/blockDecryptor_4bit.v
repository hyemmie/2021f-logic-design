`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:14:37 10/13/2021 
// Design Name: 
// Module Name:    blockDecryptor_4bit 
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
module blockDecryptor_4bit(
    input [3:0] c,
    input [3:0] k,
    output [3:0] p
    );
	 
	wire [3:0] temp;
	
	assign temp[3:0] = ((c[3:0] & 4'b1010) >> 1) + ((c[3:0] & 4'b0101) << 1);
	assign p = temp ^ k;

endmodule

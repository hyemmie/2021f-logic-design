`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:32:19 10/13/2021 
// Design Name: 
// Module Name:    blockCipherCBC 
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
module blockCipherCBC(
    input [7:0] p,
    input [3:0] k,
    input [3:0] iv,
    output [7:0] c
    );
	 
	 wire [7:0] temp;
	 
	 assign temp[7:4] = p[7:4] ^ iv[3:0];
	 assign temp[3:0] = p[3:0] ^ c[7:4];
	
	 blockCipher_4bit higher(temp[7:4], k[3:0], c[7:4]);
	 blockCipher_4bit lower(temp[3:0], k[3:0], c[3:0]);

endmodule

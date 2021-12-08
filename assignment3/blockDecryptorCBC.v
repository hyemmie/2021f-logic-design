`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:00:10 10/13/2021 
// Design Name: 
// Module Name:    blockDecryptorCBC 
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
module blockDecryptorCBC(
    input [7:0] c,
    input [3:0] k,
    input [3:0] iv,
    output [7:0] p
    );
	 
	 wire [7:0] reposition;
	 wire [7:0] temp;
	 	
	 blockDecryptor_4bit higher(c[7:4], k[3:0], temp[7:4]);
	 blockDecryptor_4bit lower(c[3:0], k[3:0], temp[3:0]);
	
//	 assign reposition[7:0] = ((temp[7:0] & 8'b10101010) >> 1) + ((temp[7:0] & 8'b01010101) << 1);
	 assign p[7:4] = temp[7:4] ^ iv[3:0];
	 assign p[3:0] = c[7:4] ^ temp[3:0];


endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:43:01 10/14/2021 
// Design Name: 
// Module Name:    SignBitDecoder 
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
module SignBitDecoder(
    input [3:0] sign,
    output [6:0] display
    );
	
	assign display = (sign == 4'b0001)? 7'b0000001 : 7'b0000000;

endmodule

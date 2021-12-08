`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:56:04 10/14/2021 
// Design Name: 
// Module Name:    Operation0 
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
module Operation0(
	 input signX,
	 input [3:0] operandX,
	 input signY,
    input [3:0] operandY,
    output [3:0] d1,
    output [3:0] d2,
    output [3:0] d3,
    output [3:0] d4,
    output [3:0] d5,
    output [3:0] d6
    );
	 
		assign d1 = (signX == 1'b1 && operandX > 0)? 4'b0001 : 4'b0000;
		assign d2 = 4'b0000;
		assign d3 = operandX;
		assign d4 = (signY == 1'b1 && operandY > 0) ? 4'b0001 : 4'b0000;
		assign d5 = 4'b0000;
		assign d6 = operandY;  

endmodule

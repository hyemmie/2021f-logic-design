`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:00:16 10/14/2021 
// Design Name: 
// Module Name:    Operation2 
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
module Operation2(
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
	 
	 wire [4:0] temp;
	 assign d1 = 4'b0000;
	 assign d2 = 4'b0000;
	 assign d3 = (signX == signY) ? signX : (operandX > operandY) ? signX : signY;
	 assign temp = (signX == signY) ? operandX + operandY : (operandX > operandY) ? operandX - operandY : operandY - operandX;
	 assign d4 = 4'b0000;
	 assign d5 = temp[4];
	 assign d6 = temp[3:0];
endmodule

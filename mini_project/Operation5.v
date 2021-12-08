`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:02:25 10/14/2021 
// Design Name: 
// Module Name:    Operation5 
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
module Operation5(
    input direction,
    input [5:0] X,
    input [2:0] shamt,
    output [3:0] d1,
    output [3:0] d2,
    output [3:0] d3,
    output [3:0] d4,
    output [3:0] d5,
    output [3:0] d6
    );
	 
	 wire [5:0] temp;
	 assign temp = (direction == 1'b1) ? X << shamt : X >> shamt;
	 assign d1 = temp[5];
	 assign d2 = temp[4];
	 assign d3 = temp[3];
	 assign d4 = temp[2];
	 assign d5 = temp[1];
	 assign d6 = temp[0];

endmodule

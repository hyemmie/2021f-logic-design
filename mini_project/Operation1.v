`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:25:38 10/14/2021 
// Design Name: 
// Module Name:    Operation1 
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
module Operation1(
    input [9:0] binary,
    output [3:0] d1,
    output [3:0] d2,
    output [3:0] d3,
    output [3:0] d4,
    output [3:0] d5,
    output [3:0] d6
    );
	 
	 assign d1 = binary[5];
	 assign d2 = binary[4];
	 assign d3 = binary[3];
	 assign d4 = binary[2];
	 assign d5 = binary[1];
	 assign d6 = binary[0];


endmodule

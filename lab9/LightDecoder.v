`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:36:24 10/15/2021 
// Design Name: 
// Module Name:    LightDecoder 
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
module LightDecoder(
    input [2:0] highway,
    input [2:0] street,
    output red_highway,
    output yellow_highway,
    output green_highway,
    output red_street,
    output yellow_street,
    output green_street
    );
	 
	 assign red_highway = highway[2];
	 assign yellow_highway = highway[1];
	 assign green_highway = highway[0];
	 assign red_street = street[2];
	 assign yellow_street = street[1];
	 assign green_street = street[0]; 

endmodule

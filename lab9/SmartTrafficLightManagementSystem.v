`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:02:11 10/15/2021 
// Design Name: 
// Module Name:    SmartTrafficLightManagementSystem 
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
module SmartTrafficLightManagementSystem(
    input clk,
    input reset,
    input C_Async,
	 output red_highway,
    output yellow_highway,
    output green_highway,
    output red_street,
    output yellow_street,
    output green_street,
	 output [6:0] counting_1,
	 output [6:0] counting_2
    );
	 
	 wire ST, TS, TL;
	 wire C_Sync;
	 wire [2:0] street, highway;
	 wire [4:0] countNumber;
	 wire [4:0] decimalDigit, oneDigit;
	 
	 assign decimalDigit = countNumber / 10;
	 assign oneDigit = countNumber % 10;
	 
	 CarSensor car(clk, reset, C_Async, C_Sync);
	 TimeCounter timer(clk, reset, ST, TS, TL, countNumber);
	 SmartTrafficLightState state(clk, reset, TS, TL, C_Sync, ST, street, highway);
	 LightDecoder light(highway, street, red_highway, yellow_highway, green_highway, red_street, yellow_street, green_street);
	 BCDto7SegmentDecoder decimal(decimalDigit[3:0], counting_1);
	 BCDto7SegmentDecoder one(oneDigit[3:0], counting_2);

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:42:40 10/15/2021 
// Design Name: 
// Module Name:    top 
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
module top(
    input clk,
    input push_switch1,
    input push_switch2,
    input push_switch3,
    input push_switch4,
    input push_switch5,
    input push_switch6,

    output [6:0] segment1,
    output [6:0] segment2,
    output [6:0] segment3,
    output [6:0] segment4,
    output [6:0] segment5,
    output [6:0] segment6,
    
    input dip_switch1,
    input dip_switch2,
    input dip_switch3,
    input dip_switch4,
    input dip_switch5,
    input dip_switch6,
    input dip_switch7,
    input dip_switch8,
    input dip_switch9,
    input dip_switch10,

    output led1_red,
    output led2_yellow,	
    output led3_green,
    output led4_red,
    output led5_yellow,
    output led6_green
);

// Instantiate your design module here
// Example) Your_module uut( .clk(clk), .XX(led1_red) .YY(led2_yellow) ....);

	SmartTrafficLightManagementSystem uut(
	.clk(clk),
	.reset(push_switch1),
	.C_Async(dip_switch1),
	.red_highway(led1_red),
	.yellow_highway(led2_yellow),
	.green_highway(led3_green),
	.red_street(led4_red),
	.yellow_street(led5_yellow),
	.green_street(led6_green),
	.counting_1(segment1),
	.counting_2(segment2)
	);


	endmodule
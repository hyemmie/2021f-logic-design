`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:57:53 10/14/2021 
// Design Name: 
// Module Name:    rsLatch3input 
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
module rsLatch3input(
    input R,
    input S,
	 input A,
    output Q,
    output Qn
    );
	 
	 assign Q = ~(R|Qn|A);
	 assign Qn = ~(S|Q);


endmodule

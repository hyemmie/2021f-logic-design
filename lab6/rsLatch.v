`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:14:55 10/14/2021 
// Design Name: 
// Module Name:    rsLatch 
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
module rsLatch(
    input R,
    input S,
    output Q,
    output Qn
    );
	 
	 assign Q = ~(R|Qn);
	 assign Qn = ~(S|Q);

endmodule

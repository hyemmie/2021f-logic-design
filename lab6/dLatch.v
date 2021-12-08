`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:16:22 10/14/2021 
// Design Name: 
// Module Name:    dLatch 
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
module dLatch(
    input D,
    input E,
    output Q,
	 output Qn
    );
	 
	 rsLatch rs(~D&E, D&E, Q, Qn);
		
endmodule

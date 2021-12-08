`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:18:02 10/14/2021 
// Design Name: 
// Module Name:    dFlipFlop 
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
module dFlipFlop(
    input D,
    input CLK,
    output Q,
	 output Qn
    );
	 
	 wire R;
	 wire S;
	 wire topQ;
	 wire bottomQn;
	 
	rsLatch top(bottomQn, CLK, topQ, R);
	rsLatch3input bottom(R, D, CLK, S, bottomQn);
	rsLatch final(R, S, Q, Qn);

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:43:00 10/15/2021 
// Design Name: 
// Module Name:    CounterByKmap 
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
module CounterByKmap(
    input CLK,
    output [2:0] out
    );
	 
	 reg [2:0] state = 3'b111;
	 
	 always @ (posedge CLK) begin
		state[2] <= state[0];
		state[1] <= (~state[1] | (~state[0] & ~state[2]));
		state[0] <= state[1] & ~state[2];
	 end
	 
	 assign out = state;

endmodule

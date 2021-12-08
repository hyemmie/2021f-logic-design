`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:57:03 10/15/2021 
// Design Name: 
// Module Name:    CarSensor 
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
module CarSensor(
    input clk,
    input reset,
    input C_async,
    output C_sync
    );
	 
	 parameter zero = 1'b0;
	 parameter one = 1'b1;
	 
	 reg state = zero;
	 
	 always @ (posedge clk or posedge reset) begin
		if (reset) state <= zero;
		else state <= C_async;
	 end
	 
	 assign C_sync = state;


endmodule

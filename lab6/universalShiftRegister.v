`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:55 10/14/2021 
// Design Name: 
// Module Name:    universalShiftRegister 
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
module universalShiftRegister(
    input clk,
    input clr,
    input s0,
    input s1,
    input left_in,
    input right_in,
    input [3:0] pa_in,
    output reg [3:0] pa_out,
    output reg left_out,
    output reg right_out
    );
	 
	 reg [3:0] sreg;
	 
	 initial begin
		pa_out = 4'b0000;
		left_out = 0;
		right_out = 0;
	 end
	 
	 always @ (posedge clk) begin
	 // hold
		if (s0 == 1'b0 && s1 == 1'b0 && clr == 1'b0) begin
			pa_out <= pa_out;
		end
	 // load new input
		else if (s0 == 1'b1 && s1 == 1'b1 && clr == 1'b0) begin
			pa_out <= pa_in;
		end
	 // shift left
		else if (s0 == 1'b1 && s1 == 1'b0 && clr == 1'b0) begin
			left_out <= pa_out[3];
			pa_out <= {pa_out[2:0], right_in};
		end
	 // shift right
		else if (s0 == 1'b0 && s1 == 1'b1 && clr == 1'b0) begin
			right_out <= pa_out[0];
			pa_out <= {left_in, pa_out[3:1]};
		end
    // clear
		else begin
			left_out <= 1'b0;
			right_out <= 1'b0;
			pa_out <= 4'b0000;
		end
		
//		pa_out <= sreg;

	 end



endmodule

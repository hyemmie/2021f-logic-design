`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:19:37 10/14/2021 
// Design Name: 
// Module Name:    shift4bit 
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
module shift4bit(
    input clk,
    input s_in,
    input mode,
    input [3:0] p_in,
    output out
    );
	 
	 reg [3:0] sreg;
	 
	 always @ (posedge clk)
	 begin
		if (mode == 1'b0)
		begin
			sreg <= {s_in, sreg[3:1]};
		end
		else
		begin
			sreg <= p_in;
		end
		out <= sreg[0];
	 
	 end


endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:13:55 10/15/2021 
// Design Name: 
// Module Name:    recognizer_Mealy 
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
module recognizer_Mealy(
    input clk,
    input in,
    input reset,
    output reg out
    );
	 
	 parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100;
	 reg [2:0] state, next = 3'b000;

	 always @ (posedge clk or posedge reset)
	 begin
		if (reset) state <= S0;
		else state <= next;
	 end
	 
	 always @ (*)
	 begin
		out = 0;
		case (state)
		S0: 
			if (in == 1'b1) next = S2;
			else next = S0;
		S1:
			if (in == 1'b1) next = S1;
			else next = S3;
		S2:
			if (in == 1'b1) next = S1;
			else 
			begin 
				next = S3;
				out = 1;
			end
		S3:
			if (in == 1'b1) next = S2;
			else next = S4;
		S4:
			next = S4;
		endcase
	 end

endmodule

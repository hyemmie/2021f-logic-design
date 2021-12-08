`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:13:22 10/15/2021 
// Design Name: 
// Module Name:    recognizer_Moore 
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
module recognizer_Moore(
    input clk,
    input in,
    input reset,
    output reg out
    );
	 
	 initial begin 
		out = 1'b0;
	 end
	 
	 parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100, S5 = 3'b101;
	 reg [2:0] state, next = 3'b000;

	 always @ (posedge clk or posedge reset)
	 begin
		if (reset) state <= S0;
		else state <= next;
	 end
	 
	 always @ (*)
	 begin
		case (state)
		S0: 
			if (in == 1'b1) next = S1;
			else next = S0;
		S1:
			if (in == 1'b1) next = S3;
			else next = S2;
		S2:
			if (in == 1'b1) next = S1;
			else next = S5;
		S3:
			if (in == 1'b1) next = S3;
			else next = S4;
		S4:
			if (in == 1'b1) next = S1;
			else next = S0;
		S5:
			next = S5;
		endcase
 	 end
	 
	 always @ (state)
	 begin
		case (state)
		S0: out = 0;
		S1: out = 0;
		S2: out = 1;
		S3: out = 0;
		S4: out = 0;
		S5: out = 0;
		endcase
	 end

endmodule

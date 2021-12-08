`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:03:46 10/15/2021 
// Design Name: 
// Module Name:    SmartTrafficLightState 
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
module SmartTrafficLightState(
    input clk,
    input reset,
    input TS,
    input TL,
	 input C_Sync,
    output reg ST,
    output reg [2:0] street,
    output reg [2:0] highway
    );
	 
	 parameter HG = 2'b11, SG = 2'b01, HY = 2'b10, SY = 2'b00;
	 reg [1:0] state, next; 
	 
	 initial begin
		state = HG;
		street = 3'b100;
		highway = 3'b001;
	 end
	 
	 always @ (posedge clk or posedge reset)
	 begin
		if (reset) state <= HG;
		else state <= next;
	 end
	 
	 always @ (*)
	 begin
		ST = 1'b0;
		case (state)
		HG:
			if (TL == 1'b1 && C_Sync == 1'b1) begin
				next = HY;
				street = 3'b010;
				highway = 3'b010;
				ST = 1'b1;
			end
			else next = HG;
		SG : 
			if (TL == 1'b1 || C_Sync == 1'b0) begin
				next = SY;
				street = 3'b010;
				highway = 3'b010;
				ST = 1'b1;
			end
			else next = SG;
		HY:
			if (TS == 1'b1) begin
				next = SG;
				street = 3'b001;
				highway = 3'b100;				
				ST = 1'b1;
			end
			else next = HY;
		SY:
			if (TS == 1'b1) begin
				next = HG;
				street = 3'b100;
				highway = 3'b001;
				ST = 1'b1;
			end
			else next = SY;
		endcase
	 end

endmodule

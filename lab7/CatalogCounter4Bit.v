`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:15:49 10/15/2021 
// Design Name: 
// Module Name:    CatalogCounter4Bit 
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
module CatalogCounter4Bit(
    input P,
    input T,
    input CLK,
    input [3:0] data,
    input LOAD,
    input CLR,
    output RCO,
    output [3:0] Qdata
    );
	 
	 reg [3:0] state = 4'b0000;
	 reg srco = 1'b0;
	 
	 always @ (posedge CLK) begin
		if (CLR == 1'b1) begin
			state <= 4'b0000;
			srco <= 1'b0;
		end
		else if (LOAD == 1'b1) begin 
			state <= data;
				if (data == 4'b1111) begin
					srco <= 1'b1;
				end
				else begin
					srco <= 1'b0;
				end
		end
		else if (P == 1'b1 & T == 1'b1) begin
			if (state == 4'b1110) begin
				srco <= 1'b1;
				state <= state + 1;
			end
			else
				srco <= 1'b0;
				state <= state + 1;
			begin
			end
		end
		else begin
			srco <= srco;
			state <= state;
		end
	 end
	 
	 assign Qdata = state;
	 assign RCO = srco;


endmodule

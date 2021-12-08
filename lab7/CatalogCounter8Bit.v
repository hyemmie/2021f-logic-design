`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:39:47 10/15/2021 
// Design Name: 
// Module Name:    CatalogCounter8Bit 
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
module CatalogCounter8Bit(
	 input P,
	 input T,
    input CLK,
    input [7:0] data,
    input LOAD,
    input CLR,
    output RCO,
    output [7:0] Qdata
    );
	 
	 wire low_rco;
	 wire high_rco;
	 reg total_rco = 1'b0;
	 reg high_clr;
	 CatalogCounter4Bit lower(P, T, CLK, data[3:0], LOAD, CLR, low_rco, Qdata[3:0]);
	 CatalogCounter4Bit higher(low_rco, low_rco, CLK, data[7:4], LOAD, high_clr, high_rco, Qdata[7:4]);

	always @ (posedge CLK) begin
		if (Qdata[7:0] == 8'b11111110 & {P, T, LOAD, CLR} == 4'b1100) begin
			total_rco <= 1'b1;
			high_clr <= 1;
		end
		else begin
			total_rco <= 1'b0;
			high_clr <= CLR;
		end
	end
	
	 assign RCO = total_rco;
	 
endmodule

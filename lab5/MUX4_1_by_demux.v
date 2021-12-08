`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:19:55 10/13/2021 
// Design Name: 
// Module Name:    mux4_1_ 
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
module mux4_1_by_demux(
    input [3:0] i,
    input [1:0] s,
    output y
    );
	 
	 wire [3:0] d_out;
	 
	 demux2_4 demux(1'b1, d_out, s);
	 tristate tristate0(d_out[0], i[0], y);
	 tristate tristate1(d_out[1], i[1], y);
	 tristate tristate2(d_out[2], i[2], y);
	 tristate tristate3(d_out[3], i[3], y);


endmodule

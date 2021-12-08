`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:40:33 10/13/2021 
// Design Name: 
// Module Name:    XOR_3 
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
module XOR_3(
    input a,
    input b,
    input c,
    output z
    );
	 
	 wire inv_c;
	 wire [1:0] sel;
	 
	 assign inv_c = ~c;
	 assign sel = (a * 2'd2) + (b * 1'd1);
	 
	 mux4_1 func(sel, c, inv_c, inv_c, c,z);

endmodule

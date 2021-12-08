`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:14:29 10/13/2021 
// Design Name: 
// Module Name:    tristate 
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
module tristate(
    input oe,
    input a,
    output reg y
    );
	 
	 always @(*)
		begin
		 case (oe)
			0 : y = 1'bZ;
			1 : y = a;
		 endcase
		end

endmodule

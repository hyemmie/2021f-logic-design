`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:55:49 10/13/2021
// Design Name:   XOR_3
// Module Name:   /home/ise/lab5/XOR_3_test.v
// Project Name:  lab5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: XOR_3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module XOR_3_test;

	// Inputs
	reg [2:0] in;
	// Outputs
	wire z;
	// Instantiate the Unit Under Test (UUT)
	XOR_3 uut (
		.a(in[2]), 
		.b(in[1]), 
		.c(in[0]), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		#100;
		repeat (7) begin
			#100;
			in = in+1;
		end
	end
      
endmodule


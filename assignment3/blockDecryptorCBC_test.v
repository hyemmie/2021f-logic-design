`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:11:06 10/13/2021
// Design Name:   blockDecryptorCBC
// Module Name:   /home/ise/assignment4/blockDecryptorCBC_test.v
// Project Name:  assignment4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: blockDecryptorCBC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module blockDecryptorCBC_test;

	// Inputs
	reg [7:0] c;
	reg [3:0] k;
	reg [3:0] iv;

	// Outputs
	wire [7:0] p;

	// Instantiate the Unit Under Test (UUT)
	blockDecryptorCBC uut (
		.c(c), 
		.k(k), 
		.iv(iv), 
		.p(p)
	);

	initial begin
		// Initialize Inputs
		k = 4'd11;
		iv = 4'd9;
		c = 8'd25;

		// Wait 100 ns for global reset to finish
		#100;
		c = 8'd145;
		
		#100;
		c = 8'd91;

		#100;
		c = 8'd108;		
		
		#100
		c = 8'd229;
	
		


	end
      
endmodule


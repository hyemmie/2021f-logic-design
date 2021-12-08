`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:44:16 10/13/2021
// Design Name:   blockCipherCBC
// Module Name:   /home/ise/assignment4/blockCipherCBC_test.v
// Project Name:  assignment4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: blockCipherCBC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module blockCipherCBC_test;

	// Inputs
	reg [7:0] p;
	reg [3:0] k;
	reg [3:0] iv;

	// Outputs
	wire [7:0] c;

	// Instantiate the Unit Under Test (UUT)
	blockCipherCBC uut (
		.p(p), 
		.k(k), 
		.iv(iv), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		// Initialize Inputs
		k = 4'd11;
		iv = 4'd9;
		p = 8'd12;

		// Wait 100 ns for global reset to finish
		#100;
		p = 8'd64;
		
		#100;
		p = 8'd137;

		#100;
		p = 8'd177;		
		
		#100
		p = 8'd255;

	end
      
endmodule


`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:27:45 10/13/2021
// Design Name:   blockCipher_4bit
// Module Name:   /home/ise/assignment4/blockCipher_4bit_test.v
// Project Name:  assignment4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: blockCipher_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module blockCipher_4bit_test;

	// Inputs
	reg [3:0] p;
	reg [3:0] k;

	// Outputs
	wire [3:0] c;

	// Instantiate the Unit Under Test (UUT)
	blockCipher_4bit uut (
		.p(p), 
		.k(k), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		p = 4'b1101;
		k = 4'b1011;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


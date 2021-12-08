`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:19:09 10/13/2021
// Design Name:   blockDecryptor_4bit
// Module Name:   /home/ise/assignment4/blockDecryptor_4bit_test.v
// Project Name:  assignment4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: blockDecryptor_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module blockDecryptor_4bit_test;

	// Inputs
	reg [3:0] c;
	reg [3:0] k;

	// Outputs
	wire [3:0] p;

	// Instantiate the Unit Under Test (UUT)
	blockDecryptor_4bit uut (
		.c(c), 
		.k(k), 
		.p(p)
	);

	initial begin
		// Initialize Inputs
		c = 4'b1001;
		k = 4'b1011;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


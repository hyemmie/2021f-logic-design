`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:36:35 10/13/2021
// Design Name:   mux4_1
// Module Name:   /home/ise/lab5/mux4_1_test.v
// Project Name:  lab5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux4_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux4_1_test;

	// Inputs
	reg [1:0] sel;
	reg d0;
	reg d1;
	reg d2;
	reg d3;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux4_1 uut (
		.sel(sel), 
		.d0(d0), 
		.d1(d1), 
		.d2(d2), 
		.d3(d3), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		sel = 0;
		d0 = 0;
		d1 = 0;
		d2 = 0;
		d3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


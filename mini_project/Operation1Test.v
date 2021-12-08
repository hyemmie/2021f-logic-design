`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:21:12 10/14/2021
// Design Name:   Operation1
// Module Name:   /home/ise/mini_project/Operation1Test.v
// Project Name:  mini_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Operation1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Operation1Test;

	// Inputs
	reg [9:0] binary;

	// Outputs
	wire [3:0] d1;
	wire [3:0] d2;
	wire [3:0] d3;
	wire [3:0] d4;
	wire [3:0] d5;
	wire [3:0] d6;

	// Instantiate the Unit Under Test (UUT)
	Operation1 uut (
		.binary(binary), 
		.d1(d1), 
		.d2(d2), 
		.d3(d3), 
		.d4(d4), 
		.d5(d5), 
		.d6(d6)
	);

	initial begin
		// Initialize Inputs
		binary = 10'b0000010111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


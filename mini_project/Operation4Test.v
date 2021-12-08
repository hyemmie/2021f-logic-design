`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:09:02 10/14/2021
// Design Name:   Operation4
// Module Name:   /home/ise/mini_project/Operation4Test.v
// Project Name:  mini_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Operation4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Operation4Test;

	// Inputs
	reg [5:0] operandX;

	// Outputs
	wire [3:0] d1;
	wire [3:0] d2;
	wire [3:0] d3;
	wire [3:0] d4;
	wire [3:0] d5;
	wire [3:0] d6;

	// Instantiate the Unit Under Test (UUT)
	Operation4 uut (
		.operandX(operandX), 
		.d1(d1), 
		.d2(d2), 
		.d3(d3), 
		.d4(d4), 
		.d5(d5), 
		.d6(d6)
	);

	initial begin
		// Initialize Inputs
		operandX = 6'b010111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


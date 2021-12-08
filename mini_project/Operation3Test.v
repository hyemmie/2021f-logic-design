`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:17:35 10/14/2021
// Design Name:   Operation3
// Module Name:   /home/ise/mini_project/Operation3Test.v
// Project Name:  mini_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Operation3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Operation3Test;

	// Inputs
	reg signX;
	reg signY;
	reg [3:0] operandX;
	reg [3:0] operandY;

	// Outputs
	wire [3:0] d1;
	wire [3:0] d2;
	wire [3:0] d3;
	wire [3:0] d4;
	wire [3:0] d5;
	wire [3:0] d6;

	// Instantiate the Unit Under Test (UUT)
	Operation3 uut (
		.signX(signX), 
		.signY(signY), 
		.operandX(operandX), 
		.operandY(operandY), 
		.d1(d1), 
		.d2(d2), 
		.d3(d3), 
		.d4(d4), 
		.d5(d5), 
		.d6(d6)
	);

	initial begin
		// Initialize Inputs
		signX = 0;
		signY = 1;
		operandX = 4'b1111;
		operandY = 4'b1111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


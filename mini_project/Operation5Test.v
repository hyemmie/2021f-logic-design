`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:39:47 10/14/2021
// Design Name:   Operation5
// Module Name:   /home/ise/mini_project/Operation5Test.v
// Project Name:  mini_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Operation5
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Operation5Test;

	// Inputs
	reg direction;
	reg [5:0] X;
	reg [2:0] shamt;

	// Outputs
	wire [3:0] d1;
	wire [3:0] d2;
	wire [3:0] d3;
	wire [3:0] d4;
	wire [3:0] d5;
	wire [3:0] d6;

	// Instantiate the Unit Under Test (UUT)
	Operation5 uut (
		.direction(direction), 
		.X(X), 
		.shamt(shamt), 
		.d1(d1), 
		.d2(d2), 
		.d3(d3), 
		.d4(d4), 
		.d5(d5), 
		.d6(d6)
	);

	initial begin
		// Initialize Inputs
		direction = 1'b0;
		X = 6'b110100;
		shamt = 3'b010;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


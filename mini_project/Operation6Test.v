`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:53:41 10/14/2021
// Design Name:   Operation6
// Module Name:   /home/ise/mini_project/Operation6Test.v
// Project Name:  mini_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Operation6
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Operation6Test;

	// Inputs
	reg [4:0] operandX;
	reg hidden;

	// Outputs
	wire [3:0] d1;
	wire [3:0] d2;
	wire [3:0] d3;
	wire [3:0] d4;
	wire [3:0] d5;
	wire [3:0] d6;

	// Instantiate the Unit Under Test (UUT)
	Operation6 uut (
		.hidden(hidden),
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
		operandX = 5'b10100;
		hidden = 1'b0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


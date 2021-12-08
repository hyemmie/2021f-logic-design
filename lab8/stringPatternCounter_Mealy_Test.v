`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:47:59 10/15/2021
// Design Name:   stringPatternCounter_Mealy
// Module Name:   /home/ise/lab8/stringPatternCounter_Mealy_Test.v
// Project Name:  lab8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: stringPatternCounter_Mealy
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module stringPatternCounter_Mealy_Test;

	// Inputs
	reg clk;
	reg in;
	reg reset;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	stringPatternCounter_Mealy uut (
		.clk(clk), 
		.in(in), 
		.reset(reset), 
		.out(out)
	);

		initial begin
		// Initialize Inputs
		clk = 0;
		in = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish

		#5 in = 0;
		#20 in = 1;
		#20 in = 0;
		#20 in = 1;
		#20 in = 1;
		#20 in = 1;
		#20 in = 0;
		#20 in = 1;
		#20 in = 0;
		#20 in = 0;
		#20 in = 1;
		#20 in = 0;

		#20 reset = 1;
		#20 reset = 0;
		#20 in = 0;
		#20 in = 1;
		#20 in = 0;

	end

	always begin
	#10 clk = 1;
	#10 clk = 0;
	end
      
endmodule



`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:15:52 10/15/2021
// Design Name:   recognizer_Moore
// Module Name:   /home/ise/lab8/recognizer_Moore_Test.v
// Project Name:  lab8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: recognizer_Moore
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module recognizer_Moore_Test;

	// Inputs
	reg clk;
	reg in;
	reg reset;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	recognizer_Moore uut (
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

	always
	begin
		#10 clk = 1;
		#10 clk = 0;
	end


      
endmodule


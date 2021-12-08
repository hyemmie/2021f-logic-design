`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:47:26 10/15/2021
// Design Name:   CounterByKmap
// Module Name:   /home/ise/lab7/CounterByKmapTest.v
// Project Name:  lab7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CounterByKmap
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CounterByKmapTest;

	// Inputs
	reg CLK;

	// Outputs
	wire [2:0] out;

	// Instantiate the Unit Under Test (UUT)
	CounterByKmap uut (
		.CLK(CLK), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		// Add stimulus here

	end
      
endmodule


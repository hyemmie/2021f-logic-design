`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:00:52 10/15/2021
// Design Name:   CounterByCase
// Module Name:   /home/ise/lab7/CounterByCaseTest.v
// Project Name:  lab7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CounterByCase
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CounterByCaseTest;

	// Inputs
	reg CLK;

	// Outputs
	wire [2:0] out;

	// Instantiate the Unit Under Test (UUT)
	CounterByCase uut (
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
		
        
		// Add stimulus here

	end
      
endmodule


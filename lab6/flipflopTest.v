`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:01:33 10/14/2021
// Design Name:   dFlipFlop
// Module Name:   /home/ise/lab6/flipflopTest.v
// Project Name:  lab6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dFlipFlop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module flipflopTest;

	// Inputs
	reg D;
	reg CLK;

	// Outputs
	wire Q;
	wire Qn;

	// Instantiate the Unit Under Test (UUT)
	dFlipFlop uut (
		.D(D), 
		.CLK(CLK), 
		.Q(Q), 
		.Qn(Qn)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		CLK = 0;
		#50;
		
		D = 1;
		CLK = 1;
		#50;
		
		CLK = 0;
		#50;
		
		D = 0;
		CLK = 1;
		#50;
		
		CLK = 0;
		#50;
		
		D = 1;
		CLK = 1;
		#50;
		
		CLK = 0;
		#50;

		CLK = 1;
		#50;
		
		D = 0;		
		CLK = 0;
		#50;
		
		CLK = 1;
		#50;
		
		CLK = 0;
		D = 1;

        
		// Add stimulus here

	end
      
endmodule


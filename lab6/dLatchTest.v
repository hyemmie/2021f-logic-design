`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:41:54 10/14/2021
// Design Name:   dLatch
// Module Name:   /home/ise/lab6/dLatchTest.v
// Project Name:  lab6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dLatch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dLatchTest;

	// Inputs
	reg D;
	reg E;

	// Outputs
	wire Q;
	wire Qn;

	// Instantiate the Unit Under Test (UUT)
	dLatch uut (
		.D(D), 
		.E(E), 
		.Q(Q), 
		.Qn(Qn)
	);

	initial begin
		// Initialize Inputs
		
		D = 0;
		E = 1;
		#100;
		
		D = 1;
		E = 0;
		#100;
		
		D = 0;
		E = 0;
		#100;
		
		D = 1;
		E = 1;
		#100;
		
		D = 1;
		E = 0;
		#100;
		
		D = 0;
		E = 0;
		#100;
		
		D = 0;
		E = 1;
		#100;
        
		// Add stimulus here

	end
      
endmodule


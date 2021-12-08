`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:34:03 10/14/2021
// Design Name:   dLatchAndFlipFlop
// Module Name:   /home/ise/lab6/dLFFTest.v
// Project Name:  lab6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dLatchAndFlipFlop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dLFFTest;

	// Inputs
	reg D;
	reg CLK;

	// Outputs
	wire Qlatch;
	wire Qflipflop;

	// Instantiate the Unit Under Test (UUT)
	dLatchAndFlipFlop uut (
		.D(D), 
		.CLK(CLK), 
		.Qlatch(Qlatch), 
		.Qflipflop(Qflipflop)
	);

	initial begin	

	D = 0;

	CLK = 0;

	#9 D = 1;

	#5 D = 0;

	#5 D = 1;

	#5 D = 0;

	#10 D = 1;

	#5 D = 0;

	#10 D = 1;

	#5 D = 0;      

end

always begin

	#10 CLK = 1;

	#10 CLK = 0;

end


      
endmodule


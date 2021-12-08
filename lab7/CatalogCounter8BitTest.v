`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:42:02 10/15/2021
// Design Name:   CatalogCounter8Bit
// Module Name:   /home/ise/lab7/CatalogCounter8BitTest.v
// Project Name:  lab7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CatalogCounter8Bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CatalogCounter8BitTest;

	// Inputs
	reg P;
	reg T;
	reg CLK;
	reg [7:0] data;
	reg LOAD;
	reg CLR;

	// Outputs
	wire RCO;
	wire [7:0] Qdata;

	// Instantiate the Unit Under Test (UUT)
	CatalogCounter8Bit uut (
	.P(P),
	.T(T),
		.CLK(CLK), 
		.data(data), 
		.LOAD(LOAD), 
		.CLR(CLR), 
		.RCO(RCO), 
		.Qdata(Qdata)
	);

	initial begin

	P = 1;
	T = 1;
	CLK = 0;
	data = 14;
	LOAD = 0;
	CLR = 0;
	#45
	LOAD = 1;
	CLR = 1;
	#10;
	LOAD = 0;
	CLR = 0;
	#25 LOAD = 1;
	#35 LOAD = 0;

	#10 data = 254;
	#35 LOAD = 1;
	#15 LOAD = 0;
end

always begin
	#10 CLK = 1;
	#10 CLK = 0;
end

      
endmodule


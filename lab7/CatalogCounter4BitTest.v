`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:33:13 10/15/2021
// Design Name:   CatalogCounter4Bit
// Module Name:   /home/ise/lab7/CatalogCounter4BitTest.v
// Project Name:  lab7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CatalogCounter4Bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CatalogCounter4BitTest;

	// Inputs
	reg P;
	reg T;
	reg CLK;
	reg [3:0] data;
	reg LOAD;
	reg CLR;

	// Outputs
	wire RCO;
	wire [3:0] Qdata;

	// Instantiate the Unit Under Test (UUT)
	CatalogCounter4Bit uut (
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
	#100;
	#30;
	LOAD = 1;
	CLR = 1;
	#30;
	LOAD = 0;
	CLR = 0;
	#300 LOAD = 1;
	#360 LOAD = 0;

end

always begin
	#50 CLK = 1;
	#50 CLK = 0;
end


      
endmodule


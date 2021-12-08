//////////////////////////////////////////////////////////////////////////////////
// Company: SNU Computer ARchitecture & Embedded System Lab
// Engineer: Hoyoon Jun
// 
// Create Date:    11:50:19 09/30/2015 
// Design Name:    Full adder test fixture for Logic Design 2015
// Module Name:    LOGIC_FullAdder_tb
// Description:    Tests all inputs (X, Y, Cin)
//
// Dependencies:   None
//
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module LOGIC_FullAdder_tb();
	// Inputs
	reg[2:0] count;
	wire X;
	wire Y;
	wire Cin;
	
	assign X = count[0];
	assign Y = count[1];
	assign Cin = count[2];

	// Output
   wire Sum;
   wire Cout;	

	// Instantiate the UUT
   FullAdder UUT (
		.X(X), 
		.Y(Y), 
		.Cin(Cin), 
		.Sum(Sum), 
		.Cout(Cout)		
   );
	// Initialize Inputs
   
   initial begin
		count = 0;
		#20;
		repeat (8) begin
			count = count + 1;
			#20;
		end   
	end
endmodule

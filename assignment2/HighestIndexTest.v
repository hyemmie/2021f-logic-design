// Verilog test fixture created from schematic /home/ise/assignment2/HighestIndex.sch - Wed Oct 13 12:34:16 2021

`timescale 1ns / 1ps

module HighestIndex_HighestIndex_sch_tb();

// Inputs
	reg[3:0] X;

// Output
   wire N1;
   wire N0;
   wire Z;

// Bidirs

// Instantiate the UUT
   HighestIndex UUT (
		.X2(X[2]), 
		.X1(X[1]), 
		.X3(X[3]), 
		.N1(N1), 
		.N0(N0), 
		.X0(X[0]), 
		.Z(Z)
   );
// Initialize Inputs
   initial begin
	X = 0;
	#10
		repeat(31) begin
		#30
		X = X+1;
		end
	end
endmodule

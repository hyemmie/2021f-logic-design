// Verilog test fixture created from schematic /home/ise/ise_project/assignment2/assignment2/CountOne3Bit.sch - Wed Oct 13 13:27:51 2021

`timescale 1ns / 1ps

module CountOne3Bit_CountOne3Bit_sch_tb();

// Inputs
	reg[2:0] X;

// Output
   wire N1;
   wire N0;

// Bidirs

// Instantiate the UUT
   CountOne3Bit UUT (
		.X0(X[0]), 
		.X2(X[2]), 
		.X1(X[1]), 
		.N1(N1), 
		.N0(N0)
   );
// Initialize Inputs
   initial begin
		X = 0;
		#100
			repeat(7) begin
			#100
			X = X+1;
			end
		end
endmodule

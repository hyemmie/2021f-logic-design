// Verilog test fixture created from schematic /home/ise/assignment2/problem1.sch - Sun Oct 10 09:20:33 2021

`timescale 1ns / 1ps

module problem1_problem1_sch_tb();

// Inputs
	reg[2:0] X;

// Output
   wire N1;
   wire N0;

// Instantiate the UUT
   problem1 UUT (
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

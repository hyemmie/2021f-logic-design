// Verilog test fixture created from schematic /home/ise/ise_project/assignment2/assignment2/Majority_Circuit.sch - Wed Oct 13 13:36:41 2021

`timescale 1ns / 1ps

module Majority_Circuit_Majority_Circuit_sch_tb();

	reg[6:0] X;
   wire o;
	
   Majority_Circuit uut ( 
	   .X6(X[6]),
		.X5(X[5]),
		.X4(X[4]),
		.X3(X[3]),
		.X2(X[2]), 
		.X1(X[1]), 
		.X0(X[0]), 
		.o(o)
   );
// Initialize Inputs
	 initial begin
		X = 0;
		#10
			repeat(127) begin
			#10
			X = X+1;
			end
		end
endmodule

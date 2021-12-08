// Verilog test fixture created from schematic /home/ise/ise_project/assignment2/assignment2/Priority_Encoder.sch - Wed Oct 13 13:38:33 2021

`timescale 1ns / 1ps

module Priority_Encoder_Priority_Encoder_sch_tb();

	reg[7:0] X;
   wire Z;
	wire [2:0] N;

   Priority_Encoder uut ( 
		.X7(X[7]),
		.X6(X[6]),
		.X5(X[5]),
		.X4(X[4]),
		.X3(X[3]),
		.X2(X[2]), 
		.X1(X[1]), 
		.X0(X[0]),
		.N2(N[2]),
		.N1(N[1]),
		.N0(N[0]),
		.Z(Z)
   );
// Initialize Inputs
	 initial begin
		X = 0;
		#10
			repeat(255) begin
			#10
			X = X+1;
			end
		end
endmodule

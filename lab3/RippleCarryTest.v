//////////////////////////////////////////////////////////////////////////////////
// Company: SNU Computer ARchitecture & Embedded System Lab
// Engineer: Hoyoon Jun
// 
// Create Date:    11:50:19 09/30/2015 
// Design Name:    4-bit Ripple carry adder test fixture for Logic Design 2015
// Module Name:    LOGIC_RippleCarry4Bit_tb
// Description:    Tests all inputs (4-bit X, 4-bit Y)
//
// Dependencies:   None
//
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module LOGIC_RippleCarry4Bit_tb();
	// Inputs
	reg[3:0] X;
	reg[3:0] Y;
   reg Cin;

   // Output
   wire[3:0] S;
   wire Cout;

   RippleCarry4Bit UUT (
		.X0(X[0]), 
		.X1(X[1]), 		
		.X2(X[2]), 
		.X3(X[3]), 		
		.Y0(Y[0]),
		.Y1(Y[1]), 
		.Y2(Y[2]), 
		.Y3(Y[3]),	
		.S0(S[0]), 
		.S1(S[1]), 
		.S2(S[2]), 
		.S3(S[3]), 
		.Cout(Cout), 
		.Cin(Cin)
   );
    initial begin		
		Cin = 0;		
		X = 0;
		Y = 0;
		
		#20;
		
		repeat (15) begin
			Y = 0;
			X = X + 1;
			
			repeat (15) begin				
				Y = Y + 1;	
				#20;
			end
		end		
   end
endmodule

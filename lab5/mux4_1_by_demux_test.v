`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:26:31 10/13/2021
// Design Name:   mux4_1_
// Module Name:   /home/ise/lab5/mux4_1_by_demux_test.v
// Project Name:  lab5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux4_1_
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux4_1_by_demux_test;

	// Inputs
	reg [3:0] i;
	reg [1:0] s;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux4_1_by_demux uut (
		.i(i), 
		.s(s), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		i = 4'b0110;
		s = 0;
		repeat (3) begin
			#100
			s = s+1;
		end
		
		#100
		i = 4'b1001;
		s = 0;
		repeat (3) begin
			#100
			s = s+1;
		end
	end
endmodule


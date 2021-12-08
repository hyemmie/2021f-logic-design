`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:13:30 10/13/2021
// Design Name:   devisible_6
// Module Name:   /home/ise/lab4/devisible6Test.v
// Project Name:  lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: devisible_6
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module devisible6Test;

	// Inputs
	reg [3:0] a;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	devisible_6 uut (
		.a(a), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 0;

		// Wait 100 ns for global reset to finish
		#50;
        
		// Add stimulus here
		repeat (15) begin
			#50
			a = a+1;
		end

	end
      
endmodule


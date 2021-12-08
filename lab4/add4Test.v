`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:14:34 10/13/2021
// Design Name:   add4
// Module Name:   /home/ise/lab4/add4Test.v
// Project Name:  lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: add4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module add4Test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	add4 uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 15;
		b = 15;
		cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	/*	repeat (7) begin
		#50
		a = a+1;
			repeat (7) begin
			#50
			b = b+1;
			end
		end*/

	end
      
endmodule


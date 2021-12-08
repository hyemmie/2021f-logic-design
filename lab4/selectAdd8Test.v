`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:33:13 10/13/2021
// Design Name:   selectAdd8
// Module Name:   /home/ise/lab4/selectAdd8Test.v
// Project Name:  lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: selectAdd8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module selectAdd8Test;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg cin;

	// Outputs
	wire [7:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	selectAdd8 uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		a = 8'b0000_0000;
		b = 8'b0000_0000;
		cin = 0;
		#50;
		a = 8'b1111_1111;
		b = 8'b0000_0001;
		cin = 0;
		#50;
		a = 8'b1000_0111;
		b = 8'b0010_1101;
		cin = 1;
		#50;
		a = 8'b0000_0111;
		b = 8'b0010_1111;
		cin = 0;
		#50;
		a = 8'b0000_0111;
		b = 8'b0001_1100;
		cin = 0;
		#50;
		a = 8'b0111_1000;
		b = 8'b0000_0111;
		cin = 0;
	end
      
endmodule


`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:42:54 10/14/2021
// Design Name:   universalShiftRegister
// Module Name:   /home/ise/lab6/universalTest.v
// Project Name:  lab6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: universalShiftRegister
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module universalTest;

	// Inputs
	reg clk;
	reg clr;
	reg s0;
	reg s1;
	reg left_in;
	reg right_in;
	reg [3:0] pa_in;

	// Outputs
	wire [3:0] pa_out;
	wire left_out;
	wire right_out;

	// Instantiate the Unit Under Test (UUT)
	universalShiftRegister uut (
		.clk(clk), 
		.clr(clr), 
		.s0(s0), 
		.s1(s1), 
		.left_in(left_in), 
		.right_in(right_in), 
		.pa_in(pa_in), 
		.pa_out(pa_out), 
		.left_out(left_out), 
		.right_out(right_out)
	);

	initial begin
   clk = 0;
   clr = 0;
   s0 = 0;
   s1 = 0;
   left_in = 0;
   right_in = 0;
   pa_in = 0;


   #10;   // load data
   s0 = 1;
   s1 = 1;
   pa_in = 4'b1001;

   #10;   // hold
   s0 = 0;
   s1 = 0;
   pa_in = 4'b0000;

   #30;   // shift right
   s0 = 0;
   s1 = 1;
   left_in = 1;

   #10
   left_in = 0;

   #60;   // load data
   s0 = 1;
   s1 = 1;
   pa_in = 4'b0110;

	#20;   // shift left
   s0 = 1;
   s1 = 0;
   right_in = 1;

   #10
   right_in = 0;

   #60
   clr = 1;

   #10
   clr = 0;
	
	end
	

	always #10 clk = ~clk;


	always @(clk) begin
		$display("[%dns][left_out %d],[right_out %d],[pa_out %d]",$time,left_out,right_out,pa_out );
	end
    
endmodule


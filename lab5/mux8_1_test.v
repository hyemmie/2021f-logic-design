`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:51:55 10/13/2021
// Design Name:   mux8_1
// Module Name:   /home/ise/lab5/mux8_1_test.v
// Project Name:  lab5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux8_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux8_1_test;

	// Inputs
	reg [3:0] i0;
	reg [3:0] i1;
	reg [3:0] i2;
	reg [3:0] i3;
	reg [3:0] i4;
	reg [3:0] i5;
	reg [3:0] i6;
	reg [3:0] i7;
	reg [2:0] sel;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	mux8_1 uut (
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.i4(i4), 
		.i5(i5), 
		.i6(i6), 
		.i7(i7), 
		.y(y), 
		.sel(sel)
	);

	initial begin

		i0 = 4'd0;
		i1 = 4'd1;
		i2 = 4'd3;
		i3 = 4'd5;
		i4 = 4'd7;
		i5 = 4'd9;
		i6 = 4'd12;
		i7 = 4'd15;
		sel = 3'd0;
		repeat (7) begin
			#50;
			sel = sel+1;
		end
		
		#50;
		i0 = 4'd14;
		i1 = 4'd12;
		i2 = 4'd10;
		i3 = 4'd8;
		i4 = 4'd6;
		i5 = 4'd4;
		i6 = 4'd2;
		i7 = 4'd0;
		sel = 3'd0;
		repeat (7) begin
			#50;
			sel = sel+1;
		end
	end
endmodule


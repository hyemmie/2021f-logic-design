`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:18:04 10/13/2021 
// Design Name: 
// Module Name:    selectAdd8 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module selectAdd8(
    input [7:0] a,
    input [7:0] b,
    input cin,
    output [7:0] sum,
    output cout
    );
	 
	 wire carry;
	 wire [3:0] carry4Bit;
	 wire [3:0] sum_with_c0;
	 wire [3:0] sum_with_c1;
	 wire carry0;
	 wire carry1;

	add4 add_3_to_0(a[3:0],b[3:0],cin,sum[3:0],carry);
	add4 add_7_to_4_cin0(a[7:4],b[7:4],1'b0,sum_with_c0[3:0],carry0);
	add4 add_7_to_4_cin1(a[7:4],b[7:4],1'b1,sum_with_c1[3:0],carry1); 
	
	mux2_1_1bit select_cout(carry1, carry0, carry, cout);
	mux2_1_4bit select_sum(sum_with_c1[3:0], sum_with_c0[3:0], carry, sum[7:4]);

endmodule

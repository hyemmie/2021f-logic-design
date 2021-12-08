`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:11:25 10/13/2021 
// Design Name: 
// Module Name:    devisible_6 
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
module devisible_6(
    input [3:0] a,
    output out
    );
	 
	 wire div_2;
	 wire div_3;
	 
	 divisible_2 check2(a[3:0],div_2);
	 divisible_3 check3(a[3:0],div_3);
	 
	 assign out = div_2 && div_3;


endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:02:40 10/14/2021 
// Design Name: 
// Module Name:    Operation4 
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
module Operation4(
    input [5:0] operandX,
    output reg [3:0] d1,
    output reg [3:0] d2,
    output reg [3:0] d3,
    output reg [3:0] d4,
    output reg [3:0] d5,
    output reg [3:0] d6
    );
	 
	 integer one;
	 integer zero;
	 integer i;
	 
	 always @ (*)
	 begin
		one = 0;
		zero = 0;
		 for (i = 0; i < 6; i = i+1)
		 begin
			zero = zero + (~operandX[i] & 1);
			one = one + operandX[i];
		 end
		 
		 d1 = 4'b0000;
		 d2 = 4'b0000;
		 d3 = one;
		 d4 = 4'b0000;
		 d5 = 4'b0000;
		 d6 = zero; 
	end

endmodule

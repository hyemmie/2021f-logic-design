`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:14:03 10/14/2021 
// Design Name: 
// Module Name:    Operation6 
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
module Operation6(
	 input hidden,
    input [4:0] operandX,
    output [3:0] d1,
    output reg [3:0] d2,
    output reg [3:0] d3,
    output reg [3:0] d4,
    output reg [3:0] d5,
    output reg [3:0] d6
    );
	 
	 reg [6:0] temp;
	 integer one = 0;
	 integer zero = 0;
	 integer i;
	 integer j;
	 reg	 [4:0] result;
	 
	 always @ (*)
	 begin
	 	 temp = {hidden, operandX[4:0], hidden};
		 for (i = 6; i > 1; i = i-1)
		 begin
			for (j = i; j > i-3; j = j-1)
			begin
				if (temp[j] == 1'b0)
				begin
					zero = zero + 1;
				end
				if (temp[j] == 1'b1)
				begin
					one = one + 1;
				end
			end
			result[i-2] = (zero > one) ? 	1'b0 : 1'b1;
			zero = 0;
			one = 0;
		 end
		 
		 d2 = result[4];
		 d3 = result[3];
		 d4 = result[2];
		 d5 = result[1];
		 d6 = result[0];
	end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:27:15 10/15/2021 
// Design Name: 
// Module Name:    TimeCounter 
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
module TimeCounter(
    input clk,
    input reset,
	 input ST,
    output reg TS,
    output reg TL,
	 output reg [4:0] countNumber
    );
	 
	 reg [40:0] count;
	 parameter modulation = 30'd500000;
	 
	 always @ (posedge clk or posedge reset) begin
		if (reset == 1'b1 || ST == 1'b1) begin
			count <= 0;
			TS = 1'b0;
			TL = 1'b0;
		end
		else count <= count + 1;
	 end
	 
	 always @ (count) begin
		countNumber = count / modulation;
		if (countNumber == 5'b00101) begin
			TS = 1'b1;
		end
		else if (countNumber == 5'b10100) begin 
			TL = 1'b1;
		end
	 end

endmodule

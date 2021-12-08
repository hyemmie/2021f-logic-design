`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:52:33 10/15/2021 
// Design Name: 
// Module Name:    CounterByCase 
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
module CounterByCase(
    input CLK,
    output [2:0] out
    );
	 
	 reg [2:0] state = 3'b111;
	 
	 always @ (posedge CLK) begin
		case (state)
			3'b000 : state <= 3'b010;
			3'b001 : state <= 3'b000;
			3'b010 : state <= 3'b011;
			3'b011 : state <= 3'b101;
			3'b100 : state <= 3'b000;
			3'b101 : state <= 3'b110;
			3'b110 : state <= 3'b000;
			3'b111 : state <= 3'b000;
		endcase
	 end
	 
	 assign out = state;

endmodule

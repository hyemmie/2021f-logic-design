`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:22:19 10/14/2021 
// Design Name: 
// Module Name:    OpcodeSelector 
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
module OpcodeSelector(
    input [5:0] opcode,
    output reg [2:0] out
    );
always @ (*)
    begin
        case (opcode)
			6'b000000: out = 3'b000; 
			6'b100000: out = 3'b001; 
			6'b010000: out = 3'b010; 
			6'b001000: out = 3'b011; 
			6'b000100: out = 3'b100; 
			6'b000010: out = 3'b101; 
			6'b000001: out = 3'b110; 
			default: out = 3'b000;
		endcase 
	end
endmodule

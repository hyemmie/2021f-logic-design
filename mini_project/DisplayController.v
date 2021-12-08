`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:07:53 10/14/2021 
// Design Name: 
// Module Name:    DisplayController 
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
module DisplayController(
    input [23:0] op0,
    input [23:0] op1,
    input [23:0] op2,
    input [23:0] op3,
    input [23:0] op4,
    input [23:0] op5,
    input [23:0] op6,
    output reg [6:0] d1,
    output reg [6:0] d2,
    output reg [6:0] d3,
    output reg [6:0] d4,
    output reg [6:0] d5,
    output reg [6:0] d6,
    input [2:0] opSel
    );
	 
	 wire [41:0] decOp0;
	 wire [41:0] decOp1;
	 wire [41:0] decOp2;
	 wire [41:0] decOp3;
	 wire [41:0] decOp4;
	 wire [41:0] decOp5;
	 wire [41:0] decOp6;
	 
	 
	 SignBitDecoder Op0d1(op0[23:20], decOp0[41:35]);
	 BCDto7SegmentDecoder Op0d2(op0[19:16], decOp0[34:28]);
	 BCDto7SegmentDecoder Op0d3(op0[15:12], decOp0[27:21]);
	 SignBitDecoder Op0d4(op0[11:8], decOp0[20:14]);
	 BCDto7SegmentDecoder Op0d5(op0[7:4], decOp0[13:7]);
	 BCDto7SegmentDecoder Op0d6(op0[3:0], decOp0[6:0]);
	 
	 BCDto7SegmentDecoder Op1d1(op1[23:20], decOp1[41:35]);
	 BCDto7SegmentDecoder Op1d2(op1[19:16], decOp1[34:28]);
	 BCDto7SegmentDecoder Op1d3(op1[15:12], decOp1[27:21]);
	 BCDto7SegmentDecoder Op1d4(op1[11:8], decOp1[20:14]);
	 BCDto7SegmentDecoder Op1d5(op1[7:4], decOp1[13:7]);
	 BCDto7SegmentDecoder Op1d6(op1[3:0], decOp1[6:0]);
	 
	 assign decOp2[41:28] = 14'b00000000000000;
	 SignBitDecoder Op2d3(op2[15:12], decOp2[27:21]);
	 BCDto7SegmentDecoder Op2d4(op2[11:8], decOp2[20:14]);
	 BCDto7SegmentDecoder Op2d5(op2[7:4], decOp2[13:7]);
	 BCDto7SegmentDecoder Op2d6(op2[3:0], decOp2[6:0]);
	 
	 assign decOp3[41:28] = 14'b00000000000000;
	 SignBitDecoder Op3d3(op3[15:12], decOp3[27:21]);
	 BCDto7SegmentDecoder Op3d4(op3[11:8], decOp3[20:14]);
	 BCDto7SegmentDecoder Op3d5(op3[7:4], decOp3[13:7]);
	 BCDto7SegmentDecoder Op3d6(op3[3:0], decOp3[6:0]);
	 
	 assign decOp4[41:35] = 7'b0000000;	 
	 BCDto7SegmentDecoder Op4d2(op4[19:16], decOp4[34:28]);
	 BCDto7SegmentDecoder Op4d3(op4[15:12], decOp4[27:21]);
	 assign decOp4[20:14] = 7'b0000000;	 
	 BCDto7SegmentDecoder Op4d5(op4[7:4], decOp4[13:7]);
	 BCDto7SegmentDecoder Op4d6(op4[3:0], decOp4[6:0]);	 
	 	 
	 BCDto7SegmentDecoder Op5d1(op5[23:20], decOp5[41:35]);
	 BCDto7SegmentDecoder Op5d2(op5[19:16], decOp5[34:28]);
	 BCDto7SegmentDecoder Op5d3(op5[15:12], decOp5[27:21]);
	 BCDto7SegmentDecoder Op5d4(op5[11:8], decOp5[20:14]);
	 BCDto7SegmentDecoder Op5d5(op5[7:4], decOp5[13:7]);
	 BCDto7SegmentDecoder Op5d6(op5[3:0], decOp5[6:0]);

	 assign decOp6[41:35] = 7'b0000000;	 
	 BCDto7SegmentDecoder Op6d2(op6[19:16], decOp6[34:28]);
	 BCDto7SegmentDecoder Op6d3(op6[15:12], decOp6[27:21]);
	 BCDto7SegmentDecoder Op6d4(op6[11:8], decOp6[20:14]);
	 BCDto7SegmentDecoder Op6d5(op6[7:4], decOp6[13:7]);
	 BCDto7SegmentDecoder Op6d6(op6[3:0], decOp6[6:0]);
	 
	 always @ (*) begin
		case (opSel)
			3'b000 : 
			begin
				d1 = decOp0[41:35];
				d2 = decOp0[34:28];
				d3 = decOp0[27:21];
				d4 = decOp0[20:14];
				d5 = decOp0[13:7];
				d6 = decOp0[6:0];
			end
			3'b001 :
			begin
				d1 = decOp1[41:35];
				d2 = decOp1[34:28];
				d3 = decOp1[27:21];
				d4 = decOp1[20:14];
				d5 = decOp1[13:7];
				d6 = decOp1[6:0];
			end
			3'b010 :
			begin
				d1 = decOp2[41:35];
				d2 = decOp2[34:28];
				d3 = decOp2[27:21];
				d4 = decOp2[20:14];
				d5 = decOp2[13:7];
				d6 = decOp2[6:0];			
			end
			3'b011 :
			begin
				d1 = decOp3[41:35];
				d2 = decOp3[34:28];
				d3 = decOp3[27:21];
				d4 = decOp3[20:14];
				d5 = decOp3[13:7];
				d6 = decOp3[6:0];			
			end			
			3'b100 :
			begin
				d1 = decOp4[41:35];
				d2 = decOp4[34:28];
				d3 = decOp4[27:21];
			   d4 = decOp4[20:14];
				d5 = decOp4[13:7];
				d6 = decOp4[6:0];			
			end			
			3'b101 :
			begin
				d1 = decOp5[41:35];
			   d2 = decOp5[34:28];
				d3 = decOp5[27:21];
				d4 = decOp5[20:14];
				d5 = decOp5[13:7];
				d6 = decOp5[6:0];			
			end
			3'b110 :
			begin
				d1 = decOp6[41:35];
				d2 = decOp6[34:28];
				d3 = decOp6[27:21];
				d4 = decOp6[20:14];
				d5 = decOp6[13:7];
				d6 = decOp6[6:0];			
			end		
			default: 
			begin
				d1 = decOp0[41:35];
				d2 = decOp0[34:28];
				d3 = decOp0[27:21];
				d4 = decOp0[20:14];
				d5 = decOp0[13:7];
				d6 = decOp0[6:0];			
			end
		endcase
end

endmodule

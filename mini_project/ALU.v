`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:04:12 10/14/2021 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [9:0] operand,
    input [5:0] opcode,
    output [6:0] d1,
    output [6:0] d2,
    output [6:0] d3,
    output [6:0] d4,
    output [6:0] d5,
    output [6:0] d6
    );
	 
	 wire [2:0] opSel;
	 wire [23:0] op0;
	 wire [23:0] op1;
	 wire [23:0] op2;
	 wire [23:0] op3;
	 wire [23:0] op4;
	 wire [23:0] op5;
	 wire [23:0] op6;

	 
	 OpcodeSelector sel(opcode, opSel);
	 
	 Operation0 opr0(operand[9], operand[8:5], operand[4], operand[3:0], op0[23:20], op0[19:16], op0[15:12], op0[11:8], op0[7:4], op0[3:0]);
	 Operation1 opr1(operand[9:0], op1[23:20], op1[19:16], op1[15:12], op1[11:8], op1[7:4], op1[3:0]);
	 Operation2 opr2(operand[9], operand[8:5], operand[4], operand[3:0], op2[23:20], op2[19:16], op2[15:12], op2[11:8], op2[7:4], op2[3:0]);
	 Operation3 opr3(operand[9], operand[8:5], operand[4], operand[3:0], op3[23:20], op3[19:16], op3[15:12], op3[11:8], op3[7:4], op3[3:0]);
	 Operation4 opr4(operand[5:0], op4[23:20], op4[19:16], op4[15:12], op4[11:8], op4[7:4], op4[3:0]);
	 Operation5 opr5(operand[9], operand[8:3], operand[2:0], op5[23:20], op5[19:16], op5[15:12], op5[11:8], op5[7:4], op5[3:0]);
	 Operation6 opr6(operand[5], operand[4:0], op6[23:20], op6[19:16], op6[15:12], op6[11:8], op6[7:4], op6[3:0]);
	 
	 DisplayController dis(op0, op1, op2, op3, op4, op5, op6, d1, d2, d3, d4, d5, d6, opSel);

endmodule

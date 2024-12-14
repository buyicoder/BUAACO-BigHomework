`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:19:58 10/31/2024 
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
    input [31:0] A,
    input [31:0] B,
    input [2:0] ALUOp,
    output [31:0] C,
	 output zero
    );
	 assign C=(ALUOp==3'b000)?(A&B):
			(ALUOp==3'b001)?(A|B):
			(ALUOp==3'b010)?(A+B):
			(ALUOp==3'b011)?(A+B)://Œ¥ π”√
			(ALUOp==3'b100)?(A&~B):
			(ALUOp==3'b101)?(A|~B):
			(ALUOp==3'b110)?(A-B):
			(A<B)?32'b1:32'b0;
	assign zero = (C==32'b0)?1:0;
endmodule
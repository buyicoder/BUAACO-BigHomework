`timescale 1ns / 1ps
`include "CPU_Param.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:58:52 11/22/2020 
// Design Name: 
// Module Name:    IF 
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
module IF(
    input wire [31:0] branch_addr32,
    input wire [31:0] jump_addr32,
    input wire branch,
    input wire jump,
	input wire Stall,
	input wire clk,
	input wire reset,
    output reg [31:0] PC_4,
	output reg [31:0] Instr,
	output reg [31:0] PC
    );
	 wire [31:0] PC_wire, NextPC_wire, PC_4_wire, 
	             Instr_wire, OpAddr_wire;
    assign OpAddr_wire = (PC_wire - 32'h0000_3000) >> 2;
	 
	NPC NPC(
	.PC(PC_wire),
    .branch(branch),
	.Stall(Stall),
    .jump(jump),
    .branch_addr(branch_addr32),
    .jump_addr(jump_addr32),
    .NextPC(NextPC_wire),
	.PC_4(PC_4_wire));   //PC��Զ�������һ��ָ���ַ�����StallʱNPC�����ǰPCֻ����
	 
	ProgramCounter PCnt(
	.clk(clk),
    .reset(reset),
    .NPC(NextPC_wire),
    .PC(PC_wire));
	 
	IM IM(
	.OpAddr(OpAddr_wire),
    .Instr(Instr_wire));
	 
	 always@(posedge clk)
	 begin
		if(reset)
		begin
			PC_4 <= 32'h0000_3004;
			//Instr <= FirstInstr_wire;
			Instr = 32'h0000_0000;
			PC <= 32'h0000_3000;
		end
		else if(Stall)
		begin
			PC_4 <= PC_4;
			Instr <= Instr;
			PC <= PC;        //����IF/ID�Ĵ���
		end
		else
		begin
			PC_4 <= PC_4_wire;
			Instr <= Instr_wire;
			PC <= PC_wire;
		end
	 end

endmodule

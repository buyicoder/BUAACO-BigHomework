`timescale 1ns / 1ps
`include "CPU_Param.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:54:50 11/22/2020 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input wire clk,
    input wire reset
    );
	wire Stall;
	
	///////////////////// Bypass Control Unit //////////////////////
	wire [4:0] RegWriteAddr_Mem_to_WB;
	wire [4:0] RAddr0_ID, RAddr0_EX, RAddr0_Mem,
	           RAddr1_ID, RAddr1_EX, RAddr1_Mem,
			   RegWriteAddr_ID, RegWriteAddr_EX, RegWriteAddr_Mem;
	wire [2:0] Tuse_RAddr0_ID, Tuse_RAddr0_EX, Tuse_RAddr0_Mem,
	           Tuse_RAddr1_ID, Tuse_RAddr1_EX, Tuse_RAddr1_Mem,
			   Tnew_WAddr_ID, Tnew_WAddr_EX, Tnew_WAddr_Mem;
	wire [1:0] RData0BypassCtrl, RData1BypassCtrl,
	           ALUIn0BypassCtrl, ALUIn1BypassCtrl;
	wire DMWriteDataBypassCtrl_EX, DMWriteDataBypassCtrl_Mem;
	
	BypassController BypassController(
	// ID������������
	.RAddr0_ID(RAddr0_ID),
	.RAddr1_ID(RAddr1_ID),
	.Tuse_RAddr0_ID(Tuse_RAddr0_ID),
	.Tuse_RAddr1_ID(Tuse_RAddr1_ID),
	// EX������������
	.RAddr0_EX(RAddr0_EX),
	.RAddr1_EX(RAddr1_EX),
	.RegWriteAddr_EX(RegWriteAddr_EX),
	.Tuse_RAddr0_EX(Tuse_RAddr0_EX),
	.Tuse_RAddr1_EX(Tuse_RAddr1_EX),
	.Tnew_WAddr_EX(Tnew_WAddr_EX),
	// Mem������������
	.RAddr0_Mem(RAddr0_Mem),
    .RAddr1_Mem(RAddr1_Mem),
    .RegWriteAddr_Mem(RegWriteAddr_Mem),
	.Tuse_RAddr0_Mem(Tuse_RAddr0_Mem),
	.Tuse_RAddr1_Mem(Tuse_RAddr1_Mem),
	.Tnew_WAddr_Mem(Tnew_WAddr_Mem),
	//WB������������
	.RegWriteAddr_WB(RegWriteAddr_Mem_to_WB),
	// ��������ź�
	.RData0BypassCtrl(RData0BypassCtrl),
	.RData1BypassCtrl(RData1BypassCtrl),//ID������
	.ALUIn0BypassCtrl(ALUIn0BypassCtrl),
	.ALUIn1BypassCtrl(ALUIn1BypassCtrl),
	.DMWriteDataBypassCtrl_EX(DMWriteDataBypassCtrl_EX), //EX������
	.DMWriteDataBypassCtrl_Mem(DMWriteDataBypassCtrl_Mem) //Mem��һ��
    );
	///////////////////// Stall Unit /////////////////////////
	wire MultBusy, MultTypeInstr;
	StallUnit StallUnit(
	.RegRead0(RAddr0_ID),
    .T_useRead0(Tuse_RAddr0_ID),
    .RegRead1(RAddr1_ID),
    .T_useRead1(Tuse_RAddr1_ID),
    .RegWrite_EX(RegWriteAddr_EX),
    .T_new_EX(Tnew_WAddr_EX),
    .RegWrite_Mem(RegWriteAddr_Mem),
    .T_new_Mem(Tnew_WAddr_Mem),
	.MultTypeInstr(MultTypeInstr),
	.MultBusy(MultBusy),
    .Stall(Stall));
	
	////////////////////// IF //////////////////////
	wire [31:0] branch_addr32, jump_addr32, PC_4_IF_to_ID,
	            Instr_IF_to_ID, PC_IF_to_ID;
	wire branch, jump;
	IF IF(
    .branch_addr32(branch_addr32),
    .jump_addr32(jump_addr32),
    .branch(branch),
    .jump(jump),
	.Stall(Stall),
	.clk(clk),
	.reset(reset),
	
    .PC_4(PC_4_IF_to_ID),
	.Instr(Instr_IF_to_ID),
	.PC(PC_IF_to_ID)
    );
	
	////////////////////// ID ////////////////////////////
	wire Start_ID_to_EX;//RegWriteEn;
	wire [2:0] Tuse_RAddr0_ID_to_EX, Tuse_RAddr1_ID_to_EX, Tnew_WAddr_ID_to_EX;
	wire [4:0] ReadAddr0_ID_to_EX, ReadAddr1_ID_to_EX, RegWriteAddr_ID_to_EX, 
	           Shamt_ID_to_EX;
	wire [31:0] RegWriteData, RegWritePC, imm32_ID_to_EX, Data0_ID_to_EX,
	            Data1_ID_to_EX, ResFromID_ID_to_EX, PC_ID_to_EX,
				RegWriteData_Mem_to_WB;
	wire [59:0] InstrType_ID_to_EX;
	ID ID(
    .Instr(Instr_IF_to_ID),
    .PC(PC_IF_to_ID),
    .PC_4(PC_4_IF_to_ID),
    .clk(clk),
    .reset(reset),
	.Stall(Stall),
	//.RegWrite(RegWriteEn),
	.WData(RegWriteData_Mem_to_WB),
	.WritePC(PC_Mem_to_WB),
	.RegWriteAddr_Mem_to_WB(RegWriteAddr_Mem_to_WB),
	
    .RAddr0_ID_to_EX(ReadAddr0_ID_to_EX),
    .RAddr1_ID_to_EX(ReadAddr1_ID_to_EX),
    .RegWriteAddr_ID_to_EX(RegWriteAddr_ID_to_EX), //��ָ����Rd��������ʵ����д���GPR��ַ
    .Shamt_ID_to_EX(Shamt_ID_to_EX),
    .imm32_ID_to_EX(imm32_ID_to_EX),
	.InstrType_ID_to_EX(InstrType_ID_to_EX),
	.RAddr0Data_ID_to_EX(Data0_ID_to_EX),
	.RAddr1Data_ID_to_EX(Data1_ID_to_EX),
    .ResFromID_ID_to_EX(ResFromID_ID_to_EX),
	.PC_ID_to_EX(PC_ID_to_EX),
	.Tuse_RAddr0_ID_to_EX(Tuse_RAddr0_ID_to_EX),
	.Tuse_RAddr1_ID_to_EX(Tuse_RAddr1_ID_to_EX),
	.Tnew_WAddr_ID_to_EX(Tnew_WAddr_ID_to_EX),
	.Start_ID_to_EX(Start_ID_to_EX),
	
	.branch(branch),
    .jump(jump),
    .branch_addr32(branch_addr32),
    .jump_addr32(jump_addr32),
	
	// ��������ת������������Ϣ
	.RegRead0_ID(RAddr0_ID),
	.RegRead1_ID(RAddr1_ID),
	.Tuse_RAddr0_ID(Tuse_RAddr0_ID),
	.Tuse_RAddr1_ID(Tuse_RAddr1_ID),
	.MultTypeInstr(MultTypeInstr),
	
	//ת�����󲿷�
	.bypass_ID(ResFromID_ID_to_EX), // ��ID/EX�Ĵ���ת����������
	.bypass_EX(ALUOut_EX_to_Mem), // ��EX/Mem�Ĵ���ת���������� ע��ת��ֻ��һ������Դ
	.RData0BypassCtrl(RData0BypassCtrl),
	.RData1BypassCtrl(RData1BypassCtrl)
    );
	 
	//////////////////// EX /////////////////////////////////
	wire [2:0] Tuse_RAddr0_EX_to_Mem, Tuse_RAddr1_EX_to_Mem, Tnew_WAddr_EX_to_Mem;
	wire [4:0] ReadAddr0_EX_to_Mem, ReadAddr1_EX_to_Mem, RegWriteAddr_EX_to_Mem;
	wire [31:0] PC_EX_to_Mem, DMWriteData_EX_to_Mem, ALUOut_EX_to_Mem;
	wire [59:0] InstrType_EX_to_Mem;
	EX EX(
    .RAddr0_ID_to_EX(ReadAddr0_ID_to_EX),
    .RAddr1_ID_to_EX(ReadAddr1_ID_to_EX),
    .RegWriteAddr_ID_to_EX(RegWriteAddr_ID_to_EX), //��ָ����Rd��������ʵ����д���GPR��ַ
    .Shamt_ID_to_EX(Shamt_ID_to_EX),
    .imm32_ID_to_EX(imm32_ID_to_EX),
	.InstrType_ID_to_EX(InstrType_ID_to_EX),
	.RAddr0Data_ID_to_EX(Data0_ID_to_EX),
	.RAddr1Data_ID_to_EX(Data1_ID_to_EX),
    .ResFromID_ID_to_EX(ResFromID_ID_to_EX),
	.PC_ID_to_EX(PC_ID_to_EX),
	.Tuse_RAddr0_ID_to_EX(Tuse_RAddr0_ID_to_EX),
	.Tuse_RAddr1_ID_to_EX(Tuse_RAddr1_ID_to_EX),
	.Tnew_WAddr_ID_to_EX(Tnew_WAddr_ID_to_EX),
	.Start_ID_to_EX(Start_ID_to_EX),
	.clk(clk),
    .reset(reset),
	
	.PC_EX_to_Mem(PC_EX_to_Mem),
	.RAddr0_EX_to_Mem(ReadAddr0_EX_to_Mem),
    .RAddr1_EX_to_Mem(ReadAddr1_EX_to_Mem),
    .RegWriteAddr_EX_to_Mem(RegWriteAddr_EX_to_Mem),
	.InstrType_EX_to_Mem(InstrType_EX_to_Mem),
	.ALUOut_EX_to_Mem(ALUOut_EX_to_Mem),
	.DMWriteData_EX_to_Mem(DMWriteData_EX_to_Mem), //��д��DM������
	.Tuse_RAddr0_EX_to_Mem(Tuse_RAddr0_EX_to_Mem),
	.Tuse_RAddr1_EX_to_Mem(Tuse_RAddr1_EX_to_Mem),
	.Tnew_WAddr_EX_to_Mem(Tnew_WAddr_EX_to_Mem),
	
	// ����ͻ����Ԫ������
	.RAddr0_EX(RAddr0_EX),
	.RAddr1_EX(RAddr1_EX),
	.RegWriteAddr_EX(RegWriteAddr_EX),
	.Tuse_RAddr0_EX(Tuse_RAddr0_EX),
	.Tuse_RAddr1_EX(Tuse_RAddr1_EX),
	.Tnew_WAddr_EX(Tnew_WAddr_EX),
	.MultBusy(MultBusy),
	
	//ת�����󲿷�
	.bypass_EX(ALUOut_EX_to_Mem),  //��EX/Memת������
	.bypass_Mem(RegWriteData_Mem_to_WB), //��Mem/WBת������
	.ALUIn0BypassCtrl(ALUIn0BypassCtrl),
	.ALUIn1BypassCtrl(ALUIn1BypassCtrl),
	.DMWriteDataBypassCtrl(DMWriteDataBypassCtrl_EX)
    );
	
	////////////////////// Mem ////////////////////////////
	wire LoadInst_Mem_to_WB;
	wire [2:0] Tuse_RAddr0_Mem_to_WB, Tuse_RAddr1_Mem_to_WB, 
				Tnew_WAddr_Mem_to_WB, DMExtOp_Mem_to_WB;
	wire [31:0] PC_Mem_to_WB, ALUOut_Mem_to_WB, DMReadData_Mem_to_WB, 
				DMDataExtended;
	wire [59:0] InstrType_Mem_to_WB;
	//wire [4:0] RegWriteAddr_Mem_to_WB;
	Mem Mem(
	.RAddr0_EX_to_Mem(ReadAddr0_EX_to_Mem),
    .RAddr1_EX_to_Mem(ReadAddr1_EX_to_Mem),
    .RegWriteAddr_EX_to_Mem(RegWriteAddr_EX_to_Mem),
	.InstrType_EX_to_Mem(InstrType_EX_to_Mem),
	.ALUOut_EX_to_Mem(ALUOut_EX_to_Mem),
	.DMWriteData_EX_to_Mem(DMWriteData_EX_to_Mem), //��д��DM������
	.PC_EX_to_Mem(PC_EX_to_Mem),
	.Tuse_RAddr0_EX_to_Mem(Tuse_RAddr0_EX_to_Mem),
	.Tuse_RAddr1_EX_to_Mem(Tuse_RAddr1_EX_to_Mem),
	.Tnew_WAddr_EX_to_Mem(Tnew_WAddr_EX_to_Mem),
	.clk(clk),
    .reset(reset),
	
	.InstrType_Mem_to_WB(InstrType_Mem_to_WB),
	.DMReadData_Mem_to_WB(DMReadData_Mem_to_WB),
	.DMExtOp_Mem_to_WB(DMExtOp_Mem_to_WB),
	.LoadInst_Mem_to_WB(LoadInst_Mem_to_WB),
	
	.ALUOut_Mem_to_WB(ALUOut_Mem_to_WB),
	.RegWriteAddr_Mem_to_WB(RegWriteAddr_Mem_to_WB),
	.PC_Mem_to_WB(PC_Mem_to_WB),
	//.RegWriteEn(RegWriteEn),
	.Tuse_RAddr0_Mem_to_WB(Tuse_RAddr0_Mem_to_WB),
	.Tuse_RAddr1_Mem_to_WB(Tuse_RAddr1_Mem_to_WB),
	.Tnew_WAddr_Mem_to_WB(Tnew_WAddr_Mem_to_WB),
	
	// ��ͻ����Ԫ�ź�
	.RAddr0_Mem(RAddr0_Mem),
    .RAddr1_Mem(RAddr1_Mem),
    .RegWriteAddr_Mem(RegWriteAddr_Mem),
	.Tuse_RAddr0_Mem(Tuse_RAddr0_Mem),
	.Tuse_RAddr1_Mem(Tuse_RAddr1_Mem),
	.Tnew_WAddr_Mem(Tnew_WAddr_Mem),
	
	//ת�����󲿷�
	.bypass_Mem(RegWriteData_Mem_to_WB), //��Mem/WBת������
	.DMWriteDataBypassCtrl(DMWriteDataBypassCtrl_Mem)
    );
	
	DMOutExtend DMOutExt(
    .Addr2(ALUOut_Mem_to_WB[1:0]),
    .DataIn(DMReadData_Mem_to_WB),
    .Op(DMExtOp_Mem_to_WB),
    .DataOut(DMDataExtended)
    );
	
	assign RegWriteData_Mem_to_WB = LoadInst_Mem_to_WB ? DMDataExtended : ALUOut_Mem_to_WB;
	
endmodule

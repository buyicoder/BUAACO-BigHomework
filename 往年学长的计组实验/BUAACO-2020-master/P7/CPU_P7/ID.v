`timescale 1ns / 1ps
`include "CPU_Param.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:00:54 11/22/2020 
// Design Name: 
// Module Name:    ID 
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
module ID(
    input wire [31:0] Instr,
    input wire [31:0] PC,
    input wire [31:0] PC_4,
    input wire clk,
    input wire reset,
	input wire Stall,
	//input wire RegWrite,
	input wire [31:0] WData,
	input wire [31:0] WritePC,
	input wire [31:0] bypass_ID, // ��ID/EX�Ĵ���ת����������
	input wire [31:0] bypass_EX, // ��EX/Mem�Ĵ���ת���������� ע��ת��ֻ��һ������Դ
	input wire [1:0] RData0BypassCtrl,
	input wire [1:0] RData1BypassCtrl,
	input wire [4:0] RegWriteAddr_Mem_to_WB,
	
    output reg [4:0] RAddr0_ID_to_EX,
    output reg [4:0] RAddr1_ID_to_EX,
    output reg [4:0] RegWriteAddr_ID_to_EX, //��ָ����Rd�����ǵ�ǰָ����ʵ����д���GPR��ַ
    output reg [4:0] Shamt_ID_to_EX,
    output reg [31:0] imm32_ID_to_EX,
	output reg [59:0] InstrType_ID_to_EX,
	output reg [31:0] RAddr0Data_ID_to_EX,
	output reg [31:0] RAddr1Data_ID_to_EX,
    output reg [31:0] ResFromID_ID_to_EX,  //��ID�׶ξͲ�����д�������򽫽����������
	output reg [31:0] PC_ID_to_EX,
	output reg [2:0] Tuse_RAddr0_ID_to_EX,// Ҫ�õ���ʱ��
	output reg [2:0] Tuse_RAddr1_ID_to_EX,
	output reg [2:0] Tnew_WAddr_ID_to_EX, // ����ʱ��
	output reg Start_ID_to_EX,
	output reg [4:0] Rd_CP0Addr_ID_to_EX,
	
	output wire branch,
    output wire jump,
    output wire [31:0] branch_addr32,
    output wire [31:0] jump_addr32,
	
	// ��������ת����Ԫ����Ϣ
	output wire [4:0] RegRead0_ID,
	output wire [4:0] RegRead1_ID,
	output wire [2:0] Tuse_RAddr0_ID,
	output wire [2:0] Tuse_RAddr1_ID,
	output wire MultTypeInstr,
	
	// �쳣������Ϣ
	input wire ErrSignal,
	input wire [4:0] ErrStat_IF_to_ID,
	input wire Err_IF_to_ID,
	input wire eretEn,
	input wire [31:0] EPCData,
	output reg [4:0] ErrStat_ID_to_EX,
	output reg Err_ID_to_EX
    );
	wire [31:0] RsData_wire, RtData_wire, imm32_wire;
	wire [25:0] imm26_wire;
	wire [15:0] imm16_wire;
	wire [4:0] Rs_wire, Rt_wire, Rd_wire, Shamt_wire,
	           Rs_inst, Rt_inst, Rd_inst;
	wire sign, Err_wire;
	wire [59:0] InstrType;
	
	//ת����ûд����ת��������д�ú����RsData_wire��RtData_wire��MUX
	//�Լ�T_use��T_new
	
	assign sign = (`ori || `sll || `andi || `xori) ? 0 : 1 ; //�������Ӧ��0��չ��ָ�����
	assign {Rs_inst, Rt_inst, Rd_inst, Shamt_wire} = Instr[25:6];
	assign imm26_wire = Instr[25:0];
	assign imm16_wire = `sll ? {11'd0, Shamt_wire} : Instr[15:0];
	
	
	InstrDecoder InstrDecoder(
	.Instr(Instr),
	.InstrType(InstrType));
	
	Extender Extender(
	.imm16(imm16_wire),
	.sign(sign),
	.imm32(imm32_wire));
	
	wire [4:0] WAddr_wire, ErrStat_wire;
	wire [31:0] RData0_wire, RData1_wire, RData0_read;
	//assign WAddr_wire = (`jal) ? 5'd31 :
	//               (`ori || `lw || `lui) ? Rt_wire : Rd_wire;
	
	// AT Calculate
	wire [2:0] Tuse_RAddr0_wire, Tuse_RAddr1_wire, Tnew_WAddr_wire;
	
	AT_Cal AT_Cal(
	.Rs(Rs_inst),
	.Rt(Rt_inst),
	.Rd(Rd_inst),
    .InstrType(InstrType),
	
	.RAddr0(Rs_wire),
	.RAddr1(Rt_wire),
	.WAddr(WAddr_wire),
	.Tuse_RAddr0(Tuse_RAddr0_wire),// Ҫ�õ���ʱ��
	.Tuse_RAddr1(Tuse_RAddr1_wire),
	.Tnew_WAddr(Tnew_WAddr_wire));// ����ʱ��
	
	// Instructions write to GPR No.31 or Rt
	GRF GRF(
	.RAddr0(Rs_wire),
	.RAddr1(Rt_wire),
	.WAddr(RegWriteAddr_Mem_to_WB),
	.WriteData(WData),
	.WritePC(WritePC), //дָ���PC���ǵ�ǰPC
	//.RegWrite(RegWrite),
	.clk(clk),
	.reset(reset),
	.RData0(RData0_read), //ԭʼ��������
	.RData1(RData1_wire));
	assign RData0_wire = (`sll || `srl || `sra) ? {27'd0, Shamt_wire} : RData0_read;
	//����sll����Rs����Shamt��Ϊsllv��ʣ�µ�������ָ�������ӿ�
	//ע�������ǸĵĶ������ݶ��Ƕ��ļĴ����ţ����AT��������ﲻӰ��
	//sll��Rs�ֶ�Ϊ0������ת�����Ʋ�Ӧ�ô���
	
	///////////////////// ID�����������ָ�� ////////////////////////
	wire [31:0] ResFromID_wire;
	assign ResFromID_wire = (`lui) ? {Instr[15:0], 16'd0} :
	                        (`jal || `jalr) ? PC + 32'd8 : 32'hABCDDCBA;
	
	///////////////////// Branch ////////////////////////////
	
	//assign branch = (`beq && RsData_wire == RtData_wire) ? 1 : 0;
	BranchJudge BranchJudge(
    .In0(RsData_wire),
    .In1(RtData_wire),
    .InstrType(InstrType),
    .Branch(branch)
    );
	assign branch_addr32 = PC_4 + {imm32_wire[29:0], 2'b00};
	
	///////////////////// Jump /////////////////////////
	assign jump = (`j || `jal || `jr || `jalr) ? 1 : 0;
	assign jump_addr32 = `j || `jal ? {PC[31:28], imm26_wire, 2'b00}:
	                     (`jr || `jalr) ? RsData_wire : 32'h0000_3000;
	
	//////////////////// ת�� /////////////////////
	assign RsData_wire = (RData0BypassCtrl == `RData0_from_RData0) ? RData0_wire :
	                     (RData0BypassCtrl == `RData0_from_ID) ? bypass_ID :
						 (RData0BypassCtrl == `RData0_from_EX) ? bypass_EX :
						                                                             32'h1234_ABCD; // Err Signal
	assign RtData_wire = (RData1BypassCtrl == `RData1_from_RData1) ? RData1_wire :
	                     (RData1BypassCtrl == `RData1_from_ID) ? bypass_ID :
						 (RData1BypassCtrl == `RData1_from_EX) ? bypass_EX :
						                                                             32'h1234_ABCD; // Err Signal
	
	/////////////////// �˳���Ԫ�����ź����� /////////////////////
	wire Start_wire;
	assign Start_wire = `mult || `multu || `div || `divu;
	
	/////////////////// ��������ת����Ԫ����Ϣ ///////////////
	assign RegRead0_ID = Rs_wire;
	assign RegRead1_ID = Rt_wire;
	assign Tuse_RAddr0_ID = Tuse_RAddr0_wire;
	assign Tuse_RAddr1_ID = Tuse_RAddr1_wire;
	assign MultTypeInstr = (`mult) || (`multu) || (`div) || (`divu) ||
	                       (`mflo) || (`mfhi) || (`mtlo) || (`mthi);
	
	////////////////// Error Detect /////////////////////
	assign ErrStat_wire = `syscall ? `SyscallErr : `insterr ? `RI : ErrStat_IF_to_ID;
	assign Err_wire = `insterr || `syscall ? 1 : Err_IF_to_ID;
	////////////////// ID/EX��ˮ�߼Ĵ��� ////////////////////
	
	always@(posedge clk)
	begin
		if(reset || Stall || ErrSignal || eretEn)  //Stallʱͬ�����ID/EX�Ĵ���
		begin
			RAddr0_ID_to_EX <= 5'd0;
			RAddr1_ID_to_EX <= 5'd0;
			RegWriteAddr_ID_to_EX <= 5'd0;
			Shamt_ID_to_EX <= 5'd0;
			imm32_ID_to_EX <= 32'd0;
			InstrType_ID_to_EX <= `inst_sll; // Type of nop(sll)
			RAddr0Data_ID_to_EX <= 32'd0;
			RAddr1Data_ID_to_EX <= 32'd0;
			ResFromID_ID_to_EX <= 32'd0;
			PC_ID_to_EX <= ErrSignal ? 32'h0000_4180 : (Stall) ? PC : eretEn ? EPCData : 32'h0000_3000;
			//PC_ID_to_EX <= 32'h0000_3000;
			Tuse_RAddr0_ID_to_EX <= 3'b111; // Ҫ�õ���ʱ��
			Tuse_RAddr1_ID_to_EX <= 3'b111;
			Tnew_WAddr_ID_to_EX <= 3'b000; // ����ʱ��
			Start_ID_to_EX <= 1'b0;
			ErrStat_ID_to_EX <= 5'd31;
			Err_ID_to_EX <= 0;
			Rd_CP0Addr_ID_to_EX <= 5'd0;
		end
		else
		begin
			RAddr0_ID_to_EX <= Rs_wire;
			RAddr1_ID_to_EX <= Rt_wire;
			RegWriteAddr_ID_to_EX <= WAddr_wire; //��ǰָ����ʵ��д���ַ
			Shamt_ID_to_EX <= Shamt_wire;
			imm32_ID_to_EX <= imm32_wire;
			InstrType_ID_to_EX <= InstrType;
			RAddr0Data_ID_to_EX <= RsData_wire;
			RAddr1Data_ID_to_EX <= RtData_wire;
			ResFromID_ID_to_EX <= ResFromID_wire;
			PC_ID_to_EX <= PC;
			Tuse_RAddr0_ID_to_EX <= Tuse_RAddr0_wire; // Ҫ�õ���ʱ��
			Tuse_RAddr1_ID_to_EX <= Tuse_RAddr1_wire;
			Tnew_WAddr_ID_to_EX <= Tnew_WAddr_wire; // ����ʱ��
			Start_ID_to_EX <= Start_wire;
			ErrStat_ID_to_EX <= ErrStat_wire;
			Err_ID_to_EX <= Err_wire;
			Rd_CP0Addr_ID_to_EX <= Instr[15:11];
		end
	end
	
endmodule

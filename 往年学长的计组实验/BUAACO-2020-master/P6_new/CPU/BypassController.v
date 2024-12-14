`timescale 1ns / 1ps
`include "CPU_Param.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:28:23 11/27/2020 
// Design Name: 
// Module Name:    BypassController 
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
module BypassController(
	// ID������������
	input wire [4:0] RAddr0_ID,
	input wire [4:0] RAddr1_ID,
	input wire [2:0] Tuse_RAddr0_ID,
	input wire [2:0] Tuse_RAddr1_ID,
	
	// EX������������
	input wire [4:0] RAddr0_EX,
	input wire [4:0] RAddr1_EX,
	input wire [4:0] RegWriteAddr_EX,
	input wire [2:0] Tuse_RAddr0_EX,
	input wire [2:0] Tuse_RAddr1_EX,
	input wire [2:0] Tnew_WAddr_EX,
	
	// Mem������������
	input wire [4:0] RAddr0_Mem,
    input wire [4:0] RAddr1_Mem,
    input wire [4:0] RegWriteAddr_Mem,
	input wire [2:0] Tuse_RAddr0_Mem,
	input wire [2:0] Tuse_RAddr1_Mem,
	input wire [2:0] Tnew_WAddr_Mem,
	
	//WB������������
	input wire [4:0] RegWriteAddr_WB,
	
	// ��������ź�
	output wire [1:0] RData0BypassCtrl,
	output wire [1:0] RData1BypassCtrl,//ID������
	output wire [1:0] ALUIn0BypassCtrl,
	output wire [1:0] ALUIn1BypassCtrl,
	output wire DMWriteDataBypassCtrl_EX, //EX������
	output wire DMWriteDataBypassCtrl_Mem //Mem��һ��
    );
	
	//////////////////// ID��RData0ת�� /////////////////////
	wire RData0_fromEX, RData0_fromID;
	assign RData0_fromID = (RAddr0_ID != 0) && 
	                       (RAddr0_ID == RegWriteAddr_EX) && 
						   (Tuse_RAddr0_ID == 3'b000) &&
						   (Tnew_WAddr_EX == 3'b000);
	//�����Ĵ�����0�������Ĵ����������д�Ĵ�����ͬ��TuseΪ0��������Ҫ����TnewΪ0���Ѿ�������
	assign RData0_fromEX = (RAddr0_ID != 0) && 
	                       (RAddr0_ID == RegWriteAddr_Mem) && 
						   (Tuse_RAddr0_ID == 3'b000) &&
						   (Tnew_WAddr_Mem == 3'b000);
	assign RData0BypassCtrl = (RData0_fromID) ? `RData0_from_ID :
	                          (RData0_fromEX) ? `RData0_from_EX :
							                                      `RData0_from_RData0;
	// �ɽ���Զ����ת��
	
	//////////////////// ID��RData1ת�� /////////////////////
	wire RData1_fromID, RData1_fromEX;
	assign RData1_fromID = (RAddr1_ID != 0) && 
	                       (RAddr1_ID == RegWriteAddr_EX) && 
						   (Tuse_RAddr1_ID == 3'b000) &&
						   (Tnew_WAddr_EX == 3'b000);
	//�����Ĵ�����0�������Ĵ����������д�Ĵ�����ͬ��TuseΪ0��������Ҫ����TnewΪ0���Ѿ�������
	assign RData1_fromEX = (RAddr1_ID != 0) && 
	                       (RAddr1_ID == RegWriteAddr_Mem) && 
						   (Tuse_RAddr1_ID == 3'b000) &&
						   (Tnew_WAddr_Mem == 3'b000);
	assign RData1BypassCtrl = (RData1_fromID) ? `RData1_from_ID :
	                          (RData1_fromEX) ? `RData1_from_EX :
							                                      `RData1_from_RData1;
	// �ɽ���Զ����ת��
	
	//////////////////// EX��ALUIn0ת�� /////////////////////
	wire ALUIn0_fromEX, ALUIn0_fromMem;
	assign ALUIn0_fromEX = (RAddr0_EX != 0) && 
	                       (RAddr0_EX == RegWriteAddr_Mem) && 
						   (Tuse_RAddr0_EX == 3'b000) &&
						   (Tnew_WAddr_Mem == 3'b000);
	//�����Ĵ�����0�������Ĵ����������д�Ĵ�����ͬ��TuseΪ0��������Ҫ����TnewΪ0���Ѿ�������
	assign ALUIn0_fromMem = (RAddr0_EX != 0) && 
	                        (RAddr0_EX == RegWriteAddr_WB) && 
						    (Tuse_RAddr0_EX == 3'b000);
	//����û�м��WB����Tnew����ΪWB����Ȼ�Ѿ��������ݣ�����Ҫ���
	assign ALUIn0BypassCtrl = (ALUIn0_fromEX) ? `ALUIn0_from_EX :
	                          (ALUIn0_fromMem) ? `ALUIn0_from_Mem :
							                                      `ALUIn0_from_ALUIn0;
	// �ɽ���Զ����ת��
	
	//////////////////// EX��ALUIn1ת�� /////////////////////
	wire ALUIn1_fromEX, ALUIn1_fromMem;
	assign ALUIn1_fromEX = (RAddr1_EX != 0) && 
	                       (RAddr1_EX == RegWriteAddr_Mem) && (Tnew_WAddr_Mem == 3'b000);
						   //(Tuse_RAddr1_EX == 3'b000) &&
						   
	//�����Ĵ�����0�������Ĵ����������д�Ĵ�����ͬ��TuseΪ0��������Ҫ����TnewΪ0���Ѿ�������
	assign ALUIn1_fromMem = (RAddr1_EX != 0) && 
	                        (RAddr1_EX == RegWriteAddr_WB); //&& 
						    //(Tuse_RAddr1_EX == 3'b000);
	//����û�м��WB����Tnew����ΪWB����Ȼ�Ѿ��������ݣ�����Ҫ���
	assign ALUIn1BypassCtrl = (ALUIn1_fromEX) ? `ALUIn1_from_EX :
	                          (ALUIn1_fromMem) ? `ALUIn1_from_Mem :
							                                      `ALUIn1_from_ALUIn1;
	// �ɽ���Զ����ת��
	
	//////////////////// EX��DMWriteDataת�� /////////////////////
	wire DMWriteData_EX_fromMem;

	//�����Ĵ�����0�������Ĵ����������д�Ĵ�����ͬ��TuseΪ0��������Ҫ����TnewΪ0���Ѿ�������
	assign DMWriteData_EX_fromMem = (RAddr1_EX != 0) && 
	                                (RAddr1_EX == RegWriteAddr_WB); //&& 
						            //(Tuse_RAddr1_EX == 3'b000);
	//����û�м��WB����Tnew����ΪWB����Ȼ�Ѿ��������ݣ�����Ҫ���
	//ע��store��ָ����Ҫ��ȡ�ļĴ�����Rt����RAddr1_EX
	//ע����������ǰת������˲�����Tuse
	assign DMWriteDataBypassCtrl_EX = (DMWriteData_EX_fromMem) ? `DMWriteData_from_WB :
							                                     `DMWriteData_from_ALUIn1;
	// �ɽ���Զ����ת��
	
	//////////////////// Mem��DMWriteDataת�� /////////////////////
	wire DMWriteData_Mem_fromMem;

	//�����Ĵ�����0�������Ĵ����������д�Ĵ�����ͬ��TuseΪ0��������Ҫ����TnewΪ0���Ѿ�������
	assign DMWriteData_Mem_fromMem = (RAddr1_Mem != 0) && 
	                                 (RAddr1_Mem == RegWriteAddr_WB); //&& 
						             //(Tuse_RAddr1_Mem == 3'b000);
	//����û�м��WB����Tnew����ΪWB����Ȼ�Ѿ��������ݣ�����Ҫ���
	//ע��store��ָ����Ҫ��ȡ�ļĴ�����Rt����RAddr1_Mem
	//ע������ֻ�ǽ����¼Ĵ�������ת����д�����У�д�������DMдʹ�ܾ�������˲���Ҫ���Tuse
	assign DMWriteDataBypassCtrl_Mem = (DMWriteData_Mem_fromMem) ? `DMWriteData_from_WB :
							                                       `DMWriteData_from_DMWD;
	// �ɽ���Զ����ת��
	
endmodule

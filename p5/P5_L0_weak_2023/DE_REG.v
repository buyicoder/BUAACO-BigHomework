`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:41:17 11/09/2024 
// Design Name: 
// Module Name:    DE_REG 
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
module DE_REG(
		input clk,reset,
		input RegWrite_D,
		input MemtoReg_D,
		input MemWrite_D,
		input [2:0] ALUControl_D,
		input ALUSrc_D,
		input RegDst_D,
		input [31:0] RD1_D,
		input [31:0] RD2_D,
		input [4:0] Rs_D,
		input [4:0] Rt_D,
		input [4:0] Rd_D,
		input CLR,
		output reg RegWrite_E,
		output reg MemtoReg_E,
		output reg MemWrite_E,
		output reg [2:0] ALUControl_E,
		output reg ALUSrc_E,
		output reg RegDst_E,
		output reg [31:0] RD1_E,
		output reg [31:0] RD2_E,
		output reg [4:0] Rs_E,
		output reg [4:0] Rt_E,
		output reg [4:0] Rd_E,
		input [31:0] pc_D,
		output reg [31:0] pc_E,
		input LUI_D,
		output reg LUI_E,
		input [31:0] HiImm_D,
		output reg[31:0] HiImm_E,
		input ORI_D,
		output reg ORI_E,

		input jal_D,
		output reg jal_E,
		input [31:0] signImm_D,
		output reg [31:0] signImm_E,
		input [31:0] ZeroImm_D,
		output reg [31:0] ZeroImm_E
    );
	 always@(posedge clk)begin
	 if(CLR|reset)begin
		 RegWrite_E<=0;
		 MemtoReg_E<=0;
		 MemWrite_E<=0;
		 ALUControl_E<=0;
		 ALUSrc_E<=0;
		 RegDst_E<=0;
		 RD1_E<=0;
		 RD2_E<=0;
		 Rs_E<=0;
		 Rt_E<=0;
		 Rd_E<=0;
		 pc_E<=0;
		LUI_E<=0;
		HiImm_E<=0;
		ORI_E<=0;
		jal_E<=0;
		signImm_E<=0;
		ZeroImm_E<=0;
	 end
	 else begin
	 RegWrite_E<=RegWrite_D;
		 MemtoReg_E<=MemtoReg_D;
		 MemWrite_E<=MemWrite_D;
		 ALUControl_E<= ALUControl_D;
		 ALUSrc_E<=ALUSrc_D;
		 RegDst_E<=RegDst_D;
		 RD1_E<= RD1_D;
		 RD2_E<=RD2_D;
		 Rs_E<=Rs_D;
		 Rt_E<=Rt_D;
		 Rd_E<=Rd_D;
		 LUI_E<=LUI_D;
		 pc_E<=pc_D;
		HiImm_E<=HiImm_D;
		ORI_E<=ORI_D;
		jal_E<=jal_D;
		signImm_E<=signImm_D;
		ZeroImm_E<=ZeroImm_D;
	 end
	end
initial begin
		 RegWrite_E<=0;
		 MemtoReg_E<=0;
		 MemWrite_E<=0;
		 ALUControl_E<=0;
		 ALUSrc_E<=0;
		 RegDst_E<=0;
		 RD1_E<=0;
		 RD2_E<=0;
		 Rs_E<=0;
		 Rt_E<=0;
		 Rd_E<=0;
		 pc_E<=0;
		 LUI_E<=0;
		HiImm_E<=0;
		ORI_E<=0;
		jal_E<=0;
		signImm_E<=0;
		ZeroImm_E<=0;
	 end

endmodule

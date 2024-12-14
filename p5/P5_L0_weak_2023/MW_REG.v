`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:38:06 11/09/2024 
// Design Name: 
// Module Name:    MW_REG 
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
module MW_REG(
		input clk,
		input reset,
		input RegWrite_M,
		input MemtoReg_M,
		input [31:0] ReadData_M,
		input [31:0] ALUOut_M,
		input [4:0] WriteReg_M,
		output reg RegWrite_W,
		output reg MemtoReg_W,
		output reg [31:0] ReadData_W,
		output reg [31:0] ALUOut_W,
		output reg [4:0] WriteReg_W,
		input [31:0] pc_M,
		output reg [31:0] pc_W,
		input LUI_M,
		output reg LUI_W,
		input [31:0] HiImm_M,
		output reg [31:0] HiImm_W,
		input ORI_M,
		output reg ORI_W,
		input [31:0] RORI_M,
		output reg [31:0] RORI_W,
		input jal_M,
		output reg jal_W
    );
always@(posedge clk)begin
if (reset)begin
	 RegWrite_W<=0;
		MemtoReg_W<=0;
		ReadData_W<=0;
		ALUOut_W<=0;
		WriteReg_W<=0;
		pc_W<=0;
		LUI_W<=0;
		HiImm_W<=0;
		ORI_W<=0;
		RORI_W<=0;
		jal_W<=0;
    end
else begin
		RegWrite_W<=RegWrite_M;
		MemtoReg_W<=MemtoReg_M;
		ReadData_W<=ReadData_M;
		ALUOut_W<=ALUOut_M;
		WriteReg_W<=WriteReg_M;
		LUI_W<=LUI_M;
		HiImm_W<=HiImm_M;
		ORI_W<=ORI_M;
		RORI_W<=RORI_M;
		jal_W<=jal_M;
		pc_W<=pc_M;
end
end
initial begin
RegWrite_W<=0;
		MemtoReg_W<=0;
		ReadData_W<=0;
		ALUOut_W<=0;
		WriteReg_W<=0;
		LUI_W<=0;
		HiImm_W<=0;
		ORI_W<=0;
		RORI_W<=0;
		jal_W<=0;
		pc_W<=0;
end
endmodule

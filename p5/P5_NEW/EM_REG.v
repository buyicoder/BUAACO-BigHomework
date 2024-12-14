`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:08:18 11/09/2024 
// Design Name: 
// Module Name:    EM_REG 
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
module EM_REG(
				input clk,reset,
				// input RegWrite_E,
				// input MemtoReg_E,
				// input MemWrite_E,
				input [31:0] ALUOut_E,
				input [31:0] WriteData_E,
				// input [4:0] WriteReg_E,
				// output reg RegWrite_M,
				// output reg MemtoReg_M,
				// output reg MemWrite_M,
				output reg [31:0] ALUOut_M,
				output reg[31:0] WriteData_M,
				// output reg [4:0] WriteReg_M,
				input [31:0] pc_E,
				output reg [31:0] pc_M,
				input [31:0] instr_E,
				output reg [31:0] instr_M
				// input LUI_E,
				// output reg LUI_M,
				// input [31:0] HiImm_E,
				// output reg [31:0] HiImm_M,
				// input ORI_E,
				// output reg ORI_M,
				// input [31:0] RORI_E,
				// output reg [31:0] RORI_M,
				// input jal_E,
				// output reg jal_M,
				// input [4:0] Rt_E,
				// output reg [4:0] Rt_M
    );
	 always@(posedge clk)begin
			if(reset)begin
				// RegWrite_M<=0;
				// MemtoReg_M<=0;
				// MemWrite_M<=0;
				ALUOut_M<=0;
				WriteData_M<=0;
				// WriteReg_M<=0;
				pc_M<=0;
				instr_M<=0;
				// LUI_M<=0;
				// HiImm_M<=0;
				// ORI_M<=0;
				// RORI_M<=0;
				// jal_M<=0;
				// Rt_M<=0;
			end
			else begin
				// RegWrite_M<=RegWrite_E;
				// MemtoReg_M<=MemtoReg_E;
				// MemWrite_M<=MemWrite_E;
				ALUOut_M<=ALUOut_E;
				WriteData_M<=WriteData_E;
				// WriteReg_M<=WriteReg_E;
				pc_M<=pc_E;
				instr_M<=instr_E;
				// LUI_M<=LUI_E;
				// HiImm_M<=HiImm_E;
				// ORI_M<=ORI_E;
				// RORI_M<=RORI_E;
				// jal_M<=jal_E;
				// Rt_M<=Rt_E;
			end
	end
	initial begin
				// RegWrite_M<=0;
				// MemtoReg_M<=0;
				// MemWrite_M<=0;
				ALUOut_M<=0;
		
				WriteData_M<=0;
				// WriteReg_M<=0;
				// LUI_M<=0;
				// HiImm_M<=0;
				pc_M<=0;
				instr_M<=0;
				// ORI_M<=0;
				// RORI_M<=0;
				// jal_M<=0;
				// Rt_M<=0;
	end

endmodule

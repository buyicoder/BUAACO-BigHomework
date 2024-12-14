`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:10:56 11/08/2024 
// Design Name: 
// Module Name:    FD_REG 
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
module FD_REG(
			input clk,
			input reset,
			input Stall_FD,
			input [31:0] instr_F,
			input [31:0] PCplus4_F,
			input [31:0] PC_F,
			output reg [31:0] instr_D,
			output reg [31:0] PCplus4_D,
			output reg [31:0] pc_D
    );
	 always @(posedge clk)begin
	 if(reset==1)begin
		instr_D<=0;
		PCplus4_D<=0;
		pc_D<=0;

		end
		else if(Stall_FD!=1)begin
		instr_D<=instr_F;
		PCplus4_D<=PCplus4_F;
		pc_D<=PC_F;

		end
	end
	initial begin
		instr_D<=0;
		PCplus4_D<=0;
		pc_D<=0;

	end


endmodule

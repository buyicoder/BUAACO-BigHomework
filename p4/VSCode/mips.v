`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:35:31 10/28/2024 
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
module mips(input logic clk,reset,
				output logic[31:0] pc,
				input logic[31:0] instr,
				output logic memewrite,
				output logic[31:0] aluout,writedata,
				input logic[31:0] readdata
    );
	 logic memtoreg,alusrc,regdst,regwrite,jump,pcsrc,zero;
	 logic [2:0] alucontrol;
	 controller c(instr[31:26],instr[5:0],zero,memetoreg,memwrite,pcsrc,alusrc,regdst,regwrite,jump,alucontrol);
	 datapath dp(clk,reset,memtoreg,pcsrc,alusrc,regdst,regdst,regwrite,jump,alucontrol,zero,pc,instr,aluout,writedata,readdata);
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:54:59 10/31/2024 
// Design Name: 
// Module Name:    IFU 
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
module IFU(
		input reset,
		input clk,
		input PCSrc,
		input Jump,
		input jr,
		input [31:0] jrAddr,
		output reg [31:0] PC,
		output [31:0] instr,
		input Stall_PC_F,
		input [31:0] PCBranch,
		input [31:0] PCJump
    );
	 
	 wire [31:0] PCplus4;
	 assign PCplus4=PC+32'b100;
	 IM IM(.PC(PC),.instr(instr));
	 always @(posedge clk)begin
		if(reset)begin
			PC<=32'h00003000;
		end
		else if(Stall_PC_F!=1)begin
			PC<=	jr?jrAddr:
					Jump?PCJump:
					PCSrc?PCBranch:
					PCplus4;
		end
	end
	initial PC<=32'h00003000;
	
	

endmodule

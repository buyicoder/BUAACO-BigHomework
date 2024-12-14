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
		input reset,clk,PCSrc,Jump,jr,
		input [31:0] jrAddr,
		output reg [31:0] PC,
		output wire [31:0] instr
    );
	 
	 wire [31:0] PCplus4;
	 wire [31:0] PCBranch;
	 assign PCplus4=PC+32'b100;
	 wire [31:0]ext;
	 assign ext={{14{instr[15]}},instr[15:0],2'b0};
	 assign PCBranch=ext+PCplus4;
	 IM IM(.PC(PC),.instr(instr));
	 always @(posedge clk)begin
		if(reset)begin
			PC<=32'h00003000;
		end
		else begin
			PC<=	jr?jrAddr:
					Jump?{PC[31:28],instr[25:0],1'b0,1'b0}:
					PCSrc?PCBranch:
					PCplus4;
		end
	end
	initial PC<=32'h00003000;
endmodule

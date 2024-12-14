`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:53:27 10/30/2024 
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
		input clk,
		input reset,
		output [31:0] instr,
		output [31:0] pc,
		output RegWrite,
		output [4:0] RegAddr,
		output [31:0] RegData,
		output  MemWrite,
		output [31:0] MemAddr,
		output [31:0] MemData
    );
	 wire MemtoReg;
	 wire Branch;
	 wire [2:0] ALUControl;
	 wire ALUSrc;
	 wire RegDst;
	 wire ORI;
	 wire LUI;
	 wire Jump;
	 wire jal;
	 wire jr;
	 
	 
	 wire [31:0] WD3;
	 assign WD3=jal?pc+32'b100:
					RegData;
	 
	 wire [31:0] RD1;
	 wire [31:0] RD2;
	 wire [31:0] SignImm;
	 assign SignImm={{16{instr[15]}},instr[15:0]};
	 wire [31:0] SrcB;
	 assign SrcB=ALUSrc?SignImm:
								RD2;
	 
	 
	 wire [31:0] jrAddr;
	 assign jrAddr=RD1;
	 
	 IFU IFU (
		.reset(reset), 
		.clk(clk), 
		.PCSrc(PCSrc), 
		.Jump(Jump), 
		.jr(jr), 
		.jrAddr(jrAddr), 
		.PC(pc), 
		.instr(instr)
	);
	 
	 
	 controller controller(
	 .op(instr[31:26]),
	 .funct(instr[5:0]),
	 .MemtoReg(MemtoReg),
	 .MemWrite(MemWrite),
	 .Branch(Branch),
	 .ALUControl(ALUControl),
	 .ALUSrc(ALUSrc),
	 .RegDst(RegDst),
	 .RegWrite(RegWrite),
	 .ORI(ORI),
	 .LUI(LUI),
	 .jump(Jump),
	 .jr(jr));
	 
	 GRF GRF(.A1(instr[25:21]),
	 .A2(instr[20:16]),
	 .A3(RegAddr),
	 .WD3(WD3),
	 .clk(clk),
	 .reset(reset),
	 .WE3(RegWirte),
	 .RD1(RD1),
	 .RD2(RD2));
	 
	 wire [31:0] ALUResult;
	 wire zero;
		ALU ALU(.A(RD1),
		.B(SrcB),
		.ALUOp(ALUControl),
		.zero(zero),
		.C(ALUResult));
		
		assign PCSrc=Branch&zero;
		
		wire [31:0] RD;
		DM DM(
		.clk(clk),
		.WE(MemWrite),
		.A(ALUResult),
		.RD(RD),
		.WD(RD2),
		.reset(reset),
		.pc(pc)
		);
		
		wire [31:0] ZeroImm;
		assign ZeroImm={16'b0,instr[15:0]};
		wire [31:0] HiImm;
		assign HiImm={instr[21:0],10'b0};
		wire RORI;
		assign RORI=ZeroImm|RD1;
		
		assign RegData=LUI?HiImm:
							ORI?RORI:
							MemtoReg?RD:
							ALUResult;
		reg [4:0] r31=5'b11111;
		
		assign RegAddr = jal? r31:
						   RegDst? instr[15:11]:
						  instr[20:16];
		
endmodule


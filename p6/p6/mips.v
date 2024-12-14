`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:55:16 11/08/2024 
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
    input [31:0] i_inst_rdata,
    input [31:0] m_data_rdata,
    output [31:0] i_inst_addr,
    output [31:0] m_data_addr,
    output [31:0] m_data_wdata,
    output [3 :0] m_data_byteen,
    output [31:0] m_inst_addr,
    output w_grf_we,
    output [4:0] w_grf_addr,
    output [31:0] w_grf_wdata,
    output [31:0] w_inst_addr
    );

//涉及到的变量
//F中的变量
wire [31:0] PC_F; 
wire [31:0] PCplus4_F;
wire [31:0] instr_F;
wire [31:0] PCBranch_D;
wire PCSrc_D;
wire Stall_FD;
wire Stall_PC_F;

//D中的变量
wire [31:0] instr_D;
wire [31:0] PCplus4_D;
wire [31:0] pc_D;
wire [31:0] PCJump_D;
//wire MemWrite_D;
wire Branch_D;
//wire [2:0] ALUControl_D;
//wire ALUSrc_D;
//wire RegDst_D;
//wire RegWrite_D;
wire ORI_D;
wire LUI_D;
wire Jump_D;
wire jr_D;
wire jal_D;

wire ForwardB_D;
wire ForwardA_D;

wire 	RegWrite_D;
wire	MemtoReg_D;
wire	MemWrite_D;
wire [4:0] ALUControl_D;
wire	[2:0]	ALUSrc_D;
wire	 RegDst_D;
wire [31:0]	RD1_D;
wire	[31:0]	RD2_D;
wire [31:0] RD1_beq;
wire [31:0] RD2_beq;
wire [31:0] SignImm_D;
wire [31:0] ZeroImm_D;
wire [31:0] jrAddr_D;
wire	[4:0] Rs_D;
wire	[4:0] Rt_D;
wire	[4:0]	Rd_D;
wire	CLR;

wire [31:0] WD3_D;
wire [4:0] A3_D;


//E中的变量


wire     [31:0] pc_E;
wire 		RegWrite_E;
wire		MemtoReg_E;
wire		MemWrite_E;
wire		[4:0] ALUControl_E;
wire	[2:0]	ALUSrc_E;
wire		RegDst_E;

wire		[31:0] RD1_E;
wire		[31:0] RD2_E;
wire		[4:0] Rs_E;
wire		[4:0] Rt_E;
wire		[4:0] Rd_E;
wire 		[31:0] SignImm_E;
wire 		[31:0] ZeroImm_E;

wire 		[31:0] SrcA_E;
wire 		[31:0] SrcB_E;
wire 		[31:0] WriteData_E;
wire 		[31:0] ALUOut_E;

wire		[4:0] WriteReg_E;

wire	[1:0] ForwardA_E;
wire  [1:0] ForwardB_E;
//M中的变量
wire [31:0] pc_M;
wire RegWrite_M;
wire MemtoReg_M;
wire MemWrite_M;
wire [31:0] ALUOut_M;
wire [31:0] WriteData_M;
wire [4:0] WriteReg_M;
wire [31:0] ReadData_M;
wire [31:0] Result_M;
wire [31:0]  A_M;
wire [31:0] WD_M;
wire Forward_M;
wire [4:0] Rt_M;
wire [4:0] RegAddr_M;
//W中的变量
wire [31:0]	pc_W;
wire [31:0] Result_W;
wire [4:0] WriteReg_W;
wire RegWrite_W;
wire MemtoReg_W;
wire [31:0] ReadData_W;
wire [31:0] ALUOut_W;
wire [31:0] RegAddr_W;

//新增信号
//wire LUI_D;
wire LUI_E;
wire LUI_M;
wire LUI_W;
wire [31:0] HiImm_D;
wire [31:0] HiImm_E;
wire [31:0] HiImm_M;
wire [31:0] HiImm_W;
//wire ORI_D;
wire ORI_E;
wire ORI_M;
wire ORI_W;
wire [31:0]  RORI_E;
wire [31:0]  RORI_M;
wire [31:0]  RORI_W;
wire jal_E;
wire jal_M;
wire jal_W;
//----------------F-----------------//
IFU IFU(
		reset,
		clk,
		PCSrc_D,
		Jump_D,
		jr_D,
		jrAddr_D,
		PC_F,
		instr_F,
		Stall_PC_F,
		PCBranch_D,
		PCJump_D
    );
assign PCplus4_F=PC_F+4;
//assign instr_F=i_inst_rdata;
assign i_inst_addr=PC_F;
//--------------FD_REG---------------//
FD_REG FD_REG(
	.clk(clk),
	.reset(reset),
	.Stall_FD(Stall_FD),
	.PCplus4_F(PCplus4_F),
	.instr_F(instr_F),
	.PCplus4_D(PCplus4_D),
	.PC_F(PC_F),
	.pc_D(pc_D),
	.instr_D(instr_D));
	
//----------------D------------------//
 controller controller(
	 .op(instr_D[31:26]),
	 .funct(instr_D[5:0]),
	 .MemtoReg(MemtoReg_D),
	 .MemWrite(MemWrite_D),
	 .Branch(Branch_D),
	 .ALUControl(ALUControl_D),
	 .ALUSrc(ALUSrc_D),
	 .RegDst(RegDst_D),
	 .RegWrite(RegWrite_D),
	 .ORI(ORI_D),
	 .LUI(LUI_D),
	 .jump(Jump_D),
	 .jr(jr_D),
	 .jal(jal_D));
	 
GRF GRF(
	 .WPC(pc_W),
	 .A1(instr_D[25:21]),
	 .A2(instr_D[20:16]),
	 .A3(A3_D),
	 .WD3(WD3_D),
	 .clk(clk),
	 .reset(reset),
	 .WE3(WE3_D),
	 .RD1(RD1_D),
	 .RD2(RD2_D));
	assign w_grf_we=WE3_D;
	assign w_grf_addr=A3_D;
	assign w_grf_wdata=WD3_D;
	assign w_inst_addr=pc_W;

	 
assign WE3_D=RegWrite_W;	 
assign WD3_D=jal_W?pc_W+32'b1000:Result_W;
assign jrAddr_D=(ForwardA_D)?Result_M:RD1_D;
assign PCJump_D={pc_D[31:28],instr_D[25:0],1'b0,1'b0};

assign A3_D=RegAddr_W;
assign RD1_beq=(ForwardA_D)?Result_M:RD1_D;
assign RD2_beq=(ForwardB_D)?Result_M:RD2_D;
assign Equal_D=(RD1_beq==RD2_beq)?1:0;
assign PCSrc_D=Equal_D&Branch_D;
assign SignImm_D={{16{instr_D[15]}},instr_D[15:0]};
assign PCBranch_D=PCplus4_D+(SignImm_D<<2);
assign Rs_D=instr_D[25:21];
assign Rt_D=instr_D[20:16];
assign Rd_D=instr_D[15:11];

assign ZeroImm_D={16'b0,instr_D[15:0]};

assign HiImm_D={instr_D[15:0],16'b0};

//---------------DE_REG----------//
DE_REG DE_REG(
		clk,reset,
		RegWrite_D,
		MemtoReg_D,
		MemWrite_D,
		ALUControl_D,
		ALUSrc_D,
		RegDst_D,
		RD1_D,
		RD2_D,
		Rs_D,
		Rt_D,
		Rd_D,
		CLR,
		RegWrite_E,
		MemtoReg_E,
		MemWrite_E,
		ALUControl_E,
		ALUSrc_E,
		RegDst_E,
		RD1_E,
		RD2_E,
		Rs_E,
		Rt_E,
		Rd_E,
		pc_D,
		pc_E,
		jal_D,
		jal_E,
		SignImm_D,
		SignImm_E,
		ZeroImm_D,
		ZeroImm_E
		);

//--------------E-----------------//
assign SrcA_E=(ForwardA_E==0)?RD1_E:
				(ForwardA_E==1)?Result_W:Result_M;
assign WriteData_E=(ForwardB_E==0)?RD2_E:
				(ForwardB_E==1)?Result_W:Result_M;
assign SrcB_E=(ALUSrc_E==1)?SignImm_E:
				(ALUSrc_E==2)?ZeroImm_E:
				WriteData_E;
ALU ALU( SrcA_E,
    SrcB_E,
    ALUControl_E,
    ALUOut_E,
	 zero_E);

assign WriteReg_E=(RegDst_E)?Rd_E:Rt_E;

//------------EM_REG-------------//
EM_REG EM_REG(
				clk,
				reset,
				RegWrite_E,
				MemtoReg_E,
				MemWrite_E,
				ALUOut_E,
				WriteData_E,
				WriteReg_E,
				RegWrite_M,
				MemtoReg_M,
				MemWrite_M,
				ALUOut_M,
				WriteData_M,
				WriteReg_M,
				pc_E,
				pc_M,
				jal_E,
				jal_M,
				Rt_E,
				Rt_M
    );
//------------M--------------------//
DM DM(
		reset,
		clk,
		MemWrite_M,
		A_M,
		WD_M,
		ReadData_M,
		pc_M
    );
assign m_data_addr=A_M;
//assign ReadData_M=m_data_rdata;
assign m_data_wdata=WD_M;
assign m_data_byteen={4{MemWrite_M}};
assign m_inst_addr=pc_M;
	  
	
assign A_M=ALUOut_M;
assign WD_M=Forward_M?Result_W:WriteData_M; 
assign Result_M=(jal_M)?pc_M+32'b1000:
						// (LUI_M)?HiImm_M:
						// (ORI_M)?RORI_M:
						(MemtoReg_M)?ReadData_M:ALUOut_M;
assign RegAddr_M=jal_M? 5'b11111:WriteReg_M;


//------------MW_REG---------------//
MW_REG MW_REG(
		clk,
		reset,
		RegWrite_M,
		MemtoReg_M,
		ReadData_M,
		ALUOut_M,
		WriteReg_M,
		RegWrite_W,
		MemtoReg_W,
		ReadData_W,
		ALUOut_W,
		WriteReg_W,
		pc_M,
		pc_W,
		// LUI_M,
		// LUI_W,
		// HiImm_M,
		// HiImm_W,
		// ORI_M,
		// ORI_W,
		// RORI_M,
		// RORI_W,
		jal_M,
		jal_W,
		lb_M,
		lb_W
    );
//------------W---------------------//
assign Result_W=(jal_W)?pc_W+32'b1000:
						// (LUI_W)?HiImm_W:
						// (ORI_W)?RORI_W:
						(MemtoReg_W)?(lb_W?(  (ALUOut_W[1:0]==2'b00)? {{24{ReadData_W[7]}},ReadData_W[7:0]}:
										(ALUOut_W[1:0]==2'b01)? {{24{ReadData_W[15]}},ReadData_W[15:8]}:
										(ALUOut_W[1:0]==2'b10)? {{24{ReadData_W[23]}},ReadData_W[23:16]}:
																		{{24{ReadData_W[31]}},ReadData_W[31:24]}
										):ReadData_W):
						ALUOut_W;

assign RegAddr_W=jal_W? 5'b11111:WriteReg_W;
//---------- 转发控制逻辑-------------//
//----------T逻辑--------------------//
wire [5:0] op;
wire [5:0] funct;
assign op=instr_D[31:26];
assign funct=instr_D[5:0];
	wire R;
	wire lw;
	wire sw;
	wire beq;
	wire andi;
	wire addi;
	wire ori;
	wire lui;
	wire j;
	wire nop;
	wire add;
	wire sub;
	wire slt;
	wire sltu;
	wire AND;
	wire OR;
	wire addu;
	wire subu;
	
	assign jal=(op==6'b000011)?1'b1:1'b0;
	assign R=(op==6'b000000)?1'b1:1'b0;
	assign lw=(op==6'b100011)?1'b1:1'b0;
	assign sw=(op==6'b101011)?1'b1:1'b0;
	assign beq=(op==6'b000100)?1'b1:1'b0;
	assign andi=(op==6'b001100)?1'b1:1'b0;
	assign  addi=(op==6'b001000)?1'b1:1'b0;
	assign  ori=(op==6'b001101)?1'b1:1'b0;
	assign  lui=(op==6'b001111)?1'b1:1'b0;
	assign  j=(op==6'b000010)?1'b1:1'b0;
	assign jr=(op==6'b000000&&funct==6'b001000)?1'b1:1'b0;
	assign nop=(op==6'b0&&funct==6'b0)?1:0;
	assign add = (op==6'b000000&&funct==6'b100000)?1:0;
	assign sub = (op==6'b000000&&funct==6'b100010)?1:0;
	assign slt = (op==6'b000000&&funct==6'b101010)?1:0;
	assign sltu = (op==6'b000000&&funct==6'b101011)?1:0;
	assign AND=(op==6'b000000&&funct==6'b100100)?1:0;
	assign OR=(op==6'b000000&&funct==6'b100101)?1:0;
	assign addu=(op==6'b000000&&funct==6'b100001)?1:0;
	assign subu=(op==6'b000000&&funct==6'b100011)?1:0;


//计算T

wire Tuse_RS0 ;
wire Tuse_RS1 ;
wire Tuse_RT0 ;
wire Tuse_RT1 ;
wire Tuse_RT2 ;

assign Tuse_RS0 = beq |jr;
assign Tuse_RS1 = add |sub|ori|sw|andi|addi|slt|sltu|AND|OR|lui|addu|subu;
assign Tuse_RT0 =beq; 
assign Tuse_RT1 =add|sub|slt|sltu|AND|OR|addu|subu;
assign Tuse_RT2 =sw;



`define T_ALU 2'b01
`define T_DM 2'b10
`define T_PC 2'b00

reg [1:0] Tnew_E,Tnew_M;

always @(posedge clk)begin
	if(add|sub|ori|lui|jal|andi|addi|slt|sltu|AND|OR|addu|subu)
	Tnew_E <= `T_ALU;
	else if(lw)
	Tnew_E<= `T_DM;
	else 
	Tnew_E<= `T_PC;
	Tnew_M<=(Tnew_E>0)?Tnew_E-1:0;
end

//构造暂停条件表达式
wire Stall_RS0_E1;
wire Stall_RS0_E2 ;
wire Stall_RS0_M1 ;
wire Stall_RS1_E2;
wire Stall_RT0_E1;
wire Stall_RT0_E2 ;
wire Stall_RT0_M1 ;
wire Stall_RT1_E2;

`define A1 instr_D[25:21]
`define A2 instr_D[20:16]
`define A3_E WriteReg_E
`define A3_M WriteReg_M
`define W_E RegWrite_E
`define W_M RegWrite_M

assign Stall_RS0_E1 = Tuse_RS0 & (Tnew_E==2'b01) & (`A1==`A3_E) & `W_E;
assign Stall_RS0_E2 = Tuse_RS0 & (Tnew_E==2'b10) & (`A1==`A3_E) & `W_E;
assign Stall_RS0_M1 = Tuse_RS0 & (Tnew_M==2'b01) & (`A1==`A3_M) & `W_M;
assign Stall_RS1_E2 = Tuse_RS1 & (Tnew_E==2'b10) & (`A1==`A3_E) & `W_E;

wire Stall_RS;
assign Stall_RS=Stall_RS0_E1 |
					Stall_RS0_E2 |
					Stall_RS0_M1 |
					Stall_RS1_E2;

assign Stall_RT0_E1 = Tuse_RT0 & (Tnew_E==2'b01) & (`A2==`A3_E) & `W_E;
assign Stall_RT0_E2 = Tuse_RT0 & (Tnew_E==2'b10) & (`A2==`A3_E) & `W_E;
assign Stall_RT0_M1 = Tuse_RT0 & (Tnew_M==2'b01) & (`A2==`A3_M) & `W_M;
assign Stall_RT1_E2 = Tuse_RT1 & (Tnew_E==2'b10) & (`A2==`A3_E) & `W_E;

wire Stall_RT;
assign Stall_RT=Stall_RT0_E1 |
					Stall_RT0_E2 |
					Stall_RT0_M1 |
					Stall_RT1_E2;
					
assign Stall= Stall_RS|Stall_RT;

assign Stall_PC_F=Stall;
assign Stall_FD=Stall;
assign CLR=Stall;
// 建模转发逻辑

assign ForwardA_E=((Rs_E!=0)&(RegAddr_M==Rs_E)&(Tnew_M==0)&(RegWrite_M&~MemtoReg_M))?2:
						((Rs_E!=0)&(RegAddr_W==Rs_E)&RegWrite_W)?1:0;
						
assign ForwardB_E=((Rt_E!=0)&(RegAddr_M==Rt_E)&(Tnew_M==0)&(RegWrite_M&~MemtoReg_M))?2:
						((Rt_E!=0)&(RegAddr_W==Rt_E)&RegWrite_W)?1:0;
						
assign ForwardA_D=((Rs_D!=0)&(RegAddr_M==Rs_D)&(Tnew_M==0)&(RegWrite_M&~MemtoReg_M))?1:0;
assign ForwardB_D=((Rt_D!=0)&(RegAddr_M==Rt_D)&(Tnew_M==0)&(RegWrite_M&~MemtoReg_M))?1:0;
assign Forward_M=((MemWrite_M)&(Rt_M!=0)&(Rt_M==WriteReg_W)&(RegWrite_W))?1:0;
endmodule
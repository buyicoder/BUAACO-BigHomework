module mips(
		input clk,
		input reset
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
wire Branch_D;
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
wire [31:0] instr_E;

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
wire [31:0] instr_M;
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
wire [4:0] Rs_M;
wire [4:0] Rt_M;
wire [4:0] Rd_M;
wire [4:0] RegAddr_M;
wire RegDst_M;
//W中的变量
wire [31:0]	pc_W;
wire [31:0] instr_W;
wire [31:0] Result_W;
wire [4:0] WriteReg_W;
wire RegWrite_W;
wire MemtoReg_W;
wire [4:0] Rs_W;
wire [4:0] Rt_W;
wire [4:0] Rd_W;
wire [31:0] ReadData_W;
wire [31:0] ALUOut_W;
wire [31:0] RegAddr_W;
wire RegDst_W;
//新增信号
wire [31:0] HiImm_D;
wire [31:0] HiImm_E;
wire [31:0] HiImm_M;
wire [31:0] HiImm_W;
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
 controller controller_D(
	 .op(instr_D[31:26]),
	 .funct(instr_D[5:0]),
	 .MemtoReg(MemtoReg_D),
	 .MemWrite(MemWrite_D),
	 .Branch(Branch_D),
	 .ALUControl(ALUControl_D),
	 .ALUSrc(ALUSrc_D),
	 .RegDst(RegDst_D),
	 .RegWrite(RegWrite_D),
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
	 
assign WE3_D=RegWrite_W;	 
assign WD3_D=Result_W;
assign jrAddr_D=(ForwardA_D)?Result_M:RD1_D;
assign PCJump_D={pc_D[31:28],instr_D[25:0],1'b0,1'b0};
assign A3_D=RegAddr_W;

assign RD1_beq=(ForwardA_D)?Result_M:RD1_D;
assign RD2_beq=(ForwardB_D)?Result_M:RD2_D;
assign Equal_D=(RD1_beq==RD2_beq)?1:0;
assign PCSrc_D=Equal_D&Branch_D;
assign PCBranch_D=PCplus4_D+(SignImm_D<<2);

assign Rs_D=instr_D[25:21];
assign Rt_D=instr_D[20:16];
assign Rd_D=instr_D[15:11];
assign ZeroImm_D={16'b0,instr_D[15:0]};
assign HiImm_D={instr_D[15:0],16'b0};
assign SignImm_D={{16{instr_D[15]}},instr_D[15:0]};

//---------------DE_REG----------//
DE_REG DE_REG(
		clk,
		reset,
		RD1_D,
		RD2_D,
		CLR,
		RD1_E,
		RD2_E,
		pc_D,
		pc_E,
		instr_D,
		instr_E
		);

//--------------E-----------------//
 controller controller_E(
	 .op(instr_E[31:26]),
	 .funct(instr_E[5:0]),
	 .MemtoReg(MemtoReg_E),
	 .MemWrite(MemWrite_E),
	 .ALUControl(ALUControl_E),
	 .ALUSrc(ALUSrc_E),
	 .RegDst(RegDst_E),
	 .RegWrite(RegWrite_E),
	 .jump(Jump_E),
	 .jr(jr_E),
	 .jal(jal_E));
	 
assign Rs_E=instr_E[25:21];
assign Rt_E=instr_E[20:16];
assign Rd_E=instr_E[15:11];
assign ZeroImm_E={16'b0,instr_E[15:0]};
assign HiImm_E={instr_E[15:0],16'b0};
assign SignImm_E={{16{instr_E[15]}},instr_E[15:0]};
assign WriteReg_E=(RegDst_E)?Rd_E:Rt_E;

assign SrcA_E=(ForwardA_E==0)?RD1_E:
				(ForwardA_E==1)?Result_W:Result_M;
assign WriteData_E=(ForwardB_E==0)?RD2_E:
				(ForwardB_E==1)?Result_W:Result_M;
assign SrcB_E=(ALUSrc_E==3)?HiImm_E:
				(ALUSrc_E==2)?ZeroImm_E:
				(ALUSrc_E==1)?SignImm_E:WriteData_E;
assign RORI_E=SrcA_E|ZeroImm_E;

ALU ALU( SrcA_E,
    SrcB_E,
    ALUControl_E,
    ALUOut_E,
	 zero_E);



//------------EM_REG-------------//
EM_REG EM_REG(
				clk,
				reset,
				ALUOut_E,
				WriteData_E,
				ALUOut_M,
				WriteData_M,
				pc_E,
				pc_M,
				instr_E,
				instr_M
    );
//------------M--------------------//
 controller controller_M(
	 .op(instr_M[31:26]),
	 .funct(instr_M[5:0]),
	 .MemtoReg(MemtoReg_M),
	 .MemWrite(MemWrite_M),
	 .RegDst(RegDst_M),
	 .RegWrite(RegWrite_M),
	 .jump(Jump_M),
	 .jr(jr_M),
	 .jal(jal_M));
	 
assign Rs_M=instr_M[25:21];
assign Rt_M=instr_M[20:16];
assign Rd_M=instr_M[15:11];
assign ZeroImm_M={16'b0,instr_M[15:0]};
assign HiImm_M={instr_M[15:0],16'b0};
assign SignImm_M={{16{instr_M[15]}},instr_M[15:0]};
assign WriteReg_M=(RegDst_M)?Rd_M:Rt_M;



DM DM(
		reset,
		clk,
		MemWrite_M,
		A_M,
		WD_M,
		ReadData_M,
		pc_M
    );
assign A_M=ALUOut_M;
assign WD_M=Forward_M?Result_W:WriteData_M; 
assign Result_M=(jal_M)?pc_M+32'b1000:
						(MemtoReg_M)?ReadData_M:ALUOut_M;
assign RegAddr_M=jal_M? 5'b11111:WriteReg_M;
//------------MW_REG---------------//
MW_REG MW_REG(
		clk,
		reset,
		ReadData_M,
		ALUOut_M,
		ReadData_W,
		ALUOut_W,
		pc_M,
		pc_W,
		instr_M,
		instr_W
    );
//------------W---------------------//
 controller controller_W(
	 .op(instr_W[31:26]),
	 .funct(instr_W[5:0]),
	 .MemtoReg(MemtoReg_W),
	 .RegDst(RegDst_W),
	 .RegWrite(RegWrite_W),
	 .jump(Jump_W),
	 .jr(jr_W),
	 .jal(jal_W));
	 
assign Rs_W=instr_W[25:21];
assign Rt_W=instr_W[20:16];
assign Rd_W=instr_W[15:11];
assign ZeroImm_W={16'b0,instr_W[15:0]};
assign HiImm_W={instr_W[15:0],16'b0};
assign SignImm_W={{16{instr_W[15]}},instr_W[15:0]};
assign WriteReg_W=(RegDst_W)?Rd_W:Rt_W;


assign Result_W=(jal_W)?pc_W+32'b1000:
						(MemtoReg_W)?ReadData_W:ALUOut_W;

assign RegAddr_W=jal_W? 5'b11111:WriteReg_W;
//---------- 转发控制逻辑-------------//
//----------T逻辑--------------------//
wire [5:0] op;
wire [5:0] funct;
assign op=instr_D[31:26];
assign funct=instr_D[5:0];
	wire jal;
	wire R;
	wire lw;
	wire sw;
	wire beq;
	wire addi;
	wire ori;
	wire lui;
	wire j;
	wire jr;
	wire nop;
	wire add;
	wire sub;
	wire addu;
	wire subu;
	

	assign jal=(op==6'b000011)?1'b1:1'b0;
	assign R=(op==6'b000000)?1'b1:1'b0;
	assign lw=(op==6'b100011)?1'b1:1'b0;
	assign sw=(op==6'b101011)?1'b1:1'b0;
	assign beq=(op==6'b000100)?1'b1:1'b0;
	assign  addi=(op==6'b001000)?1'b1:1'b0;
	assign  ori=(op==6'b001101)?1'b1:1'b0;
	assign  lui=(op==6'b001111)?1'b1:1'b0;
	assign  j=(op==6'b000010)?1'b1:1'b0;
	assign jr=(op==6'b000000&&funct==6'b001000)?1'b1:1'b0;
	assign nop=(op==6'b0&&funct==6'b0)?1:0;
	assign add = (op==6'b000000&&funct==6'b100000)?1:0;
	assign sub = (op==6'b000000&&funct==6'b100010)?1:0;
	assign addu=(op==6'b000000&&funct==6'b100001)?1:0;
	assign subu=(op==6'b000000&&funct==6'b100011)?1:0;	
//计算T

wire Tuse_RS0 ;
wire Tuse_RS1 ;
wire Tuse_RT0 ;
wire Tuse_RT1 ;
wire Tuse_RT2 ;

assign Tuse_RS0 = beq |jr;
assign Tuse_RS1 = add |sub|addu|subu|ori|lui|sw|lw;
assign Tuse_RT0 =beq; 
assign Tuse_RT1 =add|sub|addu|subu;
assign Tuse_RT2 =sw;



`define T_ALU 2'b01
`define T_DM 2'b10
`define T_PC 2'b00

reg [1:0] Tnew_E,Tnew_M;

always @(posedge clk)begin
	if(add|sub|ori|lui|jal|addu|subu)
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
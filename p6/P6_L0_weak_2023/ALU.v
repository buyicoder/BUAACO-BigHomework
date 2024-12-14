module ALU(
    input [31:0] A,
    input [31:0] B,
    input [4:0] ALUControl,
    output [31:0] C,
	 output zero
    );
	 assign C=(ALUControl==5'b000)?(A&B):
			(ALUControl==5'b001)?(A|B):
			(ALUControl==5'b010)?(A+B):
			(ALUControl==5'b011)?(A+B)://
			(ALUControl==5'b100)?(A&~B):
			(ALUControl==5'b101)?(A|~B):
			(ALUControl==5'b110)?(A-B):
			(ALUControl==7)?((A[31]==1&&B[31]==0)?32'b1:
								(A[31]==0&&B[31]==1)?32'b0:
								(A<B)?1:0):
			(ALUControl==8)?((A<B)?32'b1:32'b0):
			(ALUControl==9)?(B):
			0;
	assign zero = (C==32'b0)?1:0;
endmodule

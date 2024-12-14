module ALU(
    input [31:0] A,
    input [31:0] B,
    input [4:0] ALUControl,
    output [31:0] C,
	 output zero
    );
	wire [31:0] AsubB_signed;
	assign AsubB_signed=$signed(A)-$signed(B);
	wire [32:0] AsubB_unsigned;
	assign AsubB_unsigned=$signed({1'b0,A})-$unsigned
({1'b0,B});
	 assign C=(ALUControl==5'b000)?(A&B):
			(ALUControl==5'b001)?(A|B):
			(ALUControl==5'b010)?(A+B):
			(ALUControl==5'b011)?(A+B)://
			(ALUControl==5'b100)?(A&~B):
			(ALUControl==5'b101)?(A|~B):
			(ALUControl==5'b110)?(A-B):
			(ALUControl==7)?((AsubB_signed[31]==1)?32'b1:32'b0):
			(ALUControl==8)?((AsubB_unsigned[32]==1)?32'b1:32'b0):
			(ALUControl==9)?(B):
			0;
	assign zero = (C==32'b0)?1:0;
endmodule

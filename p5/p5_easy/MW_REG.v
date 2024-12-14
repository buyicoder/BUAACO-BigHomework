module MW_REG(
		input clk,
		input reset,
		input [31:0] ReadData_M,
		input [31:0] ALUOut_M,
		output reg [31:0] ReadData_W,
		output reg [31:0] ALUOut_W,
		input [31:0] pc_M,
		output reg [31:0] pc_W,
		input [31:0]instr_M,
		output reg [31:0] instr_W
    );
always@(posedge clk)begin
if (reset)begin
		ReadData_W<=0;
		ALUOut_W<=0;
		pc_W<=0;
		instr_W<=0;
    end
else begin
		ReadData_W<=ReadData_M;
		ALUOut_W<=ALUOut_M;
		pc_W<=pc_M;
		instr_W<=instr_M;
end
end
initial begin
		ReadData_W<=0;
		ALUOut_W<=0;
		pc_W<=0;
		instr_W=0;
end
endmodule

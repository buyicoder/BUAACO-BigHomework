module EM_REG(
				input clk,reset,
				input [31:0] ALUOut_E,
				input [31:0] WriteData_E,
				output reg [31:0] ALUOut_M,
				output reg[31:0] WriteData_M,
				input [31:0] pc_E,
				output reg [31:0] pc_M,
				input [31:0] instr_E,
				output reg [31:0] instr_M
    );
	 always@(posedge clk)begin
			if(reset)begin
				ALUOut_M<=0;
				WriteData_M<=0;
				pc_M<=0;
				instr_M<=0;
			end
			else begin
				ALUOut_M<=ALUOut_E;
				WriteData_M<=WriteData_E;
				pc_M<=pc_E;
				instr_M<=instr_E;
			end
	end
	initial begin
				ALUOut_M<=0;
				WriteData_M<=0;
				pc_M<=0;
				instr_M<=0;
	end

endmodule

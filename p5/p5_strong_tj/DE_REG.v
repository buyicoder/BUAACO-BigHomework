module DE_REG(
		input clk,
		input reset,
		input [31:0] RD1_D,
		input [31:0] RD2_D,
		input CLR,
		output reg [31:0] RD1_E,
		output reg [31:0] RD2_E,
		input [31:0] pc_D,
		output reg [31:0] pc_E,
		input [31:0] instr_D,
		output reg [31:0] instr_E
    );
	 always@(posedge clk)begin
	 if(CLR|reset)begin
		 RD1_E<=0;
		 RD2_E<=0;
		 pc_E<=0;
		 instr_E<=0;
	 end
	 else begin
		 RD1_E<= RD1_D;
		 RD2_E<=RD2_D;
		 pc_E<=pc_D;
		 instr_E<=instr_D;
	 end
	end
initial begin
		 RD1_E<=0;
		 RD2_E<=0;
		 pc_E<=0;
		 instr_E<=0;
	 end

endmodule

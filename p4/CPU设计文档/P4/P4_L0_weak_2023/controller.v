`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:04:22 10/31/2024 
// Design Name: 
// Module Name:    controller 
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
module controller(
			input [5:0]op,
			input [5:0]funct,
			output MemtoReg,
			output MemWrite,
			output Branch,
			output [2:0] ALUControl,
			output ALUSrc,
			output RegDst,
			output RegWrite,
			output ORI,
			output LUI,
			output jump,
			output jal,
			output jr
    );
	wire R;
	wire lw;
	wire sw;
	wire beq;
	wire addi;
	wire ori;
	wire lui;
	wire j;
	wire nop;
	
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
	
	assign MemtoReg=lw;
	assign MemWrite=sw;
	assign Branch=beq;
	assign ALUSrc=lw|sw|addi;
	assign RegDst=R;
	assign RegWrite=add|sub|ori|lw|lui|jal;
	assign ORI=ori;
	assign LUI=lui;
	assign jump=j|jal;
	
	wire [1:0] ALUOp;
	assign ALUOp[1]=R;
	assign ALUOp[0]=beq;
	
	wire add;
	wire sub;
	wire AND;
	wire OR;
	wire slt;
	
	assign add = (op==6'b000000&&funct==6'b100000)?1:0;
	assign sub = (op==6'b000000&&funct==6'b100010)?1:0;
	assign AND = (op==6'b000000&&funct==6'b100100)?1:0;
	assign OR = (op==6'b000000&&funct==6'b100101)?1:0;
	assign slt = (op==6'b000000&&funct==6'b101010)?1:0;
	
	assign ALUControl=(ALUOp==2'b0)?3'b010:
							(ALUOp[0]==1)?3'b110:
							add?3'b010:
							sub?3'b110:
							AND?3'b000:
							OR?3'b001:
							slt?3'b111:
							3'b111;
	
	/*always #10 begin
	if(add) $display("add");
	else if(sub) $display("sub");
	else if(AND) $display("AND");
	else if(OR) $display("OR");
	else if(slt) $display("slt");
	else if(lw) $display("lw");
	else if(sw) $display("sw");
	else if(beq) $display("beq");
	else if(addi) $display("addi");
	else if(ori) $display("ori");
	else if(lui) $display("lui");
	else if(j) $display("j");
	else if(nop) $display("nop");
	else if(jr)$display("jr");
	end*/
endmodule

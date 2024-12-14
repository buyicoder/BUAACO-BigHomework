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
			output [4:0] ALUControl,
			output [2:0]ALUSrc,
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
	wire lb;
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
	wire AND;
	wire OR;
	wire slt;
	wire sltu;
	wire addu;
	wire subu;

	assign jal=(op==6'b000011)?1'b1:1'b0;
	assign R=(op==6'b000000)?1'b1:1'b0;
	assign lw=(op==6'b100011)?1'b1:1'b0;
	assign lb=(op==6'b100000)?1:0;
	assign sw=(op==6'b101011)?1'b1:1'b0;
	assign beq=(op==6'b000100)?1'b1:1'b0;
	assign andi=(op==6'b001100)?1'b1:1'b0;
	assign  addi=(op==6'b001000)?1'b1:1'b0;
	assign  ori=(op==6'b001101)?1'b1:1'b0;
	assign  lui=(op==6'b001111)?1'b1:1'b0;
	assign  j=(op==6'b000010)?1'b1:1'b0;
	assign jr=(op==6'b000000&&funct==6'b001000)?1'b1:1'b0;
	assign nop=(op==6'b0&&funct==6'b0)?1:0;
	
	assign subu = (op==6'b000000&&funct==6'b100011)?1:0;
	assign addu = (op==6'b000000&&funct==6'b100001)?1:0;
	assign add = (op==6'b000000&&funct==6'b100000)?1:0;
	assign sub = (op==6'b000000&&funct==6'b100010)?1:0;
	assign AND = (op==6'b000000&&funct==6'b100100)?1:0;
	assign OR = (op==6'b000000&&funct==6'b100101)?1:0;
	assign slt = (op==6'b000000&&funct==6'b101010)?1:0;
	assign slt=(op==6'b000000&&funct==6'b101010)?1'b1:1'b0;
	assign sltu=(op==6'b000000&&funct==6'b101011)?1'b1:1'b0;
	
	
	assign MemtoReg=lw|lb;
	assign MemWrite=sw;
	assign Branch=beq;
	assign ALUSrc=(lw|lb|sw|addi)?1:
				(andi|lui|ori)?2:0;
	assign RegDst=R;
	assign RegWrite=add|sub|ori|lw|lb|lui|jal|slt|sltu|addu|subu|addi;
	assign ORI=ori;
	assign LUI=lui;
	assign jump=j|jal;
	
	
	
	assign ALUControl=(add|addi|addu|sw|lw|lb)?5'b00010:
							(sub|subu|beq)?5'b00110:
							(AND|andi)?5'b00000:
							(OR|ori)?5'b00001:
							slt?5'b00111:
							sltu?8:
							lui?5'b01001:
							0;
	
	/*always #10 begin
	 if(add) $display("add");
	 if(sub) $display("sub");
	 if(AND) $display("AND");
	 if(OR) $display("OR");
	 if(slt) $display("slt");
	 if(lw) $display("lw");
	 if(sw) $display("sw");
	 if(beq) $display("beq");
	 if(addi) $display("addi");
	 if(ori) $display("ori");
	 if(lui) $display("lui");
	 if(j) $display("j");
	 if(nop) $display("nop");
	 if(jr)$display("jr");
	end*/
endmodule

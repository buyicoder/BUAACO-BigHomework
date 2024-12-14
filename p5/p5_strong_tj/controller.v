module controller(
			input [5:0]op,
			input [5:0]funct,
			output MemtoReg,
			output MemWrite,
			output Branch,
			output [4:0] ALUControl,
			output [2:0] ALUSrc,
			output RegDst,
			output RegWrite,
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
	

	
	
	assign MemtoReg=lw;
	assign MemWrite=sw;
	assign Branch=beq;
	assign ALUSrc=(lw|sw|addi)?1:
				(ori)?2:
				(lui)?3:0;
	assign RegDst=R;
	assign RegWrite=add|addu|sub|subu|ori|lw|lui|jal;
	assign jump=j|jal;
	
	
	
	

	wire AND;
	wire OR;
	wire slt;
	
	assign add = (op==6'b000000&&funct==6'b100000)?1:0;
	assign sub = (op==6'b000000&&funct==6'b100010)?1:0;
	assign addu=(op==6'b000000&&funct==6'b100001)?1:0;
	assign subu=(op==6'b000000&&funct==6'b100011)?1:0;	
	assign AND = (op==6'b000000&&funct==6'b100100)?1:0;
	assign OR = (op==6'b000000&&funct==6'b100101)?1:0;
	assign slt = (op==6'b000000&&funct==6'b101010)?1:0;
	
	assign ALUControl=(add|addu|lw|sw)?5'b010:
						(sub|subu|beq)?5'b110:
						AND?5'b000:
						(OR|ori)?5'b001:
							slt?5'b111:
							lui?9:0;
	
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

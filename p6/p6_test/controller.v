module controller(
			input [5:0]op,
			input [5:0]funct,
			output MemtoReg,
			output MemWrite,
			output [1:0] Branch,
			output [4:0] ALUControl,
			output [2:0] ALUSrc,
			output RegDst,
			output RegWrite,
			output jump,
			output jal,
			output jr,
			output [1:0] MemControl,
			output [3:0] alu_class
    );
	wire R;
	wire lw;
	wire sw;
	wire beq;
	wire bne;
	wire lui;
	wire j;
	wire nop;
	wire add;
	wire sub;
	wire addu;
	wire subu;
	wire AND;
	wire OR;
	wire slt;
	wire sltu;
	wire addi;
	wire andi;
	wire ori;

	wire lb;
	wire lh;
	wire sb;
	wire sh;
	
	wire mult,multu,div,divu,mfhi,mflo,mthi,mtlo;
	
	assign mult=(op==0&&funct==6'b011000)?1:0;
	assign multu=(op==0&&funct==6'b011001)?1:0;
	assign div=(op==0&&funct==6'b011010)?1:0;
	assign divu=(op==0&&funct==6'b011011)?1:0;
	assign mfhi=(op==0&&funct==6'b010000)?1:0;
	assign mflo=(op==0&&funct==6'b010010)?1:0;
	assign mthi=(op==0&&funct==6'b010001)?1:0;
	assign mtlo=(op==0&&funct==6'b010011)?1:0;	

	assign alu_class=mult?1:
				multu?2:
				div?3:
				divu?4:
				mfhi?5:
				mflo?6:
				mthi?7:
				mtlo?8:0;

	assign lb=(op==6'b100000)?1'b1:1'b0;
	assign lh=(op==6'b100001)?1'b1:1'b0;
	assign sb=(op==6'b101000)?1'b1:1'b0;
	assign sh=(op==6'b101001)?1'b1:1'b0;

	assign jal=(op==6'b000011)?1'b1:1'b0;
	assign R=(op==6'b000000)?1'b1:1'b0;
	assign lw=(op==6'b100011)?1'b1:1'b0;
	assign sw=(op==6'b101011)?1'b1:1'b0;
	assign beq=(op==6'b000100)?1'b1:1'b0;
	assign bne=(op==6'b000101)?1'b1:1'b0;
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
	assign AND = (op==6'b000000&&funct==6'b100100)?1:0;
	assign OR = (op==6'b000000&&funct==6'b100101)?1:0;
	assign slt = (op==6'b000000&&funct==6'b101010)?1:0;
	assign sltu = (op==6'b000000&&funct==6'b101011)?1:0;
	assign addi = (op==6'b001000)?1:0;
	assign andi = (op==6'b001100)?1:0;
	assign ori = (op==6'b001101)?1:0;
	
	
	assign MemtoReg=lw|lb|lh;
	assign MemWrite=sw|sb|sh;
	assign Branch=beq?1:
					bne?2:0;
	assign ALUSrc=(lw|lb|lh|sb|sh|sw|addi)?1:
				(ori|andi)?2:
				(lui)?3:0;
	assign RegDst=R|mflo|mfhi;
	assign RegWrite=add|addu|sub|subu|ori|lw|lb|lh|lui|jal|AND|OR|slt|sltu|addi|andi|mflo|mfhi;
	assign jump=j|jal;
	assign MemControl=(sw|lw)?0:
						(sh|lh)?1:
						(sb|lb)?2:3;
	
	
	

	
	
	assign ALUControl=(add|addu|addi|lw|sw)?5'b010:
						(sub|subu|beq)?5'b110:
						(AND|andi)?5'b000:
						(OR|ori)?5'b001:
							slt?5'b111:
							sltu?8:
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

module IM(
		input [31:0] PC,
		output [31:0] instr
    );
	 reg [31:0] mem[4095:0];
	 wire [31:0] sub_pc;
	 assign sub_pc=PC-32'h00003000;
	 assign instr=mem[sub_pc[13:2]];
initial begin
        $readmemh("code.txt", mem);
    end
	 
endmodule

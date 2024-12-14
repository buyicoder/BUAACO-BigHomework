`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:56:53 11/02/2024
// Design Name:   controller
// Module Name:   E:/COexcercise/p4/P4/controllertb.v
// Project Name:  P4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module controllertb;

	// Inputs
	reg [5:0] op;
	reg [5:0] funct;

	// Outputs
	wire MemtoReg;
	wire MemWrite;
	wire Branch;
	wire [2:0] ALUControl;
	wire ALUSrc;
	wire RegDst;
	wire RegWrite;
	wire ORI;
	wire LUI;
	wire jump;
	wire jal;
	wire jr;

	// Instantiate the Unit Under Test (UUT)
	controller uut (
		.op(op), 
		.funct(funct), 
		.MemtoReg(MemtoReg), 
		.MemWrite(MemWrite), 
		.Branch(Branch), 
		.ALUControl(ALUControl), 
		.ALUSrc(ALUSrc), 
		.RegDst(RegDst), 
		.RegWrite(RegWrite), 
		.ORI(ORI), 
		.LUI(LUI), 
		.jump(jump), 
		.jal(jal), 
		.jr(jr)
	);

	initial begin
		// Initialize Inputs
		op = 0;
		funct = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


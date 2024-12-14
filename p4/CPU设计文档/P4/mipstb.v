`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:51:11 11/02/2024
// Design Name:   mips
// Module Name:   E:/COexcercise/p4/P4/mipstb.v
// Project Name:  P4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mipstb;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [31:0] instr;
	wire [31:0] pc;
	wire RegWrite;
	wire [4:0] RegAddr;
	wire [31:0] RegData;
	wire MemWrite;
	wire [31:0] MemAddr;
	wire [31:0] MemData;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset), 
		.instr(instr), 
		.pc(pc), 
		.RegWrite(RegWrite), 
		.RegAddr(RegAddr), 
		.RegData(RegData), 
		.MemWrite(MemWrite), 
		.MemAddr(MemAddr), 
		.MemData(MemData)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      always #5 clk=~clk;
endmodule


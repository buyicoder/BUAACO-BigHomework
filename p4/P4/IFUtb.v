`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:52:15 11/02/2024
// Design Name:   IFU
// Module Name:   E:/COexcercise/p4/P4/IFUtb.v
// Project Name:  P4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IFU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module IFUtb;

	// Inputs
	reg reset;
	reg clk;
	reg PCSrc;
	reg Jump;
	reg jr;
	reg [31:0] jrAddr;

	// Outputs
	wire [31:0] PC;
	wire [31:0] instr;

	// Instantiate the Unit Under Test (UUT)
	IFU uut (
		.reset(reset), 
		.clk(clk), 
		.PCSrc(PCSrc), 
		.Jump(Jump), 
		.jr(jr), 
		.jrAddr(jrAddr), 
		.PC(PC), 
		.instr(instr)
	);

	initial begin
		// Initialize Inputs
		reset = 0;
		clk = 0;
		PCSrc = 0;
		Jump = 0;
		jr = 0;
		jrAddr = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
	end
      always #5 clk=~clk;
endmodule


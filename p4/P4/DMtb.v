`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:09:01 11/02/2024
// Design Name:   DM
// Module Name:   E:/COexcercise/p4/P4/DMtb.v
// Project Name:  P4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DMtb;

	// Inputs
	reg reset;
	reg clk;
	reg WE;
	reg [31:0] A;
	reg [31:0] WD;
	reg [31:0] pc;

	// Outputs
	wire [31:0] RD;

	// Instantiate the Unit Under Test (UUT)
	DM uut (
		.reset(reset), 
		.clk(clk), 
		.WE(WE), 
		.A(A), 
		.WD(WD), 
		.RD(RD), 
		.pc(pc)
	);

	initial begin
		// Initialize Inputs
		reset = 0;
		clk = 0;
		WE = 0;
		A = 0;
		WD = 0;
		pc = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      always #5 clk=~clk;
endmodule


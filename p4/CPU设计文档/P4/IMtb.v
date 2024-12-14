`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:47:48 11/02/2024
// Design Name:   IM
// Module Name:   E:/COexcercise/p4/P4/IMtb.v
// Project Name:  P4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module IMtb;

	// Inputs
	reg [31:0] PC;

	// Outputs
	wire [31:0] instr;

	// Instantiate the Unit Under Test (UUT)
	IM uut (
		.PC(PC), 
		.instr(instr)
	);

	initial begin
		// Initialize Inputs
		PC = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      always
endmodule


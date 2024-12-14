`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:57:16 10/31/2024 
// Design Name: 
// Module Name:    IM 
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

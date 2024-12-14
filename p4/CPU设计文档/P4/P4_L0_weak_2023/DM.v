`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:15 10/31/2024 
// Design Name: 
// Module Name:    DM 
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
module DM(
		input reset,clk,WE,
		input [31:0] A,
		input [31:0] WD,
		output [31:0] RD,
		input [31:0] pc
    );
	 reg [31:0] mem[4095:0];
	 wire [11:0] addr;
	 assign addr = A[13:2];
	 assign RD = mem[addr];
	 integer i=0;
	 initial begin
	 for(i=0;i<4096;i=i+1)begin
						mem[i]<=32'b0;
						end
						end
	 always @(posedge clk)begin
			if(reset)begin
						for(i=0;i<4096;i=i+1)begin
						mem[i]<=32'b0;
						end
			end else begin
			if(WE)begin
				mem[A[11:2]]<=WD;
				$display("@%h: *%h <= %h", pc, A, WD);
			end
			
		end
	end
endmodule
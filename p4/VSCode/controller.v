`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:03:41 10/28/2024 
// Design Name: 
// Module Name:    controller 
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
module controller(input logic[5:0] op,funct,
    input logic zero,
    output logic memtoreg,memwrite,
    output logic pcsrc,alusrc,,
    output logic regdst,regwrite,
    output logic jump,
    output logic[2:0] alucontrol);
    logic [1:0] aluop;
    logic branch;
    
    maindec md(op,memtoreg,memwrite,branch,pcsrc,alusrc,regdst,regwrite,jump,aluop);
    
    aludec ad(funct,aluop,alucontrol);
    assign pcsrc=branch&zero;
endmodule

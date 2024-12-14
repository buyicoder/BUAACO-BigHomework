////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: controller_synthesis.v
// /___/   /\     Timestamp: Sat Nov 02 16:21:54 2024
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim controller.ngc controller_synthesis.v 
// Device	: xa3s50-4-vqg100
// Input file	: controller.ngc
// Output file	: E:\COexcercise\p4\P4\netgen\synthesis\controller_synthesis.v
// # of Modules	: 1
// Design Name	: controller
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module controller (
  jr, jump, LUI, Branch, RegDst, RegWrite, jal, ORI, MemWrite, ALUSrc, MemtoReg, ALUControl, funct, op
);
  output jr;
  output jump;
  output LUI;
  output Branch;
  output RegDst;
  output RegWrite;
  output jal;
  output ORI;
  output MemWrite;
  output ALUSrc;
  output MemtoReg;
  output [2 : 0] ALUControl;
  input [5 : 0] funct;
  input [5 : 0] op;
  wire ALUControl_0_OBUF_3;
  wire ALUSrc_OBUF_5;
  wire Branch_OBUF_7;
  wire LUI_OBUF_9;
  wire MemWrite_OBUF_11;
  wire MemtoReg_OBUF_13;
  wire N0;
  wire N11;
  wire N2;
  wire N6;
  wire N8;
  wire ORI_OBUF_20;
  wire RegDst_OBUF_22;
  wire RegWrite_OBUF_24;
  wire addi;
  wire funct_0_IBUF_32;
  wire funct_1_IBUF_33;
  wire funct_2_IBUF_34;
  wire funct_3_IBUF_35;
  wire funct_4_IBUF_36;
  wire funct_5_IBUF_37;
  wire jal_OBUF_39;
  wire jr_OBUF_41;
  wire jump_OBUF_43;
  wire lw1;
  wire op_0_IBUF_51;
  wire op_1_IBUF_52;
  wire op_2_IBUF_53;
  wire op_3_IBUF_54;
  wire op_4_IBUF_55;
  wire op_5_IBUF_56;
  GND   XST_GND (
    .G(ALUControl_0_OBUF_3)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  lui_rnm0_SW0 (
    .I0(op_2_IBUF_53),
    .I1(op_1_IBUF_52),
    .I2(op_0_IBUF_51),
    .O(N6)
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  lui_rnm0 (
    .I0(op_5_IBUF_56),
    .I1(op_3_IBUF_54),
    .I2(op_4_IBUF_55),
    .I3(N6),
    .O(LUI_OBUF_9)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  jump1 (
    .I0(op_1_IBUF_52),
    .I1(N0),
    .O(jump_OBUF_43)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  ori_rnm01 (
    .I0(op_3_IBUF_54),
    .I1(N2),
    .I2(op_2_IBUF_53),
    .I3(op_0_IBUF_51),
    .O(ORI_OBUF_20)
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  beq1 (
    .I0(op_0_IBUF_51),
    .I1(N2),
    .I2(op_3_IBUF_54),
    .I3(op_2_IBUF_53),
    .O(Branch_OBUF_7)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  sw1 (
    .I0(op_3_IBUF_54),
    .I1(N11),
    .O(MemWrite_OBUF_11)
  );
  LUT4 #(
    .INIT ( 16'hFFEF ))
  jr_SW0 (
    .I0(funct_1_IBUF_33),
    .I1(funct_2_IBUF_34),
    .I2(funct_3_IBUF_35),
    .I3(funct_0_IBUF_32),
    .O(N8)
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  jr_9 (
    .I0(RegDst_OBUF_22),
    .I1(funct_5_IBUF_37),
    .I2(funct_4_IBUF_36),
    .I3(N8),
    .O(jr_OBUF_41)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  ALUSrc1 (
    .I0(N11),
    .I1(addi),
    .O(ALUSrc_OBUF_5)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  jr21 (
    .I0(N0),
    .I1(op_1_IBUF_52),
    .I2(op_0_IBUF_51),
    .O(RegDst_OBUF_22)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  jal1 (
    .I0(op_0_IBUF_51),
    .I1(op_1_IBUF_52),
    .I2(N0),
    .O(jal_OBUF_39)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  addi11 (
    .I0(op_1_IBUF_52),
    .I1(op_5_IBUF_56),
    .I2(op_4_IBUF_55),
    .O(N2)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  jr11 (
    .I0(op_2_IBUF_53),
    .I1(op_3_IBUF_54),
    .I2(op_5_IBUF_56),
    .I3(op_4_IBUF_55),
    .O(N0)
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  addi1 (
    .I0(op_0_IBUF_51),
    .I1(op_3_IBUF_54),
    .I2(op_2_IBUF_53),
    .I3(N2),
    .O(addi)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  lw2 (
    .I0(op_3_IBUF_54),
    .I1(N11),
    .O(MemtoReg_OBUF_13)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  RegWrite1 (
    .I0(addi),
    .I1(jal_OBUF_39),
    .I2(RegDst_OBUF_22),
    .I3(MemtoReg_OBUF_13),
    .O(RegWrite_OBUF_24)
  );
  IBUF   funct_5_IBUF (
    .I(funct[5]),
    .O(funct_5_IBUF_37)
  );
  IBUF   funct_4_IBUF (
    .I(funct[4]),
    .O(funct_4_IBUF_36)
  );
  IBUF   funct_3_IBUF (
    .I(funct[3]),
    .O(funct_3_IBUF_35)
  );
  IBUF   funct_2_IBUF (
    .I(funct[2]),
    .O(funct_2_IBUF_34)
  );
  IBUF   funct_1_IBUF (
    .I(funct[1]),
    .O(funct_1_IBUF_33)
  );
  IBUF   funct_0_IBUF (
    .I(funct[0]),
    .O(funct_0_IBUF_32)
  );
  IBUF   op_5_IBUF (
    .I(op[5]),
    .O(op_5_IBUF_56)
  );
  IBUF   op_4_IBUF (
    .I(op[4]),
    .O(op_4_IBUF_55)
  );
  IBUF   op_3_IBUF (
    .I(op[3]),
    .O(op_3_IBUF_54)
  );
  IBUF   op_2_IBUF (
    .I(op[2]),
    .O(op_2_IBUF_53)
  );
  IBUF   op_1_IBUF (
    .I(op[1]),
    .O(op_1_IBUF_52)
  );
  IBUF   op_0_IBUF (
    .I(op[0]),
    .O(op_0_IBUF_51)
  );
  OBUF   jr_OBUF (
    .I(jr_OBUF_41),
    .O(jr)
  );
  OBUF   jump_OBUF (
    .I(jump_OBUF_43),
    .O(jump)
  );
  OBUF   LUI_OBUF (
    .I(LUI_OBUF_9),
    .O(LUI)
  );
  OBUF   Branch_OBUF (
    .I(Branch_OBUF_7),
    .O(Branch)
  );
  OBUF   RegDst_OBUF (
    .I(RegDst_OBUF_22),
    .O(RegDst)
  );
  OBUF   RegWrite_OBUF (
    .I(RegWrite_OBUF_24),
    .O(RegWrite)
  );
  OBUF   jal_OBUF (
    .I(jal_OBUF_39),
    .O(jal)
  );
  OBUF   ORI_OBUF (
    .I(ORI_OBUF_20),
    .O(ORI)
  );
  OBUF   MemWrite_OBUF (
    .I(MemWrite_OBUF_11),
    .O(MemWrite)
  );
  OBUF   ALUSrc_OBUF (
    .I(ALUSrc_OBUF_5),
    .O(ALUSrc)
  );
  OBUF   MemtoReg_OBUF (
    .I(MemtoReg_OBUF_13),
    .O(MemtoReg)
  );
  OBUF   ALUControl_2_OBUF (
    .I(ALUControl_0_OBUF_3),
    .O(ALUControl[2])
  );
  OBUF   ALUControl_1_OBUF (
    .I(ALUControl_0_OBUF_3),
    .O(ALUControl[1])
  );
  OBUF   ALUControl_0_OBUF (
    .I(ALUControl_0_OBUF_3),
    .O(ALUControl[0])
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  lw11 (
    .I0(op_4_IBUF_55),
    .I1(op_1_IBUF_52),
    .I2(op_2_IBUF_53),
    .I3(op_0_IBUF_51),
    .O(lw1)
  );
  MUXF5   lw1_f5 (
    .I0(ALUControl_0_OBUF_3),
    .I1(lw1),
    .S(op_5_IBUF_56),
    .O(N11)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif


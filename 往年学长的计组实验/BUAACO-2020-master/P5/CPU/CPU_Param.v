`default_nettype none
`ifdef HEADINCLUDED

`else
	`define HEADINCLUDED 1'b0


`endif

//ת��MUX����
//ID��GRF����
`define RData0_from_RData0 2'b00
`define RData1_from_RData1 2'b00
`define RData0_from_ID 2'b01
`define RData1_from_ID 2'b01
`define RData0_from_EX 2'b10
`define RData1_from_EX 2'b10
//EX��ALU���
`define ALUIn0_from_ALUIn0 2'b00
`define ALUIn1_from_ALUIn1 2'b00
`define ALUIn0_from_EX 2'b01
`define ALUIn1_from_EX 2'b01
`define ALUIn0_from_Mem 2'b10
`define ALUIn1_from_Mem 2'b10
//DM��д�����ݵ�����ת��
`define DMWriteData_from_ALUIn1 1'b0
`define DMWriteData_from_DMWD 1'b0
`define DMWriteData_from_WB 1'b1

//ALU����
`define ALU_add (3'b000)
`define ALU_sub (3'b001)
`define ALU_or (3'b010)
`define ALU_lshift (3'b011)

//ָ�������
`define inst_err (60'd0)
`define inst_addu (60'd1 << 0)
`define inst_subu (60'd1 << 1)
`define inst_ori (60'd1 << 2)
`define inst_lw (60'd1 << 3)
`define inst_sw (60'd1 << 4)
`define inst_beq (60'd1 << 5)
`define inst_lui (60'd1 << 6)
`define inst_j (60'd1 << 7)
`define inst_jal (60'd1 << 8)
`define inst_jr (60'd1 << 9)
`define inst_sll (60'd1 << 10) // nopҲ��������
`define inst_addiu (60'd1 << 11)
`define inst_jalr (60'd1 << 12)


//ָ���ж�
`define addu (InstrType[0])
`define subu (InstrType[1])
`define ori (InstrType[2])
`define lw (InstrType[3])
`define sw (InstrType[4])
`define beq (InstrType[5])
`define lui (InstrType[6])
`define j (InstrType[7])
`define jal (InstrType[8])
`define jr (InstrType[9])
`define sll (InstrType[10])
`define addiu (InstrType[11])
`define jalr (InstrType[12])
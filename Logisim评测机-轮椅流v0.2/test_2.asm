ori $24, $zero, 0x3000  #text base addr
ori $31, $0, 22  #jump to NopEnd

add $31, $31, $24
ori $2, $0, 4
ori $3, $0, 0x10
ori $4, $0, 1
ori $5, $5, 0
Loop:
	beq $3, $zero, EndLoop
	nop
	ori $16, $0, 18  #jump to jr_test2

	#addu $16, $16, $24
	add $5, $5, $4
	sub $3, $3, $2
	jal Loop
jr_test1:
	add $9, $9, $4
	add $16, $16, $24
	jr $16
jr_test2:
	add $10, $10, $4
	jr $ra
EndLoop:
	add $7, $7, $4
	jal jr_test1
add $8, $8, $4
NopEnd:
nop
lui $7, 0x1234
ori $7, $7, 0x5678
nop
ori $16, $0, 0x12
add $7, $16, $16
ori $12, $0, 4
sw $7, 4($12)

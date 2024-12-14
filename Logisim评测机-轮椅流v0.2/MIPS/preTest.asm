ori $0,$0,1
ori $1,$0,1
ori $2,$0,1
ori $3,$0,1
ori $4,$0,1
ori $5,$0,1
ori $6,$0,1
ori $7,$0,1
ori $8,$0,1
ori $9,$0,1
ori $10,$0,1
ori $11,$0,1
ori $12,$0,1
ori $13,$0,1
ori $14,$0,1
ori $15,$0,1
ori $16,$0,1
ori $17,$0,1
ori $18,$0,1
ori $19,$0,1
ori $20,$0,1
ori $21,$0,1
ori $22,$0,1
ori $23,$0,1
ori $24,$0,1
ori $25,$0,1
ori $26,$0,1
ori $27,$0,1
ori $28,$0,1
ori $29,$0,1
ori $30,$0,1
ori $31,$0,1

ori $a0, $0, 123
ori $a1, $a0, 456
lui $a2, 123            # 符号位为 0
lui $a3, 0xffff         # 符号位为 1
ori $a3, $a3, 0xffff    # $a3 = -1
add $s0, $a0, $a2      # 正正
add $s1, $a0, $a3      # 正负
add $s2, $a3, $a3      # 负负
ori $t0, $0, 0x0000
sw $a0, 0($t0)
sw $a1, 4($t0)
sw $a2, 8($t0)
sw $a3, 12($t0)
sw $s0, 16($t0)
sw $s1, 20($t0)
sw $s2, 24($t0)
lw $a0, 0($t0)
lw $a1, 12($t0)
sw $a0, 28($t0)
sw $a1, 32($t0)
ori $a0, $0, 1
ori $a1, $0, 2
ori $a2, $0, 1
beq $a0, $a1, loop1     # 不相等
beq $a0, $a2, loop2     # 相等
loop1:sw $a0, 36($t0)
loop2:sw $a1, 40($t0)
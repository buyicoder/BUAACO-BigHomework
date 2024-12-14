start:
ori $0, $0, 1
jal step1
ori $1, $1, 1
ori $2, $2, 2
step1:
ori $3, $3, 3
jal step2
ori $4, $4, 4
step2:
ori $5, $5, 5
ori $6, $6, 6
jr $31
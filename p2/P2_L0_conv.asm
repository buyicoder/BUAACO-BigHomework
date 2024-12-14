.data
matrix1: .space 1024
matrix2: .space 1024
matrix3: .space 1024
str_space: .asciiz " "
str_enter: .asciiz "\n"
.macro getindex(%ans, %i, %j)
	sll %ans, %i, 4
	add %ans, %ans, %j
	sll %ans, %ans, 2
.end_macro 

.text
li $v0,5
syscall
move $s0,$v0
li $v0,5
syscall
move $s1,$v0
li $v0,5
syscall
move $s2,$v0
li $v0,5
syscall
move $s3,$v0

sub $s4,$s0,$s2
sub $s5,$s1,$s3
addi $s4,$s4,1
addi $s5,$s5,1


li $t0,0
in_1_i:
beq $t0,$s0,in_1_i_end
li $t1,0
in_1_j:
beq $t1,$s1,in_1_j_end
li $v0,5
syscall
getindex($t2,$t0,$t1)
sw $v0,matrix1($t2)
addi $t1,$t1,1
j in_1_j
in_1_j_end:
addi $t0,$t0,1
j in_1_i
in_1_i_end:		#输入待卷积矩阵

li $t0,0
in_2_i:
beq $t0,$s2,in_2_i_end
li $t1,0
in_2_j:
beq $t1,$s3,in_2_j_end
li $v0,5
syscall
getindex($t2,$t0,$t1)
sw $v0,matrix2($t2)
addi $t1,$t1,1
j in_2_j
in_2_j_end:
addi $t0,$t0,1
j in_2_i
in_2_i_end:		#输入卷积核

li $t0, 0
convol_i:
beq $t0,$s4,convol_i_end
li $t1,0
convol_j:
beq $t1,$s5,convol_j_end
li $t2,0
li $t4,0
convol_m:
beq $t2,$s2,convol_m_end
li $t3,0
convol_n:
beq $t3,$s3,convol_n_end
add $t5, $t0, $t2
add $t6, $t1, $t3
getindex($t7,$t5,$t6)
lw $t5 matrix1($t7)
getindex($t7,$t2,$t3)
lw $t6 matrix2($t7)
mul $t7,$t5,$t6
add $t4,$t4,$t7
addi $t3,$t3,1
j convol_n
convol_n_end:
addi $t2,$t2,1
j convol_m
convol_m_end:
getindex($t5,$t0,$t1)
sw $t4,matrix3($t5)
addi $t1,$t1,1
j convol_j
convol_j_end:
addi $t0,$t0,1
j convol_i
convol_i_end:  #完成卷积操作


li $t0,0
out_i:
beq $t0,$s4,out_i_end
li $t1,0
out_j:
beq $t1,$s5,out_j_end
getindex($t2,$t0,$t1)
lw $a0,matrix3($t2)
li $v0,1
syscall
la $a0, str_space
li $v0,4
syscall
addi $t1,$t1,1
j out_j
out_j_end:
la $a0,str_enter
li $v0,4
syscall
addi $t0,$t0,1
j out_i
out_i_end:

li $v0 ,10
syscall
















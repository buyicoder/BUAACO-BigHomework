.data
str: .space 80

.text

li $v0,5
syscall
move $s0,$v0

li $t0, 0
loop:
beq $t0,$s0,loop_end
li $v0,12
syscall
sll $t1, $t0,2
sw $v0 str($t1)
addi $t0,$t0,1
j loop
loop_end:   #完成输入字符串

li $t0 ,2
div $s0,$t0
mflo $s1      #算出n/2,存到$s1中


li $t0,0
li $s3,1
loop1:
beq $t0,$s1,loop1_end
addi $t1,$t0,0
sll $t1,$t1,2
sub $t2,$s0,$t0
addi $t2,$t2,-1
sll $t2,$t2,2
lw $t1,str($t1)
lw $t2,str($t2)
beq $t1,$t2, if_1_else
li $s3, 0
j loop1_end
if_1_else:
addi $t0,$t0,1
j loop1
loop1_end:

move $a0,$s3
li $v0,1
syscall

li $v0,10
syscall



